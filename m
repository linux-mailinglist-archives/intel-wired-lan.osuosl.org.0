Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 671648CD9DC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 May 2024 20:27:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AF6A94183D;
	Thu, 23 May 2024 18:27:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e9M5RHvUFKQl; Thu, 23 May 2024 18:27:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0F364184C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716488871;
	bh=QCn5PJ6dRH7Za2Yeq9xLZVCmg9A9YIBQtJi+xlvvYQo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4Oig5Q8YiCGx/Xxgo6Vdrhyib6JweFnjTVhtd1wg6zdkRb3FXiIgfUJKwklZkEccW
	 41calTeBBM2cQm8dNf+VoPuBvFJIYhdtmXL462SbBV55PILZp5sloTb/ILSy5Zz7zN
	 bfCyvtkmB6gOmIIm6yCDmosw6dDrBu6d8y0p62mV5a/dg41fWzmxlthjcffNo/Gu0c
	 v5imJbk1GbpTgTGP99Gy9uZEIjhzQwHskajcHjLVMBH6zDDkb0wBKsv6QsAACwXyD5
	 DJRzFO//ZaXiE3I7Bhz1uI5W+oiUvm1MFkXa0PKq0NMu8nHEysjh6yc455Elnm0z0H
	 MeAudXLV8Qf2g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A0F364184C;
	Thu, 23 May 2024 18:27:51 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4443C1CE7BB
 for <intel-wired-lan@osuosl.org>; Thu, 23 May 2024 18:27:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3A8C1824EF
 for <intel-wired-lan@osuosl.org>; Thu, 23 May 2024 18:27:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OTwH2oMmN-4I for <intel-wired-lan@osuosl.org>;
 Thu, 23 May 2024 18:27:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 00E11824EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 00E11824EE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 00E11824EE
 for <intel-wired-lan@osuosl.org>; Thu, 23 May 2024 18:27:46 +0000 (UTC)
