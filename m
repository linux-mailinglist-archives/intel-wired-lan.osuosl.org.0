Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 293A9908795
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jun 2024 11:35:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8105840463;
	Fri, 14 Jun 2024 09:35:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mrg7Ehpyvvuf; Fri, 14 Jun 2024 09:35:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 686934048E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718357735;
	bh=J3lMsR+9mGnT504p32fHwtVd4KNcx6aMzMo0MzdobTw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qlMp9OZ5CtJrHTgI7FIAzD8yDA5Ee1/qLTw1ZeudDHqy9Z0xELREKPMoBbITGTPkl
	 7264x+z55cq86qvTH36BaFD33DQvben82NTGBKGxDBUmRJRUUtFAN01O4J5gfNNhq2
	 +QMtUgCqk8ZQzXwxfRSPkyJ5QUo8Crj+kLuEDpygqhzff9r12zax0Ozwj/rJtIn/WQ
	 rVk7DU28QSjVMLXCIt6KLaOKLoH9V7Dhw7SuQQtUxNbDFIxlNAkRH2xbNKi3kdI13c
	 Uv3CIWSbdIcpEtKuJOsWcE3ow7rhl0RIGReqSYLCUg6CNOm3jOMysMQVCvImSyuj9a
	 5uTZByw7wAnSw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 686934048E;
	Fri, 14 Jun 2024 09:35:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DECFC1BF331
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 09:35:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C9E754025D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 09:35:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DriaEou6wCFe for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jun 2024 09:35:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 67DDE401DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67DDE401DF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 67DDE401DF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 09:35:31 +0000 (UTC)
X-CSE-ConnectionGUID: th93dezKT6O9mx+9b9JWzw==
X-CSE-MsgGUID: uNMk3gZsQ1CTV25kocFA5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="15109051"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="15109051"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 02:35:31 -0700
X-CSE-ConnectionGUID: SM+t9JLNRJeMRh2fEPGAqw==
X-CSE-MsgGUID: vi77PhlRQUSc7LuPthkPRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="71223269"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jun 2024 02:35:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 02:35:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 14 Jun 2024 02:35:30 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 14 Jun 2024 02:35:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T/vi+Z9Z4JF296T35kgDENBtMy6spZ1luvls8e1GejT7uOV1tDv5kRFnbRi7fTPszo6GBFMGmI66LaqYgnytzrJB+KUGms6usx7aQh2kLas8ewybWwteaz8a+MRmfhpF6QGd7tMoXrFkQn3MheVS6qy19Y6BkGN0Zc6+L8Dmw9v5QTM94Lab45B3cvxzvRLCw4plzPAMLArsYyL8Z+ipwFKgwikNN7XKA25rnfmUExV10bMZD9M6Wm/AHEW6pO7QA4BECowUq9o6auKqxqVQzeWl7U8e7IZfnhjXAvjkyrFPeWiq03+Ftne94Ia8BH9Yfw0dsespg9wkWEFlTlVOdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J3lMsR+9mGnT504p32fHwtVd4KNcx6aMzMo0MzdobTw=;
 b=mi/ywOPmtr6TFzk6NVtaOtO1Tlmr3WDQZ9UQ+JzU6jTZy9arUu7TSVHwVRbwHDHjOKnC0aXcYAEbt4ZD+uEIR36g7kK8M3nJzebjEf9rs13Hi4luz35zbB6XIdNv5vv0tZxRvsH98l22HBS1Hlvyr5okJBMYfartRxTgW7ZRjyD3gf6TwJ8Msbx36ibm0qLdV9x3B8D2UoHHcBp44KkLNHrvkvcJfhSVvomJV2rVRbdAmVoti2UfofS0r4Npatd+CjVZ4tQkre8dXiWqCjpOmZ7GkVAntyoMDgE5ECHAjzc6m292X9ljctXbyFTa6lxgnsy0dkmn9XBzdYiAAURqzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH8PR11MB8285.namprd11.prod.outlook.com (2603:10b6:510:1c5::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.24; Fri, 14 Jun
 2024 09:35:28 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.7633.037; Fri, 14 Jun 2024
 09:35:28 +0000
Message-ID: <3092c889-f112-4a20-bc7f-d703c162499c@intel.com>
Date: Fri, 14 Jun 2024 11:34:53 +0200
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
References: <20240604132155.3573752-1-maciej.fijalkowski@intel.com>
 <20240604132155.3573752-2-maciej.fijalkowski@intel.com>
 <6f616608-7a56-43d6-9dc9-ea67c2b47030@intel.com> <ZmhdZwzIStFpghZK@boxer>
 <8a835d02-d65f-42be-b4dd-309e9e04d7f0@intel.com>
 <f453bcc8-8528-432d-b90e-35db9d4b0fe9@intel.com> <ZmsVfbDTyZty2/Xh@boxer>
 <ZmsZWfn1ev6KWo3r@boxer>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <ZmsZWfn1ev6KWo3r@boxer>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI2P293CA0003.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::16) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH8PR11MB8285:EE_
