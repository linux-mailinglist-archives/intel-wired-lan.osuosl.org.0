Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sFJAOpBtqWnH7AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Mar 2026 12:48:32 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 46013210D43
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Mar 2026 12:48:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96A3240B6E;
	Thu,  5 Mar 2026 11:48:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xXYevdPDF_Br; Thu,  5 Mar 2026 11:48:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10CF240AFB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772711310;
	bh=1Aj4GJO5rs3eWZ0asv7KPhCYpVhaBXO9mrr0HARtRtI=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=s7xdubDkKwK1Zjo4zjLoCv3nto8MxQP7q6yU0QWca/S3L8ASL9rJftCJiOXHDRfnx
	 lYEestsdwSd8SD4BkVEd14xmwevuFvqOlCPVZu0jUzdNY4cIKo+KD9eCs5O9zXWC9I
	 jtxRvauOgLtP5NJMfR4/abAfeAiAhvyi3VjxUpPPjvOAUWHNozC4hXvmqlp/bhnZWy
	 K+rTtCR4usHvGTDRlR0AmH7z4pTqKu5Uyk6SxOiJtxZNKcOPH0iTjyKP8fvixyIYlc
	 zp1s55OFRdQ2zo88KQkZ1yz9CXYnw7xPlxGd3isP/G12/WX+IxJLRme+Qy8wFN2ERT
	 as3umiYF0hASA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10CF240AFB;
	Thu,  5 Mar 2026 11:48:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A9522223
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 11:48:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A6C694011A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 11:48:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IMel30UcDtmy for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Mar 2026 11:48:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D176340061
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D176340061
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D176340061
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 11:48:27 +0000 (UTC)
X-CSE-ConnectionGUID: 3DBQyqmjRMG+oHlB6fEYmQ==
X-CSE-MsgGUID: 9cSHLCjYS4SN5YuVu14HMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="77667558"
X-IronPort-AV: E=Sophos;i="6.23,102,1770624000"; d="scan'208";a="77667558"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 03:48:27 -0800
X-CSE-ConnectionGUID: ptQpZ73mQT2fG2J7WEWCgw==
X-CSE-MsgGUID: x7xLa5UQSEm+Ot+i298RaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,102,1770624000"; d="scan'208";a="223621164"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 03:48:26 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 5 Mar 2026 03:48:24 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 5 Mar 2026 03:48:24 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.5) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 5 Mar 2026 03:48:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QcdQa07raWoeysaTokJh1Gi/103KNN0PzYYpCHWB9QNUqc+u5GHpBNx2CEKrOsHR8nNjpx8WEUn/HBAuNrsG9/JRyKCP5xbup7I9xwUNLQTEZ88eh9GqqkOM3JRSEtArKXlHfhqifKAvdelJ1QlogbRoF9d7UhPaidChiUrf8l8royc1bvMpgcaco7kX417+tJ3VMYQtRBBeHV6hgyhZ1l+mhNVZ68QiZjC4TNoendjjPnWR3l5fJAllp0jprNrqNiIqITzt0uysZEMs86BMfec4eUB/6YLEmD8WGmxbtKtCpHe2W0q42Bp01yk2mUKZiEYkL6jbL2+Iet+7HYSxxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1Aj4GJO5rs3eWZ0asv7KPhCYpVhaBXO9mrr0HARtRtI=;
 b=VgZbFDPAaHDlHM1oRt3aOxh6VVF9eYtXF+SzryyqYaTI1CRZte4bnLOMd20n04yNZlTCiytm9x1UrzowtRSGtSSnWk/oT8ptwLzM5jK+ABw1HqhtciAaNpMiTNwbkTJruBQnjTd0qlXMb0LyHCK0bAKCEoKXTFIYL+x9jEQP7/nUw/1rmaObNogSM7YZVIrE5RLfrHLqM8HRJI3Rr5U/5NGZlKKJZHoJQzgPeshlBNKuroMWw5XfQFkNnoaAwnZMVZ9gYqoNibitJU6uslfy3FhduXg2m8AEMSQz/K8C5FNuRRq+7ZpHUpOIR5qlpdvovmtULcnSsXQR9K6YJBMhqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by MN6PR11MB8104.namprd11.prod.outlook.com (2603:10b6:208:46c::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.18; Thu, 5 Mar
 2026 11:48:15 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b%6]) with mapi id 15.20.9654.022; Thu, 5 Mar 2026
 11:48:15 +0000
