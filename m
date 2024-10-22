Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 821B79AB803
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 22:53:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A96E403BE;
	Tue, 22 Oct 2024 20:53:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4LyJPqFVgL5B; Tue, 22 Oct 2024 20:53:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E08DA403C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729630395;
	bh=oVhUMEKn0qQc1mdWC2+vpGYi8B4pfk+HCVPb3/u15Mk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=S3ptUpUEkdAc/t728Kpr6jQUfLqd/fdUt5gJkph4Ah7EVtrDBhtUmQflGX0bZyH0g
	 ML2loUlLYAPErpQna3BGrKv1wvby1AnuS3YwQGMTSlRgf9FWtaAIFeMraSnP9RPSen
	 1lANzCvhBI0Dgud8tit56KEkrkKNXE3/GM/9ig1TkKJ3UHl9ywbGu5mEUdOsyPTluL
	 Tbs8x70lw1HKlYwIr5gKOGv8pifdJHlpC/awa7ndZg8rrBf9sL3/aUy1H2be+uAp26
	 a1uNtQcmvAdI8zFZBy4awuL/KsakIvvsMKfAfi30jjpI3YioJ71X3HhJM0Y8+oP75Z
	 bfyoijmNWIdYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E08DA403C3;
	Tue, 22 Oct 2024 20:53:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4253A59F4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 20:53:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 239AB80C1B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 20:53:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g461mxCst9QF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 20:53:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4D67F80AFC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D67F80AFC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4D67F80AFC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 20:53:12 +0000 (UTC)
