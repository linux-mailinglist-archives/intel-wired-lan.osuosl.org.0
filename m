Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9798C7AE8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 May 2024 19:13:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 93B8D41D77;
	Thu, 16 May 2024 17:13:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HII4IGpzUF9x; Thu, 16 May 2024 17:13:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB84641D80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715879579;
	bh=Nn56d6uiMleXHa9Gc1n6luampeyRZoNLAdrn7RJwum0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QHc0zIOztHTK0Ct4qkiz2iuNzo71BuPsc1vMQYV7FqCZ3cY5thc1Pzq9lNBXyDL3s
	 0BEbQ5Da6dOJykfPVR7z5lAvp+jdCDGPuYUxWB0UmJa+v+OSqohNncemkAJA2odiVw
	 twxIgYTQ/VKjTsVy2rLTPDbAuXcU9dqb4WNAIQ5HappyIJAa6V9balhffNYEW+YxNE
	 S6Ft42ZvRVH8u/QZVqoCqW/NpRjAvk9CLtUdN+SFbW8TUm5tEyOvShOJtYyCMpHmEy
	 Q7vFUAyfjvFjq0GPj8Bna4Nh+eh6R21h37LGUobAlMg28n1D2iSOrVmtzujRM36+kV
	 sSolO6oFMZQCg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BB84641D80;
	Thu, 16 May 2024 17:12:59 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 98CB61BF841
 for <intel-wired-lan@osuosl.org>; Thu, 16 May 2024 17:12:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 90B3040650
 for <intel-wired-lan@osuosl.org>; Thu, 16 May 2024 17:12:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8Z4izoZ8N7fY for <intel-wired-lan@osuosl.org>;
 Thu, 16 May 2024 17:12:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 272D340520
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 272D340520
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 272D340520
 for <intel-wired-lan@osuosl.org>; Thu, 16 May 2024 17:12:55 +0000 (UTC)
