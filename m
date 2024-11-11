Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1D99C4340
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Nov 2024 18:12:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3751440251;
	Mon, 11 Nov 2024 17:11:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CR2aiOKZyFQq; Mon, 11 Nov 2024 17:11:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48BA640213
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731345117;
	bh=vLwS6yLLI7gKzPrJ0XQHtOYJ8byYIzeXvL8P3nLzWas=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TKJ+rtjp1cdW4HM0l8MmYKwhJWrBpdR794qkSYbvudslsg5DVcXDdfsoKNhgLXGfW
	 uEiHfUt70bRhiNpQkLqzIChi98Az3FG4VYD1laZNaWq5Lz20+sl+cCJtiEUXOybEc4
	 UzgCK2wKRACpOn+a2b9d0QYK4GOQ52DOmJFnAW/buR0La9qBmAqmXcZ3Cl5qRhTnV6
	 uEaYcCygCf7qEl+vf8FJ+i7AAzWptOc32M4A95S92hVT3Xj1UGHmqvePhf45hzO8pf
	 uGkhumlQrFptmxoGzQgrEqcfflvjr4uYIifbGVysY5/5z/TOviIGiD7M66Lny90c9s
	 /Jh+IAyPQ4Fbg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48BA640213;
	Mon, 11 Nov 2024 17:11:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9FC42D8F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Nov 2024 17:11:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8ABA640420
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Nov 2024 17:11:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eaisL7sOwYu7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Nov 2024 17:11:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.94.67;
 helo=nam10-mw2-obe.outbound.protection.outlook.com;
 envelope-from=petrm@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 64A7E40135
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 64A7E40135
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2067.outbound.protection.outlook.com [40.107.94.67])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 64A7E40135
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Nov 2024 17:11:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r6IzrAGDM6HwqfuIxqydJvwbp8J8tQgllJCq02VzOB+KIg097MQsH/CGG/zF3VwgGFKDVgcXOvKubfmu7hOcjsThOMGGVug09Zcxz4QWCsRFAXgVov4q/HfzTHqi7Av73lER+bXcI3nlRPqgA/zQvCskb5QtHK1T/6jq3CwgOxXNis3elFn+l/WZ1gquLIhK4NQa9Er1xwFHagCg4ayUqctBg10e+dxZNM4JwULPeajoLPguBcQERG4+yuLjQfxn2MVCAYnDwd4h7owD5B8cEOKfYysw4iUeXtwTUbknN16MtSFbPPqzD51uzolYi2hlJVCLHcEAaJzkk8fni3NF0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vLwS6yLLI7gKzPrJ0XQHtOYJ8byYIzeXvL8P3nLzWas=;
 b=JbmhP4cjKvqqtP9H02e3stcyU56vOyo1LjQQciewQuX3xIxSRzfcHpRUKcf/oxe32izjm4hU3wLjrry25uxtw9Z6LhxxstgDHuzNK0ERdTwJ1KH4SeQI2U15UdGMgbPPKx6hGgKW3l4EW2P8VSzXycMscLdILJF2Pkr7ELyRR/n+R8LT5AdLOgZNQnHDb5vywp3MSNzYymIj7r/Stfsv54yNBGv0i9UbdQZdsNWgl1ewEGGXQw+0R5adw/1ep9IoxqPLZjMt2i5T3gtWOJPtZa7GuQIbj1jjL7+dylVEPMC5Bm9T08OukSyWJ8HYUe3gCdYeP4LGZq+gqgoHfxoNMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
