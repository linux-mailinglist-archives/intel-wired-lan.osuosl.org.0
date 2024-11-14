Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 617BB9C8C8C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 15:12:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4600984396;
	Thu, 14 Nov 2024 14:12:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 80rMcOBDpm4D; Thu, 14 Nov 2024 14:12:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6DD2384436
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731593540;
	bh=84C38E5DArJAiR5YgmfG6OOLvYbuQF9qkPOHBkP3/Kg=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QfjHwA5V1Pk9JASGXT+Af/on6cKq6jFP1xKIslsKlNLByEilMJD25NA/h32BSYBC6
	 2651SWYSyZ1qKtfljWttxalLkizqdmy8vaFmIH8wRHKsx9Y+bkcg5NgS2xQbVl6ZId
	 CqiMp9YpHa+50m6pUa8OLSDHBbA/EC70ESEZnXxVM4ZDOpWaS5o6tc7rZKZX8fDcp7
	 Ht4Merq5mPspz95cbLiseZj7UTV4VX5DlFvDb51J4kC+FsviMXQDNK0OXe5vi1W07V
	 vWjU0SgEaE4lr6q8WWd14ujIyWWfPW4hmPzWzp5mChMUMGYzdpuDTGR/uCc/c/hStQ
	 VlFOEDxmOzMfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DD2384436;
	Thu, 14 Nov 2024 14:12:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 96CE66C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 14:12:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 77F3660A6C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 14:12:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TPGS_TgHvjEI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 14:12:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.220.67;
 helo=nam11-co1-obe.outbound.protection.outlook.com;
 envelope-from=petrm@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 33B1660733
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33B1660733
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2067.outbound.protection.outlook.com [40.107.220.67])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 33B1660733
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 14:12:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wMpbAGqvtP2mT9xZFt3Guh+1FnwKbvuqdqazhKIkVJlZuVV5g51lVqODHk6oWGk47Ch5ogbka/gv4rAoirRET9Snui/kuvJ2NUD88D2xVR8KFC8fA7dwtUyHAewzzXTSCzjBRnO2iQHNNhiF9/A8/VPkI7Mki/8baPK7syW7DZiPSprfxtEtSoJgGukpZ20cDxHR42N6UsSAnHwOnHCjKpsWpc7TwcwR22ScfRytNJfzHQ9M7rQvd7Msx7yl76dLCeCcthFYPn1sNgxi/EIaCXPf2NiK5Y6bjSnkDzz6DlZbO6EjnWzVfFRjn26d3pr2ViIOPklmEUQ9s8N6D+fcqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=84C38E5DArJAiR5YgmfG6OOLvYbuQF9qkPOHBkP3/Kg=;
 b=vheRrkpRb+z4oyC2b5hJQFks3tKTkXJRwe4kx0HHeipQC3N9Eze/CSqhRBzXP8lbJB82aNXekFJT0WBZ3Pp+KxH3iAxhPXNJBcGaUWOX9vD8zK9QApZy+VCi5sFeTjw8ZMFzaSZO9hgA+tgrxbfim7MeucGnwKiiwBf8+xlmt/Eh2Yl/PbLcQoabG1Q+fjdJBhhHNIKLFvJ0jyReY6fHLjNsqVhN4eneJzWRKOa4OnvP8zC1LPFVD8WGMg4N+JzJXWtloG/eJP14+I38hGqnaiMAEo23eUJRie/FP3QzQ3x4ZgjFKaZYbT5gniPBmU1vxX45Bn4GORt5aEE5kFbzWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
