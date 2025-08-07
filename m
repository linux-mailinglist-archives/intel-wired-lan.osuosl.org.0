Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B472CB1D76C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Aug 2025 14:13:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6706A6F62C;
	Thu,  7 Aug 2025 12:13:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RtznDW5NQlba; Thu,  7 Aug 2025 12:13:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1435E6F62A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754568834;
	bh=MGIy6Ik1AA5IEFLbofX3Z55CnCR1etEnIR+abR+vbDs=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RcVkVLrWQlt7Jdqeq3wsLdL4cDF2P+WnYTrEThj8RKZWPix26midxqLW9+JW2IDLd
	 QIH7EpM9Bb5RiMWLJaROkOihXVyWq3XU7u9HUFtklzWO1X2+ZJVRYwtVxCjJMbu9DY
	 sh0MNylA1Y3zJjWXDdQ47bPogOmO6zekqD3eLfug1lLlrbe+APkt98DsvhTTxSkY3D
	 xq7OAGhEGs9HFZURxTvGh8N9xIt5KQ5JGNZHcIawm6MLZkFaIJpA838HHGfTT5xCK7
	 sQUXBUyB6ETRFOCwKyXVXItnq/1fmPvUpZ31tXZjlICeC5gv/pFN49gLHJSo5so/wP
	 eVxrsjaOEToPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1435E6F62A;
	Thu,  7 Aug 2025 12:13:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7CBB831
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 12:13:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7999042896
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 12:13:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ch538JHZ7Ix1 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Aug 2025 12:13:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7276242786
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7276242786
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7276242786
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 12:13:51 +0000 (UTC)
X-CSE-ConnectionGUID: OD6GroDEQLuaZOKUnr1kBw==
X-CSE-MsgGUID: B/pODSOaSGObuir6icOTKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="57037251"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="57037251"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 05:13:51 -0700
X-CSE-ConnectionGUID: 2UEJ7iioSzeeR/xFRty99w==
X-CSE-MsgGUID: UqIOP8k9Qc6LC3+pdnqkoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="196043254"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 05:13:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 05:13:50 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 05:13:50 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.75)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 05:13:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q3TcuUxYmYeSZgPcUuNc1w6xfIYHBQka/LnDL5sVzNlBG61LTrsS6jJlkz09wLrAk9879iAYTix+wIUeyFgCVgy8vVyaP9g+uzMGrz1yJFtl20CfWl1tBjC+SvwL2ziQ07uOUMY0WYGvMU6A4BGCFHYvtrxtMovVvDzJXyposj43NRjBZYMVsJ15aBly7ku1F6z2T0h2jGimYYPWjBvEM/bfmF/ljj+n/DGxny6a1wK1rg2VACsvngrPyNthqOII9EQAN+E1TuTzOf05CriFz8pWAID4wBZ63kkG0Pz7wQO5tJg/w4G6HwaM2Mf3N+0Oa/8+fyJc1GY/cDGeqJNYZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MXrfKwzR5Iel6WwycaYfSakeobjgYqpVH6dH8GDPNZs=;
 b=gEQdPQGcJXRrEhQxbpHi0xKmkp+l8SUumEp61rmnDTXZm09Shb7Qx4Km4qNOKyHs+g4CtqOoC1oiZ3KTdlxncG9rEXWX+nQ+nMSl6yrKqOfa6PEMtqjiROHXDOIccbeFLS9uAGgGimt5Ud1u2GrhqnP6IjFo6wlrRzdm2KnDHDHI3CsnrYgh5QZvSpCUNXHkvxMszzYFu8lzKDAo0wt8tCosJ/rXs1PTdhftvN+eC2+W8gjidGc5WsWanT/rfAT84V+Cr7wKc+1TMVH0hpk9lbeL6wRJSoDE9iwb3/9IlJVBmWpmwhuedEeH8ydNjIyMuqzyOkV8zge9bE0z8qI0GQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 PH7PR11MB6005.namprd11.prod.outlook.com (2603:10b6:510:1e0::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.16; Thu, 7 Aug
 2025 12:13:48 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.9009.017; Thu, 7 Aug 2025
 12:13:48 +0000
Date: Thu, 7 Aug 2025 14:13:35 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <anthony.l.nguyen@intel.com>, <magnus.karlsson@intel.com>,
 <tobias.boehm@hetzner-cloud.de>, <marcus.wichelmann@hetzner-cloud.de>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <aJSYb70vIpUEm4n0@boxer>
References: <20250806165819.2162027-1-maciej.fijalkowski@intel.com>
 <171ae15c-5c13-48b5-b5a6-e61e6f259681@molgen.mpg.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <171ae15c-5c13-48b5-b5a6-e61e6f259681@molgen.mpg.de>
X-ClientProxiedBy: DU7P189CA0029.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:10:552::29) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|PH7PR11MB6005:EE_
X-MS-Office365-Filtering-Correlation-Id: 4e3de63c-5894-4b31-45b3-08ddd5abdcda
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?FQmr6BjzO5YH6R943sEYlDVC10HtbfTX8GqlyI0OXGez6TLMNcNu42AyrS?=
 =?iso-8859-1?Q?yWqIFJETGW7qae7UjXK7RUb7xM4HwkmWJoJBFaKYE/UybgmJ73LB3pFR5r?=
 =?iso-8859-1?Q?0Q3Akx5/v26ccvhwY2XIKVj4eFM/Bjy2GLW1M1air7mRlhEeOZPZIr+yfq?=
 =?iso-8859-1?Q?7B7IvgEwE3IhTThFdBLmFjlpiPMjYLseeA3evT/UhAH69v3b9OZLgLmN9f?=
 =?iso-8859-1?Q?VxwO6+AeJnrlhehJy0/EygGQ5K1/oM3BVanbz55+wQb3VmjysVK//kRgIh?=
 =?iso-8859-1?Q?KNFBbJVI7LxO4YedVHLLtSMbRZfq5YbzRFr5DrhSIY4hi46DRO2YFLhOKg?=
 =?iso-8859-1?Q?4Id5RqbtBUoigQhrLXq5hbIHNxENZugiFB98Pg7UOPZ28ud0Z/8B1fJta4?=
 =?iso-8859-1?Q?YgvmjRkLoBdpRXdKS/1FDdh198Kv41rtPVTS+enxingj+1CWmbkBW3hz4L?=
 =?iso-8859-1?Q?DLXf7Wo5+//SrIGjCqGHE0ZK+ipIpIIkSwkTqUmEBEzhtPDlOT1AZWR7Vq?=
 =?iso-8859-1?Q?x9yrivAwIX6v/q4TLWj+2sB/BiDLqcQpw0ZVmYgOW/6M5aD5AXntyThZcO?=
 =?iso-8859-1?Q?38GIYEx6M7skgfVGUu3VERsEIwxL2zEzLlo1qVy+a/ygWzjFJ3psRy21Q9?=
 =?iso-8859-1?Q?BWw0XPU3G1WqCzUjsMdzE9TnmcXmLnQFsRlzsg2Zxf8GSZ4tixI5Y08x0n?=
 =?iso-8859-1?Q?wBIIehhOnwqtbgf+FlD8jBRlHYnAwKKXxTpBo9hreqbVlhXFsGzD+RoEoG?=
 =?iso-8859-1?Q?SxI83BuM1bI235wLX2mgIi3KOnrpdxfFtsoSrhsfjRVytUvEJW2RDkY2qk?=
 =?iso-8859-1?Q?Giy+O5cDVqNIwpWCHGXNgf2XHz8AyNEXnw2ySBVFHf35reozx+EihS5XQy?=
 =?iso-8859-1?Q?cqsy0PdY5XI4Jf9CRbi5d3Uda4v6xZ1Z3suyZH+IPO+cXgLsCaTWeWnQj0?=
 =?iso-8859-1?Q?oaAMuJXBLcu0mcNWq8PZg5CYYLgUwaBQpCMogNYxRkRNlajPXWDZ9zAp5D?=
 =?iso-8859-1?Q?KX2zPI6WIwsCnncj5VmBmFSi9OOMm3VQs20YQ0tctQ8ixeyTZbNLsqmEaf?=
 =?iso-8859-1?Q?YRWylnnPnsnTDfsr+VvKlPbBPt/d3vgPtMxDXXGEOGmlpHoFlg5kNFP2nW?=
 =?iso-8859-1?Q?05s39kw5+UpYh/ZH0XsLKdvq7ySRZ7RuKKofhw9q8FgRgos6VZm4RA0oTa?=
 =?iso-8859-1?Q?yXi/6/7bn7G7HKZd0W4GbK/ZfSK5tZ++tqfueV7sJUVhIOm/9w54t8IAqr?=
 =?iso-8859-1?Q?eJRBhcLLGk7OM7/KHtvRri6n6fSKO9Zi5fx6zcbvE3LnL/KqcoWnoS93Uw?=
 =?iso-8859-1?Q?cqlGNmNxshCis37q/raaEZ3cQTa66PmkLBE8cnIZ1eQtDWNsqmYDjjQfxD?=
 =?iso-8859-1?Q?zktO2y81BNkGNcuc5lAKeCd1A/0bro3zj8Sdix6IrqSDEs0y1Cgmht/FmN?=
 =?iso-8859-1?Q?Pv9IFH81zfO89SIPqsdPLlK/xEVVh5lZD1mBYPVsxQFo2IHcen0p2CFndC?=
 =?iso-8859-1?Q?I=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?4SmCVOid2IqcjfOa2MOU9/FJWhe23Nsz+aRcO0R7txnqXFvxLQsksBJz30?=
 =?iso-8859-1?Q?h5zVbfJ0P099jjs0ZhJp1iTT7Wfc7lLqLQkqCZHiccnE+cZEpFQj3snywK?=
 =?iso-8859-1?Q?5uHh5x6LVvLnOc6r468CKaZpPVEgQLRrgWeoZBDA2EdFTpE5yXuUjNwLRj?=
 =?iso-8859-1?Q?CFQSpnnXaulGKFf3HITlpGZE1AqFx7ckz71hpPk6VdamuFgo6kw29gkmaT?=
 =?iso-8859-1?Q?9Zlbcyg0iJVqYGesOjNAvmb0mvInYPich27N3Wtd6x1zHUtHFoLkD7eiLg?=
 =?iso-8859-1?Q?uBwUeLpQ65euqWy1ZaiqjWCNjwLpVv/y1EN/zFMajPOVE6iQe5zVzt5pEF?=
 =?iso-8859-1?Q?nqGdGah+R2htyejfkVmo5TC/ubGhs+z7Ci7qIh9E0LGkfCFFtlPZZBqCtW?=
 =?iso-8859-1?Q?ynjzamjXuWkpW3myw5j3o16m15CwVk3TbgeMP4lD9OE6tD3Ab1jKsbPMQE?=
 =?iso-8859-1?Q?NYCA2CyMIkR6IHhhapyC2LcXg87W4KReqFCi5KcAzGWUxZekMPffauyeIn?=
 =?iso-8859-1?Q?sAxuqOr7L8ZTL2I5VbqWe3YpotSbrj4j8UchsBf/GeYiLiO3OHzhhXicQB?=
 =?iso-8859-1?Q?RTNZ7RRE2dF9+mieWETy43mseJU48emyrbIqCUiQdm6lufjD3Th/Zvr9Xg?=
 =?iso-8859-1?Q?i/C0cTsBjo/i3shQw2K2fGOst/gxB3OB08HLJyp2k2gZ2UHcsmav9MGV91?=
 =?iso-8859-1?Q?AbTSLPEEeRKQuQ07C4ExfuaGAh4MSPTzDb9IjPogXvk1R/tqq29uL6rPaC?=
 =?iso-8859-1?Q?epvDbVlrUznX2hX/rkMIwDerkb6KX2KAKsTx6U8deOx+5wZ76SQdDVUHMp?=
 =?iso-8859-1?Q?hIY16ewmOUiBZNNXWIQg2KAoRyKvWKu/iv7fLhvLQhF7hJwMJLinsewZYM?=
 =?iso-8859-1?Q?vVv/SoNfnGamCKUMMwKFYKoUpl+Yq9Pvz/4uJajeR6oE48pWDzGHupEA4t?=
 =?iso-8859-1?Q?bR/0TRx4sumyA78hOoZJKqUSZBp27gBQQsy55zi7ssatXFm07vrZoGk1JA?=
 =?iso-8859-1?Q?mSqhJGHAUxas1lr2H9Yj0VjXtmLxJFOjVIfvZLn6tJy8uhG3Xzs8cwq4lT?=
 =?iso-8859-1?Q?bmXtNkFM7xwy1wBUzYYbyLNz5TsdV3uqKgKZWETsQnHPh5Xe+nFEUMLjwZ?=
 =?iso-8859-1?Q?pvVXaZvEhEEfsWgM/EVgMh99G2rqHj3yfn/II1eyj4wZN0N10Nm9FFMysc?=
 =?iso-8859-1?Q?IYuS+XQf4K7X8wqt2eLNdLGyOuAIsSO7jXJzb7KRlk2PkJqyb7YeCy3Iuw?=
 =?iso-8859-1?Q?ofDABE3Z2awrHG4lYF2GSUKEXc+gC54qtsPSKgcCcQP7zo3ImVRzZUI4Gc?=
 =?iso-8859-1?Q?hQGEcQG1iXKleKOCeYrXcHsrZSXA1maL5baEdWt8x5ie+icHcrpNTX5yGc?=
 =?iso-8859-1?Q?CWzf4mOVhX2LuzJskDqf45du9C0OEqWCVJtRVafSq5FczHhv9erL23QNWm?=
 =?iso-8859-1?Q?tRj9/AucGLYCUq5bKIWE039rxManJSgl9Gh1XznxXHvqj/+WYyJED+bldH?=
 =?iso-8859-1?Q?9bZGmKCjHbUXzQTCWISy3uy0vIPoVI6BMeXTfC+oPJME/NSkQ3mDW7wid/?=
 =?iso-8859-1?Q?dD/lg7vll67v6avKTewj0OcPpZxjUe/0ct+MAZcvL13ph85rOrwkWl/Irr?=
 =?iso-8859-1?Q?Ox6l3UCqUmUMLsRAyd45qdAbXhmABX3IqP/l/vJs72a4wE86GxQPzEeQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e3de63c-5894-4b31-45b3-08ddd5abdcda
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2025 12:13:47.9921 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T25mKqYqx9z5jXNXV8Y8qz7YZCC5460aD2eY4DXzSnhXm5dalwtwRatgyEM9KLC88zmMLivNJTCac/DTJx7ccNUlg+ay/kpbVDQtt/RKYgI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6005
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754568831; x=1786104831;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=aaEJ7T/3bQ9DFPqowIMB2GgYhBKAl7qXjGthyJC3R5E=;
 b=Y6u5tEcDYUPgif56+psW0wfdF/WsZ1x3REEdi/zTaTIXTMqGgcwsY+ul
 dAbuTtP+TVH0uibv7/+A731C4T3bxcXosea5nIT5H7kvlKfjZeP/EqwrB
 LIM2NXQEQ6WhtTNG7eb24bsAGytg/bcHreZyLSOEaLUk831XncpKJV7+v
 LipyZhN4moahtFRjAN7ocEMtu2DcZEVYjXHRIHZC8tYctNSTugvCCikIe
 2SKGQ1P0K6uO6MzG6nP/+tYgOI+BWPFNgcpUE+F5/G0fhV07WZ3C+AJU3
 MrQ8Gqi5c+emsbcoRBmK4ZMA1Zan1ruAFLj26JNB/2DZx41QdRasH5i4q
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Y6u5tEcD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net] ixgbe: fix ndo_xdp_xmit()
 workloads
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