Date: Thu, 5 Mar 2026 12:48:02 +0100
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
CC: <bpf@vger.kernel.org>, Claudiu Manoil <claudiu.manoil@nxp.com>, "Vladimir
 Oltean" <vladimir.oltean@nxp.com>, Wei Fang <wei.fang@nxp.com>, Clark Wang
 <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Paolo
 Abeni" <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "Przemek Kitszel" <przemyslaw.kitszel@intel.com>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard
 Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>,
 "Stanislav Fomichev" <sdf@fomichev.me>, Andrii Nakryiko <andrii@kernel.org>,
 "Martin KaFai Lau" <martin.lau@linux.dev>, Eduard Zingerman
 <eddyz87@gmail.com>, Song Liu <song@kernel.org>, Yonghong Song
 <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, Hao Luo
 <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, Simon Horman
 <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, "Maciej Fijalkowski"
 <maciej.fijalkowski@intel.com>, "Bastien Curutchet (eBPF Foundation)"
 <bastien.curutchet@bootlin.com>, Tushar Vyavahare
 <tushar.vyavahare@intel.com>, Jason Xing <kernelxing@tencent.com>, Ricardo
 =?iso-8859-1?Q?B=2E_Marli=E8re?= <rbm@suse.com>, Eelco Chaudron
 <echaudro@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>, "Toke
 Hoiland-Jorgensen" <toke@redhat.com>, <imx@lists.linux.dev>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <linux-kselftest@vger.kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Dragos Tatulea
 <dtatulea@nvidia.com>
Message-ID: <aaltcmPeUQ0Mt5yi@soc-5CG4396X81.clients.intel.com>
References: <20260302161723.858616-1-larysa.zaremba@intel.com>
 <20260304185531.4f49fda4@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260304185531.4f49fda4@kernel.org>
X-ClientProxiedBy: VI1PR03CA0072.eurprd03.prod.outlook.com
 (2603:10a6:803:50::43) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|MN6PR11MB8104:EE_
