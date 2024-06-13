Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B319076C4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 17:36:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 46396400D0;
	Thu, 13 Jun 2024 15:36:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qCkdOFNrxm97; Thu, 13 Jun 2024 15:36:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06FD341412
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718292994;
	bh=m5RyLUBm4pHdvyMJFaD4ikxgg1ErLBCs2w9ApbFyN8A=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YvN7k4OUHe649smBPX8UbQNt3O5IXuXrMxkPDT+vutX7Wtc/8XKd4ufRRiqbO6rBx
	 6lLKsJ78jIPyN6BVCj2oIBcH5IHB1a23atYANF1wsza227IvyCMsF6zZZOacB1Cbvm
	 Uk8aq4C7ouCt8PK0w05LrlVngehlu3u232Kg0UvB/abmrmGhqqEeXD0wQT0qXZ+iq/
	 5BPyc/mnu2U3rR98IFGVxJfmth+38LMjq01z95tK5M7vb6v26e4GcHEAtn9q1S3Wx2
	 FopmwyXGhsERuIGmk8CBFHlFX3DvfnRHLQIhNyOthg0bwSWlpd+LO7RhZsHavfMNRm
	 vrDTSRXSOjgbg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 06FD341412;
	Thu, 13 Jun 2024 15:36:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9C92A1BF34A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 15:36:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 96173606DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 15:36:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ReNGJ8e2svxZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jun 2024 15:36:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 50640606A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 50640606A7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 50640606A7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 15:36:29 +0000 (UTC)
X-CSE-ConnectionGUID: b+hmb7kwREW1tolvcaz2HA==
X-CSE-MsgGUID: P7tNR+euTQu/70zYD4bh4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="14952161"
X-IronPort-AV: E=Sophos;i="6.08,235,1712646000"; d="scan'208";a="14952161"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 08:36:29 -0700
X-CSE-ConnectionGUID: 4ohUBEpPRBeyukdPt+WyIg==
X-CSE-MsgGUID: fVM6Q7PvTi+J/uaURjeZeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,235,1712646000"; d="scan'208";a="40659975"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jun 2024 08:36:29 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 13 Jun 2024 08:36:28 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 13 Jun 2024 08:36:28 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 13 Jun 2024 08:36:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kN6c5COL79AwZ0BrhWc6XmwitEv4EWnil2aRq7cvEw7M1q0vuxoy8aPkFy9q/Is7ows//fp5KuF4aTh56vnnKjYCT8wAjTHKo58oPwal37XcRjqDVJhLaJy0Rl2bduKa0qDpP+xirvvlvf6Nne8ynQHLOgQBDnkx2YYNde95TyQS2eZ2CqpZg2V+v3VW8YAglNJQO0pnjdb6Shl5XP7I3GRroC8P63zYhpR+ILXU39IQZ01Wwr6UsG3vPcBRQh2fkG/c1xeHimhsHReQhJ+olYjrlvPoaZfkGuwxjeQwYhYFQRC/kbdt/fo4rqJT5tnNFRdSNKa2Rxf8MsqDA/zPmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m5RyLUBm4pHdvyMJFaD4ikxgg1ErLBCs2w9ApbFyN8A=;
 b=lL9edvrjqxylllm5dCyfEgOfKVvIyEkCZLZ1rwiisFK2WfPfloNMDbfro+WYh1aN2gkWLGtHqSO42xUp0itbKqnPzIRd8XpKGGlUaY0F//G7Gq1iq/zHATbeXF01kMHyKu0c0BMITQdpGgB8WQwr5La+j06itUsGgrzU3hr+i6zkQnKT9JL72IdjoVbeiUNNLiLoBgEPXnDTo1/FceKbZw4b2LYDlBu0w8qqSHv5guTFat8LIF3VXv44fMKy8sSj8PZEHRmKcjy7A00AJu3f4GANVzVYYZPQZbwFEVGzYooZZ3808zjmo0GPG62MP52WfXGPJV2lVDWquvlpa6assw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by SA0PR11MB4704.namprd11.prod.outlook.com (2603:10b6:806:9b::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.37; Thu, 13 Jun
 2024 15:36:25 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29%3]) with mapi id 15.20.7677.019; Thu, 13 Jun 2024
 15:36:25 +0000
Date: Thu, 13 Jun 2024 17:36:16 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZmsR8F9GFgxgBXfV@lzaremba-mobl.ger.corp.intel.com>
References: <20240610153716.31493-1-larysa.zaremba@intel.com>
 <20240611193837.4ffb2401@kernel.org>
 <ZmlGppe04yuGHvPx@lzaremba-mobl.ger.corp.intel.com>
 <20240612140935.54981c49@kernel.org>
 <ZmqztPo6UDIC6gKx@lzaremba-mobl.ger.corp.intel.com>
 <20240613071343.019e7dca@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240613071343.019e7dca@kernel.org>
