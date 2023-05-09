using ArchUnitNET.Fluent;
using ArchUnitNET.NUnit;
using NUnit.Framework;
using static ArchUnitNET.Fluent.ArchRuleDefinition;

namespace HourHero.Tests.Arch.Api;

public class WebApiNamingTests
{
    [Test]
    public void RequestNamingTest()
    {
        IArchRule rule = Classes().That().ResideInNamespace("HourHero.Api.Contracts.*.Requests")
            .Should().HaveNameEndingWith("Request");

        rule.Check(StaticTestVariables.Architecture);
    }

    [Test]
    public void ResponseNamingTest()
    {
        IArchRule rule = Classes().That().ResideInNamespace("HourHero.Api.Contracts.*.Responses")
            .Should().HaveNameEndingWith("Response");

        rule.Check(StaticTestVariables.Architecture);
    }

    [Test]
    public void ControllerNamingTest()
    {
        IArchRule rule = Classes().That().ResideInNamespace("HourHero.Api.Controllers")
            .Should().HaveNameEndingWith("Controller");

        rule.Check(StaticTestVariables.Architecture);
    }
}