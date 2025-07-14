Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9A2B041F7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Jul 2025 16:39:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4449581E46;
	Mon, 14 Jul 2025 14:39:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PcsMzMB8aTvw; Mon, 14 Jul 2025 14:39:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A680981E86
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752503973;
	bh=6RsANCuIpYRKNERG5NopAboa5wmX/LogkcnKLb3ETtc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ONpPJKwdcENrn2dj6ubZkbQ1udpk9wmUraLdA9Mbq4sTHdHORHhRW4lxna68RsZew
	 lcTvJoZz+/67NQ9hGvweArECELWKVM6H3xPUJr1oGVglXdD34M3vsvkwcRSboWQrSv
	 t+N/7ij7OYCZaTdnU87ej1Hft/G5K+o/Xp8EsDnsdwa1+OJdWG2onEqS4Wtxtgu+EE
	 v57B9g20n+3u6leNfZAN7ftB6yB8YaEqSJV3EMsZ6ZVgNuLdtWJrY+QRjI44QHU0kV
	 0YB3LQuVTNbp1ZFTCLU1Ijbz5pUedrBeVWmhTRWM0HVNOu8hEDvMexy52GT4hvYhax
	 8P5cb/hJoP8OA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A680981E86;
	Mon, 14 Jul 2025 14:39:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9406F967
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 14:39:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 847CC81DE7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 14:39:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L4WJqUW2AwDX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Jul 2025 14:39:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CEBFD812C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CEBFD812C1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CEBFD812C1
 for <intel-wired-lan@osuosl.org>; Mon, 14 Jul 2025 14:39:30 +0000 (UTC)
X-CSE-ConnectionGUID: 7QtgWcc7ThaQo4M7YnAzFg==
X-CSE-MsgGUID: Ap6wn9z3SWCb/Hu+/ADx2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="65272469"
X-IronPort-AV: E=Sophos;i="6.16,311,1744095600"; d="scan'208";a="65272469"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 07:35:52 -0700
X-CSE-ConnectionGUID: 7Lfndus2RlybyQe3KAqPww==
X-CSE-MsgGUID: 27bI+Y31SgS+tK+IiEIY+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,311,1744095600"; d="scan'208";a="156364043"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 07:35:48 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 14 Jul 2025 07:35:45 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 14 Jul 2025 07:35:45 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.61)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 14 Jul 2025 07:35:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xa9pSm05zJs/dfgwnDmSxLXloLJKMt48zETRZpHSqYmKz2kDQqthw5rWIjfiQxEGEgikK6i1sYEOMGTYFXGb+qlVNROkSDnL/++fefk5bySUwJK6CPROvXKQrwYpYH6ii4Ta7SMOffWHwDQMoo9uaqvmvW0nkBZF91krhfSKkiAW0PQ9AddikNH3zZXQppQTRHkymSBupg1E4lAj+ZXSpDhR1H2Wb9b47ScbVao3fuEl1BFMKyfPotH9MYVYJx/q1woAGCrLa6UruPfj5kVvY1ugeE2IKwN1yfVBbPdh+iRoFNka2eK8bzwzYZzlYy3FDY9s7Bel95meQdQ4nzrQIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6RsANCuIpYRKNERG5NopAboa5wmX/LogkcnKLb3ETtc=;
 b=RzBVi7mCz7w6srjPGbaYEaW1+xRe7yAqBFpk9/V9SV0TgxIUyt4B0yOcbAjpESIQRvrVRKKl7BaGK9/7up9ANZ7v7gk3fhciTAxOp/x3whpu7vTl9P7miFzJ4MdCshp0qvE1bg/MDD5ZModyUMZ2DTYYQKFpiFsEOFgtChrCPPMUqw01UPiilINcItJCplb/BctlXjXLr9LbciXMe8PRQLZWqRe9q3/7I5BN4AP5RodioN4+tn4hYKFJSPMs0Z64jRqujHDwyHNJ0rybtfl8eV/pmBIPp+gnLNC1EzA05Eha6gN0teKs2AsWRVAyJ8Z5w+C1S3WVs7ElHrlFl9JECg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by BN9PR11MB5275.namprd11.prod.outlook.com (2603:10b6:408:134::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.28; Mon, 14 Jul
 2025 14:35:12 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%3]) with mapi id 15.20.8922.028; Mon, 14 Jul 2025
 14:35:12 +0000
