Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E09729B7E35
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Oct 2024 16:20:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41B8540768;
	Thu, 31 Oct 2024 15:20:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X2bqmIAJo-0K; Thu, 31 Oct 2024 15:20:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 146A440735
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730388023;
	bh=hdLzqf/yTk55heKa4L26mVR5RIL4KsJIu5JPiJiDxC8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FiisIzaaqy3GVFENySTVt/doNuoBh6hiDobl45OtqiFre/BQl+NuI59wlKNCvKWOs
	 KO0RpdHgWXgwGSgriFtcEnj0wO9x+tOSZ04uRtuAg94Lvyhx+6GHn65tKDF/iRK8D4
	 LhWZaX8HUqyr6nfwmxWz9XDzfRTWKPdTGYN/0W24VuyK0rICbdRbve4eCUv2TsZ3CU
	 8LqtMT0XjxSfw/iYSqL3TCSej0LVBIw7a3Z+whygPN0s9PyZoVLCpk/Xiesjk+t6mw
	 gQnjrXuPfC4Q907kmHWLweF8OsdWLOkI0zKEw43fv2WGAF93wAg31+aB2Ty4pdp7SS
	 wpf9BzRoaMw7A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 146A440735;
	Thu, 31 Oct 2024 15:20:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8163C494E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 12:49:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6FBF860A89
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 12:49:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EXYT8nkxTML2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Oct 2024 12:49:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.244.103;
 helo=nam12-mw2-obe.outbound.protection.outlook.com;
 envelope-from=louis.peens@corigine.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 56D1860720
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56D1860720
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2103.outbound.protection.outlook.com [40.107.244.103])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 56D1860720
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 12:49:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DZjHI1FvPSv5cooUrudqbiCqI6Vvh5e+sYVhIJHhzuKhInAIUAOP8lGJliGMLoujxgLYuF0E5PcSf0XszAlA6pmxyn/ec9NAZriAWrxpeiNogOWJGO+bZ2nIlpiBRDZYGeASiDRmWWhe5E+hK3Kx+j4fHc/83UTwiZoVETJA6On2TZ/iJ7a9+IbMAq5ZdWy6k/5wO3q8FAg5FG7nN/ZixJgdp5WH/K/8jFn4xcDg2kBO4gBTlDIog8FV+5RnCQEEYvXubB/92D0fYcnkAkww29+itII8BiY9nrF9vu6Jvn/BDUGFavUkz4y6bGlg/tVJAt75oJE4CZdq6fu8bTwShg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hdLzqf/yTk55heKa4L26mVR5RIL4KsJIu5JPiJiDxC8=;
 b=LM4+K1qKLlq6+MN2U7iQZzfTMDZ3V3UjfA9PTgVXlvPDCxAn8Eg/t58gocrZGruMJzTow/tgxIldJgL51VBW57z1T86KB4EYvkTRaZUva6B/Daihhs6WDsxyoO6Il25A3m44I751jrRLr+10vrm0lQUWPOH3DCNEX9jGDYb/j1+mJFcdUgK8AvmPe4F2JH+vyh2sHlDeGRaZ1W7eMI9PmwVxmzMWiS70hCvAaZiBUd1V8PX65uFPCJJJvbyObqWRg1xTcXvWcvC6fU1j7npjp7l6CLvef/HNv2y7RrwX20tX1UpVfc2WyhFx5F78VpPoRxJSnIt3rvFZ+2ZPOQK9Ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from BL0PR13MB4403.namprd13.prod.outlook.com (2603:10b6:208:1c4::8)
 by MW5PR13MB5414.namprd13.prod.outlook.com (2603:10b6:303:195::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.24; Thu, 31 Oct
 2024 12:49:31 +0000
Received: from BL0PR13MB4403.namprd13.prod.outlook.com
 ([fe80::bbcb:1c13:7639:bdc0]) by BL0PR13MB4403.namprd13.prod.outlook.com
 ([fe80::bbcb:1c13:7639:bdc0%6]) with mapi id 15.20.8114.020; Thu, 31 Oct 2024
 12:49:31 +0000
Date: Thu, 31 Oct 2024 14:49:10 +0200
From: Louis Peens <louis.peens@corigine.com>
To: Caleb Sander Mateos <csander@purestorage.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Arthur Kiyanovski <akiyano@amazon.com>,
 Brett Creeley <brett.creeley@amd.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 David Arinzon <darinzon@amazon.com>,
 "David S. Miller" <davem@davemloft.net>,
 Doug Berger <opendmb@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Eugenio =?iso-8859-1?Q?P=E9rez?= <eperezma@redhat.com>,
 Felix Fietkau <nbd@nbd.name>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Geetha sowjanya <gakula@marvell.com>,
 hariprasad <hkelam@marvell.com>, Jakub Kicinski <kuba@kernel.org>,
 Jason Wang <jasowang@redhat.com>, Jonathan Corbet <corbet@lwn.net>,
 Leon Romanovsky <leon@kernel.org>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Michael Chan <michael.chan@broadcom.com>,
 "Michael S. Tsirkin" <mst@redhat.com>,
 Noam Dagan <ndagan@amazon.com>, Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Roy Pledge <Roy.Pledge@nxp.com>, Saeed Bishara <saeedb@amazon.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Sean Wang <sean.wang@mediatek.com>,
 Shannon Nelson <shannon.nelson@amd.com>,
 Shay Agroskin <shayagr@amazon.com>, Simon Horman <horms@kernel.org>,
 Subbaraya Sundeep <sbhatta@marvell.com>,
 Sunil Goutham <sgoutham@marvell.com>, Tal Gilboa <talgi@nvidia.com>,
 Tariq Toukan <tariqt@nvidia.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>, intel-wired-lan@lists.osuosl.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, oss-drivers@corigine.com,
 virtualization@lists.linux.dev
Message-ID: <ZyN8xpq5C36Tg9rz@LouisNoVo>
References: <20241031002326.3426181-1-csander@purestorage.com>
 <20241031002326.3426181-2-csander@purestorage.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241031002326.3426181-2-csander@purestorage.com>
X-ClientProxiedBy: JNAP275CA0002.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4c::7)
 To BL0PR13MB4403.namprd13.prod.outlook.com
 (2603:10b6:208:1c4::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR13MB4403:EE_|MW5PR13MB5414:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a7b7130-47b6-4d73-28b3-08dcf9aa76a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?c/Ftqv0wIKpMdlsyPPggGsb7wRuRQa5trC96IOtdxBDmhGFKAbqcQFqvaIb7?=
 =?us-ascii?Q?2JuP/PgXEEe7fxfG3TffUAgUUL8uVS+6enUYEUNoIVFfuf8Edc8W/AeEA0qf?=
 =?us-ascii?Q?4FhtWceoFK8LwnuxSu+La3ElbEvF7o25uAfHUG2skCqZi1c3Rq75B8JbVtRs?=
 =?us-ascii?Q?gbhTeac4/lI/fI4Zu9aI+cdm8fvgi6Axt3LmlLHw7a1yepsnky/WfUNCh3qz?=
 =?us-ascii?Q?1Abfurf4eGHrOjmO/mWXCZKsZAbmv9F6eEzKqgV0/U8mvHqQDypxjEw5yVN0?=
 =?us-ascii?Q?GqHv8n3/+MpgatBQb2P0a25thp3OfTcN0f3u6klat32WmuRojJj3Nghh3Gnq?=
 =?us-ascii?Q?1guUQ2QW9LEBMF6vIpTrpBj9JesUupj/9HgQ5WT8pMTkBdRwCtKIsrFUfCFt?=
 =?us-ascii?Q?JQJQtLZeshuoDJLkfIPRvoB+p9Plev/QetAN5k/Fewi9D+cI0+mmIiiHL5Vr?=
 =?us-ascii?Q?v4VkMdFfs2+0aBY2TXK+EfHo9z6wPMYzRHoaaYP8sH9+Ac4xWqGWrqLPfU9i?=
 =?us-ascii?Q?cmH2iCOvV6kN/PXLUpwCWJDtNnslD74sV4mEU/B0+1DaBYD/DbPUbufjtIba?=
 =?us-ascii?Q?qY7Jt6JkIZ3ULH65TAs5wJ7bAbmp17SaFdMV7aT7hmwML56+WxOWuYRas+kO?=
 =?us-ascii?Q?llPNkHjgL74PC9GS8I7ZIAeY/q94kz7zA1YbE0Kj/QJhvsSnc9B4XvhSeb7+?=
 =?us-ascii?Q?X5DX6zDxuoLaXJ7+G77IDuovN8l+7ue3RvPZu81z9jBWuay6V7rK6It3p+Zo?=
 =?us-ascii?Q?D6JzsHz4VWpBihU8aV/yRRLcfsBvD2XcaP1zM837SOUEj2zyQcL73bpNFivp?=
 =?us-ascii?Q?68JxdWnL6bXYDPsb7XiUJUB/ECEfUs2XYEg+v0+/e0uUNGg8o2CEZNGc8eSS?=
 =?us-ascii?Q?LXPe7Cv2TBYnw7J7Ynyie3tZjX82+Zph5ezss8WECOu+nL+BNJp9RksMy246?=
 =?us-ascii?Q?X/TS18JRy0kieeQtfwQh9UNP2VgVmpaX9vA+7/vmoqjf1Z8yia6RQLtYT3RP?=
 =?us-ascii?Q?BnX6PB5HSaF/uJtwfVZAq2Rlci/EmnRLoFkeR/Iz8YEJOR67kLnRLdh0cHvL?=
 =?us-ascii?Q?n8UH3ZAodeASBDLvP47H/A1RJGqZPUCrDaylKPYuJgNdcv6xuUSHTUvIQekO?=
 =?us-ascii?Q?oVYW+CXydXd/ryUmj3yixSCQdPirWtdKv/rWTDFU2+G8EV7Ayo+JDbXjv39n?=
 =?us-ascii?Q?ZCaDUjddukJpvnAAYkqazPyU7s+1+nl7Cvw+olLboqcOBLG+Aoluf1jaWpgB?=
 =?us-ascii?Q?3I8Xlh0E/lJNLqQZs/C9f+CD3AOvGIp+zoFaaQJGjPXNqd5yVRu4d2ng0NEq?=
 =?us-ascii?Q?AmpDEnTdN15ux5rXqlRlJIzp?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR13MB4403.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?V6yYCgQPIOt5l6NIDak0QlxNjmeokJDdNd8W5TbwD9NnrRZWDia2NrDrAUlb?=
 =?us-ascii?Q?vf7eSGPXFj9xlf+cA5KtmTCW7hCY6p1f+Cr6I6NOVA7A9b9hukA2GSrrzeKk?=
 =?us-ascii?Q?mtcFEAsGZJ46tvJGs9snHGyMb2/2Lk+WVEgYLbf+KMHK9bq9kuXkGo/shQUx?=
 =?us-ascii?Q?hTJTzTMAFYAvMllI014CKVK3ATgYCxUwlLEf5p93n7zSuGLQs90oPWQ3uBrS?=
 =?us-ascii?Q?LMO3VlwFi8OlrnkUwA1QLm6zZMFeZ2qbg0+PmuEXmHqJ6GQ9/qCSRCNPvakt?=
 =?us-ascii?Q?CCw4wAFmNgOEbd7YCs1xUX+po0XEX2gBUk4s/Z9pTzOAWfSFqaznrxkB3Mhm?=
 =?us-ascii?Q?JUIMxrnmCo7jzyIybyeAzFx3WUMMz7v6R2KebePcPa9w2GkMV1IiHYUncKfn?=
 =?us-ascii?Q?zbQpHtjvsgE5xvCm5/m6NDhZWKmBxXcjo05Lyr5n1o/6vGbb/CXThgCsUQzw?=
 =?us-ascii?Q?IT9IxPe3Sk1VayWf9kVOIjEgJoxJp0QG/GpWhHS4g8S5n4WYvCEHG/lq5YUH?=
 =?us-ascii?Q?zEfhKTvuQYyY5OcZu4cejQo62vY6NFtCfvtTCtRU6vqQWy1+Awu/cWp3W/4L?=
 =?us-ascii?Q?XXEoDNW8phtt4XxOOadjxHE/hAQvabPyI75MLjbD9LvFknhac+UKY5ELBqHO?=
 =?us-ascii?Q?ckGoTsKKvE8bcMIQhbznl42LIZDzm2wFEjIRZWUzJGro3O628zvnlnDyo8ao?=
 =?us-ascii?Q?oaQEPkUgE9WSeW8FULciCNUD9majMrLUy4dwg/PSEXod5vCoQ9ka+FUpWHsR?=
 =?us-ascii?Q?EF7m45FRiW1MdMonshPaZzP4JMZKNtopj2sfXY26pnIpPekkj/D0uC+M5Ih3?=
 =?us-ascii?Q?t95i3rLOB5spGs/2S6i8Or19a/jGReuQHPKdV0jfdux5B7pMjeZNBX9Ko3Jb?=
 =?us-ascii?Q?DM9To0sP8dqSgJmG6GP5VUEj9qLmF1jgW+eYfN4xptGmcqkxPonmuhqjzVJL?=
 =?us-ascii?Q?NxIMErde+YdvHNegDN+1hUGlEI3LBIDDVBkH5b1PDlQA3+ZOtZSuD7GowVp2?=
 =?us-ascii?Q?iFDXmZjdsmM/TrC3cd+ILsP8BRL/aZroPkylnGq3vd9z5p58TLEAD/w01Ok/?=
 =?us-ascii?Q?HA/FDZTeiFXHfNBdhnmGgmixWqNIRODsMB+kRmGwZzlhhcaW2UrG9zUeCH2t?=
 =?us-ascii?Q?wByWzsuHLdduL+76v4rlcuCd8WleD64WHnSJOW2W/iapVjZ0RksVIBZdQxsH?=
 =?us-ascii?Q?8+r9EF3eREYvQGdVxiOlyToNXFww10VQYiMFEnsMJufwHn581HENn8a+yy2l?=
 =?us-ascii?Q?aZ/GPcHfTvNRo7bAE9+PjGOdR0JnTOZbjYTglx+7Mz+lAKoC1yybHKt0PSPJ?=
 =?us-ascii?Q?DkO435CeQKN0RnER30EFnnWeNbJRtg0YdyaeMglBVkbZHUVNBQcheuS1WkRi?=
 =?us-ascii?Q?lpyTw66qSZkUwH/MHojlrhtSPAoWWzG5l+4CeU+6419s7rBgy4mc1xqfKZAJ?=
 =?us-ascii?Q?eIJOT5Ng+0aTJsp4USvy9fW0UIHOs4ochHEUaPIy+1IlSxiew2ckONSgk7v+?=
 =?us-ascii?Q?oXoDWXI2PG3kGT+Yp2zXOoet4vjN5ANXwCBbIrAZ8qFAeLgI8EQQ4VLk/1FU?=
 =?us-ascii?Q?jOwyhvuHMsx9WtQXdD2kU2G2F/0M5rumEagjMTfBycz7uTwNv1vfo/L2Da40?=
 =?us-ascii?Q?lw=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a7b7130-47b6-4d73-28b3-08dcf9aa76a5
X-MS-Exchange-CrossTenant-AuthSource: BL0PR13MB4403.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2024 12:49:31.6106 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R9f61Zk4LrodHYoH2hHLXBcixOq58vk40qQ75o2Z67QVpoPEmysiKuVpUjaKTeNU0uQYc1oZCHX12oWVdAigbTquI/oSQF4t1w1aQgWQvy0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR13MB5414
X-Mailman-Approved-At: Thu, 31 Oct 2024 15:20:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hdLzqf/yTk55heKa4L26mVR5RIL4KsJIu5JPiJiDxC8=;
 b=VlNzCXWx3K5bDL+6v2udxSkE5ZadCwXCXbfxFi0qxBFVRXwYwCwyIkrXLIxMK8pPguxoSDwTlrZ2B7M7+CtuRfcwKBv3BbHJgooclb7TXLlpqLA/fKFPthCsfaiRIELDLBCRzdOmHH/qT9i8SrgSuMbG2bTjRw4+quFe90oH+VM=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=corigine.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=VlNzCXWx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [resend PATCH 2/2] dim: pass dim_sample to
 net_dim() by reference
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

On Wed, Oct 30, 2024 at 06:23:26PM -0600, Caleb Sander Mateos wrote:
> net_dim() is currently passed a struct dim_sample argument by value.
> struct dim_sample is 24 bytes. Since this is greater 16 bytes, x86-64
> passes it on the stack. All callers have already initialized dim_sample
> on the stack, so passing it by value requires pushing a duplicated copy
> to the stack. Either witing to the stack and immediately reading it, or
> perhaps dereferencing addresses relative to the stack pointer in a chain
> of push instructions, seems to perform quite poorly.
> 
> In a heavy TCP workload, mlx5e_handle_rx_dim() consumes 3% of CPU time,
> 94% of which is attributed to the first push instruction to copy
> dim_sample on the stack for the call to net_dim():
> // Call ktime_get()
>   0.26 |4ead2:   call   4ead7 <mlx5e_handle_rx_dim+0x47>
> // Pass the address of struct dim in %rdi
>        |4ead7:   lea    0x3d0(%rbx),%rdi
> // Set dim_sample.pkt_ctr
>        |4eade:   mov    %r13d,0x8(%rsp)
> // Set dim_sample.byte_ctr
>        |4eae3:   mov    %r12d,0xc(%rsp)
> // Set dim_sample.event_ctr
>   0.15 |4eae8:   mov    %bp,0x10(%rsp)
> // Duplicate dim_sample on the stack
>  94.16 |4eaed:   push   0x10(%rsp)
>   2.79 |4eaf1:   push   0x10(%rsp)
>   0.07 |4eaf5:   push   %rax
> // Call net_dim()
>   0.21 |4eaf6:   call   4eafb <mlx5e_handle_rx_dim+0x6b>
> 
> To allow the caller to reuse the struct dim_sample already on the stack,
> pass the struct dim_sample by reference to net_dim().
> 
> Signed-off-by: Caleb Sander Mateos <csander@purestorage.com>
> ---
>  Documentation/networking/net_dim.rst                   |  2 +-
>  drivers/net/ethernet/amazon/ena/ena_netdev.c           |  2 +-
>  drivers/net/ethernet/broadcom/bcmsysport.c             |  2 +-
>  drivers/net/ethernet/broadcom/bnxt/bnxt.c              |  4 ++--
>  drivers/net/ethernet/broadcom/genet/bcmgenet.c         |  2 +-
>  drivers/net/ethernet/freescale/enetc/enetc.c           |  2 +-
>  drivers/net/ethernet/hisilicon/hns3/hns3_enet.c        |  4 ++--
>  drivers/net/ethernet/intel/ice/ice_txrx.c              |  4 ++--
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c            |  4 ++--
>  drivers/net/ethernet/marvell/octeontx2/nic/otx2_txrx.c |  2 +-
>  drivers/net/ethernet/mediatek/mtk_eth_soc.c            |  4 ++--
>  drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c      |  4 ++--
>  drivers/net/ethernet/netronome/nfp/nfd3/dp.c           |  4 ++--
>  drivers/net/ethernet/netronome/nfp/nfdk/dp.c           |  4 ++--
>  drivers/net/ethernet/pensando/ionic/ionic_txrx.c       |  2 +-
>  drivers/net/virtio_net.c                               |  2 +-
>  drivers/soc/fsl/dpio/dpio-service.c                    |  2 +-
>  include/linux/dim.h                                    |  2 +-
>  lib/dim/net_dim.c                                      | 10 +++++-----
>  19 files changed, 31 insertions(+), 31 deletions(-)
> 
--- snip --

> diff --git a/drivers/net/ethernet/netronome/nfp/nfd3/dp.c b/drivers/net/ethernet/netronome/nfp/nfd3/dp.c
> index d215efc6cad0..f1c6c47564b1 100644
> --- a/drivers/net/ethernet/netronome/nfp/nfd3/dp.c
> +++ b/drivers/net/ethernet/netronome/nfp/nfd3/dp.c
> @@ -1177,11 +1177,11 @@ int nfp_nfd3_poll(struct napi_struct *napi, int budget)
>  			pkts = r_vec->rx_pkts;
>  			bytes = r_vec->rx_bytes;
>  		} while (u64_stats_fetch_retry(&r_vec->rx_sync, start));
>  
>  		dim_update_sample(r_vec->event_ctr, pkts, bytes, &dim_sample);
> -		net_dim(&r_vec->rx_dim, dim_sample);
> +		net_dim(&r_vec->rx_dim, &dim_sample);
>  	}
>  
>  	if (r_vec->nfp_net->tx_coalesce_adapt_on && r_vec->tx_ring) {
>  		struct dim_sample dim_sample = {};
>  		unsigned int start;
> @@ -1192,11 +1192,11 @@ int nfp_nfd3_poll(struct napi_struct *napi, int budget)
>  			pkts = r_vec->tx_pkts;
>  			bytes = r_vec->tx_bytes;
>  		} while (u64_stats_fetch_retry(&r_vec->tx_sync, start));
>  
>  		dim_update_sample(r_vec->event_ctr, pkts, bytes, &dim_sample);
> -		net_dim(&r_vec->tx_dim, dim_sample);
> +		net_dim(&r_vec->tx_dim, &dim_sample);
>  	}
>  
>  	return pkts_polled;
>  }
>  
> diff --git a/drivers/net/ethernet/netronome/nfp/nfdk/dp.c b/drivers/net/ethernet/netronome/nfp/nfdk/dp.c
> index dae5af7d1845..ebeb6ab4465c 100644
> --- a/drivers/net/ethernet/netronome/nfp/nfdk/dp.c
> +++ b/drivers/net/ethernet/netronome/nfp/nfdk/dp.c
> @@ -1287,11 +1287,11 @@ int nfp_nfdk_poll(struct napi_struct *napi, int budget)
>  			pkts = r_vec->rx_pkts;
>  			bytes = r_vec->rx_bytes;
>  		} while (u64_stats_fetch_retry(&r_vec->rx_sync, start));
>  
>  		dim_update_sample(r_vec->event_ctr, pkts, bytes, &dim_sample);
> -		net_dim(&r_vec->rx_dim, dim_sample);
> +		net_dim(&r_vec->rx_dim, &dim_sample);
>  	}
>  
>  	if (r_vec->nfp_net->tx_coalesce_adapt_on && r_vec->tx_ring) {
>  		struct dim_sample dim_sample = {};
>  		unsigned int start;
> @@ -1302,11 +1302,11 @@ int nfp_nfdk_poll(struct napi_struct *napi, int budget)
>  			pkts = r_vec->tx_pkts;
>  			bytes = r_vec->tx_bytes;
>  		} while (u64_stats_fetch_retry(&r_vec->tx_sync, start));
>  
>  		dim_update_sample(r_vec->event_ctr, pkts, bytes, &dim_sample);
> -		net_dim(&r_vec->tx_dim, dim_sample);
> +		net_dim(&r_vec->tx_dim, &dim_sample);
>  	}
>  
>  	return pkts_polled;
>  }
--- snip ---

Hi Caleb. Looks like a fair enough update to me in general, but I am not an
expert on 'dim'. For the corresponding nfp driver changes feel free to add:

Signed-off-by: Louis Peens <louis.peens@corigine.com>