X-MS-Office365-Filtering-Correlation-Id: a4dfc298-4aee-4d83-c4ea-08de7aad162d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|10070799003|7416014|376014|1800799024; 
X-Microsoft-Antispam-Message-Info: Kib4SUBmJu8RKL3OkJ8/uLCaPBs+8gEXNCTSuks8NscPvUL0tnyKLEcWUvapD2cPk1GNQyrSjoHS1PlBeG3rt5WJJZB/5DiAw/sq7LKb8LPBabMiwP5IdAs2h8HKBxPJmw8WYFY3RNB1J13xgNiy5NPcjO/6IVw7F728AFrpBHR/0X/6ZwUXx5R0s1RZGbaJdZl1ooVJw84+Z2UuuyYSvzv5//CfYStqXkT2EMlSuR6oJ03YataGuJP795ZrX6C6qnAxuRww5ANc/WoEuDYFL4hWDNEty3Ulb0ZGnYabeAnQL/OVAKwKA5BjDvhIFvvBp4WI+KnqCqp7AuHoMhBFibjlOCsrIqtUfZvJ5nOWoxea4XOjPevv4+Dkwu7LP86RAvIgiAevtkTO7ImvdMg13EABftXh4ttNECABWy09vhCml++vxMMfjyecyrHi2xGW5rDWmWh7PkQAetbO89et9/8Z6DihA4GQtxeKB+L+lcdp99JOcCsGo3QB7UQYszA9tw4RXf8u41CNJJ8qDlzR+GEGDzPr5Y6532QDZm3cjXXc7XJENVWD/+Bq86Hu6O7fFqJxM865icb6oKCU5ljWryS58ofdpYaJJqwdfGUiV/Jw4skd4ZoeXQsUYbvsZd8cHRocI2Agb6OxT0yxtK6Qu/7mrwq8fOOO8HAuJ8VD33vJrSs02B7yMmmFonhvPSc+dHggle7MGx9okHwR759e0TOyg1/jlk8ODHK+4N5Rr0E=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(7416014)(376014)(1800799024); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gLsxEeTL5/rTZY+Y56yNFh3QvohGBifYasqWR/wwFZv3UE15KyZ7Oi6fQBjj?=
 =?us-ascii?Q?1GcHgd8pxsrG1hANXGr0hWzgINrT3RyUzvBuYatSlW2VS3RzFcPKdIokj+Ll?=
 =?us-ascii?Q?QokY9tAgWJi9OIVnZfdptb1oljNB7FeTaGjzMjNEv/ouw2Rzq8zoeQlmRWzf?=
 =?us-ascii?Q?j6d/300/5gM+7ntpvYAe7Sq1dKIDfoxLjUctbhI3+eOnliO5h+tGWyb51VBZ?=
 =?us-ascii?Q?esePJJisT3El7VNEXbVMsd6fnqjHpyGW3xCmq5BkEdYpudyLMYpgPBGKPE4z?=
 =?us-ascii?Q?ElX6iGpiAEIweDmhgWFQhbISjzUNOSONYZcSj3S7jeCSm3dqMbKy72KU0LoX?=
 =?us-ascii?Q?+6ydBRRZAC3KFtce/dbyZXRcLTM/KPNNZ4IyUoMhO9RU2iE3nlfQeJDbPzBf?=
 =?us-ascii?Q?MWy4ZQC2xzxvfEc8sOvD5krf14v7F6fv6psKAKYHrbzfriLpFi/jPqwALsiW?=
 =?us-ascii?Q?fX/geRCkKVb8HzoJEGJgn++wt77lZdniJqDPTcOj9o1TVx/UoUWRjKnt6bcP?=
 =?us-ascii?Q?c81E6OPkqDSVUd0OdjSSNdmxfTK/ZChM1DkWvpN2L7M2htjIoQYdzTNfUFJf?=
 =?us-ascii?Q?d/TC/QBwALktZ/s2auklL3jx+OIygB4onCa4HIBcBchCwbeX3+0WDcdcpB2f?=
 =?us-ascii?Q?Ao0FLeySEqMNc4csGJ798gc5Gwg1n6wf01ZxR9cw9MpZVQ4KiXNkVqC+5MYt?=
 =?us-ascii?Q?0qpsr2eF+ovTmt2fH+BAhQn4pd1/Har81wjwWLOPw5Bo1Vm2drV07sXckn8F?=
 =?us-ascii?Q?6jZC9ERNq7imSztUcu6JN1D1LfWxiP3Qu/mJdwfnDtcaZEpd4lf5vmJsXFe0?=
 =?us-ascii?Q?m8T5gYPXfALi915DbbZwbm5U6xJcgM8NtvMIycBtKQWffw7k9fI+KpC2dU2l?=
 =?us-ascii?Q?aqaxD94LghcHYT6dv+HGwhdLhz/yKIHIAWA27MLkjJ1YPy5zR2cvsM92DkuG?=
 =?us-ascii?Q?Nbuoi3TB+jQQXAjoigRP5Y8ccHUrkmGhtoBGFDpeT5sehLVeK0Iy1MnxMzhd?=
 =?us-ascii?Q?e7oIHOCyAfvj5tGjSDZ7Y5NWeyOrff5rwgeIbb/QbqmuofiKwjLhk/UAQswi?=
 =?us-ascii?Q?V53G2j+QfWSyHvGGahK5Pr5uciZRw9EhwJqP3QAh8xH7RfwVWMASlMZSNWla?=
 =?us-ascii?Q?8VblSURPwNxOukVGqYQuqfWRjat8zIEaeJ0zTr0OxBDfrzx/YaruXC8CAwOj?=
 =?us-ascii?Q?dyLV68PpDBSvsDLGchXFV5itIi+h4H5OfKAQk1k7Aqg9Q/G93nseHyHc/ijr?=
 =?us-ascii?Q?dYLFlAWjknIpx4X/Aey5QgA1u45g1bGWgxj+3w6wAviDXO+12J18ty7C/vib?=
 =?us-ascii?Q?yU12J2wck1d0fPpAqVQV00xm7wRA0IIoIK/VbKBVyiIIp2MoJDDRa6UqsoSI?=
 =?us-ascii?Q?Mep0UgMAdupW5aTL509ebPbQkUTLqfB3DwpX/CHo0Qiu3Pi73Ss2hIEQflgV?=
 =?us-ascii?Q?eKBb4Hp3KxDChtmKzz4u/c1Wp6YDUCNwexo72Hwbpg2VcoasV41B2buYJPYr?=
 =?us-ascii?Q?T7tFQz9MtmUyLHVBpU2NlQ+udi3TtVWQKK97FMB+nCgto418Zg5Q0OtIpGQ/?=
 =?us-ascii?Q?7rTIDtjOChfUfPPe+Ra9BAFBJkmPvirmrNL8FP58neLwk661+BJumQJ8pOZq?=
 =?us-ascii?Q?949LOsUKdJlY5Gj9HqvPB5+Gon60+rMDZ3p2vUmeMTwpFdrpmH6SHHOCtOh7?=
 =?us-ascii?Q?nXS5N8bn+igRKevLNyuK0cNur07ojVJ4utJGCHOgC9wOAh/q9LIy1/xlo6Za?=
 =?us-ascii?Q?qlmBMb94TWvoraSK6DbnARjs+v7h2e491y796oFSGt7ewsYNSo+NtvJzp/Qi?=
