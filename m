Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iAtCEaafpWl7CwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 15:33:10 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C5F1DAE40
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 15:33:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 52DB94187E;
	Mon,  2 Mar 2026 14:33:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 27zgupAZqOgG; Mon,  2 Mar 2026 14:33:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA55A41876
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772461985;
	bh=dEejsCu/uSg1DzSpOJEFAyaZ9HJmNpYdzBFBrpNaVDc=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0HCkZ33ua+7DmtZbl9iZdnm7wu+SLgGOp/T2kCjD+rpvmNn3CCHVLz46IsmwWY50h
	 xGgI8Io5pbvE9VOWshcES0/3rlje6DjbbdNhghkJdvNg01h1w+YvBxhmE191aBNJGI
	 yhG4fjB/zUt5wEDvFi+342OiopsWX28NVpJnqapIq/567921r+ldK89TJqTj3toCUt
	 gvwBJr4Oy5vDYQnT7rjhPvELPZ9Yc1QncPcTgsusoTmOAVd1eIcbk7+NMV8WDXU+wy
	 O6BQjSbWSdUu/56oWGSA14tjbBNWWTz0L4flfR6TIhT5U63kREk1/x+Xb8oaKhDYYz
	 D5LSCpk+VlTPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA55A41876;
	Mon,  2 Mar 2026 14:33:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 318541EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 14:33:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2EF4441821
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 14:33:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q3Q7r65gYz_P for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2026 14:33:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 75356417EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 75356417EE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 75356417EE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 14:33:03 +0000 (UTC)
X-CSE-ConnectionGUID: fxu9VSonSLuCW2tgy8ytgg==
X-CSE-MsgGUID: PdXljZudRHCSlLXUvF18gQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="83804046"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="83804046"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 06:33:03 -0800
X-CSE-ConnectionGUID: bw9EL8VVQZSiBhjelZTJCA==
X-CSE-MsgGUID: m/WqfIisRym7tt5NWeFvmQ==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 06:33:01 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 06:33:01 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 2 Mar 2026 06:33:01 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.31) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 06:33:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M1BM67pV/DrfIRUzVBbZbD9RYh08XqNxdiNQxAuHKPLzscpP15ABSwDzh60jVWHz7kiRShyIHD0zTJMX6ZpStYvavjGzvMlC8/PzGEXdYRFooD6F7QYAn9eF50jv/ofPCZE+p2ZpYoFTEDanAJzEmy+V9fMjSCiQoStnFy5vOvkBFzq8Y/6xDn9l20E3FaU6tQbesd2rUSqVXyTKy999WfbyoDhJqOQPc7BQ1b+5vf2AndhG/eJ+fQ6JVsvJLFXB/XRx4pvooDZInYgtLmjS29SC+cdNffp0xy2vPeJVbYjDVLdpqlffWcn093Ki9zuvV/ORrUqSxzf3LFm3uw3xww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dEejsCu/uSg1DzSpOJEFAyaZ9HJmNpYdzBFBrpNaVDc=;
 b=qykhG1PR/njVeEv149Mh8yQRariDIYYeNFFikVHZn/fyWURHe+vvWrIScbxOfXCJpWt0bswwJrdcDgj7adfkVrjJnKxTfUKbP9OJOyFrcdIgN9gRF+jHFafW9Zz9fI7JxkLvkMaaoxTWIBQrSdm8S52OaDG9gzMYK+a5gyOdpcJPCplB2uIitqo3l4avmYFAUzjO2Tsi6Jw6xZLUnj+uTtF3DOhhao0Iv1JAY2XFJ5y+j1WgBC/3NPWFTLu3lHqB4C5cmYSqLl8giMrCc3DclmYT689L3MzVbdGHkjtxSztZYGfpLZSUT1OcBoyZF4oS49sca1c42HtUQKuqtqbkfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by SA3PR11MB9461.namprd11.prod.outlook.com (2603:10b6:806:47f::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.13; Mon, 2 Mar
 2026 14:32:58 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b%6]) with mapi id 15.20.9654.015; Mon, 2 Mar 2026
 14:32:58 +0000
