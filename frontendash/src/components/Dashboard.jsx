import React from "react";

const DashboardManager = ({
    request,
    group,
    managerDash
}) => {

    const [isManagerDash, setIsManagerDash] = React.useState(managerDash);

    const check = (isManagerDash) => {

        return isManagerDash;
    };

    return (

        request? <p>Request Successfull</p> : <p>Request fail</p>,
        
        <div className="dsh-dashboard-manager container">
            <header className="dsh-dashboard-manager-header">
                <h1>Manager Dashboard `${group}`</h1>
            </header>

            <div className="dsh-dashboard-manager-body container">

            </div>
        </div>
    );
};

export default DashboardManager;