Message-ID: <332dedfe-d3a4-446b-8a00-8d56bc54318d@intel.com>
Date: Mon, 14 Jul 2025 16:32:51 +0200
User-Agent: Mozilla Thunderbird
To: Malin Jonsson <malin.jonsson@est.tech>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>, <yong.g.gu@ericsson.com>, 
 <roland.kovacs@est.tech>, <intel-wired-lan@osuosl.org>
References: <20250711064746.649332-1-malin.jonsson@est.tech>
 <f6027166-2ab1-4221-9636-7ed40f1865d3@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <f6027166-2ab1-4221-9636-7ed40f1865d3@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2PR04CA0045.eurprd04.prod.outlook.com
 (2603:10a6:10:234::20) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|BN9PR11MB5275:EE_
X-MS-Office365-Filtering-Correlation-Id: da110565-3d4b-4a0d-f136-08ddc2e3a3e8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VFJaNldjV0syb2xzSHJaTDN5eWt0d1c0UWdHVkFmcXpvN0dqYnpSNTc1aEdw?=
 =?utf-8?B?aW5ER2VldUlLbmZEV3RSanVNRFpHK2htNThhU2JtZ21BYnF0UzVieHYySTFX?=
 =?utf-8?B?dkJhWVRWd3Y3dldtS2Q1RnprelVlZFdFQjBwRllVUHEra3J3d21IM29RRFM0?=
 =?utf-8?B?Rlg2MGR1L2xFQUFpa09DWGNwWmZPQkNBQXQ1d1Mza0pPTDR6dkN3alN3b015?=
 =?utf-8?B?aEZYMGswVlYxRWthOWhHSnpoRHhRRWtJSy9Fbkp1ZmgzbFgzWlJWTFA1YVgz?=
 =?utf-8?B?QUd3VzRHWVl0RUQrMEErNENTY2tjSEp6UVFqa0MyTHFQQ3dDL01WQlh0NWwy?=
 =?utf-8?B?K1lJa2VrRVFZalpXRU1iRWMwS2c2N21OWnVUaWg2YkFiQnMwU2xwN1hkOXZQ?=
 =?utf-8?B?dFhrNXJwRWVxU2VqM2lOQkdtU0UrM1JzbTVLemQzR2ttMzhGcmZucllIVHhy?=
 =?utf-8?B?c0ZEYnFoWGFvT2svZ2dYM0QvUm9yZTQxOFdlMTlYRkJDUTZBYVdhMmE3U0kz?=
 =?utf-8?B?RHdia1JrcWJCbnYrVy9vMTM4UDMwa3d1QTJiS0JvSFlzZUprK0IwYVU5a0I0?=
 =?utf-8?B?Q3FDVE9DUmsyaDN4NXFNRURkRUk0WGZMbk9GZ0RXTzFoakdmNCt4OU9GdlZS?=
 =?utf-8?B?V3FHRGVCTVliejNmblloZS91Q3hvT3FxK2NJdnI3WGJ1RWt2WUVOb3BWaFBF?=
 =?utf-8?B?MWpOb2J3MTJZZFlhRFhBNW9IK0F0eXlZMzd6dU1RL3A2aTlicmN2MXg2WWFC?=
 =?utf-8?B?UTdqVy9HbmdONVQ4VnRERXRWSnVDMkowQWJSTnllUVRncUZHbFlRYUhFWlBZ?=
 =?utf-8?B?YTdydjIwSmdjMEpHNkkvRlVWa01sS2xhQXlzZFhhMlErSWoyeDVCc25GTmJm?=
 =?utf-8?B?dFNpckRXVWFmVGExaCszcHZZaFViS3NwOVhvTE1PaEE3ZXg5azREQ2RTWlUw?=
 =?utf-8?B?V20xSjJqR3c5eGpJWklZcVJ4dDE4dzhQRkdTbWhwTjd2Q1FhVS9MNG5uQ21y?=
 =?utf-8?B?aktaRnBTdW1FN3RKRHdqeHY0RTRyQXVPZnMrVmtCYThZUmRzMlVHQ0E1eU9L?=
 =?utf-8?B?TXNRbHdzY3FpdmtpV2loQk1NOG5CbmNOVzlGRml3UmtFNGpna294OEJsL1dN?=
 =?utf-8?B?TXEzRS9NYnJURmpIK2RTLys2SlFaSjA4cmtiSEYwRGd0OGo0Um5PZWVoV2tv?=
 =?utf-8?B?WjhnZ2o2bG5BTHRaSUovZVNWSCtTakY4b2VYcVFwNVIyWGYvNGQ5b1p2Yzdw?=
 =?utf-8?B?cEVSRlJiL0J3c09GT0pabWNjdlZPZ3RwbmlxK3VtRnBPeThTRnBUU3NvR3pV?=
 =?utf-8?B?SjFZVWc4c0cvSHNOdHVyOHh4VTErbDJKTWZsb1Z6OWg5YUJaVFYyYWJtcmhY?=
 =?utf-8?B?bGtGbjBUbzdjUjhDR2JDeVl5cUZJY1prNzNEbU5VdUQ3Z0tZL05ERkJHZ3dR?=
 =?utf-8?B?UVBYdkRwRE9UT2xMMDUyK2wvdG5jLzZhWjhteGNCMUU4SHJpaWYyMXV2dExu?=
 =?utf-8?B?dERTeWFmYjNaaFd6cmVub1YzODBsaHh0WnpYMTVMcWwySGJmcGU4d0hvazNG?=
 =?utf-8?B?WFhoL0dnS3RHYWdLNUxXQ2ltcU1UNWNOUXdYK2ZKdTROWWhBbmNubXVEK2JQ?=
 =?utf-8?B?bzN2eEptbjBEZ1JHU095MmFHR1NoSXpiaUlXVUV3S004MnFxVXhhUE1Sc2p3?=
 =?utf-8?B?ekpFT3ZmT2RpWFVqWGdBcVZkMjJuYmxId3J2Rm85U3cyNEF5RzFkV2c5MFN4?=
 =?utf-8?B?cnVhVkp0Y00zK1g1UGZEVnRQdkJlNjd1MTlDZzBJM09hRTUzbUl5Z2Q0WThu?=
 =?utf-8?B?a3hBcUpRb245R1lVMjYrWGNLbnZZemJzY2dUWE02cTgwd0p0Q08wbzVHSlVX?=
 =?utf-8?B?aEkreGxNcXpRRUd2MktoaWJPQ1JmUGE2TjNhdk5TZXpYVkJBOGJ3dC84TFls?=
 =?utf-8?Q?Hst3Lj95QTc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NjBTMTc2K0VGVFJad29IU1JxYmFGelFrQ296V0dQZVl1TGJQRlU5T3RjaDdY?=
 =?utf-8?B?cG5sVjNKU0tNNjlhU2JuWE9tNXJndzkxZ0lEZDNvdXJYdnhWcitLZzY1bGJ5?=
 =?utf-8?B?eG8vbWVuUncvUGloZk90amtZYy9ZeGFHZjdyNkpDVlFDYm9HVktQcDh4YWk3?=
 =?utf-8?B?ZDZ0aVlkd2t5cSt1U1c3NkJ5dHN5WEdyNGhNdkRUNng0d3JwVUpMdzlFckNH?=
 =?utf-8?B?U0EyejRZeFp5ZzMyaitYNUM1YTNMNmxUbGVPV05NWldCRVRwb2xVU0Riem1B?=
 =?utf-8?B?cDJYSDRnZVBGUnVieUx2cDdSNGliek10Q3JnVThoVjlFNVBVNi9yVm9iY25s?=
 =?utf-8?B?NW42THdYRy92K3ZzOXZXNWY2eHUxVGU1N1UwaTJEbS85MW5nU1NNNEwrYi8v?=
 =?utf-8?B?S3FybHFFaElaYm5WWWdNeUFOZ3VaRU9LWGRlbkhZVkdrbEhiMjVvZGloZjZC?=
 =?utf-8?B?dEhBQnNPT3ZaM0c1V2JyYXQzczE4ZTAwOTFoanV4YXloMllnVDkzR2F3SmtK?=
 =?utf-8?B?dG1VaStRa2srdVkvZ0VDSS84MGdRU3dxMnRzWG1VSUZOVHl3azhvRE9hcHJC?=
 =?utf-8?B?NGhKTURCN041OWZoeWM3dnJYNDdua3I0SE5WdDNvM0gwMDhvNU8rVjk1b0RE?=
 =?utf-8?B?bkI5TXRSS3pMM3ZqS3gvZUx6WkVnVHZ1c210TXcwNXJuU1BNcVlBQ1ZiU2Rh?=
 =?utf-8?B?QzM2WDJZUmxaTnlBU3RLNEEzZTE0UU0yd2hYa3EvMmV0aFdvbmp3YnV3cnVK?=
 =?utf-8?B?bnY1eklVQXJkWnNVL1pqZXNkTktpY3F6eGMrcVpadjJxbGpkSE1SSHVoeGxy?=
 =?utf-8?B?OXB0ak82MGs0QkEvbW5OVjhJSjVpM0ZGSVp1WXVReG4wSmJJWFBYOHVjdHY4?=
 =?utf-8?B?QVBiTEN1Y2N0ODlwcFZWbmxRUlU4Qndab2pmemMyTmRWKzBrK2MrREJUZnNM?=
 =?utf-8?B?N0M2MThXcFpoZFBrbk5DZFpyV2RDRm5WSDhnQXByMzFPVE9kM3JmSDY3dkVO?=
 =?utf-8?B?UjBxUC9NOVkrTVB6RWx2UkFXcVJUT0tjMnhtdVNxai9VWHhweEV2c05jQ2E5?=
 =?utf-8?B?Q1hQeWdhREtmZHRlWlpVaXUyemtNNUxnelUya1dXdG5LaTF1NjN4NW9oZVB0?=
 =?utf-8?B?TE90L1BwNnFOdUREWjM2Zmhqbzl2Z3ZDS0YxSG9hMU5DUHJ3NEJZVjYrQkhn?=
 =?utf-8?B?am5mZFhaNDdGQXo1bTFaZGRPL1lFVnRja1JmSmMzS09ORmtPWVRUN3lDT2gr?=
 =?utf-8?B?c0hvbUxSWGNxZjNSVHZ3YjJUT3ZYWU5hc2l6eURkR2k5NnpMa05uMlJnQXpD?=
 =?utf-8?B?bGRab1MvcEVHOWQzcjZYQ0UvR0VxL1BvNVVWYXI3RWh4eGhPMTlnelhyMEJZ?=
 =?utf-8?B?ZHVlNGFEM1kycVNnR3puQWNBVGZxVi91djFFRzZPSC9ud0lWblBadzZmRzUz?=
 =?utf-8?B?YlZRbFYrNCthTWdiVDYxTXYxMVNqaHgzK0l2bUxBaWFNZkw2SE1ZcDZiZnVG?=
 =?utf-8?B?S0tIOXIxK21DWlZrc3BWN24zWlZvMmlMSXJqUlB3bVVocGJPeU9wNHlmUDdC?=
 =?utf-8?B?N2hVMEN1SU1yOGdjVE9OTEFOayt4RmwxbzdQUUx0T0ttaHhFRTFLYi9BU3pR?=
 =?utf-8?B?eEJXSDJjS0h6aDhVODdGeDUvcUd4QmxxNUJmVW03NVJqR1FjL051Yy9kTWZj?=
 =?utf-8?B?Tmt3ZEFsVTNxbWl3a2pYSmQ1VTVNVWsvMG1hdENoOUhRK2haQS85M2tCRFBS?=
 =?utf-8?B?YVNPWFVuVE93Vm4yZUJwWGQ3M05TV2MrWmpBWXkvVFlhQy9mYWZoR0RBRkVz?=
 =?utf-8?B?N0NQcXFybFBYNVNNbFNCd1RSU3JKNENBWngwSi9YQnZKTXNTNTBmRm5WcUlu?=
 =?utf-8?B?Q0hHaFZwaTNSNDd5NnM1c0gzeHRFNmFUYUh4WEZaN3JnNUpRZFdLMW5Qektk?=
 =?utf-8?B?QlI5MHQxb1VPOXU5dE56c2ZmUk4xNHN3c21pclVNMDFGUUZSVTJzemJYT1F2?=
 =?utf-8?B?eVY0TE9ZWGdrZjdDK3lVNUZXdFovQllWZDRLdUluTC9aa1JKVTBaODB5bGVM?=
 =?utf-8?B?SDRDS2VudENYSm03VnY3MUNZVjRTR3kwZlIvaE03UUFuVDl1ZTc1Mms3c3dH?=
 =?utf-8?B?OGRKR0pOS05MZU4vV3pLeUpjVmF4U2ZuVGV4QXVvaFVvUU9ZSmRreVJ3a0NN?=
 =?utf-8?B?QXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: da110565-3d4b-4a0d-f136-08ddc2e3a3e8
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2025 14:35:12.4018 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Riwgh33etcxtd6clVciClm3wWbv2DBR3PsWKiUqJCuSzcshFY9mAJ6MSdEVbmNb+EtD1OYrbRGqwnQKUcr4hsVzM2/8ifFepEpD3AEHszV0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5275
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752503971; x=1784039971;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pTkXNaYaPM2p0UmfZ2jrsWhG+WyHAIB4q0M3h2eyCXU=;
 b=MeHPDrVezY8e/i0k6epXRoICT3jen0SlBtjN++Paxx0PRBRwTxX9NfCU
 /HiFgWYh7aMETfhuZcRF5YnXgPkm2BVrcj6+sOtPgxL2pbmP4mlR3FF6A
 xSYYwNBC1lyKQOPxn5BuEfrcGTqXN60mQ2SYWpxg1YURpMgaq7R6aO6Np
 92b+6UjJWqwRvF/BaYB44HiR0hmIQA7EG71+sg7cSfnM/XeoVaOjXr5jX
 JhdkazZBH38oT3yPsVv/DBbC03wyDCnJb4TZnfgTRSP9demfnitFnIiO3
 3VahOXJKeK8tTAHhuYkocA+oYR4aaWk2X7dvHcqosmYjXnDtLciQyeVjV
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MeHPDrVe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/1] idpf: Add missing dependencies
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

