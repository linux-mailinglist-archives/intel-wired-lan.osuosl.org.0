Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8642A9411E8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 14:30:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A46C80BD7;
	Tue, 30 Jul 2024 12:30:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HEG648IMvb2k; Tue, 30 Jul 2024 12:30:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A30C280BF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722342612;
	bh=7hc7Y2bvwYosjyFBgU0njJ2SdUZMbobj2bDiNZ/P/ao=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nDLmXHPzGXRKjixxhAretkIIHXyCBWaNrbA261LEc2PNNJHPbXuFwDF6PjNiuELbd
	 qeob0HsXYtNpzbTOR4Qbv3G0tvXXtAs9eop9M0cw+6iEMhNV02Om8SazZtR6Uom3JU
	 680QYQyIlrb19Rt1wSgsuGa/zF3HGk5akAC59Bnw7kfyf456w4GN7Q2MJXhS3jhH+i
	 LBfQivWx7AGSxTWRbq8uOgZWnznd9r00E2AnTuaS2oC6YLH3ndY4pJmE6QVoFBZ3rw
	 vji7pbI0Velq/PGwpzU3jsHtt5Ov3QC5Vlmc7y/PbA5eoLd4OtboTnedjd5vmbX22W
	 4MZxvdgJvUllg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A30C280BF4;
	Tue, 30 Jul 2024 12:30:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9598A1BF399
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 12:30:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 826E7608FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 12:30:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a06q0gsjbBM2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 12:30:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 99A756082C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 99A756082C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 99A756082C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 12:30:09 +0000 (UTC)
X-CSE-ConnectionGUID: Y4twPV4gT8ygjgeFM4J3kg==
X-CSE-MsgGUID: PKuV3vy7Sr27FxnS2lKrug==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="19995294"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="19995294"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 05:30:08 -0700
X-CSE-ConnectionGUID: xCecfwJWQgaGppOR82rEhw==
X-CSE-MsgGUID: CJXw6yfkQwOWeH2QVyZYLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="59173396"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jul 2024 05:30:09 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 05:30:07 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 05:30:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 05:30:07 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 05:30:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eB1/N6yGoayOgNGOHw2F5LN+ke6TqrW9zQkpOZHGl9VmHySu9ZB0uLPv+73fbbqRC7u8RDuAsnbcCCzZDrfwXpXOSdKP7kI1CtI2Z6etnPfqQlR62mQZZ1c4IWscSpkdlNID/5GoS/DPWRCYLuSp/gwc3W5mU9lRuO1q+QEBxUkj5JH84Xem9Xtjyv5yTOcHHku2JbvuD5UcVEWx8JdcvNQ+TFa9ozTN9lg582PE+YGuZ1pMhiMuqKHVRCStm9b3K/Ec1vLo2VZz6YWO+3mdaPrg6txHDDonWUM9Dlmw09K2rqTqd+RpGVa4umLh58QRuhnWDsMYeQc/EnWENX8S3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7hc7Y2bvwYosjyFBgU0njJ2SdUZMbobj2bDiNZ/P/ao=;
 b=IVRhTaB0jXN8qHSX3btQ1h4luRsM34O51A+7qSfukUr/lQTXXZ9iYJTlkz4ZIjXFAT8UjOAd+cwPdhXtPHq8pikE3NZGrMN+nFvYEq6Jz1PoRyCaGHMAt7DemZn8y5WAsA1lEPbKR0zQmopHqXlr+OWaAfnRHhCNP1dngHn/z3bBTeSs0RWKUkVtbx8gR5yGqAywg8Yspo2Qx2+1+nsfs+ZegJQjixZN+VNaeuINzy118Bo4uAeGYq6Y0yB26Ae7Y9m+xuzt11CJhvQDwadnHc+huq76aVLXqTSPHzaa+41mQ7C/3OrT+rWl1BX6RZAKtVBUFXVPlpyxwm5c7KVbFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by CH3PR11MB8211.namprd11.prod.outlook.com (2603:10b6:610:15f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Tue, 30 Jul
 2024 12:30:05 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7807.026; Tue, 30 Jul 2024
 12:30:04 +0000
Message-ID: <90aaf17e-2b8f-46e2-974b-48fcfad2f983@intel.com>
Date: Tue, 30 Jul 2024 14:30:00 +0200
User-Agent: Mozilla Thunderbird
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
References: <20240730091509.18846-1-mateusz.polchlopek@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240730091509.18846-1-mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0110.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:20::7) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|CH3PR11MB8211:EE_
X-MS-Office365-Filtering-Correlation-Id: d6f73a54-ab41-4dd3-0395-08dcb09356f9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ckdZTGM2QlF3OXh6c3pvcVhGM3pZSkNLRjBVcGxwN1FIN2ZuVFVRM0psMmNx?=
 =?utf-8?B?REZFZ2xwVVRyL054ZGY5TkRCS0NSaFFuUE1qOUkzdi9ERHg3UzB3VSthMkJL?=
 =?utf-8?B?WkkzYzh4UFZVUWk5Q3h6WTJucVBlUXNZdk11WDVmempnN2puenM1VlRBbTZV?=
 =?utf-8?B?RWVvem5oeG5EL0pnUnhvUTI1YTNmcXlYYi9ENkxCR2hzeUtCYnNoaVgyS1ZF?=
 =?utf-8?B?ZWo5cm1FQWZyUFhXNTc2SlRTU0FBbDVuUTV2RElQdy82bWMwRStQL1k0b0JK?=
 =?utf-8?B?b3FyNTB6TEpkTUlwNFpCd2NjUUhldHI1WDFWRnhjNEQ1UFB5Z3VzakttejNW?=
 =?utf-8?B?LzMxTldpMENLRUtoVGszYkU0YmRQNHJ6dmVtdFQ3OWtQdTlJNjA3RVMwYVN3?=
 =?utf-8?B?dUlNU0dma0x4R1lvZlJzYnd6TWVWVmRhR3MyNU5JTFNmN1YwUnA4SmtBZEEw?=
 =?utf-8?B?U1BmWVo5MUJJZTYwcUgwUkRxQlk3Nzkrb2xvR1FRdEw5WmFtaGRCUjVLKy82?=
 =?utf-8?B?WHRjclRqYjJ4dWxORFB3Uk9oai84YU41SUJlQTlIeHlQREJJNUY5NzMvZU9P?=
 =?utf-8?B?YkN5WkFmaXROQ25HekkvQmxDNUx1d1ZiTjBsNGY5UU9WSU11cnZYUWZUd2V1?=
 =?utf-8?B?anUrT2dncFliVlFyZEQzaDlDalBsRmd2amQxVmhlSHJDV3dYQVEycEw5UGpH?=
 =?utf-8?B?N3BLQ2VjRm5jL1djOXloNGNodk8wbDhxbTJnNmk2UmlldTU4KzhCK2RNakV1?=
 =?utf-8?B?NXdwdmE3Ymk1UEhIb0RuNzY2TnI4ZWZQUmpSbG5kaGpjbXRodkJjakJzaTA0?=
 =?utf-8?B?WFRiT2gzSlJOOWhhNXhXZ21VUTE5UGgvT3pYY2tUbU45NUo5VzJ4N0tDM1dF?=
 =?utf-8?B?TS9uQUhGS0ZILzlacE1zakhFVWdZcVdRTGMxbC95WVlRYmQ0dkhQWFkxUU8x?=
 =?utf-8?B?UUVWVFZaWWhkd09xSWQxNkVyYW9zbjhHejVLcmNZalRqMUsvTVI0L00wMnU5?=
 =?utf-8?B?Qkp6VG5jM2xwa3VTdEdGS3ZwclZUODF6ekJsL2xJYmJ4UGt1dDhmOHQ1dVpa?=
 =?utf-8?B?bWd3bDZxc2lsUlJjUlN3YzV3WTJndG05OVdSZTBtQTVYZDNmTGE3WXVsbVRs?=
 =?utf-8?B?a29ER0dDMnEwWVRIMG1rNEh6bFo4azlybmoxVU5YQ3VRRGk4NWdmZ2R2YzFl?=
 =?utf-8?B?djdmRHA0QnduVzFhQnBnaVk1Q3lnNDFhNWRyYm93aFpPQXZuNEVIVjU1VGJl?=
 =?utf-8?B?SmgwUWlYQmxzUFBTSkRza2dFVDNBbDdqU011djA1NnU4WDIxQlpxSGJqZGUy?=
 =?utf-8?B?SWNJREJ4dDVjY01XV3BMb3oxWG1NZFZKT3c0K0dsMGJjSitLdnFnb0ZvenVz?=
 =?utf-8?B?dE9ZS1d0cGhFc2Ntb3RxNm1ncmRxMDRja3BPdlZzK1ZsWW1qSTNwNjBEMWs4?=
 =?utf-8?B?VENPeXo3cHFMTnNrQmNFVS9nbUdPMkF0ekROOGxOUGU2ck85WGU3LzdQazNH?=
 =?utf-8?B?Q0c1TXV3TVd5TDZyRS9ZTUVNVGdXSEFyY0w2UHc5cUZJN0kveWxBSUhWQXVB?=
 =?utf-8?B?SFJuMnIreTlRRWQvTld0bisrVWovY1RsMm94bUZsMnl3MDVKa29odVRjQWJs?=
 =?utf-8?B?c3h4ZVdHMkQ4ZkdWL3NiV3NhVXhYenFuUFVscDZEVkl5Q3o5ZTVJa1FCK0Uv?=
 =?utf-8?B?K2UxMlZUemlSdWlHTGpraWtrSHN4TVBIdU1LMXdCalovOUkxT3ZSUnZMM2M1?=
 =?utf-8?B?ejR0Z0FMUUpYZ0JhVURVT29lYTc1bTZQanJ6K1l3eXNEaVRPOThRZUdYVENK?=
 =?utf-8?B?bXRlUE5wc1BLTmZhUDEvdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHQxaDRjWnVWVzZoaVM5anVmaWl5b2FZZDdIbkoyOUJ4Qms0ZWo0WWc3VUxk?=
 =?utf-8?B?Q3IwZVdiRjJGZnp0TnNLdWN4OXhpYWdtRkk4MWh2akxzMjB1aTVETHJKdGFj?=
 =?utf-8?B?OHR0cG9KRFFXT1Jqd1l4eG96U3R5YmRsWkxCMHg4d1JXbW5qUmRSZ05oN0kv?=
 =?utf-8?B?Ykk4cWdTbHpwdFhhenhONjNWZGpKSFlld2FnVXo2TE9sSTdKbTN3WDNxamtV?=
 =?utf-8?B?aXNDZTU4RGRkQmJQYWNJcHZ4WHhGQ0VaWndQdVI2cGtMUTJrOFBRZ0hZdEhW?=
 =?utf-8?B?dzZQWXZkQXY0eXhjdkp6K1lNbkV4UWNzOS81SERqVldrSkdPWWhWRWVQeEEw?=
 =?utf-8?B?OS9rYllYbXRDK28yekM2MDQ1ZTBLa1dvMUVCTXBoSHJnVkRJdDBLUHRTWTRZ?=
 =?utf-8?B?UzFXYVFjRmh5dTRDYnJKWHF3R2p2SnJVSjk5bFp3MXFkVUpDVm9KZC8wVDFY?=
 =?utf-8?B?ZTNDYjJrcFQ1RG11TTdkL1BaZkp3U3RVWDZiMWRCcWU4UWlhcXIxcHREVVl4?=
 =?utf-8?B?OEJweXJYSThLdHdkSGdpeWdwK3BUTU5BcGZrMnZPNGlpdUlaVkVRcW5QVVV4?=
 =?utf-8?B?cGNXWW5zZTZvV0IzTXZWS0k3dHRjczdSQnRSMXpORHVyK1hBbWNKeTZhVWQ0?=
 =?utf-8?B?WnlGRG9kd25QRXkxa0xSczdoZTYyMnJBR0c3U2tTQ0w3SDhRQWphU2JxMGcx?=
 =?utf-8?B?RGx0Smd6bDdMTW52ZWZVNUN6ZmhuZGJZQWU3b1YzNk9oWFU0U252NlduVEpR?=
 =?utf-8?B?TlZ4cTU1dkl6SWJWekVpamcwV3RmTWxQYm1IZ3kxQjZnMzdWNnVZaGVhWUg0?=
 =?utf-8?B?WTZHTDQwNFU0T1REdlUwSmQ4TDIvQ01RS0FJTjJ2czYxRmtFVmxRR2pJbExq?=
 =?utf-8?B?NFhabTVqWkR5dk1odEhKZkJrcG44SkMvWHdaRkU1djN6ajNZN25lazRWREY5?=
 =?utf-8?B?Vk9mazhpbkxxcG1lR1BBcVRkakNUa0lubUtVYlVkUmZJSVhpN2xHbys2R05Q?=
 =?utf-8?B?VUtJK3dwNWxJa3hFM1hqYUUwV3BHcmdTQ2xHc3hUOERyajdCVGRPSUtKOHN6?=
 =?utf-8?B?WGdFc3FYVkV6c3FTM29iaXdMeUlGc041dGtMb0ROUCtmSHhsVk10U3FLNHJp?=
 =?utf-8?B?THpTRzZ5R2lHQ3hyQjZ5S1dPbGpDbXVaVHFxVEcyRWRKcVZIMkxpcDgwNGtC?=
 =?utf-8?B?OGRmM0JwTFlUV1IvWC95TktGa3l6RW85TFhNQVdaVG84T1JwOXlncW9RUWxt?=
 =?utf-8?B?UUN6MldyNHYyNlpMLzZJVkRsT2h5NEpNeDlXUmQ1L1dVeExFYnZzbFhUdjNh?=
 =?utf-8?B?VDByUWMwV3VGd1cxR0VQZ3R5VEowS3FJdmd1STQwV2RKb1JYeWdKY1ZwS29a?=
 =?utf-8?B?bGNyQStiZkRkOE1nMGJra1lNeTdEb1pCUUFpQ3ZIdkdheGFUV2R5OGl4cDc5?=
 =?utf-8?B?c1hqbk1xMlFlTUk1QllqeW5SMnN3d3dDdTZXb25DbEN3d2J6Z2F0SUlnc2RW?=
 =?utf-8?B?RzJrSkNuSVd0bkdVYXZtR0hmWGlseE1OZHYzdmZwaVFzY0M4OG1QS1FVSGM0?=
 =?utf-8?B?VUZ5T2M1NjErRU9keEVYOVRwYmZ0MW91Q3JqWnR2OG1WWXB2M1kyL2dIYjc5?=
 =?utf-8?B?b0JPSDRTVHNhVWJMK0U5N0RqQXRmQ2psMWdKOHV0MUdXeDYwVEpkeHZzS2tJ?=
 =?utf-8?B?K2NNc1QvdkhCQWI0V1VwU3pBenFySU9Ta3Y0R1J5ckpOeEQyQXp3amptWDNX?=
 =?utf-8?B?NTN3bEt0RUdLZStGQmwvZWduZFJsQXRFNWM2MjIrTVk2NHdYQUw5dXk2Tzlm?=
 =?utf-8?B?dGQyU0o4WnBWM2hVTWY2NFdOd0EvczFyeTlNcHZjUEdVSHZwaXBQTkJWSHBi?=
 =?utf-8?B?TlJxRVptSGxFaXZ5UlJnS1lIUTI1NElWMFoxZ0JQb20vSXQyZUhGTUVKZHNa?=
 =?utf-8?B?Z29lMHhrbytmMDBRMmhWTytmZkNSdVNJdnNUa29IOUlKdkJtNnV5WUtEUGR2?=
 =?utf-8?B?RmtwcGVXUWRBS09Gc29ZODRTWE9BMzJWMmc5RmFjWENoTmt0ajFUeDhreHFP?=
 =?utf-8?B?TmJWNWJvR004d1E1QWlFcHNTalFwa2JTUXFDc3VNRDI2dlZrLzgya1FIWmV3?=
 =?utf-8?B?MmpYVWpRMUlyT1ZwSU9PR2Vxc2dRckZXT1UrTHFwWmY3RHg5NzFpUlBtKzlN?=
 =?utf-8?B?V2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d6f73a54-ab41-4dd3-0395-08dcb09356f9
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2024 12:30:04.8711 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q4E6KajqiPvN7ioKlYT4ElIUXHOrU0LxpKW7H6ibhanF5uZwuJkqkxDhPIly24jRP0NcnOd1D0ny7PCyoA4yL5DETH+LTEohI/lK+Vb+MBo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8211
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722342609; x=1753878609;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7hc7Y2bvwYosjyFBgU0njJ2SdUZMbobj2bDiNZ/P/ao=;
 b=cZjAAb9C+3kCuDiN6KoTG8yP4YfxLOnJ2bX7ifJFygOeaoYX3GgVnVx7
 JBJFJ3CsuZbmyCB68o5gPgzy9cXTkRcMt6btHljIsuWU7gCiPGABS6ks/
 SYPGTxriM3hU2tbDmO4N7uulBlSLB2dHZHHJbzYFlYqtriRpf1eW+FQKH
 d3V2M5fmAov/OXCKBY5002YbNNHNOk21/aR/dq679EzBziOVKqlFMWaGX
 H3/OLjh1X6q6lUbJYckIJtWewPJRs2Km47mchqP7r/XHtG6bpfl3W19Zs
 OjmD3+SsTzSy2MxJf1ObuTO4f2YYYbGnFKXNqGLEHQNPyKToXdTsS2fhe
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cZjAAb9C
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 00/14] Add support for Rx
 timestamping for both ice and iavf drivers.
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Tue, 30 Jul 2024 05:14:55 -0400

> [PATCH iwl-next v8 00/14] Add support for Rx timestamping for both ice
> and iavf drivers.

Oops, please remove that period at the end of the sentence when sending
next version.

> Initially, during VF creation it registers the PTP clock in
> the system and negotiates with PF it's capabilities. In the
> meantime the PF enables the Flexible Descriptor for VF.
> Only this type of descriptor allows to receive Rx timestamps.

[..]

Thanks,
Olek