Received: from SJ0PR03CA0266.namprd03.prod.outlook.com (2603:10b6:a03:3a0::31)
 by CYYPR12MB8731.namprd12.prod.outlook.com (2603:10b6:930:ba::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.27; Mon, 11 Nov
 2024 17:11:47 +0000
Received: from CO1PEPF000075F2.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0:cafe::de) by SJ0PR03CA0266.outlook.office365.com
 (2603:10b6:a03:3a0::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.27 via Frontend
 Transport; Mon, 11 Nov 2024 17:11:47 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 CO1PEPF000075F2.mail.protection.outlook.com (10.167.249.41) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8158.14 via Frontend Transport; Mon, 11 Nov 2024 17:11:46 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Mon, 11 Nov
 2024 09:11:28 -0800
Received: from localhost.localdomain (10.126.230.35) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Mon, 11 Nov
 2024 09:11:20 -0800
From: Petr Machata <petrm@nvidia.com>
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, <netdev@vger.kernel.org>
CC: Simon Horman <horms@kernel.org>, Ido Schimmel <idosch@nvidia.com>, "Petr
 Machata" <petrm@nvidia.com>, Amit Cohen <amcohen@nvidia.com>, Vladimir Oltean
 <vladimir.oltean@nxp.com>, Andy Roulin <aroulin@nvidia.com>,
 <mlxsw@nvidia.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <UNGLinuxDriver@microchip.com>, "Manish
 Chopra" <manishc@marvell.com>, <GR-Linux-NIC-Dev@marvell.com>, "Kuniyuki
 Iwashima" <kuniyu@amazon.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "Nikolay
 Aleksandrov" <razor@blackwall.org>, <bridge@lists.linux.dev>
Date: Mon, 11 Nov 2024 18:08:55 +0100
Message-ID: <2afc1da2e9cd2dc348975b0fe250682e74990719.1731342342.git.petrm@nvidia.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <cover.1731342342.git.petrm@nvidia.com>
References: <cover.1731342342.git.petrm@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.230.35]
X-ClientProxiedBy: rnnvmail203.nvidia.com (10.129.68.9) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PEPF000075F2:EE_|CYYPR12MB8731:EE_
X-MS-Office365-Filtering-Correlation-Id: 684e5748-a2c9-4939-7ae1-08dd0273eca2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|82310400026|36860700013|7416014|376014; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?B2PTLvQxwly9kBvvdz5RALDwy+Ft+i3bp/GypsK8eceBaoXtCh+54pMLbh2M?=
 =?us-ascii?Q?VK3zTNew82VBqqvslE8AHGHLxK4H2xOjSu2sL2BwM5i7BkbNIHPK/Dn8fMW/?=
 =?us-ascii?Q?aIQaWKpDXvULKzmMXoFTLk7lwhBx0gAs8dAeJw3lLvRj0nVGzcKIZiEiE/Z7?=
 =?us-ascii?Q?/YoKlSGTVp6ocqtY4C3lbcTUtEQsvLQhTCX30tbJJkcplTQuVZ1HZsDPbD1c?=
 =?us-ascii?Q?y+8wWkEZVkNTzHNwHuYLm+I4An9H9keX+DiruCzT/Dj+IFHwOPYOzSwLv949?=
 =?us-ascii?Q?nOFXdRS+vjcZkzsFeZKK74AuXthRxZPiXk+As5X6tLcsnnrKg+Fo5vrmcVE2?=
 =?us-ascii?Q?VjYjO5WDb/ilNsWtjSG+IbrypmAiO54tzMEqmFNsGrWYtUM6XmqvTnUU0tBu?=
 =?us-ascii?Q?zbr1qiJ85oMVwwctNi98sRDJREK5nNaNNxMbub/gPhDJm3dg7zWkow5O5KJL?=
 =?us-ascii?Q?C2VS0CkNXtAXkFaimvfIMuLOSGM1kiv7nZr0guLQrJYzMjwqyL3SOIsAogWR?=
 =?us-ascii?Q?rbeh925L2GzpILtNT+0klnAQ01/HuzR+bxqtebomh+V4kyisiCIhI+tlGr3S?=
 =?us-ascii?Q?f0aqy78W3Cw166tcG6n5N2LxbsqUjCAWLUIkN1l168YX59OvPH9kMAd7AUQ0?=
 =?us-ascii?Q?22HMWvLubZIkQqyU89jfJveOdnywzuAvoeBLXr6N3UZ4qdermxS0LtNc6ynZ?=
 =?us-ascii?Q?ApI2cidBSwfKLbumnrUtxqmLrzVQSHK/qR6WcE4/e9EU/DusFzufr2CLOls1?=
 =?us-ascii?Q?qclULcgAiru+nidOKs2elDvAvdIRL/0MkUboR/4xTc9tTNfUYW/0i89YBCm/?=
 =?us-ascii?Q?GBDlHzYb7iOgRsMEIRAkWJasrD48B9lLipayyr3wo+PfsCBINY008Wbxj1en?=
 =?us-ascii?Q?h1g5//GZRt+3EI+JTo8OCP3nAxZHilNb4ghknXp8O4BMzE95B/4IBZ6eW6kg?=
 =?us-ascii?Q?P53WJM3nABDdV++aB6TH3FB7+eoRv3ojgjV/PwkIGymYHAIS3RS3dVqngltk?=
 =?us-ascii?Q?2Gngwq15Fr0UJlPdoEnCv1ZJduPYoJ43XNkPE7qRvJFx4crdQNf3oV43q9Gh?=
 =?us-ascii?Q?3c5X3ckt0NYXa55ozEc16YX6rMMt5b5g3JFX+1YwFZluHKPtSD1LiJQBQJMC?=
 =?us-ascii?Q?ZV4wmzqTi7WDsBb8VNPRzHDyKLJCiXOTMTyB3tsugPH4V7A1KrLqcjob5dwO?=
 =?us-ascii?Q?yaIDt2tdAXOYzdTSqXcRayXjk02BQeW3vD+7OXIXGBidp9qBuft3iaNd7duq?=
 =?us-ascii?Q?jBZSfPkCgN3lcCUZTLRmji4X6DsVhCwj3UxzOcqhrS1+fcQnkABRV6vywNL2?=
 =?us-ascii?Q?PZrZp+RPE3hoURw9yiod9xF2N5L4IwRPsSfI2AOYlcxq/gszW+A80o02Gq00?=
 =?us-ascii?Q?Ns+qAxZEyOH4kFSAuF+sPsl0Gp6W7WXx9DRXifqICst9+Z+8Nw=3D=3D?=
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230040)(1800799024)(82310400026)(36860700013)(7416014)(376014); DIR:OUT;
 SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2024 17:11:46.9638 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 684e5748-a2c9-4939-7ae1-08dd0273eca2
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: CO1PEPF000075F2.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR12MB8731
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vLwS6yLLI7gKzPrJ0XQHtOYJ8byYIzeXvL8P3nLzWas=;
 b=hvEsimWCzfWANTNQ40eHLUl7l/S9wQNuaRx/iAkE6jp4gnoKSod8Uc8txbmnSnAR88N+fanP0lcA8/vaUtN2sF36oJbAgcQeGLWFPBtdMvXD5lDdr7TZbtkAbzlVJd3BhNu1C5SUl+PFT+pMULVoo0rxMJ0lKpx61pqfvek8XzfVnIZiU+2P/vABKDfHpCUHPAPJm/Y8qvAM+Tschdojw0LQCwQbx99aUj8aLUV1Y+sMqWevQ3KukXE91ukNGC3RG/d0wZz4CZ8uT8S5X6A5W3eTwqeiRuaHgZQ/oetBfMDF1O73MmGGaUXeewu3z1db30hFY/YS0ffuOX1Of/XxnA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=hvEsimWC
