Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2114AABC91C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 May 2025 23:22:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C33A7811D5;
	Mon, 19 May 2025 21:22:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6fx0UyvXnFLz; Mon, 19 May 2025 21:22:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 10CD8811D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747689756;
	bh=LHLoHj8MMigJa26yTKUXtwq/di8BodqiqsfmHWwCaQA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZwlJn81wbMLfxrz7qsZDKYM+xLdBdXW/724xojwsKhpu2qc1w7r0zQ8Lg4CIK1F9v
	 2rFN+vSK50upQQOQWl7imIs6qZpVi9/MsnT3t/7Wr5eipUWUHLNdxJR9svqStTKLrf
	 gIjJ84CDSnx/+6qb0J8bdxHP95TI604Y7AeovlbCY9gO5y182TThl3jDrQ9a1LACTp
	 k7tAs0a7gF65ASl7J76u24m9zMTVVDStw4cZ3ZC8eC4iGyfWpxyaTF3t0LoTHujM0Q
	 pi02q5PtpK2pIXIJHTSdBwcXnBWcrCh1zyQZBni0F1/vf5UQTP/MQcoEe59QPiUMlC
	 YCWWD7F5tfOBw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 10CD8811D8;
	Mon, 19 May 2025 21:22:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CC396E4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 21:22:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C5D7241952
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 21:22:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vC9nJsyu-Zkh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 May 2025 21:22:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C2CB6405AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C2CB6405AA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C2CB6405AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 21:22:33 +0000 (UTC)
X-CSE-ConnectionGUID: GfJTd6LqQIKt66beZ1MTxg==
X-CSE-MsgGUID: UxiDFIEPSqqNHojOPh1liA==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="37222603"
X-IronPort-AV: E=Sophos;i="6.15,301,1739865600"; d="scan'208";a="37222603"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 14:22:33 -0700
X-CSE-ConnectionGUID: bqd4rMlbSzCfypUSqxbOLQ==
X-CSE-MsgGUID: jcy50c8nRYSZg1dbIoYCUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,301,1739865600"; d="scan'208";a="144363441"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 14:22:33 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 19 May 2025 14:22:32 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 19 May 2025 14:22:32 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 19 May 2025 14:22:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fTO8bgRITawNSjwGIgycPVtPm4cO0TjlbbupGL2p17hJSgnGDK2OVg23egpLu3Tdoz+EQIb3N9ZLu5lhnNC7gQ8rtk6/IE+RsoIOPCNhF99h4kFH/POsoXAX7cbKyjnwhNekA6/FjexqjC6H4IXty87+uMQOV3XR1cQs+QgE0wp/K8mpHI2hx1TskB6h3E3zqLZVNnXUM4fSue4glddQcCXBeF3i0yoY7uYWfcuDSQZF1BqbWsQxjkLHyRMDwGacENurLMu2YcHufI9QJxB2lxCjc7Ly7pfuj3/DFZ8pA2Yc3VzL9YQAxVE7kH+D2L7ixhwCvreV+TYMsX5vQZNIsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LHLoHj8MMigJa26yTKUXtwq/di8BodqiqsfmHWwCaQA=;
 b=JDfFuoVP0/e9rubWAh+YPvzMWSToC/Dp922z6PRgBSzDSDnXKePF14WkEGxtJM7WZ2qjcs/qEOwcnZP2MiKe92VikRNQk794O4BFYjkudN5hzxH5eC9DGlhMy8jVzcVVatSPGY4LNRNFW8wGDKmGgbn38idb5q+cJOAph9wH9b8jwFlyMSO381gRPcmLAYdWaqmzZ6sGYrSMPC+Q0temZFGxcGzscR3qWO/Kb6/aubwmXz8qf07WfK1S/R5WGGICCqzTOidTvbAu0gzAokLbYUaf6LL0/82FsvHE5K/cSekw5W8P+GunZXfPvOu02uM6ZDSAFUc37YyP4UKnhqL3qQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SN7PR11MB7043.namprd11.prod.outlook.com (2603:10b6:806:29a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.27; Mon, 19 May
 2025 21:22:25 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%3]) with mapi id 15.20.8746.030; Mon, 19 May 2025
 21:22:24 +0000
