using ArchUnitNET.Fluent;
using ArchUnitNET.NUnit;
using NUnit.Framework;
using static ArchUnitNET.Fluent.ArchRuleDefinition;

namespace HourHero.Tests.Arch.Application;

public class ApplicationNamingTests
{
    [Test]
    public void ServiceNamingTest()
    {
        IArchRule rule = Classes()
            .That()
            .ResideInNamespace("{HourHero}.Application.Services")
            .Should()
            .HaveName("[A-Za-z]Service(`\\d)?", true);

        rule.Check(StaticTestVariables.Architecture);
    }

    [Test]
    public void AbstractionNamingTest()
    {
        IArchRule rule = Interfaces().That().ResideInNamespace("{HourHero}.Application.Abstractions").Should()
            .HaveNameStartingWith("I");

        rule.Check(StaticTestVariables.Architecture);
    }

    [Test]
    public void ExceptionNamingTest()
    {
        IArchRule rule = Classes().That().ResideInNamespace("{HourHero}.Application.Exception").Should()
            .HaveNameEndingWith("Exception");

        rule.Check(StaticTestVariables.Architecture);
    }

    [Test]
    public void RepositoryNamingTest()
    {
        IArchRule rule = Classes()
            .That()
            .ResideInNamespace("{HourHero}.Application.Repositories")
            .Should()
            .HaveName("I[A-Za-z]Repository(`\\d)?", true);

        rule.Check(StaticTestVariables.Architecture);
    }
}