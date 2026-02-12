Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKBULkSOjWl54QAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 09:24:36 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D8912B3B5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 09:24:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E28AB41D31;
	Thu, 12 Feb 2026 08:24:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kOWEHoQa9fgW; Thu, 12 Feb 2026 08:24:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 413D041D2A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770884671;
	bh=aA78rVTNueru4FBmSy/EMJcWxNING9spTrfuBie5yhI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Sy5IgIJVIgejzV2lQBUBkyygKmsT15Zjn4znZ8Bm6fhGV3FA2ne9fqBNT/xg26laZ
	 C1sv2N+fnmmhJyRcqsaZ7oZMM+x1DYYU/Bh+K79wQ0ngvWN4QL27amT9hiuajI/rIr
	 aZaPT1Zg3iImTZHqPVQ14tUOe0eonI/o29jo8Y6Q0Jn91q5P1FW8fzlkVFHYCu4dfP
	 0AzCoGsd0Noc97S6vElMYUtYOM1rp7rj/tKB7tG6pt+xmtWRL4LzuB1uX5VT6GCPPr
	 TfWP2imr9xQegnPMnl8cM4lJwJJZGZ6nSqfo/Zuiy8MBPt2i5F+WklCRhHi3H4gAjX
	 Q+uYVna95j9EA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 413D041D2A;
	Thu, 12 Feb 2026 08:24:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9CF4CBE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 08:24:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8B65F80AC6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 08:24:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F6H7eHYSietD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Feb 2026 08:24:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 98190805C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 98190805C6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 98190805C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 08:24:28 +0000 (UTC)
X-CSE-ConnectionGUID: klJaMvG2RgC0NM10dCcyxQ==
X-CSE-MsgGUID: kMgWJmPQQviO+hDQlhQUhA==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="94692433"
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="94692433"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 00:24:15 -0800
X-CSE-ConnectionGUID: ouLJwoZeQ+mnE4V/eKKlnA==
X-CSE-MsgGUID: orV9WN0HQSOIEE4uC0sUKQ==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 00:24:14 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 12 Feb 2026 00:24:14 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 12 Feb 2026 00:24:14 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.18)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 12 Feb 2026 00:24:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zQcebPJ2n8+kU6xKI6wwTxXTcBZ/5XFIsiS+SLpwGzYECwup4nrrD3qIKameGldcTc6X0fOuyQF5M4Qx7te8CDl9wfUYQsPmDXl296vJu+V/WPPHjftUMPMGaCXEbYTAjvEF0cdhPBJCyO/bd3gaJc6b6TIGUpkVtf0RA2IUMVsdpoAij+pTuFYt0rCtAIiDXA4SIKHak1QhFOfWpz4GMeSLwkm6LB8DyKL09q+JULOFV+HlbALhAIRQ0xTpjFaMupkvlVfCtluSFwcAJP+K3/dJod7oQwe4AyzVQOdof12fD0RNXgp2GFEjC54qDC3yuFQryJFEoUtma+cBVgYYKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aA78rVTNueru4FBmSy/EMJcWxNING9spTrfuBie5yhI=;
 b=njlHrFPvkWN5WVbFQL/XcYA+8eTtmIMRnwOv0mbFMUkoCF/L94RBEi6cdGIxW+yiA0IPcGotiZjJwbaj495BBxvHUzgVgDymTZ1itumB6ow7PtQbmoEo8+NYRmffsj+HEkbbHz3WCmcIEaQnRSy5hqNkCVoxU8oqU/jxCF2YUWI7kt1OeBuBiZUWIdxLu7+dwh00BdQiw22XzGYHoJq8R5Wl4itHhZa4AVaJPyIj3nJSh+ZeZgrt1VvEnul8jYKeWMjtkrHQ6bOjslS2ewVEw6IzrJDJOCtFDrVG4KQMMmEoDDo7kahLvuTzJArKvTmdepJ5ijC6u+O2VKevugSYsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS4PPF7CCC4B437.namprd11.prod.outlook.com (2603:10b6:f:fc02::34)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Thu, 12 Feb
 2026 08:24:11 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9611.008; Thu, 12 Feb 2026
 08:24:11 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Eric Dumazet <edumazet@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix inverted ready
 check for VF representors
Thread-Index: AQHcm/S+sql9pW1PZkO5wVEX2ouQRbV+ufYg
Date: Thu, 12 Feb 2026 08:24:11 +0000
Message-ID: <IA3PR11MB8986A2B6F275692CDA3A3713E560A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1770882260.git.poros@redhat.com>
 <a76096058dd9b6d0cccaa5c2c699458351d02cec.1770882260.git.poros@redhat.com>
