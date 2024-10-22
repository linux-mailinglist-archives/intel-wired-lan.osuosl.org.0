Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 280279AB16C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 16:51:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E1CE40392;
	Tue, 22 Oct 2024 14:51:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H36uaJrBuR89; Tue, 22 Oct 2024 14:51:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4AE364039A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729608699;
	bh=b+ULd6/L4GurXkjQSYbxXr68gYbV008S1UfS7EvkWLo=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=owdL+9TgPyfydyzbucdssvUb/yjJyEyZPwe+jeRaQM0p2KwausTJDK+0ziCTgFSfm
	 h1KzO/ScOhB7SFPI/Ua4ZhiK0C2lr5t+xhiLt7hWg7YIRhANP3AMpRwJi2OyJLFRFY
	 kkH5Vwgev1QXIh/hnZOpXZp004TSjciXMFoLjYgZ/vpIMTQhYcv8DnC3aWwO8doXCi
	 kBdggsXwyv2Zb7oCYp6oFAdOCyMXxy5UGu5mKezKzYS2C8zUPruMhC1O9GN4B4JNcD
	 P7XrLcKEiNGFdr6TV9+eVLkQgEeCIM5hRtvl9q5xBlEz1sy0mjjGBpn1t9zx0iktm/
	 WH12zo+N0XwMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4AE364039A;
	Tue, 22 Oct 2024 14:51:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B4E4D71F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 14:51:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B0BF680EB7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 14:51:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CUgqX1mID87X for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 14:51:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.95.62;
 helo=nam02-dm3-obe.outbound.protection.outlook.com;
 envelope-from=petrm@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B93B980EA6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B93B980EA6
Received: from NAM02-DM3-obe.outbound.protection.outlook.com
 (mail-dm3nam02on2062.outbound.protection.outlook.com [40.107.95.62])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B93B980EA6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 14:51:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rPV6n06TRddDDSFNs6WcCC9zOAPKZjm7WQrUSq6MAak+dgojsx+0ATNQeONO4czwTp8d+Dql9oMwjEwHue5CT1cmLza/0pZUQJ5mrshKjYyf9RusYqtCU4ZiHNepHaWa5Slvj2x38MWNl+oU15nzGRYHVfdVBHbj8/sRHwiTgrn9Un5N2RRgeCCMnhW99Pa4Vg7/NnvgW8LniW3wyN2VvBRz4sxwwpAI1cR1r5ynrj8Q03uOg5R95VbSS7fwCRtDxuyKeXDxlEWHoQHhiC2ciZqdxLzZa/glq7e+RsIbbhNw5q08pjqFKWDLEADRh9lPcodIeRjnJnYeWT9BBL7TLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b+ULd6/L4GurXkjQSYbxXr68gYbV008S1UfS7EvkWLo=;
 b=x2IUABcfL3Ajtyc80QPSP1OyEr0t0LmNecXsXB8s8+FDNaV2iJ6aiU9bsheUzaa66kP7VKb9muNK97uTsd9afHArSTyIVQIiRnWOHgV8optgysQzx/TDBo9mjTPLeFdRs+FcXdiHmz2/GW8ssdgVaOavKPDulAH2iWl6aQYYQzNdzTqzde0mCPQ2r+rFgfyjPyBE1rYG7vKPxBHXeqI7r76j/WFb8531U8t2RHtUv7qL7x5W8WXUUSWxiPE8R6ypPrGku/tywpZw/svRrAOmPEOzM+40FRnD632J8HCwb98eIGkHqHSbaTii4V4KFtVzdWBBME2sricJezt85G6plA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
