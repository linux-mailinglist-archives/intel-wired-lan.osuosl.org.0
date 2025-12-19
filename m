Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3946DCD1E98
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Dec 2025 22:04:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE06360B8A;
	Fri, 19 Dec 2025 21:04:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ePTpt_tApity; Fri, 19 Dec 2025 21:04:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E24D60B8D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766178264;
	bh=YQinGmC82qPUysrAUUYoKjRWr45DyS2PgUAJpF/ULGM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sIJ167srUNg2dP4HrOLZkYY9WS8GQd8x08lmzkVWC78qVYsZlJ3Tjm6RT6qxIhzOw
	 NfJkoKjORjtNnWHU3otqjCi86+pHnkGqE/TpWDelIWIakRHsFM/aQBLL+9XKoRyCLT
	 wmzRl0NirePsJ70Hy0AiNNDmahjmbPeWii1yWknc3TzaHDPE0JUVyB31oGTU4WVOBU
	 j7ntYvJMXXGl/NO1vrChytxsrsH7ExJ/JOR4SFgXP/xdjRD4vbMClCOgtjEYnuasCj
	 qLz+0b7g0LB5k0JV7vO5tMrAx0Kf5LQK+marj3Kt4iMTePB2rlUidc+usdvaQtTKPZ
	 sGHSt6MfS14UQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E24D60B8D;
	Fri, 19 Dec 2025 21:04:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4296B1A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Dec 2025 21:04:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A320860B5E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Dec 2025 21:04:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b8I9HVlMWf0n for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Dec 2025 21:04:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D8BD560B4A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8BD560B4A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D8BD560B4A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Dec 2025 21:04:19 +0000 (UTC)
X-CSE-ConnectionGUID: VlPcz762RRuDfmB8z/KfsQ==
X-CSE-MsgGUID: 5aYPN7PITsqDEq7Q9M9wJQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11647"; a="68293599"
X-IronPort-AV: E=Sophos;i="6.21,162,1763452800"; d="scan'208";a="68293599"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 13:04:19 -0800
X-CSE-ConnectionGUID: XE7smboTT+WpcVtcqPyTmg==
X-CSE-MsgGUID: 4wFnVOPVQgSXAPu25XwqFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,162,1763452800"; d="scan'208";a="198949402"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 13:04:19 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 19 Dec 2025 13:04:18 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 19 Dec 2025 13:04:18 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.32) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 19 Dec 2025 13:04:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Cre4TKeEWOqjLL8nkKzFe8FRa72Uw7rh7Ect7aOWvM8vkDd6g2zggD064FQRZDYI+iqNHcgpa5ts7tiJ3Eg+Ok0AbigQC+cnemlMHxj0JJXQ1f55vBDSx6rDfwCRBtDRGkneSnNeOWLgoxhyDu5LJ6NSQnpTQH162Zd0l99oeGA4PSc5xcz5UDhmyneHpNdwg6MFPjoz7KnMuo+6yPfnnjRBWgiZkgxtAzDV20YzR51EvMDuk5RB/wGO2M0R/JReFGm+ePt6VcoVLUlzHhfOXUEAlz1t+Q1TFPckLBJf/Uc2Zg+moaTh00r5rJ+LqA5eIYycEGwiLBlA/16daomQMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YQinGmC82qPUysrAUUYoKjRWr45DyS2PgUAJpF/ULGM=;
 b=vwwvD3SzXCQkImdyfUctmi3QuKHuukXGuwsuSMh1C3+9kyFUe228AigoZ77EONw+Cx9nmEeEeF1mwldHueK+njiILQWkFv2kVvEwnnsjBE4lBBDVczTB7Gz6/Mb9cGCeThWZjenH+MY4lbW+J1mAHHpoPCOC4MNi4NvfYjyb7Ro6i+xvcQ8ip3Feh2/JyTU3aYFA5/wa3udcwGd4ZL64rysHLjNdFvE8PUcxoRyo7rG0wfTbDvMhnqSe/Yf1k/pExIQPP374pau4N4WvA+wiE+Y9fn3Cgq06XWQlI8QcKDk7I14NRWlhiZpPcY9Rf3TUd5s1zXK7vSlHnMTf2sOEDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by DM3PPF1A34EE115.namprd11.prod.outlook.com (2603:10b6:f:fc00::f0e)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Fri, 19 Dec
 2025 21:04:12 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%6]) with mapi id 15.20.9434.001; Fri, 19 Dec 2025
 21:04:12 +0000
