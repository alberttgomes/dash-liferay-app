import ClayTable from '@clayui/table';

type DashboardTableInfoTypes = {
    quantity: number
    id: number
    status: string;
    titleProduct: string;
}

export interface IPropsDashboardTableInfo {
    dashboardItems: DashboardTableInfoTypes[]
};

export const DashboardTableInfo = ({dashboardItems}: IPropsDashboardTableInfo) => {
    return(
        <ClayTable 
            className="dsh-dashboard-table-container"
        >
                <ClayTable.Head>
                        <ClayTable.Cell headingCell>
                            <div className='dsh-dashboard-table-header'>
                                <span>
                                    Product Name
                                </span>
                            </div>
                        </ClayTable.Cell>

                        <ClayTable.Cell headingCell>
                            <div className='dsh-dashboard-table-header'>
                                <span>
                                    Product Id
                                </span>
                            </div>
                        </ClayTable.Cell>

                        <ClayTable.Cell headingCell>
                            <div className='dsh-dashboard-table-header'>
                                <span>
                                    Product Quantity
                                </span>
                            </div>
                        </ClayTable.Cell>

                        <ClayTable.Cell headingCell>
                            <div className='dsh-dashboard-table-header'>
                                <span>
                                    Product Status
                                </span>
                            </div>
                        </ClayTable.Cell>
                </ClayTable.Head>

                <ClayTable.Body>
                    {dashboardItems.map((data, index) => {
                            return (
                                <ClayTable.Row key={index}>
                                    <ClayTable.Cell>{data.titleProduct}</ClayTable.Cell>
                                    <ClayTable.Cell>{data.id}</ClayTable.Cell>
                                    <ClayTable.Cell>{data.quantity}</ClayTable.Cell>
                                    <ClayTable.Cell>{data.status}</ClayTable.Cell>
                                </ClayTable.Row>
                            );
                    })}
                </ClayTable.Body>
        </ClayTable>
    );
}