X-CSE-ConnectionGUID: PAbuhYvvQUKV3pTdAlzhmw==
X-CSE-MsgGUID: 0ItgdPuKQ1SWeRIi7umm0Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="29085584"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="29085584"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 13:53:11 -0700
X-CSE-ConnectionGUID: HDg2X9UjTlub4gy8hQf4zw==
X-CSE-MsgGUID: BgwZDtpiR663Barh/GeA5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="80169615"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 13:53:11 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 13:53:11 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 13:53:11 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 13:53:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FOF1CrfEZ0HQcWcKmf8wEDDsQ6Z1KKk4oruMkAHysnrYEWAMxrhLlpPrQq5LpxIthzw+yd9SjfAvyd2auOxfTYNA5/SRTv1KiTSUrLF9jOjkrdzIGQHjaYNIPxdCXwZWj/P3qYFHXrgxT0FzI9VKWp4OEb3mG+SUuZBgPWoPku1acNEHpnimcTOH95zAcKl81k2hozb1rNmy2gh2zMUfMJ07DiGpdt/I8yyUO4Mm5/YWqJCL44xXUA4uc83ymax0DyhBZCBh/I6iBrsP7f6zsJVr7cd4V3kR3oqglQ24jZPMoD5PDwQtL73Uuc/YHMs9gOv61hdCGcZ6qOrJWGhhUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oVhUMEKn0qQc1mdWC2+vpGYi8B4pfk+HCVPb3/u15Mk=;
 b=bLopylPVNihNeXsEcVB+KneEEn+CB4TNBCyUVGjvuR3+OrkP9/1ZquFlydAoYkSkluRTllRBcceT0AEyvYRDcOHC+jWIdHEgMGoXq1KuS1uSbMlW1dswCziEX+eKs7sYlK4y1HuknhPcOfbIwFls36a4Cs60QK0QvPKeTkA95CQ8qCZv1NMCyjYO396VHKX0QI3f8XRmmwaxFt3Pf7Ri6+qLi7gZboYwgzOLqQy9dEPKJ0QvmRISdwcmiLpP8SG2CSKW7iSLPB60yrzORQpQji7rK6yTmVswaX46ZbSnnQiS7fd53A3lu44+cS8gRUv19A50cldBFbCN8Hmj394x4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH0PR11MB5928.namprd11.prod.outlook.com (2603:10b6:510:144::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.29; Tue, 22 Oct
 2024 20:53:05 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8069.027; Tue, 22 Oct 2024
 20:53:04 +0000
Message-ID: <40242f59-139a-4b45-8949-1210039f881b@intel.com>
Date: Tue, 22 Oct 2024 13:53:01 -0700
User-Agent: Mozilla Thunderbird
To: Joe Damato <jdamato@fastly.com>, <netdev@vger.kernel.org>,
 <kurt@linutronix.de>, <vinicius.gomes@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 "Jesper Dangaard Brouer" <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, "moderated list:INTEL ETHERNET DRIVERS"
 <intel-wired-lan@lists.osuosl.org>, open list <linux-kernel@vger.kernel.org>, 
 "open list:XDP (eXpress Data Path)" <bpf@vger.kernel.org>
References: <20241018171343.314835-1-jdamato@fastly.com>
 <20241018171343.314835-3-jdamato@fastly.com> <ZxgK5jsCn5VmKKrH@LQ3V64L9R2>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <ZxgK5jsCn5VmKKrH@LQ3V64L9R2>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR05CA0069.namprd05.prod.outlook.com
 (2603:10b6:a03:74::46) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH0PR11MB5928:EE_
X-MS-Office365-Filtering-Correlation-Id: c4c612cb-7a8f-4206-1558-08dcf2db8614
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d2tRN1BSQU5DN1gyZEErZE9FNnpOcmRhWi9FWThHb0RVTEpnbzZmN3IwUkkw?=
 =?utf-8?B?bDF1U3VoUHRxa0Q2TXF5cDZyVUozbjc2am9YM1NhYWJTbS9TR2xJaUlpdlRT?=
 =?utf-8?B?c3hpRDYyTGVsbkh0emdwVExLZmdhZldVZjFveTIzMWZtUXVvUXljSDNSWFdP?=
 =?utf-8?B?eDVmRWNkRWNodVZrQnY2SmxKd3UwOEF0MWJyQUhJano3cjZzVXZsTHZrcUs0?=
 =?utf-8?B?MDFwdDQ5U2lpQVhZc0RXczhPQ1JVc05JblR0MlRTaEcwbXB3d2ZDakdzMjJX?=
 =?utf-8?B?bUp4andmZVpTZTJHMjc5ZVR6Zi94eHR5MDY4Z2dWMDZXeHRTMWtnRFYzcVk2?=
 =?utf-8?B?YXlDdFlPQnlaQ2VpejhRU3o0VHZjTmFDZWRWS2swbm9JYmRXbVhjR2JKb1ow?=
 =?utf-8?B?b2QrQUpEUnlaNnhjNExiSktoSGFoZmJ6eUZ1bDE5Tkx3RFJYSEtTOU5TdjQ0?=
 =?utf-8?B?ZjVEZHAybnhTNXRBV1ZZZmlmbnVKejl6OGJidUtkT2ZqdnhFNXlQdE9qZlhx?=
 =?utf-8?B?KzNINytMc2k4M1VReWFmalpVcHk5REszK2N4UHZoeHd0bjNWR3ZURTRLVnA0?=
 =?utf-8?B?dnBlTkxDTExKYU1XYTFTb1FaenU0ZkNFRXpOK09UbWVpM0IzVis2M01VMUZ4?=
 =?utf-8?B?OEhWY0gySk9MM1hyVDVmd2ZGcTFwZnl3RGpVWXBTdXVOOWVWQVcvMmZPWUMr?=
 =?utf-8?B?YTZ2bUFlanRIMmFTRDRwcmd1UFpUcHV3MGpHaTZPSW01UnFUdkZhOElWa2FL?=
 =?utf-8?B?VkYwSHBLb0hMazYvQnM5VWJsZ3Ivc0x4eU9QQVZtSFdzcis5Q3pwYnhMMGE4?=
 =?utf-8?B?Mjg1dkJFWnB3c1BXOVBLN0l6bGhEdnN6SE45bEgreHArMHlmRmtjQVAzbFI0?=
 =?utf-8?B?aHpVZFgyeVlkZUQ2Qk5mZVJ0cEF2UmRhMjI0LzdBRWJuY1lORC9EUVcyQzgx?=
 =?utf-8?B?MlNiZU5wMkJIaWxIQ0dOeFdVWGRWSTE1c0xzcElkMUdxTHRKR25QYVAwWm94?=
 =?utf-8?B?N1h3OWphWGZTYnpVUHI3S1ExTmhKYkpYZUVQRFRtTGdQLy9EZ2ZMeEYzVUhH?=
 =?utf-8?B?eUY0T1pWMmY2bjRpTW1Mcmc0MDlEcFlTc0R1Tmt1K0plb2paOTVYY1VndGNH?=
 =?utf-8?B?MkJSSUFEQkF0bGZKb2pGRXBjN0xWdEE0QThidHR5bzBzMy9tNzRlWGhCQjNF?=
 =?utf-8?B?d28vRUlHalJBTWdCQjZFajdzNFA4WG1PS3NXQlpGMlZNeFA2UmlRU3ExTlFw?=
 =?utf-8?B?QW41cFhkYmlRNjhTNVMrVWtGeWh5NElzMnRyVWk5MUFlWEhNRkhmNjBSV1N3?=
 =?utf-8?B?S254dFI0Z1lVTjBQSmhOSGk4N3dtMDlRTlpMSkNOZnpBTkVGZm1NOFpQV2w3?=
 =?utf-8?B?aWRzZllDQkh6bjJ3WlM3cHN2SnJHcVN1a25sRGd1elU5TS9hakJnelNaODhw?=
 =?utf-8?B?ZHFkcG8wRk5BU0JNSjJlaGpYeW1GSlBRS2FYWXI0bHUrMFJxVThYTE94Qnhi?=
 =?utf-8?B?K2N5aVhQcXJLTnQ3c3R4Sy84QXNhZ2hodzAycm9yZkVrNDZlcmEwd1RrUXM1?=
 =?utf-8?B?VHd3M1pjSDRXV0FQenlzdzcxa0M4MDI0ZDM1MHB5ZW5BblFyZnFCQVE3SXBj?=
 =?utf-8?B?bXZXcW80N2tEaEo0TDhBTUhYMTNhUVIySmlQSWFSN2pBNUFYZXowd1JPUzRm?=
 =?utf-8?B?OGoydVJvNnhML0NjV2gzNFhOVmMrUk96TVFTN2xGVlk5a00xaDJVMEt3QTVk?=
 =?utf-8?B?c1FrWFhCaXZjWWQxMTdNdXkxL29vbnRvSVJLZTk3ZGtqOU9LVE04Q0NVMDVH?=
 =?utf-8?Q?tVTZBYZvGZprAUnKq44TuXeCmcQDVVhXp+dK4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TmNBaFFTa04zVDZhMXhYSGY2RWFiSGxIYkJnc0daTjBPWDlJcHZqQ3JCSnRh?=
 =?utf-8?B?TFc0WkhvTFMwbHlVM0M0cU5UdzVyOEIxK2FTSjJUMHBUbVZNbFlPUE0yS00z?=
 =?utf-8?B?K2piaVRGTmdJNzFDVGtsQmxvVVp2NTVsSFJYZnJQcVFjVDJtSURFTWd2VEJi?=
 =?utf-8?B?WXM1TUpoYWh1TVZESXplUkdvZnRtT3g2SzRPa0syQ2VCRFdQUHlZRFZBNHVR?=
 =?utf-8?B?NlRockl5MFlRUTJMNVpFU1B4Z3NhVUVPeHpWNElZQTNLblRUU3ZuZklWRTVV?=
 =?utf-8?B?RWtIUzh6cmYxNmFSRVBrbUpqQVdSb1JwOVU2VGZHMk5DQWlrekFYS3BINkUz?=
 =?utf-8?B?Y3hHbVhhbzNJMHhNM2hJODQ3Yllxbmd1YVdPbVNjWXJIYzZsdDhLNnQ1R3dv?=
 =?utf-8?B?c3RteWd4RVprcWFaSkFSaFFnbGFWeE5VcktWL2d5MWJ1eFpJV1ZQb1QxT2tF?=
 =?utf-8?B?MERsTHkrRFl2ZlZ2cnJnUENKSVE3TzBtaDhzTnZDY1RSVCtnT0J1NTdkWVJk?=
 =?utf-8?B?VkovMjdkOHB6TXlFL2VnYW1ucHg3a01EUk9UUzlwWUQ5U2JuV082eGNkekRa?=
 =?utf-8?B?aDRIVHJIcDErTmRKYjZDMm9JRjVhV2x5Sno0cU9CWm1URHljbThuUUx4dGRh?=
 =?utf-8?B?elNhdnFZTjZEUXdUaDR4SkZmb1F0dzlxL3lmeGt5Mmd5SFo5YjJzZHJkWGF0?=
 =?utf-8?B?NG15bmliWW9BaW5URUIxd0Zyc2F3OUpGRFh5ek8zNm85Q25TNGt5NGV2ZkFs?=
 =?utf-8?B?QnZ3OG9GYW51SmJEZ1NDTmJTUlhiNEMvVk1zY3ZoemtzMHJSemxWZnJMUU9w?=
 =?utf-8?B?TWozT3R1V0dDMDRxY0pIWkhyZ2l0RjBVdHVHNWtVQVZkcEljZWIwYkhEVlF5?=
 =?utf-8?B?bTRBRGRHL2Q0SzVuaEJ1cVprR3Vva0NtLzMrN1Y3cWZtbDg4cGJ6UHY1MkFV?=
 =?utf-8?B?U3ZOT1FlZGtQdE5qb21kOEZZazdIcnhlSVpxaHFVL0xWZHFrOUV5Sm1hTlZh?=
 =?utf-8?B?TDNUR3BwT21XRzBSZXU1a3Zia3dwQnNnYXJvd1ZocXNHdlpxWDNRR25jcVJz?=
 =?utf-8?B?aVFzTDdQdnlIRUdNRHgxY1psbWQrN2tISzhwbis1ZmNlWFF6MDRHQnE1QVR3?=
 =?utf-8?B?THN3Y1NlbWs3Nm9uQ1lKVTF1M0g0QkRCc28zRjRYYkpyMkgrbnBQNTVNWUJS?=
 =?utf-8?B?QmErRnNzeWU5RjlBRU1ON1ZUNk03S0tvT0ltZDM2bm8zUklxZDV1U2oyckNN?=
 =?utf-8?B?RmJIR3VISU5qazl0S3NQdUI3b1dLUUNYNWtmSTRHS3I0NWVPZS9XZWZkbzRR?=
 =?utf-8?B?Q2VubmltblRBT0k0ZnA1V2UzQ2RNOEF5MWJxTGxTZTY4UXdoVnNzUXJUdHlZ?=
 =?utf-8?B?a1Z6Z2NxS01weUhrVGN2VmNUQW9lbjhuOU9YZlNjVWozSCtiN3BjbGEzU0lP?=
 =?utf-8?B?UFZ2V0s5cmVURUNySXVJYlVCL2dkQy9VZFB1dE9NZlMxRW04dkMvM1A0ZUMy?=
 =?utf-8?B?QU1VN2tXWG82RlFZMUdYWUhzQ0dHK3dtNzFNWmF6aFowYS9KRzR3VDZxekp6?=
 =?utf-8?B?ZVpoSEN5R2VJTndabWdTWmNvVnZ6Um9zOHNWOFhvUzlOZzBndkk4MzhkSDNu?=
 =?utf-8?B?NWo5S2ZEQk1YN0VEMWZSZnZhaDMxVEpqV2ZUQnhzQWhUWWFXTU1kUGltT2V1?=
 =?utf-8?B?emsyMERVTTYxQ3V5Uk9LaWN6SGV5eXVLQ1BzTlNlT21nSHFiUllYd0ZaNm9r?=
 =?utf-8?B?ckNWa2pFRlV4QkNLY21lMzRVMi85a3ZmbDRYdkF5UDlIOTR3Mm9XbzFJKzNB?=
 =?utf-8?B?R2xtMHBKMFNyRlVWRUhyMWtrRktCazk5QWpVRWtkQUZhKzE5NHN6a3JueU5N?=
 =?utf-8?B?cnlTR3UveERMcStzVHV5RktyV2N1S2d2dFlHMmxNcG1SMmJZZk9jT0ZQZVJs?=
 =?utf-8?B?a3NnRDI3NVk2WkZWQ3VDTUJTdTlGUjF3VTh1OE1yZDZPd0c2c00yN0RNeGw0?=
 =?utf-8?B?Um0zcWdvYUQxenovSlViMnJZQXJoWlZGTHBmRDZxbFgvUEd6RkhSam1SU1hF?=
 =?utf-8?B?ZXJkVWFrMENnZFM1aUNqeUFkOTE1OE5CbUZpcVAvaHROMkorbTNSaHcvcG91?=
 =?utf-8?B?MzE2Qnh0eS96S29GQW8wSUNIZCtDZGs5Z0tZamlQSDY1MkVXWTJFdkRScHFz?=
 =?utf-8?B?Q1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c4c612cb-7a8f-4206-1558-08dcf2db8614
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 20:53:04.2754 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pcQONXTTsTZ/htAf7/zlaLjADILnhQ4SKkJ/GuTA/V5eDvFMFfFqQJMgUeu6Lhu+1m0hgDnu6DlXOReJUwaIy8Culq+4DpyxRDD3CazLCUY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5928
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729630392; x=1761166392;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=MyWqyBTv8kJ6cMLcuES7iPT3JW1hj2xVs2HDLkajI7U=;
 b=Rw/2FWgTzMe8zeT3OfsLzh40CLaVIP3lK5PqTIIcftjfDkLdsx3yhVuG
 VRUyefIjaTrYyH5NFpXMLVDElLU98qLl2TMwgt9o7nSxXNS3Xy9rZ2st+
 fbZP6T8pdjLN/7a8HfKpt5fr0IriepgDGq+htPDrkLUct+JLHKV7yk1Mi
 O3bWockJKYt8yLv+8jZ2XDgR9FArYWCAR4OA8YkzLMMLVq6r9kZOizGSB
 BCfljcydDMCGpSVdtBtGV3QlJ8MAzqcxXL3DDiKk33PJQzX68FgC48fVv
 aWnU+n7lXR3SUx3/KPzeW170aRwUXiyYFux6yd9KIhtKLJ2gbpq1Vtx5j
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Rw/2FWgT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next v3 2/2] igc: Link queues to NAPI
 instances
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



