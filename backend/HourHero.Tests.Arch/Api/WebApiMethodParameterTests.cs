using ArchUnitNET.Domain.Extensions;
using ArchUnitNET.Fluent.Syntax.Elements.Members.MethodMembers;
using ArchUnitNET.NUnit;
using NUnit.Framework;
using static ArchUnitNET.Fluent.ArchRuleDefinition;

namespace HourHero.Tests.Arch.Api;

public class WebApiMethodParameterTests
{
    [Test]
    public void ControllerMethodsContainCancellationTokenTest()
    {
        MethodMembersShouldConjunction rule = MethodMembers()
            .That().AreDeclaredIn(Classes().That()
                .ResideInNamespace("HourHero.Api.Controllers"))
            .And().AreNoConstructors()
            .Should().FollowCustomCondition(m => m.Parameters.Any(t => t.IsAssignableTo("System.Threading.CancellationToken")),
                "has a cancellation token",
                "has no cancellation token");

        rule.Check(StaticTestVariables.Architecture);
    }
}