X-ClientProxiedBy: VI1PR04CA0132.eurprd04.prod.outlook.com
 (2603:10a6:803:f0::30) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|SA0PR11MB4704:EE_
X-MS-Office365-Filtering-Correlation-Id: 262b516d-8e4d-4978-7c71-08dc8bbe95f0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230035|1800799019|366011|7416009|376009;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?jBKZUM+OefX1eYVudVjNhTOb7p1L9L/zjN8h1yVfO4KF0fH6VWu0CZATgkrq?=
 =?us-ascii?Q?zLZaL+h0ljnv+9Al3QwLZ/cqmEfzT5wkcV+2csYDwmecgJ4gS+TBgOhnSmRW?=
 =?us-ascii?Q?fbKXtfSyxj8GljqcK+iv0uxfRM55DHBGc4hh65Pjah6LhbI6O/iPbAAA0Mlw?=
 =?us-ascii?Q?gloXK652Byd90fSJu3rjIurshIW7Mf4sFuK9ZDVQV5P1HUDkzxUFmPqFWo93?=
 =?us-ascii?Q?68Ss/CKLEZHtjtqvLV1uXphk82AybRKxxKPJ4Qr1w5aKkNVNXDlNkomKdwRK?=
 =?us-ascii?Q?fAG/+5bDSRaoj1IjlmXc8VTouOsCIV5UUv080KMqK9GTcCfiBc5+DdmKiojp?=
 =?us-ascii?Q?l136tdqpYi9hUkid3kcBHuNbUzSSCzWQh98WmZnd5YIGlBzBaOV9k3x408jN?=
 =?us-ascii?Q?E/21JP7OezVhUVJpSa8XYbSop91naze6PJLMS0BjTHoSKoJzwUrxEdxy1mAX?=
 =?us-ascii?Q?HZ/BS9cEgtOxGwhvKmCQkrw17Ea9jiH4iGSBYsfrFrtU3EwEArPFku5ohPA5?=
 =?us-ascii?Q?8i9r/fjQdtNQ+oZbwx7fd4au7mlnxE3lxNrG/upklV9YqMwL8M0mpuWvlmS9?=
 =?us-ascii?Q?IiDBpNV9CaalKxI6mDFEDzZP8fm1CO4sAWytOw2DXAxH8zx2vMB5uuxeWi4F?=
 =?us-ascii?Q?DF9H+bHPMSQsc7iGPgnbMUPUhfZMxNxZX4CAb+So9uxyPbRsAbYJcrrdBqT0?=
 =?us-ascii?Q?rnKS4pGrlDCRh3Wgktto1Ru1KAKqK32DPWjoXFLecjseoPLqRlISr0xf1Qv3?=
 =?us-ascii?Q?DQzK3MuJA0m69IWJJJU8rhZUPcZ/EJpM/u3RqqC4hUDS4lLS2LZNUOierzU/?=
 =?us-ascii?Q?9UbxP0VbGkfAfHYbN9Vb112AabcAUsFIbWclrTUJENTDkaX932k6un4YINmC?=
 =?us-ascii?Q?z8lUGPSF0cEYFAxt+kZaXQzoQwX8MMPUHAO2Clokw5EjrSgiB473aMcbWWJE?=
 =?us-ascii?Q?KNW7/Cz8zSe6XmCBeiZxC/tyt1kTXc5OJnn1zLg6HmcnvhJP4fCH4864udiZ?=
 =?us-ascii?Q?did2vWLVwuN8fA95Q7f+PyGVojufCxPwyeIRGKcZCej3/pKLDMFXObiEeiRS?=
 =?us-ascii?Q?nTt59GM69SsmgP+ErkPCPxIR4fzDWLEkDP7EkodS9lw1BxEITrWzc88kwXv1?=
 =?us-ascii?Q?5pLrg1jUdxx0Coqhh4ETl/hDEBobEbCOHTFdP7muwwJ/RSmVFGRYMachHclE?=
 =?us-ascii?Q?g+jmg0xhckQu0kbbgHl812qIQ2VwWZRJcIvMp/5s8oUQqFHVNYp0XZKa3fOU?=
 =?us-ascii?Q?6uUsRaduYGskbIom6tIBd1EeVQK/WC4BKWgXRP2VMYUcx2Mmxoou+wt+GLQ1?=
 =?us-ascii?Q?El+9ryEW+/pdmoCqzT6BKylE?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230035)(1800799019)(366011)(7416009)(376009); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?eyfcm9ViYICJwCXqe3UHmmkgwbqi78s0MUEmS015D/lQDen7IISy+FYRjk5+?=
 =?us-ascii?Q?5S5Fa4VPAs37DzVsuvk+OeeztigIRi1w/sh1el1pW287pb0y88NFpIvxOLJO?=
 =?us-ascii?Q?UptOzo45jAxciyWrq35uQ2gc9H4dwMvpZFrzHtG5ibcAMuyhPGljrmMzPu5R?=
 =?us-ascii?Q?5Il8X7EJz/vCNbeIhi+kcaUYhe/RVZEmm01cUe3q/dc/IeWlMZpXavuby2Vm?=
 =?us-ascii?Q?cuQ75oOB5S0WI7mLoLw+5g3/5Zzp6wtkV2e9J7Q6vVhNk51OreZX01zHvkul?=
 =?us-ascii?Q?O9449Fq6QjFoId0lmwoXkD45vL7xKSUqj7jP87nLUpWZPp65mGtJaFtW+RRm?=
 =?us-ascii?Q?CMixqRggVl35nuhWxzschJ6depzZomvK7LCYkvhvyPREXOuP2f1/wzd8J2xz?=
 =?us-ascii?Q?eSiRvQRYwasPA/VZYb0vEidqq+T4zHa1c9/j87mSvls31EVLTIJRelClYLR1?=
 =?us-ascii?Q?uIb5y4DB4d3oYVr7uzgYbDnn8ptZgalCcsPWmyS5arH32+hdfo/kY27bKGHB?=
 =?us-ascii?Q?gbssqZByNrnATQ5Vq7X3ZJuJbjN/4ATflbo4jn4n24sySKgTl1NYyA6wBosp?=
 =?us-ascii?Q?mYtV7RVJP4Y160AUd5efGpgTPoU+zrWxfSC6uJKrbbhNcuXdRfaTJacUiGMF?=
 =?us-ascii?Q?wJVW3/8oFuNr2fjuvUflA9joPuF+0TAOG52OMG13S2RsUdGU36kwj8HvjRZR?=
 =?us-ascii?Q?D4hXwVzKmhy3kZhdQ1EENWhQGYEbqEfUHP+4fXO1mYobiriMyFi55N2EgcCS?=
 =?us-ascii?Q?6xFwEU0R25Hhqh4cs/2scpcP0Ch4mUAH5+1IjWU3DvLW948J5+ZWQWJIccw6?=
 =?us-ascii?Q?lgdo4ZVOxhx6Ou7ewkouY42F+PLK33NHztY8l/Hr9QuiK6ZbagnWPPvYYW6Y?=
 =?us-ascii?Q?AeoxT/ejIv/IjHdFOmvDUIZU7zZLDkrGfRWcewYeQAJIhhi09ZQcvun8m1YV?=
 =?us-ascii?Q?pqA+gWC5ATXfgqnjMtxHbrYJXvzBte3626HOuKKjUMOMsQO3Jcrxvc6D39PF?=
 =?us-ascii?Q?dlmsKvrfIxoxuQlM5axgKOV3g7BqQ0/NhPpM6f1XEMofp4M0QHEGhuMha2NX?=
 =?us-ascii?Q?Cz744pTGVzjrAzhIM/sO5BEe/P160qXz5n5aKooA+qCBcGUfOMrCt1NxwnI0?=
 =?us-ascii?Q?f0cp6AVAO0DvhAIoUypKoLCa0kpOqgczqLqKC0x2sGeYEmCobMHAUUrVrw1Y?=
 =?us-ascii?Q?Ckc3jFj7lwLqAUq87nkINHMA43k+6pQe9iFqXTcDe/4gmLYDijrXRMB00Chq?=
 =?us-ascii?Q?YrayZamw/xp1ttuEzuPNtnwxAa+AvsbrA9DcD6GXLHVcxECmb3eONTrBXOCV?=
 =?us-ascii?Q?QwI3Jl7F465CCrp8BNP+gxQNdk/q6VBLAZsqvy05lhYHHRUHeO2kXm7q1tEE?=
 =?us-ascii?Q?3QoMBLauxCntiNtoUDdhx5aNl8ln3pzpKgjdsT9AMibuEk8pIqnRzyArnqgC?=
 =?us-ascii?Q?RxtNqSdVn6T+XtBrBJZRAmCscVFpBXQZru1AXgsvYm1pmrXgFR5ER/zmcpU1?=
 =?us-ascii?Q?MBm10Z/mwIeM8dyW/eurgwFU63NXbGETjKEmJ2CysK/PE9YqsQ0IERL2SQRZ?=
 =?us-ascii?Q?9kshLagF0NT1uq2SCrhEIRN9IChy+Lfip+9HDUQGTbyeOsGe2qG52hm491gV?=
 =?us-ascii?Q?Bg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 262b516d-8e4d-4978-7c71-08dc8bbe95f0
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2024 15:36:25.7235 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CoBxkWFm8eUdNYVGQwIUAVgzqprQbX3CxRxXZaEp48z6axxj8ExIXj9Ne8qWtYiKTPooG15Qtauwl/t6bVMW2N8XQBc+Aplaz4aRLANCdOw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4704
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718292990; x=1749828990;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Wa1jOAHcQwKMWzYmNBZrVgXYE5dfW7YPY9+xfQT6tPY=;
 b=gSeZ/ylKVolCOkqxqBxx749wUfE7JsnKJjoAHjYxBfaHIBi8FOCclalF
 yyXm51i0ZDulY7WtQoX1gcQTCFEm1HhKTmujcPGiKfbgSPcU1wwkgxKYv
 KfQrSfv7aR3e0KFa68nK8x3Vo5sctAyLeDskLGKcNREKWB4oy8Qk4Q9bL
 ghkVq9z7cy4+XSK2yKjxA/N72J5Q+3RwBDSnAsf5wHvfa2UYc311uIXK9
 2xanwS7oO6LVFeFaiyJTWFVyU7c1jFHbRRUM5221Qp7QkaIR5p2vKnnI2
 6O0eFwuGCH18QctRa47Jv2MLx4/125yOoVHQP4+M8VzKgdwXQ85eo5PDo
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gSeZ/ylK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 0/3] ice: fix synchronization
 between .ndo_bpf() and reset
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>, Daniel
 Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, magnus.karlsson@intel.com,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 13, 2024 at 07:13:43AM -0700, Jakub Kicinski wrote:
