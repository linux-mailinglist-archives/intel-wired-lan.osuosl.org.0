Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9C666A779
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Jan 2023 01:25:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 09E2561016;
	Sat, 14 Jan 2023 00:25:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09E2561016
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673655901;
	bh=3XRYAT7xPoAOx17y+I/vyyGmNBry2+f3c+lv68HZ46c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=E1WEzIWmvxAvmym7s9ZgrRgV2OrG1h5iClzOiaNc5/TZH4ILsNqaGuvkheE86ssV5
	 wyN/PLe/HV/q8S333qQFsSg+Ehlm89XlqziWSW1MxjkWb5Ds0vCYlUZO4a7KkNu2dD
	 6kDMBu0Q2JRsYHFeO4KzztZwXCaR1UB5AtNVRMwRJ8+2HhUa3mwgPeP7vfT+zlIjZR
	 lRXBH99NzPV3POvaKP8wUM0AR94iDeJiYTkKZMUHE0OAKxvgtsYZrdoy4I+It+REUn
	 aPzVAzq+aLz9rLzepz9af618eIFWF8YqBQraC1soHoo+BxRZL3s2rfwyhiyqqrblrj
	 8MRSRx6Il21oQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zErlr-qDH9Js; Sat, 14 Jan 2023 00:25:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D553260AAC;
	Sat, 14 Jan 2023 00:24:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D553260AAC
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BD1021BF3C3
 for <intel-wired-lan@osuosl.org>; Sat, 14 Jan 2023 00:24:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A07F4409AA
 for <intel-wired-lan@osuosl.org>; Sat, 14 Jan 2023 00:24:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A07F4409AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 86gCfA1UkgcW for <intel-wired-lan@osuosl.org>;
 Sat, 14 Jan 2023 00:24:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8309641A54
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8309641A54
 for <intel-wired-lan@osuosl.org>; Sat, 14 Jan 2023 00:24:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="311985711"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="311985711"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 16:24:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="660374186"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="660374186"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 13 Jan 2023 16:24:52 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 13 Jan 2023 16:24:51 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 13 Jan 2023 16:24:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 13 Jan 2023 16:24:51 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 13 Jan 2023 16:24:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Br/BM6fS4ph+GmCD/TvDh4AzQilfer4dDRxgrfbsySMyAZGaHa6QVjuwPs0R0ILSWqy7KJ/k6HOWSv23C3aQg2eSU8xAQQ/+gMMdBXQhxGTycMuxHeA/nsEQ2XWoDzuKLHtdDC9W8+FWb0qaP3FshdywOwoQC+vpxfFpqKFFKYH7OHiyMGxmsOArkmemv3WeR/FPJk7LLTzEtSCP3cZEme6K176+VgtSxGtrcmuGFpodpvMR8f5zku7+77eZ3iOAs537Va8tKyIc+Mt/9qaAQCTBS46btZwNM+gQw731otx9fzVQbYUOJfz3ITyvPreLYBUFG2Sugr/D/1IhvTQjTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dplJ4PsaSG1+FKdq1aHb2opq06SkwpmyHAS2lO6rvUA=;
 b=l0jwrKR/8WrYZhbmehoxwu+8l7sIU7ns9gl0IIvquXrKJzq8C6XXuJmRBN6q6210+YDHzDibCAPiXWsWaIr2otoWlCrLC7MxrZ9UYJm8KANj5Qz6hDIe5EBApjYmDKykjcc4WCUsFy4/rqHPwwlkcwzKOu7VH+/hK8ygSxcATkAuxwF+7MxBV/8ZY9NeMwsNZ690QxoqayTyLhQzUEzXSUefIifG7u28pNFYqsFH6Yl7GWKFwEsI7OjxyjVhvozIBx/WoJZxHEA43bmKEAO9y2yhSL/RwtafhYJaA+SCUNtMG6b0DouDAIuIXO4OojKWw6W1JH8kB/uC/oz8Y0xvLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW3PR11MB4683.namprd11.prod.outlook.com (2603:10b6:303:5c::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Sat, 14 Jan
 2023 00:24:49 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5697:a11e:691e:6acf%5]) with mapi id 15.20.5986.019; Sat, 14 Jan 2023
 00:24:49 +0000
