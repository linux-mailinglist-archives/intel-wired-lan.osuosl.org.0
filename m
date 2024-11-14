Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 506179C8C92
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 15:12:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A15384445;
	Thu, 14 Nov 2024 14:12:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fYDFJSDnv4NS; Thu, 14 Nov 2024 14:12:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6315D84436
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731593552;
	bh=NwY7H7wbLDRBQoPdoxvLNc4yqPbJeK2DnAdyRGvD5fc=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zNJUhtxTEfSrLK4eCk7vYQIFO61kM8/1ORuhImKfVShDdt57Hmdswd1Dni34KSCXi
	 BhbrgXd/fIRaYykt7QknkK04JDMzOhxeZILnLDUC6jLoVHeLTRftzi1EmPAKXSGd4Q
	 84U7pKOxH+EYmaFI+JSnTUynhk6etQMIoo0/tqx+c5npDxS9HQeVF6cQTPO9vEwSGM
	 mBu2rVcKoPtrlqZJjqCdiAvmbk7gmwhds3ieWp3EpmWZdDOUkXWT9I/atqb+y+xF3o
	 LM3Z83t1GEuFbmKx2AUebTXZqTfkZPcyvTkFMsoaXAHTnz/TKCji61/mUACcIaJ6Qx
	 PLof959825BGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6315D84436;
	Thu, 14 Nov 2024 14:12:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 15EF5972
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 14:12:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 03BE460A6C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 14:12:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tJvRn2-gmbHz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 14:12:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.223.57;
 helo=nam11-dm6-obe.outbound.protection.outlook.com;
 envelope-from=petrm@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C5BAC60733
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5BAC60733
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2057.outbound.protection.outlook.com [40.107.223.57])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C5BAC60733
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 14:12:28 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uHfld3ZvofgjLpAF0u+F5pLtvbw+5J8W+S7gQSrP0jX7rTtNfDOhHf1I2O22tTHK+WO7cBdsDudZDRjdgtzNQ87z7+mi4r0GPnSchd330hJbPQTGGt1AD1nKnwk7YHawQp/qtxkco40Zzax9dKxeV3r+Wxem4hrHIhAMfaRKux+HhJjeiP2KYvXIfKzZV0FjgwyGEK8YGUlBVaC64vmLORynT9+vfbC/PYIqsppUBgeBmmmX0ahOA3PdbDJsu6mFyFit78bgddaVGR0bu689NKTh31dj0sk2tTxQcz0QWHY1DxGhvNBawQcFdlJZ5lkNb/OfuxXV8FtxLJOUpAerMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NwY7H7wbLDRBQoPdoxvLNc4yqPbJeK2DnAdyRGvD5fc=;
 b=gHISWa2ptEHkJRXFlviAlDcXOvWVZ5CErHnNGclPXLu1BDymLe3Lo39z8wPghCRX+rZhk047frLhZR9YL3vK1g4ESf024votbNWlnzNKxQ2jLB+7NQ1vob4+l2zEDUeFVRk9caaezDN9gMDFCP2qohVsSANWj7giavS+75+HJl6b1c824FicnK7xL/Dc7osCSqcOUrrpKjbgtb1mMnEZTrUBGJieorfxQ+r4NE9J9ozBZloeufq2mQcntDoF2ztHMyJrSfIyiIl2kJsZH3msDuyFwuvJr6iOQWV3egP/AMgdR9AI2umRM/lVEpna6Wb8++gxH8G4+MLSp0H3qD8uyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
