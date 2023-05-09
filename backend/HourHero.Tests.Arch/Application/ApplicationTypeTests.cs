using ArchUnitNET.Domain;
using ArchUnitNET.Fluent;
using ArchUnitNET.NUnit;
using NUnit.Framework;
using static ArchUnitNET.Fluent.ArchRuleDefinition;

namespace HourHero.Tests.Arch.Application;

public class ApplicationTypeTests
{
    [Test]
    public void AbstractionTypeTest()
    {
        IArchRule rule = Classes().That().ResideInNamespace("{HourHero}.Application.Abstractions").Should().Be(typeof(Interface));

        rule.Check(StaticTestVariables.Architecture);
    }

    [Test]
    public void RepositoryTypeTest()
    {
        IArchRule rule = Classes().That().ResideInNamespace("{HourHero}.Application.Repositories").Should().Be(typeof(Interface));

        rule.Check(StaticTestVariables.Architecture);
    }
}