Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9D3B0A6BB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Jul 2025 17:00:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E114A80FB9;
	Fri, 18 Jul 2025 15:00:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TIkaOE_rcN_v; Fri, 18 Jul 2025 15:00:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2BFDE80FF2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752850817;
	bh=Nr+tRczTen+ZI+8uF5GmYN+El5laIvaR05aS6PcFkf4=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=H5MCksIKl1iT9qrHh2Yk07nY8k/BBEoGZjrWlTkznABWqSdOPQNm68ZHdfeMbBayk
	 BBRo5r515aHj84w2fbpo657HO1MmO2dSLljC1+6hQTJAlC86IBaNm3YpklWrOCsMUh
	 L2kazwu3z7RPhRgr8CudZVpRAmnCB2tS8QKqmGRix1zvWE8ZIzLk6/qTqqKRapTEY0
	 Ep0DHxuSA6Lh88ZErfpf+9QYNv/QPLsQoOq905MGEHnDe2ouGzJmC+voUmeKuZE1+E
	 k3WaPBj5GBFRRg6ZJUaN5KyrrY0e9CI/CE4rU8vKYRo7H0LOnU0YhaEo8kNS77C4fQ
	 NzPocC5VkJDPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2BFDE80FF2;
	Fri, 18 Jul 2025 15:00:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4D8BC95B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 16:08:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3F739410E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 16:08:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d8kAHT-F5aA2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jul 2025 16:08:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.94.67;
 helo=nam10-mw2-obe.outbound.protection.outlook.com;
 envelope-from=tariqt@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4C8D14051A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4C8D14051A
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2067.outbound.protection.outlook.com [40.107.94.67])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4C8D14051A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 16:08:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l6zAhdWcE8tM3odRZReuCbq8v1nIPe2oNhKzAv/7iUluc9hkhFENLPlwV0FGKFZ6L4NeyfDEgmQddIjNaM2bawiYHjgbE9dySQXH75lfIdZs5e3rxnDKV9X5ZcyiCi9D5Bk23DEUBtglwmakV/WWCR6p/K7D0GWWY0dwo1eAd3ucRN2Vtoy5RCpcQbQGWSI6+FS/RzKxC6QdNX3CuiDusYjYrTG5FWewp8zP0EgsRF2rvoOlNBeSGyE4eJJ3r4YTrKvZfvBr8CgWiLJHQPOSbX3FKDYAdbI3EA0M4iGczLXknmn/ciZC/o8rWYWs70CFDnyPsGn30jfLUT4Hw9tfDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nr+tRczTen+ZI+8uF5GmYN+El5laIvaR05aS6PcFkf4=;
 b=oziKOiBd/OL0XJ2ZOA27lwuCJWorFtd7oVWaXi8XzgymSe+6J60OKw4O3NpMa8Z031LoLRK9y9KIH7AxI2paGP782m5mQdZ0M0yYg8hP4B1UhfDqQOt0dQ18g0gOsT/ICWH6OkR/JzWDalQXZVPMW07nO8Hx2VQWSvwzySqwsNTNBVmMYyfnhfoWehKFFFcNaGWkg4e+AKDc41E5q0lQkd0LOLays+K5Wx2RhJYxousRfEGmi50l+QTqp63y0FjmzViOgufZ3itayprVVJTBevPdJsAR4sq1pNR8HZQF1XlG9lxUYF3xn1AbWU199YElDwLFJe8qKwJKkU+v9BgXBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=google.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
