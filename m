Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3E0A99813
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Apr 2025 20:40:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 17DFD61293;
	Wed, 23 Apr 2025 18:40:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R-3k2QBR-Qe8; Wed, 23 Apr 2025 18:40:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0615B61297
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745433627;
	bh=TMSSLd+KOGAFkEr2acp2iDg05APyLVK+rzomkwfitps=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RYQVJrop36yoVukClZM05tagMSsWvTlRz3fpJzegVxP/BGcIRB+t9i1lSJi1xQMoe
	 j//ANE+4BJZr51cgsdjXKI+migg5reksxi81Zui2Ficx4l6UB5PWQPbzfH5ACi8B5k
	 /kAQVN/pCNNi1Wxc7hCHTq5QDbmsLTv8Oe00ooJl45tKp/MqDwJXTNxyBx+5ZwyT2B
	 Q6FqbI4MVbz5VT5X5lbIrv8xRmuLYhFqa23FLWJT9v2UP6aypwg/o9bIEVxEQKX3nC
	 67a6bDjAT9WMimmbzuqlOA5Leog8Rt6Cl1lzVxtIpK98pm9xE/WLLJECY92blFoipo
	 sbvv/CHDBwJMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0615B61297;
	Wed, 23 Apr 2025 18:40:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9D90C19F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Apr 2025 18:40:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8EC4341A6F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Apr 2025 18:40:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 01BVehsrBBFw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Apr 2025 18:40:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B7A5141813
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B7A5141813
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B7A5141813
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Apr 2025 18:40:24 +0000 (UTC)
X-CSE-ConnectionGUID: i25XKo3ORIq4BNrmkQhyAQ==
X-CSE-MsgGUID: ZF2G5aVVSQW1JK9aM3foRA==
X-IronPort-AV: E=McAfee;i="6700,10204,11412"; a="46924486"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="46924486"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 11:40:23 -0700
X-CSE-ConnectionGUID: A3buh+qGRmmsfAkOCetfcg==
X-CSE-MsgGUID: 90DHHzS6T/G3WH0h7YARLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="137250307"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 11:40:24 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 23 Apr 2025 11:40:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 23 Apr 2025 11:40:23 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 23 Apr 2025 11:40:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ja9jn4xHL7aIOzjgQOe4hXvwMEh9n/m3qIiYd0siuIlKpC0DYLQbt43y4e7wQqwkHE4RXhhSxC+XVe2ZWAZ8H/CvgdFF5PD+CqbCRSkfzG6EwgyvFQPyp/P9sfrSQiFvJr1+x3Ob2Z8mKuxvY/ZQEQau56Zb0ZyHGJSP18GGnTYe7EZmu9WwNHRXesL+nO9vgSIXEetMuvxSorGKs+NhZq4hu7EYPlab+Rku+SeO3f6rDUTWWym7tuwQlAdv9DK83BFld7HGgitCYaDvPib47oCdWJyrFc71OxNVeVPOmBqvWA097Nq3JvBMjnczDCH6/P+qh51tZszpxx1oEFVu/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TMSSLd+KOGAFkEr2acp2iDg05APyLVK+rzomkwfitps=;
 b=vOlG+brFHLNdinsZQ7VaL6n34RiS1SnzY8NIm6IKxhYz8LRUNOCc9N35kjzIcY2ghf2eV15S01FqUSk6GADxenaSJZmQv7D7WvBhs+DV8mUxC9kCRPXicG4uhw+zwHsUn5UFkeHcMpFXejlfOEAnQwt2PDMDHfmaUTjfCSUw0CODHPgMSWTFie+cuhPqPCG22HzUlTzU2E5ZbyiuOsqnICK6t9Pl3laOxs7EMXUQxH8SCHj+b+FVXN9ak+wC5GsQtBA2PaGOiI83Mpdwd28q7DjfHGk8nvJZdsWZO58xwfLW1xCcok90vR+8WnCOP3QVQ0zxC6rkbpJYd4mjc6S5CA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 SJ1PR11MB6298.namprd11.prod.outlook.com (2603:10b6:a03:457::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.22; Wed, 23 Apr
 2025 18:40:11 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.8678.021; Wed, 23 Apr 2025
 18:40:11 +0000
Date: Wed, 23 Apr 2025 20:39:59 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Marcus Wichelmann <marcus.wichelmann@hetzner-cloud.de>
CC: Michal Kubiak <michal.kubiak@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Jay Vosburgh <jv@jvosburgh.net>, "Przemek
 Kitszel" <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 "Jesper Dangaard Brouer" <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <bpf@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <sdn@hetzner-cloud.de>
Message-ID: <aAkz/+Rx5w3OHH4/@boxer>
References: <d33f0ab4-4dc4-49cd-bbd0-055f58dd6758@hetzner-cloud.de>
 <Z/fWHYETBYQuCno5@localhost.localdomain>
 <ff7ca6ea-a122-4d7d-9ef2-d091cbdd96d2@hetzner-cloud.de>
 <Z/jPgceDT4gRu9/R@localhost.localdomain> <aAEUcXIRnWolGWnA@boxer>
 <b06ede77-541b-453f-9e7a-79f3e5591f66@hetzner-cloud.de>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <b06ede77-541b-453f-9e7a-79f3e5591f66@hetzner-cloud.de>
X-ClientProxiedBy: DB9PR06CA0002.eurprd06.prod.outlook.com
 (2603:10a6:10:1db::7) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|SJ1PR11MB6298:EE_
X-MS-Office365-Filtering-Correlation-Id: 15f390dd-8ad4-43a0-16b6-08dd82964790
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?mLX0opOIk1Yj+skuuj4NB+AT6cKFgL241sfBuRf0u3B3oulODQzm4YKN7dmQ?=
 =?us-ascii?Q?W1vlPqSVtNYoB8Z2TJb8WsWPy2Ph72CKuE9NX7HOMGSofSX+74breHuaVzDR?=
 =?us-ascii?Q?kTaZjJzHIZcPhXyNbJGL1u/ZHIDNQG0GNmNcu9DZtTHO7F6UTgF1O9G6p38T?=
 =?us-ascii?Q?ZvpYNFzqLzU2Pn1VZiv9mLGxTAA97FhyPLmzy36WSFcNCYjO2rqj9janw5j+?=
 =?us-ascii?Q?uwlC7LZCZOAEMQUpD7RFqnSGJS3Baqftf20WgJl/9ZZL6rg0V6J6QY0qhQxy?=
 =?us-ascii?Q?EfcfYFFl2a4cNzuhtD5YkkyosJp3bxhTfgPP7N35LAPOzIDBRP9wRNFoh2+1?=
 =?us-ascii?Q?xTSCrKNyzhv5QYMA3wiS1mgQtz+zX6EQC+/rWLO1ohj1ECmM4760Z58Mekjp?=
 =?us-ascii?Q?0p62jbi4McQ4R/Vv6sY9gbzlH2+s7g5FqYY1ptNhukdlKdffIC0tAl31aqBv?=
 =?us-ascii?Q?9EGWekMcztlpIdlbFOfe66PRnqY4qNpsawGIS6Xs4cW1JjHfgCtSA4QaNVGQ?=
 =?us-ascii?Q?6yhmFNNfra8eSqvWVsduvBznDWFdBB6u/nxHQ6B2jX3ycLK+jFYgigyXLloA?=
 =?us-ascii?Q?FTwbstgqE0k2KOLClYWmSKGj09NraGgKEKwiQphsf0/vBJyN7gskAcqMsEzv?=
 =?us-ascii?Q?r2X55l0PQvIOIDpAfq3JrQJbIOPfc/z22/gf81ezrysfIKg+8p243meanVJj?=
 =?us-ascii?Q?HJNBY9m84PI8mVgFCORioh76ds7HfwEa1xNOxGKlOkaDaAmaBpxUfzQvu9uB?=
 =?us-ascii?Q?yUGoa+6MrMJbvdATD5zhNrMRgmyPfS0X1UpebGCwX8RtNzAgffDyR1FrMlMz?=
 =?us-ascii?Q?xW5k5EUUSxrePOYK4v2paMMUKZaUrPDxMMbZ4aJ2d/Ikpj3qxRGeiha6wdH4?=
 =?us-ascii?Q?M7iIV07g0uN+XZ0nDHejvmj0TbOlSuguuEid7/lXyLnM1R6skELN6TIguWHp?=
 =?us-ascii?Q?R5oFvygUCtivrah2AEkMSeXX/0jzuppsNQEe5CfSt5bqN5hymCMqyNFFE5Iu?=
 =?us-ascii?Q?7YnHkJLJ41ABbajFg5t9gpYeKBakwZJLKaDkp+zmmizBwOtKhN92QgfTU9rW?=
 =?us-ascii?Q?peHEVscUg5aPWx2BoeTtP5fzdQT6OsecLiKcGJ99HfBQO7MXpT+aflCpmbs2?=
 =?us-ascii?Q?f829kuhp3eUfU4KSrIN6cbCH6DVoYAYuj472J9k6p6fv37DenoBSvXYIuvdm?=
 =?us-ascii?Q?SgRH/fleo8VSO2Vw8C6PF5YKqF3+YiFYjczOy+gDP10pId4MrA9X2dtCI/PN?=
 =?us-ascii?Q?09non5PunHathCsFB0pMZAb4gFetPQg0axiU8N0xOWGZA22RPtUbhPXaXCWp?=
 =?us-ascii?Q?CvzG8uabnux8gfRgROQ0G0SRpyYRyxfX1zYqKg/Zq2cAoVDVfz45J5aqz7q5?=
 =?us-ascii?Q?QkRw3xYb9Eafn/YZEs3ZEG+ayGP0+eDGquPNTwZlvKBdDMLY4eRflyDnCqLm?=
 =?us-ascii?Q?j4cslQFcgTs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6tvfNSctO8d8Qnj9I7RXE88coDCgOb9PaPuCFc7pdeXSRCjxJzNcxnNSb7eK?=
 =?us-ascii?Q?LeiPOUI00UNojE2KC8GVDtoivwHezTTdldipcGPh1+CQAAXmeCInBg/Oc1B8?=
 =?us-ascii?Q?XYQ2VnXkEKJL8jLwXuTRqN9U8WeZ3qGmwKE/5ofwRgxN4JqaoBJS87jWb6OY?=
 =?us-ascii?Q?dftZySeqehVKxJurgk5J155KirmZlM6/NHwVqr4a/iitzxFdbJynHG4mYxSZ?=
 =?us-ascii?Q?TGulWRDINAOSDCoouCGgvG9PxM/vlH9uF5oSwt9oJ1t9vB9Q+4asV6/qHVeg?=
 =?us-ascii?Q?t/V7LWQI5n5LR4NUBSP0kv+1iJtjbx22T5uSliasTUVLSfNKzk8lUsVz3Ylw?=
 =?us-ascii?Q?sMOCMjZKyg0h8iE+SrEFd4l5lg6cdcPuXUMhWXcAjLSa38QdZoh+AMeBFZRp?=
 =?us-ascii?Q?R1B21D3o0ruu+EvTGaBJbGjt+SToA75cvy/LzfMV4xVuNg53BzqTTq6imgMr?=
 =?us-ascii?Q?iUlxIYkK1y/4VQ3KW3IUxC2i4Wkno0aeLhHBaJ2qlU9W3TgQ/HZtlf5a0kK1?=
 =?us-ascii?Q?i81OOP3Uz1Pf0hpDmx0zKWLpyH1nV0Sr2RJ+1wYeXw55HHd8h9tz5zdbq6Z4?=
 =?us-ascii?Q?pVdwgB0OssgJtp1eN8mqmEoenoIRr3flZ4z1JkSunaFNosJq9N8q9rejaMtR?=
 =?us-ascii?Q?t5CYPW9DCXMDU8eG6rKrA9adNzeRp5KfyhZBJVOSOIwFFP3PbyV5VSnZ+bea?=
 =?us-ascii?Q?+qLG64CNT2m2EavgI/1I0W6HLLVENlzFsI2IDpTNyckHhahZ5h17twnvfbRn?=
 =?us-ascii?Q?T1C1kqrXWFmB/T/MiLVXaafBiV+LeKDNX3zxK8a1ndvUN568GK1WVAjOAR54?=
 =?us-ascii?Q?hQCWrTwcFhwGiZMV2cNugyDb9gbogNZgSi3CON1PizdAgO9Ydc4bM/haILCT?=
 =?us-ascii?Q?Xz3ocom2TyxinruhhffdCOaLHmmQTgaGIM/rSLKin54xpOzJKJyROQkyk4ja?=
 =?us-ascii?Q?wb0BomHQQxmUJRmvlVW55I9RH/wf6A8vSuUQpBx2ENKAM++8+QAjfxuitTHv?=
 =?us-ascii?Q?Q4pZsKJk8mEIwhSOlKkXQknfyHAxf+QRQONT6c+FfC1w9CE3EGN2hJ/DZfqL?=
 =?us-ascii?Q?h5QOry7gBObKlZ6Vba2ciS5nhQrjYSGOYD6lrym93QA44CCDKA3sdj4RZHUj?=
 =?us-ascii?Q?MJrr74UB+GZynDBKNsk3YrZ0aDCvL6UP7AIu4RBuEji6m1gDUnwXNe4r4FRf?=
 =?us-ascii?Q?xczw2AIyyXN+WM0WCfrUQDcqilQAnfvlewGTfAKAmGokhDoUg4U1nRtcbjAm?=
 =?us-ascii?Q?nKz6skrUdhsP9ZyEOrNVmZn3D1MYkoL6gNHBy8DlGN+yPvGubGJPmzXXMqzU?=
 =?us-ascii?Q?nxqd1P2eKwC9Zjgq0bIufNQAdAuwgHB1YwbqK2HS7p2prWGplDdhmGJekqHp?=
 =?us-ascii?Q?kzMdZ9TYwFQTeKqRMQ6jqGlwTqJG39a+rRQzlNFqZVXcJG5JsFb1TZHEmQAn?=
 =?us-ascii?Q?dDrkh/YoLnsfGD+o7n+O9L18uQyUhyewNA+Vz0jTiEZqAprqFmKWoIrdSZhT?=
 =?us-ascii?Q?TcYk0qLn5nvmQAnTs5WkM4MyCPVqn5lBE6vaR2Rztga8IImeeYVFnESpp1TK?=
 =?us-ascii?Q?5p0pZa8jRCT5GljjQOU8nA66x1pzv+tbV5oi6YNImzF05VnOWt+0SIZqlO2U?=
 =?us-ascii?Q?8w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 15f390dd-8ad4-43a0-16b6-08dd82964790
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2025 18:40:11.6094 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RpvfNM1Ugj97JwADGViY6q83HTaBqG/fmZkSe4y3itDeMfSbAGpkjiOLVi0LLz//zDkZFPUykV8E6xNVPFlvyoDUCFS+doEfY1u3RGfodUc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6298
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745433624; x=1776969624;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=g7ZMC0piU0KhutwZT52I7TXG9O5H+qOfvI7KXmijq3Q=;
 b=TWC4U5hpHzXhB4eU5bPu1TjGrZrr0F/0l/4mS74MhhLoUeYkZqSEqpGL
 v56Sc8IL/KsyKWR1TNfDf7Drt4r7cB7lSNlTGGnWvTWR6BqlewTU/+594
 4mEFwXflsdfC8iddGqBPp7ZIOsiSdYljR3i+nFP4ftEknG4bJjMdIT1FY
 fW4PsGMDGCspfpKI74+fsvbkpGqqH54S0hKjo//zWXY1AhDKJ5UYXQEEQ
 pRDEFOLJqXgrNtY65z9R5X+k1RzUOLLqpYoEfMCK3jIl4GW6Lx90DFXZ6
 r2IIlGczbri7tD6pwTud2478rxWngsGpYrWrhGzuBTW8aWRdwuTBFAIEJ
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TWC4U5hp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [BUG] ixgbe: Detected Tx Unit Hang (XDP)
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

On Wed, Apr 23, 2025 at 04:20:07PM +0200, Marcus Wichelmann wrote:
> Am 17.04.25 um 16:47 schrieb Maciej Fijalkowski:
> > On Fri, Apr 11, 2025 at 10:14:57AM +0200, Michal Kubiak wrote:
> >> On Thu, Apr 10, 2025 at 04:54:35PM +0200, Marcus Wichelmann wrote:
> >>> Am 10.04.25 um 16:30 schrieb Michal Kubiak:
> >>>> On Wed, Apr 09, 2025 at 05:17:49PM +0200, Marcus Wichelmann wrote:
> >>>>> Hi,
> >>>>>
> >>>>> in a setup where I use native XDP to redirect packets to a bonding interface
> >>>>> that's backed by two ixgbe slaves, I noticed that the ixgbe driver constantly
> >>>>> resets the NIC with the following kernel output:
> >>>>>
> >>>>>   ixgbe 0000:01:00.1 ixgbe-x520-2: Detected Tx Unit Hang (XDP)
> >>>>>     Tx Queue             <4>
> >>>>>     TDH, TDT             <17e>, <17e>
> >>>>>     next_to_use          <181>
> >>>>>     next_to_clean        <17e>
> >>>>>   tx_buffer_info[next_to_clean]
> >>>>>     time_stamp           <0>
> >>>>>     jiffies              <10025c380>
> >>>>>   ixgbe 0000:01:00.1 ixgbe-x520-2: tx hang 19 detected on queue 4, resetting adapter
> >>>>>   ixgbe 0000:01:00.1 ixgbe-x520-2: initiating reset due to tx timeout
> >>>>>   ixgbe 0000:01:00.1 ixgbe-x520-2: Reset adapter
> >>>>>
> >>>>> This only occurs in combination with a bonding interface and XDP, so I don't
> >>>>> know if this is an issue with ixgbe or the bonding driver.
> >>>>> I first discovered this with Linux 6.8.0-57, but kernel 6.14.0 and 6.15.0-rc1
> >>>>> show the same issue.
> >>>>>
> >>>>>
> >>>>> I managed to reproduce this bug in a lab environment. Here are some details
> >>>>> about my setup and the steps to reproduce the bug:
> >>>>>
> >>>>> [...]
> >>>>>
> >>>>> Do you have any ideas what may be causing this issue or what I can do to
> >>>>> diagnose this further?
> >>>>>
> >>>>> Please let me know when I should provide any more information.
> >>>>>
> >>>>>
> >>>>> Thanks!
> >>>>> Marcus
> >>>>>
> >>>>
> >> [...]
> >>
> >> Hi Marcus,
> >>
> >>> thank you for looking into it. And not even 24 hours after my report, I'm
> >>> very impressed! ;)
> >>
> >> Thanks! :-)
> >>
> >>> Interesting. I just tried again but had no luck yet with reproducing it
> >>> without a bonding interface. May I ask how your setup looks like?
> >>
> >> For now, I've just grabbed the first available system with the HW
> >> controlled by the "ixgbe" driver. In my case it was:
> >>
> >>   Ethernet controller: Intel Corporation Ethernet Controller X550
> >>
> >> Also, for my first attempt, I didn't use the upstream kernel - I just tried
> >> the kernel installed on that system. It was the Fedora kernel:
> >>
> >>   6.12.8-200.fc41.x86_64
> >>
> >>
> >> I think that may be the "beauty" of timing issues - sometimes you can change
> >> just one piece in your system and get a completely different replication ratio.
> >> Anyway, the higher the repro probability, the easier it is to debug
> >> the timing problem. :-)
> > 
> > Hi Marcus, to break the silence could you try to apply the diff below on
> > your side?
> 
> Hi, thank you for the patch. We've tried it and with your changes we can no
> longer trigger the error and the NIC is no longer being reset.
> 
> > We see several issues around XDP queues in ixgbe, but before we
> > proceed let's this small change on your side.
> 
> How confident are you that this patch is sufficient to make things stable enough
> for production use? Was it just the Tx hang detection that was misbehaving for
> the XDP case, or is there an underlying issue with the XDP queues that is not
> solved by disabling the detection for it?

I believe that correct way to approach this is to move the Tx hang
detection onto ixgbe_tx_timeout() as that is the place where this logic
belongs to. By doing so I suppose we would kill two birds with one stone
as mentioned ndo is called under netdev watchdog which is not a subject
for XDP Tx queues.

> 
> With our current setup we cannot verify accurately, that we have no packet loss 
> or stuck queues. We can do additional tests to verify that. 
>  
> > Additional question, do you have enabled pause frames on your setup?
> 
> Pause frames were enabled, but we can also reproduce it after disabling them,
> without your patch.

Please give your setup a go with pause frames enabled and applied patch
that i shared previously and let us see the results. As said above I do
not think it is correct to check for hung queues in Tx descriptor cleaning
routine. This is a job of ndo_tx_timeout callback.

> 
> Thanks!

Thanks for feedback and testing. I'll provide a proper fix tomorrow and CC
you so you could take it for a spin.

> Marcus
