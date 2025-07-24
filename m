Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F3AB1129E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jul 2025 22:51:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5FC6F82255;
	Thu, 24 Jul 2025 20:51:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9GCShqdWajZK; Thu, 24 Jul 2025 20:51:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC0768249C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753390266;
	bh=UzEMvehUkpClpAf8Ou7/MxlBJA91dQOGryB4NHB2zcE=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jd+a+KdGZQ/UTkDADupPeB0yuxQZhxdpvwBKXTyz/5BSrkHofwbl3pNJgN1t3Q7rQ
	 gAARrFlrFYRvFz19AntB4UtUmZPeC2pIm0QY/cdNHHfNtGtgnwz+ASohBz3hEJ5qED
	 bZ6An9zhYMA1RtQF79e5nDvy16Q1hlY6rymjdMZuOyiww6FXrozHBPPSCv1p+V+siU
	 NGfAd4vZkVJu9jqYh0wMiD33Z+NybRvEYOidVz511cx3s2t6S9XP8ZWEw43ii9kmKO
	 CuTFHG61ougA0X3i0dAxy10ZoaEAH3zuOEG39i7y40+cVuzgoHp2mLDBNt8u9/QUVw
	 X/Zb9YEheX7dA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC0768249C;
	Thu, 24 Jul 2025 20:51:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2808EB83
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 20:51:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BD68F40BD8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 20:51:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pA_P-Qvik-oW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Jul 2025 20:51:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.94.43;
 helo=nam10-mw2-obe.outbound.protection.outlook.com;
 envelope-from=tariqt@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1965940DE3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1965940DE3
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2043.outbound.protection.outlook.com [40.107.94.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1965940DE3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 20:51:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T9hmjjfH9JNuXF3GOM1GVczG6+9GjHEpkkktRUMPB8ByAmgG5M36JoQTZBEO71QkhzKmwSkbBVNFQfRH4/AINlqe0lfCJRy1RR9y8Hiss+61bo2E9emOJh4jTp6VYTnQvZx4siev9zHTm7VVCdJl3xdPmUUqGgpzhLaLg0VJ7cP6qcvmQW7ZmZL3ZLCsU7flGFSk/QzIeULhHWeZdm4Gdy21RgWVqpldxDQDIaR6DYZ7vDz2RT8iSvFqnPzhUzaeRuFeDnwTPNdBlCLUgVE1g8SCIqDfCqT/9O5lrjQMHC95S26xCtuilWwHshEOrlbzK2ze+iCWy7r+jeumYkIUgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UzEMvehUkpClpAf8Ou7/MxlBJA91dQOGryB4NHB2zcE=;
 b=D4IijDi5R4x3gibgAmUCAp1zywzpngpbpAAUOIglYgt7HOvEhEpSbwsV/sfUacrfLSjO/QkiVt48I8XG8h86BeXTG/pr/HZ838ZLIVSkuPiyEqYGuwzNVtRYlye1o/ttRcmuum47tigxqB7uQCcBRH4ircaqdJn+Dxi+HEuEb84kFztK2z2YT9VTnxh/xLBbU+xM9Q+KlKWKzx/4WhkedDFGHSMtHz8IcPcD2Fnk48LC5dktK4bOeEixQ2/gkzt3NY82ugMqJjdoyEa4bAdsEgPJ6+JtG5wYpODw1xv/PHW8/PujcvKw90YqmjYmPo/+GuDl1yCVPUyPbdV97vna4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.233) smtp.rcpttodomain=google.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
Received: from CH0PR13CA0046.namprd13.prod.outlook.com (2603:10b6:610:b2::21)
 by MW5PR12MB5622.namprd12.prod.outlook.com (2603:10b6:303:198::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.21; Thu, 24 Jul
 2025 20:51:01 +0000
Received: from DS3PEPF0000C37A.namprd04.prod.outlook.com
 (2603:10b6:610:b2:cafe::c3) by CH0PR13CA0046.outlook.office365.com
 (2603:10b6:610:b2::21) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8989.5 via Frontend Transport; Thu,
 24 Jul 2025 20:51:01 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.233)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.233 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.233; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.233) by
 DS3PEPF0000C37A.mail.protection.outlook.com (10.167.23.4) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8964.20 via Frontend Transport; Thu, 24 Jul 2025 20:51:00 +0000
