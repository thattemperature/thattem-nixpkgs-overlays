self: super: {

  pythonPackagesExtensions = super.pythonPackagesExtensions ++ [
    (
      python-self: python-super: with python-self; {

        honcho-ai = python-super.honcho-ai or (callPackage ../development/python-modules/honcho-ai { });

      }
    )
  ];

}
