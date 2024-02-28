///doc/ # Spread

@react.component
let make = (~style: option<ReactDOMStyle.t>=?, ~props, ~children: React.element) => {
  switch style {
    | Some(style) => {
      let componet = React.cloneElement(children, props)

      React.cloneElement(
        componet,
        {"style": style}
      )
    }
    | None => React.cloneElement(children, props)
  }
}
