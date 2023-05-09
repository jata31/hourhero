using ArchUnitNET.Fluent;
using ArchUnitNET.NUnit;
using HourHero.Api.Controllers.V1;
using NUnit.Framework;
using static ArchUnitNET.Fluent.ArchRuleDefinition;

namespace HourHero.Tests.Arch.Api;

public class WebApiInheritanceTests
{
    [Test]
    public void ControllerInheritanceTest()
    {
        IArchRule rule = Classes().That().ResideInNamespace("{HourHero}.Api.Controllers")
            .Should().BeAssignableTo(typeof(BaseController));

        rule.Check(StaticTestVariables.Architecture);
    }
}