Received: from drhqmail203.nvidia.com (10.126.190.182) by mail.nvidia.com
 (10.127.129.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.14; Thu, 24 Jul
 2025 13:50:45 -0700
Received: from drhqmail201.nvidia.com (10.126.190.180) by
 drhqmail203.nvidia.com (10.126.190.182) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 24 Jul 2025 13:50:44 -0700
Received: from vdi.nvidia.com (10.127.8.10) by mail.nvidia.com
 (10.126.190.180) with Microsoft SMTP Server id 15.2.1544.14 via Frontend
 Transport; Thu, 24 Jul 2025 13:50:37 -0700
From: Tariq Toukan <tariqt@nvidia.com>
To: Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Jiri Pirko <jiri@nvidia.com>, Jiri Pirko
 <jiri@resnulli.us>
CC: Donald Hunter <donald.hunter@gmail.com>, Jonathan Corbet <corbet@lwn.net>, 
 Brett Creeley <brett.creeley@amd.com>, Michael Chan
 <michael.chan@broadcom.com>, Pavan Chebbi <pavan.chebbi@broadcom.com>, "Cai
 Huoqing" <cai.huoqing@linux.dev>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Sunil Goutham
 <sgoutham@marvell.com>, Linu Cherian <lcherian@marvell.com>, Geetha sowjanya
 <gakula@marvell.com>, Jerin Jacob <jerinj@marvell.com>, hariprasad
 <hkelam@marvell.com>, Subbaraya Sundeep <sbhatta@marvell.com>, Saeed Mahameed
 <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Tariq Toukan
 <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>, Ido Schimmel
 <idosch@nvidia.com>, Petr Machata <petrm@nvidia.com>, Manish Chopra
 <manishc@marvell.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <linux-rdma@vger.kernel.org>, "Shahar
 Shitrit" <shshitrit@nvidia.com>, Gal Pressman <gal@nvidia.com>
Date: Thu, 24 Jul 2025 23:48:52 +0300
Message-ID: <1753390134-345154-4-git-send-email-tariqt@nvidia.com>
X-Mailer: git-send-email 2.8.0
In-Reply-To: <1753390134-345154-1-git-send-email-tariqt@nvidia.com>
References: <1753390134-345154-1-git-send-email-tariqt@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain
X-NV-OnPremToCloud: AnonymousSubmission
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS3PEPF0000C37A:EE_|MW5PR12MB5622:EE_
X-MS-Office365-Filtering-Correlation-Id: e29807ac-e164-4d3f-3f06-08ddcaf3cc4d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|82310400026|1800799024|36860700013|376014|7416014; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?oZ41gv+PdkVOIX8sqOfmLtveFFaujAu/HAKzKTpeMRjnJ4T8a9RODGOzTcQK?=
 =?us-ascii?Q?gP8WHjnoLkGCgiXe1FBNXcCmm0snb4aE18pyDmV46wrgyOFDhlA/d8XWIT7J?=
 =?us-ascii?Q?ST6G9mVy9CIaAlZ3sLmui+OGydjgGoZqUW2RWT7wLvEBgf497Sc3HgTWdUIJ?=
 =?us-ascii?Q?3nQbzUrGcJCDSVCz7SsYWpCzmOKcdI7+mNY9MJhJNn3xal7Nu3Eon4akg7pJ?=
 =?us-ascii?Q?vxG4/d1ZGyW99mUszcLe2yqoxOXOlL0+0qSWHYnZOk+OHt6QDD+cJcj1MrVP?=
 =?us-ascii?Q?/4eIPBwV9TAl8qPNWw0cud4QfiXw6MzE5BRNxFX1IGYo4dBTytYfRn6TC0jm?=
 =?us-ascii?Q?LFB1MVpgOqM8IZofUwRg14/dCO+w+jE8B/1GwbY9U9XMxLJcwpP+M3oT1aq5?=
 =?us-ascii?Q?+aZ2rd2d2wyfcn14QSr7Ay8xVFlSuUE9VXHNnoYLH6Ef5psyeD4YJRVI3l0r?=
 =?us-ascii?Q?xc3lH5JyxHoGa5qr6q7jiNH0UykQFNFiN+XASAroqlQOVXsCeOQlf/HhetUM?=
 =?us-ascii?Q?UCZWxumwypdv7BxITzaCZ/FGeyhGeUML1SrciZW6vZTzasOJcDqObLkD/qvG?=
 =?us-ascii?Q?bKr3vlkBPqG6W76Rf29bjj4+xn24XT/2yso9gCoz7eWafvpPPy6Hjc85z2PV?=
 =?us-ascii?Q?5R3GictMp8YkZlw7Oz8LHF4TPfy4jAvfhUNf2/K6NOOi6qGitEuvZR90BeT0?=
 =?us-ascii?Q?DCzYpS0PmWEBnCAgTIbrQrA8ePikv/dUngCfWbb+OVbkMIA7mG8As6zdnlxW?=
 =?us-ascii?Q?c9PN0pLYhPSqQevC35AtlLplb5C4eWQGhwTUyVCNTVw2KwHgEeYYGNxEnbvA?=
 =?us-ascii?Q?JY86d4ABckEwv4PZUn/XjdtIID9k//ol6J2x9toMGJuUGWpY8Qxys+6srCup?=
 =?us-ascii?Q?U5XuE4SOMovaFvm8ctvUNdTarOF7XIReK+i8zX+lYauwwpX4bR+Tatq0R6WN?=
 =?us-ascii?Q?BM8rXVK5Rr0fTs8mgw8QEUPq1viGu3J2DiOo3MUgSBVmFubA9vsn1MBuTLLs?=
 =?us-ascii?Q?NTKI+Nd/95nGxNaJxw8PMkkwCBZ5hm3UCSEBv4rupOfPjGqfNIgWY1O/CrVE?=
 =?us-ascii?Q?oTgRnTb0em3SRZGrlbKFl2wCNMj7Wo11LsvCrQNFiPXnyFNL0yb2U0tfIkfR?=
 =?us-ascii?Q?MS0GdDMMzyEaWcCeA0f9VuU9T4M8TKgLtIgWy0BuxzoqXaciquw/OVgYPRvc?=
 =?us-ascii?Q?WqJOG/2jx5bboc+KlarYEPwJsq07gljib+QQePxoVx/dAGyHTMPNjQ7RUkay?=
 =?us-ascii?Q?8nndinkdo1TFs0Sy0CzayG1tGllz+/ajCFQ8IbaccDC9TrQ0yFfQeOC7kL36?=
 =?us-ascii?Q?x6LjHq+fw/QVC7fX7ldtD9qyyl9SvYpsbzFXbRDfoeb9jk76aQe+JldQHpEC?=
 =?us-ascii?Q?WXShDWxmcbe5cFK2Njb5Mj+WOg3ocoVu8oroxNdNyBIy8XvIBJ3eMCa4Zt1j?=
 =?us-ascii?Q?n4BkbYl+LSCEMDij8gs9qMz0YL4KhjEl3IP1vPR24O9soeEno/kzOhe9Ye6M?=
 =?us-ascii?Q?lFkYri8VuqDWPJS+usql/y3RU1xaIvf6fDzN?=
X-Forefront-Antispam-Report: CIP:216.228.118.233; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc7edge2.nvidia.com; CAT:NONE;
 SFS:(13230040)(82310400026)(1800799024)(36860700013)(376014)(7416014); DIR:OUT;
 SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2025 20:51:00.9373 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e29807ac-e164-4d3f-3f06-08ddcaf3cc4d
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.118.233];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DS3PEPF0000C37A.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR12MB5622
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UzEMvehUkpClpAf8Ou7/MxlBJA91dQOGryB4NHB2zcE=;
 b=lEQ6CPpLfwLVWlwanEXT8Y0KigmcmK4yRS/nnw6zvnsCxhDoo/7hlkz/quJtTAkwUHISx3eYCJ1Ze4REtP5waAECAz5OxlF96zBGjstEpinbVUoPzAXgRPBzqcgQcQDHH98KWar9WGMJ77c9TE5aakEWG8DHBP93Aoj+jhEIJXkAoINctyX9I3ZlVx+pyeGc6UTWXETAdDW9Gp52X1AV9TuC/b3U5yAUiy+EATUval2IOsk8/HTWQfukbYGdbSOcoNdm51K0GibI8x6/cVYKFOjYxOS2JZ4nki1ZnJqCTwRJV4WexdkclsMawjuky2+bb+TTqp+7Ml133eJ2ZOnqsw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=lEQ6CPpL