X-MS-Office365-Filtering-Correlation-Id: 272fccce-82d2-44ff-1730-08dc8c555399
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230035|1800799019|366011|376009;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WTR6ZUFBTnpvSGxhQldUQmVydEoyL1hWTGVwY3E4UEJ3SzEyV2s0ZDFuZ1gr?=
 =?utf-8?B?cVZack5ZbTlhaGNyN2d6cjhQKzVkckFLNXliWmZOcTZYSTBxMW9JVFpyOXgr?=
 =?utf-8?B?REd5ZnBycThoMGpkdkU2MmZ3WkZiaTVEQjE2VVR4SXhKWWh3SDJ2c0dDbUQw?=
 =?utf-8?B?NDBVWlRrNnlmdFZPZ1o0eXBPRnVITTVYUitNLys4bVNucXUyN2ZzTnBROW4x?=
 =?utf-8?B?MmZETGJkZ0dZUHBlSkhZa3ZpOGswT2F4dWN3MTFJcVk4amtGT1VUTDkrMUN2?=
 =?utf-8?B?Qm4vUGkzOVNua1pieEFPOXlVZHZTZTJvMXNINjZjYm1Nc0FEUXp2T3VQUlY5?=
 =?utf-8?B?Z3prZUwvZEJKVFhwd0RiVk9sUDNCbmtrSGd0WEhiR2pHOGxZOWJMUktIZE9k?=
 =?utf-8?B?bi9jcEIwdGJ6dU9lRFJUSnJFVXBod1VSWjNKd1N1czhtWkRoWmx1b0JrNWRo?=
 =?utf-8?B?bkROSENMSitXeHJnaFFMK1c2SDVKVmpmZmVIMDlYWkdreHZEL2UyRDAyVHVH?=
 =?utf-8?B?dTZOV2R2SCtjVTJxRjIyZWZEbi95Nmt6eEpEeGJZOHBiRnYrZFZRZnJnTlJC?=
 =?utf-8?B?eklUYXpvbU1LUFdueUliZW5ZZ3Z5OG1tc0s2Y3FmYytzOVBXRDlVcFRPS2hD?=
 =?utf-8?B?RnRGUFdqQTYrME9xWTg1V1Ruc0xIdzFyYWhGNDR6S29QNWJuY0xoWXZKSWg5?=
 =?utf-8?B?VWdqbHlGdGt5NE5HRGcrazVZVWV1Z2Z1TEFsSStFc2YxaTFKMnJCUi8rK2M5?=
 =?utf-8?B?WHMzZkNzdlgrVWxmbVFnS2dvQncxaHpTRmxkNUdjOVp0OHpXZlRCMkN4c0tM?=
 =?utf-8?B?d3d0aWxkQ0NxZmtaMzRqM3VhYkRoaFJRZHdqNFNuWHBySjZDQ0NOMVQ4clJB?=
 =?utf-8?B?aUFxdHpVSEk1VGx4REQ4UEtFUFFsUE1sLzZnTHp3aWtZNFhES1h6Z2Q1eWpS?=
 =?utf-8?B?MmpwVGtWWjVSTFpEVlQ4TzQ4SjBKY21SWkNTRlIxaE1qamYxN0dQOStmY09n?=
 =?utf-8?B?OUQ2aFZVcDN1akM3WnNaUWJEdXY1M2pxL21xaE5xaER4MjhHK1lJWFA0Ymdp?=
 =?utf-8?B?Qk1ZbzJ2bGM5RHJqZ1NNOEZkQU4vVWx6dTlLZE9nQnFkTzZpK1QvSTdxRnlK?=
 =?utf-8?B?Wm8zREVkM0JVSDVjWkVqcEVYcGVtdkxYNFZOVGYxWnNzTjNoZHFQQldJaTdB?=
 =?utf-8?B?TlAvc1MrTFp3K0ZkNm1GRytZTEpUUDFMOEVsUnd3UVJyVThXUzFiSzZsTHND?=
 =?utf-8?B?NzRkSjdxRnJLYTBYbW1XVEJhYnVoVDhRRGQ2aWxoS01OT1ZuZER6aEY0KzJS?=
 =?utf-8?B?Uis4bjNmdkJaVDJWTmd4V3ZsZWtONDFuMDR5ZXMzdFNheW96ZVh1aHZaQ1hh?=
 =?utf-8?B?aDJPc2FBbmxTQnJpSjR0UUFkRGlWTmJ0RGx3WEpVNHhjN3JJbjIrMVYyaGdv?=
 =?utf-8?B?eXB4czlGUHd3bkc0V3MwbFUxQVEwcllVNDZZTlUrak82VDg2cGxjM2gyVE1t?=
 =?utf-8?B?SGl0Qmowa3pSVHBFV0hvWjZIS0lnVlJ6ZldWTFNXWDdKbFRGcUxXS29oN0xw?=
 =?utf-8?B?YUlVaER5eUo5MklXYzhTT3h4dXlSemFaWXB5WUFuUC9kd1JITkFRQmVyRm1Q?=
 =?utf-8?B?eDZDTm5MWmVFU0w0SWljdmZrNE1UdWJ5cmZDSDBjdGpPRlNKaHE0WkZmZEl2?=
 =?utf-8?B?SkZmVEtHc2FLSWlJOXU3SHJxUldlMVNlV01OVFB4Ly9nRWN4VDQ4MFpOcVEv?=
 =?utf-8?Q?qPMe+YtX8pD5rXKfrFZJw67cVS9i42YMfPH8uaw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230035)(1800799019)(366011)(376009); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?azFkK2JwSzNaSnJlM1lJTDVpU1dDUzBXNHBmY0RpeFB0dGNUQ1A0Z1FTY3VR?=
 =?utf-8?B?VW9maEFCSDZueEZtTUp1L2dyRHl6aVJYTUlhQUd4TFdGcGVYeWMxRFBObE16?=
 =?utf-8?B?emovTmZsYlVYYU16UktGdDdNRnBPNzU5VGp3eXQ5M2c5dTdrSFRnb0EyYUtj?=
 =?utf-8?B?T1o5Y2NCaURDSHMzQjhtSXRLWW5uYkNBL09sNUsyNmUrZFIrRFcxVVRJQUg4?=
 =?utf-8?B?RkdnR29pcHlCUDcybDRvZHRmNisxQThFWGtjTWtRYllqM0VxME13SHFHNzd6?=
 =?utf-8?B?RlBDd0ZYenhoRGtOUlRicC9JRnlVYzduV2hOb0E5d0J1bnBoVUE0c3E0RjZU?=
 =?utf-8?B?enJ2N1ZUOW1MYmJ0ZlBEdTNqbEtwMXdtUW5IZi9WOWZ6bTFDbGd1bkdNT2lr?=
 =?utf-8?B?YmJ1NTFoYlZ6THo3RTZiWVI4OUVBVmlzNE5sVkE4cE5kM3ZPSW9MOTZUK2t3?=
 =?utf-8?B?Nml3aTZIWTN6UUl5U0F4dERoOFo0SkxZTVNYTVpUczRRWHRDTFIzc3VRV0ky?=
 =?utf-8?B?SkcwU0t4dllnb1lPK0Q4TjhKVkkrR2w4bUJqMVdMYzlyeDNrZnJhNFc3VjFs?=
 =?utf-8?B?NzBKME91MW8xVGVvc1BMSmkvdHVUaFBHYkxtV1N5VFpqUmpTWllwMHZCQ1k1?=
 =?utf-8?B?L2pZQ3NLaEpaMXV5dXVyMkFjUHJqM1paK1BObHRBL0VCSnBrRFVORUthMXg4?=
 =?utf-8?B?ZUREMVo0M083UjU3ZXFKUWRzbFhNZ2xXVWdicGVLeTRKRERVakNPOGVRT2pB?=
 =?utf-8?B?MVBjK215WE1iVG05QW10V2ZBZzNSdG5oSlhvUXgvaC9ESW1VV1lZMHZHTmI5?=
 =?utf-8?B?V0dyd2p5ejIxS1B1MGRQMno4WDlQWmd1REZyVm1iZnJvRmpkRlY2Q0h0elJn?=
 =?utf-8?B?a0NkM0NMTXVLcWFSQTV5Nk52OS9VbzAvb0hXNllVdjFQeTRpaHRkQmpUdDlG?=
 =?utf-8?B?eEhjUFV0U1lkV3RodTA3ekcyRG12c1kyS2JLb05hcFg3dXJ3VWtBeldLcUVI?=
 =?utf-8?B?MndLMFU1TmZsK0svSW1UbmdZaEtUbFU3U0lHLzhJRUc1Q0MwdUcxSUFsYWpj?=
 =?utf-8?B?NmNWMDdYemw3dUE3TThXTm9tTG5XU1B6YWtoNE54bVhaY1dmeG5GMFRhSVN5?=
 =?utf-8?B?dmhRK2VrWG1HWTFsK3lBbTN4UzlaWSsyR2FRYjJrRTBFekxmSzcvcVRyK1pr?=
 =?utf-8?B?RUxLSmZ2MktZNUFxY1ppWTZzM3BUekQvNC8xbmYwNTB3U2ZEUi9QVjVYcUZo?=
 =?utf-8?B?MmNidCtScjBWNHFwSFUzaVZ6WXVEZWx6ckwzQ204UHFRY3h2Qy8vUWsrNjh4?=
 =?utf-8?B?Rk53NFRTbDFydFZtRHpUZjFueGgybkJjVzNWQnRvem9FYmpjSmd1KytVdzJB?=
 =?utf-8?B?WmhrbEZncHl1SjdTMnB1blJOaUIwZG1WdjBaMkpYcjFnWUdVTlpEZEtaQ1ox?=
 =?utf-8?B?RklXQzN2b2dHcU5MVHJZUDZ4d09qaTVrelNDT1NjdGU0dnNRdkxSRXFqZzdO?=
 =?utf-8?B?bDlXeVh3bmcweWpuV05uanhyM2E5M1FOeitpZDNnQWpad3dvTTh0TEVYckxC?=
 =?utf-8?B?NE84Mi9LL2kzUGRuL1UvclRSZjR2MDlSL29raUszSi9BNldjSWlEY1d3MTgr?=
 =?utf-8?B?UmpzRStLV3R1QVk5d1dtTThJdHpQMzcxVTc3MXNRU0RORENUY25pVW9sLzly?=
 =?utf-8?B?WWk5WnJJU0dkNlFFekIvSVUxY1NTTUFwbXZtQkdRZkdJR3hZSDRYUlEyNkVJ?=
 =?utf-8?B?dWNFUmxQSXNKZGdJUXdxZ2ZDSTlrYXkrRFNYQmNEczhrM2hSRXk4RnArUVlE?=
 =?utf-8?B?VnpITHIvZ0FDVTBzVm5XaDNxTlVFSkVXNGhEQ1c4Q0IrUWpXSTBCM1N3WjVT?=
 =?utf-8?B?dVpEdUZWVThrMmY0YW9tSFBwdy9IUEtTaElMQnFLY1JTZ1FteXh6OG1OVGd1?=
 =?utf-8?B?NWRrSTRVVk1LQnAvdk5hNFVJd01tMDFCdHMvWFNBZHdHWG9qMHdGWXZqcC9k?=
 =?utf-8?B?Zk9ycVJ3OEFWRnU4Z2ppdlpDVUpMangzejhSSDNzcWVNbHJCWmF5QkNtT1VZ?=
 =?utf-8?B?OVZkUk5KRlVDYmhua2dzdVZUSXp0aWpZZGpGK2RTRERYTDYzRU1KbGh1dzRK?=
 =?utf-8?B?ejNNZU5kZDhqbStRV2tUaTk3YjhaOXR6WDdhc054MC9xZXBnS0VOQUhQSmxm?=
 =?utf-8?B?ZXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 272fccce-82d2-44ff-1730-08dc8c555399
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2024 09:35:28.3604 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /yuCCsrOWllfG4nQwBtiJLQ0UMvaFb+LLM9JntMLdLW5LeaSpVanGjDyc+I3lZLT0eVPa7C/PGNGj0Dc/rqh9FSp/DakT0C5428b01r/cOU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8285
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718357732; x=1749893732;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CuVX2seIPJ+xM5BPL47xyHL3Auq84DlAAcWql7ZYyjo=;
 b=XBYdnzggg5mTibzhohKiMpq3Iz1o1HfiDVvWKMhpDA9xmMc/BuwyouA0
 79JuBpkfSlJGEivoVkibh1TLQAZY48kzmaRe4Py4x8X2GuIYSj3khDw1d
 AoTy2NvkT6on4cZP28TBH0yMI/+8QtHS5FyARr4EGi8ekEfSc1dGnQaVu
 +SFKFq1YgjBRczuuadbHKFxZhtrdOuSmxR40qwDHcS3kfv8qBkRMfaHV5
 llMeVygDVrZzEZ2QwIz+pFAMa/jA3q9qyLc00M+mkqWcVYGkfITlfkuQF
 VuFAxAhk87A7Usx2btWn3AgOQ4X118O5REqDcFOlzcIeg303TmTIz8Z6u
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XBYdnzgg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-net 1/8] ice: respect netif
 readiness in AF_XDP ZC related ndo's
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
Cc: larysa.zaremba@intel.com, netdev@vger.kernel.org, michal.kubiak@intel.com,
 anthony.l.nguyen@intel.com, jacob.e.keller@intel.com,
 intel-wired-lan@lists.osuosl.org, Shannon Nelson <shannon.nelson@amd.com>,
 magnus.karlsson@intel.com, Chandan Kumar Rout <chandanx.rout@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Thu, 13 Jun 2024 18:07:53 +0200

