Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C316B2C2E4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Aug 2025 14:16:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 085DF40B27;
	Tue, 19 Aug 2025 12:15:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0yRxPEqbkS1h; Tue, 19 Aug 2025 12:15:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA33240B23
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755605753;
	bh=UbPT0BLdBRUlL6AP+HRqHrwdn29salIzaQMII34EdGE=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oIZOBrr9kQO9wCHUbT2K/7p6CTR+RDBGqAYRzRZx1AQYp8fLVl784DxUEOTBvRe3y
	 c1oLeAQiBeVXyfsHeT5H4PItpswFsMod7hqXmHuPjqymF6URKCyUKArVgvYpnNYlUj
	 XN0R/XQkSQBww5wklS4vLcVdoJbLiepDkZ795eINnBCRlDX8gw+adrR8+2ramGmlG1
	 gBlLBrUqGy9iJKGJkLxObjuzBnrLDyngqv9UH+B5ntLB7M/2P4WoulCs37OWtK8xJI
	 mssUd3ZJtAWMN/4iuWWq++7SKc6r0O9qLDui2bnn84mcRGNLv6PNM5QIY9dHViWRws
	 UOtLszZrSiukQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA33240B23;
	Tue, 19 Aug 2025 12:15:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0D6A5E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 12:15:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DF3528112E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 12:15:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vepEY72hqlU0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Aug 2025 12:15:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C818581098
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C818581098
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C818581098
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 12:15:50 +0000 (UTC)
X-CSE-ConnectionGUID: K0fmJgG8QQqyMHqhVcVU0g==
X-CSE-MsgGUID: vL4vIpxgRBm2lyl66pFhIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="57915084"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="57915084"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:15:50 -0700
X-CSE-ConnectionGUID: GBEiexbCRlOsas30RGlQuA==
X-CSE-MsgGUID: izlOqlRkR4qwhlLF5GvouA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="168080496"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:15:50 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 05:15:49 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 19 Aug 2025 05:15:49 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.54) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 05:15:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ul0X1g9P0jvR0UcWVJAFKYfkpFI3nd3o//Y6y72b26o9ubTWD71nu8FDBuXFh98/TOi6DGO0xGTvUDF5q7vN2Cr2Xn+fb3/u8HB9E6w+dWU67DyhIVPLLIHIZurgbxa1yTHoNhwex4oBZ2Xz+hiyB4HBOql2PZhRf5QwTtA9sLyFeq/ycckaz17TYYLhmBXAf7KDUiEIAV88RwXhQElTa6Uv/X2s3gX5cFVwZKAiHIDmWPl41aHUk+CZ1JHL+uoaxSojrgZLhwuxskWua5A8WN9AZcoW0gjYVPySvEM/N1w95HCSz7TbFuE5mwEbxj60pJgRaUxwyiIOzYiHQ7U9Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UbPT0BLdBRUlL6AP+HRqHrwdn29salIzaQMII34EdGE=;
 b=JKGCFLUZrOObbLK2KCRELTwcudfDG87cccwzHjvqFgNavwFAj6TyMndGPYlRqGcDwBMX5dJjT5J3+3FzNtbr/J/1JXsKGVyPAZzXmwzVjR/uslsXwYeOmfCMoaMniODHCm4H5l51VTkk8OYH+WTU7Td6L5N/p6lyoNy+hohccj3PqsRprpFB3C0DmlzisFoQccgwiRyRfGzcwj+ndsqXh9p52eJ5FDzk6jtvCm3Q9j5JackrZpTyeq6c6kmcQB/tnn764rVgBS43PbzuTxi/pcM4sL3lcrG3Sv3cynyXaS1ik6cnLdsKfViLD/UT/dqPw8dHcIj+MsXTG+BIPWzDDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 PH7PR11MB6379.namprd11.prod.outlook.com (2603:10b6:510:1f9::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Tue, 19 Aug
 2025 12:15:40 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.9031.021; Tue, 19 Aug 2025
 12:15:40 +0000
Date: Tue, 19 Aug 2025 14:15:30 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Paul Greenwalt <paul.greenwalt@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>
Message-ID: <aKRq31+5N+NbpwvY@boxer>
References: <20250818132257.21720-1-paul.greenwalt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250818132257.21720-1-paul.greenwalt@intel.com>
X-ClientProxiedBy: WA1P291CA0001.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::12) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|PH7PR11MB6379:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e3d22ea-1903-4ade-05ba-08dddf1a1cf4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?+UkokGs/wow4DO/x+NYElm4NXtmY5le/OU+m39Q1sRsr8f4lb0B7hZLi9PIC?=
 =?us-ascii?Q?uGhm69ITqusIhFhQ7LZ0MXxz9j5Gn67PMfqSR1ThpySD/KeuZIvPjhJwS5B0?=
 =?us-ascii?Q?T9o1GJr8WcKRtdhpt8Jf23CJk8hcP/abqr6O7Z/QVtSuiFZGHLloIAdVvFA4?=
 =?us-ascii?Q?kUUwZebfUZFwQw6hEbggNPe7L5RVaZBrNfL9xlzAFgdboSJjIBMPXu0GcZtj?=
 =?us-ascii?Q?FW+1aSoW1/YLVWh7LzJFI++pr6OIPDaXO3K8PwW1li5yD/1uvNaRKcA2gouZ?=
 =?us-ascii?Q?MbYqo+jQ7uI4W6LNuHLzV/2FFxR4EcjraDQ00jOIC+mDO6dKbGdqcZxW+HUD?=
 =?us-ascii?Q?o4rmG+dlB7AnwAKDdXxv19nir1gCRJNUhaDDLthmMQSYRM4qi2ZP59IyWDP5?=
 =?us-ascii?Q?sxcEC8/QvGdQTcT9ti4WKcJfP2Df/vNahvTqoaFeNb0IcDySdZ3Wagt3ztCT?=
 =?us-ascii?Q?h/Y+/XinFAzzGmXByMjw37Lp/ITqb3XQTXGXFBK97yApMpRjFwt2B6xDP2/4?=
 =?us-ascii?Q?BTXctKEsUXZQZD35uASlRJVcTpj6USpNjhzi36rrEO4G1JwBLgco5hBrN+J8?=
 =?us-ascii?Q?jrxnAeBJ87ROdZVlXAIoq9IqDvB2UW200JATiQaLZuiOqw/g3rxpzX/SO8R1?=
 =?us-ascii?Q?2wqQk7FxR3QjjcNOxL6XdMaiCitjOUVoV7VacAUY6khwXQLRUqsi4P7SC1cF?=
 =?us-ascii?Q?TlzLaSu5GHaBrJVFSE6rImcjUx7KZp/zryiltZFiRv4MfSrryOo7vt3iMHdX?=
 =?us-ascii?Q?WnbK1HdrJ+SA3bpIxKD2h/DcvRgmHHKME36IWowgzZ6Cz/JZmyOuv4suA8IR?=
 =?us-ascii?Q?xLO/dwmKGMf1VdUCyJ4YLZ45SA2Itrv2FwoUWbOojMy+Qg2WdjaxgzBeNg3b?=
 =?us-ascii?Q?Tzb0fCTsUq2ew3M0xh13U8ru87H4tkaQq+y2Foab+91FcaPi+TSTHRo5uawM?=
 =?us-ascii?Q?QpnqmP3jRoBGiCSWufb3JhaT9PZOlaCqyf5pRuVABWdXKtN3pyotFCEVyUCC?=
 =?us-ascii?Q?j1oXM9ChQAF65DW6s+PQReppSoBUN+FTvu5oIv4cYONuC8iy6/WixNAqtkL7?=
 =?us-ascii?Q?HT5DH8L7PX+YwuMTt/WHYPVIfmQXKlpH12q+5GZqpDN3H1YBtMxEcv6qUE8E?=
 =?us-ascii?Q?o0Xi0/wcTz47T2ohMFx0NWtEARrGBk5Ap1a4jqKoVA22pWIbMZjzW0M/KjTy?=
 =?us-ascii?Q?sBycoi5XRIYmyqoI5ucyRUakZ1MMM5ibkl+5+gFFKZMdtngT3ST8RvHRzJk3?=
 =?us-ascii?Q?t0WKdn2xO2k1ZCMfSJ5XCZMFsxPdf/rKBNvcQDr3EKnPwCmJApIzfIRmSR2v?=
 =?us-ascii?Q?nSda6qfPssqcPbivQF63CJv6oBvQCiNMRWxJZQAM5e/lIrzWdN4jrIWOZKj/?=
 =?us-ascii?Q?UMk6eK2GvVrCwnrRl7jlGyi2tp6t77id6PQvt7dxZdhZYtr83YRmaA5jmlQx?=
 =?us-ascii?Q?gPOHT6RfLiU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?w2wqsQM3JXQRDbMZdPAf6LNRRxCplJ2OlhFiSW83KkB8oFCkMyoqSss3w/Ax?=
 =?us-ascii?Q?xDT5QadXoS4OC/7W65UXQ+UxaCkdSEyDvNLFw/JMYDftTTPqIIZYunNGIJmX?=
 =?us-ascii?Q?Aj5cgvEUra3I4DeDVaVicFo2qhVbgEdOaWLjaF3nJrkRJB6YvnZzdIKjJoBf?=
 =?us-ascii?Q?2uoYDAxJai1q/MwEHr/HBE4+BMJy5pYhSJtSTu1sR5MhQ9PkzKqcwDaFP9lw?=
 =?us-ascii?Q?jX2Y2ZE1NtE82FBC1zxat3V38//qUg3LjHbGi0kK/7aclZk8nNe3Mfp83O/R?=
 =?us-ascii?Q?teDQKBr5YwNYTrkbVpUoVq8LpCRUnDJPFWMVGhvHsFqlI2cVWcG8d/fbaV87?=
 =?us-ascii?Q?ULBCeha9hDuAQyV7v0s41LcxIyp+oZ+6+JKDaD2AifoeuwT80zki9BQcijUx?=
 =?us-ascii?Q?fJKrsR0lBq+f4fqPFzqXe0V/kaj7E6AR4lJwPd3GoV6XuvkVDPZTC6tet0Zm?=
 =?us-ascii?Q?KUal8wEzGoFP4j6TahDdyLXEEMLn7bWQAek4T+0BsnEfya3SbwQnxkbc3u5j?=
 =?us-ascii?Q?WaqxmBG6j3TUt8ElJQYxlXl8JbOIkuPfxr49LW2fH5YcTCpPX4h6EJHzk2w4?=
 =?us-ascii?Q?x62s+nDrC4Sh2dVIufhAUIVNU/ZM6/senDVN+fs5lndinFCRCOk0HzwH0ZMc?=
 =?us-ascii?Q?NdAKjEGI/eEbHftqau/CLq0MBq7IYraejmLs4wwNaFcXYzDM4z0wDPDyz0ml?=
 =?us-ascii?Q?22hS45G/ED01JDTu7fdIrDzhrkEdQhQTTQ8cnlKA7oOZFMaZvT0T6QotveVD?=
 =?us-ascii?Q?+qSdOoGsvSSyuqEimZRVKygedF8zdibRCysqHawdI9yJYykZ11hr1dgCG9P5?=
 =?us-ascii?Q?XihdwxsD/BfZ4XU5IrnqzvCHFAxBJCT4wmyEzUBmg9VouQJG9FJExFSTj7iN?=
 =?us-ascii?Q?fJXv/aPvIDD7l7dPgnVNALRcrqP6Of9UGK0bAdKjYDnGJRWG8YKWlQ5mvQp9?=
 =?us-ascii?Q?dYt7+ZkYKlSqeahQU6h0PwIeeYSVTipHF+1cPU7HBTyWbDJ3dmj9BZrADHZe?=
 =?us-ascii?Q?dbpmdlJAi2I6GmcxfsucdrkeepHEMygU9YY2lpMVnHDeelGejRcipexdG6yE?=
 =?us-ascii?Q?2VFvutUgbRzz56TLhxhY+iYuf+Qt9Zu9gdEOLdueEam6OBdXypM+/+4gHQrl?=
 =?us-ascii?Q?ns0gR513iafoc3pJxmrnJ5YtW3B9K4Z5JirJmaRV8bs5tHVM9vS5VAmI95BU?=
 =?us-ascii?Q?Om7SI0BU0DrCDDhJbFYjD1PSUdy128Wxc9BuDg1TVAbkmRNdZ3gg5wDboqcp?=
 =?us-ascii?Q?oqVM6NixqnzJ+1A4SYD38QrO7flKXYQufkJUZv4V25c0dxnn6XiJDWK6e54s?=
 =?us-ascii?Q?tjPlX/q5QRBbckJeX88+t8CDr54W7iySC1cRZG7OR/RF+0AVgOIbIDt4l10b?=
 =?us-ascii?Q?n00vZ3LsYORJCMWyngY46gT/nGNhitBsXgvV2EylS2m4IttVXKneAFuktsXx?=
 =?us-ascii?Q?Noc1HYr1241A8NRamrhsen+Sn3cmY2QD6Im3E8u2714tTfaPiDI/ih/eA6dQ?=
 =?us-ascii?Q?od3ldM1qNflDXprrAppCU/rP+34yjgc9bXLUsdOmBNh2uBNCxmFkGEkl9479?=
 =?us-ascii?Q?dldPeJExPh55z11uOFsM95y3GRZ9nZBUSjqTSJNZLDMdC9qhmD7pwumc0MV0?=
 =?us-ascii?Q?Ow=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e3d22ea-1903-4ade-05ba-08dddf1a1cf4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2025 12:15:40.6556 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W+yGy1EEwO1/2TaAzsAvJ7xD2aiw0v+J0AfiHl1xjvvHCpBqvwmoeFQPPhIjcC/IfL64HmmwMLuif6tAjqFGVYAKPgtorqR+dsjGX2Ag5LA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6379
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755605751; x=1787141751;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OxYFdcpx34eIja2X0iUTW/aiZnGLlHBCbRd4XI5hWVc=;
 b=il2evYJMMZc9xFTngz6DH0WzS4/yiCJY37mfpw+mXOZxRGC4UjAHz5KY
 36X91d5et7iXysrVaoeA+uOlbAuvumUCBY+DJkzzKA6lD044qQcohQKQp
 zN17e+pAlzn/cCKa42NLAwxNJozgLdA7uyojOBzh1Ww1dNa55OyXr2OQu
 2byubULmbiDTOwpqc9PcNX4KEha7fR80HO8CaX5FYXo4q7PbEIQ5+cQY+
 PIz2c2ZJKWIppWkLmfhedlg/UgLKaRtABupEq2fVKpjDfcpydUiTgX9EV
 ijVS7dyjrw5c3/N9oZNnksOMBsZjvy2FcOVuLO+6G3TRO8YJlpsrGVdKk
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=il2evYJM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 0/2] ice: add E830
 Earliest TxTime First (ETF) offload support
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