Date: Mon, 2 Mar 2026 15:32:43 +0100
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
CC: <bpf@vger.kernel.org>, Claudiu Manoil <claudiu.manoil@nxp.com>, "Vladimir
 Oltean" <vladimir.oltean@nxp.com>, Wei Fang <wei.fang@nxp.com>, Clark Wang
 <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>, "Andrii
 Nakryiko" <andrii@kernel.org>, Martin KaFai Lau <martin.lau@linux.dev>,
 "Eduard Zingerman" <eddyz87@gmail.com>, Song Liu <song@kernel.org>, Yonghong
 Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, Hao Luo
 <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, Simon Horman
 <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, "Bastien Curutchet (eBPF Foundation)"
 <bastien.curutchet@bootlin.com>, Tushar Vyavahare
 <tushar.vyavahare@intel.com>, Jason Xing <kernelxing@tencent.com>, Ricardo
 =?iso-8859-1?Q?B=2E_Marli=E8re?= <rbm@suse.com>, Eelco Chaudron
 <echaudro@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>, "Toke
 Hoiland-Jorgensen" <toke@redhat.com>, <imx@lists.linux.dev>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <linux-kselftest@vger.kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Dragos Tatulea
 <dtatulea@nvidia.com>
Message-ID: <aaWfi1jz_oX-bwkb@soc-5CG4396X81.clients.intel.com>
References: <20260217132450.1936200-1-larysa.zaremba@intel.com>
 <20260217132450.1936200-5-larysa.zaremba@intel.com>
 <aaF+gUtL/qzvgFym@boxer>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aaF+gUtL/qzvgFym@boxer>
X-ClientProxiedBy: VI1PR07CA0257.eurprd07.prod.outlook.com
 (2603:10a6:803:b4::24) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|SA3PR11MB9461:EE_
