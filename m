Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E37B112A0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jul 2025 22:51:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9258A40835;
	Thu, 24 Jul 2025 20:51:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ov4zJajnuWoK; Thu, 24 Jul 2025 20:51:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C349A4086C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753390275;
	bh=Xt3kHktPKRSnrcenZBz2XPWcf7NMVPM90QGFthmoE+g=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GAqNe+CqO0AOACpd06MOZaIaErHW6bNdxSYpRJqmq6Q2NbcZ9CVxhxBf6e+igGS6R
	 Yq4XRGo4GEuxBeTKvKFN0Kq0D7dNyEKt21nlapHWzDzfGaC/936aMrkKWThtkbsJfa
	 9B+UvERblsbpr21zuiKz3GqLtkPNEC5mbj/T8p+m8nThTzDliWqM/LoBA+9u8a9Bxe
	 KMSqOgEX4zjOzQlWeIZQXIOttuH/47sC07Y9NVpPdWuvpo0hMvPzvdBmHs5K+cCtPI
	 c3BFthJhqHQuwDGgmpyncrsDFA3+xXhB2r7XLYvidddo2mA2W+8OU+Bt8KdOrXvcgS
	 OC7IpGut4WmJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C349A4086C;
	Thu, 24 Jul 2025 20:51:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9CBACB83
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 20:51:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8EB0061039
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 20:51:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mGL6p50Zk5wr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Jul 2025 20:51:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.93.85;
 helo=nam10-dm6-obe.outbound.protection.outlook.com;
 envelope-from=tariqt@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CD3B76140A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD3B76140A
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2085.outbound.protection.outlook.com [40.107.93.85])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CD3B76140A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jul 2025 20:51:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jtjiima+MgEyChngK/1U/ZtJn0OMndzIZWvRbsTwvBGFizPq2FcF+Xb4aOyZh7Dhl0qxXZPN9dr1Hs2eqTo1LVF09V5kd0Ox3dbFTiFTulFEFjnNeFIvVDjo5fZBBwEF/8ztcHmcBKP1x+fD/0qJ1b2mR0Ee4KIt3mVTWQf6emgz6RDi6fmuqP1oLRP9yQZdRSTSgbVLqq6niLLU5nhgzI/wVU1M85MYJSF58q+PfDaGwj3IhYaHRdr7HFRw/SaTDPvyOU6erwZAz54e7i+8G6l3c1hL1t/Zl28C7z8312chPI35QL1iSBPV9UC34M4VSxp79l3TWLRuub7CQCimZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xt3kHktPKRSnrcenZBz2XPWcf7NMVPM90QGFthmoE+g=;
 b=omrzr27xRFCBs8q9kIull6JTcNn9HQVfXBf6HMEc/gfYZnWwQYQnI/TvLW/naSQNjAEyULTtagJDk/nP0jO304sDjAMKCq5oLVJ7qTtchssDINtRe/nK3eeeXrI4j536nP5jUyJMMfZkz3+UU+vuUpl4/MixFZvAB5J3XMf+9zO9vzExReY1fGSILq4XtCHepNHS81bQ7cHGmiANzjbAVnaGU6x14Qz9am/WQpPwvf8fEV3lKb5eCUlJhwmRZmzlC0qvikLX7ntwWCMsI0pRCNSKjg+JmH2g11SvIyQbSwe+PfdNCXqAM8oux/KzI7pZfEYvg2qbrG9MbAcROvh/+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.233) smtp.rcpttodomain=google.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