Received: from MW4PR04CA0076.namprd04.prod.outlook.com (2603:10b6:303:6b::21)
 by PH7PR12MB6657.namprd12.prod.outlook.com (2603:10b6:510:1fe::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 14:51:31 +0000
Received: from SJ1PEPF000023D9.namprd21.prod.outlook.com
 (2603:10b6:303:6b:cafe::e9) by MW4PR04CA0076.outlook.office365.com
 (2603:10b6:303:6b::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.17 via Frontend
 Transport; Tue, 22 Oct 2024 14:51:30 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 SJ1PEPF000023D9.mail.protection.outlook.com (10.167.244.74) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8114.2 via Frontend Transport; Tue, 22 Oct 2024 14:51:30 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Tue, 22 Oct
 2024 07:51:13 -0700
Received: from fedora.mtl.com (10.126.231.35) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Tue, 22 Oct
 2024 07:51:05 -0700
From: Petr Machata <petrm@nvidia.com>
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, <netdev@vger.kernel.org>
CC: Ido Schimmel <idosch@nvidia.com>, Petr Machata <petrm@nvidia.com>, "Amit
 Cohen" <amcohen@nvidia.com>, Vladimir Oltean <vladimir.oltean@nxp.com>,
 <mlxsw@nvidia.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <UNGLinuxDriver@microchip.com>, "Manish
 Chopra" <manishc@marvell.com>, <GR-Linux-NIC-Dev@marvell.com>, "Kuniyuki
 Iwashima" <kuniyu@amazon.com>, Andrew Lunn <andrew+netdev@lunn.ch>
Date: Tue, 22 Oct 2024 16:50:13 +0200
Message-ID: <00caa74f6dea128400472b5dec77f61b16d0f9d4.1729607879.git.petrm@nvidia.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <cover.1729607879.git.petrm@nvidia.com>
References: <cover.1729607879.git.petrm@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.231.35]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF000023D9:EE_|PH7PR12MB6657:EE_
X-MS-Office365-Filtering-Correlation-Id: 02a14d7c-f1a4-4804-338f-08dcf2a90397
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|36860700013|82310400026; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?sLGf+YL5Vy9mO2UqoErUAzdA2eLJBj40pcxg30lioI6rwAjliq3EQb/I3q0n?=
 =?us-ascii?Q?IGgQ2Rnqd/bWqAgH5br+OxTpmMNhCozp47ZpxYH/74OGyOb95PTbItG/77yQ?=
 =?us-ascii?Q?4tl8xJn1u8amKCIzagEJytP4JwYdh1EivzJV/3xIhku8NeXtvnEVXF1NNJo0?=
 =?us-ascii?Q?0hMxGW2I44TdHVeibbV6zgznTMWQml1/sqL0pzSi6UDWBDGwkQdnx0lzqZae?=
 =?us-ascii?Q?7fyjWGxDztvFeXRseqzQfPb5TWI7i8QcF/blaWLxq3vsiCvyY+LbKlfIwi7E?=
 =?us-ascii?Q?7AhIweNoLpqwJQDKNUofKbwQNhF9JGNLyhrNWN5aINfbSmAvk5TbWU4wfoVx?=
 =?us-ascii?Q?N7PmMpp5HWz54RUzhrsY7Tw91QDzBBf3IX+eP2G3WdlEtO2T8LgcpWjvPkz4?=
 =?us-ascii?Q?PAukUCMP7xDYojGav7Y1YqNzfQleCvbLJ3MzVxjKjSKrEAi8WTUaOgb+8Wba?=
 =?us-ascii?Q?3dhvsaS+JRD02h3pGg4cwfJFaeflAAyY0xAtoMrO8JDZJ688VRv1kSfFjnnT?=
 =?us-ascii?Q?BznCP8nMTK4qHy99NaqCjMhZ2LND8Br7j30fsCOny/YSQ0Px3Z/WyqoJ2WrN?=
 =?us-ascii?Q?Pp1Ec0Wq9i9hqflrJZYkOHfFQ6aRzSvQsT3v73OCABwxoXQBoIHg4PG0AKmO?=
 =?us-ascii?Q?HQ0SmOYigEVntoO7V+W1SRhIkNg/2Zotk/OKWlUksb7zUKen0USl3RreLKRp?=
 =?us-ascii?Q?Yw1bpxHwE92najti+MnLl1+EoRpzyTRHZPK78RyLbUkgm1eZREMwuQfETEAw?=
 =?us-ascii?Q?AUYoO/dvtTgAr5/DO0119e3SKfzsaejFN5ucRPyq8mIqKwTiK6MPP2HPJYpH?=
 =?us-ascii?Q?Q674JYZQTEQgL3UfMMMebrfWfSLVyN7ZbirMnq3tjKzCPBYQ8S5nAFKuP9Fy?=
 =?us-ascii?Q?VCHVA3PYr3hbnfVsn2WQtFwaQGhBIPmVAAfuAJMv8Hi+ADlDagW1To9OViof?=
 =?us-ascii?Q?/9yLQmEw9M824GMSW+k5CWay0N2kArmqObY2S2CcOSb6nhoCU9QONg/+u8jm?=
 =?us-ascii?Q?qXKDH22dGgdk2G32R8FgvZRRtraCfU4DyKgDOCxGdkBWWsyyhY8dVo0AA66H?=
 =?us-ascii?Q?pEIHNa4vVryMk7RfkmHRkZJ+6SsiSYCZDx4cQhouX/7D6bctGyIAZNibdWJf?=
 =?us-ascii?Q?sg/wlfGiK3jCokQNnvzxM5RA3Us1L4nYF8s7oAkRzVnKN7IIVH6W9ja8aiaR?=
 =?us-ascii?Q?95s2P71lseG9UKOgdfszT8YH3VLCp3ci3ZI1cClAxzEMkiehUbtuXpO7sx/P?=
 =?us-ascii?Q?Ixw3WGqwL1+zdul3akjaId1e8/CxCXTtTfSh8LrjgxleG6ne6jJImgg4jswv?=
 =?us-ascii?Q?6JOuSTZ4I3HSUl+6pn9US+59NZdrsv9MaSpAA5PTDjjycVbD+Z2ANAO4ajlV?=
 =?us-ascii?Q?XFfuDZXN4YcJO9eCo/qMTjvIvaQlcOVi6Fk8hWeYyAZHhJjw4A=3D=3D?=
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(36860700013)(82310400026); DIR:OUT;
 SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 14:51:30.2153 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 02a14d7c-f1a4-4804-338f-08dcf2a90397
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: SJ1PEPF000023D9.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB6657
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b+ULd6/L4GurXkjQSYbxXr68gYbV008S1UfS7EvkWLo=;
 b=NM6bLSFWvd+d4C5Dw/dSiZk2tcyLUmFl5m7xMK6+2j2Nc4YxL9DO5uz0R66t7jNby+V8dyzsKv5P6USLbgWlMSxO34GeS72dHJ6t+LFDx0FMtG4QuIefFdR5ebeIuhmtlUQ1+QaltkOMdgd26dQsKURGPn8QNsg8STvsGj954XP37DV5fHG6xEDbip/0INffmrDwzzbLkpjBmJKQzFRmKKACr7MhtaebdhHCl0dONNID4V0ods/7Pb6dMSyCKBnzME8S7ZbcHCiezxtjF79+DrhAm8JZkQ30d1BjIiJjIP1UZX8M94/Ecoe2GkK88QsGUCiqwQSxFoBSF8bWFoUt8w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=NM6bLSFW
Subject: [Intel-wired-lan] [PATCH net-next 2/8] ndo_fdb_add: Shift
 responsibility for notifying to drivers
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

In order to prevent this duplicity, shift the responsibility to send the
notification always to the drivers. Only where the default FDB add / del
operations are used does the core emit notifications. If fdb_add and
fdb_del are overridden, the driver should do that instead.

Drivers can use rtnl_fdb_notify(), exported in the previous patch, to get
the default notification behavior back. This function is made to notify on
success, which means several drivers do not need to change at all.

Signed-off-by: Petr Machata <petrm@nvidia.com>
Reviewed-by: Amit Cohen <amcohen@nvidia.com>
---
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>
CC: intel-wired-lan@lists.osuosl.org
CC: UNGLinuxDriver@microchip.com
CC: Manish Chopra <manishc@marvell.com>
CC: GR-Linux-NIC-Dev@marvell.com
CC: Kuniyuki Iwashima <kuniyu@amazon.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c      | 3 +++
 drivers/net/ethernet/intel/ice/ice_main.c        | 3 +++
 drivers/net/ethernet/mscc/ocelot_net.c           | 8 +++++++-
 drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c | 6 +++++-
 drivers/net/macvlan.c                            | 3 +++
 include/linux/netdevice.h                        | 3 +++
 net/core/rtnetlink.c                             | 8 ++++----
 7 files changed, 28 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 25295ae370b2..6a1ac0f4f8a6 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -13126,6 +13126,9 @@ static int i40e_ndo_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 	if (err == -EEXIST && !(flags & NLM_F_EXCL))
 		err = 0;
 
+	if (!err)
+		rtnl_fdb_notify(dev, addr, vid, RTM_NEWNEIGH, ndm->ndm_state);
+
 	return err;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a6f586f9bfd1..a3398814a1cb 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6154,6 +6154,9 @@ ice_fdb_add(struct ndmsg *ndm, struct nlattr __always_unused *tb[],
 	if (err == -EEXIST && !(flags & NLM_F_EXCL))
 		err = 0;
 
+	if (!err)
+		rtnl_fdb_notify(dev, addr, vid, RTM_NEWNEIGH, ndm->ndm_state);
+
 	return err;
 }
 
diff --git a/drivers/net/ethernet/mscc/ocelot_net.c b/drivers/net/ethernet/mscc/ocelot_net.c
index 7c9540a71725..cf972444e254 100644
--- a/drivers/net/ethernet/mscc/ocelot_net.c
+++ b/drivers/net/ethernet/mscc/ocelot_net.c
@@ -737,8 +737,14 @@ static int ocelot_port_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 	struct ocelot_port *ocelot_port = &priv->port;
 	struct ocelot *ocelot = ocelot_port->ocelot;
 	int port = priv->port.index;
+	int err;
 
-	return ocelot_fdb_add(ocelot, port, addr, vid, ocelot_port->bridge);
+	err = ocelot_fdb_add(ocelot, port, addr, vid, ocelot_port->bridge);
+
+	if (!err)
+		rtnl_fdb_notify(dev, addr, vid, RTM_NEWNEIGH, ndm->ndm_state);
+
+	return err;
 }
 
 static int ocelot_port_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