Message-ID: <ba037a29-15bd-ade7-8b3e-551f4bc7e53e@intel.com>
Date: Fri, 13 Jan 2023 16:24:47 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20230113222319.111-1-paul.m.stillwell.jr@intel.com>
 <20230113222319.111-5-paul.m.stillwell.jr@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230113222319.111-5-paul.m.stillwell.jr@intel.com>
X-ClientProxiedBy: SJ0PR05CA0034.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::9) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW3PR11MB4683:EE_
X-MS-Office365-Filtering-Correlation-Id: 10d6c221-63cb-4249-4b8a-08daf5c5bf46
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NiOgBwgZ1rQBVzYzdrpVazKlg6DNu8+EJ2/5vKhumU28D1C01QuXK2MSS6GGQUOVAB4EPfbcuzypMNZ9f0LbhoWpK2RIb9oLMC3cGHIpKzHTfBBp1jjLCFiwzSCvGeWaWMBHPMnTesZQJQIydgeCpYtnQfw1uN7/PSz/6+RPbIm0RB9da+dt7ja7xBQlu+d2cTajsyUYASt7y7+wjb8B/sAgkVgKXI33f6kVM5vwF1+yB3y3Ht+r6HgTW1+JgjSPXtFrMJgDskq27yh5WvQaJIKXN6YMMMy8cSLo3826PL3b1JkEXdbkQgRRNKCSc2N6sAnjvnsrOenv9tKpPYnlpcJYmW1rCQLcTJA5eXrhwGTqU9Tbfx8ZBdLW2QObYDj7JTkbMYc83gyQyOGrA3gEWsgaoJSWKIwp3TrZaWDAQ5lXa7OZgCuJ1TUAHSH2CGEcujtPoFbWuwItCMeMRehgC1fcM1gYCOJjo+WLDfsnHbOIWFL00BoDQbp4PDxPh2BzWNibhBECqiKDHviIRe6ovHMhU6DV8M9usEJwMfSvUca7fEPFcgpNiX4WEs7ONFy0DRoH0gwUNnihgfaV1g+BigrHc+mQZXUAEspTg/fE55ihIt8L8FEsm503mMw5F29O5BzBbAPxFHQV+CX+nc3m0SPWuI7WbKeECbVFeNW0TuH+JijMPUQWLUEC9FfLqOrTLvHfagcb1uUwsAKQOfVC8zlfy70az1rkugqC7HtY+yw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(376002)(366004)(396003)(39860400002)(451199015)(66556008)(41300700001)(66476007)(2616005)(316002)(36756003)(66946007)(6916009)(8676002)(31696002)(38100700002)(5660300002)(82960400001)(8936002)(86362001)(83380400001)(6506007)(53546011)(31686004)(6486002)(2906002)(26005)(478600001)(186003)(6512007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bitFYWlqZ1BGRG1yV3IvNEVUUXIvbEtnZm1RZFdGaUFrcGVVUURpYXVJM3NL?=
 =?utf-8?B?bGc3ZlhpUE0wOWJzS1ZGM0kzME85czdrdFMvR0dsK2h4M1Y0Rm81a2lPN0Vs?=
 =?utf-8?B?T2FXeVJSaW5PKzdOTHVSeUVvV2l5VFhNVXdCYnRPMFVZOUJhUFFweisvZFYx?=
 =?utf-8?B?S2NabVZGeHVmaXJHSkpUclhmWmZvaEdDRHZzTTc4d2FoY3BQZCs3WVEva1lS?=
 =?utf-8?B?RWJkWm9BeHBUU2JpbU54NGVLOFRsVkE5U25RMGRrWDJSRU84Y29vRi9mOWM0?=
 =?utf-8?B?UkdVMWFjdXRycEx4YVpGb0ljV1VLVHR6MzFMOW9mZnFyYmlwTTNPVVNQbTZS?=
 =?utf-8?B?SWUzem95bjZjeE1Fem4xMHpkK0tISkNtUDJHaEk5UmVPdkVoOXVBMTNWMFlN?=
 =?utf-8?B?YTdTWENoL3BTMzhtQUM2dHY2YitMYW5LZm40V1NWVVA2OXNNTWVKZ0ZTbFBN?=
 =?utf-8?B?VjMvNHo2LzMyZFkvcC9WUnJnZHNVc0oxRmsxRG9zMnpsM0c3L1JwYTNiQnNX?=
 =?utf-8?B?TGNPeWRlVWY0MDZRYWtqeVh3OTZxR2hzZEowd3dIT0ZzRHZld0lsT2lBa3dY?=
 =?utf-8?B?bFp3TzMyM0lISmhCZ1hxSHhKRUFKemxzakNtMXRqYStIS1U5MnZXRkJWY1ZU?=
 =?utf-8?B?UFZ0SGxkZ0tnWkVKc1VGa2FrTjVxaHAzMDl0MXFhWVZDUzV4dUg5c09wYVZp?=
 =?utf-8?B?T0V6dEhWNEJPZEY0R3l3MFFUYkNwVFQvb3k1cXBPa0Z3SDBxbUY3SjlzRSt3?=
 =?utf-8?B?Z3l3bEhNaDVwMTZWaVNHclpCOFFyTHRRVTZ0QjBBTGFBNnFtNlhtKzFadXNn?=
 =?utf-8?B?MkZ5ekxjT3VXZ3NBQld0U1Z5MmhXbW1sS1E0RFJxMVZkcUpjZDRqY1htcDZl?=
 =?utf-8?B?QVJBMTBvS1NpN0dNMFNpeXNhTkZkWEZXRk1xaGxqMkRGZzlPUnVYRldkL3Uv?=
 =?utf-8?B?cHFoVTF3dzNXTXF0TlVJZ2xLa29OM00wTk5GdVBrbXpjU1U4cWZDNEg1TjVi?=
 =?utf-8?B?ZXZ6VkpQRDFkTlYzOTVYUk12eUo5NmpsWHFQQnFXSlJTUm1rTjlJUGMzcUJW?=
 =?utf-8?B?aml2bXJ3VU5sWHVJbnpQWndnWEVaN1dlNEI0bjhKS0JoS2pHUTBRYkpiV3lH?=
 =?utf-8?B?S0h2OFlMRDJWcHhQTE1HWkcrRDdFTnYrSE1NQmN6NGZjWCtoR0Jqd2lFSzJu?=
 =?utf-8?B?dkw2QmFkZ3FJWnYzNU4wOFJrZFhuMEJvRWJpanFhN1QxN1RrcHJjMnhobHZW?=
 =?utf-8?B?blQ2VDFXTGJ5aGNuKzlaZXpVMUVWa0dLb1NnTFlKeDc2UVVPb0NvOE5mek0x?=
 =?utf-8?B?a0EyY0thWGxFSTAxMzNkZmtxMjljTFRFemQzN1AxZW85emRuZEk4Y3huMFNs?=
 =?utf-8?B?K2NRcWloOEdpN1c5ZnByaUw3QUhmU1c1R1AxbkdxZjh3dXE4ci9GWTc3cVpu?=
 =?utf-8?B?L1MzWTBOcTQvZ0tRVkpCZE5QUDBPZU5naVBTMk0ra3l6ZGt1OVVzOUJ5bHU5?=
 =?utf-8?B?UHliVGlONE4xLzFWUCsvNTd2ZEoyVUFZSVl2NjdPaVhjZUJSTXh6OFVXRk44?=
 =?utf-8?B?c04yeUlJS1J6Q3FEQnRmYVVBMGVVMUhFSnFiWkwrb2lySTU4K1FTbFl1L08w?=
 =?utf-8?B?aWcrcmFKajJyWFZsWlJyc0Z4SjNtWnBhUmFRZk9nMmgyOEtmbTRMWG5xMG95?=
 =?utf-8?B?aVhBcUY0Um41dWVXTzJ2dDVMTGg0NUVIVVhPN3JsNllMNHRoK3VHcEJGcith?=
 =?utf-8?B?ZWxtR2RZc3puUnhJOE1NNStzQ0REMjNQZW9rY0cybkVDOHRpajU4MzlzY05a?=
 =?utf-8?B?MnRha2FNVkdTNlJLMkhSRUdMcFF5MFJUMHYwdWhSR21yS05FWXZyenp2TkRa?=
 =?utf-8?B?QnFHcGRGNHMyUGI2MmhPWDJoMlIyMUVWY0kzelZ2OSt3UktCVlBtWTd2a25N?=
 =?utf-8?B?RlFXS01JbU9FL29rTlI0RVoxWlluNmZLa2d1dWNnUk1DYjJCQnAvRVR5RUxu?=
 =?utf-8?B?ZnlWUzRmdE0zT2dWd1poM0wxemNNYjdCdTdzdWxrREowaXNOTUpwOVNKZTk0?=
 =?utf-8?B?NVBEV3hsUjRwUVdZcDMzOTBUcDRrNzUzQ1FUQVZjbFY3bGlYRHZTeWZrTkNv?=
 =?utf-8?B?VGFiR3U1STRWOVhXR0ZOdTI1VmhKYXRUQUMzcEVLMGpnbnl4Rmx1SnhuVHpi?=
 =?utf-8?B?L1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 10d6c221-63cb-4249-4b8a-08daf5c5bf46
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2023 00:24:49.4325 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h+EryJXRqVFMJ1u7Y0G4r5buc4lVPrFtrtDIFQIXZjnfTKAhGkI45e2Ah5pTVIwSc8Ax/F2UmmudGSzbGsx1s4UU5FwMwsbsqQhAnUcVJWU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4683
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673655893; x=1705191893;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=V4XnZGOW6MEmAQyJTUS1LcQJVrWBeAhUERHEDKn4L+E=;
 b=JBriqVYPqHgsPQ5aZ1nt7TkwSzizxJqledvJ+qM+k8R5NzHD7ZavwngF
 wRtgcW+YVcTR+YVWLgkQ9DfHRhgJWZ6QpP7bJ4bybVwE4gTd81DUZcPbh
 dxQ8WeZivEzENIpf/eBBBNpZ52kiALIYQiJ9pGfGRvjgk+JEs56GxLyGN
 TTDm/xnj/scDaIJzkuz6h90gJiNm+rT9txmz2YjRECd3087UHu2Hzs1BX
 vazoVn7pZLyWEebJ5xLHDZiS8R357w9reILoSGRpC7XKhYGnndRMlpt1/
 g7RPInVj121or9X2V8NOTzffMUBnpVSUlYES5rJx6YVEQVg1k4djxlxXy
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JBriqVYP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 4/5] ice: disable FW
 logging on driver unload
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 1/13/2023 2:23 PM, Paul M Stillwell Jr wrote:
> The FW is running in it's own context irregardless of what the driver
> is doing. In this case, if the driver previously registered for FW
> log events and then the driver unloads without informing the FW to
> unregister for FW log events then the FW still has a timer running to
> output FW logs.
> 
> The next time the driver loads and tries to register for FW log events
> then the FW returns an error, but still enables the continued
> outputting of FW logs. This causes an IO error to devlink which isn't
> intuitive since the logs are still being output.
> 

