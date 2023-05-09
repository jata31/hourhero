using ArchUnitNET.Fluent;
using ArchUnitNET.NUnit;
using NUnit.Framework;
using static ArchUnitNET.Fluent.ArchRuleDefinition;

namespace HourHero.Tests.Arch.Domain;

public class DomainInheritanceTests
{
    [Test]
    public void ExceptionInheritanceTest()
    {
        IArchRule rule = Classes().That().ResideInNamespace("{HourHero}.Domain.Exception").Should().BeAssignableTo(typeof(Exception));

        rule.Check(StaticTestVariables.Architecture);
    }
}