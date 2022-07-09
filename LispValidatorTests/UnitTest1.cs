using Microsoft.VisualStudio.TestTools.UnitTesting;
using Validators;

namespace VaildatorTests
{
    [TestClass]
    public class LispValidatorTests
    {
        LispValidators v;

        [TestInitialize]
        public void Initialize()
        {
            v = new LispValidators();
        }

        [TestMethod]
        public void ValidStringWithout()
        {
            var zeroString = "Now is the time for all good men.";
            var result = v.ValidatorString(zeroString);
            Assert.IsTrue(result);
        }

        [TestMethod]
        public void ValidStringWithNull()
        {
            var nullString = "";
            var result = v.ValidatorString(nullString);
            Assert.IsTrue(result);
        }


        [TestMethod]
        public void ValidStringWithBadString()
        {
            var badString = "((((dadfasdfsa))";
            var result = v.ValidatorString(badString);
            Assert.IsFalse(result);
        }

        [TestMethod]
        public void ValidStringWithGoodString()
        {
            var goodString = "((dadf(9(sdfsa))))";
            var result = v.ValidatorString(goodString);
            Assert.IsTrue(result);
        }




    }
}
