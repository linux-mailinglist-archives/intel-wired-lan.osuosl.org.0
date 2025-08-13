Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BB033B2536F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 20:57:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D2076140B;
	Wed, 13 Aug 2025 18:57:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9wq2EuGVyBh7; Wed, 13 Aug 2025 18:57:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D396161B61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755111434;
	bh=V2VsP58gcTBgl+B7yHn1gkPfe18/m3I0VOOzDPttrck=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=51tsGwIlEZziNqcDbpzqxoK9T2m6xHjyTW0y5XlsVjo+e5VOEcmsf8nqsFvnet/lK
	 igHNZZOABGXk5pdLoXwl1HRzugzhHUY17eNMUbqPgVEUcJLHXk7Ss44wMh9Wh0aj0d
	 dPYjtK8OvXjUNP6GBzLbDMIGaDGycJH1de1LIdaTIBKozo/tqMRJdzEVgl4vsadmOB
	 lrVz4k/aXufX66cYqC9Nad/UQaD4uKNHCROZz0M/xTMQBWBJo4INjm6qSDyYqlXb4/
	 YV2+Gk7c5Mo5qhzNWdsyEWVdxWAnOT6vNYT73+XhiC9SVLxmYLsCYZfgnFYSm27B1C
	 RSqJPyV74Nbzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D396161B61;
	Wed, 13 Aug 2025 18:57:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8D0F51C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 18:57:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7E0D961B5B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 18:57:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f9b_GfL8QkgE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 18:57:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.243.76;
 helo=nam12-dm6-obe.outbound.protection.outlook.com;
 envelope-from=tariqt@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BE40D6140B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE40D6140B
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2076.outbound.protection.outlook.com [40.107.243.76])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BE40D6140B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 18:57:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=szuOEC+zPo7J6cgL7u237wR5gykKH6f15xWcHNmYpq5sbvLyZdnpk22T5PL8/vtLF0GD/KxPN8coVzTZC6UUg92FcxVR86oKfbysRqYJSyhyMM9ZCdEnOhInJDw8nepoWhZLKrvV84dPiDzhzm3CXXM8BIIgWDIAIJgEYysA90VAjRWvLN6xqE+boPzHZZqqr9Uu+WNuljo4xFc8zn1u0mstLcAIyq+0HmT7a3X5LoEGS2wHQbfQACiw5gixRONFXORrn6F6+x7cV/CWGl4NfPGx830c7Zd0s0JQnub0RbnxO+11pOTEYSG8gpT8UgfykU0sS0+lNvvlj8u0M31AcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V2VsP58gcTBgl+B7yHn1gkPfe18/m3I0VOOzDPttrck=;
 b=dNKweBPhsn7uxLJ5nGbclREaUlu5dnCmZbng5y3FlSWV4d2d9+RPqkQ3SioTWQiyJQH/KryziXpl+BACTRWJuMyBM7DD2RM/4ikA6tO0NDzQ3DqO+yjbMsHv1W95kd61RQq7WCcSYDP5svOAEUg2oPCUWNsVzZz4+xcYloH9fap/btKUlW4aZC4GNrdV/Lv6N5A2AE3NspQpS2XwRuDEWZ8vSDAZ7+W5/R7WW7+6YzYFury/aZMEpDXB/3WRJlEJfHQCx7Qa62i9MhCH4w145gXUtZvEjZPQggdIMAMHadI9xWJ4KmDWDYogGCyW22bqvyVz6Qhtvgcc8AiBxRn5nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=marvell.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
Received: from BY5PR03CA0025.namprd03.prod.outlook.com (2603:10b6:a03:1e0::35)
 by LV3PR12MB9257.namprd12.prod.outlook.com (2603:10b6:408:1b7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.22; Wed, 13 Aug
 2025 18:57:07 +0000
Received: from SJ1PEPF00002320.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0:cafe::6c) by BY5PR03CA0025.outlook.office365.com
 (2603:10b6:a03:1e0::35) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9031.16 via Frontend Transport; Wed,
 13 Aug 2025 18:57:07 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 SJ1PEPF00002320.mail.protection.outlook.com (10.167.242.86) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9031.11 via Frontend Transport; Wed, 13 Aug 2025 18:57:07 +0000
Received: from rnnvmail204.nvidia.com (10.129.68.6) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.14; Wed, 13 Aug
 2025 11:56:49 -0700
