Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A3CB0A6B8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Jul 2025 17:00:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0888180F93;
	Fri, 18 Jul 2025 15:00:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ikooVdBloplv; Fri, 18 Jul 2025 15:00:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D01980ED7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752850815;
	bh=7N/yYaN7QEN30kqsTZoH9fjqVHCBTqFJEPNTZdvmZT4=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6JxEbwf38a7NAsDWgIeGA6Bsitl3ZiyfkZ5FG6ezXdD+j9kKO+8fMVKDoyboT3V6M
	 m81AmfvHfz1kH88rh/8JJx5z2XFhpZp+1a53IDs7AWdCldo/1cxN6B01cjt0XR3Hs/
	 tCM8nrzj2OpdKwEImRBC4avFZLocDEv8s7TmHL17LHsYY7xHvxOCrKQYGJj2qIMOSE
	 zZQZGK2Xe05iEr/+Z7ZDiW45khMLIuZGTdtQKWPldI00fsoOgcvVb/MZW4eoVQWkCR
	 VMxTAnUiLJ+eERwCT9FiOB2jcsVoXsRmTF/0ElSy8dwWeRDg0uzHzeCaC+10RZkgJU
	 znFV1m6md5Tvg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4D01980ED7;
	Fri, 18 Jul 2025 15:00:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 70124A59
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 16:08:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8D57782F76
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 16:08:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id daoPSUohSk1g for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jul 2025 16:08:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.93.69;
 helo=nam10-dm6-obe.outbound.protection.outlook.com;
 envelope-from=tariqt@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C6F2681C2F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6F2681C2F
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2069.outbound.protection.outlook.com [40.107.93.69])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C6F2681C2F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 16:08:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NtaH57LRqNh0lRXLFcbfWAzjRg2C+2bczcjTKwUuaFLBln9iCzz02sbcFjoiUbCsJYlZeU+sH93WkYseqQkHbd/PHVa3vFhGgbt+MvgHuuosTg71GZRZULfRacDkA00z9xtFeRjhmwvZhJb3cg/Vkmx//2wwLSyqJDwZZUO7T/YyMWKml0bEjQpIErOfkVrNWpRgrKaC86Cjrw3I9kS4yhYazdFMapDr4KlfVmYAbE09+tI+5U0uoyCgUIXiKsxanROeqhO1dANVgdFZtWGc3TtUHGdiykkEIMBpMP6wyYogTTPYFocE0PEpTmQuTSVkaSY/FYZlvFUxRV6/6asjyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7N/yYaN7QEN30kqsTZoH9fjqVHCBTqFJEPNTZdvmZT4=;
 b=uJ5F3ezwe6ww/lyQRHwrnzoMa5EVVGjaraaGBzPiqJJKPGnwAf/kSfNNPRWIWIdIOWyel/8FdalOuC841UNAld/lrdMC/U/bEKH2uhGN3NH4n98OHasDHr643l8oaIyYng+1o7RdiohmVtQJr6GMCOJ0D0X4MCNj4BkL3l97sTjEc8SUrgIDMKe47YsqU3W8oMuC1OcPIK9OJ8fQOOJCOWNsvfUMhCavB5lgrqNKW4cqNCzMDQlFcjo+QdkS1Noh/p2IzCd9V/KJNmXb3ud0RIskBag7CBt2w9GXlnJCN7ZyD9Ykdec/l1stSEKTU9Kb9uiD1O0X98wNH3/lRcCuUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=google.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
Received: from SJ0PR13CA0096.namprd13.prod.outlook.com (2603:10b6:a03:2c5::11)
 by DS5PPF4ACC15C0E.namprd12.prod.outlook.com (2603:10b6:f:fc00::64c)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.30; Thu, 17 Jul
 2025 16:08:22 +0000
