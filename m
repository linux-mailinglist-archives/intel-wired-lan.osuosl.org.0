Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0249D4012
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Nov 2024 17:29:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14C4160B7B;
	Wed, 20 Nov 2024 16:29:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D-JVfWDA4CO7; Wed, 20 Nov 2024 16:29:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F48260B73
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732120180;
	bh=e4S84aYmDxDJ4XZpkHau9N6qzJ9V5v7WgW7svtmocrw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jSdv7PkXco/uXfGMQxdXVb0nYC2P+2ZaiXi+rDhtwYWZZH9fXU9EiLXOSgPJhoV7N
	 Pd51apMUqnCbUXkRRTOWd7dfb0mNJo1dL+f0XkAcH15HN62pGmdeojfoZYFHiPGmkx
	 +vqgcxX3OPNJO+iXOLcquZRGxCR/0BNQen1vmGFOOUy9VDGH93v2sDeCKKGpFH8W7X
	 cBL3UttkVAZ+a3iZaKgfRBYMu8AhBTqeEmFW5BO5UYRmyMOnD2Gcy8JiG4Z8EppvT8
	 iQICSqVglSgZqKFUQTJrcIusXepKBJmQPIzLyaDsJtRFDG0d9s7d2fIjp0I2GsobOa
	 8gv/ridZGUmvg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F48260B73;
	Wed, 20 Nov 2024 16:29:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 17488DB3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Nov 2024 16:29:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EB4F84711B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Nov 2024 16:29:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mFR0H40zzA1K for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Nov 2024 16:29:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5C0184664C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C0184664C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5C0184664C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Nov 2024 16:29:35 +0000 (UTC)
X-CSE-ConnectionGUID: Y0wiPrzoQCWGXpMAC1gDfw==
X-CSE-MsgGUID: Susr2EJGTy2EjQ5Z5BCftg==
X-IronPort-AV: E=McAfee;i="6700,10204,11262"; a="35975676"
X-IronPort-AV: E=Sophos;i="6.12,170,1728975600"; d="scan'208";a="35975676"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 08:29:34 -0800
X-CSE-ConnectionGUID: ZjEzTaRpQ4Opw6aESwAT6g==
X-CSE-MsgGUID: S5eHjjLxSsyfHWR9NwWXiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,170,1728975600"; d="scan'208";a="113239854"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Nov 2024 08:29:34 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 20 Nov 2024 08:29:33 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 20 Nov 2024 08:29:33 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 20 Nov 2024 08:29:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OAfY22W7mpspZURnCG8hTFDWhx+ZFEfBUWigZ0YAeUGgHat+XIK41a0zTZ3HnruA/syzIi54AIzuCYIOzxMxzoZBQ2WkuProxs2z9uwbcNqSG7aqcly6nUUkqe1VlxOGrfrsJ6ufOCL0EVm9AIMoH22gy8zXZkIO8ED8sQRmFpwYRxavUOeAWqHYbeFSnA/1sKcwamJLmozP/sLtk5O9i+gOxZZxk/P5hvxE3CPzVlUBiTFhoDoeekcXmVe1q78rp26qbq8Ww2+okyRifW4T80C/jPsnKZNoz3jhZiVlTOrQ+Fj2B/qsJaGi9S19cxOEKWF6JCp9r1hD7PtIlr2MNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e4S84aYmDxDJ4XZpkHau9N6qzJ9V5v7WgW7svtmocrw=;
 b=aF+kRMAVDEr7xs1b/7fGUgaH3Ua8g8sBR4Wu8uXkKGv3/KByYXUzPrGHy8nAr9wNOD1Vb2WDEsr/ElPRpL2GrYe8fegCBX6qVkBHCWwvAUNJ4nVnTjKssqtKu3wEDSLYmDy6HunR4P7cfwJ4rn9fqWOKY42LUfPLcM/gsE0DfipGZKH4NrSikFHg+481ecMwPrasjkT0zCqgIQTUMkrupwNJvqxJVUhAZJXXELb6GDN3KWlPgHO/CLmlG2Lkyxb+aYAMEgKzKICoSRKM0vtq0np0PZKck7M8Sv7i+evyRVkE6Zf6u9RWCcc7Xmb3y7k4s4qnTdHmR6pURkG6ahRBhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH7PR11MB7570.namprd11.prod.outlook.com (2603:10b6:510:27a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.23; Wed, 20 Nov
 2024 16:29:30 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%6]) with mapi id 15.20.8158.021; Wed, 20 Nov 2024
 16:29:30 +0000
