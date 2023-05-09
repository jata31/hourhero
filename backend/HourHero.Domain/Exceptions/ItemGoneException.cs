using System.Runtime.Serialization;

namespace HourHero.Domain.Exceptions;

public class ItemGoneException : Exception
{
    public ItemGoneException()
    {
    }

    protected ItemGoneException(SerializationInfo info, StreamingContext context) : base(info, context)
    {
    }

    public ItemGoneException(string message) : base(message)
    {
    }

    public ItemGoneException(string message, Exception innerException) : base(message, innerException)
    {
    }
}