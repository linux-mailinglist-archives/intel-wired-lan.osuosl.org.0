Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QZ1FDLrA8GloYQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 16:14:18 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C587486AE3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 16:14:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4CAFD837C9;
	Tue, 28 Apr 2026 14:14:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3rr2I_IRFU0T; Tue, 28 Apr 2026 14:14:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A176383777
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777385653;
	bh=smzotTqvUBezFhgRyD4c8bkS+dQot14xjFiPQBl1fZY=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=z90Ki3qT6yUf+zj3ec+4U36AR/6h319h1PSCP0N5JdNeBuvhwKdfq/WdRWH/Hpyuq
	 RsnjYbYg9UpYX8+LlM2URgaOzIgUHwLRQ0/Q/7ub7RYlazWtMJZ4HGrkkdfBMF6It1
	 36MBolUmdCxCEpgGtQLJLb4KcGmNdQzIT1n+52MIRGNizQm0FnYlh5dIkAquxoRhwR
	 ZDIZMRLac+fUvj+sOZzBZDHJIFnloR0Ddfw144gWFE7GN0lP2biRMBMvCIHHvIgZtP
	 1ma1LfMI33ddZs2Kliq4tYCZQANiBSSeJHd73N/Hr36libyO3puzot+4eO6/tMB9QG
	 pEnLqz+hr0sSw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A176383777;
	Tue, 28 Apr 2026 14:14:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id CB3DE1B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 14:14:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B052560EB5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 14:14:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oa4eF4Deh7FU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 14:14:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DDCEC60EA6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DDCEC60EA6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DDCEC60EA6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 14:14:10 +0000 (UTC)