X-MS-Office365-Filtering-Correlation-Id: ef098764-7190-45bb-e91c-08de78689952
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|366016|7416014|376014|1800799024; 
X-Microsoft-Antispam-Message-Info: kxY9G7Lod25ZnJFES61FE7muJIIufcE0jLBhuBr8zJeko2niIYbNKsTFSVJk0k/TLqB5ksVnVosNvP66dDD9RgKbETz27IAc9PPwY0ycqwRPSPlcyu3p0Fy1N/fQnLTRlWWc9zeJw6oy+MhVlPDmKFCph+eFZezxV+lugDQ6l36mrc/xbky/b9a75Gk953jW4FaszvfHbaFGTESn1wwZ1VrgFbPcGJODgx+7hDVbMwpciESm8eAKntrHn34K7Ll0ejvhIhf6TWzoOwNHZbO6LzkMPsGRRmqKupTaxl1aFf7iGsWarJQjNuCUXIfoj33HWlwTeSypGajTTdC0S0MWcVxqQCsfmILDZPw6+wNcxYcIG72vH8nVKNsFqvm90+nOC2XhTpOgbia8TpktQB+hJVFFVk9HlVARMuiuOV5Cj5zoZ0efMTWbUrV9a27C5MuJx6x8F4vSFYRuMRenKVD6YwVnw8jOjRKoJyl1uhrI/9ecGmz4B/oTsMgyJngVjsgmuzy8BwjAnX8apCz4qtnDEAYea9MkZ6G19OyQBRXsMwXn+fWs3tpX0ZfEP3fHVZiLcFWQlFAoQleWmipsrOLqWL1GPHqEopokk3wGwkiV12p/hH2folrD1aEsaKpLKWrRYqttpOTNoeBOMy2XZPvArB0pqJwpPAArSz3E/2jmUakvXgkd0BdbufRrWgbkdh7S6FKQwSIXp/pEF5G41B0eqw980SEAzVKLZgeI8YnViiU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(7416014)(376014)(1800799024); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?u4kwKH8GH2EDBJSNyqlkIXYX7AKl3LhIQAvLxsMM94HxhwljOXc/JtzH5VQJ?=
 =?us-ascii?Q?d4wThbExqZHzifo2uu5X2UZTEp9Mq0dmUihUjlXtw2bzk4LIpel5XJQskNP5?=
 =?us-ascii?Q?1HtBm1xtSD5T9FmpQtmNeoyzSPqJj0EQHNTGK9nEhba3ilR7ihdRZQ4IXjiK?=
 =?us-ascii?Q?wiMrk4T1MiTY9S1GPbjp49jJqjx5NLBqcxzvGq/v+ZE1t7C0pntyN0AJI2z6?=
 =?us-ascii?Q?kpZeKyMJIM7xtt821ZOsfWx2ibWE2hVX/wHd2eOq8FxjO/OxTJZH4X1cBb2j?=
 =?us-ascii?Q?wQWYvWnh2mCLFzbSLjtn9IkbSQ2QtlUxARibnI/VVrAcZk4lkGaG1giaAPQz?=
 =?us-ascii?Q?R+LsNu1z1/gBwpb+NRnC7VJb5qp0W+XLPQrzv+Mjhp3qgRs8NOgJD8EEdRxK?=
 =?us-ascii?Q?wJ3srjm3jrHJpMzMKpzWotBVPCXB8dUCgMqIcyZ2yuKWVjCEfMXKd0aCnm9q?=
 =?us-ascii?Q?4Kb9RxWaLc98esvHttirH+SEaG5QRJpFBDUsf0pTYSviAkpUA27WJWwekGWE?=
 =?us-ascii?Q?2ot3I2Y+9xB3sLK6qvgmtx8NBdd3TwehFRuqaMl9ysM+XXrtjZ1tzrvoQ91Q?=
 =?us-ascii?Q?p2mej05lJBSecAj1604vp/at/fA+Kcdrw77Q0gD6rbaz4i77+f4EgrZI7ozj?=
 =?us-ascii?Q?Su9SS+YeCrSXp7DuWoYVOP6NxPP/DtBOMsVoUGBjFslLbhLH7aKCl/7kEGhN?=
 =?us-ascii?Q?FZfCf7Il1+DtfH20pYuHfzewi5WAgGVA/MtFZ8MPOm086BL5vQnU5YmWirn7?=
 =?us-ascii?Q?+EhoR5YYNgo7wvACe1zQSsJ+/JoidvFQL6J1ukg/T+6BZt2S1CYF5OikxvSr?=
 =?us-ascii?Q?9o5XqT7T8HQyK2/zQ5Xo+CRtMOG8jlHmst+UpzuFvMoFH/0p7VzGQTv9v+r5?=
 =?us-ascii?Q?f5Je8wwxUcPoezUwu1djWMeok/PaFZ4X0bjys8tb1EppKQhwfCUUqBZyrmlq?=
 =?us-ascii?Q?wKEi0ffbCVfYqNDYP/DmXNzWys7iryZA2K36V0ueUy0YItk2/dM5ybBTbpfo?=
 =?us-ascii?Q?jriqc74lR6uJJF8xgphMyynSoG3aYzQrrMt7PZTWbB5jSRrl17hMQcyreeRM?=
 =?us-ascii?Q?6MNlT3+Tk25WayKq1xgBdawCk7tqmBt4lIyRcOreyWUOPxaqap/i6OUD0rc3?=
 =?us-ascii?Q?bW3SvnqPTF/jt5bXEpVNxIb4Q02Nxy9rEG76W810rhIgELY7MfeNwbe2HDau?=
 =?us-ascii?Q?ldzEmkL1Vcf8cFzLSgAExOSJEE/F6Ir/WyWRdQVF9wOX+qKC4LfGQVSYOaDt?=
 =?us-ascii?Q?OaYnLKAjT5lQ4Q06jExmczjod1mjH7i/Y1JpCxUPShMFK+6qYqMKVROC0Sxv?=
 =?us-ascii?Q?o5Uc7MKcAJKgZti2sTPrXTmAEUpv91FJb4l7eZ7rUtIv0POyuc5w4dB+Ff8r?=
 =?us-ascii?Q?waAqjIBiiQRVzLU0MadaYm6PvuJVu5ziRqxMWN9oymGcUgTvTAsZwhM+mOtK?=
 =?us-ascii?Q?KOUJkKhVZbZCclvr39puhSB1XDBxF1Cp7D71s4XZlvBwzhYaqqbv1VrNH3MF?=
 =?us-ascii?Q?LXgdKKhZqQnsGqhnPWhB0c9iECY+WpyvIvLBgd71y/4fpWSKidHAy/sSABTf?=
 =?us-ascii?Q?4KFeNDIv0b22Ye3hRMvCN0Cskyr8GS+utDuDFIia1fF0O6xGFP94vf5+0mYD?=
 =?us-ascii?Q?UyG26N8xIi7kfkXHoEMWUeQPRTDbmK/jp24Wg/pVuUr8ZrNKfYbZTngxoZIP?=
 =?us-ascii?Q?xTuaWUpXYgN6X+ewQz4GLeN7n/uLwP00+kGxNdjLK1FaBc1138NCdVZBzMJt?=
 =?us-ascii?Q?g49kRWJPz2VLrvG54LFfEPGVb3W0WfVmuXrIguJXGqv1Mk6qpCrIdox6Ft7m?=
