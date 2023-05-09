using ArchUnitNET.Fluent;
using ArchUnitNET.NUnit;
using NUnit.Framework;
using static ArchUnitNET.Fluent.ArchRuleDefinition;

namespace HourHero.Tests.Arch.Domain;

public class DomainTypeTests
{
    [Test]
    public void EnumTypeTest()
    {
        IArchRule rule = Classes().That().ResideInNamespace("{HourHero}.Domain.Enums").Should().BeEnums();

        rule.Check(StaticTestVariables.Architecture);
    }
}