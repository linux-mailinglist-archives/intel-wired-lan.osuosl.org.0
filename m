Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF75912061
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2024 11:22:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E1C5442EAE;
	Fri, 21 Jun 2024 09:22:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aqXkfcw8UD8x; Fri, 21 Jun 2024 09:22:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AECC042ED4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718961746;
	bh=HuLuTmK2IsimZuludwNnk9y/pUNQBCOs/EUhP+WuQwk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EszY9LYUq/IGz+5aKiVt5JkqqM80rjAawBfEC6CacV3sMpYPzHDFd+iRP8zklt+iv
	 e0/bwWqhKes1DDMIsRVn2BCIKXQArIBZ2m4beeZFYhlt3fvXOerdH8sd+W22qbY8yf
	 KmlGW96nF03fJMvioniTTEIMdzYaCStn3D9E83RH2/FMAJuND5xtUydhb3P3OXrDpX
	 M2adwWRtWhP7ypv6083+gtca+CBPbG+iozNToYN8vT93RvyJ+AesT9Pb/BRuV8J7Rh
	 R21fO3FnclBZm27u9pU7lpjgOeybGRNQWYZglAhuTxk+nZdvAI5sS+Af4Ex3cBEq3p
	 I2CvJ93+A5drg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AECC042ED4;
	Fri, 21 Jun 2024 09:22:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D098C1BF330
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 09:22:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BBCBA435F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 09:22:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IuIUimjLtPd7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jun 2024 09:22:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 790DA403B4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 790DA403B4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 790DA403B4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 09:22:23 +0000 (UTC)
X-CSE-ConnectionGUID: HYaCYnwaRMS+e1qEO1E7Cw==
X-CSE-MsgGUID: O2k+cT6XRD+4xTtcGOlLHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11109"; a="26672774"
X-IronPort-AV: E=Sophos;i="6.08,254,1712646000"; d="scan'208";a="26672774"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2024 02:22:23 -0700
X-CSE-ConnectionGUID: CR3Eq0DMTISYXcC9plZHLg==
X-CSE-MsgGUID: D+BG3bktTPKJ08v9G+gC5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,254,1712646000"; d="scan'208";a="46984791"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Jun 2024 02:22:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 21 Jun 2024 02:22:22 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 21 Jun 2024 02:22:22 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 21 Jun 2024 02:22:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j1+6D25hG5dHwr/QflBhcRsi5X39n+BBSmEX2dgtsXnftMnzRU0NnY6N1KdqYTD96f5QdbbSRD+RLPeUrB5l1E128f8nNqT4UaE5qXySd+Zp/Pfwf46EwuiKafsdWLSKif7ZOvXN5hVVaoQuwCGK5ZyvoQ8nMHOwZf5UpUAx6mnEUjnTyFHtg5SK+M7h+4UhhQnXNA068doVHSNyrY2Swth03vBqgaAuZDEEQZv4zici4xxv0Yb7UQEImVbhRsd6XSKpCa/uerzklmR0/vBLXHs8QUtu8Vil41ghfBTJu7Pcfs4rIEcavIsJeojUTkembrvLGw1N0y0Ql5lwKIBKzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HuLuTmK2IsimZuludwNnk9y/pUNQBCOs/EUhP+WuQwk=;
 b=d76q4wIdmEqFfT2QPa3amIO6RVECnp1hWU7UBpJbmevKMa/TwGK5R4D68Y8IA/uwvnRpwvqJE90+hPhWr6icjyOiBc90+WWrBuzNJmfsPHrxAdfdwkq9cbUqBBOdSuX2i4v06z3S1r7usto5xme11GtMbm4/tMbS6WONMLg06Ou3QoO0P5qS7rtxD/bbDcHj3beMVgIfPzzoegT1Nh1AQdcTuVeAmYLxik1Anyw8PjaXfXT9YOWhAbTuDL5zJyFM9Bq5oPcEpHlaOjkl19vbeyTGrO8C7xBeEEjLpWHXOvEPQCiS59AvaiOvV7Ecr+LUEI8vEbLKibt9IOwgWWFDhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by DS0PR11MB7832.namprd11.prod.outlook.com (2603:10b6:8:f5::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.31; Fri, 21 Jun
 2024 09:22:19 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.7698.020; Fri, 21 Jun 2024
 09:22:19 +0000
Message-ID: <6414deb0-165c-4a98-8467-ba6949166f96@intel.com>
Date: Fri, 21 Jun 2024 11:20:46 +0200
User-Agent: Mozilla Thunderbird
To: Yan Zhai <yan@cloudflare.com>
References: <cover.1718919473.git.yan@cloudflare.com>
 <a9eba425bfd3bfac7e7be38fe86ad5dbff3ae01f.1718919473.git.yan@cloudflare.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <a9eba425bfd3bfac7e7be38fe86ad5dbff3ae01f.1718919473.git.yan@cloudflare.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR04CA0112.eurprd04.prod.outlook.com
 (2603:10a6:803:64::47) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|DS0PR11MB7832:EE_
X-MS-Office365-Filtering-Correlation-Id: 98f87010-bed9-42ce-b83a-08dc91d3a65e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|376011|7416011|1800799021|366013;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T0w1M1pZSGVGVE8vSjgxalQ0M2Y0OFh2aEd4NEFkaWtVQTFWQWhBVGQxM3Ev?=
 =?utf-8?B?OTQ2VmUzTHJXdlNzdkgvVFNPME1vUGpJWGVWQUNzMGw2UXI4YXc2MGtPeGxR?=
 =?utf-8?B?Z3FXTEpLRS9vWGMweUhMWGFJL0RxZU9obFNmbnIxaVpVc2hGdlBseFBFNHZw?=
 =?utf-8?B?bW4yMWJTWVpuSnNLM1FYOGIwaUtJeW9KUEZteGpidnNmd2REUDRCek1zMTZ6?=
 =?utf-8?B?cG1ycHdmMkZEdUdFa0Q0NTVIR1pBNVhLOVhGQmdFenBKT2NQTzcvWnhzTHI2?=
 =?utf-8?B?eFFSNFRIQ3YzSWNhMURKMndRQ1pyRFlWdVMwL05sNXRnTFc0dUZVVWZUZW54?=
 =?utf-8?B?R1Y5SUpsTmxSUDNacWY5cENTc2hoczVaRnlWRmg2b25MTW55OW05dzdBUUJ3?=
 =?utf-8?B?cGxRL1FBSDZFNTRUSnp5SjFNZTgrb05XbU5QR0pZR1QyMzFwS05GN1JYekkz?=
 =?utf-8?B?eVhQazlPQWJtc2g1ZWdkNjlpTXcxUnRWa0tuczQ1WWVZNGEyVzhQbmpMVzdE?=
 =?utf-8?B?KzhoYys3RVk5K292cU1aTWtVNXVaL3ROY1BzejhQd1VXYUYrRmp6RFpkdGs1?=
 =?utf-8?B?RmhwNkxKQnYrbTBqWjg3aUd4WVJBTjU3emxJYzlnYlJrSjdNTHFKVmFqRWk3?=
 =?utf-8?B?Z1NESTNPR2taMjJoK3dRTW9mcHI4NVN2VjhXYWt4OU1Ja2taMmhzRFB5L2cx?=
 =?utf-8?B?R3VhcFZYbVh0NjZwTXB2eGVaNTVNZmFibFdzMGkxdFJsR0U4OWo2emFNUDNh?=
 =?utf-8?B?VGV5Z1EzWk4zbjQ4VldJTGR1cWFnWkh1aHA3TzZSdVFHVjZMR2N2VlN0K0xO?=
 =?utf-8?B?RGpmcUNEdGxNb2JGazkrYnNmdFh0SGVCU1RQbHpMOFQ1bjNYMDZGU0lYYmtp?=
 =?utf-8?B?T3lUUW5kdGE1RXRmNjZsc3FtSDV2OGF1d0YrV0ZvaTBGT0Y1YXRBUTBUQTNR?=
 =?utf-8?B?Q01LWFAvN1JvdkhVNEt5RXY4UzVnUW9DN2F5WDFFK1g3US9aeklIU1IrbjJw?=
 =?utf-8?B?STBBcnlLQlFIZXlxN2d3LzllaEpZQ2lPOE45am1RMXl6YXo3VzE1RWVXdjlC?=
 =?utf-8?B?SjBMU2FUSGQ0a1JkdzVWdjhRLzNIVFdPdmMwS2RpaXkwSzF2c1BVNWRLa0lB?=
 =?utf-8?B?ZEIzZFNRUzBpVkpENnM0OFU1NURTTkQ5eWl5QXJXcmNsd0VGM1hCT25aZ0RK?=
 =?utf-8?B?RWJzK0VuVm4ybmw2WUVBT1pjV1p1cDhOZTZtTjlTYjRuS2dlSHl2ZHhhUkNG?=
 =?utf-8?B?Q0dlMG9mRDRXNjk0UFlra01FYzF1UksyOTRDVDBaSVhUWkViank1T3VJSmRG?=
 =?utf-8?B?WDBzZUpydFVFSE5HZFZNZUlkZWN6Q1RNOTRNV1JheUptQS9YWE1mQWM5cG10?=
 =?utf-8?B?WnRhWW0wZDlreWU0TWp3R1ZRTUt2SE9ySmRQMkhwVDM4WnJEVnFVdnJtMUNU?=
 =?utf-8?B?VXFCeW5RbGwxMGNGZFlib2dqd2tvS2JCL2d1L0dQTkVscUtETTVJdDVEYTNu?=
 =?utf-8?B?TTE5OHF2YXVuZWNtU09wcktKeHhaWnZBZ3R3eDFuYWFYT09uZmk4THk3V1gw?=
 =?utf-8?B?OHlXeDVpUGdCakFEWUoxczFSOUU2ajJTek1OaGlUditqR1ExTXpqYnYvNm1T?=
 =?utf-8?B?VWV3SXljazVmamhqV1B5MEZwY250SDJEMFVQUW9PVVFyZk9CUjZWaGxFcU5M?=
 =?utf-8?B?Q2VYVWoySXNnTHkvZWRISVJwTVVuMDJDejZrTHhWT3J4ZHFndlZnZnIwWHZz?=
 =?utf-8?Q?ISr1JcwvrLD5vgQIec=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(7416011)(1800799021)(366013); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?REVLeXpRV2FwRHhBMkZxSWU2eG9NM3VkSXdaZDZIUHdodHVsL1ZvdSttOEFY?=
 =?utf-8?B?VDZaWTdCVVh1Q0NwWXo5ZVczTjdDemJEOGswODBiNHEyRTkvbjB1V2VJTGhh?=
 =?utf-8?B?NW1lMFZVMnlLL1pZU1dRdXh5SlRMc3pTb1FnV2Qwb0loekhjMFN2SEdYdkI2?=
 =?utf-8?B?bytHcW44cVY4S243OVZoSjBvc0NRYnIzeDFMaWpmdTEwbzJ2QWxuWU9XNzd3?=
 =?utf-8?B?bVp5M3dTNE4zQnlTSkpaRk1CQkFlSVBJVjJGWDF3bjAvL1VIRGtQRGxZcE85?=
 =?utf-8?B?c1kvRXo1dDVOQVhUWmNVOTJaUjNPWU94aHN3TUNLWU45MDNrS3l2SUxTTWRL?=
 =?utf-8?B?QUV4UWNNakMzUUxNY053ZHFCQ0c4UExya1hhaXFMRmduRVYxOWlRNUxPYUJp?=
 =?utf-8?B?UEs5bHd3cU1vWEFudU1yUUFKSHRyL1BDQ2F1eFAvdlh1VU44ai9YRzV4blZ2?=
 =?utf-8?B?UU1CeGE3Y3JPYWRtUExvQ29QdHdSaWZ2eitlQVkzY29OQ0ppNkROd1pkcE4w?=
 =?utf-8?B?QS92dVBLdkJDVFVUV3JXcG1LdnFYQ1lWTm5kWHRjYTU1WGlCdS9aazNFV2lr?=
 =?utf-8?B?c0VVelNaek92Y1AwQmxRS25rVU5qQmZRTC84Z2ZQVGw1aGE1N1VDdjZhOW95?=
 =?utf-8?B?Uk9QTnNZeUlDS0ZTeWZUemZnSE9YbkRvc01zZXUzMXpyNWJlblRVc2lBTXl1?=
 =?utf-8?B?Q1dJSVNXeTNOeHJPMmdZY3dsUjltQTVNQkRhVnJram9ZVlZEQXErUEtEQjVk?=
 =?utf-8?B?dFY3UFE3M3RjSFplejJ5Z2t5TXR6S0JnMG9jRlRtbXRCNFEzS0pMbThyL1Rv?=
 =?utf-8?B?OTh6WklkTXdYUHBEeE1yS2h1Uzd6cUdpNmpvZ1F6eHdQVzVkcEtUZVFtdVg5?=
 =?utf-8?B?c0U2a1BNQXZEUnJOT3BYMjI5Qyt6TUFkdGN2Si9SUFFkWFp5Y2VrcGcvbFRR?=
 =?utf-8?B?NnJyNlVFQ0VoeFJabTNhSzM5MEhPTDZnUGp6bkZqWHY1ZENWYzhoQTQvbWo2?=
 =?utf-8?B?YUhxYVIvWjhXNnNzMXhPbml1TnVXMUFDQnNpZW0yaElHQlIrQVM3QXhDMTJw?=
 =?utf-8?B?OUZ4R1BuTDI2Sk54TS96UnNLNUkwd3E5MDEvUXZINUlVNmE4Nit6R1RaNThQ?=
 =?utf-8?B?SlpJZ2Y1WEpmWHRtdWp3NWwzNStOQ1RCSmhYMm5MR1hhcStDWmpBN2o1djU0?=
 =?utf-8?B?QXZGM0RWY1d6US9GM3BKeWRUemZPUWpDRGVjY3l4YUFRUDZvYVNxelBtb3dl?=
 =?utf-8?B?UHdUUi81QWVZQTdEMUh1OVVZVkVqQnZnTklQMGcyejFlMHl3VHlkcmdObG1y?=
 =?utf-8?B?U2djWVlwbnVjUVl0eDBhK0k2UE15YlR1alhQN2hVUFFlaWFIc2NOTm5UeTJs?=
 =?utf-8?B?UHRLY2JNRWcrNUVUeiswQmhGVWZZWXZab0loZGhELzZGdHdUNS92L01LcHBC?=
 =?utf-8?B?UXhRTjlDSWtYSXBVZEJ5d1FBNHhFYUFXRzRhamtMY1ArUS9vY3ZITEVkU0gx?=
 =?utf-8?B?RXlVUnVnR3M3VlBja0VIODhsVDhxVFBhWjJ2L2p4cTM5ZHBmN1BJRDlQMkdx?=
 =?utf-8?B?dHg0b1dmTm55ZUkrR0N1QW1ZQ3p2U29RQXVxU3lGZGJvRDJjVWZObW9QMnE5?=
 =?utf-8?B?ME83Z3U0MVJLWTVDWVJZdFZTS3hYSmJTLzl2TnQ3NzNUa2VtQi9JRnlxQTVr?=
 =?utf-8?B?Z1d6MEgwQjBTeTJZYS8vN3pPUWFHUGVUbmJwZGwzYkRHeEFLdllROXAyTlRp?=
 =?utf-8?B?ZjNURUtyR0tNWE9pVE0wL1FOODNhaElrRUZLOVlRM1N3amxhZ2RIZGdWenl0?=
 =?utf-8?B?UkU2NkxEME41Y0JpeVQrSUJHR2I3SHRkdnRsYWswbk1vMW4xYWJKOGhRZUY1?=
 =?utf-8?B?VXBwZFlBdVNzNnNXSldhK3BUU1JoSHM4NnhtaE9zOWVXM0gwMStydzFKY2VP?=
 =?utf-8?B?ZVVTVWYwNVJPSDJpcURjSlp4akxsSGxLT3JPSDcxMGNHdXJYTmlFL3ZFYWI2?=
 =?utf-8?B?anVpMEdHajNiS0hmelAyQTZRejFtUENoVCtLYUhhamZ4WS9PMFEwQi9CdDdV?=
 =?utf-8?B?Qk1ad2h4a0JNdGZYWWZhZ3RPbHg5M1V2Rk8wTkhrdnhZRmZuT0VpeGZSdlV5?=
 =?utf-8?B?aEh5UmtxRHJKVEg3ZkMrK2d4Y0xlNFdzSTkwbmxaZU5tSUpzL3B3SEJpRVY0?=
 =?utf-8?B?UWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 98f87010-bed9-42ce-b83a-08dc91d3a65e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jun 2024 09:22:19.7573 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7NlUjNqHaPdDtUqXbhqbZHKI7auqhEPW4sMRBbgrXv7Rpw5bgSxyCWV9QHLngbgWHcwJeK743AXFyT/pUestT9h0wm/rq/rkOXe4WeOCb7k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7832
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718961744; x=1750497744;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=c3dyFcrF0B1CSapuwUwnLFE29sOutGNIfT3Z9Oe59CU=;
 b=Alu2l2BHklTRWyzLXRkTOEn59TCU12Rd7J74ypHOrHU4qivzs3mfUmEw
 0E+Grt9ft9+5DT/anzxFaNi1iIAltqs9ebThWWTEpP/nu/FD0CuZk42/w
 ZhZi/9THVq6m9mbmjQa+YaqP1DV7qnOfP7mYjC5OsFih4ISIkuhynanbl
 IV1u62K+tblIUQHd/7xLk1J0Ixxdy8p24LgAAURGT6XBNgq8G8Ej2DSo3
 vnFdXkWBTeYOE0gIcao3dBbbBCTWQkHNMCEE/2X9Qff6gtdlONPJS1jhL
 iEaHWAgcCV35Krefp+x/35K7TwDVOmzebZdlcf5mKszCHKqwtrE2/vooN
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Alu2l2BH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC net-next 5/9] ice: apply XDP offloading
 fixup when building skb
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
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 bpf@vger.kernel.org, John Fastabend <john.fastabend@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 linux-kernel@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Yan Zhai <yan@cloudflare.com>
Date: Thu, 20 Jun 2024 15:19:22 -0700

