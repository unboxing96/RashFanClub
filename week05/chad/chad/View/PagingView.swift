//
//  PagingView.swift
//  chad
//
//  Created by 077tech on 2023/07/04.
//

import SwiftUI

public struct PagingView<Views: View>: View {
    
    //MARK: 선언
    public typealias PagingConfig = _PagingViewConfig
    public typealias PageIndex = _VariadicView.Children.Index
    private let tree: _VariadicView.Tree<Root, Views>
    
    //MARK: 생성자 (tree 생성)
    public init(
        config: PagingConfig = PagingConfig(),
        page: Binding<PageIndex>? = nil,
        @ViewBuilder _ content: () -> Views
    ) {
        tree = _VariadicView.Tree(
            Root(config: config, page: page),
            content: content
        )
    }
    
    //MARK: Root 생성
    struct Root: _VariadicView.UnaryViewRoot {
        let config: PagingConfig
        let page: Binding<PageIndex>?
        
        func body(children: _VariadicView.Children) -> some View {
            _PagingView(
                config: config,
                page: page,
                views: children
            )
        }
    }
    
    //MARK: View 그리기
    public var body: some View { tree }
    

}
