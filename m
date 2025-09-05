Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F3784B45223
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 10:54:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B939440A8C;
	Fri,  5 Sep 2025 08:53:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JOXOE10RmyBb; Fri,  5 Sep 2025 08:53:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6CA140A91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757062436;
	bh=dv1q7uaXaOVCsqGXMb76J+VUpFiA7t7sFvJpelXQyYk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nyVeNprbWms8p7JDR5uv4eWn7fsrbvXefVESczbw7StxQ7p6+wVfiHmd6lr7KtErr
	 X9XY0XqYEwy5TIZKajEdKpuedG4R+RMcNRMMP70ZGi+gEu3otECU3vpZuZbSeLko8+
	 XmPrt8UMYCqNpYmwxkLyv6jzdahsL+o6NdGWvHIT3kl9gdGU3xiAxT2Z4ud5+3GSC2
	 yfIy4yoX58fZCo3NWFSaXJXL4wQOgM1I+2/t9/RxDMhcvI5TcPOLjpL4zPDodl8vl8
	 t3XASXdeBs2UHgykrbPWFX+3sxm5cz77AgebQirn1fUWx85Yua4zgyKplAJ99O/aSk
	 EMmrvQ3730x7A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C6CA140A91;
	Fri,  5 Sep 2025 08:53:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A3978B69
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 08:53:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9575E4059B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 08:53:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 08kcFxgGydip for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Sep 2025 08:53:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 69E6840082
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 69E6840082
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 69E6840082
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 08:53:52 +0000 (UTC)
X-CSE-ConnectionGUID: Q3aPHaKITtum97LmJ5JklQ==
X-CSE-MsgGUID: U8RxqUj3Td+iY9SFEYbgkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="62043794"
X-IronPort-AV: E=Sophos;i="6.18,240,1751266800"; d="scan'208";a="62043794"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 01:53:52 -0700
X-CSE-ConnectionGUID: fGlw171ZQeKTR47AQE1TLg==
X-CSE-MsgGUID: OGOxG9yQScuRLyjadzN0pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,240,1751266800"; d="scan'208";a="171326552"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 01:53:52 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 5 Sep 2025 01:53:51 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 5 Sep 2025 01:53:51 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.86)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 5 Sep 2025 01:53:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eeMm9u2EYcg/8Uq7jECOr/gd7rQHTxNN1ypyjRBqn62hJO67Fu4TjZdmtTf9mjrTDwmD9Ajx23Jvbh7oRFnKjDoFHeIQZOmBWXbB67DIzzPHQJCSFpf1lQ5SlT9GrmSDJ1CFMHdfN7B+HsJazFPA5EdMz+oTv8TxG37uANcgPbaIbv7DxIJ9zxVwfCOolObBslvz86FmpOt2NwOT2RUyUVWKJPMbP797HqtxcIl4VcyYNSkhqQJoOOq2NK+xWHo+TTDZzDcw+P9vjZCJqjwromyjo0OtTSYSdpejn4+d/d6kS+5ctICwew64OMAhxw2JyRne8J+ynIS29lgGCy5i4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dv1q7uaXaOVCsqGXMb76J+VUpFiA7t7sFvJpelXQyYk=;
 b=vmt9C3q4aIZQ1Ab9ZK/oANA2WflQXJybF5JreGeGlRiTAfXbepfOzHfdYb62+ScMfeXdzLPo5cXrdPytBaAGbFwtI70TPPQ74c47s13Id16xw0zYZR29+XQLerSosaSk470D6jJVIKfsdqZgaEos1DwuxVUaZ0K5j2Vh62NFLF72P5m4yM9lkoPgsGST40/UQTEfYmZfVqEdfceFy7KNu/lN8PFqzEBiMaX2HRxnFfLWbldZ7KbsJK6pGZh8Hym2lwEvOI3aRlJkQFKtVxJ0UgQbaU5cEpOzj/74gJtkN5UZh4GE3Bw4XFOORjHpavQcF/ufONverUG8ShmCZjgCcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH0PR11MB5173.namprd11.prod.outlook.com (2603:10b6:510:39::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Fri, 5 Sep
 2025 08:53:43 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9094.017; Fri, 5 Sep 2025
 08:53:43 +0000
Message-ID: <75f4d389-eaff-4d61-880a-ccb05cd55123@intel.com>
Date: Fri, 5 Sep 2025 10:53:37 +0200
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Kohei Enju
 <enjuk@amazon.com>, "kohei.enju@gmail.com" <kohei.enju@gmail.com>
CC: "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
References: <20250902210447.77961-2-enjuk@amazon.com>
 <20250902211640.85359-1-enjuk@amazon.com>
 <IA3PR11MB8986B31F209249FFC30F0A35E501A@IA3PR11MB8986.namprd11.prod.outlook.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <IA3PR11MB8986B31F209249FFC30F0A35E501A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU7P190CA0030.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:10:550::7) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH0PR11MB5173:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f82ffd0-2b7e-4b8d-40b5-08ddec59b75f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bHdORnNyQ0M2eXh4cmI1T0l3OUN5dDhuUnRLd0xrT0hBNlNrYjVyRDBGSk9O?=
 =?utf-8?B?bGNGdUM4ZFIyZVlVbnJhZVBuMnJkMXNYZjFCVDNENUxaOUJvRmplWWdxWDlS?=
 =?utf-8?B?ZDNmS3hKM1MzZmoxUXlXbU10bWpiRnVXWDlReGVIRUtKeFJ0NUQxUUZGQ3Rr?=
 =?utf-8?B?UlNTV0tUdmJMU3VLV0pSbzl1dndmY3FxNHgzUzZudWRKL1puMWtOUGV5d1R6?=
 =?utf-8?B?Ry9ENUlveksyTi9xRDc2TUlRMks1RWp1OXZRaHVjcXBTNzFHaGJkR3c3UFFO?=
 =?utf-8?B?TEVpc0R0ZzhDVVdhdGVaUzFxRFEwUEdwc2J5NHVPeGszMjFhUU13cFJvWitu?=
 =?utf-8?B?TTRkNENkQ3ROcEkwcUdncG1lNGVSNFNUZGkwdEFITlF5bUI0eHdyL0pLMHpC?=
 =?utf-8?B?U3VvdHFYUVhQZWNRKzNoRld4NERQeE1TYzh0QklOV1NaV1NDNHd1N0F1NlZP?=
 =?utf-8?B?UU94YjhTT0hQck9rZ3diVDdjV1RHM3h6Uk9VZEVqWnQ1cW1YRFdLUlNEVXdm?=
 =?utf-8?B?K09GRHNlSmJnM21pc0txM0c4ejBWZGNnanRzckl5d3RFN1U4bmdrSWt6dHJl?=
 =?utf-8?B?bjRVZnZFQUs2NmRkbGFWOERDTTYzTE93eEJxK2UyYUtKMmZ5ajlIamdFc3Qy?=
 =?utf-8?B?ZHpLd2R0dkd3SXpISW5KMktOc05GV0lRRTNlQVUvb1puSzMvOGprV1ZxQm1G?=
 =?utf-8?B?Mys2MDl3UklrWjBzUWZ2NkE2ai9tKzNoeFhJeE8xSE5PcVp2RE9ZbmtTaXBM?=
 =?utf-8?B?ckFrTVJzVUhTOG1RZEtsWERYTEhRL2E2Zm9JVzdVUEczaDRyMlJXamFBNExD?=
 =?utf-8?B?anlNaXM2YzNtSGU4UEZhbjhSeTROSzVESHdoZ2RCUGtSZFlUR3NUQ1k1T1Y4?=
 =?utf-8?B?R3FQUk92UTY2djZGRC85U2hvd2VOSjdQT3pybEhEZ3JvVEtFdjV6b0xuQlpz?=
 =?utf-8?B?ejBxOEozbHBBWDBlNTR5YjBYSjVMZjEyOVloeW5RK0JLbWFNOTFqNUlGdFBv?=
 =?utf-8?B?SlEwUjNVdVRuMzZWdnI5SVl0UDBrMlNkQmNINUtjbk1OekRBdU9hNUtwdENl?=
 =?utf-8?B?dU9FVnNJYnZ1YXFGT1dLZEZISnQwS0dOUEp4em9pZjkzTEkxbE5HV1dnNTQ1?=
 =?utf-8?B?SEVyNlNycHZQZjhJWkNBbmVYcjBCRWZXMm8za05xakR2bnJWVGRoQ2dheWZS?=
 =?utf-8?B?WnMxVzc4MWZoK0hlS1JGVmVoUk1hOTAzTGRRZURzSlBzbkJxTHpUQUNRbUhl?=
 =?utf-8?B?ZStuVzFqQVpyay9HcFlIV0I1em44WXJpY0RXem1FTHdqbWZyVzdCV1dhNW1D?=
 =?utf-8?B?T0p6d0E2K1M1ZWovQnVPQ0M4WGNsaVY3YjNvaWpCV0tnK0JVMWJEOXdPNUNQ?=
 =?utf-8?B?M3h6eFZlVExXL2g2MVprKzhXY1JlaGlydkNkaThuRzgrcXloR1V1Q2Zia2N6?=
 =?utf-8?B?aDVHOGNuRHBGemo0TkYvNUhwdHFtVGlVMTJ4cExsQVhZWTNzdXFNSUN5TjYx?=
 =?utf-8?B?YUJOcUJhZ0lIbWVoaEY2aXVKQnRqNXRBNnNvUzJXZWhTa0tDaWZKMnpLOXow?=
 =?utf-8?B?ZnVldnRxV2lObFRrQlIvLy9aQjlXN2lOSDZVM1VONTVKeHppTXR1YjQrR0Iw?=
 =?utf-8?B?TlVCaEdOd0lOemFFQThNL1NpTHdaUG9ETDhRUUV6djlSck5DVUhFRVoyNmpr?=
 =?utf-8?B?ZUsrWjBKY2NCVGF0K1hqTDJ5VmRxK3RGbEhXb293V09GUXFqYTFFc1ZxaFJm?=
 =?utf-8?B?YzNBL01Vbm9GSHlNQk9mdTVyblpCdWVWUVpFOGVRb0Y4NFhZVlIzdGhteFkv?=
 =?utf-8?B?QXN1ZlBQOFMybmNJYjNiYXZpM0ZkbUpqM3A0OHNpayt4TnMzdEdYdnluRStJ?=
 =?utf-8?B?R2lGQXZOU1BrRFJIR3UxTlpsbWxPeGZmTXMxK2FVeXhhUm51cTZ2YW1qYmJx?=
 =?utf-8?Q?awOvBGtByg4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K0FrOG5YMU1sekorbXNNMUtaUkRPaDVsT1B2TDdkbi8yMTErT3BxWmpiZ2hT?=
 =?utf-8?B?UGtKSFZVREV0WDdYaHVKeEJGNmtpMzB3bjFjSUJsUWNPc0p3cWNkSjlRRnR6?=
 =?utf-8?B?T2FSTGczRDhpSFNSeEdNN0paWU8yMG5MODZrUVMyV0tlZU5yT0UxWWtTejhx?=
 =?utf-8?B?MWJ0SzF4YzNsdlVvNlgzQmtTakJZZEZPeHhLUUVZSGgzSDIzVWcwYjBIbi9F?=
 =?utf-8?B?NlFLblZJZy9zeit3K2hBQkdZSER1N0pCdUt2cjAveEtoMFdvVDNXekFUanZN?=
 =?utf-8?B?RHJMbzZ5TE01VURQbzBsWVFyY0g0R1RGclN6ck9mb1E2S0pvZStNWUV2QkNJ?=
 =?utf-8?B?UUx2YldWNDdsR2RLbUpPbjZOVDhXV2hDRXJKMkVrdlA3ZXEyOXUzUCt4SWNa?=
 =?utf-8?B?SXlMUUIwOFBMckw0alAxRUp6c0tTbnUyTjNLeS8wS1FzNnNETktxNXZIM1lV?=
 =?utf-8?B?bjB5aTNFN08zUVZhZURTdk1icUpTU2xiVldMMVA3RGlMNUx0SWpjS0dHUDJ0?=
 =?utf-8?B?bStwbXB1WERkbHoycm0xVmpoRm5nVmdSZ1FVa1UzVzkxdUp0cDBpdVREZXdz?=
 =?utf-8?B?aVR3bVF0MHQrSUs5SDZDeHVzek1SeERvWTF6OER3OGpUUW1odTZnenZtcFZj?=
 =?utf-8?B?cTB2WUpZc2lickN5T2p6MDd0bC9uSkJpZnVQNWN5Smp2Q0k5b3hkMzVhNjhL?=
 =?utf-8?B?VlJUN0xCL05rVTdWUXZjYm4xMkgyYjZlTjJyRmswR1lwMjc5cVRRNVNPa1pq?=
 =?utf-8?B?VHJNcEkxRWhBa2RGbFo2OVVUWHdzak9oek11Zm1POHg3NUo2ODhEejFvUEw3?=
 =?utf-8?B?YkFaNG5UOVhaUlIrWHE4QVM2OE9uRUU1emlZeEpVVGtXemwyMm10NitFQ1B2?=
 =?utf-8?B?WnRVRHVTUjZFcFNOalVuZnlJS3ljOUtmU3lYd1E4Ky9rMzdJTUc1Q2hHQ1VF?=
 =?utf-8?B?MTU0Y244L3JIQUtuTndIcjRWa0pCT3ROZXBxUGx6NWVPUXNTSzBITkUzZjY5?=
 =?utf-8?B?VDA5cCtTdXd6MkUxUGZSSythczcyS3orbUNZQmZRZ3lmMHllZmFEeXVkTm5P?=
 =?utf-8?B?eDNLSkVyTXcxOXgzZFZiWGF5eGFEajRnTmpGWnVpVDRuVDNFZ3piWEFUYU9Q?=
 =?utf-8?B?ak44OVNTaUJ2UVRwdXprVXJGRGZ6VTFpc2o3dXExTDJVdnFLOXNMRkliRGdR?=
 =?utf-8?B?SzZCbk1sWmwxZFg2R1JwR1Y1dDRBVEhMMU9TSVE1TFljQ054RVczWXRXQnVF?=
 =?utf-8?B?em9FZmNuUHlHbDZQUGFLK3NMYlI2VjdpcDNzNW1XTkZQVWJPMVhkY0tTZFFN?=
 =?utf-8?B?YVdoOWpsSEg1WkVpd1hlSnFwMFFNR2hJTnR4ZitVS3ZhdGdDc09qelcrWklq?=
 =?utf-8?B?WHRqN0t2UUZwZjFZdmJaUFdKaXh5NUpGWXNrQ2ZFN3ZRZGt2VDk5V1I2bWVT?=
 =?utf-8?B?aDg5WE15amQwYVJXMVMra0dyRkdZVitBd0d4Qk1RdzU2U2pxck0yNWhyNVZX?=
 =?utf-8?B?bzVJOUtzNkVvK3lPdWR1ZFEwZUFFamlscEsyTUZ2czhUaXJSNytLdWpuNERh?=
 =?utf-8?B?eGRqdGtBSzZyTm5MTUg4U1M4K3RTUTh2M0lhSFFSVy92M0dURFFLemRrN0Vn?=
 =?utf-8?B?clF3Nko2eWo3eXF2V2d2ZXAxamtMWjhuRGlDeTFOT0pMNDhRSTNGRDFzaERQ?=
 =?utf-8?B?dGtsdXZnRVl0N2tXdWYxUm1HU0doYzN1dmN2eHZRNDV4dVhVS0dZQW9QdVVq?=
 =?utf-8?B?S1FCZDJGQ3FjQW5hM3JGUW1INlErNThGSUUwWTVjeVJnRkJReXNSeWpEd1I1?=
 =?utf-8?B?RGpmQlFIOVh5dVNMTzY0NkkxRWRsY2NIc3JwRmhKWHFuQmZJV3hBVXFMZTRp?=
 =?utf-8?B?UmFBR21rdGNMdTlTdTFTSHF5MlpYeVNQeVd5R2VMV2x1ektRVCtIR1pReEwz?=
 =?utf-8?B?WTBmclF4VFNsZTlvanlTaVhtdkJ6SjliWWhkaHRUdHhnL1EzUDJzcU5FOGdp?=
 =?utf-8?B?R01XNnpVNkFrSHV6WUhCUkl1ajI0a0w5ZGVGelVPSmJ0YVhvVDRkK3YxelJp?=
 =?utf-8?B?M0hlbnEvSzlMVllKZXBabTEvdlpmWXh1NXd2Wkw4NVJ5Ujc5Ylp0djM3NTI0?=
 =?utf-8?B?enFNVkxUSE5OTnZ6alpFK1lPMmxFVzdJUUJuTUhxd3dDakhNSG50aFZaU3dq?=
 =?utf-8?Q?E1Qq17OSlQmpg10r7aIVyQ0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f82ffd0-2b7e-4b8d-40b5-08ddec59b75f
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2025 08:53:43.0617 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ejFWYSTvNu7qTuFRa51lhZQhDXKXJFtC8b1tNsR3SQYU9LUZ0Z4ZonN4izBVDyzp/3DZw5A/G1qK3ZRrJLRdwJRlkOcf3C8PQyfO+5xb88A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5173
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757062433; x=1788598433;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=48VSDnDVq9xAAfY73n8aolVf4jO57mm0fAXw6ga5eM0=;
 b=YQb1gvWxvEqMm9EvRxj6lPugvPei+4EjpexXnMWkc7sI1zxqLSpfSCqf
 Sp+eGwLZp8adJUXU8H1v7NouooGXMsv1KtmljPg+nWTQ+afQ1GLu9zplA
 lb1BTGwaKJfl9tbowc8vwDTSIHj05Nx2rP9mx0tP4DlR/2l0c4HvdbnGI
 F0/CCXflZefxLQnoG8xBVkjxJEgfnrh8sy8B0V9JX+nbEVKvNfCHkCzi6
 Qzqk5bfH/zhx/dKod/uJ2tm9+ICF8mSyUGh48row4OMBKbEBIDi3wvU1V
 aHvGK5CjKPfoqUfOXJjiyFVcMrbw382BJO6PsgxxO9+8sezBFAazz0yFg
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YQb1gvWx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ixgbe: preserve RSS
 indirection table across admin down/up
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