You could also catch this IO error and handle it if that is the only way
to get IO error? Is there a way to check if firmware logging is already
active after a driver reload? That might still be useful in the event
that firmware logging gets enabled via some other version of the driver
which doesn't disable it on unload...

Something like checking the adminq error and if its EIO then confirm
that we are enabled and report success in that case.

Thanks,
Jake

> Fix this by disabling FW logging when the driver is being unloaded.
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 29 +++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 9e610827966f..f24693e42e35 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -4497,6 +4497,33 @@ static void ice_unregister_netdev(struct ice_vsi *vsi)
>  	clear_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state);
>  }
>  
> +/**
> + * ice_pf_fwlog_deinit - clear FW logging metadata on device exit
> + * @pf: pointer to the PF struct
> + */
> +static void ice_pf_fwlog_deinit(struct ice_pf *pf)
> +{
> +	struct ice_hw *hw = &pf->hw;
> +
> +	/* make sure FW logging is disabled to not put the FW in a weird state
> +	 * for the next driver load
> +	 */
> +	if (hw->fwlog_ena) {
> +		int status;
> +
> +		hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
> +		status = ice_fwlog_set(hw, &hw->fwlog_cfg);
> +		if (status)
> +			dev_warn(ice_pf_to_dev(pf), "Unable to turn off FW logging, status: %d\n",
> +				 status);
> +
> +		status = ice_fwlog_unregister(hw);
> +		if (status)
> +			dev_warn(ice_pf_to_dev(pf), "Unable to unregister FW logging, status: %d\n",
> +				 status);
> +	}
> +}
> +
>  /**
>   * ice_cfg_netdev - Allocate, configure and register a netdev
>   * @vsi: the VSI associated with the new netdev
> @@ -5234,6 +5261,8 @@ static void ice_remove(struct pci_dev *pdev)
>  		msleep(100);
>  	}
>  
> +	ice_pf_fwlog_deinit(pf);
> +
>  	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags)) {
>  		set_bit(ICE_VF_RESETS_DISABLED, pf->state);
>  		ice_free_vfs(pf);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