Received: from CH0PR13CA0039.namprd13.prod.outlook.com (2603:10b6:610:b2::14)
 by SA5PPF0EB7D076B.namprd12.prod.outlook.com
 (2603:10b6:80f:fc04::8c5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Thu, 24 Jul
 2025 20:51:11 +0000
Received: from DS3PEPF0000C37A.namprd04.prod.outlook.com
 (2603:10b6:610:b2:cafe::dc) by CH0PR13CA0039.outlook.office365.com
 (2603:10b6:610:b2::14) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8964.21 via Frontend Transport; Thu,
 24 Jul 2025 20:51:10 +0000
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
 15.20.8964.20 via Frontend Transport; Thu, 24 Jul 2025 20:51:10 +0000
Received: from drhqmail203.nvidia.com (10.126.190.182) by mail.nvidia.com
 (10.127.129.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.14; Thu, 24 Jul
 2025 13:51:00 -0700
Received: from drhqmail201.nvidia.com (10.126.190.180) by
 drhqmail203.nvidia.com (10.126.190.182) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 24 Jul 2025 13:50:59 -0700
Received: from vdi.nvidia.com (10.127.8.10) by mail.nvidia.com
 (10.126.190.180) with Microsoft SMTP Server id 15.2.1544.14 via Frontend
 Transport; Thu, 24 Jul 2025 13:50:52 -0700
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
Date: Thu, 24 Jul 2025 23:48:54 +0300
Message-ID: <1753390134-345154-6-git-send-email-tariqt@nvidia.com>
X-Mailer: git-send-email 2.8.0
In-Reply-To: <1753390134-345154-1-git-send-email-tariqt@nvidia.com>
References: <1753390134-345154-1-git-send-email-tariqt@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain
X-NV-OnPremToCloud: AnonymousSubmission
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS3PEPF0000C37A:EE_|SA5PPF0EB7D076B:EE_
X-MS-Office365-Filtering-Correlation-Id: bd2d78c7-bf00-476e-3a7e-08ddcaf3d226
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|36860700013|1800799024|82310400026|376014|7416014; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?DUa/9RRbvj4Nolugb0FkEI4xI3YAFHaxq1U4f8fTrcx7wqg5EAsJ+K+Vp6HZ?=
 =?us-ascii?Q?KJeN+DmzglNnU+xFv8Q2kHju2F0meS6JDhvCGmn+iOSW9qlm6TuU7AwehkmP?=
 =?us-ascii?Q?u3hY5ioytz4ilQVcx2c1ONHf0k3Xtan16DCafUSO/xWQk+uTt6rWlk2XcmYa?=
 =?us-ascii?Q?dfoXQJf3Wcyzk0i2x8K7RjH0+vCa9S3ah1mBumPErh9QWYk+vd+Mw4dn429d?=
 =?us-ascii?Q?AuJn4TAA2PjELbUdzYKEnSpt6Yss+bOQIcSEQfGfutq0n75QiscAmGjz2+iu?=
 =?us-ascii?Q?45NnlhK+okIVZ2R6PB1M9AImQYwaq8pIdSApjzG4U9SXiKY1FhWSVxgxVcMj?=
 =?us-ascii?Q?DXKhWOGo7icjhis77EQ7RFey37UfAdmm3q2RrJgUfJiDu5qsXRCQ/lUv/b3k?=
 =?us-ascii?Q?r8LszQhtjAlZVHMTNO7yRcJV0NKY2mZkGw4YWVpKRlU5/2QSC52l748T/l/r?=
 =?us-ascii?Q?xmQcn57G/0Ch9M7hdGiIFq7Q4o8ClzmraybzcQ/5yFRNpyY75okvOfibmwZd?=
 =?us-ascii?Q?2Jyi+o2RxLQTfaZuyNaI1TqaipGDaOfRSJhIQjoXxVykNrzT0wPYgUzBSSHH?=
 =?us-ascii?Q?suxh5NckilDngu01s3ik9aFKw8mzlI4X3JTnfgU16vRn0cnX9hatrBUh3Zum?=
 =?us-ascii?Q?VsVxPdB43RaW2KdqbX58d3213juiCp2pGBEeXqX/q+pdYv+HQhPcpbs3QYTo?=
 =?us-ascii?Q?Efqnkrq+xLIpk/gIjkZsyJjyw3UwFWQe7ssrT9an43kUAoMCBofYvaxdY6ib?=
 =?us-ascii?Q?wHfwAs6xjNM6uR/US0VVb3GhVCJSwG6JguYOmZDer43OYBWmoNteVUm25apf?=
 =?us-ascii?Q?cOr7UCliVO6221UB8Jj6/jOiSRjCVFHKEw4jPuWyUM4qb0jgXfJYFEELv+Qb?=
 =?us-ascii?Q?ypO8J5Z9w2n7U2BRv/tcvTatfleMtlc128icK8yBPS5M7/39TuW5QjqSpvw9?=
 =?us-ascii?Q?SBqPlWszIHPsxuaY7ppBfb7ISoubzIxttng53SrbuqZir8SH7713roB6j0cO?=
 =?us-ascii?Q?7o1SC0EUiO/Vp1ac9xZzO7rS0FAIz1a6ScS6nBdPP/FUMJCEgDr3UnAZC+cA?=
 =?us-ascii?Q?4dTez081dtMaWmt6FtZBzmrFYai7u+Zt1bo/G23apRJIjVW/kGdycKPe2Oie?=
 =?us-ascii?Q?7x1+VLkCGvpN7PZyuqoo458NxwTRgtAib1icj3IvfDBXWIA1Zr0jQT68YrHs?=
 =?us-ascii?Q?XZwlAughDCBxK2iVTON8fY6lsWvqsezdlhB9HRnDNMd7d7Phfuk+4E2iJFDw?=
 =?us-ascii?Q?zx+hEqAGi+CaqGALP/PFK09fhqmj1oDnTRfoHkuRNnkNQLST/W5RddXW8SjM?=
 =?us-ascii?Q?ODYlY83jTwK6bQfo57dOXV/asLeJ2vE0CeIOMW8pXw4Qgpl5X8qfDlWUoD/v?=
 =?us-ascii?Q?9vqsUJQ3TTXOD8Al9ud3A0RAQRVK+nrRNr0p0+N620PtaG6h/njPRAQi0TRM?=
 =?us-ascii?Q?ofU9sO8dXTdpPi++1J/XwrSU0jJpTBxdLpmfcbsc9Y8srqGMdEaOoTv7gbNX?=
 =?us-ascii?Q?+z+mhRUxPNfPDUFvpDPUeGxdl8F4WQM5gE7j?=
X-Forefront-Antispam-Report: CIP:216.228.118.233; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc7edge2.nvidia.com; CAT:NONE;
 SFS:(13230040)(36860700013)(1800799024)(82310400026)(376014)(7416014); DIR:OUT;
 SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2025 20:51:10.7477 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bd2d78c7-bf00-476e-3a7e-08ddcaf3d226
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.118.233];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: DS3PEPF0000C37A.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA5PPF0EB7D076B
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xt3kHktPKRSnrcenZBz2XPWcf7NMVPM90QGFthmoE+g=;
 b=fH3HSOAIEdT5W7QG6KnwvgsDDAQo5wW5HUp75UJo0CmOuiFE3Jk8X02lpZo2/uiLcdX7FKYa3F9ZMA/vzSu1NCgWvtnJWKs/dXRpgMGsMxH3FsndNyGXkozwwbQoKAVsxlxXeZCZKDjqij/2rjc+31XSvRh/2/9m9M0V4NyuHujrV+ZTxRnqVE71NK+Z/apoBETZefqSORh6YudyIuEdx4EoiBQHvNnXY9MEd+DsjFW+XpbCV+RVJT6X2xvn4fU5fwTn/fzcc97Bu6kw/zQPvjilfpYkDisRr17nXc82DyfFShc7i4//XUI1X9E2HXhOvi18WLD2w9fXYp6vtt82sw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=fH3HSOAI
Subject: [Intel-wired-lan] [PATCH net-next V2 5/5] net/mlx5e: Set default
 grace period delay for TX and RX reporters
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

System errors can sometimes cause multiple errors to be reported
to the TX reporter at the same time. For instance, lost interrupts
may cause several SQs to time out simultaneously. When dev_watchdog
notifies the driver for that, it iterates over all SQs to trigger
recovery for the timed-out ones, via TX health reporter.
However, grace period allows only one recovery at a time, so only
the first SQ recovers while others remain blocked. Since no further
recoveries are allowed during the grace period, subsequent errors
cause the reporter to enter an ERROR state, requiring manual
intervention.

To address this, set the TX reporter's default grace period
delay to 0.5 second. This allows the reporter to detect and handle
all timed-out SQs within this delay window before initiating the
grace period.

To account for the possibility of a similar issue in the RX reporter,
its default grace period delay is also configured.

Additionally, while here, align the TX definition prefix with the RX,
as these are used only in EN driver.

Signed-off-by: Shahar Shitrit <shshitrit@nvidia.com>
Reviewed-by: Carolina Jubran <cjubran@nvidia.com>
Reviewed-by: Jiri Pirko <jiri@nvidia.com>
Signed-off-by: Tariq Toukan <tariqt@nvidia.com>
---
 drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c | 3 +++
 drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c | 7 +++++--
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c b/drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c
index e106f0696486..feb3f2bce830 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c
@@ -645,6 +645,7 @@ void mlx5e_reporter_icosq_resume_recovery(struct mlx5e_channel *c)
 }
 
 #define MLX5E_REPORTER_RX_GRACEFUL_PERIOD 500
