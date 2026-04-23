Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MIwuEJ1n6mkHzAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2026 20:40:29 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4A545626B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2026 20:40:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B10C606BD;
	Thu, 23 Apr 2026 18:40:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t8YYrRjX6kDK; Thu, 23 Apr 2026 18:40:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C50A60BE7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776969623;
	bh=SzLfioNbCLPt912VqEfffGknU1pPjgUvQSsBfLNqHE8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Rx8EXj1xIW0YFCAZRCP70+L7AMdVQtwNbSDc1DPfE04adRNXwPGIZVUajiZ0BhUsF
	 RuA0uRBJd0A36RoX7Hqiu78gz/BETYhb9by7Bqgj9n6Me1zNTMhSX49xfVrt9MrYTL
	 aK+ZXY6tws0kd4koSmHIFSWeFv1+iHH+x6jQJimDg1LulBko/9U2nhvsM1drXJuCXR
	 X7BmVdrlrt7d5ViHdbDz+6qU/ACQLJPjowDWOB69AE2/yOyMLuZ+hkPmuoZy2KZYvP
	 4y67HAC2I4axUw9dqCtZOARKCt+Jm+K0klTHdhqu2tX3YYFbQIkSQPpo/ATjG308aB
	 soko9TZlv31Fg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C50A60BE7;
	Thu, 23 Apr 2026 18:40:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 75EFF24D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 18:40:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6739D6075B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 18:40:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id awpcrPgK5YWx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Apr 2026 18:40:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 38D00606BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38D00606BD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 38D00606BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 18:40:20 +0000 (UTC)