diff --git a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
index b3588a1ebc25..1de0290e15e0 100644
--- a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
+++ b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
@@ -409,7 +409,7 @@ static int qlcnic_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 	}
 
 	if (ether_addr_equal(addr, adapter->mac_addr))
-		return err;
+		goto out;
 
 	if (is_unicast_ether_addr(addr)) {
 		if (netdev_uc_count(netdev) < adapter->ahw->max_uc_count)
@@ -422,6 +422,10 @@ static int qlcnic_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 		err = -EINVAL;
 	}
 
+out:
+	if (!err)
+		rtnl_fdb_notify(dev, addr, vid, RTM_NEWNEIGH, ndm->ndm_state);
+
 	return err;
 }
 
diff --git a/drivers/net/macvlan.c b/drivers/net/macvlan.c
index cf18e66de142..b1e828581ec4 100644
--- a/drivers/net/macvlan.c
+++ b/drivers/net/macvlan.c
@@ -1044,6 +1044,9 @@ static int macvlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 	else if (is_multicast_ether_addr(addr))
 		err = dev_mc_add_excl(dev, addr);
 
+	if (!err)
+		rtnl_fdb_notify(dev, addr, vid, RTM_NEWNEIGH, ndm->ndm_state);
+
 	return err;
 }
 
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 8feaca12655e..9f7de8d0414a 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1247,6 +1247,9 @@ struct netdev_net_notifier {
  *		      const unsigned char *addr, u16 vid, u16 flags,
  *		      struct netlink_ext_ack *extack);
  *	Adds an FDB entry to dev for addr.