Received: from MW2PR16CA0056.namprd16.prod.outlook.com (2603:10b6:907:1::33)
 by PH7PR12MB9073.namprd12.prod.outlook.com (2603:10b6:510:2eb::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.18; Thu, 14 Nov
 2024 14:12:12 +0000
Received: from SJ1PEPF000023CE.namprd02.prod.outlook.com
 (2603:10b6:907:1:cafe::fd) by MW2PR16CA0056.outlook.office365.com
 (2603:10b6:907:1::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.27 via Frontend
 Transport; Thu, 14 Nov 2024 14:12:11 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 SJ1PEPF000023CE.mail.protection.outlook.com (10.167.244.10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8158.14 via Frontend Transport; Thu, 14 Nov 2024 14:12:11 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Thu, 14 Nov
 2024 06:11:58 -0800
Received: from fedora.mtl.com (10.126.231.35) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Thu, 14 Nov
 2024 06:11:49 -0800
From: Petr Machata <petrm@nvidia.com>
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, <netdev@vger.kernel.org>
CC: Simon Horman <horms@kernel.org>, Ido Schimmel <idosch@nvidia.com>, "Petr
 Machata" <petrm@nvidia.com>, Amit Cohen <amcohen@nvidia.com>, Vladimir Oltean
 <vladimir.oltean@nxp.com>, Andy Roulin <aroulin@nvidia.com>,
 <mlxsw@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>, "Przemek
 Kitszel" <przemyslaw.kitszel@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <UNGLinuxDriver@microchip.com>, Manish Chopra <manishc@marvell.com>,
 <GR-Linux-NIC-Dev@marvell.com>, Kuniyuki Iwashima <kuniyu@amazon.com>,
 "Andrew Lunn" <andrew+netdev@lunn.ch>, <bridge@lists.linux.dev>
Date: Thu, 14 Nov 2024 15:09:53 +0100
Message-ID: <cbf6ae8195e85cbf922f8058ce4eba770f3b71ed.1731589511.git.petrm@nvidia.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <cover.1731589511.git.petrm@nvidia.com>
References: <cover.1731589511.git.petrm@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.231.35]
X-ClientProxiedBy: rnnvmail203.nvidia.com (10.129.68.9) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF000023CE:EE_|PH7PR12MB9073:EE_
X-MS-Office365-Filtering-Correlation-Id: ad96cf16-3ea4-4c41-797a-08dd04b6550c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|82310400026|36860700013; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?gw7trl/H8WslFlzY9zyWSnBJdVpjeMSu46dWezMblpU4K+3PkyY4VGcLFqAr?=
 =?us-ascii?Q?z191zpYyFMNbS9NrtSMEhINNFdbvaenF3Lu5g1VtyH6g8Vc48O5StQvPCGnq?=
 =?us-ascii?Q?UrNciwHvPZeN8uXO/C4BbQGmcXBRsakDW9mAeZO2l7BlksBmMyZbiCN1V+8H?=
 =?us-ascii?Q?BHYKP+ZXycWdagJsIcZyBPvvmXmmTpSLG5riwyIh+wAUPhjEL4S2DX4Kq+LE?=
 =?us-ascii?Q?r4kxbeN9K36sKZzFs6HkCl9Wzb3iy0MsNjn+NlhAbBzZVfBoSfp61vIGgGn6?=
 =?us-ascii?Q?ykP7D9fDec9XrwVu7b55gZAV0P6zMiWTZk2ca55E/uLQHLTmVCc3IFg/Ufzi?=
 =?us-ascii?Q?Wf/P4NaTdtBbWft0jywVLFUkZSqO/x+zuPyMIn0n8Rvqqjz1ZY66tKQE9rv0?=
 =?us-ascii?Q?8831zhBE9UVCb6+N5LKrZnCOg5vcGQdw9vDQ0ALRWFMqWo1pmovNy2JZcV3K?=
 =?us-ascii?Q?VVO1zG5sOY4W7/J+SOLZBJvnQrTKk79uKXRs9rP3DQvOmPhf+bqaFHbGSKFP?=
 =?us-ascii?Q?zUGNcFRje6VmOAspAn+Sc0j4SeR/YK3jzXNJg6UkQ+o8czlqBgV1oGNZwSio?=
 =?us-ascii?Q?BUkO178vCn6jrlymECRMNfNac0rbYHR8M/1zwWfY8xIa5cAyYzhzW0HLggdp?=
 =?us-ascii?Q?jXoyW7pJlgIlVOGD9/RCdxbw+rVr6IoyjaweD/xEJefapfNlRlNRsMXu7cqd?=
 =?us-ascii?Q?L7ghBYva9oUfKkPzf1fLmUonEow1dd4eL2GpgikQb/QfNMRWMkHwmVQQ7OkL?=
 =?us-ascii?Q?X1r1Y9pmK8IclROc01vbY3WXT+UPzW1dXh6y3gN8O/JGdtkZBClX37DnURW4?=
 =?us-ascii?Q?pBMNCTGZCVHE/JtMRXWfp0QECJle1VUvaNQ3HojwdTOWQ6gdggDENYSUIc6m?=
 =?us-ascii?Q?QVKjasvqOpM32TpaJ4oYqIZSQXzDxrjjawfgPjkgZYckcUzEUU6ygLfFpgyH?=
 =?us-ascii?Q?fDfgSy5AQwpQi9FFbXrO0M15Z6m11DwIquvxvP5Q7Lje5wRjsfIMw6Zt3fJ+?=
 =?us-ascii?Q?sb2Xk6YFUcvl/6/gTWEQ1n3eB481LE3DUZlSpzrWsOA0STRqQ8vecJa2qkRC?=
 =?us-ascii?Q?6o0lqFMjxpvnF1UssH/pDlK3z7urcGcom4+XUxJhPqlYNvZJkz5jtYMoghRM?=
 =?us-ascii?Q?TMn+mCTZQvPWWqtouxJbGnQE2fZ478D8c5cOvm3TqBjbxs3Tj8/uOIz1ZNGu?=
 =?us-ascii?Q?hf8hf+6qnMHiV9d4htKgu9YvbmAESDEGnGYoJVohT3Prn5m/IO5KaPsdhqxy?=
 =?us-ascii?Q?MfdGJqpC1Suo05GoG3kQ4Dd1Aj7OI64Bp7tNh0nKD87ntMvuGUfjXCjf4Jxq?=
 =?us-ascii?Q?mFWGukw9ZfHT4jCnTCOliCpmF1tAezB5lOZPtD0pa0jaMLIHfj8hubQAK2XA?=
 =?us-ascii?Q?pBmBSzVHk5Jn343/pvNUafseGKscoOcYsOt2b4qqlYivIezD1Q=3D=3D?=
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(82310400026)(36860700013); DIR:OUT;
 SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2024 14:12:11.3293 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ad96cf16-3ea4-4c41-797a-08dd04b6550c
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: SJ1PEPF000023CE.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB9073
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=84C38E5DArJAiR5YgmfG6OOLvYbuQF9qkPOHBkP3/Kg=;
 b=gs7lDWdRj0ViF23F7XFhwVWX7D7VPBO4+G7GFQ7d0iF6DvTwTIMBRiUnKPnK7e9RfhR6FY9jMBLZsaIM2lbPJYC8n0fdgF7dS2lE5xQ2uKWHgmaDhgyZMcuEBnQnjSE1dRqgPMSCDW64XDMiX5cCFovtNrXgyUOUlRl5ibPOvSJY/9G+rninnYfGJ7giaD+rzld6PsVFq464xVlTg9kE1bcCBcOVDY6pZHdEGQ2W1J8LlsXWYGopGeC7q6RY25pMzE1BWeApMf4XRQb4SuRxI+NT09bDXWZSPpItmvVgaCnTRVTioJhK2uonEwexC6WUkK6KxmxPV5QWcURexiwU/w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=gs7lDWdR
Subject: [Intel-wired-lan] [PATCH net-next v4 1/7] ndo_fdb_add: Add a
 parameter to report whether notification was sent
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently when FDB entries are added to or deleted from a VXLAN netdevice,
the VXLAN driver emits one notification, including the VXLAN-specific
attributes. The core however always sends a notification as well, a generic
one. Thus two notifications are unnecessarily sent for these operations. A
similar situation comes up with bridge driver, which also emits
notifications on its own:

 # ip link add name vx type vxlan id 1000 dstport 4789
 # bridge monitor fdb &
 [1] 1981693
 # bridge fdb add de:ad:be:ef:13:37 dev vx self dst 192.0.2.1
 de:ad:be:ef:13:37 dev vx dst 192.0.2.1 self permanent
 de:ad:be:ef:13:37 dev vx self permanent

In order to prevent this duplicity, add a paremeter to ndo_fdb_add,
bool *notified. The flag is primed to false, and if the callee sends a
notification on its own, it sets it to true, thus informing the core that
it should not generate another notification.

Signed-off-by: Petr Machata <petrm@nvidia.com>
Reviewed-by: Amit Cohen <amcohen@nvidia.com>
Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>
---

Notes:
CC: Simon Horman <horms@kernel.org>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>
CC: intel-wired-lan@lists.osuosl.org
CC: UNGLinuxDriver@microchip.com
CC: Manish Chopra <manishc@marvell.com>
CC: GR-Linux-NIC-Dev@marvell.com
CC: Kuniyuki Iwashima <kuniyu@amazon.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>
CC: Nikolay Aleksandrov <razor@blackwall.org>
CC: bridge@lists.linux.dev

 drivers/net/ethernet/intel/i40e/i40e_main.c      |  3 ++-
 drivers/net/ethernet/intel/ice/ice_main.c        |  4 +++-
 drivers/net/ethernet/intel/igb/igb_main.c        |  2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c    |  2 +-
 drivers/net/ethernet/mscc/ocelot_net.c           |  2 +-
 drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c |  2 +-
 drivers/net/macvlan.c                            |  2 +-
 drivers/net/vxlan/vxlan_core.c                   |  5 ++++-
 include/linux/netdevice.h                        |  5 ++++-
 net/bridge/br_fdb.c                              | 12 +++++++-----
 net/bridge/br_private.h                          |  2 +-
 net/core/rtnetlink.c                             |  9 ++++++---
 12 files changed, 32 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 55fb362eb508..ab5febf83ec3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -13095,12 +13095,13 @@ static int i40e_get_phys_port_id(struct net_device *netdev,
  * @addr: the MAC address entry being added
  * @vid: VLAN ID
  * @flags: instructions from stack about fdb operation
+ * @notified: whether notification was emitted
  * @extack: netlink extended ack, unused currently
  */
 static int i40e_ndo_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 			    struct net_device *dev,
 			    const unsigned char *addr, u16 vid,
-			    u16 flags,
+			    u16 flags, bool *notified,
 			    struct netlink_ext_ack *extack)
 {
 	struct i40e_netdev_priv *np = netdev_priv(dev);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a6f586f9bfd1..c875036f654b 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6125,12 +6125,14 @@ ice_set_tx_maxrate(struct net_device *netdev, int queue_index, u32 maxrate)
  * @addr: the MAC address entry being added
  * @vid: VLAN ID
  * @flags: instructions from stack about fdb operation
+ * @notified: whether notification was emitted
  * @extack: netlink extended ack
  */
 static int
 ice_fdb_add(struct ndmsg *ndm, struct nlattr __always_unused *tb[],
 	    struct net_device *dev, const unsigned char *addr, u16 vid,
-	    u16 flags, struct netlink_ext_ack __always_unused *extack)
+	    u16 flags, bool *notified,
+	    struct netlink_ext_ack __always_unused *extack)
 {
 	int err;
 
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index b83df5f94b1f..bb35f931f469 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -2486,7 +2486,7 @@ static int igb_set_features(struct net_device *netdev,
 static int igb_ndo_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 			   struct net_device *dev,
 			   const unsigned char *addr, u16 vid,
-			   u16 flags,
+			   u16 flags, bool *notified,
 			   struct netlink_ext_ack *extack)
 {
 	/* guarantee we can provide a unique filter for the unicast address */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 8b8404d8c946..adc9392463ce 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -9954,7 +9954,7 @@ static int ixgbe_set_features(struct net_device *netdev,
 static int ixgbe_ndo_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 			     struct net_device *dev,
 			     const unsigned char *addr, u16 vid,
-			     u16 flags,
+			     u16 flags, bool *notified,
 			     struct netlink_ext_ack *extack)
 {
 	/* guarantee we can provide a unique filter for the unicast address */
diff --git a/drivers/net/ethernet/mscc/ocelot_net.c b/drivers/net/ethernet/mscc/ocelot_net.c
index 7c9540a71725..4f15ba2c5525 100644
--- a/drivers/net/ethernet/mscc/ocelot_net.c
+++ b/drivers/net/ethernet/mscc/ocelot_net.c
@@ -730,7 +730,7 @@ static void ocelot_get_stats64(struct net_device *dev,
 static int ocelot_port_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 			       struct net_device *dev,
 			       const unsigned char *addr,
-			       u16 vid, u16 flags,
+			       u16 vid, u16 flags, bool *notified,
 			       struct netlink_ext_ack *extack)
 {
 	struct ocelot_port_private *priv = netdev_priv(dev);
diff --git a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
index b3588a1ebc25..2484cebd97d4 100644
--- a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
+++ b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
@@ -394,7 +394,7 @@ static int qlcnic_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
 static int qlcnic_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 			struct net_device *netdev,
 			const unsigned char *addr, u16 vid, u16 flags,
-			struct netlink_ext_ack *extack)
+			bool *notified, struct netlink_ext_ack *extack)
 {
 	struct qlcnic_adapter *adapter = netdev_priv(netdev);
 	int err = 0;
diff --git a/drivers/net/macvlan.c b/drivers/net/macvlan.c
index edbd5afcec41..dfb462e63248 100644
--- a/drivers/net/macvlan.c
+++ b/drivers/net/macvlan.c
@@ -1024,7 +1024,7 @@ static int macvlan_vlan_rx_kill_vid(struct net_device *dev,
 static int macvlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 			   struct net_device *dev,
 			   const unsigned char *addr, u16 vid,
-			   u16 flags,
+			   u16 flags, bool *notified,
 			   struct netlink_ext_ack *extack)
 {
 	struct macvlan_dev *vlan = netdev_priv(dev);
diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index 2c2ba5097647..09c1d27e11d3 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -1241,7 +1241,7 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
 static int vxlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 			 struct net_device *dev,
 			 const unsigned char *addr, u16 vid, u16 flags,
-			 struct netlink_ext_ack *extack)
+			 bool *notified, struct netlink_ext_ack *extack)
 {
 	struct vxlan_dev *vxlan = netdev_priv(dev);
 	/* struct net *net = dev_net(vxlan->dev); */
@@ -1277,6 +1277,9 @@ static int vxlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 			       nhid, true, extack);
 	spin_unlock_bh(&vxlan->hash_lock[hash_index]);
 
+	if (!err)
+		*notified = true;
+
 	return err;
 }
 
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 0aae346d919e..6a7fd191e1ee 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1248,8 +1248,10 @@ struct netdev_net_notifier {
  * int (*ndo_fdb_add)(struct ndmsg *ndm, struct nlattr *tb[],
  *		      struct net_device *dev,
  *		      const unsigned char *addr, u16 vid, u16 flags,
- *		      struct netlink_ext_ack *extack);
+ *		      bool *notified, struct netlink_ext_ack *extack);
  *	Adds an FDB entry to dev for addr.
+ *	Callee shall set *notified to true if it sent any appropriate
+ *	notification(s). Otherwise core will send a generic one.
  * int (*ndo_fdb_del)(struct ndmsg *ndm, struct nlattr *tb[],
  *		      struct net_device *dev,
  *		      const unsigned char *addr, u16 vid)
@@ -1525,6 +1527,7 @@ struct net_device_ops {
 					       const unsigned char *addr,
 					       u16 vid,
 					       u16 flags,
+					       bool *notified,
 					       struct netlink_ext_ack *extack);
 	int			(*ndo_fdb_del)(struct ndmsg *ndm,
 					       struct nlattr *tb[],
diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 77f110035df1..5f29958f3ddd 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -1152,7 +1152,7 @@ static int fdb_add_entry(struct net_bridge *br, struct net_bridge_port *source,
 static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
 			struct net_bridge_port *p, const unsigned char *addr,
 			u16 nlh_flags, u16 vid, struct nlattr *nfea_tb[],
-			struct netlink_ext_ack *extack)
+			bool *notified, struct netlink_ext_ack *extack)
 {
 	int err = 0;
 
@@ -1183,6 +1183,8 @@ static int __br_fdb_add(struct ndmsg *ndm, struct net_bridge *br,
 		spin_unlock_bh(&br->hash_lock);
 	}
 
+	if (!err)
+		*notified = true;
 	return err;
 }
 
@@ -1195,7 +1197,7 @@ static const struct nla_policy br_nda_fdb_pol[NFEA_MAX + 1] = {
 int br_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 	       struct net_device *dev,
 	       const unsigned char *addr, u16 vid, u16 nlh_flags,
-	       struct netlink_ext_ack *extack)
+	       bool *notified, struct netlink_ext_ack *extack)
 {
 	struct nlattr *nfea_tb[NFEA_MAX + 1], *attr;
 	struct net_bridge_vlan_group *vg;
@@ -1258,10 +1260,10 @@ int br_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 
 		/* VID was specified, so use it. */
 		err = __br_fdb_add(ndm, br, p, addr, nlh_flags, vid, nfea_tb,
-				   extack);
+				   notified, extack);
 	} else {
 		err = __br_fdb_add(ndm, br, p, addr, nlh_flags, 0, nfea_tb,
-				   extack);
+				   notified, extack);
 		if (err || !vg || !vg->num_vlans)
 			goto out;
 
@@ -1273,7 +1275,7 @@ int br_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 			if (!br_vlan_should_use(v))
 				continue;
 			err = __br_fdb_add(ndm, br, p, addr, nlh_flags, v->vid,
-					   nfea_tb, extack);
+					   nfea_tb, notified, extack);
 			if (err)
 				goto out;
 		}
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index 041f6e571a20..ebfc59049ec1 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -858,7 +858,7 @@ int br_fdb_delete_bulk(struct nlmsghdr *nlh, struct net_device *dev,
 		       struct netlink_ext_ack *extack);
 int br_fdb_add(struct ndmsg *nlh, struct nlattr *tb[], struct net_device *dev,
 	       const unsigned char *addr, u16 vid, u16 nlh_flags,
-	       struct netlink_ext_ack *extack);
+	       bool *notified, struct netlink_ext_ack *extack);
 int br_fdb_dump(struct sk_buff *skb, struct netlink_callback *cb,
 		struct net_device *dev, struct net_device *fdev, int *idx);
 int br_fdb_get(struct sk_buff *skb, struct nlattr *tb[], struct net_device *dev,
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 327fa4957929..f31b2436cde5 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -4578,9 +4578,10 @@ static int rtnl_fdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 	    netif_is_bridge_port(dev)) {
 		struct net_device *br_dev = netdev_master_upper_dev_get(dev);
 		const struct net_device_ops *ops = br_dev->netdev_ops;
+		bool notified = false;
 
 		err = ops->ndo_fdb_add(ndm, tb, dev, addr, vid,
-				       nlh->nlmsg_flags, extack);
+				       nlh->nlmsg_flags, &notified, extack);
 		if (err)
 			goto out;
 		else
@@ -4589,16 +4590,18 @@ static int rtnl_fdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 
 	/* Embedded bridge, macvlan, and any other device support */
 	if ((ndm->ndm_flags & NTF_SELF)) {
+		bool notified = false;
+
 		if (dev->netdev_ops->ndo_fdb_add)
 			err = dev->netdev_ops->ndo_fdb_add(ndm, tb, dev, addr,
 							   vid,
 							   nlh->nlmsg_flags,
-							   extack);
+							   &notified, extack);
 		else
 			err = ndo_dflt_fdb_add(ndm, tb, dev, addr, vid,
 					       nlh->nlmsg_flags);
 
-		if (!err) {
+		if (!err && !notified) {
 			rtnl_fdb_notify(dev, addr, vid, RTM_NEWNEIGH,
 					ndm->ndm_state);
 			ndm->ndm_flags &= ~NTF_SELF;
-- 
2.45.0