On 10/22/2024 1:28 PM, Joe Damato wrote:
> I took another look at this to make sure that RTNL is held when
> igc_set_queue_napi is called after the e1000 bug report came in [1],
> and there may be two locations I've missed:
> 
> 1. igc_resume, which calls __igc_open
> 2. igc_io_error_detected, which calls igc_down
> 
> In both cases, I think the code can be modified to hold rtnl around
> calls to __igc_open and igc_down.
> 
> Let me know what you think ?
> 
> If you agree that I should hold rtnl in both of those cases, what is
> the best way to proceed:
>   - send a v4, or
>   - wait for this to get merged (since I got the notification it was
>     pulled into intel-next) and send a fixes ?
> 

Intel-next uses a stacked set of patches which we then send in batches
via PRs as they pass our internal testing.

We can drop the v3 and await v4.

> Here's the full analysis I came up with; I tried to be thorough, but
> it is certainly possible I missed a call site:
> 
> For the up case:
> 
> - igc_up:
>   - called from igc_reinit_locked, which is called via:
>     - igc_reset_task (rtnl is held)
>     - igc_set_features (ndo_set_features, which itself has an ASSERT_RTNL)
>     - various places in igc_ethtool (set_priv_flags, nway_reset,
>       ethtool_set_eee) all of which have RTNL held
>   - igc_change_mtu which also has RTNL held
> - __igc_open
>   - called from igc_resume, which may need an rtnl_lock ?
>   - igc_open
>     - called from igc_io_resume, rtnl is held
>     - called from igc_reinit_queues, only via ethool set_channels,
>       where rtnl is held
>     - ndo_open where rtnl is held
> 
> For the down case:
> 
> - igc_down:
>   - called from various ethtool locations (set_ringparam,
>     set_pauseparam, set_link_ksettings) all of which hold rtnl
>   - called from igc_io_error_detected, which may need an rtnl_lock
>   - igc_reinit_locked which is fine, as described above
>   - igc_change_mtu which is fine, as described above
>   - called from __igc_close
>     - called from __igc_shutdown which holds rtnl
>     - called from igc_reinit_queues which is fine as described above
>     - called from igc_close which is ndo_close

This analysis looks complete to me.
