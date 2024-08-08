Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 783D094BBEA
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 13:04:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A492E60A6A;
	Thu,  8 Aug 2024 11:04:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Me2XGzuffbm6; Thu,  8 Aug 2024 11:04:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D0F860A74
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723115081;
	bh=p5yKD2+vab46GrqqLSDRZwm+enomfK7wX4zJ11Tcnvc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9quqZhIzPyNfb5SeZCznf/F64lNUN7+PKYl/q+8q+dcmAxRSUjI+mD8UY9UZfEjCO
	 tEiFxAs+tSKSS/L4N+dTMyqA9GOvWI+F4nVgq17aQpdV4odyKCEGNXHfU+bCtS7cxa
	 O4m6jer1mE9vx1t2//+rXJW/R2e+Ojl/gfzUsVs48d0hqnRJPU2qNi2I2XGP1i80PV
	 lCWOHoImbJFNHgnOJJXhiL6HNUf/jOJMwGNViiCUXY1R2zCZO1qNB65J0OFpdsCFUj
	 g3eVsB1V4IAtgNIIT3jfDiTrkC+fHuKkMLFJQDe4SKNsNnC3Q9b7Q4wApFVtFcHAqU
	 aFMLC22nCIlAg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D0F860A74;
	Thu,  8 Aug 2024 11:04:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0F08B1BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 11:04:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 088754015E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 11:04:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J6_WogZ2aXjP for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 11:04:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 63F02400D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 63F02400D0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 63F02400D0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 11:04:38 +0000 (UTC)
X-CSE-ConnectionGUID: aCXqZwwAS4WlS5N81+b/rA==
X-CSE-MsgGUID: xG7lQlGPQEuig2xzaMBqAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="38739947"
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="38739947"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 04:04:38 -0700
X-CSE-ConnectionGUID: jxAsZbBcR8CmldKUpJz+fQ==
X-CSE-MsgGUID: AcQeWHZkRQ6AJVodCQo/yA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="61571863"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Aug 2024 04:04:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 8 Aug 2024 04:04:37 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 8 Aug 2024 04:04:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 8 Aug 2024 04:04:36 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 8 Aug 2024 04:04:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aeY4pX1HGKOPg7G9AizbP69Zyeb8GAi0t8uW/U/QsSO+XH3hIqy2IvBAFpILyTtT6TQEwZDuGs3SDPo/pa7V89yRCWg8jcxe8v7LurBdOoT7W0HMAmJmV8mmczB2yPtnAr4P9eZm8eG13SDXtzj/5cOJu5FSVhL/bZzsHDLUQjeTJT9dJewKTXC0if5yhu5flxNIGWS60n8rf1rW08wAywJzZsqiqyV72ZIDBUxrSn1ol0EUA25XjUVtHc94HrrlctzuKw1NdIKK+7AGHLqsxoBNAGvTPkHaoIjt57jLh/YYM6TnCNAws9aKH6W8tsrGHUPlCr11JkQVvXB5ZvlDdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p5yKD2+vab46GrqqLSDRZwm+enomfK7wX4zJ11Tcnvc=;
 b=Yfg+j75eaRfdewMzJvIYr/4nx28cTcS+SDFFk9rV0mTlOyqqPHwfV572VuItSgturE/VtqiNQdyWy2Bqu4ep9Zh9roglHk+W0HNIy2F3KB8qs7K8++AU2itCfGqiZAFM171NGqEu5UTWwK7jyRzLXzcSTC1XHLJQVMtNVO2fvoxY1x/1gQdSZavVAdqOn+8xppsVgsO1ABOKZS9CZJ/erdJcypUrqguVoRQStt/9DJ4sd763rbtsZz3cZbKkUaETOYyeAsgFgD7RJqIOyUTY2JJs/PyF1PdERymbPjQK4uNqqN+cTggyrMoRomNjVksq017hAtILFmXyRaio0ViCfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by DS0PR11MB6375.namprd11.prod.outlook.com (2603:10b6:8:c9::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.26; Thu, 8 Aug
 2024 11:04:34 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b8f1:4502:e77d:e2dc]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b8f1:4502:e77d:e2dc%7]) with mapi id 15.20.7828.030; Thu, 8 Aug 2024
 11:04:34 +0000