Message-ID: <72004e1c-d327-4a69-98fe-24336aa66e8b@intel.com>
Date: Mon, 19 May 2025 14:22:21 -0700
User-Agent: Mozilla Thunderbird
To: Robert Malz <robert.malz@canonical.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <przemyslaw.kitszel@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <sylwesterx.dziedziuch@intel.com>,
 <mateusz.palczewski@intel.com>, <jacob.e.keller@intel.com>
References: <20250516094726.20613-1-robert.malz@canonical.com>
 <20250516094726.20613-2-robert.malz@canonical.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20250516094726.20613-2-robert.malz@canonical.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0225.namprd03.prod.outlook.com
 (2603:10b6:303:b9::20) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SN7PR11MB7043:EE_
X-MS-Office365-Filtering-Correlation-Id: a014024f-821f-409d-9576-08dd971b3fd1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|921020|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SVN3MDVibGY3Zlh3N2MwNitTN3ZKSWN1MGt4bzY4cTdtVlpmUy9wK0NSeVNX?=
 =?utf-8?B?Yzhla01vWE4wMG9Sbk9ha3NBZjhqWGY0eWdReGs3T0hCTUx6V08xZVpqZmZT?=
 =?utf-8?B?ZjhXVXA4dzd3ZTczSjl1dEt2cTZ0UVExeTdLWE9lK1NmRGRjZmFyNzdiclFK?=
 =?utf-8?B?NFpNUXNURDdydTlHNHlzcW1acUV4K0xIeG03YUhvb09LQzljMEJoUGkzZzVp?=
 =?utf-8?B?dFU1TllsSGl4eVBJN05tUE8yV25HNm9NTjM5Z3hLWFRyODZsRURMSkFKZlVn?=
 =?utf-8?B?N1BwZHRudUUxM0s4ckdJSmFOQ0VxemdUWk13RVd2dWUvMUdHYTNCcjdoOTJO?=
 =?utf-8?B?Z2lKQ09iQ1oyZ0c0cXFuK3pwSHl5YUlmMHR0d2tpclFKOFoyZ0M1RmRPcVIx?=
 =?utf-8?B?T1hEdkdBYlRPUkNPa0lSRm5YWVdZa3hvdmZyRDdYTjRaTy9MR3QvbEJpYjFM?=
 =?utf-8?B?NWxCVkwzZmRFeGdXbzlLRndZaFpHeUo4WmZzQUdTTGxva3RFT0dKdm83aTB6?=
 =?utf-8?B?b0NtdXk0MzRqdG41eTB6NlJnV2FSYTJHLzJrbE83WWtnTUNveWRGbkpGeXRJ?=
 =?utf-8?B?cDF4WEFPanpOdkFWeE1neXIwOUd6V2JNKzg5aEliLzZsOWJHWFduT20xT0Y5?=
 =?utf-8?B?aXExeDFKVHRnd3BzR2Q1Um5NUit5M29FL3dkakYzbE40ZFh4SFB5VE1WOUM4?=
 =?utf-8?B?UlpldXRaTGpHd2oxb0gyY0Noek85d08wWFpxVFFHTjhxQkZSa1pDKzJUajY5?=
 =?utf-8?B?M0plbEVHcUR1cmM3bEF5TW1uYlM2RHdybCtZdHlsalJOUWFvQWhBQWNCRmJR?=
 =?utf-8?B?WlZVNE4xU2dEeFpqODFDbGpRcjN6aXpHd2hxdXNDWDc5ZE9nU0Z4NnFmeUx2?=
 =?utf-8?B?cXMwNTFmR21QZ0xuOWtFMWVZNFB2UGFkTjR6V21QMmtneWZleEdCaXJLanJR?=
 =?utf-8?B?eHhOYkxYL2ZKVUJOYUpPR3hGUGJpbHNCMDFvWlIwcmQxWDJhTW5tazZYRU15?=
 =?utf-8?B?dDFKeFJjZUI3S3JBcmtNaFEyQlFqT2JjQW12WEQ0R2FMbVViL2RycTRHdC92?=
 =?utf-8?B?OVk5TTUxYjgxYjNOaU1BcGRzb211SUxYRVZWQ3U1Rmcrd28zS3pQU05pNkpY?=
 =?utf-8?B?bnkweUtPRk5zeDF0TDlRSGpyeEkzSWdHWkVqLy92WmZvSWpQdmczNWxWYXRp?=
 =?utf-8?B?WW82d3VGK3lKbzcyTEpqTkNGWHVtUDBNL0pSVFVZUmtPMTdCd2M2Tm5TYUVK?=
 =?utf-8?B?ZXBNYWNaTUZaclM0MVYrQ3VNbC8yYjltbzV3VGdxaXFRS1F4eXZsb3l5T1E4?=
 =?utf-8?B?elAwUSt0KzhaTUpDbXZHZUt2SFdQaFovUVNvLzl4djZXblFMSk1KYTNjT0h1?=
 =?utf-8?B?b1VScEdyN2NnN1NGMnI2Z29VRnBldjVYYVU5LzF4anBDS1FLYmpNdFNQZzNC?=
 =?utf-8?B?dkRiQnB6MDNkcDdISkY0cHVpUjcxOXVGMGxBMGsrTVBmc0JaYjAvZGdDQms1?=
 =?utf-8?B?YTR4NWo4OCtFMFdPVlk5YVEwSUlQbjVtdVdQOXQ2YTNKeU83MVQ4eDJ1RXc4?=
 =?utf-8?B?ZU9Ob0pzVlgrRk52ZG5OeUhGTnNMWFpPZXdFOElBNEkrY29kcHNjcHlENzhs?=
 =?utf-8?B?R0NIelc0WjVrUnRWRUtkNlpVUmZTNUlVR21NU1BwZ2ZmY0I2dTJRamRmQ3lY?=
 =?utf-8?B?SjJlUHBrMmYzbjlNaW1uUUZOTjg5M0dpUERXSlNONGdPQ2svMTQ1WjNheVVG?=
 =?utf-8?B?NUwwcG54Ty9reC9IVGdxWm1hVmVpampwTGd1aXNyZkZHK0dyY0JUbzBObEhk?=
 =?utf-8?B?TURzbWZ6V1NGNVVpbXh6cGJtRTFXY3BRam1oRVBZei82cGw5VTN3bmYrU3Q3?=
 =?utf-8?B?THhxTVhQQ1lRRzdsQmNYcEJmKzZnOGhENU1YMjdJRDkyeGxJTDlJc0lZYm9s?=
 =?utf-8?B?bVZ2SUNzMHVTOG11eHhOWUswbEpuRFZiMERjZ2hud3dsa2hweXVwZTlPNEtp?=
 =?utf-8?B?THhiN2xNZnhBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(921020)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YTFkSXdoR00zMTdpWnlHa3c1cGJYL3BHRXAwZTdVU21VUVVkR1JLMEtmOUg4?=
 =?utf-8?B?eUprV3NRcXFORHdTSGlKclZFOTA3VnJ2UXhBZEp5T3RSMVVPQjdoemZ0Y2o0?=
 =?utf-8?B?WWU5WkRLZkxWRHIva1lwSGJzbVEvcXF2V2pCSzAzUXpxSzdKcjNKWndETkp1?=
 =?utf-8?B?dXphbnA0bWVlV2tJNjNiZXRjRnAvVWxIZlV3bzVEU3hqK2c1aHRZMHMrdFhr?=
 =?utf-8?B?b3R6NjRnZEtYTDB5c3lEM1ZWdEczdDY1Y0l0NUJRSjFURkRObkZNNk11SG1j?=
 =?utf-8?B?V2dtcVR6cjJscnFuc3dvNU83MWU5ZDBsT044UXpWaWNONzd4cnZyWHN6R214?=
 =?utf-8?B?bnpxUDg4TkpjTUV3Njg5cXBjVU1pN0lCaUFJUitnQXNoZ05kQ0gwTjVhbWhp?=
 =?utf-8?B?L3d3WSt0d01zRVJmR1dORXBvUjNFenIyVEgyaDNiNk9TL21FUFQxMldKTU0z?=
 =?utf-8?B?cGFFZnhSZlZscEc5eVgvaDY5OUJoMHNDdmhWR09uc0V3TEFNLzhQL3BVdUxZ?=
 =?utf-8?B?bWlWM2tvdGxCalYwbkxRUWRyRHVQZG9DWHFtME8zQlNFZFIyaC80YitZNzJm?=
 =?utf-8?B?ZUhJeWtjcVlZUDNNNnpTa0NIeWZxZHlJQ1MrSVlDL0VxdFpNckdLaFlidG52?=
 =?utf-8?B?ZEN5VmdXQUtvU0hLK2dlNWRSZzhxaWFoZFRqclJpL2dPV2FOOE44c0l5K1pr?=
 =?utf-8?B?aEZJRnhvUHNXOTBubjM2OFh0N3FGeWpnclhYb2YyK0lvM0tVZFRxcHpNbDF4?=
 =?utf-8?B?U2lSbzJwU2NrbzZWa09EOVRsekhvaGdLLytNbWdidnVQYUNPbFN4b1hkMU5P?=
 =?utf-8?B?QmdEOFF0amQ1QkdlTnNPMEJ6OUlONlV4Yzl1ZTRrYU45Z2ZLd3l1SjZGK2dO?=
 =?utf-8?B?TzBPQ3ZPMzJiL0tpeWVaMitQOG5CTlJlZmFOUTBjME9oM1VMakErcU1PWlhq?=
 =?utf-8?B?ZEFlZ0l0MlUwSldENnZhSnhNaVNvWVNnTXNzVFJtQTk4YnN5RWo1Rk5TOExz?=
 =?utf-8?B?ZWRhRkxycUhtbllYS3hoMlJiSGlsa3k0YkpYRmhCSEJQWkhpeDFOZDBFY1dY?=
 =?utf-8?B?Z2cyRmJVMGFCN01DaFJGT01waWlCTDk3UWFtR1R1Rm1FMFNrYzJ5M2VzaW5E?=
 =?utf-8?B?RlhBYXJCTThkNlVxdjFsdlNMTUVhOE40aGE1a3FKOGRlOXR4c2hCbTRlTkN6?=
 =?utf-8?B?Vk9Rc3J5R3dVNkJkQ0F2RTBSZ0lHNzdVMUh3cThRcnYvYTBwaDN4V004Z3d0?=
 =?utf-8?B?K083ZWxFa1NTSVZobEx4ZmpITTFzWTdYODNoOWVhQWNpNmp2UXhldFBpUnhq?=
 =?utf-8?B?Z0ltNzF4ZmRob05XM0t2VEc4VVVDay8rTzJkMXJZZEw3Y3FUZCtJNmQ0Mncx?=
 =?utf-8?B?U054ZGJabVZRZ1ptcVQ2OW9ZY3RIN2tPTEJVc2p0L3dTN1ZqQjAreCs0N29P?=
 =?utf-8?B?bWlFVkFEUHRYL293NHoxeUJLSjRabzhEWmFrdU51NWhyVlBuK2t0cUtkN1Rh?=
 =?utf-8?B?UCtzMG9keE5JUnpXbzBETjNHWEpzbXZhbkdMRVpuSGsveXNncWRqaGhYNzBD?=
 =?utf-8?B?K0Z5dXdVSkJVbFNmUVlzemUxYklXUTNpMnhJaWR1NzhZRnJWWjB4WEMvb1cy?=
 =?utf-8?B?MEcrNVBvdDE3a1V4bmQ0Y2FtSER0MTRETWNNcXYrZStld2w3OWRzSXNEZS9n?=
 =?utf-8?B?R0tSR25qMTNNWElnRitqWXBjRVBqQkhReU0rMXVpaG9hcFBPT0l0WHc0NEYx?=
 =?utf-8?B?NlRIa1pZb0VZWU5saGZlZUc0Wkp5K3FMV0JYcnlBSnUxajBXaXVCSGRrVnpB?=
 =?utf-8?B?T1VpeDlIc250UTF2WG43VVVaaVVRWW1La3RtVlAyQ1V5WmVSdVhmaExPSDFQ?=
 =?utf-8?B?T2YwdmpNdHEvcWFodHZaWENTU2hMd3RYSG9RQXJRTm1Jck52a2owd3JoYS9U?=
 =?utf-8?B?cW82SDNYcE1VdnBYZUZ2dHkxdENVckp5TTRsQnBzdTl2d0FRTkRnYzMxR2N2?=
 =?utf-8?B?Tmh5K3V3TkVpallBQnBVZVdVSDNEZVM2cUlSRXltVWM5ejEvNmxvZHVETHIy?=
 =?utf-8?B?aTdkN3BwTTBqWER4MlJRK2pEYVZvQmkzZ1ZTS1ZEN3lRVVJzSVlUelpIOHRr?=
 =?utf-8?B?amt6U084cDIyWHpKR0lVT1o5ODBwM05LNWFZb1NiODZvQStSalcwSjkvVlY3?=
 =?utf-8?B?RUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a014024f-821f-409d-9576-08dd971b3fd1
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2025 21:22:24.9150 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8/ODmR4pO1jK3JMDSj4aHKtjshB5AmTKs666wYL/hsjDYOhm/tbODf0Bdx1Vt2e7zqvn9xictx3c1I5w8MuSdf4p6f5dIPPmWW0UkafStT4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7043
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747689754; x=1779225754;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=pg5QGureKs8BjfBq+/CgUM7BLUFmQG2zLCOkSddOXCg=;
 b=ADsZdgfHnP3hc1xyT4gsLC4iEWviHFD0NHE2LBS5Q5zFI4E/K71m2M9k
 ZAH7IRm8QAXEdpkWl2IthI2YxGSRERqLfPD7pS+Saj0aInC5pMFBV4+lB
 zzCkl/oqWIMAcZKhm70yictclULcbCFjJyhmlny7GN/1/UhZaL4QfU2E0
 +/miVB0fxZAKSTF0SwBEAWfWmhIvhjeVOdWXbgZjEvXeEDHzcif/TYJqn
 LpP3VAL5NGwbzTi/N0OUIVKQ2hRActqmK7kJJmA0SiQvh3Qs4SL8n/+Pb
 1j4QHqqBpLtf+vXm8OiqsbrB6hfR8Z/3i+gfD5fxvKGeb6xZS39JbMwHa
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ADsZdgfH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 1/2] i40e: return false from
 i40e_reset_vf if reset is in progress
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