Message-ID: <cb341586-b8df-419e-9280-4fa0010ba2e4@intel.com>
Date: Wed, 20 Nov 2024 17:29:24 +0100
User-Agent: Mozilla Thunderbird
To: Emil Tantilov <emil.s.tantilov@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <przemyslaw.kitszel@intel.com>, <sridhar.samudrala@intel.com>,
 <rlance@google.com>, <decot@google.com>, <willemb@google.com>,
 <joshua.a.hay@intel.com>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>
References: <20241115021618.20565-1-emil.s.tantilov@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20241115021618.20565-1-emil.s.tantilov@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI1P293CA0020.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:3::18) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH7PR11MB7570:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ce8ebb4-70d7-4437-2823-08dd09808220
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bXRSWnJvb1NKRFE4eTA0WUFhZC9IcGx1bW5wa1VucHJuWjFiUWlDZXliQXFS?=
 =?utf-8?B?bkZzK0hicHFOVzZtcnZQL0ZxUExEN2J4ZGU0anFKNlRnQkdjazUweDRKUnkz?=
 =?utf-8?B?bUxPQ3Q4QmRKNzYwd3B6ZzZ4Y3piUlExWjNxT2FQSGRUVGNmcWJKeGw1bktT?=
 =?utf-8?B?bllHUlM1RzlOUGgrQkVXd3RxY2V6QmpiK2tlOHM2cDVaM1hYYkJBYmU5UjE0?=
 =?utf-8?B?b3gzU2QrcEdBNDRlVUV0RklpT3F2SXVENEpyTnEvUmVkYlErUlk1YjROVUVM?=
 =?utf-8?B?aHZod3JYeGZ3SGQ3N2Q1WGlFVmY0ZU5wem9ZNURnOGx5MnN2YzhLRHpVYzJr?=
 =?utf-8?B?Vy85dGxMODlWVjVOa2FSckZFZU9MY3FaTnJmY2xiTW0xMXFLVDJ6d05zZGtJ?=
 =?utf-8?B?Tnpsc0hKQkhpY0tsai9zRUNLeTFrN2w0TmFTTU93cFI4WC9yTS9YakJoOHdT?=
 =?utf-8?B?Rkd6SG1BUzA2Tmc4VDM2RUVXbXlrbURjTkpsUGxXbjlCQkJ2bkVvZmZJdytC?=
 =?utf-8?B?VUJEN016dng2TDFmcEFJRVpGbFVyR3l0Y2EzMHo2bFpueTRnMkJVMUYrb3hF?=
 =?utf-8?B?ZEExa0JLcVZEYmtGUE8vZXVzQk1ZQTZPRHVySXhybmNiNUxQUzVaZEU0WWRG?=
 =?utf-8?B?RWlOM1dveTRsSnU1aFAwdjJyQVlDUEJ6L1pVUndYc29LUFRlSkNiaEVxYWI3?=
 =?utf-8?B?WEliOWMveXZvemF5aXZRWmF6bGJLN1IvTmN5UjgwRWhDSmlpc1B0RDBCRU8r?=
 =?utf-8?B?ZVEraWpyYkVlenpGTnFmT3ZIR3JVSFBkZWZSY3FBM1hIOFBEMXRNcEJ1dGJI?=
 =?utf-8?B?c3NqT1FTa2h0dmZPTURwU1d2S0JEczArTy9zWEFGVjNLQU9oc3ZkR0ZUS3lT?=
 =?utf-8?B?OTJjUHVyek92TkkyTTkvSElQK2lqdmZHS3FvMWR6eFdhWFk2Z21XSFhESjZ1?=
 =?utf-8?B?TTlRNzZ0RnFEMkxyemdITDVNT0haVFhCR3J6VGxEYWFEMVl5eUVIdWt6b2x5?=
 =?utf-8?B?Z0YrQWljTGUyQVZhb1llaFZxU2dsdm9zR1BzWGxNR2JWcUppTHJLYlovdmgx?=
 =?utf-8?B?RUFSMG1pKzRTL1VJdmJmRWVzUXN1RFlwQWJ2OVNWSkVUUG1kYXRheHpZeHVI?=
 =?utf-8?B?c3RZWjN1cDlFMHVnSENScmRhdWJCOW4xM0w2Mys2ZWJhYkN6RTJNVWhNVTBI?=
 =?utf-8?B?K01TVURYVVlLZnZIMVFuK0FtYW14Lzd4eVBneGNubDc4MGZVRitPMkh0RjFG?=
 =?utf-8?B?M3ZhSFZoL0lrbHRZekt5Mmp4Qm9uWVNzRGcrdkdqZ1lNYVhqWDg3cFdjSVBi?=
 =?utf-8?B?QlVscVVzUS9hT2FxRng0bVVPelBsVmhUVk5MU2xNTi9BZS9Pa3NaU01EVGl5?=
 =?utf-8?B?MlVDbDJ5bEhMT0R1TGk0MmVaTWJnRllUR3V5MjFTMWFIaEdrQlFGeVZuc0Ft?=
 =?utf-8?B?RkNUaGtINzkwUTNiNGhuL3E2azZFeHhXVTRmREMzMDVWbjN1eVNsYytlb1lC?=
 =?utf-8?B?UGVvNkNNMDQyUnRQdHpUdlRDM050UXpleStudVBnOXE2eVlLTW84SWtoc0Nl?=
 =?utf-8?B?R0pmRS9UQnJSSGNodzRJL1NmWFZqWGpjamEyaGoxWmJXcERPSWxiaGQrc2lk?=
 =?utf-8?B?UlpTbHd1UmlKdm40Z3d6YU5ORmtJSjV4cGtSN2RGSTE5czYzUXhDRmFLSVNP?=
 =?utf-8?B?dDRJKzNEZnQ3YkJrUHZUMVlYVHU0ZkhWZWM2OXBYbm5uaG1mWDd4YXltbXQ0?=
 =?utf-8?Q?XL9QcKlnBwce0dTJfM512V4sQaA2DUtKfhjSt3v?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MzVTdmhXQmo0bmFqaHBpb2FUTjFkTXdYWXJhT0F3VU9Ddk5HVUVRd0JhY3BP?=
 =?utf-8?B?Z0FpQkxBSjc5K29ac1FId1VMdm9Ua3lucnNFemU5QmhOaDhmcDNHUGllMTcy?=
 =?utf-8?B?Mi9xS0N1R2poK1hLU0VSTDFyZGJ1NFVZajliWllmeTl4M2Q2RHgvREVNYzZU?=
 =?utf-8?B?K1B4SEhCMVhLMHJpQk5kdy9VWjVXV1hINkZmQ0RILzNBbjJXdjdBOUxsUmFS?=
 =?utf-8?B?akZKMEVhK0hIVzV3cVcrNnlXN2p5Y3JnRjdRNittRTR2bmdUWkN0Wm5sQWx3?=
 =?utf-8?B?YjdFRWY4dE1tbHVuQldraDUvRE9WZzJVM1puQzl3bzk3SldZcjBQQnVGcE1S?=
 =?utf-8?B?VzJBaEJTYjV2OTJibWJFM2hwTzNLL3lZcHIvS2ljdkt2dGJNTXljZVNOczdX?=
 =?utf-8?B?a1dIQS95UUJxeko5dWp1QmR0M29YMWVOVzFiVWw2TlMzRFRxNHhLVncvOW96?=
 =?utf-8?B?NnB6WGhQRE5MajhURmhzYWlRQklidTdJQ0pMeEVPMEkrZ2p1SGlZZkIwNVdU?=
 =?utf-8?B?WXlPN0ZPN29DdnV0U0pxQ0h4bWgvSU5FN2g4d1Z2bUE5Ym5ibU5PLy8rS1VB?=
 =?utf-8?B?cUdBUWtucEo2bjZzL0R0cVMrYTJXTEE1bmFmTlo2TkJEckY5TTdHeXc2S2No?=
 =?utf-8?B?cjZXWlloZUNUUlA2RUZHaHlpV3M2MzBUVndMY3hGZmJtVGFER1B2VlNGR25w?=
 =?utf-8?B?WVhDWFBRbnVXdHUvbHFnZnBDenExTFppbitFT2xGelYxWEVmc0w2L21GaU5J?=
 =?utf-8?B?eEMybmVsODh0S1VtZlhaZkxoUGhkeDNQUWpFQ3hwL0xSTFNKQk9TVms4d055?=
 =?utf-8?B?ZHZKbVhXQnNRZkdtaTFlWXZiNklsR1VXSUlPaTcwS2ludVdCUGM0MldUbWxB?=
 =?utf-8?B?aktCN01YQmN4UnlVaHNORTNzYkJhdWQwL09WYjltV3BnWm9jakJSV2RPS1VR?=
 =?utf-8?B?bTIwY0JrK3lONkxoU3diNVl0V3lxSGtsZ0FybHB6VzBORWFiM282R3BZdWZh?=
 =?utf-8?B?WE44YUdyb09hK3g2aXo2cE1JUXhhL1pWMnRxdTZUeTY3SnR2YkRLaW4xUHp4?=
 =?utf-8?B?ZWgyRytaT0Q1eEk2a3p6d0ZNUjVxRVk0Rmt0NGNnVGZvSW9TaUFKclJRdVJJ?=
 =?utf-8?B?REpzZ0lwa3dEcG1yTVJ5UnRJcmRJUFYrK0FPOGVwRUNNVFNmVlBiZXdpNnUx?=
 =?utf-8?B?RXI2MzN5RGFubE5XVzNWZTIwdzQzclRrY3RtMGFZODFNYUZ1RWxKRUJBUURQ?=
 =?utf-8?B?dzNoemJXVzd0amp3aEN0UlNsVDZkM1hOTGhXWlR5U1UwaHdQL1dSRkVwUGRm?=
 =?utf-8?B?bjZ6YVNvT244K2YrR3dYeGFmbUdicU9uOXJKR3h6L2h0eXZQUW9NUmhUQmtE?=
 =?utf-8?B?WWNHU2JwRjhyVGp5c1NRaHBMMVVVWVZVS2dOSmZlWElqVi9vRnV4MGE2bm5H?=
 =?utf-8?B?WU9xTXkxcVo2YjBxNG5zd2ZlclJpZ2QvcnIwaGZUQkticzBNVjR1RFRoUUpB?=
 =?utf-8?B?NWs1UzNlbXFyN3MxN1ovNDFZZ2ZLR2RYWTk3T2NUTVFnbmZZaHAvVnFrd1VX?=
 =?utf-8?B?U2EvR1l1YjR6Y0tEYnRaV1FaNzJicDRTNnBCemtZMHlGYTYwWUIyMUNvTHZk?=
 =?utf-8?B?S1U3cTNaN3ROYlJ4R0NTNzdBMHZzVmhJajVVSnRDWWI5NGI3YVJnVjBmNmZk?=
 =?utf-8?B?cytiVldUWEU0S3FEQU5vWTdrOS82N2J5bTZEUGhjOVltRWFMV3YzV0ZOWGdH?=
 =?utf-8?B?V0Z4QS91Nm01NW5WcHlvWkFTZEhISDdwTDNSdlYrSElKdUUwR3FnUHFIRkx1?=
 =?utf-8?B?ajdONHNZa0V6d3lNcDZrOWZIVlZRUEtOOEFhbXpTeXR2ZGVqMlF5OEhuMWlQ?=
 =?utf-8?B?eDljWk1NR3RxaG8yb25Zb1p1ZkxsdmxJUk1tT05vdTRkaDFLcks0ZWtJQ1E4?=
 =?utf-8?B?akVPZUxJdENadVRhbjF3bkgySlRZaWtEU0lHMnpaUlFXSWg0bm81R1Z2UmYv?=
 =?utf-8?B?bXNPTXRGYUdxOTNVMHEydGRKci9jMlZKc2VvemVQK1ZRZ3JqNzVvRVVweGQ5?=
 =?utf-8?B?bUVabFV1L1lJZDIvOGtUajREN0szM2lTUlFORVFLUVNDZkdEdGdpQ0xOdU9J?=
 =?utf-8?B?SjI5VEFDR0RTdXRnQjZENk9SWEVmN3IxZy9oOFlFN2RPMGpmd01ta0QxMElL?=
 =?utf-8?B?WXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ce8ebb4-70d7-4437-2823-08dd09808220
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2024 16:29:30.4036 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KxC6pa+eLGbyDW+lx8i8Q2g2EJshMa5kbkyASmx8wgmDrpk2aEKkoIvxfPWT3MkQac0uPy4jZYYdmjHFqVK0lKmaTvcihOusq7O6boAXVms=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7570
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732120176; x=1763656176;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9O+NBxdORe/OXJDxTrZJJ2UAOk6pyPySqDwrqxRVZgY=;
 b=e3SAUyJ7KBwD2ebdaJMPmuRrlSNMH5XYvx52hDlSb2quI60hQlTq75Y7
 O/LyzYGysDo1s0oVnMAX0emIu8gthCbh+8dsR+lIACKXtRqdPK377EAgG
 gLiyM8mh6czBdrxK9ZNaiqxVF41Mf7koDT5aZKdxOF1bkAMV/nk1bD1mF
 qwV9W98wi/6txsI56lsEgHowRQfsTf1iwQTP6G5K+A84zx2UU5xF2KAgm
 FmuAQovxvusACqSwwweCTshCV3j1wFXTACs0yMzjgc63rg+X9YddBHuVg
 BkPUbLbNq2UjHzBlU6vUrNnzUEQCpcaYanhCpBLqQbtHtitepiPXMzauy
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=e3SAUyJ7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: add read memory barrier
 when checking descriptor done bit
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