On Wed, Aug 06, 2025 at 07:05:19PM +0200, Paul Menzel wrote:
> Dear Maciej,
> 
> 
> Thank you for your patch.
> 
> 
> Am 06.08.25 um 18:58 schrieb Maciej Fijalkowski:
> > Currently ixgbe driver checks periodically in its watchdog subtask if
> > there is anything to be transmitted (considering both Tx and XDP rings)
> > under state of carrier not being 'ok'. Such event is interpreted as Tx
> > hang and therefore results in interface reset.
> 
> For people grepping through commit messages, add some more details how the
> hang manifests?

Hi Paul,

I didn't want to repeat too much of things here that are included under
the link where original report took place (see lore link from Closes:
tag).

I know this adds a level of indirection for future reader, but I assumed
lore link will not be gone and it is safe to rely on it.

> 
> > This is currently problematic for ndo_xdp_xmit() as it is allowed to
> > produce descriptors when interface is going through reset or its carrier
> > is turned off.
> > 
> > Furthermore, XDP rings should not really be objects of Tx hang
> > detection. This mechanism is rather a matter of ndo_tx_timeout() being
> > called from dev_watchdog against Tx rings exposed to networking stack.
> > 
> > Taking into account issues described above, let us have a two fold fix -
> > do not respect XDP rings in local ixgbe watchdog and do not produce Tx
> > descriptors in ndo_xdp_xmit callback when there is some problem with
> > carrier currently. For now, keep the Tx hang checks in clean Tx irq
> > routine, but adjust it to not execute for XDP rings.
> 
> Do you have a reproducer for this?

