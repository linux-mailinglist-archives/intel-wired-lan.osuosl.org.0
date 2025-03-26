Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BE2A71CCC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Mar 2025 18:15:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 948C58117B;
	Wed, 26 Mar 2025 17:15:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9myzEz42uXEn; Wed, 26 Mar 2025 17:15:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD44880F6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743009329;
	bh=gq13Eid1elbyPfdLKRJcKvhuzWwfzUgh/Ty1zyr0Vec=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1jRRTz//z7wIxp+9iao+Sbzxaxg1GmSwLTGVnYWO1kk511Fhir+W2i53P2Ckc8gZh
	 CbVAyXKYfpxZUev7XgqFec/zfGr0Q4oc1cSU5WU69B/YPr+Tj4FcIPAuRQwlZMc6XG
	 mHJyJ9cySvhz7zRsOd9z5QO8yUjpwmmSQWLaYystgMfKwpCdWklrzbs5owTeqOAkAO
	 Gt5ZHfT8VtxtJh0Sb71I2/vq7EECpSrpLTNnta6zp+TfZH7diyrPh5BynhtQPpzHm2
	 4D0X3eMRo0Yg/hILSl7Pb7tpS1KOGyoKAVdwt9L9awos3Ourm+84Br5DCVkWUKw7hD
	 fEoqYaB31EQ6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD44880F6C;
	Wed, 26 Mar 2025 17:15:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 224C5E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Mar 2025 17:15:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 144456156F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Mar 2025 17:15:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8Sgw-qqsHpGK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Mar 2025 17:15:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 61FE7612BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 61FE7612BE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 61FE7612BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Mar 2025 17:15:27 +0000 (UTC)