> Add a common point to transfer offloading info from XDP context to skb.
> 
> Signed-off-by: Yan Zhai <yan@cloudflare.com>
> Signed-off-by: Jesper Dangaard Brouer <hawk@kernel.org>
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.c | 2 ++
>  drivers/net/ethernet/intel/ice/ice_xsk.c  | 6 +++++-
>  include/net/xdp_sock_drv.h                | 2 +-
>  3 files changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index 8bb743f78fcb..a247306837ed 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -1222,6 +1222,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
>  
>  			hard_start = page_address(rx_buf->page) + rx_buf->page_offset -
>  				     offset;
> +			xdp_init_buff_minimal(xdp);

Two lines below, you have this:

	xdp_buff_clear_frags_flag(xdp);

Which clears frags bit in xdp->flags. I.e. since you always clear flags
here, this call becomes redundant.
But I'd say that `xdp->flags = 0` really wants to be moved from
xdp_init_buff() to xdp_prepare_buff().

>  			xdp_prepare_buff(xdp, hard_start, offset, size, !!offset);
>  #if (PAGE_SIZE > 4096)
>  			/* At larger PAGE_SIZE, frame_sz depend on len size */
> @@ -1287,6 +1288,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
>  
>  		/* populate checksum, VLAN, and protocol */
>  		ice_process_skb_fields(rx_ring, rx_desc, skb);
> +		xdp_buff_fixup_skb_offloading(xdp, skb);
>  
>  		ice_trace(clean_rx_irq_indicate, rx_ring, rx_desc, skb);
>  		/* send completed skb up the stack */
> diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
> index a65955eb23c0..367658acaab8 100644
> --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> @@ -845,8 +845,10 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
>  	xdp_prog = READ_ONCE(rx_ring->xdp_prog);
>  	xdp_ring = rx_ring->xdp_ring;
>  
> -	if (ntc != rx_ring->first_desc)
> +	if (ntc != rx_ring->first_desc) {
>  		first = *ice_xdp_buf(rx_ring, rx_ring->first_desc);
> +		xdp_init_buff_minimal(first);

xdp_buff_set_size() always clears flags, this is redundant.

> +	}
>  
>  	while (likely(total_rx_packets < (unsigned int)budget)) {
>  		union ice_32b_rx_flex_desc *rx_desc;
> @@ -920,6 +922,7 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
>  			break;
>  		}
>  
> +		xdp = first;
>  		first = NULL;
>  		rx_ring->first_desc = ntc;
>  
> @@ -934,6 +937,7 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
>  		vlan_tci = ice_get_vlan_tci(rx_desc);
>  
>  		ice_process_skb_fields(rx_ring, rx_desc, skb);
> +		xdp_buff_fixup_skb_offloading(xdp, skb);
>  		ice_receive_skb(rx_ring, skb, vlan_tci);
>  	}
>  
> diff --git a/include/net/xdp_sock_drv.h b/include/net/xdp_sock_drv.h
> index 0a5dca2b2b3f..02243dc064c2 100644
> --- a/include/net/xdp_sock_drv.h
> +++ b/include/net/xdp_sock_drv.h
> @@ -181,7 +181,7 @@ static inline void xsk_buff_set_size(struct xdp_buff *xdp, u32 size)
>  	xdp->data = xdp->data_hard_start + XDP_PACKET_HEADROOM;
>  	xdp->data_meta = xdp->data;
>  	xdp->data_end = xdp->data + size;
> -	xdp->flags = 0;
> +	xdp_init_buff_minimal(xdp);

Why is this done in the patch prefixed with "ice:"?

>  }
>  
>  static inline dma_addr_t xsk_buff_raw_get_dma(struct xsk_buff_pool *pool,

Thanks,
Olek