On Mon, Aug 18, 2025 at 09:22:55AM -0400, Paul Greenwalt wrote:
> This patch series introduces support for Earliest TxTime First (ETF)
> hardware offload on Intel E830 network devices. ETF allows applications
> to specify when packets should be transmitted, enabling precise timing
> control for time-sensitive networking applications.
> 
> The implementation consists of two patches:
> 
> 1. A preparatory patch that moves queue pair enable/disable functions
>    from ice_xsk.c to ice_base.c for reuse by the ETF implementation.
> 
> 2. The main ETF implementation that adds comprehensive support for
>    hardware-accelerated timestamp-based packet transmission.
> 
> Key Features
> 
> - Hardware offload for Earliest TxTime First (ETF) Qdisc
> - Per-queue configuration via tc-etf(8) 
> - Support for up to 2048 Tx queues with ETF capability
> - Timestamp ring mechanism for precise transmission timing
> - Dynamic enable/disable of ETF on individual queues
> 
> Hardware Details
> 
> E830 introduces a new Tx flow mechanism using a dedicated timestamp ring
> alongside the standard Tx ring. The timestamp ring contains descriptors
> that specify when hardware should transmit packets. Due to hardware
> limitations, additional timestamp descriptors are reserved when wrapping
> around the ring to prevent malicious driver detection events.
> 
> Configuration
> 
> ETF is configured per-queue using the standard tc-etf Qdisc (see
> tc-etf(8)).
> 