Message-ID: <c039912f-fbec-4d02-b4a9-9259e09db612@intel.com>
Date: Fri, 19 Dec 2025 13:04:08 -0800
User-Agent: Mozilla Thunderbird
To: "Behera, VIVEK" <vivek.behera@siemens.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Yoong.Siang.Song@intel.com"
 <Yoong.Siang.Song@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>
References: <20251215122052.412327-1-vivek.behera@siemens.com>
 <PH7PR11MB5983787A7ACBB87D70DD6327F3AAA@PH7PR11MB5983.namprd11.prod.outlook.com>
 <AS1PR10MB53924EF63D14B5B1D735F3928FA8A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <196b561a-f23e-405c-8bb1-164d4cf63752@intel.com>
 <DU0PR10MB5387DA3C8BD8703907230ED18FA9A@DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <DU0PR10MB5387DA3C8BD8703907230ED18FA9A@DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0164.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::19) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DM3PPF1A34EE115:EE_
X-MS-Office365-Filtering-Correlation-Id: ef509073-cd77-4aec-6dbd-08de3f4228b1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|921020;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?anFWUktMWXFuNnpPcEM4TjA1dy9FTldtaVJrSWNtaytOUlVyVEI4MkRQSXpt?=
 =?utf-8?B?K0UrMFhMeTRFcjM2R0dPNFppRDc2RmNVMVNDZ3pyVnlpWDduVDczWnFiUWtG?=
 =?utf-8?B?NmVCeGdWdzc2SU05YWJmU1JuakQ3ZWtyS0ZQZzJwL3BMb1FaZjRtR2FoUlhS?=
 =?utf-8?B?WFRROWFQeEx5N0NlS09ZbjcwNHJmcVArZ0J5ZnRKRWVRaitkUEFGVURaQzVx?=
 =?utf-8?B?NHBINW92VFhraHFPMEhzUmgzalpCQ2E0RUl4czNzbTNOVnNLSUN0S2FRd2J6?=
 =?utf-8?B?L1p1dHVtWUxqRG9oM1pyVStLcUdWTVQxSjFmcXhveERDWG92UktwNm5KOENM?=
 =?utf-8?B?TUg1Z0hNb0hKS2o1VW9UdVFZaFJsb0NyU2pQMXgwSWoxSmh0Y2hZQ3FGM0s2?=
 =?utf-8?B?amthcWcvN1lYVmViV0dMZ2RlUWpXa0cxb29vNFJBMjRIcEt1ais0TFNIMEJO?=
 =?utf-8?B?OVUwdHdPVDAyRXhKZDZ5d1FiZTNONkpkT3U4Q3FCZHRFVXVMRWpCQ2hGWVdr?=
 =?utf-8?B?VEVPaFNhWlNxZnZ2VWlsVExqenFRM1RBeEpMbUxUUGFHQ0NFOVlmTHJQYjcw?=
 =?utf-8?B?SDZPWkNVcmNiUVJSOFYzUEcvVC8zYTVQM1FkUjNqdzdKRFMxelVEdW1Nam9H?=
 =?utf-8?B?VS9wRXp6S1YxTjc4MDZPaDEyN3MrZlIvVE9DYnZ1WlhGTnhkbHROVnhvejMx?=
 =?utf-8?B?eG55NGtnWGwwWG1CZWgybDVDcDlMTWxVVktRZVlyRDEwNGFoeWFGeHBidHZ1?=
 =?utf-8?B?SmUzUnRpZ2o1L3I0K3JUUVVwQW91dzVpTzRFNXI5bFFEeGxueExFMWw2RUhv?=
 =?utf-8?B?eXVsR2Y4NlNGYnZNdHQ4ZUFWejJCU29BQ3gyQ0RUODRNRXFScUd4aEZMT3U5?=
 =?utf-8?B?NnhtY0xOcHVCN0laczZSSnp3U0F5dXVtNHBNR1gyRk1SMjJRbStvSTVUQ3Ry?=
 =?utf-8?B?c1RQUDNOTHVjbzhtRTJOWE8rclJpQlV3ZEdXekIzYjFIQVJ3Z2pKRTUrTi94?=
 =?utf-8?B?VDdQdjhyMmpLMCtmcHF4TmJPRWd1cEFMVXUrRXM4azRTV0pxOG9tNmxBVjFD?=
 =?utf-8?B?SUp0VXp5VUE3N2ZOUGNWd2E2NEhZMjlFMTNXdDNHTVNnYnBTMlRqSGQzQU5C?=
 =?utf-8?B?LzdwZnhxcm5QbFg5TzZKcDdUai9VbDB2eUFZNUJsQzdJMU91Wnh0RjJPWTBs?=
 =?utf-8?B?Nm03amFKdGRlV1JOUGovY0IwR1l0NWErelA1VEdwSlpSa3JEWTROb0VDazlE?=
 =?utf-8?B?b1YwK3cvYVY0ODAzMVZCWjZST2c4YjNUYWdxZVV2NlE2Z1hvWVpXTnpUSGEz?=
 =?utf-8?B?Z21MdnFpMTNMc2NxaC9sTDF1L0FrSklPazlLdHVwQ0pQWjFJbmhZZ3hpazgv?=
 =?utf-8?B?azlDSXRNdVMxZlBSenRFQnB1QXNjandUdUthYldxMHp2dXFLMGRVLzNDNkk5?=
 =?utf-8?B?bkk2c0xLZFRZOWJhUmltUDlQNDA2VW4zM2Ntd3lOdU1YRW8zSjk2ZU5BSmJy?=
 =?utf-8?B?bjdlT20vUGwrQytXdkNDalE5K1pSY1kyaFA5ZnVlYVZMK2hCTyt4VFZBUlJZ?=
 =?utf-8?B?V2JnYk5CVU0yQ2hHUVhaZmFBNVYrZjJUeWFPanl6eXUxb1BCazNNdFVCUEg0?=
 =?utf-8?B?R2tJbDRpU2dEYS8raDRCUm5NYVV1dG52T2lMRlR4TDlYSHNueEowNC9ERVZB?=
 =?utf-8?B?YzU3VkJUSC82b2lWSUE5MDc2UmFoZHcxa0cyTllxb3ZlcnluUGRscWs5bUov?=
 =?utf-8?B?S0dLVWJ5WVkrdGhTcHlhTzB0RG5qcVVYd3N1bUt3NjNPaUU4UjdaeUNubmVM?=
 =?utf-8?B?eUJscFRlTFRFL2J6cXBZd2pHRndmRXZUdHk4Rm9taXJXUXBrTzUvQzQ3WTRk?=
 =?utf-8?B?NFFBTXlsKzdHSzN0WFVsTmd2Sm1kbGJmWHBmVHJaTFNKcVNKN2Z4dWRXVUNU?=
 =?utf-8?B?bDZZOFdESS9jOGR5TW15RVk4dEwxeUtraE1KWlEvVHVOY2JtclAvdGpsZUVu?=
 =?utf-8?B?NDV1OG8rK3M0RERWdmg5aHhoZGtFNDExbEgyVkJQOGhYbG5RanhvWTkvcFZT?=
 =?utf-8?Q?qjFqnc?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(921020); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SnlEZmVtY3RkbjdLWlp1RTJWZ3YyeFBYVzFpUlA3eFQvRVp3Vm9kSjMySmhY?=
 =?utf-8?B?SWpVRVNvazhmQjVOT3FOMzZqa3prVVJsZUExek0xdzJua0VzSXJEQU8zNVo2?=
 =?utf-8?B?MkZvcDNuUjNaaEZ5OWozV0xYLzdJWHJaMEFXMmVlc2dPUVF6aFRyb2YwdVN0?=
 =?utf-8?B?MnhWZ0pMRmRxWWVEZkxUQmRvN094RUJKMFJLSGNSTmkzZmUzRnlqL29zb0U2?=
 =?utf-8?B?T1VQQkp5MzdVditCaWcvQnRRWlBMTGxxcUdyQ1F4MVlmREpucDNUZk84aThI?=
 =?utf-8?B?NmRFczBBTnVEeXZzK1Y4ODZ0cjM1L0F0Y1B3ZElxaTJiL24zUGNNU0poSVJM?=
 =?utf-8?B?d1JwUGNlZXFSNnJMNWVpTjQ5ZUdBc1pMdWdyRmJ6ZG5WOHRtYmJnaXZtSGdW?=
 =?utf-8?B?U016MFIxWUhWNnBUUG1QVzJ6bVJsTVJaMWY1OTdSTXRuUWFDMjF3NjAvemgw?=
 =?utf-8?B?UFFxbkJZejBmNTQ2c3ZqQTdHbklhUHB2VjFGSUhqS09OM1RrN1ZJUVVEVDZB?=
 =?utf-8?B?VzY1SnYvTnN5TVI0WmRjYmEycDhoMGk5alFCY284UFdKdVRUT2ZqdXVXdTZa?=
 =?utf-8?B?cFU0dzRkTTVBSFpvMmVRT0VpS1NDWDRqR2tUc251S1dBbVVHelFGaitIOEpt?=
 =?utf-8?B?SThyMitiTXJ5ZnkycGdVUlNMS1JiQ0dtMzFzK0tNYzYzY3YxeWppbW1rYXdR?=
 =?utf-8?B?YUEvZ2hSNEpIbUtCb0h6UEJtUTVXdXJzRGFoUk8xSjJyOUpYK2RDYzd6L1ln?=
 =?utf-8?B?K1Q2d3ZZYjFIWG1VTkZRanBtTXFrZ2JSY28reE14THhwTEJ6RTBsVDdpMHh1?=
 =?utf-8?B?dklPWnluREtadVZLK1IyQ2Y4bjlrNkEwZy9zVVVBaVNLcjVOQmFsbllqYldR?=
 =?utf-8?B?UW9DTGZ6ZjR0aFltdlFOUkJrdFNlOWRuRUQ4Rnp3aFp0UWJ2QW9xVERwSlZQ?=
 =?utf-8?B?andWRk9WLzliQUkxeE1BblhOOXFPcEgyaDg5RUVmZTdVWS9DOFJJc3M4cjNH?=
 =?utf-8?B?bmtIeUlBTVFNb3gvMFAvdzlSeDlpRGRVRmNvZmRWUDdWWFZDTE5CUnV1ZVdR?=
 =?utf-8?B?eE9lWDRyM2ZKUXZzeFQ0TTgvYU1CTitFQnFqTU1CU2MweDQraThTdGthd1lZ?=
 =?utf-8?B?Z1NiSlVGL3ZkZitCVFpGdk53bVJUUmRDenp6b0tBNE5GQzB1VGdNWTZpMndh?=
 =?utf-8?B?Sk8rYkhaYnJYMSs1bVJnY2Zza1NlVk1WTWxoWlVwSzRwYWtXTU4rZ1l2ZXRk?=
 =?utf-8?B?eXB5UUwycWVydUNCdDB4MlVXYlBkMGJQTXlxSDRua2RtQllxLzJVVnp3MUt1?=
 =?utf-8?B?L3drSFhpMGpiZlhwOWVkMTRhUURwOFVZZHhrTGg2Z3VTTkJiVXI1Yllod0I4?=
 =?utf-8?B?OXRGUzNHcmtZaGpQeXQrYStoQjR5WGRYKzBHMFI4RzhONnhESEZRZmNtUXha?=
 =?utf-8?B?K0VDZXR5aXZZbWFGUnh2NWxFVW9WelArdFNtMlVoeC9RcHQxRGNBMTdVZWN0?=
 =?utf-8?B?WVV6RTJUQnM5S2xqTkpaM1pWOFQvMmRIeVdPWE1ZUE9LVTVUQmUwR2UzaVBV?=
 =?utf-8?B?Tjh6RnlDRUYyQUF4Y2NpV2lsaVYyQlBHTC9jSEpFK3oyalRGYVVnczZHRGJG?=
 =?utf-8?B?bVdKZHU3NzhKTFkyaXVVUWhRL1BDejN6enduOEdTRmtvN0MrYWEwL0c4eWR6?=
 =?utf-8?B?b1RpM2J6cGk2UUNqdnFIRWhiWnBDNHUyQVR4bmZ6VjFuSXRVWTZLdWIxUzJz?=
 =?utf-8?B?OEF4NHgzaTNkNURJK3p6TkF0dlZrVTgrVWQvVTdDekV5YmJTL2lZYlR4QjlF?=
 =?utf-8?B?aE9WRjVuWWMvUm9OeUppeXI3STlaVFFQUUxSLys0K1htckdacUZvU3dVQUJW?=
 =?utf-8?B?NE5zd0tFNWdqWjZYb0M0SGIzdEpRQWF6MFVEVFVXK2N4c21naWRsWTdVc2g0?=
 =?utf-8?B?VmlQSDFrdUtrUUFpYVJtYVJsUHRoNm1xMVRWWlR5NnNLS0FQYTV4d2M2aWRF?=
 =?utf-8?B?QlJKOWpVODlOYWNSYjl5NkVmRnhWdi9hUXAxV0l6cEFtMTdyeDVSbjNIWENI?=
 =?utf-8?B?MzRjV1BlYXdxeTZ4K25BSk1NSFU4UTE0OERzVHh4VHNGbVpsRnA0RnYwYjVX?=
 =?utf-8?B?K0NNUEhaSXVXU24zYk1WV3lCNGNMejZKaGx3aWE4R2JzMmx1NUg4WFI4ek1F?=
 =?utf-8?B?STZOV3V4dEFYUlpiejVYNlVRVHJ0Ykphb1lqUlNmYXdnUmtLNUpoNXlKWDdC?=
 =?utf-8?B?RFkrbEN2VzBCVHc1MlNCTW9UUm5keVMwSlRqckl6T0FGN1JBSEZCMVl1MURI?=
 =?utf-8?B?aTdJWFRJQm81ZHA0cUNmd1duVm90d0lNbDRJZStKN0RLL3FuY1Q1b0lNdFZn?=
 =?utf-8?Q?7uA94Jb5ofJjAHcw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef509073-cd77-4aec-6dbd-08de3f4228b1
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2025 21:04:12.0632 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2xLvPYO1xqUQDYw4qJDDQCG31NxQIRlLUu/cblSjsspfR+gDfeOlKdVNx2Ia30BTcg2cw6GLdAiOPYnhfnY8JPdN59ZHhkW+gw+KWCQFuAA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF1A34EE115
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766178260; x=1797714260;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pe1qCznJFZ2OVYOqZB6mBKN1TS6ptR4jNvQ7cerB7VU=;
 b=XQvqVxQ/DezM4Ykb7n0BdYv1YO+UB2gpQlxUDPL0Fu1cU/2CsRciervm
 YvT4o1/YAQXYCmMuHxbsO/c1Jg/EaM8gCVjByIblH3WiMGDzPQnEckKAC
 yGiF1wXawe2LH+8g11vfCfuBM6b0lZt4R2n15PMNRE4VHFMbr+dPqMVEC
 LbaSCvv9ciyMHzbqekSnOwv/MjAhiFKr8WLTerAiJ/erSKNaysLc5FI4n
 f20fvd8GZ+R3vW1HFj4p5CO2lbPFlf2CXFPp++SlxBGCD+del3VpVt9xS
 HrB8FQnmpGMAJPS8kCaz4R83koW+V2urb3rgCf34dDTP0Jqb88ckqpf7n
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XQvqVxQ/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v8] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
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



On 12/18/2025 11:02 PM, Behera, VIVEK wrote:

...

> Hi tony.
> 
> Okay , understood.
> 
> Please let me know about the status of this patch

Hi Vivek,

Could you address the feedback from me and Siang?

Thanks,
Tony

> Regards
> 
> Vivek

