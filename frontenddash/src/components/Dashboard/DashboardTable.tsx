import ClayTable from '@clayui/table';


type DashboardTableInfoTypes = {
    quantity: number
    companyName: string;
    selected: boolean;
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
                                 Product Name
                            </span>
                        </div>
                    </ClayTable.Cell>
             </ClayTable.Head>
        </ClayTable>
    );
}