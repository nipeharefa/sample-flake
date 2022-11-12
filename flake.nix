{
  description = "A collection of flake templates";

  outputs = { self }: {

    templates = {
      simple = {
        path = ./simple;
        description = "A very basic flake";
      };

    };

    defaultTemplate = self.templates.simple;
  };
}