X-CSE-ConnectionGUID: FI1OAJcZQ3meS8bwuX5SFA==
X-CSE-MsgGUID: RhG9QGyvTuu2uGBDIXBa9w==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="34527736"
X-IronPort-AV: E=Sophos;i="6.08,165,1712646000"; d="scan'208";a="34527736"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 10:12:55 -0700
X-CSE-ConnectionGUID: NBgtqTHLQxSQOy3YU7KJvA==
X-CSE-MsgGUID: ohfnuAprRMedICQ4ULR21w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,165,1712646000"; d="scan'208";a="36050399"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 May 2024 10:12:55 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 16 May 2024 10:12:54 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 16 May 2024 10:12:54 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 16 May 2024 10:12:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jNREA04+IU2cFIljl4LiY0PXIoXywp3OVdceWIZDI3G2x7tUK3ESz4U9HLJY+p0Q2y51kMspHJK6L7M4FywUKLF4UZFtltnnkAjjxkjNRoH5iRcAj5Dfcn8cTQkNIO74EUJEI2i9FllOE8aK0bAbXHnyN5mr6Q5VWKb+kYx48ysNZdOC6GKp8ULHgEQVA45AAct+91ymW8QUSNlxx6bUBh2w38nTL53LNSsjxSOobdR4JuMUMmRIb5fynD+d9V/jO32wNj21K2ohZRWGastOMwJ17EOMbEEcwuV8r0rFwSBFDasilUrBQgRyRxOm6VuJJ+cLc4yzw/TFRci8lr189g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nn56d6uiMleXHa9Gc1n6luampeyRZoNLAdrn7RJwum0=;
 b=TivNURtQ3+kJGbB8Dc4bleQEirlUPcLdv0K4b1V7+sT5dhArYZHztJm+oZ+sv0tJjQRi5dbQA/34vEogO1vpRt0QpnrAIJpA9WC55x+YnEmtOqmpls2gxyy/SfctT8g2c3Ra7yFTSbpd4pKGTIY7gguRjrrVyD0p/u/Q/FujssVMeo2oJGn8kix2rrmnoHO0NxAK2yy6B41hUZNxme67j54F3yg/M1NfPqlxiyzR4Z/To1/4MuEYCz2OOdE77caPQ2nSurD5JA5KfWEsnmBxpDpoWEqHYceOVnPnQQaqsnEqNzXj6WvBbqarBbv++A4FlQYLf6d4aaJW/l+F1S7B7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by IA1PR11MB7248.namprd11.prod.outlook.com (2603:10b6:208:42c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.30; Thu, 16 May
 2024 17:12:51 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7587.028; Thu, 16 May 2024
 17:12:50 +0000
Message-ID: <e607d810-cd39-493b-bd98-841d2c78b135@intel.com>
Date: Thu, 16 May 2024 10:12:48 -0700
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <20240515160246.5181-1-larysa.zaremba@intel.com>
 <20240515160246.5181-4-larysa.zaremba@intel.com>
 <20240516082713.GC179178@kernel.org>
 <ZkXxVp3hFvczWr8r@lzaremba-mobl.ger.corp.intel.com>
 <20240516115942.GA443134@kernel.org>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240516115942.GA443134@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR02CA0014.namprd02.prod.outlook.com
 (2603:10b6:303:16d::29) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|IA1PR11MB7248:EE_
X-MS-Office365-Filtering-Correlation-Id: 3558f1fd-d16f-46b1-b8b4-08dc75cb6a98
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OXFYalFHSXVGSHQ3N1ZhSGJLcGM3d1JQWk9vQ0lTNTJ5RUV3cHVPRkNCYUsx?=
 =?utf-8?B?NW5Ma0hVeEs4L3BwNnNtL0V4Mkt6YlRWVksyeTd2aUlkYS9Qb3lIQVZQbUNu?=
 =?utf-8?B?Unk1bzRtZDg1NGVVODFDbk1OU0gxZmRGWmhDdEZxUWtHQThrOEdQWUtOUVp6?=
 =?utf-8?B?Nkh5RldYMU9EZnVJT3ZRSWh3aE9Kc1hMKzdNN3M0K3Q0bjRsVUNMbDNFNlcx?=
 =?utf-8?B?VGt3bHJVRUxsUkc3dDdXRFlVWHFPK3ZXbi8vd2QvM044bXBQREd2bmJhWEJa?=
 =?utf-8?B?VDRHRzFKSko5M3pXUXBJR0Fjek1SWlRwMVBvODN3WlJkeTI2MUV1SGhkTDcv?=
 =?utf-8?B?czg3NlNqUlc4QmtSSVI1ZXNadXRYWWJOZnpzQ1RtVjZWTEpoVVJYVFFINTdU?=
 =?utf-8?B?UVZSc1FKek5ka2hHWEVSYkI1VkhCc2pMeXBLNHdmY21RVk1NVkNoNG9oR0N3?=
 =?utf-8?B?SmxYSDdUenQ1OVRpWDd0ZU5kbTZFa2VCZWZ3NXN6b2dLYnVMZXpmOVFhTitt?=
 =?utf-8?B?RXI3cmtQbi8yR3FDZmxwd1lGNW1zOExjWWRSaGZIVjUrQmJCSU9lV1JHdmVv?=
 =?utf-8?B?Vm9sb0N5b3pVZHJ3QnY2M1VuQmRLSWV3dEFva0hsd0JWMTFtaS9TOFl6cWRu?=
 =?utf-8?B?U3NDT0hobXdFZTBFT1d6UXF0NTdvTUpOU3VBeDVsVUhIT1U2ekhpY2dnMEJX?=
 =?utf-8?B?Y3lQclQzTEZQTGdYdG8wMkpOVE5BTDRuSHRqeVlTeTRxZ2syN3kvWmhPYnd3?=
 =?utf-8?B?eTNTNUdDTysrRmF0aFQvNWdDZU1zOTFKRDlYYUcraDA5YlF1Tjdad2lMNTJR?=
 =?utf-8?B?bDFzY1NOTEdRVDRXcGNmSE1vdDl3VTNTUzdzTHNvMW9BNWp5UWQ0ejRSd01W?=
 =?utf-8?B?VFVWOXBha05sQ1M5VVQ5LzBVNmtyMHdkcDBEOXN2QUxnNjNwdDhLc3hrT3No?=
 =?utf-8?B?ZWlMdktRQXd1SENNMjVUTTFmZEh5YjVhSDQxZ0I2dkR1SjUwZmRjMnhkRXNn?=
 =?utf-8?B?ak5PUHM0dU1MS2xSTFdYQWFyYlMwTGFoOXlvemFiMnZrN24wNmREWFZiekNl?=
 =?utf-8?B?LzdHcmsveHF1MXFFMC9HVkJGbnY2RDJiMGZXZzJKMS9uNnJpUWl6M3FoQVlF?=
 =?utf-8?B?cGpIVmVHY05oWHBMRzh5dFpmcWFkLzJUR3h4clJwc1dyNEZjY2M2NURGWWRY?=
 =?utf-8?B?cGpDN0ZoU3VjaWhnSFZEbC8vbllaMWYycE4xMk81N1NKeG9abmtVeUhyYjY1?=
 =?utf-8?B?dlVnSWhDZkhudTFDWkxkRDdYRmxxQWRrT3pNRDJZaWQ2U04vUGRyNFhrMEwz?=
 =?utf-8?B?SkljNzhiY3UrVFUwV1lmWFFTVVkrVnV5WGtTRXFOdFpiVVFFbFRyZ0UrT0JM?=
 =?utf-8?B?OFcwaVA3Uzk0VGF2L2tPbnR0bHd2N2I1SEtyRmdCekl3UUZlMzBWbXhKS0FJ?=
 =?utf-8?B?aGoxYk55LzIwVG1tSDlZUU1xbjMvZUpBWC84LzNwTlE2VVFNbHNiSWxyN1dJ?=
 =?utf-8?B?UWI3YUg1bXRyWXJiRXNPWHRLVjhrdktTOTN4Y1JUVTc0eDU0dUFVc2ZjQVN5?=
 =?utf-8?B?ZS94OVJYNjQ2NU42MG9aN0FNN2F1U2FaOWtSN2N5WThSa0ZnekFOY3ljbVJi?=
 =?utf-8?B?Z2Jka3hURG5XZWhYaG95d1B4cXZ4Ni9BYWh3Y1F5MzJ5WVdwamI5R3k3OXRx?=
 =?utf-8?B?MVYycmxMK1BHbEYvR05iK0FlYTVadTlxRjVOS2RvTWhKT0xMdnNrSDhnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SjVKSE02MTh6cjZjdEZhRi9pRnRiVGJheEtRNjVGNzdyd3BQWjFYWmQ2R3pj?=
 =?utf-8?B?cThMbmxWUWoydnJjalRGNWlwd25MQjBtYjRERUxQK2pMY2gxUjhOaUQreVJu?=
 =?utf-8?B?T3BnVXpXcTNKVWFickNhUXJJZUJRY01KbnkvMjM4dHBWUFFWMCs1a3J2c1dS?=
 =?utf-8?B?bDhtUnMwMDV0UXVMcTE2MitXbm1oNHpXSXFScExYWDFjaDhCV0ZZUUNFWUNw?=
 =?utf-8?B?WTFVUjcyUmErNjlLMzU0NklQRVczUzdHOG5Uenh4WGlxM0RYa04rM3pEZ3J4?=
 =?utf-8?B?R0xIVmJuY1hETUI4eEpwbFlOVXQ4ODVabXZtRUlhd1dRMXlWK2ZrV0Vob3c4?=
 =?utf-8?B?RWRaUjlPOGxtY0ptait0QUpqaXpWK1VveFB2NFNkY3UwWFJFZCtPNi9HQkEr?=
 =?utf-8?B?S0hsMnU4UHo0VDJ3RnZFLzVSRVY2cHRFVUlGM0QvbU85VVdocmZLOGE5Z3VD?=
 =?utf-8?B?VHJyUSt3YndFM2R5SndJWEpRQkdxVlJBTHptbmFOMGt1TDJYNmFobndqcVhh?=
 =?utf-8?B?VHpwaXNIVStpbUFDa0RFQmJKcFlabHhCMHJiT0piSWd3a1pWUVAxd21POS9N?=
 =?utf-8?B?VkxTVU9XSkVobkJRb1pXanYrNkhSZGQ0cnRwRmdkWW0zVVJBTVl5RnNGOEpu?=
 =?utf-8?B?eEdqZzRDN2tpL2JaYnNnTzZjTFA0VnB6NG1iaFJaeVZpK3RnTEJyTi90UUVu?=
 =?utf-8?B?aGk1Nk82WitRNjFIZVl6ZlU5ZHlWbGdEWnNnZzFicmFZWkhCUDFNUjZ1SWdP?=
 =?utf-8?B?THJLaGVmL0VLSFRXUnl2WFczSHowaDFHZkVVbzFiZEp2Qk0vRXQ5MTdDQ2E5?=
 =?utf-8?B?ZGcrbzQvUmg5andSSWhCVWdIeVRsME1HOTdiU1FuN2RaN1Z0U2Zvd0FZY0Zx?=
 =?utf-8?B?M0RxMDdzZm9lQkVGRlJqU1lZV1QvNDRMYzI3bzZsc2FPMXNENmpCQk15V3Qv?=
 =?utf-8?B?c1pRSWVoZlVPV3RMMjZNcUJnL3VMNDNuNy9OZXdZSkRqc0Zpem1DcFBOMTBC?=
 =?utf-8?B?cm1CZ2dKbkdpdVZqKzZUMDJDQ2EvYjRMcmZnV2g4TC9GZ1p5Z3A2eFk3d2FY?=
 =?utf-8?B?cWNmWVN6c2w2Ymw4Z3EzNjdyTEFmc3F4cmJjQVpyTDlJNkVzTmNlTDNLd3Vl?=
 =?utf-8?B?cXplL0JlWDMrOW13bzFTOHkvWnd3b3QvMDNYbWtSVUVnZXZpRTlhQjllTmE3?=
 =?utf-8?B?KytJQ01pWTdsYVA2V2lPQ1FSQ2pmLzNUZ3ovSEpRdzE0WmFOZEVjejVJWGpE?=
 =?utf-8?B?ZUlyK2R1dTlEaThnbnp2LzA3d1Y2WnFtbDRRMzRHSGJlSFQrYWJVMCtySmhj?=
 =?utf-8?B?WHVOYlVuNkgyRXVDRmNucXBNckdqdStKOHArSDFnbitWOUZvdDhXNWM1WG4r?=
 =?utf-8?B?ejc3aGtscGYzOXJIVW1pVTVMMy93OGs3Ujh1S08vc0lEL085bkc0OWQ1dm5W?=
 =?utf-8?B?SE5XaTRmNWFYVHo0Qk1zZVB3aktrdlJIU0xaRXRWOTlQeEpieUVQVVBmQnRx?=
 =?utf-8?B?MUc0Q0p3VDdTZ2ExeXRZd1FRRlFuTm42VE1GL2pkVlg2ZUpMRXBMSmR1VXVB?=
 =?utf-8?B?SEl3UzdVZjZEN1A4MWtsanhQdVJLTTNRNi9uOEZCOVdkMXkzTzFqV0pVVUJY?=
 =?utf-8?B?VnRKYzRRdkZOVGxpK3E0cFpmS2xlSkoyU3RvMXBUOFFjNXpwRlRiQ1VieFg2?=
 =?utf-8?B?OWtuT25Ma2RVR2VhalBjR00xVUJnVEdQNk5PU1UxQmw2Y3E0cGlhWmJWd1p4?=
 =?utf-8?B?eG1WQWVqbkpQbFJxSk9SUUhWZjk4NFk5UzZpVjRVMXRoUUdIVE9kZVlMQWdw?=
 =?utf-8?B?WFR3dENKLzhlOWFQM2xlMVdaY0xONEZNUnpkNGRTbmNyU0tYcStZUytESWZi?=
 =?utf-8?B?QlVDZUp0TnhFcEZ1cTVNcHlGQ0FKdHBoTXpCNk1ITVZBaGQ0S1JpaldwM000?=
 =?utf-8?B?eVRyMnIxK1ZodVVMTU5MSm04eG5oUUUwa2s0L1MzTHlQcjRwWG8zYzA0YmpG?=
 =?utf-8?B?QUFpalVZZkk0WGVKeUdQTmVQQ1d2cVJadkZxVWRDSThQZHRhUjBBYmZtVGlq?=
 =?utf-8?B?V1lyN2tzaDNiSGhkeTBmcERoT2hid0VXSkdOY0N5NnVDbTQ0YlpLa1hLaFBI?=
 =?utf-8?B?aFF5V2QyL29pVnVKWVNxZDRidlE3ZW1ESXJtQmU0c1JtQkxBSUlkYlhEN25F?=
 =?utf-8?B?N1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3558f1fd-d16f-46b1-b8b4-08dc75cb6a98
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2024 17:12:50.7934 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x/X2MtVCd3LyHB8FblgfX4sTCgDt7rh5ve766B0Zx+nsByviVq7DcId2fKzRQByr4X+C4yp9/DZ+k92qY3W2QP3kvGXbiUwHpRxoGVDS5uI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7248
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715879576; x=1747415576;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=gDooI+yejZrBLsi4a7S2TiUmcbWlj9x2y4e316HbRRw=;
 b=BoDUgMlnNMaF4pPBg493h85+jJw91lYGYL/a43/VM2ZkTnJq8kt81x02
 vMOus2RbEbvex4xb1hrFDqeuNl+1jh2NVqauckHmnn9wUytYh+cCh5+0I
 9S1+DUpuxJaV8KzKw1O+pGFtmE+VQTDyBWRw+o6l3lkgAtECtKFiYsB91
 20ny9TdHss3zt29JYOfHpojwMcSyu1upOBokjX984CpSTzY42mu7PXs85
 HwxP2GlNvc381OD8lbN7SXoL306s0YTWmVMaD7RHStkQ9Ro6WF+3p+wmn
 Qq2lJ11Tyqa7Ci5VvnHKypRY+mMqwaGpG2QwFg1FhLdYO9uJznrMoTzZN
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BoDUgMln
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: map XDP queues to
 vectors in ice_vsi_map_rings_to_vectors()
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/16/2024 4:59 AM, Simon Horman wrote:
> On Thu, May 16, 2024 at 01:43:18PM +0200, Larysa Zaremba wrote:
>> On Thu, May 16, 2024 at 09:27:13AM +0100, Simon Horman wrote:
>>> On Wed, May 15, 2024 at 06:02:16PM +0200, Larysa Zaremba wrote:
>>>> ice_pf_dcb_recfg() re-maps queues to vectors with
>>>> ice_vsi_map_rings_to_vectors(), which does not restore the previous
>>>> state for XDP queues. This leads to no AF_XDP traffic after rebuild.
>>>>
>>>> Map XDP queues to vectors in ice_vsi_map_rings_to_vectors().
>>>> Also, move the code around, so XDP queues are mapped independently only
>>>> through .ndo_bpf().
>>>
>>> Hi Larysa,
>>>
>>> I take it the last sentence refers to the placement of ice_map_xdp_rings()
>>> in ice_prepare_xdp_rings() after rather than before the
>>> (cfg_type == ICE_XDP_CFG_PART) condition.
>>>
>>> If so, I see that it is a small change. But I do wonder if it is separate
>>> from fixing the issue described in the first paragraph. And thus would
>>> be better as a separate patch.
>>
>> This is not neccessary for the fix to work, but I think this is intergral to
>> making the change properly. I mean, before the change in the rebuild path we map
>> XDP rings to vectors only once and after the change we do this only once, just
>> previously it was in ice_prepare_xdp_rings() and now it is in
>> ice_vsi_map_rings_to_vectors().
>>
>>>
>>> Also, (I'm raising a separate issue :) breaking out logic into
>>> ice_xdp_ring_from_qid() seems very nice.  But I wonder if this ought to be
>>> part of a cleanup-patch for 'iwl' rather than a fixes patch for 'iwl-next'.
>>>
>>
>> I have separated this into a separate function, because 2 lines exceeded 80 
>> characters, which is not in line with our current style for drivers.
>> And I do not think that this small function creates any more additional 
>> potentian applying problems for this patch. And the change is small enough to 
>> see that the logic stays the same.
>>
>>> OTOH, I do see that breaking out ice_map_xdp_rings() makes sense in the
>>> context of this fix as the same logic is to be called in two places.
>>>
>>> Splitting patches aside, the resulting code looks good to me.
>>>
>>> ...
> 
> Hi Larysa,
> 
> Thanks for your explanation, this all seems reasonable to me.
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> 

Makes sense to me. With the context that it helps ensure we get the fix
right, we should send it together to net.

Thanks,
Jake