+ *	Callee is responsible for sending appropriate notification. The helper
+ *	rtnl_fdb_notify() can be invoked to send a generic notification in case
+ *	the driver does not need to customize the notification.
  * int (*ndo_fdb_del)(struct ndmsg *ndm, struct nlattr *tb[],
  *		      struct net_device *dev,
  *		      const unsigned char *addr, u16 vid)
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index e5c6dd4c5cf5..a9f56a50fa57 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -4376,6 +4376,9 @@ int ndo_dflt_fdb_add(struct ndmsg *ndm,
 	if (err == -EEXIST && !(flags & NLM_F_EXCL))
 		err = 0;
 
+	if (!err)
+		rtnl_fdb_notify(dev, addr, vid, RTM_NEWNEIGH, ndm->ndm_state);
+
 	return err;
 }
 EXPORT_SYMBOL(ndo_dflt_fdb_add);
@@ -4473,11 +4476,8 @@ static int rtnl_fdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 			err = ndo_dflt_fdb_add(ndm, tb, dev, addr, vid,
 					       nlh->nlmsg_flags);
 
-		if (!err) {
-			rtnl_fdb_notify(dev, addr, vid, RTM_NEWNEIGH,
-					ndm->ndm_state);
+		if (!err)
 			ndm->ndm_flags &= ~NTF_SELF;
-		}
 	}
 out:
 	return err;
-- 
2.45.0