Received: from SJ1PEPF00001CE3.namprd05.prod.outlook.com
 (2603:10b6:a03:2c5:cafe::64) by SJ0PR13CA0096.outlook.office365.com
 (2603:10b6:a03:2c5::11) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8964.14 via Frontend Transport; Thu,
 17 Jul 2025 16:08:21 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 SJ1PEPF00001CE3.mail.protection.outlook.com (10.167.242.11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8943.21 via Frontend Transport; Thu, 17 Jul 2025 16:08:21 +0000
Received: from rnnvmail204.nvidia.com (10.129.68.6) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Thu, 17 Jul
 2025 09:08:00 -0700
Received: from rnnvmail203.nvidia.com (10.129.68.9) by rnnvmail204.nvidia.com
 (10.129.68.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.14; Thu, 17 Jul
 2025 09:07:59 -0700
Received: from vdi.nvidia.com (10.127.8.10) by mail.nvidia.com (10.129.68.9)
 with Microsoft SMTP Server id 15.2.1544.14 via Frontend Transport; Thu, 17
 Jul 2025 09:07:51 -0700
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
Date: Thu, 17 Jul 2025 19:07:17 +0300
Message-ID: <1752768442-264413-1-git-send-email-tariqt@nvidia.com>
X-Mailer: git-send-email 2.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-NV-OnPremToCloud: AnonymousSubmission
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00001CE3:EE_|DS5PPF4ACC15C0E:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d8b9ea3-63bf-4278-bfca-08ddc54c26ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|82310400026|36860700013|1800799024; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YkpTamNjOTkvSU4rRU5Sbk4wMyt3SFgySW8weGNaRkE4eTlxUm1USjNkQUlt?=
 =?utf-8?B?anhkU0JBNHN3OFJUN3pLd0hXblpnQnVpMnhHL25QZzRSZ1lJWWh2aDJka1c2?=
 =?utf-8?B?ZHM1WC9UaEZGZFEyamFFSlk0MjB5SVpQdDM4M1dZK213bDlKQ1J3RmE3Zks2?=
 =?utf-8?B?NTJaSHhscllUTHB3WWF2cWVWU3cvNVR0RmJGQ3BDU2c2ZWd6UndkZ2FMRklV?=
 =?utf-8?B?QmNjUFY0Vy9lSFVmOEJVclg4d1FZK2NCM1dSbzJnL3dFY2U1YmN3RTVidXNs?=
 =?utf-8?B?K29SZ01uUFdxaXRsNURnenIxUDJzd1NMRE0rSmFtYzhVT0NYYUtWN0dpcEdh?=
 =?utf-8?B?d05IRXpYd1Yzb1lhSVhTdStIb2J6YU9IV1cyRGtRR3JZWEcwb29Zcm42MFFq?=
 =?utf-8?B?N2NVN0RJWWpzZE5RYWlrU3lrMVBibzhiakJFNkxhUVBzVHlNL1pENnc4OWQ2?=
 =?utf-8?B?UVVvdXpoRkJCSWwyUjN5bStsRUxtN2FpdVJvYUJFTUNXUDU4VlBSakhJK0h5?=
 =?utf-8?B?L01iaFd0MHpHNzU3YURDUjRKWnlOWGRxZDBrSW50aS9tR3Y5SE53SDdUQkdv?=
 =?utf-8?B?a2Q1RnM5WnRoZ0JVRE52ci9BREFXV3Y0QkRpWXZNRHk1am9paWgxSmFvVzRk?=
 =?utf-8?B?dnRQZUZiQVZSb0E3UjQ0VE5NUUJkWFNSMVNWaEo0RWtHU2N0bmNiL2JGelBV?=
 =?utf-8?B?TEpHckZTVDVqWU5pMUNZTnp2eGxvSi8yY0tGWlk1U2xGd2R6WW9sYXlpeUNJ?=
 =?utf-8?B?Y2I4dUVGajM0cWs5OVE2MVBCMCtGbzRNRmVleDN0Y3FnZE9raWVrYTd2YVFa?=
 =?utf-8?B?cDg4Sy96eXJqa2VocmJYclB5VThVNEllUTZHVElDTkRKTTdhRGJyMFh2TUQw?=
 =?utf-8?B?ekR5QUN0ZzQ3S3ExVTg3c0thN0ZTMUxOTWVreHFXNmtuaUh4Q1VZcDA3U1hW?=
 =?utf-8?B?VFcremp1dHEyR2o0bHVaQm04MENyTUh6QWs0SnBoMWFKRzFoWmVMeW1keDFT?=
 =?utf-8?B?bFhaalRlRFgzdVpZUTVKT1RobDNzbHRLOSsrVjhJeHNjSm5FVXk2S3k1SnFp?=
 =?utf-8?B?TXhIdGZGdnJuYXBMZkkwenE5a3htU1ViTlJkZFBZczZZei92NmdxODF2cUJ4?=
 =?utf-8?B?WUYwcWlWQS9HSUYxTUxNRS9SYmR5eWNFUk5YUVRQWDAvcjF3bndxbEwzS0JO?=
 =?utf-8?B?MW5OOUI1cmtDcFh4cWxxdklobXZxQ2RyWW5sd0NZZlBWaU5lL3lDUzJLV0tp?=
 =?utf-8?B?bGhCV2oxSHpEbnc1QjFmOStvekN4ZTdaaWJEZmNjRXZITlRNb1htOFc5bG5l?=
 =?utf-8?B?VVRhczRsK09DclJpUmtKY21SaUQ2Y1hDcjhtbnR4VmEyOXNzVlprWUd3c1d6?=
 =?utf-8?B?SWJEcHhjZFVFdGpIM3lmRjByM0N4YzBVSHErQ0Z5NFJvQm1ZcWVFUmw4dEhS?=
 =?utf-8?B?cnJ2ejBDT2NBd0l5UlprNGYzMU40UUtMeStaZVJEdXBoYXNLdnJPMmVGd0lL?=
 =?utf-8?B?TDlLU2tXUGZ0OUMyek95aWMvNDgzaDB1SFNuSXV6d0ZPQnFDd0pwZ0orbm9I?=
 =?utf-8?B?VWdSbjVubVA5dEd4djVva1BvTEVsbFo1bmRvTmNSY0E2UGNtV2dBV2tMWDhl?=
 =?utf-8?B?SS9DSkVqK2FpajYwak1QcVc3aTBScGNBWTVUcDNrVGZkb0FzeE1FbmhoaDV2?=
 =?utf-8?B?Z25uNzRlM0cyNnNZMWI0elRON2U5RmNPQk9XYm9Tc1RQc3RYY2xYUVkyOXR0?=
 =?utf-8?B?M3dqank3QXV2T2tTT1pSaVVvRW9PSVlmLzhjdnA3VnlSNzBWL2hjNnN3V1NT?=
 =?utf-8?B?MGd4VnpUdnlJK1FzVzk4bUVnMkcwNVZnNXh0ZXRwTmpSZTQ5VkdyMlFiSFR5?=
 =?utf-8?B?aTJpTm1iY3gzMGtQUHRJY0F4Z1UzWDU4RSs0UFZvcmk0WGJWWnJjWGF2c3E5?=
 =?utf-8?B?bDR0QTBTM0oxdHFmS2Z2N0JhWUZsNVRFSkpUMjY5VG9mTmc0SmRzSG5MeHRK?=
 =?utf-8?B?T2EzRzhxei9PMnc3U2ZRbi81MEhOVURFTTVVU0VQalgzZVdmUWkwQ2dMdUtp?=
 =?utf-8?Q?EtGqpg?=
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(82310400026)(36860700013)(1800799024); DIR:OUT;
 SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2025 16:08:21.2888 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d8b9ea3-63bf-4278-bfca-08ddc54c26ab
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: SJ1PEPF00001CE3.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS5PPF4ACC15C0E
X-Mailman-Approved-At: Fri, 18 Jul 2025 15:00:13 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7N/yYaN7QEN30kqsTZoH9fjqVHCBTqFJEPNTZdvmZT4=;
 b=s2aNDXY1AUzLCv0tfCyOFo0VG4aFMwxp0BWyJP6DwkfyHX1PkLqwuRGopu5xg00kdN5SxzGs7e9fNgQCKo+gjYkF2qv9vtsMzk/s8GLXlDIUmvpMRAyTU/zOpPpY4eaO2kQ/3D7BWpKgn+KGYyRrvvRvlvhaRZDyRyFxS2eRS3iFisle9scZcEjJF/FrrXQS9LEpFuqyNQsM4I3MjEn/wBowolO31/VGVLMwOMbSdNhCCWCG2urTHWe+5Lr1aRkTN2JWNxKZeG9vgB19CrLUARbmdHrUKLp+2QDTMdPYiMUK9mM3bLBAL3kEQ9xJFUqDbXYKPVAfYdxaZvwROshSkg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=s2aNDXY1
Subject: [Intel-wired-lan] [PATCH net-next 0/5] Expose grace period delay
 for devlink health reporter
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

Hi,

This series by Shahar implements graceful period delay in devlink health
reporter, and use it in mlx5e driver.

See detailed feature description by Shahar below [1].

Regards,
Tariq

[1]
Currently, the devlink health reporter initiates the grace period
immediately after recovering an error, which blocks further recovery
attempts until the grace period concludes. Since additional errors
are not generally expected during this short interval, any new error
reported during the grace period is not only rejected but also causes
the reporter to enter an error state that requires manual intervention.

This approach poses a problem in scenarios where a single root cause
triggers multiple related errors in quick succession - for example,
a PCI issue affecting multiple hardware queues. Because these errors
are closely related and occur rapidly, it is more effective to handle
them together rather than handling only the first one reported and
blocking any subsequent recovery attempts. Furthermore, setting the
reporter to an error state in this context can be misleading, as these
multiple errors are manifestations of a single underlying issue, making
it unlike the general case where additional errors are not expected
during the grace period.

To resolve this, introduce a configurable grace period delay attribute
to the devlink health reporter. This delay starts when the first error
is recovered and lasts for a user-defined duration. Once this grace
period delay expires, the actual grace period begins. After the grace
period ends, a new reported error will start the same flow again.

Timeline summary:

----|--------|------------------------------/----------------------/--
error is  error is    grace period delay          grace period
reported  recovered  (recoveries allowed)     (recoveries blocked)

With grace period delay, create a time window during which recovery
attempts are permitted, allowing all reported errors to be handled
sequentially before the grace period starts. Once the grace period
begins, it prevents any further error recoveries until it ends.

When grace period delay is set to 0, current behavior is preserved.


Shahar Shitrit (5):
  devlink: Move graceful period parameter to reporter ops
  devlink: Move health reporter recovery abort logic to a separate
    function
  devlink: Introduce grace period delay for health reporter
  devlink: Make health reporter grace period delay configurable
  net/mlx5e: Set default grace period delay for TX and RX reporters

 Documentation/netlink/specs/devlink.yaml      |   7 ++
 .../networking/devlink/devlink-health.rst     |   2 +-
 drivers/net/ethernet/amd/pds_core/main.c      |   2 +-
 .../net/ethernet/broadcom/bnxt/bnxt_devlink.c |   2 +-
 .../net/ethernet/huawei/hinic/hinic_devlink.c |  10 +-
 .../net/ethernet/intel/ice/devlink/health.c   |   3 +-
 .../marvell/octeontx2/af/rvu_devlink.c        |  32 +++--
 .../mellanox/mlx5/core/diag/reporter_vnic.c   |   2 +-
 .../mellanox/mlx5/core/en/reporter_rx.c       |  13 ++-
 .../mellanox/mlx5/core/en/reporter_tx.c       |  13 ++-
 .../net/ethernet/mellanox/mlx5/core/en_rep.c  |   2 +-
 .../net/ethernet/mellanox/mlx5/core/health.c  |  41 ++++---
 drivers/net/ethernet/mellanox/mlxsw/core.c    |   2 +-
 drivers/net/ethernet/qlogic/qed/qed_devlink.c |  10 +-
 drivers/net/netdevsim/health.c                |   4 +-
 include/net/devlink.h                         |  15 ++-
 include/uapi/linux/devlink.h                  |   2 +
 net/devlink/health.c                          | 109 +++++++++++++-----
 net/devlink/netlink_gen.c                     |   5 +-
 19 files changed, 191 insertions(+), 85 deletions(-)


base-commit: a96cee9b369ee47b5309311d0d71cb6663b123fc
-- 
2.31.1