X-CSE-ConnectionGUID: GHbBj/xIS4+7iAR6Roxp5Q==
X-CSE-MsgGUID: 3FZPKWayQ3iESxn5ZgKBVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="77115563"
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="77115563"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 11:40:20 -0700
X-CSE-ConnectionGUID: GpbQXfb1R5yo4j8hZziP3Q==
X-CSE-MsgGUID: 5r2Mk9SRTMWXmaMAkgW9ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="263131772"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 11:40:20 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 11:40:20 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 23 Apr 2026 11:40:20 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.21) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 11:40:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kxAxRD9mmxBeLrqeNUjjFYdV31m8MI5RwF77wB6xHDkPR0/5u65JN41KotlbpLatEadeUKqHjLvqnVhoi6kHs1mjz9TI8sdq4vHCv7YFz/miULlzlsZttdjgcYQkjB/MRLLm6Ss5ejo/9LjVORv4SO4YZYKWBDeh4nB1cMyuidLKd4hzGBRoevcSCAECvHoR203IGU1e7JA58DEx6BjWTGa/G6nXAGn4yzZvgn26z5OFqfsuRg+Vpj7awy2nWfEE800+Ij/ezw1Q3KJJtZavtDT/N8PGyVrRiovgbI7P9XJ1zL8J013cl6H58IEvNlnP12JuezvW7f3y5T8yaAZ04g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SzLfioNbCLPt912VqEfffGknU1pPjgUvQSsBfLNqHE8=;
 b=i49r7wETX4jbtpMVQgRLwiM1Lj8HNRef9+DRzVBOF1JQ1QN9I4Bu5+2fwp4IBFrHpXe8Z6MdXsM9PvHZYZgTZkGNjcgwT9avr1Mj7bjeAbnyqmDRVVv2ozVeQuIUHHJwlYu4JteIufM7AGUCYX2YGRmkOPY7/HfnadtwYqTJXzWvvM1ENzl3yA57VPHQSNWS0CoOR+YsDsD36l6L0t5wFfWvXYzzDDyUJuk+sqY2Pz6RaPKOvdxe8ZOQnfJV7y+bBUe24PDZPcugryjtln4mJhavEwCAHOtud6UApJDZr6uwa5X5V6QpUxd41cpmuqcgNVY7lxhqUL2R/2ycsLzdwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 CO1PR11MB5075.namprd11.prod.outlook.com (2603:10b6:303:9e::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9846.20; Thu, 23 Apr 2026 18:40:17 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9846.019; Thu, 23 Apr 2026
 18:40:17 +0000
Message-ID: <25163a38-53b5-445c-936c-0cba94cb731f@intel.com>
Date: Thu, 23 Apr 2026 11:40:14 -0700
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, <boolli@google.com>
CC: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <edumazet@google.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <decot@google.com>,
 <anjali.singhai@intel.com>, <sridhar.samudrala@intel.com>,
 <brianvv@google.com>, <emil.s.tantilov@intel.com>, <stable@vger.kernel.org>
References: <20260421051641.370436-1-boolli@google.com>
 <20260423163307.989421-3-horms@kernel.org>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260423163307.989421-3-horms@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0091.namprd04.prod.outlook.com
 (2603:10b6:303:83::6) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|CO1PR11MB5075:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d2422d5-5176-46ad-f229-08dea167c3e2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: vx80BKTH0GHP7kFB9pTJAiBL3i0zNSEcNNFo0F5CUqvkAk2X0j/JnahVPzFZ9RkW1ME02QrQnLcSFQwnfAvHhnCId8dpPTaU7JKq2R4E1XmSflm/DmuRh1o1ksdLehLkSBFT5iat2FzYD0gVYJigJQG67QSqDIz0jbKTlqzGrhtaGyXDBOlA/cGqjI94hWCSmVd4CoVQ4tG5CKuQyd7cXFAhH1sCw+jAAEtScDEfdmw6QSqmKE/r6JIJ+hjoT4u+Z8OJU2XT7iL2KK3iUXQRaw3Dh6wrOWHH5PjPF1WWm9+X8hRBTVh1JZ8TFcupqkWFJYD3eZext+GrZ+gddqBTOwU9uWJ2j3018YpfueN8eS8xRe02tFWp6Q9p/E04s92eEAD42XSLZHKIxtdTHjdYWDEgYxAIjCLe7Iq5v0SjLFGgdPSvRqd1g7yY1zq/Or85bt8SW1Gko4Wa72qDRFpV2dldoFDoUY62+d8240Njdr3l0t+F5T9ShLaZ/5iueagCiHydzYJ60UsqOyQYjaoiB8y3sUFsar8Z+8EVGByOJ1GTYgnmsplXmkZ2IHdWzqbsm1X9bFvOgwY/m2oNZouTVGEDnVJPu9W0zW5YNyqhQTREnzH/WaltP0/hpfoGCgw93BhdD9brRkD4OChZXltA0OCyc8vv+Qx/4zn1EBluw2/KsO6cIom6clq7ky+XM7MX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d0xnelRJbFFxbDRuaFFOalhjNEZIMzFneUN4ajZ1RU1OcEdSQmU2UHFLa0th?=
 =?utf-8?B?clg1YlRZR2Q2UFlMRXpYTXVHM0MwRW4rWFh1WlZJMUJZQUMwRWM0dk9qWnl4?=
 =?utf-8?B?UDFHSk1NUS9MMERDR0pIaGt6TW41aVRXWjBHT3RvL0JMcDA5VHdrclJ2TnQ1?=
 =?utf-8?B?RnBOTGtuMTFMNStkR1dIbHBWZlZQVml0Z1pudG1FYWQzVHFXWEFpSHU2dVhC?=
 =?utf-8?B?bmZQdjlBTUNpWHJlTSs1WFFBTEVtbVRPVUI2VnZ5cnpIZ2ZwZm1mS1ZKdzlV?=
 =?utf-8?B?NHZ3MWVpZG0yc3ZiN0FBWS9tM3QvSmpmUTd4ck5WWVFVMWZvYjNiVXVTYTA5?=
 =?utf-8?B?ZVNwaUo1QkxXN3lrRTJyOXN0c2x0YWRtbC80b0NOY2NsK2N5cnplTEFwaWdG?=
 =?utf-8?B?by9JQXQ1N0Y4ZUN1YU5jZ1NlVlNML3dGQ1RnTFp6V0tpMDVBQVZ4QXduNWMy?=
 =?utf-8?B?NmtTQTZPTnZZYzY1RzI2RHJzb3ppREVEK0UrbWZncFlOVlZKdkRJN1JCUTRj?=
 =?utf-8?B?QzNnNytMZlNJbkhQUmMvQ2pabjlRVjZYa0ZrT2YyemxLMEliZ2trNXFpS0hH?=
 =?utf-8?B?aVNlVkpraUtDNiszM3RUWER0RWd0eElPSFJBc2I2UHlReDVXVnpwRzZrblc2?=
 =?utf-8?B?RFJQTEl2Y1dQalVOMHc4UHZzSWx3WEptaGV5ZkY0SHZCbWgyL0FjbHJPWkw0?=
 =?utf-8?B?VHZBanJjTnFQSmZlZGJPMytLMmVaZ3lTc3BlM29XMEFaMHlJUGlFempYZjdm?=
 =?utf-8?B?L1pHdERTQ2xwQzlMNG1VS1RNeTBNZFUrM1h1RWlJbkZmdDY0clE4cWdldGZR?=
 =?utf-8?B?Ty9CeXVDVStsek5HSzUremxQR2xlKzNCaldwWWJhUlVHdlhvYkR0c3BpQmlS?=
 =?utf-8?B?L2lSOXRKQ0NNdDZ6SWp6TkJjeUdCQ2t0cVFNSGtFQUpZSUhlY00wNkg2OHVG?=
 =?utf-8?B?VDJZRms3OUNhbCtkMmROaVV0WHBlNFdIdndaSEQrdllWb3RLNTFKUHcxOHEv?=
 =?utf-8?B?ZXYrRUlIR3dFbGlrQk1hbnY0WlNrd1dxR0RHN0lKVTJ3ODI3bmdTOEZoSjRD?=
 =?utf-8?B?L1E1M1Vpam8rUEk5UWtWZUhlby9DbzNyUFJQTjJJTkpXTHZLWXZXUWxUaVdE?=
 =?utf-8?B?QVg2Ny9JZ2VMVktWY0RTQlpGYVZLZmNNVzY1dHJNTlcwTkVhQk1hb3l0M3FR?=
 =?utf-8?B?VTZ2bVJEaFREZFB4OUJPRllRdG9EU1cxSWt1aWFaVFFlZ1ZkbEI1am9Jbkl5?=
 =?utf-8?B?elF5VnBGbnREc1diOStBY3R5NjYxZkJCd2NYKzRNVVNBL0grRzJUNkpJbG4w?=
 =?utf-8?B?ckpQdnRzVG1LSGNuWkRoWkFHbmYwQU1iNElvT053dVBGa1dWV1hQQXNyRUhZ?=
 =?utf-8?B?WlJFN21QTVhqRUZhVWxRZmsvUThJanV3RU1EbkZqUXNVUVB4MXNDM0pkYy9R?=
 =?utf-8?B?b2M1Y2xrcjFKVU05Unl5UVFXc09zZVJXam5VQWMrQXU1b3FqRWRWTEZyU2ZP?=
 =?utf-8?B?YUpURytnck1na3EzWkllNXh2bzVnaExIYXIxY1FtZVJnd1NJcWsvUFNEN3NG?=
 =?utf-8?B?NU9LdVhHZzhJVmx6aEYvbjA5S09CU3ZOazdoMnRJTVRDMGNHNmNqeGVBTTkv?=
 =?utf-8?B?Y2VFTWlVQlJEaDRHQkxlZTJxTjZnaVI4TXJCM1B2WDNqMlRuWlJHVEZyZUE1?=
 =?utf-8?B?MkdRbHAzVXFnQVVqaExWL0NGcE4vWlFnY3k1MEVwNGEvSE9mQTNUZU9pRk5B?=
 =?utf-8?B?ZHhOZGNSdDhvYndQd0tMcDg1Z2NiZE5uZmNlRlRhZDVpaTdRTWtoUkNaaVE0?=
 =?utf-8?B?TVRIMU5EQkxyMDhaUy9ta0hJeG1TbG4remhHazV5ekFPZzlEaStEb2Q1eGhF?=
 =?utf-8?B?NjZyZnd0V2w4bDVYb1V3MWRzdXZkMmtoWWlIaUtPb3dESUoxYWRHZi9mWGI3?=
 =?utf-8?B?SElvUE83cUg2QTFjVnlPcEdjSWczeko5UFhpMzhGMkVYOUFNKzhvNzFJNmlZ?=
 =?utf-8?B?M3prZm1oOHZEdSs3OCs2WC83bmlIdHhrZFI4QzNlUmI0RXh5ZGxaakoyaU53?=
 =?utf-8?B?RUlOSGE2ZDQweWdmZ3pWMGxDTHhvOWRNOTYwMDgxN2hPSlpLVXJQNi9CZC93?=
 =?utf-8?B?dDd0Z1NWQXBzY1RNK2kwOFZNK2dPN1pHemwxK1RRNjFubGxNazM5QXpUNG5N?=
 =?utf-8?B?RkNJN2Qyd2c4eWZaZ0RjUGJvUzlJTnIyT0t5ZmtmWWlROVVOSU9TaStwdjB1?=
 =?utf-8?B?bG5BMXY0emErSFNjRU85bHlDMk5hTzBKQ2RnSFNuQWpTRUt4Nyt3d2t6MFVp?=
 =?utf-8?B?WFJrWWFjUGpVeUZzeVBVelplRk9CMEM2djM0d3VmSHFlR0hOdFFTZFVLYmZF?=
 =?utf-8?Q?tDY9k2WW9wIwLc3w=3D?=
X-Exchange-RoutingPolicyChecked: EkdOC3V0NZ+fDUzMtQBZiMWGEF7mG4gh3LJ3hai9knIjhlYYoFOYXXQZ14tuZhqhfQhtkhz3CpGkP7WQbnWECnw4O7qDt7WypdKOvfH5rG8qKFYq4jXebmPNRemMel+8tI9rSkraMGwOCYey7l1GehkXgXHBYgIGVFzHbgcyrHY9b7mtCamJNz7bMCs9DPQeybJuAdZWuqsWiqpcmtfGW0xJrI9YVIbd++FrrrTKZZEk21anosyqG6zXDUV+pyqgEzTAjwrKdomfRIcPQyxY9Yc6RnUxCMoSQ98c20CzOEOmZnSYLlh+0AHL5CtFiAx9EC/cXd+EZxSBqBT7WWVmfg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d2422d5-5176-46ad-f229-08dea167c3e2
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2026 18:40:17.4956 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qnK4CjVfmOESHyYu0ZkZMwxkusAwUoVqH9F9NPYbnVnPTQk5g/byVOsV+uhDbLrbbXCgtTQIlSlLtSZIeIjggN2RVQiR3JMlVUK2qFmQaqY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5075
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776969621; x=1808505621;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WLHCorsCt3ehYHPJCk84TimjQuYrQJ3Kxg/zY6eDZ7c=;
 b=kl2abOnQnNogDd0ndKjBsAF8ckda8Hl8Wj5P293Wu4TwOkgzDUqWsSio
 WxQHK6UaW+1WZoNkpGSRtoRmd0nhOy6t25if5KqeqUgqYWwOMBgtK6Yqm
 63t6Y5vrReCNhenY8cnlyq2cIhbN2uT2QfqoMCV0sU658rYvBU+FhiZJZ
 v6RMvjuQKLBky3FLHNnutcHufIvKVoStnJ5YmyWsgprtrNAs5sQgZ6gEl
 1YztAVoJfhy21vGL7x3ofkfhXwkfW2MybndPlOhaDHL6alHqg+YT52ro8
 nCuTypwWRqaEkb3Jtaf5R0XxSLPWloN056spEmntATvEEqi+p2Q4B3k7T
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kl2abOnQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] idpf: do not perform flow
 ops when netdev is detached
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:boolli@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:emil.s.tantilov@intel.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,sashiko.dev:url]
X-Rspamd-Queue-Id: 8C4A545626B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/23/2026 9:33 AM, Simon Horman wrote:
> From: 'Simon Horman' <horms@kernel.org>
> 
> This is an AI-generated review of your patch. The human sending this
> email has considered the AI review valid, or at least plausible.
> Full review at: https://sashiko.dev
> ---
> idpf: do not perform flow ops when netdev is detached
> 
> This commit adds checks to prevent crashes when out-of-tree modules bypass
> ethtool core locks and call flow operations on detached netdevs during a
> hardware reset. It introduces netdev and netif_device_present checks in
> idpf_get_rxnfc and idpf_set_rxnfc.
> 
>> Even though commit 2e281e1155fc ("idpf: detach and close netdevs while
>> handling a reset") prevents ethtool -N/-n operations to operate on
>> detached netdevs, we found that out-of-tree workflows like OpenOnload
>> can bypass ethtool core locks and call idpf_set_rxnfc directly during
>> an idpf HW reset.
> 
> Is it acceptable to add defensive checks upstream solely to accommodate
> out-of-tree modules that bypass core kernel locking?
> 
> The core ethtool infrastructure manages locks like rtnl_lock for in-tree
> callers to guarantee safety. Modifying the upstream driver to paper over
> locking violations in out-of-tree modules might contradict upstream policies.
> 
> Simon says: If this is to address OOT module behaviour then I am concerned.
>             And I would suggest that the correct approach is to fix
> 	    the OOT kernel module.
> 

The commit message says: "OpenOnload can bypass ethtool core locks and
call idpf_set_rxnfc directly". But if it somehow calls
idpf_set_rxnfc_directly without holding the appropriate locks, then no
amount of changes to the idpf driver will fix that issue. It is simply
unsafe for that to be occurring, and this feels like it just patches one
specific problem without addressing the root cause that something is
calling the drivers ethtool function without correctly holding the
expected locks.


@Li Li, could you please explain more details about the workflow that
triggers these behaviors? If it can't be reproduced with in-tree modules
then I don't think we can accept this fix.