Subject: [Intel-wired-lan] [PATCH net-next V2 3/5] devlink: Introduce grace
 period delay for health reporter
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

From: Shahar Shitrit <shshitrit@nvidia.com>

Currently, the devlink health reporter starts the grace period
immediately after handling an error, blocking any further recoveries
until it finished.

However, when a single root cause triggers multiple errors in a short
time frame, it is desirable to treat them as a bulk of errors and to
allow their recoveries, avoiding premature blocking of subsequent
related errors, and reducing the risk of inconsistent or incomplete
error handling.

To address this, introduce a configurable grace period delay for devlink
health reporter. Start this delay when the first error is handled, and
allow recovery attempts for reported errors during this window. Once the
delay expires, begin the grace period to block further recoveries until
it concludes.

Timeline summary:

----|--------|------------------------------/----------------------/--
error is  error is    grace period delay         grace period
reported  recovered  (recoveries allowed)    (recoveries blocked)

For calculating the grace period delay duration, use the same
last_recovery_ts as the grace period. Update it on recovery only
when the delay is inactive (either disabled or at the first error).

This patch implements the framework for the grace period delay and
effectively sets its value to 0 at reporter creation, so the current
behavior remains unchanged, which ensures backward compatibility.

A downstream patch will make the grace period delay configurable.

