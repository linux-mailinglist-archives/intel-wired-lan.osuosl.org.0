Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D027D9AECCF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Oct 2024 18:58:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B9BA813EA;
	Thu, 24 Oct 2024 16:58:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B-W6A9d33BOi; Thu, 24 Oct 2024 16:58:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72694813F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729789108;
	bh=ji37eBUP6AOL/3De1mGYqKkdbcPdB752V6giI2c0vas=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VfYuhPDZISdZi4MTi0l5jVYzhZ+S9eg2Er/eUiIGASL8duZn/jO5Qo5KGYCLJmsOt
	 Y1xVvonRXpNu/Kwp5Ykb0+wiAMwrvq9gSdCJun/Lkh+TRNozR5ekRw4NM7aKJx23pg
	 ZvHv2/mToV3a9kAspqAmRKhqvGCqvp+gLAAtMbpsgkrJcabt0Tn58cKW8nzx4XCTQb
	 Qhz22WKde9CqQfoJlKQeCPYWNALz9lCoXWDkE4WoHjN84dZXhFmyLu1hl+iZ5+p3Cj
	 PhZBk12CRQNzMlZl7tfYAKFC6wbUBm0ZIt2a6omyMsLwqXP6z/do7+y8sh7eyRUD48
	 o+X5fqbfEwvUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72694813F1;
	Thu, 24 Oct 2024 16:58:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 345834960
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 16:58:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 22522607E4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 16:58:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fMSvz5xdZ46Y for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Oct 2024 16:58:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.102.88;
 helo=nam04-dm6-obe.outbound.protection.outlook.com;
 envelope-from=petrm@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3D904606B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D904606B1