> On Thu, 13 Jun 2024 10:54:12 +0200 Larysa Zaremba wrote:
> > > > The locking mechanisms I use here do not look pretty, but if I am not missing 
> > > > anything, the synchronization they provide must be robust.  
> > > 
> > > Robust as in they may be correct here, but you lose lockdep and all
> > > other infra normal mutex would give you.
> > 
> > I know, but __netif_queue_set_napi() requires rtnl_lock() inside the potential 
> > critical section and creates a deadlock this way. However, after reading 
> > patches that introduce this function, I think it is called too early in the
> > configuration. Seems like it should be called somewhere right after 
> > netif_set_real_num_rx/_tx_queues(), much later in the configuration where we 
> > already hold the rtnl_lock(). In such way, ice_vsi_rebuild() could be protected 
> > with an internal mutex. WDYT?
> 
> On a quick look I think that may work. For setting the NAPI it makes
> sense - netif_set_real_num_rx/_tx_queues() and netif_queue_set_napi()
> both inform netdev about the queue config, so its logical to keep them
> together. I was worried there may be an inconveniently placed
> netif_queue_set_napi() call which is clearing the NAPI pointer.
> But I don't see one.
>

Ok, will do this in v2. Thanks for the discussion.
 
> > > > A prettier way of protecting the same critical sections would be replacing 
> > > > ICE_CFG_BUSY around ice_vsi_rebuild() with rtnl_lock(), this would eliminate 
> > > > locking code from .ndo_bpf() altogether, ice_rebuild_pending() logic will have 
> > > > to stay.
> > > > 
> > > > At some point I have decided to avoid using rtnl_lock(), if I do not have to. I 
> > > > think this is a goal worth pursuing?  
> > > 
> > > Is the reset for failure recovery, rather than reconfiguration? 
> > > If so netif_device_detach() is generally the best way of avoiding
> > > getting called (I think I mentioned it to someone @intal recently).  
> > 
> > AFAIK, netif_device_detach() does not affect .ndo_bpf() calls. We were trying 
> > such approach with idpf and it does work for ethtool, but not for XDP.
> 
> I reckon that's an unintentional omission. In theory XDP is "pure
> software" but if the device is running driver will likely have to
> touch HW to reconfigure. So, if you're willing, do send a ndo_bpf 
> patch to add a detached check.

This does not seem that simple. In cases of program/pool detachment, 
.ndo_bpf() does not accept 'no' as an answer, so there is no easy existing way 
of handling !netif_device_present() either. And we have to notify the driver 
that pool/program is no longer needed no matter what. So what is left is somehow 
postpone pool/prog removal to after the netdev gets attached again.