X-CSE-ConnectionGUID: 02x3dbLKT+6oQK4tHXxu+A==
X-CSE-MsgGUID: 2pKIVa2PQPCUc30wl2vUIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="78278646"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78278646"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 07:14:10 -0700
X-CSE-ConnectionGUID: XVBCXsC/Tz+yHPDvNgv7Iw==
X-CSE-MsgGUID: WzoqhVfYQzmJQ1KN3nuNzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="238939553"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 07:14:09 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 07:14:08 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 07:14:08 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.48) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 07:14:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Apfx58dgsU34Fx9JJQdkXJr0VVuls0S4TeaL/IZafTdU7jJzq/NZJqTQ2tz91Z5YNl7HvBlrQJbuYBDnno+KfXv28znKZMLgZv2CnRRADENvOs9nV9MtrzyIo2TmreDRjdZR9z+Y+lCYjzOM6b6EXCNFH26Rk+SxaDLrocJBhAZcZzVJzbvcr+JG0bIMkNVGfgyiLXe2pXMIILkcJmZsrb1jtpOlOesMlF48n5mkSCODwGe/E3Ys1JdSoV2zX5lmccSys6A5n0yrQH4AqRbKKLQgTjhUXp+N8cudBajZpbxCqcu7XVxcKFQG6BLJZVTU0n/vmsBstQ+N+vh1GSaLkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=smzotTqvUBezFhgRyD4c8bkS+dQot14xjFiPQBl1fZY=;
 b=GL0euqYOHfug4X5SB2ffW1hP+fBX3t3mzgy7Kte43ww0HfbIn9W/zx2vO12kot8OZzwtM9Pr1E3uUB8CRSrI+j+JZ4MJZ+floZXZ40HnSMmn7pVLpj6e3Ik4P4VVUVqYmxfGxsbbTFEO5MgHZspOy0VZS9k26LqaOCk3Yl3ifnRZB9GvfZI5Q33iwpwUJ8zL/pmLTN5S4Ac5fLATvzPQFSo2ip2/QGSvyvS/ONyllLq0Tc3KRo/2t4LvaRa+cH62P6QxmA5AaUrzTuS9CErVzDqqY1XkxfWVIF29VwJOwwiErLKUt3HG6Hq7ZZEyMgUt4fhzE/LUbvOQdWOMyQpR0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7529.namprd11.prod.outlook.com (2603:10b6:8:141::20)
 by PH0PR11MB9775.namprd11.prod.outlook.com (2603:10b6:510:397::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.15; Tue, 28 Apr
 2026 14:14:04 +0000
Received: from DS0PR11MB7529.namprd11.prod.outlook.com
 ([fe80::1289:ce98:2865:68db]) by DS0PR11MB7529.namprd11.prod.outlook.com
 ([fe80::1289:ce98:2865:68db%2]) with mapi id 15.20.9870.016; Tue, 28 Apr 2026
 14:14:02 +0000
Date: Tue, 28 Apr 2026 16:13:49 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "R, Bharath"
 <bharath.r@intel.com>
Message-ID: <afDAnbuQaZ2DhpFs@soc-5CG4396X81.clients.intel.com>
References: <20260428082654.44364-1-larysa.zaremba@intel.com>
 <20260428082654.44364-15-larysa.zaremba@intel.com>
 <IA3PR11MB8986407D74E9DE59F31B7AB5E5372@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <IA3PR11MB8986407D74E9DE59F31B7AB5E5372@IA3PR11MB8986.namprd11.prod.outlook.com>
X-ClientProxiedBy: VI1PR04CA0072.eurprd04.prod.outlook.com
 (2603:10a6:802:2::43) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7529:EE_|PH0PR11MB9775:EE_
X-MS-Office365-Filtering-Correlation-Id: 20c21628-6535-4a7e-41a3-08dea530654d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|7416014|376014|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: +Mum8S5lptSrSvxmcoJrhrEfer2NbMcioOEG6gOwkeN1YxPPl65ppwyZDdK1yyKoJ4pKnbvnP8q86xf8tdxxie8CEh4oP7hD3BntdTLcTuOtnjL0IG7eztuvOWAQkIPNjnUQXdbu9/stLzdKtpHoqFVvIwyvNssAjlNeK5/IHy4Au4/PXksoc/Ru8shDSVHukhcbo9oEIwDaGGtmwEyZX29TVNCzfCPOqo0WMVrGzhUdYv9SLHoJ1R4eBgEAAwt+Ma2KH8gkz65UNjatV6lmC089TMWp3a1Q+SIPdiYgGpkTKcfWhHhHAg0kSSt8CzcSGC3wtBMVwWvJmx5rTOAvuRCBwqxNTm4uc+VyrJ1H96Wa2eeZ8cQ0Embu0XG2zFuiMZvRqqnA6p9kbx9XPzyLeMOzqCBjHoOYCDP8sqIKDMaEYWHWEj9XN57kuXIv2PdokZXNt+aYmpq0lBsH74QNElJn9rlaKkZHiww7dcaJFT3PKNVPTRs4HIauoaOMCWUBkWTqix2bWyRV/MEP3F2EkudLZV6v53f6TJo1b0DmTmsxJk8s62FF2TC55ysqbmaRreYkQcKH4NW2dMYq9EGOfxMtktZIgiOTa226E8i/IdVu7EUDd36z+3IENpdUvLW/kk/XEZ+D0G608XjTpfYB32Mev0pwfj4qFSI0rBivKYkUgl6vL1eCVa3SmCLv718gFKxtM2FSdzzBI4L0Yv13VmJgTFxwNUY6Hc9FEz4Cn24=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7529.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(7416014)(376014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WPTJn2Omi+HVXB099BiCDFrSDEIunPwv1YQvxycri9JCHYJ5ZLhrx00BykkC?=
 =?us-ascii?Q?A4Rg8YT8WONFgbZSgei/c9xBuejhsC7Z03mwuKJIX2L7e9LH3kC8bDOTvIGF?=
 =?us-ascii?Q?U0HhrqE7s4q48tXLQEw43+bz04n24xtxUjr0J5zs2n514QMGOrtXVLpcDvQs?=
 =?us-ascii?Q?M3QXZiX38dWbEsucxA484vFALOdGwo7ZPeeqEjUvLjmkIhGMMlFWOhPjxhQq?=
 =?us-ascii?Q?iDCRja58OSGi0e4tg+3sqKzwc8lyfhFSvFMJYTkSWbT+YUabqLisc2hKgrqA?=
 =?us-ascii?Q?noLAjtWHNzhb4wSEIQUoSqFSj1auGVMRAG4fZfqIQpcFp5rhSocOBTUcH5PP?=
 =?us-ascii?Q?W0Z1qyhEHIRve1ZLQR114DPQRf5ghaMEZOlLHKIbfMoO0BGrNe+kHzKzhkHz?=
 =?us-ascii?Q?Tw7jjWvAB/86D6Zjm6Bf1OQJWj+r+r2rOBPM1hc840zSN5qZYDyIsp/zQ99o?=
 =?us-ascii?Q?XKGwnopD65hg1bUuSS+D3kPC5zbHpzmUh/BtrTJ/ZSHGUspq/Apwf/XS7e96?=
 =?us-ascii?Q?P/6kUJd9qrjUw/wuy6aUSHfNArWkC+pnBk+4iwfzeV3LQ4qbsh+jaHFrUft9?=
 =?us-ascii?Q?m/D1cB8ad6Bb7vCMCsKy9vzHZrz4UM36kNGBkB9Xq7xjWWBVJkofBJKOhtQx?=
 =?us-ascii?Q?THdg/p3L61rVJqGM3OX2rJ2n1WBUDL2CZxeblbvI5IG7TSBLWRP8V2o1ASgn?=
 =?us-ascii?Q?+g2t32lrpzWu7r28hVAjMAQUTOF3IIzT+V1BVgbveRpSURWlYydcTWC+sXbp?=
 =?us-ascii?Q?jL45mPKwMO1JTUq7vpb+pxvy4LA0d53Bk8EsU0CTzP7SoqYdElHxt47c3eMG?=
 =?us-ascii?Q?WD5ryfcMzAP1SoXJp34mp9z60K7SUk8S+IDcb4ISncVtyvnE0hK7TgcpGwdH?=
 =?us-ascii?Q?8ku4NY7mgY8HZV4b4YKUloDfLLDJFyI98pmItfAB/pwySeRDx8WTZZW/We1D?=
 =?us-ascii?Q?JuQ7r372b5qh7fX3ssPZHqg155gcQVIM4q2Blj0rnZI55SjLO8932cDv8ChE?=
 =?us-ascii?Q?gBLKk5eNNKBd9/oG7skljNsGy3M61PZCHcR874xDweSay6o+gV+xZcQPn+3N?=
 =?us-ascii?Q?1sl+M+legboNypI7kZZD3aRc07KqsPztpb9oKTbsCOSdCI55j1s8RsIo/nxH?=
 =?us-ascii?Q?/aF1C0/zFvj9GMVOBX6UuWgnBjutw+VRVDXYHL5xoEWf63V9OS06E3+dMWwc?=
 =?us-ascii?Q?nIHgTiqUliOvrK6Rgt372a5q4Q8PJfv+EEy9FGI78RFJDRO3ydBNZZgS9SVZ?=
 =?us-ascii?Q?qwCSOCeKTnSGiJt6/nnGg2xEC6uTG4WBuAiiZXQF1Qbf2EntVbhlrmGiORUv?=
 =?us-ascii?Q?dOrBhhtJtRsj9V3mYhqtSqmohxJkMTIgzZppIEaLHXvCYFAp8oCPnStVLF1f?=
 =?us-ascii?Q?IehIEu9xSsEB6MU9oC6pQcgpxLX/qioVVoeMq3rXFrnDpE9PgzZFVzAHZXcD?=
 =?us-ascii?Q?Pm6tXSGnQ/kYgPPh4B5nh/mINFNzO3h6VXecmVw0IfJzvnGBmFIqxlRi5lgN?=
 =?us-ascii?Q?QNgJRrktqSEV7cONK9BtV8B6dLlafZSmRkDRUxBfbjNAxajOBUNQ+Tt9cjDC?=
 =?us-ascii?Q?MJeXH6oyCGGuYW5JdvZ2p3rfmhYtXtwY1tlF7Za8reKc9QiKCUdCw3kQGHHX?=
 =?us-ascii?Q?DY/o4K347oZlAgQIaCf7bS3Ls0dSmp+FG/GdYOpdU84XoD7cZNG1l30qORSM?=
 =?us-ascii?Q?qexOgMa6sT/XbzcCUXluwSAfBy1aQREvcuvF4IU9PlzvGXjl/0ooh1TJHmD8?=
 =?us-ascii?Q?mSeJBsuRMYbFpr83U432GLw4RBwttKjE1o+SG4SqxySOI2kwntJXBUazG+jv?=
X-MS-Exchange-AntiSpam-MessageData-1: 6yimcEdFMy5dGmjRJyNsERlYwI6UL4MKEEg=
X-Exchange-RoutingPolicyChecked: d6KjN43BkQ3v4Gy0QdSVuxlCrGfm5A7LfuTYF11jxV7E3zdqUkqU7odlJaodCyL5Mh6C6QNKLa0E7fx6PWiJmM//GsvhOZWnSK60Is2Up9DldPPNyBccnAtO3tZ3V3rO/qYpiTvZEutp7+9Mbk480SgN6kiD/THiu7XZeNMao2PEg7iWJBeaiiG4iKwNLSr5DBbaZYvalCnMD2vZxpIaJi1gjzgUm/f92tV/P26MtM8c4punkS4OI/DyDzfUpQN50rYWgjLDid0mJjIj1a9SyGOP2a2LujBPfGpDbkDfk5mu3j8S9xbHzHRDl6/8Q62X+KQRVBXZ9Ue0NUSsZM4tvQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 20c21628-6535-4a7e-41a3-08dea530654d
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 14:14:02.2147 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q8IRlp2zLn0iIX0BpoGcUlNiUYPUL3zyapQX78KhHSiU0MMaWxqgOGVlGGESWtEyb8q2SNgyspLCAioNAJhbqgG1TJTPLjFKyjrOnYMsL/k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB9775
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777385651; x=1808921651;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Q57qkGb4DqCxdliaqm2PXOxy4jukTPb0fkQdnTpcKDA=;
 b=TXWRr6UeIZTD6CbbS+v9b05LSnH/qMOe62sYTSns59PIFPTK2mABvgFC
 uMCUt1B1+yIsuizfw1SokCOxl2HoCVUoE77l5ZTh7AoTIaf+v0vsa8LhM
 02iNHKDHwyPeIfcrgrMNytrLWsujShapQGrPAYAVkgP9ze9Z2149e1v3o
 xjYaLRPV1CQFhDyNLBZwRifuOcqNnoNAjSizXqXGK9uCeWnmSn+HtbTYT
 JeIe8bWV3BiiqBPZ8MdO2L06jQjkro7n7zs37BK3mBCW60B80E5TESD2J
 N8GjxmQk+ZeHZwO6+rk8/GLHkgaj+lVKJxw4tRpkmmBvjr73PwCa7UfST
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TXWRr6Ue
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 14/14] ixd: add devlink
 support
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
X-Rspamd-Queue-Id: 6C587486AE3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.osuosl.org,intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bharath.r@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-0.939];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[]

