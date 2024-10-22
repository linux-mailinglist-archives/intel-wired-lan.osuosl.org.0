Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD319AB16E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 16:51:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4C9580E14;
	Tue, 22 Oct 2024 14:51:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tAvU5pC-ZPhz; Tue, 22 Oct 2024 14:51:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA80480EED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729608707;
	bh=ElBbeDLjGvvhhGtFi7QFhFFKumOUKQyBPgMhgBNvCcQ=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6UVrlc6EfAmjBhqL74O3vJHp6hS1OHmJ0wZGCjWX75uDLAVyb+a/EdUo1p+1upP+m
	 UaQG429hoklwtrZTFuGukbQ6kVpE5C+kQS1O7do2yT6pWGNDKypQKdwXZwCk6ctfjd
	 SH54DKCYHM+8KwPlwlgUa/Ql/NpmB3/+J6OP4s3VcBD+marg9VfnUTnQhMrG6YcGGU
	 ssQZMHALyAUAofypOR+ndEFQAZXSCNzue5mViABSEdnt/eFSYkvcxRtBf6XQlSiahG
	 n/4r6K4lbf4Rsokgp2ssOx6CQoOCrkWdy1SJsB5D7JuTp6HMjItjPekUJy9hus3ufa
	 C/gRjhhojFqXA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA80480EED;
	Tue, 22 Oct 2024 14:51:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E9D8F71F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 14:51:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C900D403C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 14:51:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MkwBzTCPYFVK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 14:51:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.223.44;
 helo=nam11-dm6-obe.outbound.protection.outlook.com;
 envelope-from=petrm@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8DC67403A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8DC67403A5
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2044.outbound.protection.outlook.com [40.107.223.44])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8DC67403A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 14:51:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lkVzAjcYGsaZcEoqyTUrlmeTFLclyV4Da165iUsWapYZ/hrwMjGVjHmVJdylGsLIQAIzKUvVZ5KRw4YyTdHHbmXfVvS/I2onieagF1OB6FR7eLnL0F0SIy2XHxdZ2Btfkte0c+pb6+0oMyHECOjAvDdwWwAZZh8UZDd85UVYPvzLkIkJP8yChvK4p7DJDrevRIpdMBhKAmBJEYngJj9r0AjJo2reffaAxs49eRS5nHnyjT8l9bE5C2D9HKJ9WYiH329asGQdoOHLK3DvoT9irZEJhZGMcvd+HjA3Pp72XUzBZnY3etz344ai3Qd6s670KhBUZqXKFq37SqpDsw7gsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ElBbeDLjGvvhhGtFi7QFhFFKumOUKQyBPgMhgBNvCcQ=;
 b=eJrgANxZ6kYhHUKdTNsATX2e5QvY/PlkkKtKLDYjCcdUJQQnYaxvm4TpHOypd+DqJarKCdo0BAUdj+QGE+X7lRQ+RGfZA/aUfcd7vTQnRwTOWJtv9eZtSzzAMk0HVYPJsI2vOzZF3R/fUxLFyzMzaP1zqu73gX3qQjb5CWbEsy9yYi3ZYU3RlCCPdXY9m1fk7vd2OQHVHVdYK44olDPEwN1ycakkizxd8GivL00w969dA6302dkaT7PKQTJ2XyeYwoKYQOUKLhoVKMSnrTgGqz1hH0mjqT8djZa7AeALketXttKu00Pwkg3b2cos7XDD9c5q4wkrxVIsbYwz8bbhQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