> On Thu, Jun 13, 2024 at 05:51:25PM +0200, Maciej Fijalkowski wrote:
>> On Wed, Jun 12, 2024 at 11:15:31AM +0200, Alexander Lobakin wrote:
>>> From: Alexander Lobakin <aleksander.lobakin@intel.com>
>>> Date: Wed, 12 Jun 2024 11:09:10 +0200
>>>
>>>> From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>>>> Date: Tue, 11 Jun 2024 16:21:27 +0200
>>>
>>> [...]
>>>
>>>>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
>>>>>>> index 2015f66b0cf9..1bd4b054dd80 100644
>>>>>>> --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
>>>>>>> +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
>>>>>>> @@ -1048,6 +1048,10 @@ bool ice_xmit_zc(struct ice_tx_ring *xdp_ring)
>>>>>>>  
>>>>>>>  	ice_clean_xdp_irq_zc(xdp_ring);
>>>>>>>  
>>>>>>> +	if (!netif_carrier_ok(xdp_ring->vsi->netdev) ||
>>>>>>> +	    !netif_running(xdp_ring->vsi->netdev))
>>>
>>> Oh BTW, I noticed some time ago that netif_running() is less precise
>>> than checking for %IFF_UP.
>>> For example, in this piece (main netdev ifup function)[0],
>>> netif_running() will start returning true *before* driver's .ndo_open()
>>> is called, but %IFF_UP will be set only after .ndo_open() is done (with
>>> no issues).
>>
>> I see, thanks for bringing this up! I'd like to try this out. Tony sorry
>> for the noise, but it seems I'll go with v4 and will decorate the
>> mentioned statements with unlikely().
>>
>>> That means, I'd check for %IFF_UP honestly (maybe even before checking
>>> the carrier).
>>
>> I wonder whether it is the ultimate check and two existing ones (that we
>> are adding in this patch) could be dropped?
> 
> In netdev closing path [1], __LINK_STATE_START is cleared before IFF_UP.

Oh man, inconsistency in its best :D

> What we were initially experiencing when netif_running() check wasn't in
> place was that xsk was producing a bunch of Tx descs when device was being
> brought down. So let me keep what we have here and add IFF_UP check on
> top. Better be safe than sorry as the bug we were dealing with was pretty
> nasty.

Sure, I didn't know %IFF_UP's not that reliable :s

Thanks,
Olek
