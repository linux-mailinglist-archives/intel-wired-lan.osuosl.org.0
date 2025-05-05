Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C018AA8C86
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 May 2025 08:57:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C7E7980DD7;
	Mon,  5 May 2025 06:57:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WMtyhKBjZOOt; Mon,  5 May 2025 06:57:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1369B80DC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746428237;
	bh=UJuQ3CauK0wOisGv/W3hyIX+x7WOcqHx4cEXKeWMSok=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2rRhTVtKMBscbQNAWI4BNjX+P4rFRO+V4mYBhpzBKtJ/TkMJS/tZRdJh47hhHT+gb
	 GZka0a6zve08mheE7YmD1w7BJubFMTGgGR82hv6ak+7IEXjWkK/sDob6RCPGNDwrUB
	 mkKGOtlohxv1lgyCzmaO2Iu3+D+YYWOM+uYn0B7W1w3mm67t19e5y5m/1JLRLZqN+v
	 tSUAJJ9XKBEtmH9m33c0Z9MQKIv+N/vKQowRBSSfSimW2Ju9ksvFlzzE8TCGp6D/Hr
	 RNt9LpqittvLSj92+WX1DuSKhk6F5ItilDYFykAe6dUQeLsdp9wG4BZ6bfTab97wlU
	 LMN7OrJ4JEFyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1369B80DC4;
	Mon,  5 May 2025 06:57:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3AE0D16B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 06:57:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 29BB4404C7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 06:57:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TEAq1dRianeT for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 May 2025 06:57:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 68F3F400D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 68F3F400D2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 68F3F400D2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 06:57:13 +0000 (UTC)