X-CSE-ConnectionGUID: wSJHO9Z1SG+qi7F9qm2YXw==
X-CSE-MsgGUID: P3m5VoxzSB6igcKXrcAkRw==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="31917450"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="31917450"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 10:15:22 -0700
X-CSE-ConnectionGUID: I4uIXqY/Q+Wq/K+lwbSaRA==
X-CSE-MsgGUID: uW+UoPaVSdSNSMTQAxzM7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="124809985"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2025 10:15:21 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 26 Mar 2025 10:15:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 26 Mar 2025 10:15:20 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 26 Mar 2025 10:15:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hG0QR2yTyJvPWOAQkCiYstJUtaxnXzgQqCQIkdycFam0lxy7HEFRGBSUsqnlFBhOi8j3lBygqoSGMQCOuNDNx0MsEG+9qk9zCpxUIit5Md9ht/V8cxDiQnXhlVMnbyb1YZgJgj6TUz9Q3aHZynZ6WK7RQmikHunKop74b7cdGYK6tG4fageINjlR4UgTSgXzXhj8dMAT4w/2uGWS148TQoS2xq9bba9g+Mp9F0yFxquc0BCuENgW3ZfY9+qjUl3xlUdIoXkI3RiaoEfyeHrVKq6Bz9DHLsYk0hQM4Otir8c/M6v/U1XwhnY0IGE+yrkCdxkbDsXsNxFnEoVoihWtkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gq13Eid1elbyPfdLKRJcKvhuzWwfzUgh/Ty1zyr0Vec=;
 b=ImU8NtlXpcd29MESISbqoEF2Mfh2ZdjHvaEAvMc01iPO17o9ERMAUNAY79Bnkj8p01QUGTcsjkl+m2nNrhj5Y3PX372QyfZ587Ym6+6V/Gl6wP4dxUbmV2OVD2HkxUzuf99PcUROT2vu6lAFRF20Bjf5UbzQWLer6OtqhOTNp2qbDlrdelCNH5BQfq7QwOS1e0PalK8MWapsqkq4dKAcx/TlUhqdZJRacT6u6VVD3108if8U5plKFcak46rwkcXDAvDa3PnM1hDCphU/UOhLAHAtgmFZhRLAPkf7vmVtVoSf/+cxhto9ArbYrHb0X+LF0Maw/a/zX/V0k5JFCgLzqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV8PR11MB8722.namprd11.prod.outlook.com (2603:10b6:408:207::12)
 by PH7PR11MB7608.namprd11.prod.outlook.com (2603:10b6:510:269::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Wed, 26 Mar
 2025 17:15:02 +0000
Received: from LV8PR11MB8722.namprd11.prod.outlook.com
 ([fe80::314a:7f31:dfd4:694c]) by LV8PR11MB8722.namprd11.prod.outlook.com
 ([fe80::314a:7f31:dfd4:694c%7]) with mapi id 15.20.8534.043; Wed, 26 Mar 2025
 17:15:02 +0000
Message-ID: <452e0969-9811-4853-86e0-ce1be0b848c9@intel.com>
Date: Wed, 26 Mar 2025 18:14:58 +0100
User-Agent: Mozilla Thunderbird
To: Ahmed Zaki <ahmed.zaki@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <przemyslaw.kitszel@intel.com>, <anthony.l.nguyen@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <almasrymina@google.com>,
 <willemb@google.com>
References: <20250324134939.253647-1-ahmed.zaki@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20250324134939.253647-1-ahmed.zaki@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0008.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::21) To LV8PR11MB8722.namprd11.prod.outlook.com
 (2603:10b6:408:207::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8722:EE_|PH7PR11MB7608:EE_
X-MS-Office365-Filtering-Correlation-Id: 525aa51e-edbe-4e6f-533b-08dd6c89be6f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UnA0UXU0cnMwdlFQN2RrZ1lvaVdQaEpBSDFZaEV1b2RjemV2enNKMFhzM08y?=
 =?utf-8?B?MG1MSDFKejNuMW5tWWc0SUZJWjFZd2tCMHFGSXU4U3RSM0Uvd3BocWEweEFh?=
 =?utf-8?B?bXZNVUUyOHlHdDNFbFNGYys5WTBENUEyWkxzdWlvdWw2OGdhZ2F2SzJBckx0?=
 =?utf-8?B?eER0QzQ4MFdxRENuSWkyYzNiVnlIUC9JZDFSWHQxSmVQeTdCdGhRNU5FUXd1?=
 =?utf-8?B?R2xSQzhEeHZxbXZ5ME84WTJIMHcrZGd6MFgyUG9UY293aEd0WWRrbkgyRnd3?=
 =?utf-8?B?aWthOTkzS1o0WjI2TVdvbzRjeGd6LzVhK2krc0QrS1JtQ1VUaEpUVXpjMHlZ?=
 =?utf-8?B?NkZHeDBHcG1jWE1ieGpFTm13YVRieENZTTlQb1ZzMkJlTDZDQzN5SDRmNFUz?=
 =?utf-8?B?VDErN3o0WmZpRE95dVZLUEI3ankzY25kZkFjQXl5UjloSUZxUDVERURYcXNU?=
 =?utf-8?B?bUhXMVB5L0syRFBtMm9UL3RXT2ZwUVJnMm1QWUUwbXUyZDRvYUVPRmZKc1VT?=
 =?utf-8?B?LzFOR0djcmRjK2lhKzIvNFIyVTdQV3Mvb3d0bG84d2todWhRS2hxM1BEdkVp?=
 =?utf-8?B?THdncm10SE96T3pFaXBnVHhSWXArY1JjeXhlSDkrZlNmejBTYmJSKzMwcUZ0?=
 =?utf-8?B?YmZjbG1ERVFBUXRUYk5KVXRWcGVjOWlESmNFWmt6UGJOZHc4YUhEU1pZU0N1?=
 =?utf-8?B?QzhlVnR4YVpTemZRT1V4enA5bkxnaDd4cE5qbXgya3VwYkg1WG54TzdRZ2FL?=
 =?utf-8?B?elZwcC9tMDFGbUh4WjVrRWVaWUhCUElPT2ZEUzR1WTRGdmMrZkRHSzhYN01Z?=
 =?utf-8?B?R2dQNDdvVWVrMXFXMEt6cFJnYVFRU2x1azd6WkswZGwrRVpHZlZ1MjFrV09z?=
 =?utf-8?B?a25LR3lTVVNzaVlzK2ozMjFvUWpURTlZMlQ2c3FDNjRrdFY5WFZNYzUzcVNr?=
 =?utf-8?B?c2xaWHlnenNKVWdTZTBzTFkwRENmMHVqdmJwYWc4dEllczhLN0JreWdtSzE2?=
 =?utf-8?B?YWZRZ01BT0g1ck1PTjJoT0tTbkVMUXBsMlNhakpxUHhBTG5sQTkzeVV0ZytD?=
 =?utf-8?B?cjVCK2VSYWovSFBJa1hvUm9oSUVBSkxOWXczSURscU9iUGlRV3FOL1RuNzA2?=
 =?utf-8?B?UVR5VGx3S0ZDSWd5amRsSndQcU44SmtvS08yV3FLSmsyWWdWYSs2YndKdzJh?=
 =?utf-8?B?cElJZS9mV1pEVExiWE83Z3pCODdKY1B2WHRIN09LS29PMWNLelZuamNpMnA0?=
 =?utf-8?B?YjM5S3ovQWYrd2VaajVXL0p6aXdKY3ZPbTcvM2tKOWVtZHIwMEwxM3E5a2VI?=
 =?utf-8?B?KzFhd2x0elVDQ1FQL3NLa1NJSkRITm5UcENUTFhheXYzRDl6a3RtMjZybUZl?=
 =?utf-8?B?STVPc1k2V0xMTE5EVTIwN3dldCtYOFd4amlySTdBMVQ2TW85Vit3R2hQdkh4?=
 =?utf-8?B?aEZwTUh3VzVOT0NxYk8reGRmU20vWUpBYVh6RVdoZHZMVnc1YjRsTmpaa3RN?=
 =?utf-8?B?LzFUbHB0Yk5heXgybXprMFlkTytkYTF2Q0F3TTJoYVNwMExrV1l5M2U5bTFv?=
 =?utf-8?B?am9yVmxZRUFhUUxLTld2RmxsUEhEZnpBN0prZXY4dFNpNi8vR09iWXZqTDZs?=
 =?utf-8?B?aGhDQm1aS09SSjA5Q29ITHU5RlRZNnRFTGxWRWJFeVBrc1lNc1FMSWp0LzA2?=
 =?utf-8?B?MXhyNmFLNmJzdTZiQkFUeVZiWGNmM1B4bFJlZDM5cnNmcnBhZGR4clRzUzZp?=
 =?utf-8?B?V3I0L0JZY2J2YUhmeVpPWG9WM2Z4UGd6TXhrMkR6TlpybTMrcWk0VWtZcmQ0?=
 =?utf-8?B?QmRCQnRlaEdKajc3VGt1eVRiZnpyMTNtMlozbStWZlQ3QjN1cjc3UDllcElk?=
 =?utf-8?Q?A298QfXOfeqLH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8722.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UVQ4c2xPM3pqZjFNdVVnZmxScHM4SHBidUt4UUZFZCtIcFdtMmVBL1lMMFd3?=
 =?utf-8?B?bTgvZGZ6RUFDZDA0cVdYL0N2Q1BOR1g0ZWhrakVwTGdicUFzVEpBZnh2M3Zp?=
 =?utf-8?B?TDVXclNXeGN5TjlrNmpqTXJOZzRpeFFNS1p4YkoxbTZJZDNLTm85Q1YxNzNv?=
 =?utf-8?B?aUhzeXZxWUg1UDJNQkszZ3Z2Z1lSSE50V0YwY2U2WllxamsxbEx4ZGtBeFNa?=
 =?utf-8?B?MGJoeUJDM1RDNjBmOVBrZFNDcmhqZVlyTWhyZUNoQUxlUWp5MW5FRGFwQXJM?=
 =?utf-8?B?T3VaTmh6OTNwbWt3S2psYVlVU1VuSTZqOW9SNHpZTWpGZ2phUGw1QUpzanNB?=
 =?utf-8?B?d0cwUTdkc3c1TWtlOXYzS3JFdU5zU2FWL044TTIyZkVPWDByS1QzRTgrT202?=
 =?utf-8?B?bWs0R3Rkcm9SeUZIWWhySzhvaXV4ZlpHdldEdmlwWDN5aFZUemMreklaanBq?=
 =?utf-8?B?aXJ2NVNRZ3lFZzVTdDlBb1BZdUQ1bGhBR05hdmNaL0dFb2gzUlBVeXpoWld3?=
 =?utf-8?B?ZFJ6SWRodm9KblFLa2JpRFovRW1kVDVFbjZDb0p2MSsvWTBOWDNvOWVzOWE5?=
 =?utf-8?B?dGYxWUNDcUIxTEZQcmVLVTFtSm13Q3BMd0JjUXdTdzZJWnVlbFEvSGxaQ3RS?=
 =?utf-8?B?c251OFV2Tm1RQnQzL2xWV3dDZWlkVFU4Wmh3SmdnV0MxN3RZM1VGeEhWQ0NX?=
 =?utf-8?B?MEMyQkswcE9FSmNsSmlXNjVQLytLcGFMRXlzTVljZEo4a2NzeUlheHE3dEcr?=
 =?utf-8?B?UkFBcjN3V3ExazFneG9IUVlBaUJ0L0grUlBQSlNybGo4QmxNWllMb0M2Ukla?=
 =?utf-8?B?RTZ3K2EwL09LNHJESUlhY291eGkzaFR6bUwrdkQ4d1RYWEpVU2pGNlk1TzdB?=
 =?utf-8?B?ZVFtaXVDUUhxZDJmYmlQVzE4YTMrRnlucjVJMWFhNWhsRGpJVE5CMFo3RnF1?=
 =?utf-8?B?YVZ2dVBwZVl0UmM5dGg0eDJSZFZXUERvVzhyUzlid2xDM1UyN3U5OW12RjI1?=
 =?utf-8?B?MG5INzYyOTlGV3pOY0tCL0FVWHNhYmtkS0Voc3lpNTFaOGRpZjZzb1llb0M1?=
 =?utf-8?B?N2lLVFBBSnMzNDVtcWs2bG5lWVFNdHVTTkNzdHVRUnkxNU9UVWxIelZmMVo1?=
 =?utf-8?B?OGJTem5MZ0M0amxWZ0FxT1pydGxjU0lydDVlMzNCeitJTThCcGVLRUU3YS9r?=
 =?utf-8?B?ZTM5S3VBcTlsTXlTbFNEZTY5VEpsZXVaU25Vdm5JSEd1NGZUMXhnckFoNDBU?=
 =?utf-8?B?YkVmQUpOL1VNVVFqdGJxYVlZcENpcEhrSWxGYjNmMTJORjRwWlIwb2RNL0Q5?=
 =?utf-8?B?VEVRRnF0ckViN0tpWVk0U3h2c0VibGxjdFlvamtvMWR1cEFPb3VVUWN0VXN4?=
 =?utf-8?B?WFJYRDYrdHVZMTRjNjFaM3RqL1hMemhRZm82ckg3aytCR3NhKy93QWEybUNC?=
 =?utf-8?B?UW1Lbnd3MlBqUWlRSHVkY04yTE5ZZnYxWC9Pbzl1eVhrbFdQQzg5azhMcWY0?=
 =?utf-8?B?Y29BODRwelRCRHo3K1RVcUdMNUt5enVkQ08zeDMwNm5mMlY5ZFkzS0tPUXVJ?=
 =?utf-8?B?T2g1VnhoYVRZWjI3clV3V1pZWit4QnFkZ2M4dnJKNVNLdHRKc2xHMUxhdWtq?=
 =?utf-8?B?VUdncEd1ay9xaGpzcWRlMVFQOW42alBCcmlXbks1bnE2alZadlBBVVFDaCtx?=
 =?utf-8?B?NFp3c09xR0thTkFidXI3ZjJLNHV4YWE5bEtoWUQ4NVVhM0lNQkpDNU5oZWFl?=
 =?utf-8?B?dUxUUU1QUWNESUlxMFIzenkxOERBWWxsSFhhS0hIem5ZaUxxWS9UTzh0Ym1X?=
 =?utf-8?B?UXl4TkF5eFFiTVMrbFNnRGZPYk0yeUJ6SFdQS25vMk5CYTJYRU4vMHBTd3dY?=
 =?utf-8?B?UzZUS2FzdlFkRUlJODhZdDgyaUNKcEV5ZXJPMDNhOGJ6WXZKQmFvVHc4dFVr?=
 =?utf-8?B?Q09wajYwb0ZkNUgrMXgrM2FIcmZRUTZKcFF3YXdweDdKMEZPUmlNOFhZcWQy?=
 =?utf-8?B?K0VjMnFmNnROSktuYm1hWUhoT1ZjRk9XcXNCT0kvM3pTbEpGVEpzUXU1bkVF?=
 =?utf-8?B?OEdpUWJoQ2U4bzk1NUFGSmR3NjVxdFhXYW90amV2bkpDdTcybHdLanhtZVk0?=
 =?utf-8?B?LzZzVWk1c21WV2wvaFJzNWdPcHlxWkN0UHhIYWlvcmNNWFM5eGNENXNrUVZp?=
 =?utf-8?B?TFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 525aa51e-edbe-4e6f-533b-08dd6c89be6f
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8722.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2025 17:15:02.0034 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6oMOxHxLnU8Flwo2Sw002OLE8JZ6uSiqq+eRMc1DHsT4UntJlLV+dTHU/M9Cf45i2FNTgFMDYmEZvRdA161QXRJkEWQQKga3wuXEyd+RLxo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7608
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743009327; x=1774545327;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vUacGhkAsktPTwIjGl02f9aIt1snQO4ZdPERNoyavkw=;
 b=asU4fOgot7nLuZlWwJj6tmnvo0S+J/g/1J20k/MABKqTsyn3jxrvAtVM
 vIhzN+sS+ne3j5R/y0MTnnjk84nlfuUVgaV+HbJwskKC/bV8IRZt/rkUQ
 F+wPnTiEbHjpo8wIO5e2SSrW6sJoc/IpuA6qzMNgb/K99uBF0e2r70TdF
 uVt+E/Pz6mPDUUybbsOgd+CFhXcaEyKfG108w4IAsuRckOcGmTUBy0yRv
 hG7mJlnD5GBqsJs12TKv1rFJrIkG6UwLkWjpRy/R1ws91+rAxEAlRP0r8
 lLWCewT1dXKV1XrvC+ahapZ78ot4TjN5hVoj8DISMcDDXyPIMuLYKVkec
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=asU4fOgo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/2] idpf: add flow steering
 support
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

From: Ahmed Zaki <ahmed.zaki@intel.com>
Date: Mon, 24 Mar 2025 07:49:36 -0600

> Add basic flow steering. For now, we support IPv4 and TCP/UDP only.

1. Very poor cover letter. I'd suggest describing a bit more here.
2. net-next is closed, so this is RFC at max.
3. I haven't seen this reviewed properly on our internal ML.

> 
> Ahmed Zaki (1):
>   idpf: add flow steering support
> 
> Sudheer Mogilappagari (1):
>   virtchnl2: add flow steering support
> 
>  drivers/net/ethernet/intel/idpf/idpf.h        |  14 +
>  .../net/ethernet/intel/idpf/idpf_ethtool.c    | 297 +++++++++++++++++-
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    |   6 +
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 104 ++++++
>  .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   6 +
>  drivers/net/ethernet/intel/idpf/virtchnl2.h   | 233 +++++++++++++-
>  6 files changed, 650 insertions(+), 10 deletions(-)

Thanks,
Olek