Received: from rnnvmail203.nvidia.com (10.129.68.9) by rnnvmail204.nvidia.com
 (10.129.68.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.14; Wed, 13 Aug
 2025 11:56:48 -0700
Received: from vdi.nvidia.com (10.127.8.10) by mail.nvidia.com (10.129.68.9)
 with Microsoft SMTP Server id 15.2.1544.14 via Frontend Transport; Wed, 13
 Aug 2025 11:56:40 -0700
From: Tariq Toukan <tariqt@nvidia.com>
To: Jiri Pirko <jiri@nvidia.com>, Jiri Pirko <jiri@resnulli.us>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>
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
 <intel-wired-lan@lists.osuosl.org>, <linux-rdma@vger.kernel.org>, "Gal
 Pressman" <gal@nvidia.com>, Dragos Tatulea <dtatulea@nvidia.com>, "Shahar
 Shitrit" <shshitrit@nvidia.com>
Date: Wed, 13 Aug 2025 21:55:46 +0300
Message-ID: <1755111349-416632-3-git-send-email-tariqt@nvidia.com>
X-Mailer: git-send-email 2.8.0
In-Reply-To: <1755111349-416632-1-git-send-email-tariqt@nvidia.com>
References: <1755111349-416632-1-git-send-email-tariqt@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain
X-NV-OnPremToCloud: ExternallySecured
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00002320:EE_|LV3PR12MB9257:EE_
X-MS-Office365-Filtering-Correlation-Id: 875fa1f4-f4a8-47d5-3b71-08ddda9b3388
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|36860700013|82310400026; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?vvRIuWHITi/VNIfIY1+GF856HZ5a6BQgtaVAneyY43XYBicSsKF+JpS90Ssd?=
 =?us-ascii?Q?ADiqTDzlXhptEBcrRDbyGFzvWAGxOT8U98Uqe0bExtGrNUqzD7IMU/luxf3e?=
 =?us-ascii?Q?zzzDXyeFRRk+7PRxV9rKbDVFFphI0gJGK02iaeuBtqoC1zHSjaaMVLVzdAk3?=
 =?us-ascii?Q?9vv3bZpMfNnKnY1tc5tJGfYO7UguXk8DbO5Q4SfOm1FTK4DWNRc5TYjCNb/q?=
 =?us-ascii?Q?C2nrapo1Sc33r08wr/lsH11p7/VFyrCmvDOfRHsnSpi3sfn68+p3QQ2o35aj?=
 =?us-ascii?Q?alSCKrzbxcePloxuBq5PnIr6jUk9dg3uAsG+qyCJ8QVlipfMTD+K+Glfrhp0?=
 =?us-ascii?Q?qaKREdya1+91It2cxclehRt1InEv6qpAdzCExNBEOa7I4PKzKHz4Ed/83qfp?=
 =?us-ascii?Q?1u0aakTQKMnhfUriPQFRE+DbPcoW99sWMEKZ1zra5lqgjxMZlw61POCVV8Xc?=
 =?us-ascii?Q?SKFF+4+Lcy1Kv4mL6FEGn11rKgkx/GZW35YFjmaSLinSiGw7tSZHnnXUJaKE?=
 =?us-ascii?Q?0HLHZncBJArDt9Gd/S2BZSu7SFlb3M0Uy6Wx+jywdeDzCG9QQeO8dGyWqFMj?=
 =?us-ascii?Q?kiNNTmOC6i4ZPF+nPaAuT3GWkP3rxo09DCwOzwGfjOzceK0QgvYmAQ0XSb3R?=
 =?us-ascii?Q?aCOimT8x1SQZ4Xfmt4B42pfwUSmqIrRmkSkKwJrXJi3gaGMG6BfTNLOUd606?=
 =?us-ascii?Q?KRIeUTkSZIy7JmCQDBUZTspogB1pGVfD97pkujFbQOjZ8eVPF4dlgl2OZUPJ?=
 =?us-ascii?Q?rQGsjUPXBp21AFYsh/nW0usJ9Cs+D1EnSBRoN0LFbvgBDM2U+Ft/PNmIZMk0?=
 =?us-ascii?Q?PD86C89It/ClfEXYP4ZFsCHNFFz7mvzsFlGvKKYq/jyxIeELr6uWTMHgKEpb?=
 =?us-ascii?Q?yDktig7fronGGKX38IfVewkkGKZid+F18i7rKw7CWEhto16QmOszX61smHWW?=
 =?us-ascii?Q?SftvGqa5Vcajq5IKSxKMIRATh1tnsXEp6fMRf1bMTyUEeqnUqv72XiXTl+EL?=
 =?us-ascii?Q?25n+rJIjI5kK8UGQt9TEgACC8fYsByMQia7yzscX8okfMjwwVI0zFvk+9+uh?=
 =?us-ascii?Q?laWihT3HufZ8Vicw3t8QVyH9AXwKujSqfFx/MOHvL0hibr/mp7dWBD0+sKFf?=
 =?us-ascii?Q?XnCMT7Mj4mSZowRoUYZ5fAN5Bt37MLiHL+BMqN3qxKHoTm6P2gITBCDI+3Oy?=
 =?us-ascii?Q?C8OVbCz7aOwzUYOz+BoSOfijzBrEAVDpv4bRiu2SZ0A5rmBVaY08k5Oiq8mS?=
 =?us-ascii?Q?02xMp/LmeUU1p13K/pVoGLd66mc5tLRXFFJ6aaAdFNQNT8tGH9FHmFmQsBch?=
 =?us-ascii?Q?WPzeHkKi3SZKVnKaRfWy/fQJA4JR5MO84cDC/Q80jK5+BPIJkSuHxEkYhKLr?=
 =?us-ascii?Q?tEZ5WtdcOAc/nBf3Ul7vuiNzVS/i5vH35pdyWauHDhuxe8KUIUyX0TLvRa7U?=
 =?us-ascii?Q?DW1CJfzPnXTo9sib1DnIYK1/hEHFL3W2o2/TVnjISsokix/R5qA4YFOeTg9v?=
 =?us-ascii?Q?oLgR+IV3Vfjh8sX2e3EHPhj1pcS0HFl2YkEj?=
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(36860700013)(82310400026); DIR:OUT;
 SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2025 18:57:07.4542 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 875fa1f4-f4a8-47d5-3b71-08ddda9b3388
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: SJ1PEPF00002320.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR12MB9257
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V2VsP58gcTBgl+B7yHn1gkPfe18/m3I0VOOzDPttrck=;
 b=GrpmLrxG32IwIQqtm5JIBnUsro/1XZKoUkJPaBL9GoSaQXnTm6rTcHzRJPRABvrhT8KDU+qeHbqJQaWTNhu0GXukezHQVac5b+N7BC0cYSS4c29fcRPRfUusBN+TZP2PzQ4HkRDemSEr5XhYnxiwve3lHDUVw9fNWTph+UJwtYqqX21OJXiIdhEZPgXg9I0sz54+HR1WPuYGPP210UmKI/5srlG69omq7BvkaUgiQPxjkOT62CMmDXNuiVP7B9iD9toi9G1e6lSKlVijWZl3VFju4PR01UI/TgG9owaFpZnueBt/teZmDiIoDPyugOElIPXjjm+gU19RmIt3sTRZXg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=GrpmLrxG
Subject: [Intel-wired-lan] [PATCH net-next V3 2/5] devlink: Move health
 reporter recovery abort logic to a separate function
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

Extract the health reporter recovery abort logic into a separate
function devlink_health_recover_abort().
The function encapsulates the conditions for aborting recovery:
- When auto-recovery is disabled
- When previous error wasn't recovered
- When within the grace period after last recovery

Signed-off-by: Shahar Shitrit <shshitrit@nvidia.com>
Reviewed-by: Carolina Jubran <cjubran@nvidia.com>
Reviewed-by: Jiri Pirko <jiri@nvidia.com>
Signed-off-by: Tariq Toukan <tariqt@nvidia.com>
---
 net/devlink/health.c | 31 +++++++++++++++++++++++--------
 1 file changed, 23 insertions(+), 8 deletions(-)

diff --git a/net/devlink/health.c b/net/devlink/health.c
index ba144b7426fa..9d0d4a9face7 100644
--- a/net/devlink/health.c
+++ b/net/devlink/health.c
@@ -586,12 +586,33 @@ static int devlink_health_do_dump(struct devlink_health_reporter *reporter,
 	return err;
 }
 
+static bool
+devlink_health_recover_abort(struct devlink_health_reporter *reporter,
+			     enum devlink_health_reporter_state prev_state)
+{
+	unsigned long recover_ts_threshold;
+
+	if (!reporter->auto_recover)
+		return false;
+
+	/* abort if the previous error wasn't recovered */
+	if (prev_state != DEVLINK_HEALTH_REPORTER_STATE_HEALTHY)
+		return true;
+
+	recover_ts_threshold = reporter->last_recovery_ts +
+		msecs_to_jiffies(reporter->graceful_period);
+	if (reporter->last_recovery_ts && reporter->recovery_count &&
+	    time_is_after_jiffies(recover_ts_threshold))
+		return true;
+
+	return false;
+}
+
 int devlink_health_report(struct devlink_health_reporter *reporter,
 			  const char *msg, void *priv_ctx)
 {
 	enum devlink_health_reporter_state prev_health_state;
 	struct devlink *devlink = reporter->devlink;
-	unsigned long recover_ts_threshold;
 	int ret;
 
 	/* write a log message of the current error */
@@ -602,13 +623,7 @@ int devlink_health_report(struct devlink_health_reporter *reporter,
 	reporter->health_state = DEVLINK_HEALTH_REPORTER_STATE_ERROR;
 	devlink_recover_notify(reporter, DEVLINK_CMD_HEALTH_REPORTER_RECOVER);
 
-	/* abort if the previous error wasn't recovered */
-	recover_ts_threshold = reporter->last_recovery_ts +
-			       msecs_to_jiffies(reporter->graceful_period);
-	if (reporter->auto_recover &&
-	    (prev_health_state != DEVLINK_HEALTH_REPORTER_STATE_HEALTHY ||
-	     (reporter->last_recovery_ts && reporter->recovery_count &&
-	      time_is_after_jiffies(recover_ts_threshold)))) {
+	if (devlink_health_recover_abort(reporter, prev_health_state)) {
 		trace_devlink_health_recover_aborted(devlink,
 						     reporter->ops->name,
 						     reporter->health_state,
-- 
2.31.1