X-MS-Exchange-AntiSpam-MessageData-1: CqSAvD2BPELR/Fm0t/WCBOrHiuh4bSU5KeI=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef098764-7190-45bb-e91c-08de78689952
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 14:32:58.0289 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IWkZvP/fJ1tKaQaghNiv3uAzPZMkeEqdoGJArTMTvl85sDGg5/BA5ajsYwhM3jk7Jj/xfeMKQHNlOcbCAJWj+/TcHxN3hHySehdzI0tC63E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB9461
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772461984; x=1803997984;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=5GRX8mvwRZdhgVjw7ovNwN0FEHm8mgNMxOzST9oOafE=;
 b=g4tTNSOdu6VAJfbVTExojVE51LvWvj/CjFyc5Cob15eVF4LVK0Hztsek
 Wo+j3qUpHzLKaFaz+dkhpE5Rh0Vj+GOtnsXIA0Jf1aR9o2cXnhP5/786s
 gI/4uaKRGriVs3MJnoiyTel/R6EJ/5QQ9L0vkgLVh99zr5PQ4J1hhsndC
 FseiQTWVsnp3E56z364XUvDpcUl8JMvT6Uc4Scf3YH6Sv1okfT2X3BFi6
 QXtQVlmbRq0wNpfohgKoq4zxX9qsa39TqfpQb8uYBhDkpy9Vy0JgYv3I3
 0QmeQvBJVv1x/XZQjOHyb/JTlv1LTDy8BhWhTKRByhUDOTs6FxyBeCHHV
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=g4tTNSOd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf v3 4/9] ice: change XDP RxQ
 frag_size from DMA write length to xdp.frame_sz
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
X-Rspamd-Queue-Id: 13C5F1DAE40
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:maciej.fijalkowski@intel.com,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:dtatulea@nvid
 ia.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,nxp.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,intel.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,lists.osuosl.org,nvidia.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[43];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 12:22:41PM +0100, Maciej Fijalkowski wrote:
> On Tue, Feb 17, 2026 at 02:24:42PM +0100, Larysa Zaremba wrote:
> > The only user of frag_size field in XDP RxQ info is
> > bpf_xdp_frags_increase_tail(). It clearly expects whole buff size instead
> > of DMA write size. Different assumptions in ice driver configuration lead
> > to negative tailroom.
> > 
> > This allows to trigger kernel panic, when using
> > XDP_ADJUST_TAIL_GROW_MULTI_BUFF xskxceiver test and changing packet size to
> > 6912 and the requested offset to a huge value, e.g.
> > XSK_UMEM__MAX_FRAME_SIZE * 100.
> > 
> > Due to other quirks of the ZC configuration in ice, panic is not observed
> > in ZC mode, but tailroom growing still fails when it should not.
> > 
> > Use fill queue buffer truesize instead of DMA write size in XDP RxQ info.
> > Fix ZC mode too by using the new helper.
> > 
> > Fixes: 2fba7dc5157b ("ice: Add support for XDP multi-buffer on Rx side")
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_base.c | 9 ++++-----
> >  1 file changed, 4 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
> > index 511d803cf0a4..27ab899a4052 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_base.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> > @@ -659,7 +659,6 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
> >  {
> >  	struct device *dev = ice_pf_to_dev(ring->vsi->back);
> >  	u32 num_bufs = ICE_DESC_UNUSED(ring);
> > -	u32 rx_buf_len;
> >  	int err;
> >  
> >  	if (ring->vsi->type == ICE_VSI_PF || ring->vsi->type == ICE_VSI_SF) {
> > @@ -669,12 +668,12 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
> >  			return err;
> >  
> >  		if (ring->xsk_pool) {
> > -			rx_buf_len =
> > -				xsk_pool_get_rx_frame_size(ring->xsk_pool);
> 
> ice_setup_rx_ctx() consumes ring->rx_buf_len. This can't come from
> page_pool when you have configured xsk_pool on a given rxq. I believe we
> need a setting:
> 
> 	ring->rx_buf_len =
> 		xsk_pool_get_rx_frame_size(ring->xsk_pool);
> 

Yes, but doing this via xsk_pool_get_rx_frame_size() as it is now will introduce 
a regression, due to lack of tailroom, so I decided not to touch this logic for 
now, as you indend to improve xsk_pool_get_rx_frame_size() for mbuf soon.

> > +			u32 frag_size =
> > +				xsk_pool_get_rx_frag_step(ring->xsk_pool);
> >  			err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
> >  						 ring->q_index,
> >  						 ring->q_vector->napi.napi_id,
> > -						 rx_buf_len);
> > +						 frag_size);
> >  			if (err)
> >  				return err;
> >  			err = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
> > @@ -694,7 +693,7 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
> >  			err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
> >  						 ring->q_index,
> >  						 ring->q_vector->napi.napi_id,
> > -						 ring->rx_buf_len);
> > +						 ring->truesize);
> >  			if (err)
> >  				goto err_destroy_fq;
> >  
> > -- 
> > 2.52.0
> > 
