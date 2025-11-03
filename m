Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D983FC2D2F8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 03 Nov 2025 17:38:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 23B3B404DC;
	Mon,  3 Nov 2025 16:38:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gzrbCo6v1-qJ; Mon,  3 Nov 2025 16:38:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D9AA404D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762187925;
	bh=OezAB8hYWBTZSdoqChrrOYhV7fEQCymHaLEHMcT99wA=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HMSPUrK2yoStAUI1nTCbYnJtzVHykCX+GNI534E9KS6ZLOIGEXBT0LwfmDY7o/oLx
	 D0DzLQMNpfpmDlbdAQMptmPro2tQU/moAZ9dbwuavtO+CtuNrtNYSugR/WIv9YhsND
	 f4wq/uV+7nfXfQearEDT51Xk46rhne7O6ek7gdnULboae38OrdsPHsQAUdKqWnuLIX
	 KiD8LEcoOGta34fazSCcrOS7+0vFa5bznJUWJg5Y6NqL2dJnpYK8C4KMNYbLycnOiM
	 50shcJJVwDrYJ+hJUUd/jsbUxoGuakak00k1IVCaP8kplfsFZFSuK30w95IOS0DzAm
	 zYfh/K4W/aJag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D9AA404D9;
	Mon,  3 Nov 2025 16:38:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 43249278
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 16:38:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2981540093
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 16:38:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4K-w6EHnq6_Q for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Nov 2025 16:38:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 42A2C4002C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 42A2C4002C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 42A2C4002C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 16:38:42 +0000 (UTC)
X-CSE-ConnectionGUID: YCySCGOtQwuplbBNJXub0A==
X-CSE-MsgGUID: p+O16SJHTXCnoT/7ptUlOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64193137"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64193137"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 08:38:41 -0800
X-CSE-ConnectionGUID: HESFjc+sR3OCIvRjjGIvqA==
X-CSE-MsgGUID: jNtUDniqRLuboHB0kOTEfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="187634254"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 08:38:40 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 08:38:40 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 08:38:40 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.33) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 08:38:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t8dHMWvUhM4a3UUmkeNj7PwYZ9xW001yqhyLZi08u5RL2D2BFL121vpzQr6+rLcCKuobKBgRF6u2A/by9JAE8o6cSjHGaDMGC49FXw2rnThRI0z3O8WHvjfyPInyar+sZcmQ6Zq4Ephc9QfBdb3Fb5FPPjVdKI/BR1OOpOB46S7aGmAHnFdTZZIdoWuGsK/VydPAwuv7MqB1fGsKw8EJQpXzU3DzR0x+sFmtFPJUZ3hDqiQgSxTCamGiiCZTRGlKpINc9c/UsaAyGe4IORiZi6wFhsDYSKFmFL5dy+jSW3khR0oO//n7fM+7BttfYDEq0vSHVQiNBAB3QQDZXCHcjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OezAB8hYWBTZSdoqChrrOYhV7fEQCymHaLEHMcT99wA=;
 b=NAF9IzB3ie9xKocJIE/u7BkPToLf134hcXqxDvuEJrnqrQeQ97Z5CB7lUk3Ey6FLc3235BsbTMno3K99bK0ZO9MYhTCKZUtnVeckb3Lci0g1g8MqLt2GxAM9cGhv3RtneIW42VNrHZEVRP6CugNed+emwXIJenDHJwlrchEoq1JWGeLzXpQZKuyp9u4SN0y67HP2Gkcc0XJzJHGnQH+2Xcf6mxx2/UXIHG8j10/yGfKzoO6c6QqlTFmv5HIr2oLRDq1/9M2f1q2DP3ZmoY7DPG8sarapyCiAUUmVb/8Y51Yqi+5Wq2Ac7afDRovZ9fJCmJbgrAN/aTc/MWU3Gnz2Lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 DS0PR11MB7969.namprd11.prod.outlook.com (2603:10b6:8:120::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9275.16; Mon, 3 Nov 2025 16:38:37 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.9275.013; Mon, 3 Nov 2025
 16:38:37 +0000
Date: Mon, 3 Nov 2025 17:38:29 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: "Nabil S. Alramli" <dev@nalramli.com>
CC: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <ast@kernel.org>,
 <daniel@iogearbox.net>, <hawk@kernel.org>, <john.fastabend@gmail.com>,
 <lishujin@kuaishou.com>, <xingwanli@kuaishou.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bpf@vger.kernel.org>,
 <team-kernel@fastly.com>, <khubert@fastly.com>, <nalramli@fastly.com>
Message-ID: <aQjahdk/fl6EBcso@boxer>
References: <20251009192831.3333763-1-dev@nalramli.com>
 <20251009192831.3333763-2-dev@nalramli.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251009192831.3333763-2-dev@nalramli.com>
X-ClientProxiedBy: VI1P190CA0042.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:800:1bb::14) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|DS0PR11MB7969:EE_
X-MS-Office365-Filtering-Correlation-Id: e299c72b-3776-4022-293c-08de1af76ff6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|1800799024|366016|376014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?2gGPzvy02PcY0mYNwk09tLudtpirjbd5p75pjN1s63MsCRmx5Y1m9nne27Ab?=
 =?us-ascii?Q?SVQq/eafUj4HWVUQkOrOTGOwomKsvZpU7ZyJe6FV9UvVN8bBIHXDI1tcV85o?=
 =?us-ascii?Q?hyndoaUEDHTt8iq65NrV8IDFIJ+XsgnvmWxQHbnOVtH3I0nu7CqO85gJO/Oe?=
 =?us-ascii?Q?GL2tDYzZW1u5onWoQSMXj8tda11CecrViP1N9skHqGvAPERWjtphfmxh9Scf?=
 =?us-ascii?Q?KRaBYcGYqM0VzHbUiERDztLUxDx2zVsr7DScVKL8T1ktWWwcOJY724SkEBVo?=
 =?us-ascii?Q?pnSTsDT0Wti58c+V7gRDzR2meXIbbDluKxXN59sKGtiu2jgD/b7cMm1vF3NB?=
 =?us-ascii?Q?Uc3QRrnW+KE1yIoAmTO+ubTkt4ocyICQ41GCtgMSrneiHnP1uGQCS3IKo4pH?=
 =?us-ascii?Q?eiR9lzjWAaFBXc5P9qzNZUT9wSHT9TP8hVRN817oG9JajeDUR6oeNwvKekPZ?=
 =?us-ascii?Q?2nRbdzvOpjzoFarEXucZ7gauSVSLj5L5VRlSybXPUNww0N2TpPQ5lP9Wr8cd?=
 =?us-ascii?Q?Pt6vTrGrRtSqrUcWWPQdIi7pKbWI7m+XmmVlcZAsmbHmQny1sl+ABslOlYiU?=
 =?us-ascii?Q?tulm4shhq1/eUzAzXbp6QvyMbDGYCj75ENS99b9T3Maz4aOP/deus3NudopY?=
 =?us-ascii?Q?7RUL4Yd4Oj2nHWGLdsMtzbyHmfqok/L9INioG8tn6OnlF46YfcChkrMOoCKW?=
 =?us-ascii?Q?mYwsDV8CB71EKouKWBXsoqjKT1ZgLnnscah4M6Cz2jhjuy+pK9w/Gz1V9cyd?=
 =?us-ascii?Q?S/1k9lr7hvg+98JjOrtmzozxg35p4Q9dW5RGgoUVUYqB6xqmciVEDdXBevkN?=
 =?us-ascii?Q?LwWQ+G1gMsFgSleEgPh8zHdWMN873mFPN9ILuV9fEORUMGGX+TesakrDWzWb?=
 =?us-ascii?Q?nKy2YedoZaTczdc00LHOwJgsMDOWfZeNDshb5BnCZJgoyyqK2uYUuBAKtyjF?=
 =?us-ascii?Q?Cv5a5ZlkbYkrNHZRAJydkEDV/HvpAT1xIRwrOm8Q2MqVUFpnRfB3Nl2IPPWV?=
 =?us-ascii?Q?6veam/CaALfyQCIm6+SYqMAPi3cl9UDX/s19ocx6e01baBtKbw6ezhBU/3ce?=
 =?us-ascii?Q?HFY72ymr8FUS/DkZHXETARqFnI5Cr7lMQ3mv5WWm/Xh6JQ56tNDepyOiS98/?=
 =?us-ascii?Q?IQIBG4tRAcCxn5ZzHdRPLFuFYe/Pv0WHz0/KM7oC33eWVyITzEvwBmZIhtT5?=
 =?us-ascii?Q?MAlGgYLc92DBXjZ8ng9mUM6UK2Bo5YTW4uX5H4HZcG1Yxy7urkRoRg1BBafH?=
 =?us-ascii?Q?KD4ghb+bRPv34KQgl3N05uxjEhTDmPEV8IMxXkAxeULeIlno/VT0zkpCw5iv?=
 =?us-ascii?Q?mi9avRw8wNxDSbMcj3WruuOEqpxc2BRUA3yDS+yrIJpxLPuMxRbLsedmb5Q/?=
 =?us-ascii?Q?NiIKOCx1urN7gorst9zpqKHR1iZwGOfb14BHI7yafgOTMg9Y8DDNxsJQUX1t?=
 =?us-ascii?Q?SPjsBicWiu2LFusxfjatvDGV3l8+Tece?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(366016)(376014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hqsDKBmtZqAh2oYnvM9HewtuDr0mxVJyY4zXF+Al+HdYDh2mm6qCoQwycCao?=
 =?us-ascii?Q?DZt/EibwhETmbaXuLWyhp2lSQ9XjW/BUqsqozN9k18i5IcKPZNgZFWREMDpx?=
 =?us-ascii?Q?Fpmtzg7QDJU0uUHY0HBD33mp4zIoyF6Pp6BAblXa1XirvH6jscaRFFT8HoNS?=
 =?us-ascii?Q?/lu3S1Prch5iZIJQHfKBZvoWBTenCdLDJp7syxzduVUadkchTUrN3pdw5nw6?=
 =?us-ascii?Q?3yhdT0PVKpUVira8Ei+xwIkPfpO1nC0lEJXMJLI8J673ixBHeABqE1eeJh5Y?=
 =?us-ascii?Q?y6b/7uAwifgd+Xn1Dqs3aokh1NamIG71EWqAoGxHZW6GHv2znLfK3jcugnM3?=
 =?us-ascii?Q?IoharFsOAey4qLGpWHX5MIEdQ5lrMvrkQeIfjNVioYKOW3MQk8djmaKgIDfx?=
 =?us-ascii?Q?+g5yUwsIzUwAeVnFuv2UYctW1j1lSHLPbkpa7DngWNiAJTYJg0EJ474HJG8F?=
 =?us-ascii?Q?YK/9oSQgR36Txns/3AvSi1b3ostMV3P/zPeM9iiZp1gMVUjuavvbg3LHENYH?=
 =?us-ascii?Q?6rk76cy6TKlAXuin3ZVl8Q032J0uNo4FQzWMQWvn3yFdgTcj5kE4R2c9rc6g?=
 =?us-ascii?Q?cbQinepe3QcK70yvJRmdOKfXrFKDOdzvZiLuaat62ZSbkkKkYoK6PqDCgUVv?=
 =?us-ascii?Q?3motp8LxJ4uibqwvS+Bf0dj6IweWB8jbRZvnNRPtdpKKNNkeQefSoz/YfhzM?=
 =?us-ascii?Q?VP6p9nGRpY4W6xejdRUDEAPD0vU7vNB6K7cXlvDorayCwrY094vBPgYQIJQz?=
 =?us-ascii?Q?g6QuaeFOVDbBQlG6Z2WOiSxymDdEKKVTpTnkNTsZ9JhFZw0ZcJnJKwAFNyPT?=
 =?us-ascii?Q?rWkaD27nQQ2FbAsU8nQvyiZLXfNvuqYCw+44IH8cUIT5QJDz61fAnWezmagk?=
 =?us-ascii?Q?Tr736SZTvFkCax7Zoj6NGJ0dUHQ1WIu1fqTld4qz/+FSsL++prD+Ovuj7SQc?=
 =?us-ascii?Q?MPxK1CiWmlLbUi3YVgujdr+tUjQiK/qVqXu56LqArRqRQtHFMG51QpiD7O7i?=
 =?us-ascii?Q?X7Ijl6XI33YEgw++pUW9SFdKme6fKscQKBMyNHuSqFGjB5T4tLPlRbYf81Ju?=
 =?us-ascii?Q?t+bD57Sfo1qyrJnyfcLPT209zLc8EwiI8WY7R9B/VTN+rbppJEX4Y67jqC1c?=
 =?us-ascii?Q?01uz1Ibi+tL97smgpszDHTn7cUhAStilNvymHf4RZ4Ek1Nfz40oVZWjoaxWr?=
 =?us-ascii?Q?XOVLANHVB31fWI/RkO+s403O6TtSItqQjpY6Tjs7qP7/VJB4lQE/qa+nndQf?=
 =?us-ascii?Q?NsrzzY3LqFBjKYxzsYJrnB1GkBiKu7Dtei+bHlaSELe+iH98coHxRBWRTmVk?=
 =?us-ascii?Q?d4NuL/1FzUgtxCa7/LzFihNuvtCAsJiP5D0pSUtVwd5oTOAQTPTJA8nKNzZM?=
 =?us-ascii?Q?3nEfpXr7R6QbutAH+6pejtWEV7R5OspNfca2QOWuywHVGrTDteaED8TIvG2F?=
 =?us-ascii?Q?zHwIsEkXjliQla8ixnGBnLiBT420E+AmtmPTDoar9hpsdWtQa2coVvzgJ2xI?=
 =?us-ascii?Q?sprHEiy/wQcfPsPqm1STo8kBQuXx0iQYHej/1lwZFB4LF/afrybJ7ih6o24/?=
 =?us-ascii?Q?tUSGv+NaCgx+nk+RN0T84InALBjYJefDTBpin//+qqnVv3EBOQWDCb3fmTYS?=
 =?us-ascii?Q?YA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e299c72b-3776-4022-293c-08de1af76ff6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2025 16:38:37.2149 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RaQPgqe4a+lBp4rPocCuqkDnlYYLjwznmY/SwkaCJshSMgryVwrirbnhOUJvJ2B2a/701CSIplNac+RPTINctSwnAOkMT6Sv6ROUrYdeMSg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7969
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762187923; x=1793723923;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=1W+r+o+t3IqavTcNmovLoIbWiayukiMdW01L0zEEWMs=;
 b=Nn7kG9lC00RlMdBZ9rf1W4MVouFcYo9aeGuwUobV4HyWwLXdIgYI7Vv2
 TTOKP01Rs9A4mvVoWO02xJ3Yf3luxnl6SECB+yXRjKQMvR4/pwjlps+CG
 G6nrs2TgjtDq1T5CpHvnKRRjvBCjvGJdRDJVtZ2Q2pdSuibxnc2tTy8nZ
 sKADRqSerSADFApfHmuy+V5T4mbYvcctrgFxzn+XBmvOA5bTFbV7qQSDf
 QkRTlpCCWkFUR3jiqlKbzKB6qGcBIK8HdkidVhna3viDXyLEMMuUo8fnf
 cWPOVFcMu8bxLI5eI94GpD1cBW1oEdDbY4IcCv5PTdhQVzpcu1YbOQpp8
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Nn7kG9lC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC ixgbe 1/2] ixgbe: Implement support for
 ndo_xdp_xmit in skb mode
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