In-Reply-To: <a76096058dd9b6d0cccaa5c2c699458351d02cec.1770882260.git.poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS4PPF7CCC4B437:EE_
x-ms-office365-filtering-correlation-id: 038a2527-54f8-4e58-732b-08de6a101962
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?WdFQUjjJpecyok4hm/6LIfzEz5L6Klf8bN8zhUIEoQUFVCpF+4p4g+rXXPVb?=
 =?us-ascii?Q?c+VnS3MuUAwIvdueweMF+auC3dZD/+XD/V/psKP2r6V8isudtQKOAnnAysn7?=
 =?us-ascii?Q?JJhYWLEE5goE2Mo8gajI53wcTxqOC5ohBY6nh3fv6r9K9ytKyjpHlY9gjNBH?=
 =?us-ascii?Q?ThoyvaLoaFg0Iio8Yjei2+cGxn20eJ2450gyklYFele7FLrbtgomDlxsWXwr?=
 =?us-ascii?Q?KqNxwY7L7U1hGDM+e7t8PPR5IkdtDZW+5F6zSgxr00Px5AVWvJ/gVZbQlj4M?=
 =?us-ascii?Q?WHsk4Qz3X5JsU8XTAUWrqlKBD1uGICmDVA9mYylDze1Nz6nrsGxSecyLL45r?=
 =?us-ascii?Q?9FCetzysL11CSHLgMhKwPZUOSVc6RNfyMPIKmc1Rkw+XGe2Ge9q9tijjshvV?=
 =?us-ascii?Q?1futDkpoB4hLNULuT6S27nPbiMNfKut0l8G4OzxwsIC57iyLmrOUhl/o84iw?=
 =?us-ascii?Q?/tDtNNoGRkL2rk98ZSQGMARYyUkI6nxHIAnt4SQcH0w11C5+PaZTqdz74yrQ?=
 =?us-ascii?Q?Z0mvv8Ylcm3yDTsNcHREJPWcaj6yq95ZJFm4lvdgR/9ai3sVDBTbQ2ktM8Tx?=
 =?us-ascii?Q?Mxxzrz7zW3RQGKfWnv/ZESeQ+G3I94290dYK7qJy7uFum60M+qRltgM9qUDq?=
 =?us-ascii?Q?IUB3uAbXoU9RQuYIMNOGrePBHOMILCtUorUbyF5gevYHULtQq/sOyxpg2ia/?=
 =?us-ascii?Q?Hpr2ALU9D41hUbFIrmhwBusiQrWeGSIEQ/IxqaFCq20yTBzxEn4yQ4vG7KNl?=
 =?us-ascii?Q?mtQBz/yDWbcLOmefoKONpkVyEK6bizJYb/Xncc0CH1r5PmnOzzgHXWmK9Nyq?=
 =?us-ascii?Q?mSKuPqdkJFE+2wN5vx1w8USO+4IfnOa2rHXLYMEbKm2XlPoiH8kyS+dAYYNS?=
 =?us-ascii?Q?3XQ6xHjDWjAbQGhgdknfIjhEKVGk+DyOOO+YVOHPEyYNBti2Te381XHzr8z/?=
 =?us-ascii?Q?aUYBnyVZIT/B+TgtXJ1MZeKTktI3+VJKnC/EnVR4KVwhQnuSxrGan+v6VYIM?=
 =?us-ascii?Q?k29Jp7UgFO/c7ylX5wVH0RItEwk0K6I5w678T564gNao2+ali6nH2vZQGqmd?=
 =?us-ascii?Q?IZyHv/Tdv3GKtx+AfqQ63uiJFuIy2nThElMb0Jw4Kxbpsfs5HDMT5y7qasVM?=
 =?us-ascii?Q?DKn76JZsNSH2auNMocuvVDktc6JOSR7VuqU7KPLg62qpn9rsDefPvmrZUCFT?=
 =?us-ascii?Q?kq8/eFOHU8QKTldxp8MM3bG8EXxrSj/NN47DDbGtBM+uxOGjHxLavPKUOYso?=
 =?us-ascii?Q?JZPoNY7pRg4y7IcUPzUomg8tXJcFItJ8029Kbcmw5/yWpVGtwMe1Pv1P8C02?=
 =?us-ascii?Q?Eyg4YXMqlVHBZQoY/RJEcaINgNdgUVPX9uCzff6nrNWOEjml7rK1HLSaOmmK?=
 =?us-ascii?Q?vtREkyUT/pm8YE8R+SNqLMS4QxMWFDWzNHiAdmsD7dD3sKMEOU90qeFS4aBg?=
 =?us-ascii?Q?q4/EeYcZHPvTob7lKUnedWAc2XOeRq3qdkpFkhsaLcONe2ty/AxNC63L7pY4?=
 =?us-ascii?Q?FYI4gvnLIybLXmzjBmykLTStByd59EOaBuZ0DXnJm0YD8P11yV5a6NW7zRay?=
 =?us-ascii?Q?hu4YAZ/kAcTSBzGE2fnxBjtwwefdvo0sG6EeOR3B/WpOCv/dVnOilscu8uD1?=
 =?us-ascii?Q?sxd77WPpqvUj474ecr5DOb8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pOa06nbQX/B0bAcoDMLCLU1dBz3aGy5vxTzl521sJhAYrw0Dgh6AL+qEgj+v?=
 =?us-ascii?Q?QjZXcBrz+i/qaxMLWokoNB9xC5NNzdkQcq2u8rMKquUFOeA6O/CAD8TyPW3r?=
 =?us-ascii?Q?6JXCOfGrSYi2APTLG/vPa/ugFRwUr0fuPihC5bsY/N3fIJ3WlHzvJKrLmrLz?=
 =?us-ascii?Q?p0zKsj06YP9y7Yvl3gZek11RmaT3N4jnUwfOvAF7XrymG4rhpLAa2J64MSBy?=
 =?us-ascii?Q?pw2Qf+TM9HVazu5YwxcAKVc8PcTo1NC7ESrcdcg11BuoP4Wb1W+OgteZ6r8K?=
 =?us-ascii?Q?9D3CA0d1yw6FPuY+emNdP6tk0yCnJE25nlTEY/lTYgBbqcYJKAki/KjvX/en?=
 =?us-ascii?Q?mpsZugakonnxsK6m1rHkAzT7/LCe23MGAQu1+G6ixSnAT+LHJ9B25kIEikA7?=
 =?us-ascii?Q?fq3FYkji0N/yOO7hy+lY7WoyJHdtTl050I7Zz4kOyOSXcQQ8Vi2fYsSJKRK6?=
 =?us-ascii?Q?ag7ItJGGsE2xqNPL7rAgVEbiUfGYkiTdWqsNPfSJmlMypgdpNyoxk57++Oa/?=
 =?us-ascii?Q?wkHEoiFllxImTle2NfAGmvVkTg684/4kO3uEkQ886VJdClxT5gb7r7nA2sQU?=
 =?us-ascii?Q?YU2MxbGAveG8nv3coyGirPI4UlBXj0YaSGrWR5epRPegOXWKoXdtVXHQjAls?=
 =?us-ascii?Q?cYfx+6MhDFP9Tn5Y5jpX2H+5+eEdJcfqxVEOF1vuszGeDbJVAOORi1WzzVn/?=
 =?us-ascii?Q?T1xGWvfpO6CcGrXx5i481r6yvwuZI1fTQjnEx0io5c3zg3BDE+hW717f5qJ5?=
 =?us-ascii?Q?N1e36K08gagukJ3LtJeMNrCJUTyD1sBTo1ES1EaR2lQAxgAZajj3rBbaKKJU?=
 =?us-ascii?Q?OXTF7oHVqPUpm+0H6zF4i13Qqu7xx4z784UL4MPMSCxZHkli9lfKT3JH08TA?=
 =?us-ascii?Q?hKqh3dJXEHmdTXQNWm05yaWf9Eehqg5IqVP54lsR/aL5oOiz9pwEb3eigd8c?=
 =?us-ascii?Q?yZGp8L8Ct6uPc3CLyZSKJL2Hl+R4564I0qP8J3aHbX3oQVhQQhQn385/3acb?=
 =?us-ascii?Q?ertfjeQ/Vwde06xl+EmGZtA52DIGsIGuVs7cVjMTxeYTSr0oGPnAsg6xRut9?=
 =?us-ascii?Q?2ViahxZiAe0/3VQsmmW2v0x66x/MTEUKKunsYuK+m6eCYxlVEtJC6NpElHqn?=
 =?us-ascii?Q?vUrqXbqs+Mbwlqk0gdXHhULM75yxQU0pFBpsJltt37K9KfLOcfIjmGAO1OVK?=
 =?us-ascii?Q?zg2L22GigR87JZYvK8NjlF4qmrprBjjrVhwjYyEwpHitNDDFfLu7E0HitNAr?=
 =?us-ascii?Q?QnI56vlag0JKwjWWXy9NVhLkVyQjtBMKr6GQHxN+NY1jAgwQrHkTR56bHCmO?=
 =?us-ascii?Q?DpkfK1ZEs3OfbYkQsFQ3lF+efDL84/bYBh8QdpiVsL9VhL5A24nqicUrKGD7?=
 =?us-ascii?Q?Qb/tDxBkRckX9VAlWmapp07kxdd75QF2w0bieHPWayU4ECjAQfgVmihpXa3J?=
 =?us-ascii?Q?Rw4YVDN8NqqJAbNem01LIh2o4E2MA0m4kywvyMTWr+U9sQ30REGOki+E4pRS?=
 =?us-ascii?Q?y9bHUW9vxtqfCom9vDJhNlvd1kHlq8FeNCrl9grN/nGNHhLw0Nu8ft6gjgBI?=
 =?us-ascii?Q?5p84cLwiZ9Lf7+KFbTWyfeYiIbMNq2pZtf20tK/0xzPJaRZRoa7iZkqv/0i8?=
 =?us-ascii?Q?RAWMJvO9X5B0zVY6zy9ILVHHXzU/JJ2NpvNWcjGdnmSmQ96nlRE+l1IyM7wS?=
 =?us-ascii?Q?RlA81bow2fICSTh+uUVRjahMOuBvQ1ayX9GeqxeiW3TMzoSNYtehCN954jOy?=
 =?us-ascii?Q?YOHU9E6DY+oDZ+VFamAgkMRIW0lnWn0=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 038a2527-54f8-4e58-732b-08de6a101962
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2026 08:24:11.0752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QvCqV7gCyFH5NN1NYVapjJ6RgitWo8zfOY66od4u3anKIB/3MqqoWkqDiVc68tlOt4AxIx5LTjuB5OVB5ABnI5QlP9b93oIztsgTt4mEYvw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF7CCC4B437
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770884669; x=1802420669;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vVuE8pwkpIKsslU9cUfGLuG3PWE3F/EJMEcJDO7jGg0=;
 b=eJgmCvNlsQzMczj9qB4WUB4cB3fEXjZ2NdY8HSnJKYUNEGjeEJ+nOHbz
 1Gjejgsc63HrTATW/ChLa/PKnb71bxxiiW7yKYpxjwNbvc9TGwWxvzB/V
 kOuHBjJTm3fUypdHI4gdqLaKxmnMJTA/Zvm3j667vpJh3I28ijG+gTXB5
 X6cVOFltxJcYFopUuI0NBiEO1DnH8ajNZ08F2fC6rMUkDjbSy/SRmkMPO
 VSpILC3xtGCE2FUMO+2CuzC1c7X1OOPJrqmPqyTyad0avMei1EPKJsvZB
 BpUil+1FOffhYNar5X50rosejiBzSazM2cScyYQiQXFFEbESO68/Q9swo
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eJgmCvNl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix inverted ready
 check for VF representors
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:wojciech.drewek@intel.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:michal.swiatkowski@linux.intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 85D8912B3B5
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Petr Oros
> Sent: Thursday, February 12, 2026 8:53 AM
> To: netdev@vger.kernel.org
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Eric Dumazet <edumazet@google.com>;
> linux-kernel@vger.kernel.org; Andrew Lunn <andrew+netdev@lunn.ch>;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Simon Horman
> <horms@kernel.org>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Jakub Kicinski
> <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller
> <davem@davemloft.net>; intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix inverted ready
> check for VF representors
>=20
> Commit 0f00a897c9fcbd ("ice: check if SF is ready in ethtool ops")
> refactored the VF readiness check into a generic repr->ops.ready()
> callback but implemented ice_repr_ready_vf() with inverted logic:
>=20
>   return !ice_check_vf_ready_for_cfg(repr->vf);
>=20
> ice_check_vf_ready_for_cfg() returns 0 on success, so the negation
> makes ready() return non-zero when the VF is ready. All callers treat
> non-zero as "not ready, skip", causing ndo_get_stats64, get_drvinfo,
> get_strings and get_ethtool_stats to always bail out in switchdev
> mode.
>=20
> Remove the erroneous negation. The SF variant ice_repr_ready_sf() is
> already correct (returns !active, i.e. non-zero when not active).
>=20
> Fixes: 0f00a897c9fcbd ("ice: check if SF is ready in ethtool ops")
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_repr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c
> b/drivers/net/ethernet/intel/ice/ice_repr.c
> index cb08746556a670..2a84f656405828 100644
> --- a/drivers/net/ethernet/intel/ice/ice_repr.c
> +++ b/drivers/net/ethernet/intel/ice/ice_repr.c
> @@ -315,7 +315,7 @@ ice_repr_reg_netdev(struct net_device *netdev,
> const struct net_device_ops *ops)
>=20
>  static int ice_repr_ready_vf(struct ice_repr *repr)  {
> -	return !ice_check_vf_ready_for_cfg(repr->vf);
> +	return ice_check_vf_ready_for_cfg(repr->vf);
>  }
>=20
>  static int ice_repr_ready_sf(struct ice_repr *repr)
> --
> 2.52.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