Received: from CH5P222CA0009.NAMP222.PROD.OUTLOOK.COM (2603:10b6:610:1ee::25)
 by CH2PR12MB4037.namprd12.prod.outlook.com (2603:10b6:610:7a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.18; Thu, 14 Nov
 2024 14:12:21 +0000
Received: from DS3PEPF000099D6.namprd04.prod.outlook.com
 (2603:10b6:610:1ee:cafe::49) by CH5P222CA0009.outlook.office365.com
 (2603:10b6:610:1ee::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.17 via Frontend
 Transport; Thu, 14 Nov 2024 14:12:21 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 DS3PEPF000099D6.mail.protection.outlook.com (10.167.17.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8158.14 via Frontend Transport; Thu, 14 Nov 2024 14:12:20 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Thu, 14 Nov
 2024 06:12:07 -0800
Received: from fedora.mtl.com (10.126.231.35) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Thu, 14 Nov
 2024 06:11:58 -0800
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
Date: Thu, 14 Nov 2024 15:09:54 +0100
Message-ID: <06b1acf4953ef0a5ed153ef1f32d7292044f2be6.1731589511.git.petrm@nvidia.com>
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
X-MS-TrafficTypeDiagnostic: DS3PEPF000099D6:EE_|CH2PR12MB4037:EE_
X-MS-Office365-Filtering-Correlation-Id: ee566b62-3097-42ce-c485-08dd04b65ad5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|82310400026|36860700013|7416014|376014; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?01pKrL+gDD6iq2BwrVYT0V499t5F0Wx3XrzoH8tJpRzwL7o+wUczF0DRO4MR?=
 =?us-ascii?Q?Xpo4Fs+P0lIs8fYm4vhDXvd/jux++GYP6DylVa0zAQw/+/fpaajdaRIdkJIe?=
 =?us-ascii?Q?6ahVeu9jrltN//0HSf5yBKw1A5Ww6Qr+nylgN77cZQNVDpLcaig+Vr/Tfr6q?=
 =?us-ascii?Q?LolDoYtsJY5H9Iw1dBlAKPFUxVewzk0/1vpY187hkxoXcBc2hkCjCelETmYH?=
 =?us-ascii?Q?pr7CMlZGazKx7ffRyUlyic/bCaPI+w1tBtlq+bXO4BhDHbDvdv67CPzz1RdM?=
 =?us-ascii?Q?qlFK9JTBzTwZXzN8QvaJ1gajaZUtzEhUWfwR8JDVYV4L2crVddQDvTYWX452?=
 =?us-ascii?Q?1nEwcIA7VVjBeom3psnPMHJV0sdmSf6WrWXW+SFfcOm6AS5eecCUNY5yxa9G?=
 =?us-ascii?Q?f0NusZHFCilf6sIHGlFGBoX5in1SA2ucwnHuijdz06bc8JZcVKu+aG4c8ZsT?=
 =?us-ascii?Q?Rmu/7klZz+Klm36ir9+Wd6QrCi/1NvoHYad1GSdEh27HxfVKKVOqxCMdrDYH?=
 =?us-ascii?Q?QVi8yDczwenidBHZrAKR41Kp3EA7W3voyhVl5WP4kDeQUS0E1SXxDupz8dso?=
 =?us-ascii?Q?iB5JmfhBrlgmgIjHYW5JDdBVxy/u9cMxDcPiy9/f8l+c/I2+ghm7lb1R4FIA?=
 =?us-ascii?Q?+bEm5aTmCMKQnsOhwGPsfgFOu48fxzdumYcXLPxsB4iQMxA3BfaufT7B6Fb6?=
 =?us-ascii?Q?XnCx/vyFewnitl8XaMWxXQ5vbpDtW53qcbQUZjmQxViBrrEBGDof3d5iF1xE?=
 =?us-ascii?Q?yczhk2CGTwmQ+zbd8INoIDcagTa0bD6qZWdR3vYvn+0yyePmRYIrINRxtEwb?=
 =?us-ascii?Q?V01l6kR35BW9xA9/OtuhrhbaArUko5SjsOc5cdnVQ7l8d6pNuzRFCcizt1kz?=
 =?us-ascii?Q?wumUIvfXE/M8YC6xx0294uBkJ4Drxq7hfJWHXb049AAlswZsAqvWUloZLxoO?=
 =?us-ascii?Q?igzvvEFMldpf67W0OaejpUF9Br5Q0S9ca27nOg/Emjlr1OGQaR3lDsDjB/aM?=
 =?us-ascii?Q?mYJJF4ISQn3Tzatw/lAW1ybAmBhZomPzRySOuzABDexFV7cmoIT+gIMKoVBv?=
 =?us-ascii?Q?NkG7nNqvnQkhMY+Uzd32Iyegd+96dPz2Jr5C+WswSgL3NSFAJkP4225S3MhY?=
 =?us-ascii?Q?IBk4DEMp9+j8AzZHsFDzxG8GDOoAcxW2yiAlntVZwV4DnP6YxM1mklng9MVO?=
 =?us-ascii?Q?f/Q/YUkWdgpaifD/roe6Vt6ro2MRmQfd2G04nynG4Zo34npVPJA/tOLpJydl?=
 =?us-ascii?Q?oYOeQ552TDLP8rxW2RvK/zSVMpeiKuu3yLTwtLKpPRSm0ez70cQ0/ITz2DM8?=
 =?us-ascii?Q?qcZ0iPGzz+fS8O8JJ0gSK5U4Llgl8vHI3bfGxb/AReFW2nHjzIkaaP1ZIf1j?=
 =?us-ascii?Q?MAONphQ9/Rgwx8r6y6qLDRnFBCM4FGzeB/Lq+akT4kNBnNGS9Q=3D=3D?=
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230040)(1800799024)(82310400026)(36860700013)(7416014)(376014); DIR:OUT;
 SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2024 14:12:20.9590 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ee566b62-3097-42ce-c485-08dd04b65ad5
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DS3PEPF000099D6.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4037
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NwY7H7wbLDRBQoPdoxvLNc4yqPbJeK2DnAdyRGvD5fc=;
 b=speYvi+esYcu/grUl0Qi9NSAD7mjijECYzNSs99bXYAzRSi5d7yqjf5B68LkZ76noz5HKBYIZKX5kJF49NO4BvgHN0Zvbv2aqTc2bhlQFPVD78V6sCmqbWO0rDVrCSErg2lRa1jD4mwVeILXvJ2nvWJeIEyJ4fQUQKF75LJT+IMaigh2j3I4K5rO6gLa52mjHxVNkiTTWnJILyF5aGea92hoivMjf05+8GPg3Lf/vLb4oQgiQNQl2Pbj2WWauKlIAxzWNUjbppVhkQbxSVvPky4ivdkb+OOaHD+Ke+bG+15//pWy9V54NYBcIkeE/bT9M9lpd+o2YZ3Hp+zOrAVF9Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=speYvi+e
Subject: [Intel-wired-lan] [PATCH net-next v4 2/7] ndo_fdb_del: Add a
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

In a similar fashion to ndo_fdb_add, which was covered in the previous
patch, add the bool *notified argument to ndo_fdb_del. Callees that send a
notification on their own set the flag to true.

Signed-off-by: Petr Machata <petrm@nvidia.com>
Reviewed-by: Amit Cohen <amcohen@nvidia.com>
Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>
---

Notes:
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>
CC: intel-wired-lan@lists.osuosl.org
CC: UNGLinuxDriver@microchip.com
CC: Manish Chopra <manishc@marvell.com>
CC: GR-Linux-NIC-Dev@marvell.com
CC: Kuniyuki Iwashima <kuniyu@amazon.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>
CC: Nikolay Aleksandrov <razor@blackwall.org>
CC: bridge@lists.linux.dev

 drivers/net/ethernet/intel/ice/ice_main.c        |  4 +++-
 drivers/net/ethernet/mscc/ocelot_net.c           |  2 +-
 drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c |  2 +-
 drivers/net/macvlan.c                            |  2 +-
 drivers/net/vxlan/vxlan_core.c                   |  5 ++++-
 include/linux/netdevice.h                        |  9 +++++++--
 net/bridge/br_fdb.c                              | 15 ++++++++-------
 net/bridge/br_private.h                          |  2 +-
 net/core/rtnetlink.c                             | 11 ++++++++---
 9 files changed, 34 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c875036f654b..b79848fe2a9e 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6166,12 +6166,14 @@ ice_fdb_add(struct ndmsg *ndm, struct nlattr __always_unused *tb[],
  * @dev: the net device pointer
  * @addr: the MAC address entry being added
  * @vid: VLAN ID
+ * @notified: whether notification was emitted
  * @extack: netlink extended ack
  */
 static int
 ice_fdb_del(struct ndmsg *ndm, __always_unused struct nlattr *tb[],
 	    struct net_device *dev, const unsigned char *addr,
-	    __always_unused u16 vid, struct netlink_ext_ack *extack)
+	    __always_unused u16 vid, bool *notified,
+	    struct netlink_ext_ack *extack)
 {
 	int err;
 
diff --git a/drivers/net/ethernet/mscc/ocelot_net.c b/drivers/net/ethernet/mscc/ocelot_net.c
index 4f15ba2c5525..558e03301aa8 100644
--- a/drivers/net/ethernet/mscc/ocelot_net.c
+++ b/drivers/net/ethernet/mscc/ocelot_net.c
@@ -744,7 +744,7 @@ static int ocelot_port_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 static int ocelot_port_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
 			       struct net_device *dev,
 			       const unsigned char *addr, u16 vid,
-			       struct netlink_ext_ack *extack)
+			       bool *notified, struct netlink_ext_ack *extack)
 {
 	struct ocelot_port_private *priv = netdev_priv(dev);
 	struct ocelot_port *ocelot_port = &priv->port;
diff --git a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
index 2484cebd97d4..eb69121df726 100644
--- a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
+++ b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
@@ -367,7 +367,7 @@ static int qlcnic_set_mac(struct net_device *netdev, void *p)
 
 static int qlcnic_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
 			struct net_device *netdev,
-			const unsigned char *addr, u16 vid,
+			const unsigned char *addr, u16 vid, bool *notified,
 			struct netlink_ext_ack *extack)
 {
 	struct qlcnic_adapter *adapter = netdev_priv(netdev);
diff --git a/drivers/net/macvlan.c b/drivers/net/macvlan.c
index dfb462e63248..fed4fe2a4748 100644
--- a/drivers/net/macvlan.c
+++ b/drivers/net/macvlan.c
@@ -1049,7 +1049,7 @@ static int macvlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 
 static int macvlan_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
 			   struct net_device *dev,
-			   const unsigned char *addr, u16 vid,
+			   const unsigned char *addr, u16 vid, bool *notified,
 			   struct netlink_ext_ack *extack)
 {
 	struct macvlan_dev *vlan = netdev_priv(dev);
diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
index 09c1d27e11d3..edef32a593c3 100644
--- a/drivers/net/vxlan/vxlan_core.c
+++ b/drivers/net/vxlan/vxlan_core.c
@@ -1319,7 +1319,7 @@ int __vxlan_fdb_delete(struct vxlan_dev *vxlan,
 /* Delete entry (via netlink) */
 static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
 			    struct net_device *dev,
-			    const unsigned char *addr, u16 vid,
+			    const unsigned char *addr, u16 vid, bool *notified,
 			    struct netlink_ext_ack *extack)
 {
 	struct vxlan_dev *vxlan = netdev_priv(dev);
@@ -1341,6 +1341,9 @@ static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
 				 true);
 	spin_unlock_bh(&vxlan->hash_lock[hash_index]);
 
+	if (!err)
+		*notified = true;
+
 	return err;
 }
 
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 6a7fd191e1ee..ecc686409161 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1254,8 +1254,11 @@ struct netdev_net_notifier {
  *	notification(s). Otherwise core will send a generic one.
  * int (*ndo_fdb_del)(struct ndmsg *ndm, struct nlattr *tb[],
  *		      struct net_device *dev,
- *		      const unsigned char *addr, u16 vid)
+ *		      const unsigned char *addr, u16 vid
+ *		      bool *notified, struct netlink_ext_ack *extack);
  *	Deletes the FDB entry from dev corresponding to addr.
+ *	Callee shall set *notified to true if it sent any appropriate
+ *	notification(s). Otherwise core will send a generic one.
  * int (*ndo_fdb_del_bulk)(struct nlmsghdr *nlh, struct net_device *dev,
  *			   struct netlink_ext_ack *extack);
  * int (*ndo_fdb_dump)(struct sk_buff *skb, struct netlink_callback *cb,
@@ -1533,7 +1536,9 @@ struct net_device_ops {
 					       struct nlattr *tb[],
 					       struct net_device *dev,
 					       const unsigned char *addr,
-					       u16 vid, struct netlink_ext_ack *extack);
+					       u16 vid,
+					       bool *notified,
+					       struct netlink_ext_ack *extack);
 	int			(*ndo_fdb_del_bulk)(struct nlmsghdr *nlh,
 						    struct net_device *dev,
 						    struct netlink_ext_ack *extack);
diff --git a/net/bridge/br_fdb.c b/net/bridge/br_fdb.c
index 5f29958f3ddd..82bac2426631 100644
--- a/net/bridge/br_fdb.c
+++ b/net/bridge/br_fdb.c
@@ -1287,7 +1287,7 @@ int br_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
 
 static int fdb_delete_by_addr_and_port(struct net_bridge *br,
 				       const struct net_bridge_port *p,
-				       const u8 *addr, u16 vlan)
+				       const u8 *addr, u16 vlan, bool *notified)
 {
 	struct net_bridge_fdb_entry *fdb;
 
@@ -1296,18 +1296,19 @@ static int fdb_delete_by_addr_and_port(struct net_bridge *br,
 		return -ENOENT;
 
 	fdb_delete(br, fdb, true);
+	*notified = true;
 
 	return 0;
 }
 
 static int __br_fdb_delete(struct net_bridge *br,
 			   const struct net_bridge_port *p,
-			   const unsigned char *addr, u16 vid)
+			   const unsigned char *addr, u16 vid, bool *notified)
 {
 	int err;
 
 	spin_lock_bh(&br->hash_lock);
-	err = fdb_delete_by_addr_and_port(br, p, addr, vid);
+	err = fdb_delete_by_addr_and_port(br, p, addr, vid, notified);
 	spin_unlock_bh(&br->hash_lock);
 
 	return err;
@@ -1316,7 +1317,7 @@ static int __br_fdb_delete(struct net_bridge *br,
 /* Remove neighbor entry with RTM_DELNEIGH */
 int br_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
 		  struct net_device *dev,
-		  const unsigned char *addr, u16 vid,
+		  const unsigned char *addr, u16 vid, bool *notified,
 		  struct netlink_ext_ack *extack)
 {
 	struct net_bridge_vlan_group *vg;
@@ -1339,19 +1340,19 @@ int br_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
 	}
 
 	if (vid) {
-		err = __br_fdb_delete(br, p, addr, vid);
+		err = __br_fdb_delete(br, p, addr, vid, notified);
 	} else {
 		struct net_bridge_vlan *v;
 
 		err = -ENOENT;
-		err &= __br_fdb_delete(br, p, addr, 0);
+		err &= __br_fdb_delete(br, p, addr, 0, notified);
 		if (!vg || !vg->num_vlans)
 			return err;
 
 		list_for_each_entry(v, &vg->vlan_list, vlist) {
 			if (!br_vlan_should_use(v))
 				continue;
-			err &= __br_fdb_delete(br, p, addr, v->vid);
+			err &= __br_fdb_delete(br, p, addr, v->vid, notified);
 		}
 	}
 
diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
index ebfc59049ec1..9853cfbb9d14 100644
--- a/net/bridge/br_private.h
+++ b/net/bridge/br_private.h
@@ -853,7 +853,7 @@ void br_fdb_update(struct net_bridge *br, struct net_bridge_port *source,
 
 int br_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
 		  struct net_device *dev, const unsigned char *addr, u16 vid,
-		  struct netlink_ext_ack *extack);
+		  bool *notified, struct netlink_ext_ack *extack);
 int br_fdb_delete_bulk(struct nlmsghdr *nlh, struct net_device *dev,
 		       struct netlink_ext_ack *extack);
 int br_fdb_add(struct ndmsg *nlh, struct nlattr *tb[], struct net_device *dev,
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index f31b2436cde5..dd142f444659 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -4701,11 +4701,13 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 	if ((!ndm->ndm_flags || ndm->ndm_flags & NTF_MASTER) &&
 	    netif_is_bridge_port(dev)) {
 		struct net_device *br_dev = netdev_master_upper_dev_get(dev);
+		bool notified = false;
 
 		ops = br_dev->netdev_ops;
 		if (!del_bulk) {
 			if (ops->ndo_fdb_del)
-				err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid, extack);
+				err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid,
+						       &notified, extack);
 		} else {
 			if (ops->ndo_fdb_del_bulk)
 				err = ops->ndo_fdb_del_bulk(nlh, dev, extack);
@@ -4719,10 +4721,13 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 
 	/* Embedded bridge, macvlan, and any other device support */
 	if (ndm->ndm_flags & NTF_SELF) {
+		bool notified = false;
+
 		ops = dev->netdev_ops;
 		if (!del_bulk) {
 			if (ops->ndo_fdb_del)
-				err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid, extack);
+				err = ops->ndo_fdb_del(ndm, tb, dev, addr, vid,
+						       &notified, extack);
 			else
 				err = ndo_dflt_fdb_del(ndm, tb, dev, addr, vid);
 		} else {
@@ -4733,7 +4738,7 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 		}
 
 		if (!err) {
-			if (!del_bulk)
+			if (!del_bulk && !notified)
 				rtnl_fdb_notify(dev, addr, vid, RTM_DELNEIGH,
 						ndm->ndm_state);
 			ndm->ndm_flags &= ~NTF_SELF;
-- 
2.45.0

