Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B63BC396F3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 06 Nov 2025 08:45:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C08CC4122F;
	Thu,  6 Nov 2025 07:45:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JF_IjuL-Ua3h; Thu,  6 Nov 2025 07:45:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27198412BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762415139;
	bh=uiXgIqoFlOzhRuAwzhb53+7OfWvdxHU5R0/w6bpKrf0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zxYdUs1NbinrW7aANKzteXmb0t0DlVw5SyvlCjqU1KeuncdGwIQpJ8CCWlMp3C/l/
	 4EaBuYgTbOMZdGhcdOvFuH/A/UM4H4FZrd3WYrQcwQ9/OpPyxPe42XGnjuTVkA2Umn
	 tffJr/NclKzn7brRbtNHIT/y9/oICuYjbi1oH1w5DZDrUvwSAB/AmeCHK0ZHpuXPEK
	 2JcE+yXMXAwto00YpySTw3vUpM7x62SkWsWuTtUzzqe2bQxRqrwMPPGPX4aqaXD0zC
	 /NSRamHZ5xQd1ONGx7MFW5UONq7gEu9I0W+hxl3Bbpiowb80EIR4zYV+s0WpcPa+QJ
	 h6c3Re5aLvD6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27198412BE;
	Thu,  6 Nov 2025 07:45:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2DAF0462
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 07:45:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0B232613EE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 07:45:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qyiaH_FHfjiI for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Nov 2025 07:45:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D0A5E613ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0A5E613ED
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D0A5E613ED
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 07:45:34 +0000 (UTC)
X-CSE-ConnectionGUID: A3gCFNqNQw2UFu2MySNYGA==
X-CSE-MsgGUID: 9xgjmbiTQXyEH/DsuAbG4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="64695486"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="64695486"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 23:45:34 -0800
X-CSE-ConnectionGUID: GjfZ06TFRROyqvZfir0ZGA==
X-CSE-MsgGUID: vQjJxvPOTumDnFYUhItG6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,283,1754982000"; d="scan'208";a="188410125"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 23:45:33 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 23:45:32 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 5 Nov 2025 23:45:32 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.68) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 23:45:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FXyRmI+e191LAYpfYEFpywynN08p/zBPkfqh9wcVVgfea8j8LezNkKFPRUBbZbJQ+S0Y35ePHsJP0CMePyer4MVaXrxzdTC52ci7iDt55m5jzhdbY3hjgCxHLPqcxNaAf+01gRZSPyN8RMQSO/LSGE85l4ADwTiXKE4MS+SqM/5WITFwTMV7je1MXa2rqU4Q0ohE+wPfiL7/4i2n3Gp123bwHtKoPD2jMgnENWpkM+MZFtd2DoTzQvDsjh/ItQu2E55YyNM83h7g/q3lQHNREWOB110+M+5kGJNY1pen2qdHIN6Yu6fFYvpw8OXzmc3daRSmAhVN+IYPJKw0pq1mJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uiXgIqoFlOzhRuAwzhb53+7OfWvdxHU5R0/w6bpKrf0=;
 b=vI3ZrTz5dhXk8Qf0++fSOpKqqG8YLfOqGiaOjgEWdFb0FqAt9DgMma5Jsca75+MAnhCruYJp9XTKMQJL+zKrcjQV4T0oy21Kw5HxJhgwJ7Ccgz9qcWk+EWIgRYX8fmGxL8+42iwVP3CFky3lFnnLcxgTWrgReNORP++iyLuNymoGTDo9DDPyGpf0Nyko5TpZCz3bZGz+jGZecJOWorpUUw6r+Sd5gUVovt7N3Oq4Wydx4Sl0KJXkpUP3byXALrBQrgNaSVSM4bpz9Gcp/Gi8w9P7DBdHB+7QZtzFFDn0lFFqYEMoy2eqhuX777MnbVEdILuTy8DCABuflYZpT5nMqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ0PR11MB6791.namprd11.prod.outlook.com (2603:10b6:a03:484::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.8; Thu, 6 Nov
 2025 07:45:22 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9298.006; Thu, 6 Nov 2025
 07:45:22 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Zaremba, Larysa" <larysa.zaremba@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, "Dumazet, Eric" <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Simon
 Horman" <horms@kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] idpf: protect shutdown from
 reset
Thread-Index: AQHbqg8glQSCSrxgm0KzJDCg7iJVGrTmjmoA
Date: Thu, 6 Nov 2025 07:45:22 +0000
Message-ID: <IA3PR11MB898693482988692AAF1437BAE5C2A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250410115225.59462-1-larysa.zaremba@intel.com>
In-Reply-To: <20250410115225.59462-1-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ0PR11MB6791:EE_
x-ms-office365-filtering-correlation-id: 3ca7eb4a-c047-4649-6a0a-08de1d0870cd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?iA8K8gYc2agXOoc0lrveRTqfjvOGfwh/3cRPs1+eHDebfGiI7kuFqQ9qlDcF?=
 =?us-ascii?Q?cZBIFbpZ3mBZf6er9Lq3yxUdrPBcp8rd58qSWPTDN4nag62RlRVHKnwE0ARd?=
 =?us-ascii?Q?+JQClS+R4Knkjh82odUxOsd6eBOsE7bgV83QSOFf55nbOUQGuDwJZ/U5/LZJ?=
 =?us-ascii?Q?Ft7QLfFU5mP4GTIM0vWHH1bLhq/SbYfN4E+a17uBzYl0FFWL0WWkcbyAWx3S?=
 =?us-ascii?Q?dN8K95LmDN9/IvLfyORry3LEjHyRX+vJLZri2jSFkybFnOOW5l2yWKwzjX8j?=
 =?us-ascii?Q?YJOGrWKxcsQpQD48KY6WrEM0RLzpAdRe3DN48OYn0F/sbHpPalNYgOJ2CB/d?=
 =?us-ascii?Q?T+ouhyRma6zqqY/ZFxQ0dkvpnOHlFTeGvtCfkcbTdaUB0eL0jt4wPNZtJgH/?=
 =?us-ascii?Q?JG9bkJEBGYA+fGoJc0VT2UE3s+H7YGvQUfK69njO3ydn8rozCsOLaBYMQjJx?=
 =?us-ascii?Q?c6tbpc4u6nmCGqNi8sJv3Yf9+Mw8AC9S2beilrWwW2c8K5PacvDJ8SrnwzMW?=
 =?us-ascii?Q?+kdNyI7H/9tUUKxug6pBptm5Nmnp3/Qu7qs8xsLppB+VyXr8PjV+yZl754io?=
 =?us-ascii?Q?NMlxBPNh3vloYOYfiIuI4MES7W4JEyG9cBsDsn1EYTudTwO0szT6rB76NiHp?=
 =?us-ascii?Q?deOo27GaJomifElIzg297806l8R7GGjTG797oZf28aEvK8BD5d+Q9b/57yzd?=
 =?us-ascii?Q?NNuELFwXJnCXY4+EmrlIdWxoBn3OhrcaTTqD17CdJhBg3ioiZSL9L8kN4WTd?=
 =?us-ascii?Q?9DtMk/h+oAWLZUQbCOQx/ZOCANmUFRvTjEGLzHxk/MKoLv87u975G4JH/dGV?=
 =?us-ascii?Q?yj3GOenROPDVTb1JUoCc0KjyeARAnqcbBywxjgiqZ0/5VHW7/ZTa6Xxede2B?=
 =?us-ascii?Q?xaeGQIMJPbTNhhVyVShkw59zCEFGDoYyMEi1hWWzAHcFKPUenbXH5JisFj60?=
 =?us-ascii?Q?tFCTrr0+3jZHt6e3gvi+VnduIAmNRXwpXmIhFjES8YY2Gzk6rgfczR0OFbet?=
 =?us-ascii?Q?3JlQ3oCBH50gDpZuZzsm+Yb5sgxRmXTNJZnCl8PMghp49BTauOu0uxKX6ZOI?=
 =?us-ascii?Q?21rtySpYOyJgOzfFC4xPfehj8ZGThYreAF70KTX/9aa+QMlV1uJ2tPo/mInK?=
 =?us-ascii?Q?3WHscMTXdFAEJYVnKKIfk/PlVAc0vT9f0WlWXU+klIIMxv88OBeJp/Xpci8h?=
 =?us-ascii?Q?4x9JZIfb2eJpw5HoL+oPYgrd7YtNqcIHCqkq8GboTK0Ky0iSCfL/Ejt+qdC4?=
 =?us-ascii?Q?yAaSwzNnexSxP4Te7/mw1mgt0ZTzeAJNT/x0buyMbFoH1WzV2d+vZlmqWqsE?=
 =?us-ascii?Q?I6+U2IkqL+gaf01jMpjch/VKhjmw/KiqbVyZB+wwc3reJ5HiAOaTKR3zrAtA?=
 =?us-ascii?Q?esi8Qzx17hJhLfwHzuxyML49Te6ylnHlC/+Uf6bXDuYXMFeHm8SAK0Jgmqtw?=
 =?us-ascii?Q?+b60XGX4B2gRd/Jed/lYfyVV/9NsZ90xsQkfHsfZKD79RPT7Os8VfmfBHYCu?=
 =?us-ascii?Q?eF46lvs+nVV0Reuidno4SCD41iuqjeR8dObu?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AnvF/l+jo8ZoNNoMUz2L96wwF0Qr7XuooDcmqKEsROIFFAwBz+/N/392892H?=
 =?us-ascii?Q?UcfaL8OCZMi21n1plcJ8JCcZkqY/gk1k+O68ba0CLKKqyEbdeDub9W/Y4IFq?=
 =?us-ascii?Q?PIwutYnuu9KyvzHl7+uVeM94huhze69UkZbvGJh93/dJC+vIVxZBQcPYTMbv?=
 =?us-ascii?Q?4Yb0bSQMTtT3LURB4BaxdlhItq259FajqtmF3SJ8iK06eJQw4+zFKBsjONfM?=
 =?us-ascii?Q?UnczuJ7CADCOlQwrbZSOkisB891tfpTEkzGCR56FvF37PHsJ/94fHWdAlrFT?=
 =?us-ascii?Q?0DbE9ngEHjCSks/gxisw7ai/bLoZFJFdZVyrwJ8+qmZ9QfeHeeLIy5PvCLKl?=
 =?us-ascii?Q?+Zd/+O4B8SOhfJWWKeM5hdPua1Iz6v1yn6i/sXvkX5ZBvjOTXIWTqYJd2DM3?=
 =?us-ascii?Q?TPEQXkCwzaJHl5GVT3x2GAgYa4MxtQ/M6DonAJ+Us03gdeiBK7L8rd2+H/HB?=
 =?us-ascii?Q?LRJ6xeATZP2ijyV5d+sSYyJ27E2xfq9qVVf5JjBVkXYSYaWeCWYr2lXfUT6v?=
 =?us-ascii?Q?GW26TBomCSRxb6kFS/cv08TXePv/o0FWmdYy+pu/IKoECZ5+5PiE8vUrG+XX?=
 =?us-ascii?Q?G3u93ECYdSqvuJF0HEpGk1vhvoJBUfj3BF4r2myJt5/POeS05RzkW63CA6jL?=
 =?us-ascii?Q?qjNGROtEmm2Fr2iN/s7ZLOk5pGBOrLNK5kTLPrO+Z7KlPA91emVA/32ifGpE?=
 =?us-ascii?Q?7wfEF+waQYj1w9/bxaVHJDbXpbTz4cC7fyR+dQlJzzSJHOmG6AtTPMD52g6W?=
 =?us-ascii?Q?VmJ/C1bX8aH9LxAc3TZLVESJGkSpB36K2tQfUn1qXLaR00xTMR4xO2RcI7Ab?=
 =?us-ascii?Q?5JHuPPtB14J0EaXka+5FhK+kM3KMngpeb9hx0ltIoqzGuyhLPioJJzA0Uyfr?=
 =?us-ascii?Q?BuiIk10ZwwUaxDpLebVFgfoH1RYJnBFHwoiiPSwUCQP9FQl9q1jdYGIJnoSm?=
 =?us-ascii?Q?D5BTuE88cdtG4Q3oau7/DiVHD5dkWS4vMKjlrTGKozoohGL7pwl68VbS4Xil?=
 =?us-ascii?Q?keO//1NDUmdAhxkcnWgV7qQG/HumP7PKkAhuNtBOk48gQ8AZ3hSLO+iUx62j?=
 =?us-ascii?Q?U4A+fdQRzD3aj7b2aAuGcIwHeX9I6xEurF34hWAdPmbLxHePZ5Rh+UPOy57C?=
 =?us-ascii?Q?2RrKpkW0QxNDpBoZu1gB7Q8iJ7QIMnGZm08FysSilSGiZ/kgyMqZJBn3CiyW?=
 =?us-ascii?Q?rSleMdyzK4bd+lxhsgWbuMaUl8qPq5JXVDHdW/PKGGetD+O6FyBrSUaey1tr?=
 =?us-ascii?Q?CqSkiWdQ4M5iPqocrrDxnBZVsvIaGujpQioHVgJHyVzgBQiqq4ZvDNmDmuIf?=
 =?us-ascii?Q?8GAN24posNc7DO/XKRP/vfyFLIJQ4UfMML94p7i0EaP/6DbnWz1qA/aotUuy?=
 =?us-ascii?Q?Sg/FGVvRtdKpMgUgX4qXbwiSiM9aP7MEhjnPKDcArkjQqqput9z6l1Edm3mw?=
 =?us-ascii?Q?44MVVd7jAb759V7JQFQDJorEZnqkVXG+KN0JU2RvU81e8Fzoga9V/ZBiTFKS?=
 =?us-ascii?Q?YkPyNoS0cYFl5J6j1znIDv/f9uzTvmHpEegaaA2X/wDXyhF19ulHhqp2ynPE?=
 =?us-ascii?Q?O45M8NTFv1kcU71CFOB1hjDkAWbyLGskUFZe35TauSE+N4TsvWMuqjRsW9Zb?=
 =?us-ascii?Q?7A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ca7eb4a-c047-4649-6a0a-08de1d0870cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2025 07:45:22.2488 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EPYL/DTCEwE27huxl3fP3N/855pLzq+Yvm7/RnoVfmoLw7ChckIXF/lwydRBcnsd62wWbsQCw9w5W3PdZbdwjag5hLZNqVXIs0EfIGDIvv4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6791
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762415136; x=1793951136;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nk1HXNS/psnX3zxsRxVmhimELdzN5+za/ef0bhSbEfU=;
 b=V/h55A6mCn3xnNgYs9OXL1PV+gk2mg/aSWDkX2U9zGLSYSmwVUioJHiE
 6mD4ufZHOZ/mFtZEyhy1xfBQ9U2o7nOajXynnfJiB4yfXs+aoLHR2Vszz
 pRgsr8G5GFhXLSS2bFKz09Z8QvrqUG6NJrxK4hnRf/e/xFTX50PGWADiH
 oJpGMD6Eiek+EIsOgAXzIKK2uBtQMtJch0qezrfe2ZVpS0mtSILuTFx2W
 fr5DxPYo17K2XwA9Q9dusOKn31Fwx45W93qjDi4E67uuKPmstZ3vYNUmk
 fCYGwxsTB307TRiFh0cuHKgZ6yBQxqn+XjdHSM5HKbzEYBaDzwHlX8K6f
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=V/h55A6m
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: protect shutdown from
 reset
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Larysa Zaremba
> Sent: Thursday, April 10, 2025 1:52 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Zaremba, Larysa <larysa.zaremba@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Tantilov, Emil S
> <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Hay, Joshua A <joshua.a.hay@intel.com>; Kubiak, Michal
> <michal.kubiak@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Dumazet, Eric
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: protect shutdown from
> reset
>=20
> Before the referenced commit, the shutdown just called idpf_remove(),
> this way IDPF_REMOVE_IN_PROG was protecting us from the serv_task
> rescheduling reset. Without this flag set the shutdown process is
> vulnerable to HW reset or any other triggering conditions (such as
> default mailbox being destroyed).
>=20
> When one of conditions checked in idpf_service_task becomes true,
> vc_event_task can be rescheduled during shutdown, this leads to
> accessing freed memory e.g. idpf_req_rel_vector_indexes() trying to
> read
> vport->q_vector_idxs. This in turn causes the system to become defunct
> during e.g. systemctl kexec.
>=20
> Considering using IDPF_REMOVE_IN_PROG would lead to more heavy
> shutdown process, instead just cancel the serv_task before cancelling
> adapter->serv_task before cancelling adapter->vc_event_task to ensure
> adapter->that
> reset will not be scheduled while we are doing a shutdown.
>=20
> Fixes: 4c9106f4906a ("idpf: fix adapter NULL pointer dereference on
> reboot")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_main.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c
> b/drivers/net/ethernet/intel/idpf/idpf_main.c
> index bec4a02c5373..b35713036a54 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_main.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
> @@ -89,6 +89,7 @@ static void idpf_shutdown(struct pci_dev *pdev)  {
>  	struct idpf_adapter *adapter =3D pci_get_drvdata(pdev);
>=20
> +	cancel_delayed_work_sync(&adapter->serv_task);
>  	cancel_delayed_work_sync(&adapter->vc_event_task);
>  	idpf_vc_core_deinit(adapter);
>  	idpf_deinit_dflt_mbx(adapter);
> --
> 2.47.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