Signed-off-by: Shahar Shitrit <shshitrit@nvidia.com>
Reviewed-by: Carolina Jubran <cjubran@nvidia.com>
Reviewed-by: Jiri Pirko <jiri@nvidia.com>
Signed-off-by: Tariq Toukan <tariqt@nvidia.com>
---
 include/net/devlink.h |  4 ++++
 net/devlink/health.c  | 22 +++++++++++++++++++++-
 2 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/include/net/devlink.h b/include/net/devlink.h
index a65aa24e8df4..3ab85de9c862 100644
--- a/include/net/devlink.h
+++ b/include/net/devlink.h
@@ -744,6 +744,9 @@ enum devlink_health_reporter_state {
  * @test: callback to trigger a test event
  * @default_graceful_period: default min time (in msec)
 			     between recovery attempts
+ * @default_graceful_period_delay: default time (in msec) for
+ *				   error recoveries before
+ *				   starting the grace period
  */
 
 struct devlink_health_reporter_ops {
@@ -759,6 +762,7 @@ struct devlink_health_reporter_ops {
 	int (*test)(struct devlink_health_reporter *reporter,
 		    struct netlink_ext_ack *extack);
 	u64 default_graceful_period;
+	u64 default_graceful_period_delay;
 };
 
 /**
diff --git a/net/devlink/health.c b/net/devlink/health.c
index 9d0d4a9face7..a0269975f592 100644
--- a/net/devlink/health.c
+++ b/net/devlink/health.c
@@ -60,6 +60,7 @@ struct devlink_health_reporter {
 	struct devlink_port *devlink_port;
 	struct devlink_fmsg *dump_fmsg;
 	u64 graceful_period;
+	u64 graceful_period_delay;
 	bool auto_recover;
 	bool auto_dump;
 	u8 health_state;
@@ -123,6 +124,7 @@ __devlink_health_reporter_create(struct devlink *devlink,
 	reporter->ops = ops;
 	reporter->devlink = devlink;
 	reporter->graceful_period = ops->default_graceful_period;
+	reporter->graceful_period_delay = ops->default_graceful_period_delay;
 	reporter->auto_recover = !!ops->recover;
 	reporter->auto_dump = !!ops->dump;
 	return reporter;
@@ -508,11 +510,25 @@ static void devlink_recover_notify(struct devlink_health_reporter *reporter,
 	devlink_nl_notify_send_desc(devlink, msg, &desc);
 }
 
+static bool
+devlink_health_reporter_delay_active(struct devlink_health_reporter *reporter)
+{
+	unsigned long delay_threshold = reporter->last_recovery_ts +
+		msecs_to_jiffies(reporter->graceful_period_delay);
+
+	return time_is_after_jiffies(delay_threshold);
+}
+
 void
 devlink_health_reporter_recovery_done(struct devlink_health_reporter *reporter)
 {
 	reporter->recovery_count++;
-	reporter->last_recovery_ts = jiffies;
+	if (!devlink_health_reporter_delay_active(reporter))
+		/* When grace period delay is set, last_recovery_ts marks
+		 * the first recovery within the delay, not necessarily the
+		 * last one.
+		 */
+		reporter->last_recovery_ts = jiffies;
 }
 EXPORT_SYMBOL_GPL(devlink_health_reporter_recovery_done);
 
@@ -599,7 +615,11 @@ devlink_health_recover_abort(struct devlink_health_reporter *reporter,
 	if (prev_state != DEVLINK_HEALTH_REPORTER_STATE_HEALTHY)
 		return true;
 
+	if (devlink_health_reporter_delay_active(reporter))
+		return false;
+
 	recover_ts_threshold = reporter->last_recovery_ts +
+		msecs_to_jiffies(reporter->graceful_period_delay) +
 		msecs_to_jiffies(reporter->graceful_period);
 	if (reporter->last_recovery_ts && reporter->recovery_count &&
 	    time_is_after_jiffies(recover_ts_threshold))
-- 
2.31.1