Received: from BN0PR04CA0060.namprd04.prod.outlook.com (2603:10b6:408:e8::35)
 by MN2PR12MB4063.namprd12.prod.outlook.com (2603:10b6:208:1dc::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Thu, 17 Jul
 2025 16:08:43 +0000
Received: from BL6PEPF0001AB59.namprd02.prod.outlook.com
 (2603:10b6:408:e8:cafe::7f) by BN0PR04CA0060.outlook.office365.com
 (2603:10b6:408:e8::35) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8943.23 via Frontend Transport; Thu,
 17 Jul 2025 16:08:43 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 BL6PEPF0001AB59.mail.protection.outlook.com (10.167.241.11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8943.21 via Frontend Transport; Thu, 17 Jul 2025 16:08:43 +0000
Received: from rnnvmail204.nvidia.com (10.129.68.6) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Thu, 17 Jul
 2025 09:08:25 -0700
Received: from rnnvmail203.nvidia.com (10.129.68.9) by rnnvmail204.nvidia.com
 (10.129.68.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.14; Thu, 17 Jul
 2025 09:08:24 -0700
Received: from vdi.nvidia.com (10.127.8.10) by mail.nvidia.com (10.129.68.9)
 with Microsoft SMTP Server id 15.2.1544.14 via Frontend Transport; Thu, 17
 Jul 2025 09:08:16 -0700
From: Tariq Toukan <tariqt@nvidia.com>
To: Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Jiri Pirko <jiri@resnulli.us>, Jiri Pirko
 <jiri@nvidia.com>
CC: Saeed Mahameed <saeed@kernel.org>, Gal Pressman <gal@nvidia.com>, "Leon
 Romanovsky" <leon@kernel.org>, Shahar Shitrit <shshitrit@nvidia.com>, "Donald
 Hunter" <donald.hunter@gmail.com>, Jonathan Corbet <corbet@lwn.net>, "Brett
 Creeley" <brett.creeley@amd.com>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Cai Huoqing
 <cai.huoqing@linux.dev>, Tony Nguyen <anthony.l.nguyen@intel.com>, "Przemek
 Kitszel" <przemyslaw.kitszel@intel.com>, Sunil Goutham
 <sgoutham@marvell.com>, Linu Cherian <lcherian@marvell.com>, Geetha sowjanya
 <gakula@marvell.com>, Jerin Jacob <jerinj@marvell.com>, hariprasad
 <hkelam@marvell.com>, "Subbaraya Sundeep" <sbhatta@marvell.com>, Saeed
 Mahameed <saeedm@nvidia.com>, "Tariq Toukan" <tariqt@nvidia.com>, Mark Bloch
 <mbloch@nvidia.com>, Ido Schimmel <idosch@nvidia.com>, Petr Machata
 <petrm@nvidia.com>, Manish Chopra <manishc@marvell.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-doc@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <linux-rdma@vger.kernel.org>
Date: Thu, 17 Jul 2025 19:07:20 +0300
Message-ID: <1752768442-264413-4-git-send-email-tariqt@nvidia.com>
X-Mailer: git-send-email 2.8.0
In-Reply-To: <1752768442-264413-1-git-send-email-tariqt@nvidia.com>
References: <1752768442-264413-1-git-send-email-tariqt@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain
X-NV-OnPremToCloud: AnonymousSubmission
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL6PEPF0001AB59:EE_|MN2PR12MB4063:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a29512f-7c08-484d-9555-08ddc54c33e2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|82310400026|1800799024|36860700013|376014|7416014; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?dfFCBLLFXlIMblZKwkI5sdXsfQ5IHC38LFUwgsYDheXtsJcwFjzDQnqfK/mI?=
 =?us-ascii?Q?qQL/b86Yk9YVNyMCUwpW3eLvcuT6V1Tw2ELtzJsH/BAezbbiuDxoTGtwV1ds?=
 =?us-ascii?Q?dHcKUmhl1V/rFlgvBSuezp7s5Js3KfVZWR+me/Hx0/HhKNAPkozA3gegApK5?=
 =?us-ascii?Q?F6DnFuvmz2FI1iyJoKyjDTCkZFJXm80rwYaHuvzn6tuGfhJ9TMaIFl2GxXL0?=
 =?us-ascii?Q?BDxIIZN3ogc+bROZTbzgueEZO15SSyW+wXTLRoLRANRdG9MBT8Cv1NabOTsU?=
 =?us-ascii?Q?uA7hQ2CFAT4l6BNDzQ0ByXutd3g+dwUUa/khoXnC8C0PkEAjlBy/bFbpgBOn?=
 =?us-ascii?Q?AvZRX3CFsUV1Prd83bNLJakEwQ1ip2hwElLLpb1nWRaJ1jxlDZ/nEAdGUOMb?=
 =?us-ascii?Q?ePDlLm4Jv8eP+ySIV8wjJwoGDyhrWYwyv/tYlyETEGj3INztYu6DqCKSw+uK?=
 =?us-ascii?Q?yLkA9IPv8H3u9A4uhXjDdPDMcSpW8mDvPyJRA960Elx89VTK4cQGJfu11IIh?=
 =?us-ascii?Q?Sz/NIm57SsAYttzxzW59Nt7ew3/ghiUYCpNRRbnHWM/tUlq50HG8T3to/yxG?=
 =?us-ascii?Q?s1r9q1yoVwJQYTveCx29bV0iAIsx1VmhMVyx0t9MGXmXA/Drn4v5qMFzfGcO?=
 =?us-ascii?Q?tpZdvhjZrOcvHdPuRcl/XZJX1ZzIttRZrPOk7YOJGOJrpWHzua9MQPPw/KVw?=
 =?us-ascii?Q?9DqOg/LPeyPGmndp7tRhBVLQJo3eMP+3vgDHMwN+otBfk6FxIxKU2mieP42d?=
 =?us-ascii?Q?GnlCP7ftRyZv3NsNkI/IbFL7vAuOcU0puJsghDyUCV2BblblqB4rfv3L9gLl?=
 =?us-ascii?Q?cM+dHMg9LfHO1ytBhwdftkoYiaCJBkVaYA92cUoMU/vRjixIyUejqiUfIiNx?=
 =?us-ascii?Q?H8zjN40bR9jKSeIASEfDFO4TcFN30hkeVB/vxehvxXmZ6mexxMDHykPlGYVI?=
 =?us-ascii?Q?+JD9LVIm8I9zxTcmfhXtoG0ZmVf7OratSpUT6IF0IQWzjVOHG91LL+loS2z5?=
 =?us-ascii?Q?EhHoJ6NYxGhroOFnpkGIzL+oj6lcWEwNhOYFcrsOj7bd5FrwtfAn2Yrs5fJY?=
 =?us-ascii?Q?jzh87tP6z2nZmF+dRJ8keVL4VnmmSbEP6UXROkZX0LoKacgDEdwsrCGNq0K9?=
 =?us-ascii?Q?1a9pR8aOH3e5qHUYTrdC7/jiRC60f0PbnmNypiL3jbLyujzWfc0aDYrDjcPI?=
 =?us-ascii?Q?ASuLqBD3UrcMOBIUpch97Nc7WPgOcCFKYgjKhTEEJNX2GEbdJK6XEFCCDXYi?=
 =?us-ascii?Q?9o97TGFQsWIfUv+no9Yrr8E7q7STVuMqYlBs2jOOokgbhjx+1bCgiIcWPJ0o?=
 =?us-ascii?Q?QmPx1wKC4mAsUIF8oAoX5BiRgS3UcX7ZwuAzbNVs0zWJi+Zky94AFfqJL1fk?=
 =?us-ascii?Q?6yT/bAkkYYPpJEBvRVC4PQqdDMZ3lHsTExpx4x77zh3MUUeS2ZG1Nl0iHWkp?=
 =?us-ascii?Q?PTN/pB6woSdUMFSKaIRbV1yCDow/O+OA2xIZlwDGMoIwa3PdQURPZ5U7zsxe?=
 =?us-ascii?Q?Dx8qpYg1DRLpDBUnVXZWlq6/ruvOYoVQa73J?=
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230040)(82310400026)(1800799024)(36860700013)(376014)(7416014); DIR:OUT;
 SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2025 16:08:43.4228 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a29512f-7c08-484d-9555-08ddc54c33e2
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BL6PEPF0001AB59.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4063
X-Mailman-Approved-At: Fri, 18 Jul 2025 15:00:13 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nr+tRczTen+ZI+8uF5GmYN+El5laIvaR05aS6PcFkf4=;
 b=Gb2T8PReTu9I+ip+6llE7PY6TKxmNwKv0JbPhd08D8yO4UCKc7uXUCZY+OBTmIsH+Qi323jHk3m9+ehoU2CGL4PCZyyrUlgmr6nbfSlbFKQ9KKLVh5ZxXXW6a/9g0nOgL9wXolo2yQedugNGlYjIu+/KGzX2NzgTl4WG8I/pMCj9p5ZrD7eFF6UVDsKrsBDomyV6pspRmsL8A9zQKJuFiZabjIzFCSDbfDA+lxUJUi+/tm1biT5/ZlOfCgCgfw7W6cGwZsO9t4+lKFQb4DzIapwdQXdioS0KU1o7Ou9S4qQRnvYxbS2JqgnDhUb/1+AT4LwaPz2pMzr1h1lhp06IXQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=Gb2T8PRe
Subject: [Intel-wired-lan] [PATCH net-next 3/5] devlink: Introduce grace
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
Reviewed-by: Jiri Pirko <jiri@nvidia.com>
Reviewed-by: Carolina Jubran <cjubran@nvidia.com>
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