From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Fri, 11 Jul 2025 12:25:09 +0200

> On 7/11/25 08:47, Malin Jonsson wrote:
>> The idpf driver depends on both AUXILIARY_BUS and NET_DEVLINK, but
>> they're not selected by the Kconfig. Let's fix this so idpf builds even
>> with a stripped config.
>>
>> Reported-by: Yong Gu <yong.g.gu@ericsson.com>
>> Signed-off-by: Malin Jonsson <malin.jonsson@est.tech>
> 
> Thank you for the fix!
> if you have a Link to the public report, please add it as a Closes: tag
> 
> Would be also great to add a Fixes: tag with the commit that introduces
> the need for given dependency/ies
> (there should be one tag only (per your commit), if both deps were
> introduced by the very same pull request, just use the earlier commit)
> 
>> ---
>>   drivers/net/ethernet/intel/idpf/Kconfig | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/idpf/Kconfig b/drivers/net/
>> ethernet/intel/idpf/Kconfig
>> index 1f893221e2c99..5c7ce626aae16 100644
>> --- a/drivers/net/ethernet/intel/idpf/Kconfig
>> +++ b/drivers/net/ethernet/intel/idpf/Kconfig
>> @@ -8,6 +8,8 @@ config IDPF
>>       select LIBETH
>>       select LIBETH_CP
>>       select LIBETH_IRQ
>> +    select AUXILIARY_BUS
>> +    select NET_DEVLINK

Uhm, idpf currently uses neither of those...

Could you give a real output with the linker being unable to resolve
auxbus and/or devlink symbols for idpf.ko?

> 
> looks good, but please notice that we keep this list sorted
> 
>>       help
>>         This driver supports Intel(R) Infrastructure Data Path Function
>>         devices.

Thanks,
Olek