Received: from SJ0PR13CA0061.namprd13.prod.outlook.com (2603:10b6:a03:2c4::6)
 by CH3PR12MB9145.namprd12.prod.outlook.com (2603:10b6:610:19b::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Tue, 22 Oct
 2024 14:51:36 +0000
Received: from SJ1PEPF000023D6.namprd21.prod.outlook.com
 (2603:10b6:a03:2c4:cafe::f4) by SJ0PR13CA0061.outlook.office365.com
 (2603:10b6:a03:2c4::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.17 via Frontend
 Transport; Tue, 22 Oct 2024 14:51:36 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 SJ1PEPF000023D6.mail.protection.outlook.com (10.167.244.71) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8114.2 via Frontend Transport; Tue, 22 Oct 2024 14:51:35 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Tue, 22 Oct
 2024 07:51:20 -0700
Received: from fedora.mtl.com (10.126.231.35) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Tue, 22 Oct
 2024 07:51:13 -0700
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
Date: Tue, 22 Oct 2024 16:50:14 +0200
Message-ID: <afd2f3b10b077fcf024753eba56580dd086c8548.1729607879.git.petrm@nvidia.com>
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
X-MS-TrafficTypeDiagnostic: SJ1PEPF000023D6:EE_|CH3PR12MB9145:EE_
X-MS-Office365-Filtering-Correlation-Id: 039fb121-1ec3-447e-68d0-08dcf2a906ff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|36860700013|7416014|376014|1800799024|82310400026; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?EH2IIalf/FoJytTyt0sQvtGrSbJkCObMmh+Lh7U2Yh7xJuq5V6Lr1NO5vnBG?=
 =?us-ascii?Q?Lfi9JxMhzNVBrpDdGwtO+RyWRow+yis1HW/84kYC/NEZ2dRymvMOVKOg2xcj?=
 =?us-ascii?Q?nhPAxbh4mNvTht1T8OaAOLqAyMVozXvIUxiY8o/0HV4cu9yILih5RAEqbRKT?=
 =?us-ascii?Q?x+wqm0BIgliCdrxnh7/R+vgDoLacpp+6NwpgSTI22I79b8xvFW9X3JBKtU8t?=
 =?us-ascii?Q?oNkeeM9HIIrd4+Xo3EXKnEfuSmtNXxFkoMnAbmpj0/KJGWrltFZf2NdRq3fA?=
 =?us-ascii?Q?ekxdFDIWF3J+ui1e8RRaL4fBz9raQTUVDPArXzV/2Yh08HXrbGpUX2Aszj4U?=
 =?us-ascii?Q?pQbV9DS14u5B4irbrMfFgsFugFpPZs0ihziUMmYbogfOgHNm0J5qde54gqdl?=
 =?us-ascii?Q?eLUvmh4nD+ePDGEKhrAXaDoNXnXYmNJx61669qwUpq83QQmOu/4nwP73tWP8?=
 =?us-ascii?Q?pNH2RhcsCzboF/4wMCPETujVLdPhtZ3HaTbtwfbgbM28W4LxXkCDoKzwHsZv?=
 =?us-ascii?Q?KB5knQkTsr7KRa1yZtdlYfXJK3HqOCrqLDp3tgSQm6/dAEkWYowikwKkkip4?=
 =?us-ascii?Q?PFlbI8/8fa2NLY80rGvVljFNnC6WyFJuXNicXjMUICMwSPm620e305lCocFV?=
 =?us-ascii?Q?EBZ/1Om8OZYTzKAZ9ngBsiOpVKvJSBr6h6FqIKAJA8cwXlQC85NMSTEplVE6?=
 =?us-ascii?Q?IWCLSEV7BuHdT/ZOm3rfUBh3oo0/Hw3WA31DAD1BWwnh9tflfVq3/qUZOORe?=
 =?us-ascii?Q?qTsRyu2OZu470jtBvvZe30PrTIhcZIHWU5Qgz/LGG9QW3OThB1eza0lO5nLW?=
 =?us-ascii?Q?A9/bMg+nI963asOOiZteC+CzHKhd482mOi/1W8VGexsBtEIeo+sSlP83I4at?=
 =?us-ascii?Q?pcDah4/uLhj+32+tUCCHOi9QWNWBS38rsNFi1bXX9RPnajkiHXoEIavSn1Xp?=
 =?us-ascii?Q?BB8lGBAiEDqu/F1EMa42WQTducqrvISDyBmRPC0KvzSfRn6ag+EmpUHe/s7o?=
 =?us-ascii?Q?0jAK3InMmwZUH0ff19OQh28ikWmpxgI1hDxk8zBF4HhC8k3KnGE0n57krBHj?=
 =?us-ascii?Q?+pFmuoGI9x5JKzzEyK0H5bHbAF82Z1FSrrHPCUYvH7gy3xfQRApyt1Tq93v3?=
 =?us-ascii?Q?Soehlolr8HN+19o0tGy/1XE9M5SBn+c3J/sllcq0TNore6hAWjPqmogB/XRj?=
 =?us-ascii?Q?UfdJXNEm+mFCApc0dxUlqtZj8bOtfdZO1lDPLndOVB5kJ7eR7JRBSehnC2N6?=
 =?us-ascii?Q?D3sMKHgxQv/l9abTJ0Ew/OTipUCH9wV5btbIBKoed8ms7m7qwU93H+C6TDat?=
 =?us-ascii?Q?yfRpWNo0zo6FRViK4au5xcA5rtKNN6Whwu/jrk51DmaFu8t9rPg79B9DZFGf?=
 =?us-ascii?Q?uSXIGkTroGEXzXbl73VUgk+PSkKfB4eohm+8mUA55vkZQhNGjA=3D=3D?=
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230040)(36860700013)(7416014)(376014)(1800799024)(82310400026); DIR:OUT;
 SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 14:51:35.9315 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 039fb121-1ec3-447e-68d0-08dcf2a906ff
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: SJ1PEPF000023D6.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB9145
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ElBbeDLjGvvhhGtFi7QFhFFKumOUKQyBPgMhgBNvCcQ=;
 b=IZHvuuFVzFa7QTS3/Bxbn+FwqxfIrmKMI26525nRyduV9ap+wiSwsB5uLYiuXgQMH0F82guxJ4phNVZ26dO4fGD4W/WtglF9hMo5kDhCRuCK5QhXzWvpvmbrFT8jv96QpG5o7nf7vuWTh7df5I4W1OSJJPeD6nHDZo/7z01/9mvNwvX3eJyajNfcEHtgrKa9kp24Wv4o7DOy61TwFepaguLpacc7yFkGG8bylsolTgQVYpWznJwMLWGqutjJ+TJtHZd7MK8DDeWXiDytbP+uRsOp6TFePm7hpc8zZlx5jrwxHCrURgEapE8ehbbPj1akN4iHx+lfe6+Ni8YCcFv61Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=IZHvuuFV
Subject: [Intel-wired-lan] [PATCH net-next 3/8] ndo_fdb_del: Shift
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

As described in the previous patch, the drivers that provide their own
fdb_add and fdb_del callbacks should from now on be responsible for sending
the notification themselves. In this patch, implement the fdb_del leg of
the change.

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
 drivers/net/ethernet/intel/ice/ice_main.c        | 3 +++
 drivers/net/ethernet/mscc/ocelot_net.c           | 8 +++++++-
 drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c | 4 ++++
 drivers/net/macvlan.c                            | 3 +++
 include/linux/netdevice.h                        | 2 ++
 net/core/rtnetlink.c                             | 9 ++++-----
 6 files changed, 23 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a3398814a1cb..65f9dcf4745b 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6188,6 +6188,9 @@ ice_fdb_del(struct ndmsg *ndm, __always_unused struct nlattr *tb[],
 	else
 		err = -EINVAL;
 
+	if (!err)
+		rtnl_fdb_notify(dev, addr, vid, RTM_DELNEIGH, ndm->ndm_state);
+
 	return err;
 }
 
diff --git a/drivers/net/ethernet/mscc/ocelot_net.c b/drivers/net/ethernet/mscc/ocelot_net.c
index cf972444e254..12958d985fd7 100644
--- a/drivers/net/ethernet/mscc/ocelot_net.c
+++ b/drivers/net/ethernet/mscc/ocelot_net.c
@@ -756,8 +756,14 @@ static int ocelot_port_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
 	struct ocelot_port *ocelot_port = &priv->port;
 	struct ocelot *ocelot = ocelot_port->ocelot;
 	int port = priv->port.index;
+	int err;
 
-	return ocelot_fdb_del(ocelot, port, addr, vid, ocelot_port->bridge);
+	err = ocelot_fdb_del(ocelot, port, addr, vid, ocelot_port->bridge);
+
+	if (!err)
+		rtnl_fdb_notify(dev, addr, vid, RTM_DELNEIGH, ndm->ndm_state);
+
+	return err;
 }
 
 static int ocelot_port_fdb_do_dump(const unsigned char *addr, u16 vid,
diff --git a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
index 1de0290e15e0..db847aed5222 100644
--- a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
+++ b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_main.c
@@ -388,6 +388,10 @@ static int qlcnic_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
 			err =  -EINVAL;
 		}
 	}