X-CSE-ConnectionGUID: EhHJ2e08TXqiiDmMHWWmvw==
X-CSE-MsgGUID: 5hxmyCmlS3unStAyU2MDmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11423"; a="47732771"
X-IronPort-AV: E=Sophos;i="6.15,262,1739865600"; d="scan'208";a="47732771"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2025 23:57:13 -0700
X-CSE-ConnectionGUID: xNcYS4LQQMmy1evAy48DVA==
X-CSE-MsgGUID: 0HgTFPRKRRa5Mbefx1+jAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,262,1739865600"; d="scan'208";a="139954297"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2025 23:57:10 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 4 May 2025 23:57:11 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 4 May 2025 23:57:11 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 4 May 2025 23:57:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kTmqj+swhj7T1C+IKUaX35BDF9U8uEQ4i/J+ah8HHGo3ex+CC33Jp2BqmqNh0lSOQHZdKo2Xufw5QEkEtU6xOudIPzoVWxkzTlU6N5WRnm7p3+Ol86XZSpVrD3uawfwibi7x9txWD8ikzHIJLCVVdf6btvpLPyxxVw8LG/dMKrscIjzeXTYHVKUFQDbYaHnd3ei6PdRRuXcNFNZbPZIqX3uini/woC9vI4piLoKHTrkmSc/vX4XaUxVq+F3nMhrr3gFVPbcU3mWb6iYIBEKrkD+hu6XAWliDvZfI3TU5+U4kHfFLKen4E2IlS5K7CNfO5MgsWHtVxnbYGy/DCpMn/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UJuQ3CauK0wOisGv/W3hyIX+x7WOcqHx4cEXKeWMSok=;
 b=cUzl/HD39qoMbJxMdWy4fXk5WUenVULA7xdOqH45DRfoabLF6/0UeqdFSOgf73pTvQJKchCsYOmoXHcmi8QbDiOn8a28nDJ10xd4ISl1ABz2FdX4rgZe8ZrFaHpSJmmVyDIg3IHwDFMk90lsPV8Ivt6V2prfEKgkoQa82j/ssTc9Gi/8d+7k/TuZB64FXPKFT2bIFgFJt2eZSLdv+KKoF5paX51yovM7dT3zWHaisRnT3pKNYN0uxfQV6gNzSylM5xHk4L9taLZjdfm8DwzkuSbwk70BFuPLkGVBq/ZMr8xXsvRyxQthP1RgplWIzd24aRSOfg6+HDmzvnIw2Meukw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7529.namprd11.prod.outlook.com (2603:10b6:8:141::20)
 by PH0PR11MB7615.namprd11.prod.outlook.com (2603:10b6:510:26e::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.20; Mon, 5 May
 2025 06:56:36 +0000
Received: from DS0PR11MB7529.namprd11.prod.outlook.com
 ([fe80::d244:15cd:1060:941a]) by DS0PR11MB7529.namprd11.prod.outlook.com
 ([fe80::d244:15cd:1060:941a%5]) with mapi id 15.20.8699.026; Mon, 5 May 2025
 06:56:36 +0000
Date: Mon, 5 May 2025 08:56:18 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Simon Horman <horms@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Jonathan Corbet <corbet@lwn.net>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Jiri Pirko <jiri@resnulli.us>, "Tatyana
 Nikolova" <tatyana.e.nikolova@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, "Lee Trager" <lee@trager.us>, Madhavan
 Srinivasan <maddy@linux.ibm.com>, "Sridhar Samudrala"
 <sridhar.samudrala@intel.com>, Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 <netdev@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, Emil Tantilov <emil.s.tantilov@intel.com>,
 "Madhu Chittim" <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>, 
 "Milena Olech" <milena.olech@intel.com>, <pavan.kumar.linga@intel.com>,
 "Singhai, Anjali" <anjali.singhai@intel.com>, Phani R Burra
 <phani.r.burra@intel.com>
Message-ID: <aBhhEgEvjjsxtobY@soc-5CG4396X81.clients.intel.com>
References: <20250424113241.10061-1-larysa.zaremba@intel.com>
 <20250424113241.10061-4-larysa.zaremba@intel.com>
 <20250428165657.GE3339421@horms.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250428165657.GE3339421@horms.kernel.org>
X-ClientProxiedBy: VI1PR0502CA0024.eurprd05.prod.outlook.com
 (2603:10a6:803:1::37) To DS0PR11MB7529.namprd11.prod.outlook.com
 (2603:10b6:8:141::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7529:EE_|PH0PR11MB7615:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a6dbfe6-984f-4d70-d78d-08dd8ba1fa00
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|10070799003|7416014|1800799024|366016; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?cZKVbUeb48PyO2YQovLb7uhw5g7nL8AGACETOH8kRPtKKnV4zzsFdzcK47eZ?=
 =?us-ascii?Q?6uk7r4xQiwGnxZQpLFMBBQEHPbF0MgfWdt4JJFS4t6V5H1RlNbuRuTG3P+Dr?=
 =?us-ascii?Q?0u8UoXUUrngEb1ytGPWzIFkEI3Ajk8aH6O1+7WnJ2vUV4ENUXRLO1CUBwOP0?=
 =?us-ascii?Q?mhDv6PSv0Qp9oP2B/8p8KCnEcP2GcQr65ud/uan5Acqox7tluCrx21vDtVIf?=
 =?us-ascii?Q?GDD1YzdIPA9vuDPzShzgvt8W/cIfYuiPi+eBk+MfdJWKK9Y4hcmrI4dlumGO?=
 =?us-ascii?Q?3uL9e03TWMcxB9Z66XwRGSKNjaPnJO0xN7p3oxGKA/qnzAzyqOx0mBvawfEW?=
 =?us-ascii?Q?zhX0a1z3zmpnn8I0gTa4RG67+E2fyqaDwG/Bb/KMtRDO/X6ekhoAfWq0es6j?=
 =?us-ascii?Q?oK/SuzrMNEYLw19xWxAZJ2x7s9S1W94uqEQ75EE7pn++pbtI1iqODwx8PxPZ?=
 =?us-ascii?Q?1R64SsaTgPnklseEKP5rk4Dbb0ZtYVNVjEXWslB+goEfln/nBSpvYIuwhCFx?=
 =?us-ascii?Q?2KxAEwAVWd8o/xNjp2NJSWg6oknBHZDCj2RIc7/tBRVERaFQPQxKaYDrofR1?=
 =?us-ascii?Q?bSy5Ad5sszMri1ArKqA/6kXymVRGIsRTlV025wKslD5eQyLSfDFnHPSI8Kn/?=
 =?us-ascii?Q?2QoMNLWx52zrDUmk87apFtArVQJqlo/MtuzcWFRX6kdt7h3FdKKIrk3pG1YG?=
 =?us-ascii?Q?Nka/rigWlq6BXILpuAr09wH0Wb1n/O+eDUkyE5+FM/pT8K64ID5zCxvZpzsr?=
 =?us-ascii?Q?p1nUlyOO3q3pcau3lq8FJ/8nYTA3f7+UU9n1yb6VZjkcFn8sb6vPb9PvMjrt?=
 =?us-ascii?Q?s3CnC276nqDcOHMaev3NpuDe2YhW1ZkaUbvmFA2IlIdNkXViKDCpcZA6QQeR?=
 =?us-ascii?Q?ewpYtjpc9rphinM3TxGTMUWYt+WKOyR6FO2/ldRUO4U3JMZ8zZdOp9L4yVJR?=
 =?us-ascii?Q?xDCVx/gl7UpxxZnBgt674zMWNqsEPsGnYvUSmTdDRkQONPypEkEIzVt0F+MA?=
 =?us-ascii?Q?CbWjcMWylgBL0j14hU2TTlO97i+XAftaepZ6+W3BvPJELQ3KXxGrcoeCiqKa?=
 =?us-ascii?Q?AnMBf0fdSTleh3KwnQRieP0mxhFNmjKwyuFqOVC3GZarytqHya6H/XISjfTD?=
 =?us-ascii?Q?gmTLwIBdxtQq6ADK3egXmTDKvHEh+B1SImyjXmfwyU2qRmqK9qsOP7IyaFso?=
 =?us-ascii?Q?lux0PetDqzB/LWzgnlVN3UPbs0fEexjrEp7tBkbQB+GM346IM+iEZ//217+c?=
 =?us-ascii?Q?+YPxnngz1EQmIrjSoWzMMMR43vG1wXFRrrOLLsw0kqP9pBPnsZgKCr/HHi9a?=
 =?us-ascii?Q?gOEy6tktCTyAHkYunmQ0NxLQh99b8e6UThviAJSc6aLnU9wUNWO+a+uWKCer?=
 =?us-ascii?Q?/7T3EQ95v2BMBfWTlxijWfceL7JROshafbx/pwM+PDHv1u3RNaTfF29cLVmk?=
 =?us-ascii?Q?4uPPy0QFVEs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7529.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(7416014)(1800799024)(366016); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nKrd7oVgjERTy0spJCXs7eC3mF5ijgwflhM+TwME/uwfzD/xzjZGN6P+WJv8?=
 =?us-ascii?Q?ybnXjDPtQsJc9Va13cxBy4v8KEFe0xTk+1EUd8OQ7oNBZxwxiQoZaiV+upY6?=
 =?us-ascii?Q?qH+ObZAUHpnmZNm+AEbBXhfY6eB87ByYU8vu03eRrUgKGEZwNUtCSfvkhte+?=
 =?us-ascii?Q?yJczDNrTos4MDqELceewnLTwG2rVlIYpZE0og+qtYPnLCJlunSgWzQxWokK5?=
 =?us-ascii?Q?+r6hYpvIksR/ixRuD1myfriKSzicrxPXMH9lLVPmLC7SBarDodJp0FbBrVBJ?=
 =?us-ascii?Q?F0biH5MKI6qBPg2zRsNJpL1Ixm0VSCUztDr8D1r/4hMV8YMhWlPmcjXajyP3?=
 =?us-ascii?Q?fWxAi5yUiOGLzRTNTl+JngSR/sIySQ+0sU6aw525LGiUybASIvKuT5zFkGkS?=
 =?us-ascii?Q?AR2GLJiXmJow/SjrfhHvd7QiEAruEXin+LvAJXYOe4rU9woxoQl1X7IhX8Er?=
 =?us-ascii?Q?LRDxI10xYU2E90jokI4OLOVfpttalv0RhQ3eipY3Ip+1+phZUiSH3OSuX59S?=
 =?us-ascii?Q?C/hnJZvFjJ78J7GjlIXAcQUlS7zy1kQLAX6x3kaKVlqv7kUvs/vOf8/a5yea?=
 =?us-ascii?Q?gU+YfNWj8gzjZafwNF+n67QZ8n0sqCxvr4+r0gBiUfxwd0hPwPREjHtWt/oe?=
 =?us-ascii?Q?Pm60fRm7KqRePfZ3BN5B6Ryn4XHCLYXExH24qVtYrclxf6O6nDgse7ZIp0p+?=
 =?us-ascii?Q?Sg7H6KdArBIUYB0ckngVUlJIKhEWOYxRr9r6PPdp8P/b9iTu2/9t7dTP96IA?=
 =?us-ascii?Q?m21Gipvp9B6we1L7dciYWGcUenc1zAWQf+nAtKVQ/RpJvPraVbuxXs6KW3wk?=
 =?us-ascii?Q?3+gyHU36ORK+XrJiQIN4CZInL7JRaXaR3KcannVUEnkuDe1SHRcoqFhku0Ly?=
 =?us-ascii?Q?QFhubVzSXo1/8Cp4AsIkjww5BZgL2rghLSm8zLgid8aGeTmXfV80/oUnl3YC?=
 =?us-ascii?Q?j2nrMLIoTfeDAinVvuGmDta6jsVTdy7mUepQg7N7BDUGVj71pzCCCq//ngzf?=
 =?us-ascii?Q?SvVexaXck3BVRQlVXl3nrm2OB+RbH6JgkfVdjlzSYvNJzd84N5+FT603nqhP?=
 =?us-ascii?Q?kPCungNnb6zy2doDF0Hf2yHbD6xpL2W/DI1plTThVHvbzaG6zTiHGoW7d3ew?=
 =?us-ascii?Q?SXPthr+A/lPQi6O1zJDBnSfHmfRap5YEfDM12G1wbICHmDUZBR5kyZxrDfDk?=
 =?us-ascii?Q?/cXopwAewOJVN0Qmoat+L3mENdN50qce5wDrIzjs1iUUJdskADIj/DxC4YNK?=
 =?us-ascii?Q?fmL7mXtHL8FIsa7oWTcT3NMNBiXxmUtEuHfzO/XT6eniBOWJXp4w9QfyV4nq?=
 =?us-ascii?Q?Id4lmLnCekpa9JzB+X4pp2ODvAhyUVgV2ywR/jnTrTeFhJFWsktf7XqlP2a4?=
 =?us-ascii?Q?fZiec4lF7PP8ogQM5FQ+dmmT2zNUiemO11/8yX6nY90rD6gwqano2Yk5ziRh?=
 =?us-ascii?Q?P3FHl5RcjYb8+kFYhtOSwe1e2ahdY8Ya3Wx3iSOl814eEvIBN6XtYTFRxmo0?=
 =?us-ascii?Q?kv1Y9taAX2U553ZdpkDlkZNqSIMgNPFVEikZtEVWfGVZKZniLLM7zNADJgpB?=
 =?us-ascii?Q?+FGypLybIRX+bZ9yogUaBTgZsJhJCxveIHhR7RkEfEx2zx0Th0zzv7037ofs?=
 =?us-ascii?Q?eHWAY/BIH1kbwNRH8pJlXI2TPkdPlC80e+FXlUW+S3bioEEAI6l+TYEKd8+w?=
 =?us-ascii?Q?ZYd9yQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a6dbfe6-984f-4d70-d78d-08dd8ba1fa00
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7529.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2025 06:56:36.2417 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xr5k3A84IBl5ZaigpbE0hU8Ep8Mc1+2XTjPqJl3hz/R6P4k1Vakkfm9QTWsMuH804Xvw3h362hHvdp5tzjjG4ryqP9G0BhANpNaq/yZBcIk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7615
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746428234; x=1777964234;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=cJO1dvOh8/vnhq1c6ZJQ3JWTY/N/Y3RxyUE/8f2Ezro=;
 b=CJcLB6otQBjOuIOC7BZmFcy29IRReBV5qcMO2b1H2IbP3d6zqFkGiNz6
 Ei3GeHjWQctP4HRIgUT2BWocjGznUwlsi7UyrkzNKZw0Ptos2t/HWPPrz
 TKXLleFcwX2VIBaJye63svosouvhp6Xtd72qyI+0nNnWCGG2sBF1HX8Ut
 Zf1wAXnhlVQ+XdPYwLU4OZZ+WhCgiXOlcJujRL8EnreWEN/yriZWWyg2n
 8bbHZ4Uav1EO+B7sYokRnEI3heZnKayMkrKMybsIRjx8J23Dleni6mg/D
 TfmpbaPyb75D+pwXtA+YTG4i4h7srDxYcOd2fYvrWO/grxHCEo7pzghM0
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CJcLB6ot
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 03/14] libie: add PCI
 device initialization helpers to libie
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

On Mon, Apr 28, 2025 at 05:56:57PM +0100, Simon Horman wrote:
> On Thu, Apr 24, 2025 at 01:32:26PM +0200, Larysa Zaremba wrote:
> > From: Phani R Burra <phani.r.burra@intel.com>
> > 
> > Add memory related support functions for drivers to access MMIO space and
> > allocate/free dma buffers.
> > 
> > Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > Signed-off-by: Phani R Burra <phani.r.burra@intel.com>
> > Co-developed-by: Victor Raj <victor.raj@intel.com>
> > Signed-off-by: Victor Raj <victor.raj@intel.com>
> > Co-developed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> > Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> > Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> 
> ...
> 
> > diff --git a/include/linux/intel/libie/pci.h b/include/linux/intel/libie/pci.h
> 
> ...
> 
> > +#define libie_pci_map_mmio_region(mmio_info, offset, size, ...)	\
> > +	__libie_pci_map_mmio_region(mmio_info, offset, size,		\
> > +				     COUNT_ARGS(__VA_ARGS__), ##__VA_ARGS__)
> > +
> > +#define libie_pci_get_mmio_addr(mmio_info, offset, ...)		\
> > +	__libie_pci_get_mmio_addr(mmio_info, offset,			\
> > +				   COUNT_ARGS(__VA_ARGS__), ##__VA_ARGS__)
> 
> Perhaps I'm missing something terribly obvious.  But it seems to me that
> both libie_pci_map_mmio_region() and libie_pci_get_mmio_addr() are always
> called with the same number of arguments in this patchset.

This is true.

> And if so,
> perhaps the va_args handling would be best dropped.
>

For now (but this will change), we do not map BAR indexes other than zero, 
therefore it is the default less-argument variant, this looks nicer than adding 
', 0);'. Still, it does not feel right to hardcode the library function to use 
BAR0 only, hence the variadic macro.

> > +
> > +bool __libie_pci_map_mmio_region(struct libie_mmio_info *mmio_info,
> > +				 resource_size_t offset, resource_size_t size,
> > +				 int num_args, ...);
> > +void __iomem *__libie_pci_get_mmio_addr(struct libie_mmio_info *mmio_info,
> > +					resource_size_t region_offset,
> > +					int num_args, ...);
> > +void libie_pci_unmap_all_mmio_regions(struct libie_mmio_info *mmio_info);
> > +int libie_pci_init_dev(struct pci_dev *pdev);
> > +void libie_pci_deinit_dev(struct pci_dev *pdev);
> > +
> > +#endif /* __LIBIE_PCI_H */
> > -- 
> > 2.47.0
> > 
> 