On 5/16/2025 2:47 AM, Robert Malz wrote:
> The function i40e_vc_reset_vf attempts, up to 20 times, to handle a
> VF reset request, using the return value of i40e_reset_vf as an indicator
> of whether the reset was successfully triggered. Currently, i40e_reset_vf
> always returns true, which causes new reset requests to be ignored if a
> different VF reset is already in progress.
> 
> This patch updates the return value of i40e_reset_vf to reflect when
> another VF reset is in progress, allowing the caller to properly use
> the retry mechanism.
> 
> Fixes: 52424f974bc5 ("i40e: Fix VF hang when reset is triggered on another VF")
> Signed-off-by: Robert Malz <robert.malz@canonical.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 1120f8e4bb67..2f1aa18bcfb8 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -1546,8 +1546,8 @@ static void i40e_cleanup_reset_vf(struct i40e_vf *vf)
>    * @vf: pointer to the VF structure
>    * @flr: VFLR was issued or not
>    *
> - * Returns true if the VF is in reset, resets successfully, or resets
> - * are disabled and false otherwise.
> + * Returns true if reset was performed successfully or if resets are
> + * disabled. False if reset is already in progress.

nit but if we are editing this, let's make kdoc happy. Please start with 
Return: or Returns:

Thanks,
Tony

>    **/
>   bool i40e_reset_vf(struct i40e_vf *vf, bool flr)
>   {
> @@ -1566,7 +1566,7 @@ bool i40e_reset_vf(struct i40e_vf *vf, bool flr)
>   
>   	/* If VF is being reset already we don't need to continue. */
>   	if (test_and_set_bit(I40E_VF_STATE_RESETTING, &vf->vf_states))
> -		return true;
> +		return false;
>   
>   	i40e_trigger_vf_reset(vf, flr);
>   

