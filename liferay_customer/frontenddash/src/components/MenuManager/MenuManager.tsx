import ClayNav from '@clayui/nav';

type MenuMangerTypes = {
    quantity: number
    id: number
    status: string;
    titleProduct: string;
}

export interface IPropsManuManger {
    menuManagerItems: MenuMangerTypes[]
};

export const menuManger = ({menuManagerItems}: IPropsManuManger) => {
        return (
            <ClayNav>
                 <ClayNav.Item>
                    <ClayNav.Link href="#">
                        {"Create Product"}
                    </ClayNav.Link>
                    <ClayNav.Link href="/update%product">
                        {"Update Product"}
                    </ClayNav.Link>
                    <ClayNav.Link href="/remove%product">
                        {"Remove Product"}
                    </ClayNav.Link>
                    <ClayNav.Link href="/add%member">
                        {"Add New Member"}
                    </ClayNav.Link>
                 </ClayNav.Item>
            </ClayNav>
        );
};