Message-ID: <ed34373b-1afe-487c-bb35-3a62e4cfe4f9@intel.com>
Date: Thu, 8 Aug 2024 13:04:29 +0200
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20240730091509.18846-1-mateusz.polchlopek@intel.com>
 <20240730091509.18846-7-mateusz.polchlopek@intel.com>
 <390393c3-b4ee-473a-8055-813130876e71@intel.com>
Content-Language: pl
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <390393c3-b4ee-473a-8055-813130876e71@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI0P293CA0004.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::15) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|DS0PR11MB6375:EE_
X-MS-Office365-Filtering-Correlation-Id: 059560dc-8aaf-43e5-c969-08dcb799e2f7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OHB0TjdWNitNT3VPRE9HR0kyS2Z0ZU5POHRyRHNVdHdUdEVSVHc0UEw3WEQv?=
 =?utf-8?B?d1ZjQ2tPT01YMFN0bFhGcDlRMnMyOFRONFprU0dmYmpKellmUTV5VWdYOHkv?=
 =?utf-8?B?RkV4b1k0QUZDWTVOK3JVdWJmelRQdUxoTm9GZnFnSGdLaGN5aUdTMXRHRlNv?=
 =?utf-8?B?d1U5aXhvbnZYR0hDM2V1ellEcHlCQ0VCRmtiTVd1Si9USVNtZ1FLNDlvanQy?=
 =?utf-8?B?TlZWVHgzNnFQZ3hjdkRJejFTOVFYMjd6R3MxM3pISXF4ZFFNVldzblNzUEVY?=
 =?utf-8?B?eG8wRDVvcy81dWNtNHcyNkU3aWVOeUd6K0xVb1V5K3IyVlR3YUpQamZ2ajZV?=
 =?utf-8?B?Wnk0YnhkdFp5NkdmUSs4c1FJTzRUWnNRSElCVGJQOE1JdVVvS1JEUmM1bEF5?=
 =?utf-8?B?d1BmUkZ6TG9wSjRnT1gwWkx0S0NIU2lHQzhRcGViWFo5MDY5cDlQTDZOQjVM?=
 =?utf-8?B?a1AyVUlYUS81blFyZC9ZQVJrTnl2c3RWelhSeDFZQkVldW1teE5VdkpMWDN2?=
 =?utf-8?B?aU5tYTBuR3lHeXZMYkVFcDNpdGhqRHVyUVdJL1VaZmYwY2IvRi9qSVZZOU5h?=
 =?utf-8?B?SVBLL2piSVNYdDlqb0lONHFHREtldkRVZHNMRjQrN1RKMUFFanVQd3p0b29T?=
 =?utf-8?B?VXF4ZHoxd0JwSGZNcEVsRzl5VndaeTl0UFUxTTI3NzZxcjY4cEV2QjU2Y3c0?=
 =?utf-8?B?cVlnMm40SnF0Y284OTV6b2hnSFkvdmVhNkdVR25QSlVEdFBmR050czVQMDNG?=
 =?utf-8?B?UWR0VzluYUdYOVFRVS9RbWpXVG9EQ0NaVDJ0ZEtEM2p3TndCQjhIb1NtcnNn?=
 =?utf-8?B?anozNUNnc0FjaitBcGJkVU00Zk5IWGNDT3BYZXdJblBXZWVLMVBhTEw3VkZr?=
 =?utf-8?B?WVJUYjhtam1YR0Y3SXhKWnVPcHRKQTZHMXhmMkJLRlFpN1NmaEdGZnBjTW5j?=
 =?utf-8?B?c0tpamlBUkY2YUQ0MU9YR2lsSzl2QXprWGp6aU5pY0lPSndxS1ZhcHUweHNu?=
 =?utf-8?B?RjYwVjQxTnhEWWZKVldnSUwwV2d6cEppMjRXWHlrNDlqU1NENE1pSEIwaU5R?=
 =?utf-8?B?YXl1S3cvUVZKT2krbFJsVzdpZ0REK01CUkRRZUJsZk9Tekt6VTAwYmFlTVQ0?=
 =?utf-8?B?ZlBHL0U4Z0ZEV3NFVldVL2VxUGRtNFpWT2sxWmtDeURheklGMEJTTThGT2JY?=
 =?utf-8?B?RE1zeTIvQXA0eVB2aHQrTVpMV3AyVDBWak9nS0RQeWMyaDR3VjZPZ29LdExm?=
 =?utf-8?B?Zkxoa20zNCtlSXFlRDFGZ2lHeUhua01BeWthMEFPc0o5ZFlLTnc3aElNYmh5?=
 =?utf-8?B?NDlheGV0ZmIzakxqK2NuOUVqS1JoMmxWOW5hWTVwMGNwVmJZOFlyK2hVUk15?=
 =?utf-8?B?QmJCTi9nVHdjb2kwTkZQbWtpdVRrV0NQbWZHbTJHV2ZnVXp5ZGVlMFI3bGtB?=
 =?utf-8?B?eWQrcStrS3VBaC82OXdjMGo4YXhCVllZTGdYcTEveXpYd0JtdndYeU50bU13?=
 =?utf-8?B?NVBOSDNGNUdQUVYydE9ybGRjcjRDRjdrRFFxMUhqazhqTDJiSjJUbmcrK0JM?=
 =?utf-8?B?SjFMWHdCZ28rbGU5b2VlQnRWcm9PUkw5L1dUMUs1MHNMeEd1KzNMbGhuZWc4?=
 =?utf-8?B?azUrYVo2aUg4amhpdElDdUM5dVI0RGI5V2tCbDZueVdxaUlZYXMrWmpOVXNP?=
 =?utf-8?B?NFhLWHdDNUgwV1kvbzloVnBqL21LYUF3SVd3Z29KUzFIOWlsWGc0MlBtclBw?=
 =?utf-8?B?SUt3UHdOd2NtNHlsUzRZcUErM1RDSTV1bXJ6dWZkTW9yR1QvTEh0elJFdHhZ?=
 =?utf-8?B?Zkd4VWsxQzA0QWQ0NVZwUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NHlQMUJJL3h0TGg0TzIxV2dCZ0t0T05Xd3gxbUNUU0lEU2cwRkRSQzB3dXJw?=
 =?utf-8?B?bGNaVHJKREw1a3djSnlPRGEvRnBiaE8ydmY2N2pGUnNSaG00cEU4M0I0cHdY?=
 =?utf-8?B?RTd3b2o5K3dOZ3ZWMGNGNE9JV21VRmVXVkNpS1FIT2RIZ1N6eTdoazBZUzFP?=
 =?utf-8?B?Y1BuMG1pYkdxV3ZvdCtwZW5ibFFTNWdOVDFCamd1dkV5eUlGWlhyc0UvWUVK?=
 =?utf-8?B?MWtBczB3eUlmam9WYmpVVGo4djFheTlNWURZUEhCc0lYRVRHcUJXSllaUy9j?=
 =?utf-8?B?b1BsT0ZwbDRtSGE0RUU4NXBIVSt4WHRxNTNBRDNQc0d6cDRldHBBVDhQd1Iy?=
 =?utf-8?B?L3pRS0svV1hva29uZmVhWWg3T0JXNm80eDRtZHEyZXp2OGJBbC9oNVo1R3Bq?=
 =?utf-8?B?Zk8waExEUTFmV1hjMWV2YWRvVDRVazhpOHBxV2lZVnNiMVBHSEFRRkNybG1D?=
 =?utf-8?B?alFIemVIM0pIYUV1R090VTljQ3FjYm5sc0FUMUFNU2R1TTZ4TzJlekllQSs1?=
 =?utf-8?B?eHJHaFRBNkhqVkFybnE2cVpOWTJlTC9mNjVCdGVYOWp3bG9aMkdPUVAyYVZT?=
 =?utf-8?B?a3YyMnhHQ2VIdGJHSm8rd3ZNTnJKSG9UL1pSRGdUYXpic0t5WE9zQzlDYlFS?=
 =?utf-8?B?bFpsZjV1ZURLTVFxWUlqYlVXOG9qbnA3b1I4cGxNOFVKQk1sd0NSS3hDZXoy?=
 =?utf-8?B?L0JFUmxYNlVwQlh1bTJhS2RUdnJLNDBhQk9Zc1lySHU5ZVh6NzFGcTNwZ1VR?=
 =?utf-8?B?RDBjU2xzS1hnV2c4cC9PT2tFRDYyVWl5NTZ2TUcxNEhYZEZpT3J1cnhLRUF2?=
 =?utf-8?B?RFFqeno0ZTU5NHZacVhhYjhLbUNpVDZWanJmS0lmb0VyVURPUUZ2czVCUnI0?=
 =?utf-8?B?QXNoNUFNNHRsM1BMQkZVTkJjOGtGWWlEMGVCQURaWHNGdGpsZENDTzlZbkVU?=
 =?utf-8?B?ZDBrV1FJRzFBS2Y4eER1TWZhVmd4WVVEeWxKbWlpZ2s4aVZNRnFOVElHbTll?=
 =?utf-8?B?cFFld3NVRjJQN0ZwYmxHWnhMU0RnNUdiQ3RmTXc4eEsyYXBVM05INFhvejZ6?=
 =?utf-8?B?UjY4UjVUNXcvMElQODllZEFvNHFuUHVyaXFTK3gwRXc1ZGNlckRCdzZGVnRt?=
 =?utf-8?B?d1d5ZkFSOUo1SzJhUmN1WUJqQjRrU0pkdEMvZm1NSjRRSWZHUVZaQlUyZkxy?=
 =?utf-8?B?cFkyb3RQSGlBY25pTFFnL3AyR0djNGhKcmQ1aS9lNzFsaG5DMHBXYWREQmRu?=
 =?utf-8?B?bGkyTHZ6MVJnYmYxL21YR2ZPTUd1ZndVTHcrNjVsNGFKWmgzMC9xU3diTnV5?=
 =?utf-8?B?R1J5OWlpWWMvR3NKLzVMNEVTbnVTS0dwMzF1cnU4Qys4cXB3TUFCTk9UeVlt?=
 =?utf-8?B?TkRpUWpUTERLQytoVnMxWkQzeHBVRDVuTUwyQmxQc3JNdUZjVS94c2ZWL05Q?=
 =?utf-8?B?clFVTkxVVENPNGY4OWkwcnN3dU1WYTlKZUJYbkhLSlNqc00wTjIvTTVueVd2?=
 =?utf-8?B?blpxRDFiVVl0bWI5TmpSNFhZM2t2VURWT2RNVGp2bE1JZHdsbU8wc3ptbXFH?=
 =?utf-8?B?a0g3V0xhNEgwQzFjOVVwZDljVjAyaDZ3d3dMWFNvdkx2QlBzQ2hCQzNJSFFo?=
 =?utf-8?B?OFBBaGlNL2pZUFkxSnlzRVdkQndZZDJtTndJWUNpS003SGRmR29TR21ZRlZV?=
 =?utf-8?B?RTJuY3BrU21kV0kvMzkyWGswelRqUlZxYWx0NzVvK0dMdDRaK3diSTRrMDBC?=
 =?utf-8?B?cFR2dWdqTGUvdmo3WnBGalk4bEd0TTIyWDlMSytYaG9FcVBsTm0yd1NWZmp6?=
 =?utf-8?B?VHJjZHRibnBMd0dRSDVqY3pZSGFGZlBhNHUxOHA5eUVLVTUvbGRhRzFBdEJx?=
 =?utf-8?B?QjM2WjJJeFlPMDJOWXhRTlBKenNQRVdBRWZSNUM3OEZsNWlxc1ZRQjV6enlp?=
 =?utf-8?B?bVVJWHh4bjJUUEs3V2piT1dFd0Q1UHhGQy9yQ2daem5KMm1reCs1SlI0ZXJr?=
 =?utf-8?B?S1QwdXMxQWVzM3JleDVnYzRIOUg4dGF0NCtmQ2NhK3M2Y2RUZUY0Sm4vK3J0?=
 =?utf-8?B?RTlubG1YQnRUcHp2OWkwekE1aVo3YzM3aG1rUHNiMzA4S1B1b21vcHJuOGR0?=
 =?utf-8?B?U2lSZkJaTHg1Y3EzYUNGUzQrRXVISXZvL1VYOGZsa1VEY1BRSWUxZFlSK1lZ?=
 =?utf-8?B?d1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 059560dc-8aaf-43e5-c969-08dcb799e2f7
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2024 11:04:34.7344 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rIvtGDf6Qo6zGky/8iCRfPGgyMn0TFEVzqP//TQCkM0Z3Wi69Z9XuDwPIPmSsq4bCYg3CLlZyUUMS96RRsIZS6L5DvJ+TZp8V5rOgxT8mT4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6375
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723115078; x=1754651078;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O4WQpHUR4jppjyLMP7yHXcC+mDdK8Ttu7EoV9MMl6xc=;
 b=DEhjenTBfFmvTJXdODtnEi7sCTaGfY5cdjrH3ptMNtROUpsapeEW17VD
 fbgIms1bONJ8wk4lu2Rkr0Eij3fBMr4zBdAnKHevcwuHUwTu0USkheXWB
 D7q7vFjrszFw8aFC1m/HdnKNZIVEMUAs83PPVLXspr4kzrOZPfP12hjet
 5T/BhfpIOaEYVymQuHm4z3ijQByxs6HrYL7D9sfF2SmKHMcFNIvNYKl93
 l5mYyrMV/zBnlbbtEwNg6m4EHCStJ/ECj12BJAqdlmAo4P6BURHfhAJxZ
 CMql61n41DaFZc9erCbyggdc6zKe+bKBiIZGbU3IA4bucGiS+JJu4W+PK
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DEhjenTB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 06/14] iavf: add initial
 framework for registering PTP clock
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org, Sai
 Krishna <saikrishnag@marvell.com>, Ahmed
 Zaki <ahmed.zaki@intel.com>, intel-wired-lan@lists.osuosl.org,
 Simon Horman <horms@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/30/2024 3:40 PM, Alexander Lobakin wrote:
> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Date: Tue, 30 Jul 2024 05:15:01 -0400
> 
>> From: Jacob Keller <jacob.e.keller@intel.com>
>>
>> Add the iavf_ptp.c file and fill it in with a skeleton framework to
>> allow registering the PTP clock device.
>> Add implementation of helper functions to check if a PTP capability
>> is supported and handle change in PTP capabilities.
>> Enabling virtual clock would be possible, though it would probably
>> perform poorly due to the lack of direct time access.
>>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> Reviewed-by: Sai Krishna <saikrishnag@marvell.com>
>> Reviewed-by: Simon Horman <horms@kernel.org>
>> Co-developed-by: Ahmed Zaki <ahmed.zaki@intel.com>
>> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
>> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> ---
>>   drivers/net/ethernet/intel/iavf/Makefile      |   1 +
>>   drivers/net/ethernet/intel/iavf/iavf_main.c   |   5 +
>>   drivers/net/ethernet/intel/iavf/iavf_ptp.c    | 126 ++++++++++++++++++
>>   drivers/net/ethernet/intel/iavf/iavf_ptp.h    |  10 ++
>>   .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   2 +
>>   5 files changed, 144 insertions(+)
>>   create mode 100644 drivers/net/ethernet/intel/iavf/iavf_ptp.c
>>
>> diff --git a/drivers/net/ethernet/intel/iavf/Makefile b/drivers/net/ethernet/intel/iavf/Makefile
>> index 356ac9faa5bf..cff88cb49540 100644
>> --- a/drivers/net/ethernet/intel/iavf/Makefile
>> +++ b/drivers/net/ethernet/intel/iavf/Makefile
>> @@ -13,3 +13,4 @@ obj-$(CONFIG_IAVF) += iavf.o
>>   
>>   iavf-y := iavf_main.o iavf_ethtool.o iavf_virtchnl.o iavf_fdir.o \
>>   	  iavf_adv_rss.o iavf_txrx.o iavf_common.o iavf_adminq.o
>> +iavf-$(CONFIG_PTP_1588_CLOCK) += iavf_ptp.o
> 
> Newline before this one?
> 
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
>> index 11599d62d15a..3961c540c1c4 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
>> @@ -2847,6 +2847,9 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
>>   		/* request initial VLAN offload settings */
>>   		iavf_set_vlan_offload_features(adapter, 0, netdev->features);
>>   
>> +	/* Setup initial PTP configuration */
>> +	iavf_ptp_init(adapter);
>> +
>>   	iavf_schedule_finish_config(adapter);
>>   	return;
>>   
>> @@ -5474,6 +5477,8 @@ static void iavf_remove(struct pci_dev *pdev)
>>   		msleep(50);
>>   	}
>>   
>> +	iavf_ptp_release(adapter);
>> +
>>   	iavf_misc_irq_disable(adapter);
>>   	/* Shut down all the garbage mashers on the detention level */
>>   	cancel_work_sync(&adapter->reset_task);
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
>> new file mode 100644
>> index 000000000000..1344298481d4
>> --- /dev/null
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
>> @@ -0,0 +1,126 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/* Copyright(c) 2024 Intel Corporation. */
>> +
>> +#include "iavf.h"
>> +
>> +/**
>> + * iavf_ptp_cap_supported - Check if a PTP capability is supported
>> + * @adapter: private adapter structure
>> + * @cap: the capability bitmask to check
>> + *
>> + * Return: true if every capability set in cap is also set in the enabled
>> + *         capabilities reported by the PF, false otherwise.
>> + */
>> +bool iavf_ptp_cap_supported(struct iavf_adapter *adapter, u32 cap)
>> +{
>> +	if (!PTP_ALLOWED(adapter))
>> +		return false;
>> +
>> +	/* Only return true if every bit in cap is set in hw_caps.caps */
>> +	return (adapter->ptp.hw_caps.caps & cap) == cap;
> 
> Aren't these parenthesis redundant?
> 

I think they are not. They wrap bit operation and also I checked it
with checkpatch script and it doesn't complain about reduntant
parenthesis.

>> +}
>> +
>> +/**
>> + * iavf_ptp_register_clock - Register a new PTP for userspace
>> + * @adapter: private adapter structure
>> + *
>> + * Allocate and register a new PTP clock device if necessary.
>> + *
>> + * Return: 0 if success, error otherwise
>> + */
>> +static int iavf_ptp_register_clock(struct iavf_adapter *adapter)
>> +{
>> +	struct ptp_clock_info *ptp_info = &adapter->ptp.info;
>> +	struct device *dev = &adapter->pdev->dev;
>> +
>> +	memset(ptp_info, 0, sizeof(*ptp_info));
>> +
>> +	snprintf(ptp_info->name, sizeof(ptp_info->name) - 1, "%s-%s-clk",
> 
> sizeof(ptp_info->name) without `-1`, snprintf() takes care of it.
> 
>> +		 dev_driver_string(dev),
>> +		 dev_name(dev));
> 
> This can be placed in one line.
> 
>> +	ptp_info->owner = THIS_MODULE;
>> +
>> +	adapter->ptp.clock = ptp_clock_register(ptp_info, dev);
>> +	if (IS_ERR(adapter->ptp.clock))
>> +		return PTR_ERR(adapter->ptp.clock);
> 
> Shouldn't ptp.clock be nullified when this happens?
> 
>> +
>> +	dev_info(&adapter->pdev->dev, "PTP clock %s registered\n",
>> +		 adapter->ptp.info.name);
> 
> 1. dev_dbg()?
> 2. pci_* for printing messages from PCI drivers.
> 3. Empty newline before return.
> 
>> +	return 0;
>> +}
>> +
>> +/**
>> + * iavf_ptp_init - Initialize PTP support if capability was negotiated
>> + * @adapter: private adapter structure
>> + *
>> + * Initialize PTP functionality, based on the capabilities that the PF has
>> + * enabled for this VF.
>> + */
>> +void iavf_ptp_init(struct iavf_adapter *adapter)
>> +{
>> +	struct device *dev = &adapter->pdev->dev;
>> +	int err;
>> +
>> +	if (WARN_ON(adapter->ptp.initialized)) {
>> +		dev_err(dev, "PTP functionality was already initialized!\n");
> 
> Is this needed?
> 
>> +		return;
>> +	}
>> +
>> +	if (!iavf_ptp_cap_supported(adapter, VIRTCHNL_1588_PTP_CAP_READ_PHC)) {
>> +		dev_dbg(dev, "Device does not have PTP clock support\n");
> 
> This is pci_warn(), not dbg I guess?
> 
>> +		return;
>> +	}
>> +
>> +	err = iavf_ptp_register_clock(adapter);
>> +	if (err) {
>> +		dev_warn(dev, "Failed to register PTP clock device (%d)\n",
>> +			 err);
> 
> 		pci_warn(pdev, "failed to ... device, %pe\n",
> 			 ERR_PTR(err));
> 
>> +		return;
>> +	}
>> +
>> +	adapter->ptp.initialized = true;
>> +}
>> +
>> +/**
>> + * iavf_ptp_release - Disable PTP support
>> + * @adapter: private adapter structure
>> + *
>> + * Release all PTP resources that were previously initialized.
>> + */
>> +void iavf_ptp_release(struct iavf_adapter *adapter)
>> +{
>> +	adapter->ptp.initialized = false;
>> +
>> +	if (!IS_ERR_OR_NULL(adapter->ptp.clock)) {
>> +		dev_info(&adapter->pdev->dev, "removing PTP clock %s\n",
>> +			 adapter->ptp.info.name);
> 
> _dbg().
> 
>> +		ptp_clock_unregister(adapter->ptp.clock);
>> +		adapter->ptp.clock = NULL;
>> +	}
>> +}
>> +
>> +/**
>> + * iavf_ptp_process_caps - Handle change in PTP capabilities
>> + * @adapter: private adapter structure
>> + *
>> + * Handle any state changes necessary due to change in PTP capabilities, such
>> + * as after a device reset or change in configuration from the PF.
>> + */
>> +void iavf_ptp_process_caps(struct iavf_adapter *adapter)
>> +{
>> +	struct device *dev = &adapter->pdev->dev;
>> +
>> +	dev_dbg(dev, "PTP capabilities changed at runtime\n");
> 
> Is this needed at all?
> 
>> +
>> +	/* Check if the device gained or lost necessary access to support the
>> +	 * PTP hardware clock. If so, driver must respond appropriately by
>> +	 * creating or destroying the PTP clock device.
>> +	 */
>> +	if (adapter->ptp.initialized &&
>> +	    !iavf_ptp_cap_supported(adapter, VIRTCHNL_1588_PTP_CAP_READ_PHC))
>> +		iavf_ptp_release(adapter);
>> +	else if (!adapter->ptp.initialized &&
>> +		 iavf_ptp_cap_supported(adapter,
>> +					VIRTCHNL_1588_PTP_CAP_READ_PHC))
> 
> You can check for the cap support once before the whole block.
> 
>> +		iavf_ptp_init(adapter);
>> +}
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.h b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
>> index aee4e2da0b9a..4939c219bd18 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_ptp.h
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
>> @@ -4,9 +4,19 @@
>>   #ifndef _IAVF_PTP_H_
>>   #define _IAVF_PTP_H_
>>   
>> +#include <linux/ptp_clock_kernel.h>
>> +
>>   /* fields used for PTP support */
>>   struct iavf_ptp {
>>   	struct virtchnl_ptp_caps hw_caps;
>> +	bool initialized;
> 
> Holes.
> 
>> +	struct ptp_clock_info info;
>> +	struct ptp_clock *clock;
>>   };
>>   
>> +void iavf_ptp_init(struct iavf_adapter *adapter);
>> +void iavf_ptp_release(struct iavf_adapter *adapter);
>> +void iavf_ptp_process_caps(struct iavf_adapter *adapter);
>> +bool iavf_ptp_cap_supported(struct iavf_adapter *adapter, u32 cap);
>> +
>>   #endif /* _IAVF_PTP_H_ */
> 
> Thanks,
> Olek
