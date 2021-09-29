Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B862741C2E0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Sep 2021 12:41:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5769282FC9;
	Wed, 29 Sep 2021 10:41:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qZkg0dyVUgym; Wed, 29 Sep 2021 10:41:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5318E82C91;
	Wed, 29 Sep 2021 10:41:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 413B21BF954
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 10:41:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3902A40012
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 10:41:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=nvidia.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dvs3cqj5liEf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Sep 2021 10:41:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2075.outbound.protection.outlook.com [40.107.244.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 77CBB4013B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 10:41:00 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f046fFnUUzBMGdw/7ouw4Mjk6Ssglb/0HUPhMN6yVGoWxzYXEAuXYl+OjMuKdG+DaTew+JJW8qBILQH2f+ptpudcTfCk8PJUAr5oItQ53uKAjKiy7DV/ZXylgGR0hHpmss441Amfn+VFy40pU+6SN1nJB8dfwm2xh7Q0nFCq70JVnWgGEs3hBiQfVfb9ahLtCQi/MCOwZF5uxbEpf6Zz3thexPyibe+BhfmNUjKkwWMWdnMD6hTxD5ZpV5eqHvf8ekwnqAJxYN60Dv5a2RtT2ntaWcusv4qzTce8ea9wS2dILDQtth4wc6jd30kj9GDviX62Xge/ImeLtZyBjbf1nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=0GIViRxvqanTtlkegjGYsGx9ychDNYrc1kicUH+x5sQ=;
 b=eNiif6m+woyZd8fHlu1+D7ox+iLci0iLu+/0amjxpLkXJHQeJr5zavCz+9cMIJPe94pzuRwW/uOSZ/QZZvuQ/6uZxczBsACT/DSlSa2HA0bcb2Kggb0cKIi480k8SOM6BOcKg4ocb3QnNvXZAZ/Hx0nFeydAc57d3PXoCAeVCfM88SG9PnpQwpMExRfNStdAm39d/l//Dk2jBv6u4fyDT4QVlRS25lmWYhCOnrrZpJy7XdOaucOywThLxaUX6AoJ0JYJWsraC1xhaTZzzbC1AYCcW5RiBXAIXAr+rl64CuwyyeyvLhz6sxxrLPh3BDWauSSWIAgqfLnzGfzbHkFTEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.112.36) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=nvidia.com; 
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0GIViRxvqanTtlkegjGYsGx9ychDNYrc1kicUH+x5sQ=;
 b=bipTtY/QBaf40AhEH0vsGoPFOcwzPJEnfyZCaEHmdcfdRmeiX/RxsIj9TZdW3NjmsIpv/jEfaUSUkXbiEImkWZvcGkyLWiuyCBA6+Zxj/UvbAPUupnMUd7UMoZCc8t+CB9iOV3zYdDtnrWr2htXTxZGuOohK5mvAqVcqL6OV1HHlAjDn0wcQ7Wzkh+u9wZh5nS+7nWrpzsa8ZN/e9mEFeKjD6Zom2DQLPW17FdS3JgLsvYrKJBPRstqwo2LtBI/s4LszYmH79cusdt9jJ0l7V80O9ZMCYOBJLq9lIVzH1Or3wOSEMx+s2wQ3JhfWzqB6zarmI+qqFmE+xnj364YEOw==
Received: from DM6PR11CA0051.namprd11.prod.outlook.com (2603:10b6:5:14c::28)
 by DM6PR12MB3708.namprd12.prod.outlook.com (2603:10b6:5:1c5::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.14; Wed, 29 Sep
 2021 10:40:57 +0000
Received: from DM6NAM11FT022.eop-nam11.prod.protection.outlook.com
 (2603:10b6:5:14c:cafe::3c) by DM6PR11CA0051.outlook.office365.com
 (2603:10b6:5:14c::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.14 via Frontend
 Transport; Wed, 29 Sep 2021 10:40:57 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.112.36)
 smtp.mailfrom=nvidia.com; kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.112.36 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.112.36; helo=mail.nvidia.com;
Received: from mail.nvidia.com (216.228.112.36) by
 DM6NAM11FT022.mail.protection.outlook.com (10.13.172.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4566.14 via Frontend Transport; Wed, 29 Sep 2021 10:40:56 +0000
Received: from DRHQMAIL107.nvidia.com (10.27.9.16) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Wed, 29 Sep
 2021 10:40:55 +0000
Received: from localhost (172.20.187.6) by DRHQMAIL107.nvidia.com (10.27.9.16)
 with Microsoft SMTP Server (TLS) id 15.0.1497.18;
 Wed, 29 Sep 2021 10:40:54 +0000
Date: Wed, 29 Sep 2021 13:40:51 +0300
From: Leon Romanovsky <leonro@nvidia.com>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <YVRCs1+09G0g40N8@unreal>
References: <cover.1632909221.git.leonro@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1632909221.git.leonro@nvidia.com>
X-Originating-IP: [172.20.187.6]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 DRHQMAIL107.nvidia.com (10.27.9.16)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1780aff5-4c4a-401e-6e22-08d983359ec3
X-MS-TrafficTypeDiagnostic: DM6PR12MB3708:
X-Microsoft-Antispam-PRVS: <DM6PR12MB37080CEFBBE87111FA1A64B2BDA99@DM6PR12MB3708.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rf/N0ouTcfQnf8PALyYsf2YvQUrgMylMVWqPZfJ03dZCOSXBQSu25rCQUx1aJZMlNr0V9q0egsl3DYSsQ9FHNJ/nfnYXVx9RYE8CLvYftr+Kv92pElAtYbriHAfPLtSt9fbCLzZGfQtfeyJ3PNo18/x/fJMLBqcpVNlg6SiKW6BMYhl/ma1lgxE+i2WV1U6Uks6R6GTMQRiI8hAoFFCdpnNhCyMY1KSH4JLitwx1RfAHZ5sgoesuIapsZIaxoGFllJdiD4i5DDZGY8IFEhlcKiQFMlg+3T6Wc6Wt1Tphk4e6ETt3JA5ncQut1SgMis0JEaNdg9scZ9OkSLSm9e0CjoRE8HqGZN8QubrervGdJ3VRTT5iCxqxLEJ4iNjG0dGPCI7KMiEnIgZ+V3qgNd4I8kuZvmnI5oPiuCImfpd8m9umo4x2FF4TYiUFfTUyPyzawbJv8YOcPETYSNr5YO+k3alrAq3slIYqPfws14tr0CffCidbE55OcyEMfthx1S06nBahhaEPpYO+q5VdreqOQqqt5ZofnISfjcgef4hENMZ3Oh5tmVbDTIJb37ucfcWTLQE3CRhUULjaEKIObdcpKZ2e5H9FMCihC+ki8kGlhHvRFOj76FyErKNBtVGg/SNcDKu0A8jaKGk7X2vlSzlqGmrGZSZSGwQc0wHuJYsisulbo8h8uH1XD0f4DkjRuIzSPCI2Mdy/hz+R9L47Ji/rqpDFoqem8PNZeAbJrgUuzBg=
X-Forefront-Antispam-Report: CIP:216.228.112.36; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:schybrid05.nvidia.com; CAT:NONE;
 SFS:(4636009)(7916004)(46966006)(36840700001)(7636003)(336012)(70206006)(16526019)(70586007)(8936002)(186003)(508600001)(316002)(5660300002)(426003)(86362001)(7416002)(26005)(110136005)(8676002)(7406005)(4744005)(54906003)(4326008)(356005)(33716001)(36860700001)(6666004)(9686003)(15650500001)(83380400001)(47076005)(2906002)(82310400003)(67856001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2021 10:40:56.8521 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1780aff5-4c4a-401e-6e22-08d983359ec3
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.112.36];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT022.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3708
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/5] Devlink reload and
 missed notifications fix
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Simon Horman <simon.horman@corigine.com>, oss-drivers@corigine.com,
 netdev@vger.kernel.org, Jerin Jacob <jerinj@marvell.com>,
 GR-everest-linux-l2@marvell.com, Subbaraya Sundeep <sbhatta@marvell.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Michael Chan <michael.chan@broadcom.com>, Linu Cherian <lcherian@marvell.com>,
 Tariq Toukan <tariqt@nvidia.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Eric Dumazet <eric.dumazet@gmail.com>, linux-rdma@vger.kernel.org, Moshe
 Shemesh <moshe@nvidia.com>, linux-staging@lists.linux.dev,
 Shannon Nelson <snelson@pensando.io>, intel-wired-lan@lists.osuosl.org,
 Vadym Kochan <vkochan@marvell.com>, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Bin Luo <luobin9@huawei.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, linux-omap@vger.kernel.org,
 Felix Manlunas <fmanlunas@marvell.com>, Salil Mehta <salil.mehta@huawei.com>,
 GR-Linux-NIC-Dev@marvell.com, Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, linux-kernel@vger.kernel.org,
 Coiby Xu <coiby.xu@gmail.com>, UNGLinuxDriver@microchip.com,
 Taras Chornyi <tchornyi@marvell.com>, hariprasad <hkelam@marvell.com>,
 Shay Drory <shayd@nvidia.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Derek Chickles <dchickles@marvell.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Geetha sowjanya <gakula@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Sep 29, 2021 at 01:16:34PM +0300, Leon Romanovsky wrote:
> From: Leon Romanovsky <leonro@nvidia.com>
> 
> Hi,
> 
> This series starts from the fixing the bug introduced by implementing
> devlink delayed notifications logic, where I missed some of the
> notifications functions.
> 
> The rest series provides a way to dynamically set devlink ops that is
> needed for mlx5 multiport device and starts cleanup by removing
> not-needed logic.
> 
> In the next series, we will delete various publish API, drop general
> lock, annotate the code and rework logic around devlink->lock.
> 
> All this is possible because driver initialization is separated from the
> user input now.
> 
> Thanks
> 
> Leon Romanovsky (5):
>   devlink: Add missed notifications iterators

I missed WARN_ON(), I'm resending the series.

Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