X-CSE-ConnectionGUID: MCNI0/UySxqRrjlojHiqHg==
X-CSE-MsgGUID: FkjO6HF4SdS6hj2QjfMIQg==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="13061811"
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="13061811"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 11:27:46 -0700
X-CSE-ConnectionGUID: GI7c+FTbQ8+vDGZJPbeeaQ==
X-CSE-MsgGUID: +n0rUK18QpOG+JjuTXSK4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="33831071"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 May 2024 11:27:46 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 11:27:45 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 23 May 2024 11:27:45 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 23 May 2024 11:27:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PBreb4uUIU2AHyCxmrQWtUgaLtCsjRFfmXsYPB5rJBLeDD87O7FpDU24O9AXFLjpzIHb07EbXZpoOOJXoN+NLHQhc5OArFHu0s9tM2us7gypAEhVIfE3+48o8m5R0mfCwdappizEstENTxyxG9B/izDDREZOpI0tMMXaqiduA3ucy46s+ke6kn4vC1f88qZSpWDWpkFEDGKyKsyWwPWwallRWCwDshOIJZWK3vc17FhYvw/vc/8a8RqPfnOLGfyBujVpBCd1829AJpMNMtEtYA/h/p7vOpaAcAie66RPgZx2d6cKqM7qZNWH0gW5OmL9szoQG3AXK3JyxRG2KYkUJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QCn5PJ6dRH7Za2Yeq9xLZVCmg9A9YIBQtJi+xlvvYQo=;
 b=jKNnh8Mafk9N3z2jX1FPEdAuKGpVgmHoog8rY1zMe+jgE0ht+TM7fMsywCdp8vxV0If5Y0Zig9S9V7w3M+7ZQ8GopUtARV2CosQXgcXcV+dYwaXMuEXHZhtFUs/Ty2M0a9vJ3aTPVyEIbSjqKVyYBr3cO1mpYki8oh4AFBw2eo0ygsknLpMYszlTpEHOKoBjS0bXXJU1vS2hiF0jLilOpxACgxs9xQbpnO2p3sFc1QF6Qjl9Hquji1o1rVFi0uY5TysUfiJacoRNTIB7JKQsKdQMDQ535uqUrNRxLcjVdadg9Y9LLMn+GoUQX4tlS5yaHq4/0XjrZUzl4K5UadTDdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW4PR11MB7162.namprd11.prod.outlook.com (2603:10b6:303:212::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.22; Thu, 23 May
 2024 18:27:43 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7611.016; Thu, 23 May 2024
 18:27:43 +0000
Message-ID: <b35f181a-4d4a-405d-973b-01ea13e8cf26@intel.com>
Date: Thu, 23 May 2024 11:27:41 -0700
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Vitaly Lifshits
 <vitaly.lifshits@intel.com>, <intel-wired-lan@osuosl.org>
References: <20240522091911.2862403-1-vitaly.lifshits@intel.com>
 <7fea6eeb-6174-4192-99f6-acc450e1fba4@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <7fea6eeb-6174-4192-99f6-acc450e1fba4@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0055.namprd03.prod.outlook.com
 (2603:10b6:303:8e::30) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW4PR11MB7162:EE_
X-MS-Office365-Filtering-Correlation-Id: 14d18b92-1cd8-4211-0dc3-08dc7b56091c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UXlBZ0xKVm1PTFFLQ2ZaOHM3RnhtZDA3c0ZER2E0YlNWYS9ZV1h6cHlvc2Zl?=
 =?utf-8?B?ZEt4ZHljTmt5QVF3eWNTc2I2ODJINksyeStuM1dadDdFeHNLM0xUa1RTSEVQ?=
 =?utf-8?B?bER6Z2x6eGoyL0ZTMGlFYWRYSkJad29WM3doN2Z0bHo5Tk4vTUdHUnFvbWZk?=
 =?utf-8?B?MVFpeU54VjROSkxVakp3QlhKb2hQL1BvT1FKNXdiTFBIakU2aHlWU29lSWl5?=
 =?utf-8?B?VzNYVVRSS2JRTzc0K1d0QlhvcHJzNStyTEd0bDZucjhUdzZ0bi9wcjYvZzkx?=
 =?utf-8?B?V2NOSmUyeDBVT2NjbDNucmZYZk9tUTB3T2pSUFAvZzFNUFNHamIrOHlSYUpv?=
 =?utf-8?B?OTgzNU9oRXczN0VFVEVxTkFadndpWU1qZWo1MER0RVg5Zm9RdmF3M015RWhG?=
 =?utf-8?B?cm9OaEQvTDFBbDFKUGp6dEV0U1ZtT0dNdDZiek9lZjJnSEVmc1RSQ2UycTUy?=
 =?utf-8?B?MS9Tb1JyOVdXRnFvQUNrZDhMVWdTVmc2ZUs4UGxvQWE3VDJnWDF3VU91b1Nj?=
 =?utf-8?B?NzRXM0VzMklOOHlWc1dUQWtOcTN4NFNscnVRN2pWejVMb0FzZnNWSmtPNG1R?=
 =?utf-8?B?UEhTaWtQWFFxM1dscndhYUtUcVp6aWVlOVdJbjJHKzdvQk43RGxDV2k2TzRG?=
 =?utf-8?B?aWVyRHg4ZVY2UVNLUjhtUWkrZHBIdUU0eTJhd0xXbEo4djJtd0h6UEk1aE5s?=
 =?utf-8?B?VkhmL1J5ZGd3Rko3NGJ0UkNPOHVmZ3B3aVdqNnhWaUIvdEdBSCtZTUZVa1ZK?=
 =?utf-8?B?TmNCcTB1NEl5RlRRMjZUNGhQM2llb2xEeDVndmllekxQSHlzcGo2SVg5S3lv?=
 =?utf-8?B?VGdPSEU4VmlJdVNQSkgxWm1nSVI3WkNKWUlYREdWVFk4TmRlNUZIaG9rd3Fi?=
 =?utf-8?B?WTZyRUwzYzZGa29HNElvRzNZQnlYVEFlUkkzdE42LzhhWnBYdGNOMVl0aTcw?=
 =?utf-8?B?aTZIYnJheVZ0bUN6QzNSK0p2UVBuNVJlOHRxU1hlMVpjaFBQS0NQOUwyMFVE?=
 =?utf-8?B?ZVhiL3FQQnpKMVowRFdZWmd0SDEyR3ZCZWI5Z1E5cHdOc2g5MVU2Mi9tY0xB?=
 =?utf-8?B?ajV2eE43Zm5HNE9VeDJka0FXalloMDVkendSRC9xcDdrQlArTlA5MFVZb28z?=
 =?utf-8?B?U2s3UVh6SU54MXFCMXI0ZmM0MjBLTTFmZ0hiN2V1djdzZ29xaGFtN1JROUhy?=
 =?utf-8?B?SUpDdnptWVo3VVZMdFEraWxXN2RrbWUvWkFzQWp1dDNLS0tpNDhlV0pIRnJJ?=
 =?utf-8?B?U1VLUys1QzNQeGhWWGhlMVFrWFk0emY4NXcvYWdoZnVqMGJZWXptZVlaa1VP?=
 =?utf-8?B?M24vVitwVndIaEp1ZmhUTUllNVJyVDllcnhOWnZtamgxNGJiRDNvc3hScWFF?=
 =?utf-8?B?L1ROTkppc0d4NkhnNzRiNkNwdlNjdGRpWkcxRVdSNHpYTEs0V1RBK2hNR3dG?=
 =?utf-8?B?R1BURlRNTzBxaGtlTWVmYnVtc016MDZDSFRFSmlOT1ZCZHR1d2VrOGZkc0Ni?=
 =?utf-8?B?dm5Db0hvNkgxbmVkUDZXM2t6UmREalhLckY3S2FvbUZMbWhUSGJpN2xGSjJ6?=
 =?utf-8?B?RjVxVkMxMUxUZlVlZ1pjVWIrZzkwNFF6QUtvbDRra25wWXdGWXRZNFliNHlu?=
 =?utf-8?Q?1qkvBwVlyDMEemOH+AETKDqZjhaEHSyoRnoZUtFyM4HM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ump1ZjViVDBVbzNWZUJTM2F1eW5JV045ZVlUK3pJWVpjQllXbWRaeWJrdjd2?=
 =?utf-8?B?TSs2MTlhcjNXcmtNdXZ3eTVKUytDR2ZabjNWMEZ3ZFdvWlVZYnpOZjRVbWM2?=
 =?utf-8?B?ckUxVTViQnF6MEJYcDRSSkFhTEFOV3VMOGpjZTF3NlJFVEJkOGxxK0czbGJw?=
 =?utf-8?B?OFJUYTkya0FHVUdsa2QrTEZ3eFBUd1RzTElnREFyOGNycEF1WmRQOVBYUS9h?=
 =?utf-8?B?NGh1dEs5Y0x3R2Rvb0pYb1J2bVhlTmpHbkgxSnlzbTdlWExRY1VoUlhQb2tS?=
 =?utf-8?B?ek5qbTJBeHJ4cjBpS0NxN3c2bkdtUkxUTjNtSHM2MDlhejBLNXQ0RHhFNnBi?=
 =?utf-8?B?Q1pST2hDRGdwRWttN3cya0dtYjh6dEdMMFkyNENHaEpURXRCSkVRTE4yUE9l?=
 =?utf-8?B?Wno5aFQxUVFib2dqS0hiS0xvMzI2NEVMcUJLd0ZqR3l5MExvdHVPSDRsa3R3?=
 =?utf-8?B?SGxhb0lRMkRWQ3VnR0hIOHU0VEU5T3ZNaExxcDNKZVVRUG43VnRoQlY4ZGxr?=
 =?utf-8?B?U040c2JKVWdXMGRoU2UvWlBHeW9nTjc1NnNRMTQ3UU9XVFlSdm5KQTJ5NEJI?=
 =?utf-8?B?STBZRjZwK2E0THc3eDFnemw5bEtibnhVcW9mallsS1ZjOHI3cUpSUmRkbjY2?=
 =?utf-8?B?dWpGV2ZkRjd2Wk5XVzdyYUJ6Y1VSaFI3RllnUmliUkZzeGFwM1lyTjMzaCs5?=
 =?utf-8?B?MlgwbjM2bG84TDVsaXBvclNsYmYyZnVXZmhDT3RLRUR5TWVqQXB4a3haQ3l0?=
 =?utf-8?B?NjI2STVCOWdYR0NTd3lLNFhNZkNuby9XMHBqcHIrams2cHFVQTYxRjdpc0hs?=
 =?utf-8?B?LzFTa2QzQXB1MjAzSmw3UW5IaHJyT1ZFVDVnaVozc0RwQ2M1YUpyN0ZRN2Fj?=
 =?utf-8?B?MkkrTm5NWk4rLytXZXIyb3RmYzgvWEVtUUNzOWtkYnB4WmVHZmxBc1MwNi9Y?=
 =?utf-8?B?MjhYTDdha0IxN2NSQjF4bUx4dERXSVBZSjZmYXdtVG5xWE5EQXhwVldaZTlO?=
 =?utf-8?B?M0w0Q0N0NGZ2WUgwdEFkZG1uQ1JSMVZhNXV3V1l0cmRaWTR6RmRGOXRsN0do?=
 =?utf-8?B?TUwyaDQraUoxd0RaWk5LaHV4dVkxRTJzZ3JNZ1lTaW1EMnMxQkYydVRkbHZq?=
 =?utf-8?B?T3F4Tmh1ejdKNnpBM1hVL0t3dy9vRmtOT3Vtb1BEbjZJQ01ab3FGNXNpYm9r?=
 =?utf-8?B?bmJhV1Arb0IzaVpNa3JZQm9tYXRVUzVGZi8xMEFVRmRBSzlhZ0Q3RzZjRG1D?=
 =?utf-8?B?Z01qNHNuV0JkZEhrUm5GSWJZQ1FCVTcwNVgzSGVPSEhDaHdBSDM5QzdDZGhW?=
 =?utf-8?B?QmRoU3JvNVJCSit6dGJuNExPN3BnQU1UZGt3bk1rcFF1ZGp5T28wMFp6dDRQ?=
 =?utf-8?B?WFNGVUJOSHcxdzlpQTFXYW9ySUtoNlBmdk9uL2loRlBTZStNUzNNM2p2T253?=
 =?utf-8?B?SUxhbGRNc3BhbTZ3NHZJbFM5L0p6OVBydHZkRWFYcjd2ZktIVURFWHNwUmty?=
 =?utf-8?B?ZXBQVHhQQWE4OU0wbkc5NUdMM2JMWGdFeXc1SW91WG56Q3d2M1o1NjNRa1ZM?=
 =?utf-8?B?bnphN1VlMzJtN0Q0UXEvdVhHTjRCdHZaVDh5d2JETjczcUFHRXc3UTRrVm1z?=
 =?utf-8?B?dDU1bWRIaVFCNFN3YVB1N21rak1pMFVzNHlWZHhyK2ViT1ZWaVVNMlBnZnNn?=
 =?utf-8?B?SDR6MGU0OElUU3lzUHJwNXBOOWtpS1dBTEhmU3JZak14dTdSb2h0SGxNZVh1?=
 =?utf-8?B?ZG9xN1JVa2ZsaXdXcHRENmxpbUwzK0ZNV2VwQk5GVUVYR0xWYlMwL1d5NTZh?=
 =?utf-8?B?bkhqODZQMTl6Z1JFZ1VJQm40R3UxaWtaVS85RWw3bW9qOGlJSXpkR1FJWDQ5?=
 =?utf-8?B?VG9hSHArdnF6ZVRrZTNJOTcxbXg4R3RMd0lTa2RYdHRwS3g4b3RYRHM1ODU5?=
 =?utf-8?B?bzkwSFZvUWtMdGtYZ212aW9QamZNZWY0S0VwanROS1drYW9ZVmg4Y3N2Z3Nw?=
 =?utf-8?B?L2tnUW9lZEdoS2Q5ZzhSTTltdlA0V201UUxOaU9SWmhiY1NvZWtBZU4raGVB?=
 =?utf-8?B?ajRDWHd3STY0OHJLWlVSMXI1cjJvdjVBTWJRYmpoaGkrRjhWeUl4NWdVMk05?=
 =?utf-8?B?YTYyUkNNNnpnUElpQzVGbnUyakVoZlFGUmdCQWZsdzJCV0NSMUNTd01IYnBv?=
 =?utf-8?B?THc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 14d18b92-1cd8-4211-0dc3-08dc7b56091c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2024 18:27:43.0902 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HuPOeigudjXmA4aJhlXuJE6SkqN0N3grY5hEmlc8ntjA1hYHwTKfaGw/+H0G0EjL0WHn3Zia3uv3+UQNm/g8QEA/hEI83L+xCAEVXdGPArw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7162
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716488867; x=1748024867;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wvxijTV+A7F1shkWhKowjJO0maDHSIWbtdv7zZs+AFo=;
 b=dgBuf2vGHagqCO8Ex8/UCPj5muPZnMp4gvKdWHDvn1CtWREnisWV6Vzq
 MasyIyfOQqso0jY7/46u3FWvmVLeZjMpjmuAECzgl8TNsZQampnUMr3lD
 sYRdom8GV4cHLabXoZVw9uDDYyNrusl2nDAL8r9A+bU91FyXlSoeUIRYK
 rqkoLHLjwieG/mmwDQgPtGOirbvqgGaulPEcvoPs5bQ/ZPug58zCbddpw
 4H+ZDDnjuOzK4gSEWnTg4IDVYDbYR2D9eP7a9x6Fv/Bq7TdtewoGXpVsK
 s4gcvjTmpwLBfI1EF9FjqTHN+vxhjyjLQEwcNQcFMAvT3ranwXKn7GZB4
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dgBuf2vG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/1] igc: add support for
 ethtool.set_phys_id
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
Cc: kurt@linutronix.de, Menachem Fogel <menachem.fogel@intel.com>,
 lukas@wunner.de
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/23/2024 1:44 AM, Przemek Kitszel wrote:
> On 5/22/24 11:19, Vitaly Lifshits wrote:
>> Add support for ethtool.set_phys_id callback to initiate LED blinking
>> and stopping them by the ethtool interface.
>> This is done by storing the initial LEDCTL register value and restoring
>> it when LED blinking is terminated.
>>
>> In addition, moved IGC_LEDCTL related defines from igc_leds.c to
>> igc_defines.h where they can be included by all of the igc module
>> files.
>>
>> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>> Signed-off-by: Menachem Fogel <menachem.fogel@intel.com>
> 
> sender's SoB should be last.
> Should, by any chance, Menachem be marked as an author of this change?
> 
> side note: we should CC netdev and obey netdev rules, like not sending
> -next content during window being closed for new submissions
> https://patchwork.hopto.org/net-next.html
> 
> 

My understanding is that Intel Wired LAN is a little more relaxed with
accepting iwl-next queued submissions even when net-next is closed. They
of course won't get sent until the merge window opens, but we can queue
and validate them internally during this time. I guess since we started
Cc'ing both intel-wired-lan and netdev, that might not be the case
anymore? Certainly in cases like this (where netdev isn't even on the cc
at all) it does not matter.