On Tue, Apr 28, 2026 at 10:53:47AM +0200, Loktionov, Aleksandr wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Larysa Zaremba
> > Sent: Tuesday, April 28, 2026 10:27 AM
> > To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>
> > Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> > Sridhar <sridhar.samudrala@intel.com>; Michal Swiatkowski
> > <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> > <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> > <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> > <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> > Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> > <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> > <jayaprakash.shanmugam@intel.com>; Jiri Pirko <jiri@resnulli.us>;
> > David S. Miller <davem@davemloft.net>; Eric Dumazet
> > <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> > <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan Corbet
> > <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> > <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> > doc@vger.kernel.org; linux-kernel@vger.kernel.org; R, Bharath
> > <bharath.r@intel.com>
> > Subject: [Intel-wired-lan] [PATCH iwl-next v7 14/14] ixd: add devlink
> > support
> > 
> > From: Amritha Nambiar <amritha.nambiar@intel.com>
> > 
> > Enable initial support for the devlink interface with the ixd driver.
> > The ixd hardware is a single function PCIe device. So, the PCIe
> > adapter gets its own devlink instance to manage device-wide resources
> > or configuration.
> > 
> > $ devlink dev show
> > pci/0000:83:00.6
> > 
> > $ devlink dev info pci/0000:83:00.6
> > pci/0000:83:00.6:
> >   driver ixd
> >   serial_number 00-a0-c9-ff-ff-23-45-67
> >   versions:
> >       fixed:
> >         device.type MEV
> >       running:
> >         virtchnl 2.0
> > 
> > Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
> > Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > Tested-by: Bharath R <Bharath.r@intel.com>
> > Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> > ---
> >  Documentation/networking/devlink/index.rst   |  1 +
> >  Documentation/networking/devlink/ixd.rst     | 30 ++++++
> >  drivers/net/ethernet/intel/ixd/Kconfig       |  1 +
> >  drivers/net/ethernet/intel/ixd/Makefile      |  1 +
> >  drivers/net/ethernet/intel/ixd/ixd_devlink.c | 97
> > ++++++++++++++++++++  drivers/net/ethernet/intel/ixd/ixd_devlink.h |
> > 44 +++++++++
> >  drivers/net/ethernet/intel/ixd/ixd_main.c    | 16 +++-
> >  7 files changed, 187 insertions(+), 3 deletions(-)  create mode
> > 100644 Documentation/networking/devlink/ixd.rst
> >  create mode 100644 drivers/net/ethernet/intel/ixd/ixd_devlink.c
> >  create mode 100644 drivers/net/ethernet/intel/ixd/ixd_devlink.h
> > 
> > diff --git a/Documentation/networking/devlink/index.rst
> > b/Documentation/networking/devlink/index.rst
> > index f7ba7dcf477d..f0c077843fa7 100644
> > --- a/Documentation/networking/devlink/index.rst
> > +++ b/Documentation/networking/devlink/index.rst
> > @@ -88,6 +88,7 @@ parameters, info versions, and other features it
> > supports.
> >     ionic
> >     iosm
> >     ixgbe
> 
> ...
> 
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/ixd/ixd_devlink.h
> > @@ -0,0 +1,44 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/* Copyright (c) 2025, Intel Corporation. */
> > +
> devlink.c  has:
> > +// SPDX-License-Identifier: GPL-2.0
> But devlink.h has:
> > +/* SPDX-License-Identifier: GPL-2.0 */
> 
> Why?

Because source and header files require different license format.

> 
> > +#ifndef _IXD_DEVLINK_H_
> > +#define _IXD_DEVLINK_H_
> > +#include <net/devlink.h>
> 
> ...
> 
> >  }
> > 
> >  static const struct pci_device_id ixd_pci_tbl[] = {
> > --
> > 2.47.0
> 