From: Emil Tantilov <emil.s.tantilov@intel.com>
Date: Thu, 14 Nov 2024 18:16:18 -0800

> Add read memory barrier to ensure the order of operations when accessing
> control queue descriptors. Specifically, we want to avoid cases where loads
> can be reordered:
> 
> 1. Load #1 is dispatched to read descriptor flags.
> 2. Load #2 is dispatched to read some other field from the descriptor.
> 3. Load #2 completes, accessing memory/cache at a point in time when the DD
>    flag is zero.
> 4. NIC DMA overwrites the descriptor, now the DD flag is one.
> 5. Any fields loaded before step 4 are now inconsistent with the actual
>    descriptor state.
> 
> Add read memory barrier between steps 1 and 2, so that load #2 is not
> executed until load has completed.
> 
> Fixes: 8077c727561a ("idpf: add controlq init and reset checks")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Suggested-by: Lance Richardson <rlance@google.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_controlq.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq.c b/drivers/net/ethernet/intel/idpf/idpf_controlq.c
> index 4849590a5591..61c7fafa54a1 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_controlq.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_controlq.c
> @@ -375,6 +375,11 @@ int idpf_ctlq_clean_sq(struct idpf_ctlq_info *cq, u16 *clean_count,
>  		desc = IDPF_CTLQ_DESC(cq, ntc);
>  		if (!(le16_to_cpu(desc->flags) & IDPF_CTLQ_FLAG_DD))
>  			break;

I'd put an empty newline here.

> +		/*
> +		 * This barrier is needed to ensure that no other fields
> +		 * are read until we check the DD flag.
> +		 */

Are you sure you need to copy this comment all over the place?
If so (I don't remember whether checkpatch complains on barriers with no
comment), maybe we could make it more compact to not waste space?
Like

		/* Make sure no other fields are read until DD is set */

4x less lines, the same meaning.

> +		dma_rmb();
>  
>  		/* strip off FW internal code */
>  		desc_err = le16_to_cpu(desc->ret_val) & 0xff;
> @@ -562,6 +567,11 @@ int idpf_ctlq_recv(struct idpf_ctlq_info *cq, u16 *num_q_msg,
>  
>  		if (!(flags & IDPF_CTLQ_FLAG_DD))
>  			break;

Same.

> +		/*
> +		 * This barrier is needed to ensure that no other fields
> +		 * are read until we check the DD flag.
> +		 */
> +		dma_rmb();
>  
>  		q_msg[i].vmvf_type = (flags &
>  				      (IDPF_CTLQ_FLAG_FTYPE_VM |

Thanks,
Olek