CC: netdev@vger.kernel.org

Thanks for your patience Paul:) For the series:
Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

please cc netdev in the future when sending patches to iwl.

> ---
> Changelog
> v6->v7:
>  - Move tstamp_ring related member variables (tail, count, next_to_use,
>    desc) from ice_tx_ring to ice_tstamp_ring,
>  - Ignore ice_qp_dis() return value, and always attempt to enable the queue
>    via ice_qp_ena()
> v5->v6:
>  - Fixed resource leak in error path
>  - Added input validation
>  - Update error handling logic for disable failures
>  - Move ice_qp_* functions to preparatory patch, and add coverletter
>  - Address code style issues (u32 vs u16, code flattening)
>  - Propagate error status from ice_set_txq_ctx_vmvf
>  - Removed unnecessary RDMA compatibility checks
> v4->v5:
>  - Fix ! vs ~ issue reported by Smatch:
>    ice_txrx.c:192 ice_free_tx_tstamp_ring() warn: potential ! vs ~ typo
> v3->v4:
>  - Move ice_tstamp_ring to a member of ice_tx_ring (Maciej).
>   - Add struct ice_tstamp_ring for timestamp ring management.
>   - Move tstsmp ring fast patch variables to ice_tx_ring
>     (i.e. tstamp_[next_to_use|count|tail|desc]).
>   - Allocate/configure Tx Time on a per Tx ring basis using
>     ice_qp_[ena|dis], add txtime_txqs bitmap and ice_is_txtime_ena()
>     helper function, update all Tx ring and tstamp inrg allocation and
>     configuration flows.
>  - Update commit message related to updated implementation/design.
> v2->v3:
>  - Fix const compiler warning.
>  - Fix spelling error in function header.
>  - Fix Changelog version number.
> v1->v2:
>  - Resolve patch apply issue.
>  - Fixes RCT, zero struct initialization, move bailout condition to top
>    of function, removed unnecessary newlines, and added use of
>    str_enable_disable.
> v1: https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20250227111333.30675-1-paul.greenwalt@intel.com/
> 
> Paul Greenwalt (2):
>   ice: move ice_qp_[ena|dis] for reuse
>   ice: add E830 Earliest TxTime First Offload support
> 
>  drivers/net/ethernet/intel/ice/ice.h          |  33 +-
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  35 ++
>  drivers/net/ethernet/intel/ice/ice_base.c     | 390 ++++++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_base.h     |   3 +
>  drivers/net/ethernet/intel/ice/ice_common.c   |  78 ++++
>  drivers/net/ethernet/intel/ice/ice_common.h   |   6 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  14 +-
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |   3 +
>  .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |  41 ++
>  drivers/net/ethernet/intel/ice/ice_lib.c      |   1 +
>  drivers/net/ethernet/intel/ice/ice_main.c     | 109 ++++-
>  drivers/net/ethernet/intel/ice/ice_txrx.c     | 173 +++++++-
>  drivers/net/ethernet/intel/ice/ice_txrx.h     |  15 +
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  14 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c |   2 +-
>  drivers/net/ethernet/intel/ice/ice_xsk.c      | 153 +------
>  drivers/net/ethernet/intel/ice/ice_xsk.h      |  22 +
>  17 files changed, 895 insertions(+), 197 deletions(-)
> 
> -- 
> 2.47.0
> 