Subject: [Intel-wired-lan] [PATCH net-next v3 1/7] ndo_fdb_add: Add a
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
index 3ec77a67aad2..7b6baa63b6b1 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -1244,7 +1244,7 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
 static int vxlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 			 struct net_device *dev,
 			 const unsigned char *addr, u16 vid, u16 flags,
-			 struct netlink_ext_ack *extack)
+			 bool *notified, struct netlink_ext_ack *extack)
 {
 	struct vxlan_dev *vxlan = netdev_priv(dev);
 	/* struct net *net = dev_net(vxlan->dev); */
@@ -1280,6 +1280,9 @@ static int vxlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 			       nhid, true, extack);
 	spin_unlock_bh(&vxlan->hash_lock[hash_index]);
 
+	if (!err)
+		*notified = true;
+
 	return err;
 }
 
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index df4483598628..cc5f5cca4ef1 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1246,8 +1246,10 @@ struct netdev_net_notifier {
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
@@ -1523,6 +1525,7 @@ struct net_device_ops {
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
index 3b33810d92a8..09d5085d4f7f 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -4465,9 +4465,10 @@ static int rtnl_fdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
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
@@ -4476,16 +4477,18 @@ static int rtnl_fdb_add(struct sk_buff *skb, struct nlmsghdr *nlh,
 
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