On Thu, Oct 09, 2025 at 03:28:30PM -0400, Nabil S. Alramli wrote:
> This commit adds support for `ndo_xdp_xmit` in skb mode in the ixgbe
> ethernet driver, by allowing the call to continue to transmit the packets
> using `dev_direct_xmit`.
> 
> Previously, the driver did not support the operation in skb mode. The
> handler `ixgbe_xdp_xmit` had the following condition:
> 
> ```
> 	ring = adapter->xdp_prog ? ixgbe_determine_xdp_ring(adapter) : NULL;
> 	if (unlikely(!ring))
> 		return -ENXIO;
> ```
> 
> That only works in native mode. In skb mode, `adapter->xdp_prog == NULL` so
> the call returned an error, which prevented the ability to send packets
> using `bpf_prog_test_run_opts` with the `BPF_F_TEST_XDP_LIVE_FRAMES` flag.

Hi Nabil,

What stops you from loading a dummy XDP program to interface? This has
been an approach that we follow when we want to use anything that utilizes
XDP resources (XDP Tx queues).

> 
> Signed-off-by: Nabil S. Alramli <dev@nalramli.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  8 ++++
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 43 +++++++++++++++++--
>  2 files changed, 47 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> index e6a380d4929b..26c378853755 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> @@ -846,6 +846,14 @@ struct ixgbe_ring *ixgbe_determine_xdp_ring(struct ixgbe_adapter *adapter)
>  	return adapter->xdp_ring[index];
>  }
>  
> +static inline
> +struct ixgbe_ring *ixgbe_determine_tx_ring(struct ixgbe_adapter *adapter)
> +{
> +	int index = ixgbe_determine_xdp_q_idx(smp_processor_id());
> +
> +	return adapter->tx_ring[index];
> +}
> +
>  static inline u8 ixgbe_max_rss_indices(struct ixgbe_adapter *adapter)
>  {
>  	switch (adapter->hw.mac.type) {
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 467f81239e12..fed70cbdb1b2 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -10748,7 +10748,8 @@ static int ixgbe_xdp_xmit(struct net_device *dev, int n,
>  	/* During program transitions its possible adapter->xdp_prog is assigned
>  	 * but ring has not been configured yet. In this case simply abort xmit.
>  	 */
> -	ring = adapter->xdp_prog ? ixgbe_determine_xdp_ring(adapter) : NULL;
> +	ring = adapter->xdp_prog ? ixgbe_determine_xdp_ring(adapter) :
> +		ixgbe_determine_tx_ring(adapter);
>  	if (unlikely(!ring))
>  		return -ENXIO;
>  
> @@ -10762,9 +10763,43 @@ static int ixgbe_xdp_xmit(struct net_device *dev, int n,
>  		struct xdp_frame *xdpf = frames[i];
>  		int err;
>  
> -		err = ixgbe_xmit_xdp_ring(ring, xdpf);
> -		if (err != IXGBE_XDP_TX)
> -			break;
> +		if (adapter->xdp_prog) {
> +			err = ixgbe_xmit_xdp_ring(ring, xdpf);
> +			if (err != IXGBE_XDP_TX)
> +				break;
> +		} else {
> +			struct xdp_buff xdp = {0};
> +			unsigned int metasize = 0;
> +			unsigned int size = 0;
> +			unsigned int truesize = 0;
> +			struct sk_buff *skb = NULL;
> +
> +			xdp_convert_frame_to_buff(xdpf, &xdp);
> +			size = xdp.data_end - xdp.data;
> +			metasize = xdp.data - xdp.data_meta;
> +			truesize = SKB_DATA_ALIGN(xdp.data_end - xdp.data_hard_start) +
> +				   SKB_DATA_ALIGN(sizeof(struct skb_shared_info));
> +
> +			skb = napi_alloc_skb(&ring->q_vector->napi, truesize);
> +			if (likely(skb)) {
> +				skb_reserve(skb, xdp.data - xdp.data_hard_start);
> +				skb_put_data(skb, xdp.data, size);
> +				build_skb_around(skb, skb->data, truesize);
> +				if (metasize)
> +					skb_metadata_set(skb, metasize);
> +				skb->dev = dev;
> +				skb->queue_mapping = ring->queue_index;
> +
> +				err = dev_direct_xmit(skb, ring->queue_index);
> +				if (!dev_xmit_complete(err))
> +					break;
> +			} else {
> +				break;
> +			}
> +
> +			xdp_return_frame_rx_napi(xdpf);
> +		}
> +
>  		nxmit++;
>  	}
>  
> -- 
> 2.43.0
> 
> 