Received: from NAM04-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam04on2088.outbound.protection.outlook.com [40.107.102.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3D904606B1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 16:58:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HkCjZ8SBdnElbvZDN9OQyx9DbotM3YkcB7OMABew7cfB7T+xX4W6jjGgdBnkHnN7BazSn/ek/X5KKPsnfaz9MLICgHb3xhp/I5TWuzfDBh4GpK2he4e1036PyTUz73Y5Qe18ptvObtnMcR5aU6CEZDrDI0RSzFRcs+Z7L4HiWhMDedcETYqxcaBZio8d6GKSlrbNM26Rhvn3O7hrONMo8OXOrcPacW6YGOFkrgEJc+RJimbmBkuU5H3Dzz4LJAKM7QSeOqVxAdyt2aJH5Vt0mMGiLXL/ADMV3bPLtiDT2/3ImjJiOFvFueTOX0mKJJ7dOr0OWGWZ12+KIUAc1pl0NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ji37eBUP6AOL/3De1mGYqKkdbcPdB752V6giI2c0vas=;
 b=oVIlIvP53qsPnbeMO6PSfDAzRRGcbEo5WK1b1Y0c20k0a1wHqD9OmyIDn9EgR6iIEwTG09PUY4rAcUB7lx4xlgvOyfZvzLID1km0IvaIeKxwyHoeg+7FhwWvGbBS6vLsAxq29qEjaAv3O7OE8zcsq0WYGqcc++7ebCIq6Gt0UFnk9TX/bIgqoG6vO8CU9KRnOngqQfu7rv9geKT3nQnN3exVBfOYre5CVASFfdJ/AXXhZWNR1QzpC1M6OA4TdvYw7uVkZHFpFbqrFR96/ql6BD6lmrkWTIqM+M3qslVqCl4j51ohR+zJvSuhe7KQGhha9Ud7gS/hZs5j7Lxdj7e6Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=davemloft.net smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
Received: from SJ0PR03CA0332.namprd03.prod.outlook.com (2603:10b6:a03:39c::7)
 by DS0PR12MB8813.namprd12.prod.outlook.com (2603:10b6:8:14e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.29; Thu, 24 Oct
 2024 16:58:20 +0000
Received: from SJ1PEPF00002322.namprd03.prod.outlook.com
 (2603:10b6:a03:39c:cafe::21) by SJ0PR03CA0332.outlook.office365.com
 (2603:10b6:a03:39c::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.20 via Frontend
 Transport; Thu, 24 Oct 2024 16:58:20 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 SJ1PEPF00002322.mail.protection.outlook.com (10.167.242.84) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8093.14 via Frontend Transport; Thu, 24 Oct 2024 16:58:20 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Thu, 24 Oct
 2024 09:58:06 -0700
Received: from fedora.mtl.com (10.126.231.35) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Thu, 24 Oct
 2024 09:57:59 -0700
From: Petr Machata <petrm@nvidia.com>
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, <netdev@vger.kernel.org>
CC: Ido Schimmel <idosch@nvidia.com>, Petr Machata <petrm@nvidia.com>, "Amit
 Cohen" <amcohen@nvidia.com>, Vladimir Oltean <vladimir.oltean@nxp.com>, "Andy
 Roulin" <aroulin@nvidia.com>, <mlxsw@nvidia.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <UNGLinuxDriver@microchip.com>, Manish Chopra <manishc@marvell.com>,
 <GR-Linux-NIC-Dev@marvell.com>, Kuniyuki Iwashima <kuniyu@amazon.com>,
 "Andrew Lunn" <andrew+netdev@lunn.ch>
Date: Thu, 24 Oct 2024 18:57:36 +0200
Message-ID: <2e53a70cbfa8b04fe396ef13993d107da31c8c4e.1729786087.git.petrm@nvidia.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <cover.1729786087.git.petrm@nvidia.com>
References: <cover.1729786087.git.petrm@nvidia.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.126.231.35]
X-ClientProxiedBy: rnnvmail202.nvidia.com (10.129.68.7) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00002322:EE_|DS0PR12MB8813:EE_
X-MS-Office365-Filtering-Correlation-Id: 0615bfb1-adb9-423d-ac20-08dcf44d105f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|36860700013|376014|1800799024|82310400026|7416014; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?GffkoEqZbYqOeq90yFp1ZdO+V3r2uMJlBkTDOUBl+6UhWf3D2xh8oW9daYOh?=
 =?us-ascii?Q?KNcyG331J/+fpkDCoCv3aD5F/sQMXEF8omB3qgbkbTJLxGNv07ZF3jdwjgjb?=
 =?us-ascii?Q?x4+tTuwb7iYobQ2+DvvJQ99w/pMsfrRMrWP6MqRTjoB0UWUcW03xv9a/f0gX?=
 =?us-ascii?Q?ZexSOomCG80HLNwPUL8+qD0HXPqu1aEsc0HPxLut/IjIK8F2TEAEJLUEY0Cx?=
 =?us-ascii?Q?rABnL6rdciWiNcHFxJ6gs0RwrC1E0jejmrKA/ul76yAzPp+oDdS7yRyB2Goo?=
 =?us-ascii?Q?IpeOXEGNJLEssSqu6gpYgRe5T4D2UI42BhtWR/ShHBUnY0q73tGXValOPa4z?=
 =?us-ascii?Q?XFQKB5QVvK2LhdAwJ9/BXVYM1kC/9idHHELuVx2QAFsG58yUlTTNVVrfKJHF?=
 =?us-ascii?Q?ujMjpp48Qg7kcEcfSaPfcHVaZijHnPz5+47q830uZ/m4e8jbb0ddTB2HSMoE?=
 =?us-ascii?Q?RxF7862pOrPIRMtqFY0fHf6bWgC/EH8XRab/LE5l7f+huPFdzrXkDXzNCWFW?=
 =?us-ascii?Q?HbCCY/mFsovCDLEfQF1ay82tpCeLQxlrTwGRKx+AKg5b2m9SVmTzsm7nfTqZ?=
 =?us-ascii?Q?D8uyhy41G7SnIzS0Sb56NYrxTrc+XfNLT0xOkNN6p9XJVFzRw/MVfKrcv0W8?=
 =?us-ascii?Q?wFFUASSNGBS2InAleGChlXGsTHeukcYK9yDuxFLyV1luMkrr96TC8vZoGuVT?=
 =?us-ascii?Q?3qLYHQ5uXoknpCyo+EHOohBR1poo8Rie0sfphO04pKibWlXJgoG6NMQI4L7G?=
 =?us-ascii?Q?3nifABJ6fwlqbj/XELVSV6gb+PtBQqM85wWALrPHdDk8kuZAY5u6DuCroCgM?=
 =?us-ascii?Q?2CnjGyQWQkLRQMSP5wP5pHhnSB5ofevwM9iUNdYnipr3L383eMyVWmxEhZbD?=
 =?us-ascii?Q?D8xNPjvK0oOV3a3kwKJPf4g1P41kiPRSq/ppcUuuR17CKEN+P+5uSyk6p2U8?=
 =?us-ascii?Q?26aH7DU3w1wrVa9kiaBXlU8M7gnDiMEuuQKwIaJJMMJCpqR8jj8S+qqFZItg?=
 =?us-ascii?Q?MWeP9eUZISU3n0osbfDS+0b7YmZzmcN6wm5A3b7Oq1NXETZdk/jY8hhetUp8?=
 =?us-ascii?Q?Hk8n4a3TKmSHhHlT7WcMiA/MX0I+55rDLetB6yeixUMG/W/JKhRvGl0F3eHr?=
 =?us-ascii?Q?rF1azcTfg+zlDeBe0jwjnQhb2ZrU8SRLe8y+hpdR0SpJJiMbABzC97iIXL8r?=
 =?us-ascii?Q?KbCh/Q50jxx9zToiyaOwpAz+8UFIKQJ7/rU62WYQdgqPIvgwqwuzXvrkrMHj?=
 =?us-ascii?Q?1xVooOba48NcuCbdtEmRMxvs/QBP6n0bZcaATgoDcJg6uNlr8EZ/nk/B9edK?=
 =?us-ascii?Q?aRoMZsdsOMtOM+iKY8iPaO2w5BcpSRe9PRi6PS/p5RGtiYeLevboTHIkQYqo?=
 =?us-ascii?Q?DYqrPFRcjSbK3HJjFb7UeEd07TzFWrOALgZ2lp+6U1EZqqvB0g=3D=3D?=
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230040)(36860700013)(376014)(1800799024)(82310400026)(7416014); DIR:OUT;
 SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2024 16:58:20.2882 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0615bfb1-adb9-423d-ac20-08dcf44d105f
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: SJ1PEPF00002322.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB8813
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ji37eBUP6AOL/3De1mGYqKkdbcPdB752V6giI2c0vas=;
 b=pk8Zm5Kerbr5e7A1aly870n6qn4PIdlPZFYUqFVKF9ztRjjH+ktOczDE+9CXbYe7b/1RJk+EP4sOmpxWINJ0Xd1bdadVzj5mjJrLDEH4pW+DZc49fu3qz9Ss097tPqzwnwlGffBm1NXTFUtMd/wWs6wFIlgJ0IwDeLsqjiquJVZpQsde+No5CkdURVwgKJyRPPtvYwbQcAB3Ke7s1S5M6fsL/R7HhOoYSc3RdTlDjQZLMJsbNLGTDXA/7XYo9VaJ94BJb0a6c7yR4Qtvqx4TFat49ScJ5b2lxp5LlFZSx/IkS8ZN6pAVVVzIAV8gr90CqcRtsWyEtlstB0yRQMTnkw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=pk8Zm5Ke
Subject: [Intel-wired-lan] [PATCH net-next v2 1/8] net: rtnetlink: Publish
 rtnl_fdb_notify()
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

In the next patch, responsibility for sending notification is moved from
the core to the driver that implement fdb_add (and fdb_del in the patch
after that). In this patch, export a helper that the core currently uses
for sending FDB notifications for the drivers to use as a fallback if there
is nothing specific to report.

Signed-off-by: Petr Machata <petrm@nvidia.com>
Reviewed-by: Amit Cohen <amcohen@nvidia.com>
---

Notes:
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>
CC: intel-wired-lan@lists.osuosl.org
CC: UNGLinuxDriver@microchip.com
CC: Manish Chopra <manishc@marvell.com>
CC: GR-Linux-NIC-Dev@marvell.com
CC: Kuniyuki Iwashima <kuniyu@amazon.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>

 include/linux/rtnetlink.h | 2 ++
 net/core/rtnetlink.c      | 7 ++++---
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/include/linux/rtnetlink.h b/include/linux/rtnetlink.h
index 8468a4ce8510..2e48b4ca7187 100644
--- a/include/linux/rtnetlink.h
+++ b/include/linux/rtnetlink.h
@@ -192,6 +192,8 @@ extern int ndo_dflt_fdb_add(struct ndmsg *ndm,
 			    const unsigned char *addr,
 			    u16 vid,
 			    u16 flags);
+extern void rtnl_fdb_notify(struct net_device *dev, const u8 *addr, u16 vid,
+			    int type, u16 ndm_state);
 extern int ndo_dflt_fdb_del(struct ndmsg *ndm,
 			    struct nlattr *tb[],
 			    struct net_device *dev,
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 194a81e5f608..e5c6dd4c5cf5 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -4271,7 +4271,7 @@ void rtmsg_ifinfo_newnet(int type, struct net_device *dev, unsigned int change,
 
 static int nlmsg_populate_fdb_fill(struct sk_buff *skb,
 				   struct net_device *dev,
-				   u8 *addr, u16 vid, u32 pid, u32 seq,
+				   const u8 *addr, u16 vid, u32 pid, u32 seq,
 				   int type, unsigned int flags,
 				   int nlflags, u16 ndm_state)
 {
@@ -4313,8 +4313,8 @@ static inline size_t rtnl_fdb_nlmsg_size(const struct net_device *dev)
 	       0;
 }
 
-static void rtnl_fdb_notify(struct net_device *dev, u8 *addr, u16 vid, int type,
-			    u16 ndm_state)
+void rtnl_fdb_notify(struct net_device *dev, const u8 *addr, u16 vid, int type,
+		     u16 ndm_state)
 {
 	struct net *net = dev_net(dev);
 	struct sk_buff *skb;
@@ -4336,6 +4336,7 @@ static void rtnl_fdb_notify(struct net_device *dev, u8 *addr, u16 vid, int type,
 errout:
 	rtnl_set_sk_err(net, RTNLGRP_NEIGH, err);
 }
+EXPORT_SYMBOL_GPL(rtnl_fdb_notify);
 
 /*
  * ndo_dflt_fdb_add - default netdevice operation to add an FDB entry
-- 
2.45.0