>>>>> +	if (adapter->last_rss_indices != rss_i ||
>>>>> +	    adapter->last_reta_entries != reta_entries) {
>>>>> +		for (i = 0; i < reta_entries; i++)
>>>>> +			adapter->rss_indir_tbl[i] = i % rss_i;
>>>> Are you sure rss_i never ever can be a 0?
>>>> This is the only thing I'm worrying about.
>>>
>>> Oops, you're exactly right. Good catch!
>>>
>>> I see the original code assigns 0 to rss_indir_tbl[i] when rss_i is
>> 0,
>>> like:
>>>   adapter->rss_indir_tbl[i] = 0;
>>
>> Ahh, that's not true, my brain was not working... Sorry for messing
>> up.
>> Anyway, in a situation where rss_i == 0, we should handle it somehow
>> to avoid zero-divisor.
>>
>>>
>>> To handle this with keeping the behavior when rss_i == 0, I'm
>>> considering Option 1:
>>>   adapter->rss_indir_tbl[i] = rss_i ? i % rss_i : 0;
>>>
>>> Option 2:
>>>   if (rss_i)
>>>       for (i = 0; i < reta_entries; i++)
>>>           adapter->rss_indir_tbl[i] = i % rss_i;
>>>   else
>>>       memset(adapter->rss_indir_tbl, 0, reta_entries);
>>>
>>> Since this is not in the data path, the overhead of checking rss_i in
>>> each iteration might be acceptable. Therefore I'd like to adopt the
>>> option 1 for simplicity.
>>>
>>> Do you have any preference or other suggestions?
> 
> I lean toward option 2, as the explicit if (rss_i) guard makes the logic clearer and easier to follow.
> 
> Handling the simplified case first with:
> if (unlikely(!rss_i))
>      memset(adapter->rss_indir_tbl, 0, reta_entries);
> else
>      for (i = 0; i < reta_entries; i++)
>          adapter->rss_indir_tbl[i] = i % rss_i;
> 
> Improves readability and separates the edge case from the main logic.
> 
> While it's possible to use a ternary expression like adapter->rss_indir_tbl[i] = rss_i ? i % rss_i : 0;,
> I find the conditional block more maintainable, especially if this logic evolves later.
> 
> Regarding unlikely(), unless there's profiling data showing a performance benefit,
> I'd avoid it here - this isn't in the fast path, and clarity should take precedence.
> With the best regards Alex

I would make it even simpler (than if/else paths):

if (!rss_i)
	rss_i = 1;

(which looks better than "should be obvious" oneliner, rss_i += !rss_i;)