+
+	if (!err)
+		rtnl_fdb_notify(dev, addr, vid, RTM_DELNEIGH, ndm->ndm_state);
+
 	return err;
 }
 
diff --git a/drivers/net/macvlan.c b/drivers/net/macvlan.c
index b1e828581ec4..2c61b7b83875 100644
--- a/drivers/net/macvlan.c
+++ b/drivers/net/macvlan.c
@@ -1069,6 +1069,9 @@ static int macvlan_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
 	else if (is_multicast_ether_addr(addr))
 		err = dev_mc_del(dev, addr);
 
+	if (!err)
+		rtnl_fdb_notify(dev, addr, vid, RTM_DELNEIGH, ndm->ndm_state);
+
 	return err;
 }
 
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 9f7de8d0414a..9e1ffb21de18 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1254,6 +1254,8 @@ struct netdev_net_notifier {
  *		      struct net_device *dev,
  *		      const unsigned char *addr, u16 vid)
  *	Deletes the FDB entry from dev corresponding to addr.
+ *	Callee is responsible for sending appropriate notification, as with
+ *	ndo_fdb_add().
  * int (*ndo_fdb_del_bulk)(struct nlmsghdr *nlh, struct net_device *dev,
  *			   struct netlink_ext_ack *extack);
  * int (*ndo_fdb_dump)(struct sk_buff *skb, struct netlink_callback *cb,
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index a9f56a50fa57..4788bfc58aa2 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -4506,6 +4506,9 @@ int ndo_dflt_fdb_del(struct ndmsg *ndm,
 	else if (is_multicast_ether_addr(addr))
 		err = dev_mc_del(dev, addr);
 
+	if (!err)
+		rtnl_fdb_notify(dev, addr, vid, RTM_DELNEIGH, ndm->ndm_state);
+
 	return err;
 }
 EXPORT_SYMBOL(ndo_dflt_fdb_del);
@@ -4604,12 +4607,8 @@ static int rtnl_fdb_del(struct sk_buff *skb, struct nlmsghdr *nlh,
 				err = ops->ndo_fdb_del_bulk(nlh, dev, extack);
 		}
 
-		if (!err) {
-			if (!del_bulk)
-				rtnl_fdb_notify(dev, addr, vid, RTM_DELNEIGH,
-						ndm->ndm_state);
+		if (!err)
 			ndm->ndm_flags &= ~NTF_SELF;
-		}
 	}
 out:
 	return err;
-- 
2.45.0