Again, the original report has it. xdp-trafficgen was used to trigger this
problem.

I am not sure if it's worth re-spinning, especially that Marcus and Tobias
might be angry at me that it still didn't make it to mainline:P

> 
> > Cc: Tobias Böhm <tobias.boehm@hetzner-cloud.de>
> > Reported-by: Marcus Wichelmann <marcus.wichelmann@hetzner-cloud.de>
> > Closes: https://lore.kernel.org/netdev/eca1880f-253a-4955-afe6-732d7c6926ee@hetzner-cloud.de/
> > Fixes: 6453073987ba ("ixgbe: add initial support for xdp redirect")
> > Fixes: 33fdc82f0883 ("ixgbe: add support for XDP_TX action")
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Tested-by: Marcus Wichelmann <marcus.wichelmann@hetzner-cloud.de>
> > Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > ---
> > v1->v2:
> > * collect tags
> > * fix typos (Dawid)
> > ---
> >   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 34 ++++++-------------
> >   1 file changed, 11 insertions(+), 23 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > index 03d31e5b131d..7c0db3b3ee8e 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > @@ -967,10 +967,6 @@ static void ixgbe_update_xoff_rx_lfc(struct ixgbe_adapter *adapter)
> >   	for (i = 0; i < adapter->num_tx_queues; i++)
> >   		clear_bit(__IXGBE_HANG_CHECK_ARMED,
> >   			  &adapter->tx_ring[i]->state);
> > -
> > -	for (i = 0; i < adapter->num_xdp_queues; i++)
> > -		clear_bit(__IXGBE_HANG_CHECK_ARMED,
> > -			  &adapter->xdp_ring[i]->state);
> >   }
> >   static void ixgbe_update_xoff_received(struct ixgbe_adapter *adapter)
> > @@ -1264,10 +1260,13 @@ static bool ixgbe_clean_tx_irq(struct ixgbe_q_vector *q_vector,
> >   				   total_bytes);
> >   	adapter->tx_ipsec += total_ipsec;
> > +	if (ring_is_xdp(tx_ring))
> > +		return !!budget;
> > +
> >   	if (check_for_tx_hang(tx_ring) && ixgbe_check_tx_hang(tx_ring)) {
> >   		/* schedule immediate reset if we believe we hung */
> >   		struct ixgbe_hw *hw = &adapter->hw;
> > -		e_err(drv, "Detected Tx Unit Hang %s\n"
> > +		e_err(drv, "Detected Tx Unit Hang\n"
> >   			"  Tx Queue             <%d>\n"
> >   			"  TDH, TDT             <%x>, <%x>\n"
> >   			"  next_to_use          <%x>\n"
> > @@ -1275,16 +1274,14 @@ static bool ixgbe_clean_tx_irq(struct ixgbe_q_vector *q_vector,
> >   			"tx_buffer_info[next_to_clean]\n"
> >   			"  time_stamp           <%lx>\n"
> >   			"  jiffies              <%lx>\n",
> > -			ring_is_xdp(tx_ring) ? "(XDP)" : "",
> >   			tx_ring->queue_index,
> >   			IXGBE_READ_REG(hw, IXGBE_TDH(tx_ring->reg_idx)),
> >   			IXGBE_READ_REG(hw, IXGBE_TDT(tx_ring->reg_idx)),
> >   			tx_ring->next_to_use, i,
> >   			tx_ring->tx_buffer_info[i].time_stamp, jiffies);
> > -		if (!ring_is_xdp(tx_ring))
> > -			netif_stop_subqueue(tx_ring->netdev,
> > -					    tx_ring->queue_index);
> > +		netif_stop_subqueue(tx_ring->netdev,
> > +				    tx_ring->queue_index);
> >   		e_info(probe,
> >   		       "tx hang %d detected on queue %d, resetting adapter\n",
> > @@ -1297,9 +1294,6 @@ static bool ixgbe_clean_tx_irq(struct ixgbe_q_vector *q_vector,
> >   		return true;
> >   	}
> > -	if (ring_is_xdp(tx_ring))
> > -		return !!budget;
> > -
> >   #define TX_WAKE_THRESHOLD (DESC_NEEDED * 2)
> >   	txq = netdev_get_tx_queue(tx_ring->netdev, tx_ring->queue_index);
> >   	if (!__netif_txq_completed_wake(txq, total_packets, total_bytes,
> > @@ -7796,12 +7790,9 @@ static void ixgbe_check_hang_subtask(struct ixgbe_adapter *adapter)
> >   		return;
> >   	/* Force detection of hung controller */
> > -	if (netif_carrier_ok(adapter->netdev)) {
> > +	if (netif_carrier_ok(adapter->netdev))
> >   		for (i = 0; i < adapter->num_tx_queues; i++)
> >   			set_check_for_tx_hang(adapter->tx_ring[i]);
> > -		for (i = 0; i < adapter->num_xdp_queues; i++)
> > -			set_check_for_tx_hang(adapter->xdp_ring[i]);
> > -	}
> >   	if (!(adapter->flags & IXGBE_FLAG_MSIX_ENABLED)) {
> >   		/*
> > @@ -8016,13 +8007,6 @@ static bool ixgbe_ring_tx_pending(struct ixgbe_adapter *adapter)
> >   			return true;
> >   	}
> > -	for (i = 0; i < adapter->num_xdp_queues; i++) {
> > -		struct ixgbe_ring *ring = adapter->xdp_ring[i];
> > -
> > -		if (ring->next_to_use != ring->next_to_clean)
> > -			return true;
> > -	}
> > -
> >   	return false;
> >   }
> > @@ -10825,6 +10809,10 @@ static int ixgbe_xdp_xmit(struct net_device *dev, int n,
> >   	if (unlikely(test_bit(__IXGBE_DOWN, &adapter->state)))
> >   		return -ENETDOWN;
> > +	if (!netif_carrier_ok(adapter->netdev) ||
> > +	    !netif_running(adapter->netdev))
> > +		return -ENETDOWN;
> > +
> 
> I am no expert here, but should the commit be split into two?

fixing producer on one commit and consumer on other means that first
commit would still contain a broken driver, which would be not a real
*fix*. you can think of ixgbe_xdp_xmit() as a producer of descriptors and
ixgbe_clean_tx_irq() as consumer (in reality HW is the consumer, but i
hope this analogy makes some sense to you).

> 
> >   	if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
> >   		return -EINVAL;
> 
> 
> Kind regards,
> 
> Paul