X-MS-Exchange-AntiSpam-MessageData-1: 5PJ5DmFq98LS0eZRVDoK3cvhjVdKd+oBFMA=
X-MS-Exchange-CrossTenant-Network-Message-Id: a4dfc298-4aee-4d83-c4ea-08de7aad162d
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2026 11:48:15.4428 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TOuK5bNgb4QL6QOhhvbhjJYNHycOHIB0TQKtfuXsMCsK5+A7EUkS1ups9tlEn4JgjLaIPfOCi+BnF5U0mY+YP2/aW/55MS9tBLBlElb1zgI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8104
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772711308; x=1804247308;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/GRXlkmc2DjEaXGCqLUk/z4M1Bbj4T2bsQKw8ESgUds=;
 b=U9ZEk9+JA6PJ6ne0wwZqa2uKjFuIaudzLh6Zgu4Q+9IwWMBOcaB0bQsF
 FumfAN2gWE7qMA6w8Ajmvu6yurLRcsEXpOdtAPmbHrgRy8n07G0jH5Z2S
 ovALf62WzM3xj7w94lD5q0tI1gB+bL9eqq2J1OC6sTW3/eG1bQgZemlcL
 0QvU7pd1FXGL47N0x9yihKIzkjMTq3AHkKR310Y85ayHPB6Hr1tzevrVN
 9m3dYOzhE5zsQW/nHyDVssnJvSsK3GHPhotMxvgmGH+E5w3YALmbSrA89
 rzm3Cf8xQF8W3dgPlU93XZZURGJnh+VRpbl0aEUDA3lPL7P/RmIjPcLw8
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=U9ZEk9+J
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf v4 0/9] Address XDP frags having
 negative tailroom
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
X-Rspamd-Queue-Id: 46013210D43
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[43];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:dtatulea@nvid
 ia.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,nxp.com,lunn.ch,davemloft.net,google.com,redhat.com,intel.com,kernel.org,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,lists.osuosl.org,nvidia.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,soc-5CG4396X81.clients.intel.com:mid]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 06:55:31PM -0800, Jakub Kicinski wrote:
> On Mon,  2 Mar 2026 17:17:13 +0100 Larysa Zaremba wrote:
> > Aside from the issue described below, tailroom calculation does not account
> > for pages being split between frags, e.g. in i40e, enetc and
> > AF_XDP ZC with smaller chunks. These series address the problem by
> > calculating modulo (skb_frag_off() % rxq->frag_size) in order to get
> > data offset within a smaller block of memory. Please note, xskxceiver
> > tail grow test passes without modulo e.g. in xdpdrv mode on i40e,
> > because there is not enough descriptors to get to flipped buffers.
> 
> This was re-assigned to netdev in pw, I presume by BPF maintainers.
> But it doesn't apply to net. There's a conflict in ice.
> Could you rebase on net and repost?
> 

I have just sent v5 with net as a base tree, had to fix one other thing anyway.