+#define MLX5E_REPORTER_RX_GRACEFUL_PERIOD_DELAY 500
 
 static const struct devlink_health_reporter_ops mlx5_rx_reporter_ops = {
 	.name = "rx",
@@ -652,6 +653,8 @@ static const struct devlink_health_reporter_ops mlx5_rx_reporter_ops = {
 	.diagnose = mlx5e_rx_reporter_diagnose,
 	.dump = mlx5e_rx_reporter_dump,
 	.default_graceful_period = MLX5E_REPORTER_RX_GRACEFUL_PERIOD,
+	.default_graceful_period_delay =
+		MLX5E_REPORTER_RX_GRACEFUL_PERIOD_DELAY,
 };
 
 void mlx5e_reporter_rx_create(struct mlx5e_priv *priv)
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c b/drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c
index 6fb0d143ad1b..515b77585926 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c
@@ -514,14 +514,17 @@ void mlx5e_reporter_tx_ptpsq_unhealthy(struct mlx5e_ptpsq *ptpsq)
 	mlx5e_health_report(priv, priv->tx_reporter, err_str, &err_ctx);
 }
 
-#define MLX5_REPORTER_TX_GRACEFUL_PERIOD 500
+#define MLX5E_REPORTER_TX_GRACEFUL_PERIOD 500
+#define MLX5E_REPORTER_TX_GRACEFUL_PERIOD_DELAY 500
 
 static const struct devlink_health_reporter_ops mlx5_tx_reporter_ops = {
 		.name = "tx",
 		.recover = mlx5e_tx_reporter_recover,
 		.diagnose = mlx5e_tx_reporter_diagnose,
 		.dump = mlx5e_tx_reporter_dump,
-		.default_graceful_period = MLX5_REPORTER_TX_GRACEFUL_PERIOD,
+		.default_graceful_period = MLX5E_REPORTER_TX_GRACEFUL_PERIOD,
+		.default_graceful_period_delay =
+			MLX5E_REPORTER_TX_GRACEFUL_PERIOD_DELAY,
 };
 
 void mlx5e_reporter_tx_create(struct mlx5e_priv *priv)
-- 
2.31.1

