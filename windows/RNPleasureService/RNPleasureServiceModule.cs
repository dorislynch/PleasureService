using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Pleasure.Service.RNPleasureService
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNPleasureServiceModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNPleasureServiceModule"/>.
        /// </summary>
        internal RNPleasureServiceModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNPleasureService";
            }
        }
    }
}
