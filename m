Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 945787626EF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jul 2023 00:38:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A2D06114E;
	Tue, 25 Jul 2023 22:37:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A2D06114E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690324679;
	bh=iuNOFkodr/eWbiS921TlMCSskimRCQWft65lGUulCfE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AcmP/RmyQLmZLEn4/V3B94X4kfZkRAbowVwWcriXHm5MHs7mEAYEC+VGCeKkubqeW
	 ZWbaRcYGUzr4sNPOR7DJsByHuWxtI2PHDG59zRzztWH/s2ueQO8leAPGYEyBsJ7apY
	 aQ9QFRyPwpm1MPLHvt8Br3q9mF2l+ElVyRgJGu9XPYuU7ovod2QZaG78qp1EcWqPvN
	 ntTGWNHCW49K3SKemJ6RkgfvSrVN4LPmFTs72mZO4jjM2E3KQmZVUOX4d4YWg9yueC
	 hyc94gqqJJv0tNFTe3ro9GtMvAsmCYWW2Ku8CvwcE3zZNQ/um5kNPcbbBNCfJvy/nT
	 n8Be9AuJm9Z7A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sUWlk4kJQQiY; Tue, 25 Jul 2023 22:37:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C249860AD5;
	Tue, 25 Jul 2023 22:37:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C249860AD5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 076571BF282
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 22:37:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D287282177
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 22:37:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D287282177
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iryswhuLVBBY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jul 2023 22:37:51 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8E5FE82174
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 22:37:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E5FE82174
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="434114354"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="434114354"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 15:37:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="869642917"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 25 Jul 2023 15:37:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 15:37:47 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 15:37:47 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 25 Jul 2023 15:37:47 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 25 Jul 2023 15:37:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lrK0nnwBvlzRVAa5+gnMjp6qT3YYQCm9QAtlL0Mb8fIJ9gM02dahp63ofmExtOJlVudrFtqiYdc/n8lfsTGD8XlUs/MS8o4ri1J7vo73tL3qkb5IjooQ4KcY0vRjKtL9PR9wPtKj14VNAOAUxNW/Hgnfzt25ptba0ARHgzQwNFE9gc5Cx0tUWhDoHwECTlMEIe9BAeAoUp7oMb74EWSDl48aO2sk5i1/qZrZoKkNcE8SiINK1VXk2T7iQXaIvw3gUIA8+zlHShmmAIeiN3TSslL8haY8sPw+7ahZTurnVN+HWqIXNx1DMSVF5SJTYM4zu3tFEwx2S2h2bCtHc6MPMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eOZR278mszcwYKSAyouplH5AGWkr/E48Bx6+belCEwo=;
 b=mSviQ9Nyp1RukKDkd2IvjcgTe3Jeb75Xhm4WHZXGPIjafV0IRg4DS1Kc/hA90fTQ+bJynD/qEBqA1srtVBqeHHPAuzoGr3EZILVMw7KtmhGh60X1J+Gu34qiozEdJLsUsNVuvdwz5U5ckp3LGw4E0omFXCm/0ghVbfBnPUPn5ZKXviyYeKzPyIS3S3eMp3ty/RjsUouVdynwK+iv3/R+856wkhGCtX5dLPwqVmMuvHEFP29piVwsYTxeYoJhLjF06J01rW9p0n3TiqtR8ttlXg1TGTuhTZTOmnoy51pKj2F8rHaan0vvfuNRfvwBfdDuz+qknzNydkb7t99kgc8bTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by LV8PR11MB8700.namprd11.prod.outlook.com (2603:10b6:408:201::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.33; Tue, 25 Jul
 2023 22:37:45 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6609.031; Tue, 25 Jul 2023
 22:37:44 +0000
Message-ID: <265a1553-f44c-eae2-cf67-ee0211855ce4@intel.com>
Date: Tue, 25 Jul 2023 15:37:40 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230721204943.701303-1-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230721204943.701303-1-aleksandr.loktionov@intel.com>
X-ClientProxiedBy: MW4PR03CA0230.namprd03.prod.outlook.com
 (2603:10b6:303:b9::25) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|LV8PR11MB8700:EE_
X-MS-Office365-Filtering-Correlation-Id: 1f99a75d-61b8-42f2-2043-08db8d5fc36f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: T926vu6D6ds9izgiMQSgvHWfqclKPW3fe8HusLJAfgPEWgGxj+QYy+sEEzzAP58P8qvJ/ErfaCZLe/aOizIBP/9D9KZA9oAu1LbbSyIeURaLFuevonMewSNemjwx/Kw5p2i0Uw0MAIKl6JcBZRIagqFgBwtlm646Zg7g1fANXF1C5tRvAPkq3vSXMBhz1gGg1V7X49619tE3J6qna0N3E5YST4mxkE033ctWTUSmR6i7eSpzRb85+qz6mM8iNCD6AJXI7DXk89j9Eanet00qDw3n/99dE40t81WqCm9r/r6DJjFKG4p0uhnHkgTcV3qnNsQ1+S9JZ8FbtgbbWzsYrmdl9JXrM4EqFeqpSUHIak1R6SZFLQiTkR68b0Sb4Gx6KFmvij9LN8c43C9AGj+zRRw0N+kAOZ88O7jh8RrrCYYFZQP+TNWM/CGwB3H9YJS5cCnZ2J7ZR6OFZr7HYmqVCxJq8FZqTA3T1jhqgnK5bMTn5J8gJrov83cbGMxEpxJjiDMSe4IIIwE4nCrMZVYOGkisyPbQRGO32jHyDXsJqr9a+1gxumD3J7tlW+xVyYZPQ9gudXV610mdLQQBzcdqVJdN6YOoBsvXGiEjLG3Pkw8sc84vsXW0P8c19JhTAfevi92vdsySx0Z1KOCi6E2m7Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(136003)(366004)(376002)(346002)(451199021)(31686004)(186003)(26005)(6506007)(2906002)(86362001)(31696002)(82960400001)(36756003)(8676002)(8936002)(6512007)(966005)(478600001)(6486002)(6666004)(41300700001)(38100700002)(66556008)(5660300002)(316002)(66476007)(66946007)(2616005)(53546011)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SWZUSkhBcHlVU0p6Zk55S0ZsN0xzZ3pkR0tkN2E0dEpaMEJYajBRWWwxMFZw?=
 =?utf-8?B?ZFFLdTRaVFNneFdaTno0Smg3UFh1bEliZ2hKdWc2NjlaMzc0TjREeFpLL0oz?=
 =?utf-8?B?QmliMDdpUFlaTG9vQXlwVXhpMmFqVHM0SjFOZC85ZFhmUW1YQVA0a1g0QVAv?=
 =?utf-8?B?NmxRdlRlb1pWbzFjWm04OFRFU3MxNm5RK0JFTWo4U0pCSTFPTHl4dVl0R3dQ?=
 =?utf-8?B?ZHlveEFkTHZtamxtQTl5SjhCRW5MZEdJcjdGRmRxL01NcEpaeEtSVHJVR2pk?=
 =?utf-8?B?V1FjNGJUVlFUaWxRaW1TUW56cXJuSVphaUpuT1NTUzJ0VFRKOFo3cVJ0VVNC?=
 =?utf-8?B?WVphYXpkQThVaVh2dFkwN1R1UUVoZ3l3a3lqWVFLSXJwUVVWd1JRbHFnKzQz?=
 =?utf-8?B?VU9hMmo1aDg2ZUFPMXpZbDFGUGVBMEN1S3BvSUR5N2I4aW9UVE9ER2Y5eDRJ?=
 =?utf-8?B?ZEd6c2NzMGNhUzN4cStmSHAvS2dEUWhEekZmQjFqbVBqZFhKTEsyRmdadHRN?=
 =?utf-8?B?RW40a1I4SnJaTTRuTTMwODN3b21qeEhWWHdROVV0eEUzRUJUMjRCbG5INGt5?=
 =?utf-8?B?QkhVZ0pab0JVT1lxT1RRVkFOakFlWXZVT2M5SmdNWGtNaklGOGNnZkIwZTFh?=
 =?utf-8?B?Q3hMMlZDTStQTTBlSXc0MmZIUkNTVmVYNVE1eUFEbkwySk9rVHQ0YnlOZUFz?=
 =?utf-8?B?VjBjVlk4cUFEM01Qc0Zhc2xhSHI4YmxzSXJST3poMXM3Z1FtdWtNV2FqenU5?=
 =?utf-8?B?aW1jSmU0Z0hYb2JVNGVMY0NNMlJsU1kxa3VzZitzM0hhSHBnVEhJMHE0U1pT?=
 =?utf-8?B?M0V6YTl1OG9oRlFhakdNWXdPVHlOdllJT1pMOU50Z1p2SldNb0JNRVBjSGdJ?=
 =?utf-8?B?dmVXQzg0czA1TXRiTTNsZG5iRHNqWWJhZWIvb0dRaGJ1TjA0QnV3cWpIa0FB?=
 =?utf-8?B?a3NwQ1dVaWhDa09sTTd5Z2lxV3NBL1dtbWljbDB2SGNhTlVRYkpranY4dGJN?=
 =?utf-8?B?YUZpVXpJdjNxY0tSL2ZXbkh4THFXcXFZRlhiVlVhY3R2RGJGbnpTQWVwT0da?=
 =?utf-8?B?MXZ4Y2ZYbnJrU0orOWRsbE9zUytnYXE2aXk2U3B6dTVRdllFNmN5UXBIbDlF?=
 =?utf-8?B?K09IcCt4YldXeEZaMHZXLzdvR09XN1RFRmZqN2gzTWk2R1NwMHRHVXVuVSs0?=
 =?utf-8?B?NTFnVkRYQ3dsUjhpRUVRTzBsQjk1RWUzb2J0VG1Ea1Z1Y0NmQ3Zkdjhad3Nr?=
 =?utf-8?B?TEREaEw2ZGVqeUR5amR5bXRsWDdxQWYzUy9ZYzBFb2RLaFVkYklnTGx3NjVO?=
 =?utf-8?B?cHlZL1dnYXU1Wi83ODZOaGc2RVJGcWJLQzZqYXZnVHlXbnU0YzVvY1JGcUpj?=
 =?utf-8?B?Q1J2dEdkQmhDWjEya0ZpUExsZ1BvQXNlUG5WTzB5NEpqdG1Ta0ZaWU1Sb2xx?=
 =?utf-8?B?VGRmWmhST2M1d3BvNnN2ekVNT0liaWM0VWxrMDZ4MEp1UnlxS1ExZEluTS94?=
 =?utf-8?B?cUdYN3FuQmRaMmFBbW4zR0tNSzd4Unh2RlNKV2tOaE1OZy9EZkJ3cXN6anhI?=
 =?utf-8?B?VWlCcVFqUGZEc3RnOWpkeHNKVXRJR3FBUk5hK1h5eXNBL3JsYzZxbmpvVE0x?=
 =?utf-8?B?VXZNNHc1RG5UcFd2ekZCQmZpNGNjT25ROTBsSXdWUUV1eGpFa056VVoyODFX?=
 =?utf-8?B?RjRJTzJmKzJIZUtqSmJIL29xZWRCSGxGWElFcnowcHBGU2MrUlJObDZqeTdZ?=
 =?utf-8?B?bkROTkhrcTFCSy85ckxKQTNlMFhaM1B2d05yMVdxNzJSR3RtOFk2aXhVUDNp?=
 =?utf-8?B?YjMvTE9SUjhqM0Q4ZWh3YXIxWUtqT3ovNmtQQkcyN1JsVGxqVU1rM2pKM2VI?=
 =?utf-8?B?enRHZXRwdkh6Z0ZteENIdGpLUnlpelpKdlZqaFVZdjRrdTZKR08wUEJlUlRF?=
 =?utf-8?B?cEFrS2dKNjlKUVgvK0NZWlRLbUFOVUZNY05QNW9nclFsZU9VcjQ1T1g0U1dL?=
 =?utf-8?B?TG93KysxaTRreGdwZVdnUlduZlY1dk14emEzRmVrYWM1SjFuM0VPR204bXo0?=
 =?utf-8?B?NG80YnhyUUVVMXNDUHJuYXpLbWpOSkJPNE1OR1RRWHFMSFoxbm1xWWMwa05p?=
 =?utf-8?B?VDdJZGY1TlQ0a2pvZXR2Z3ZBTm1mVDFvdGJNNUxHbHlWVTBPV0RocEZrNVVr?=
 =?utf-8?B?VUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f99a75d-61b8-42f2-2043-08db8d5fc36f
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2023 22:37:44.6510 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k4/c4jZZg8jWmO5tRfEdCM7a932W+Be4dUZTYtM0CIDqPTI1o1t5mShND/j03Ef1bH0JR2UWK1R8s2C74g6AksTiFmiDVs+hQUTkB7UGoCk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8700
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690324671; x=1721860671;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=TGDggow7ETpTYiRd0qJ4shJoCOZb6lU4MVR1JKGMd/g=;
 b=Jn6f307DdIrawGmXjqVTGH3HMQKYTXf36k/iRcSJrbNTJ6wCzrHMKFWU
 z385EejIdj3RRUn+G1sHiFPNixpmstc3onTUoRhdTuMN0xHbP87dcxAxX
 zzVWCdtHGh6/N/iqX5rfCcsmaMJPN9LTZTfW/skgffCAEvi99F7TbGsd3
 CjzCBI1Qn5v6wQCjevWcgcTxJeOUO5pXF7/YUwobX3S4OMKtdmYA+gMGZ
 IO0j1wsi0qi7moczIEJ9NuCTh+RdFRzKOtLqkg5HBwQmIJsqe4dF8vacH
 VQCI3+riz/yQt9kL1JIRMGPuMSu01b+GqIWbb/c76qw8sWy9tE8wsGkIu
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Jn6f307D
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix livelocks in
 i40e_reset_subtask()
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/21/2023 1:49 PM, Aleksandr Loktionov wrote:
> Fix livelocks by aquiring rtnl_lock() before any reset related operations.

WARNING: 'aquiring' may be misspelled - perhaps 'acquiring'?

> Add rtnl_lock()/rtnl_unlock() at top/bottom of i40e_reset_subtask()
> Add check for __I40E_RESET_INTR_RECEIVED bit.
> Add re-entry guard by fast return in case reset is already in progress.
> 
> Fixes: 373149fc99a0 ("i40e: Decrease the scope of rtnl lock")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1->v2
> * apply on https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git
> ---
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 39 +++++++++++----------
>   1 file changed, 20 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 7c30abd..164f7c6 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -10011,42 +10011,44 @@ static void i40e_reset_subtask(struct i40e_pf *pf)
>   {
>   	u32 reset_flags = 0;
>   
> -	if (test_bit(__I40E_REINIT_REQUESTED, pf->state)) {
> +	if (test_and_clear_bit(__I40E_REINIT_REQUESTED, pf->state))
>   		reset_flags |= BIT(__I40E_REINIT_REQUESTED);
> -		clear_bit(__I40E_REINIT_REQUESTED, pf->state);
> -	}
> -	if (test_bit(__I40E_PF_RESET_REQUESTED, pf->state)) {
> +	if (test_and_clear_bit(__I40E_PF_RESET_REQUESTED, pf->state))
>   		reset_flags |= BIT(__I40E_PF_RESET_REQUESTED);
> -		clear_bit(__I40E_PF_RESET_REQUESTED, pf->state);
> -	}
> -	if (test_bit(__I40E_CORE_RESET_REQUESTED, pf->state)) {
> +	if (test_and_clear_bit(__I40E_CORE_RESET_REQUESTED, pf->state))
>   		reset_flags |= BIT(__I40E_CORE_RESET_REQUESTED);
> -		clear_bit(__I40E_CORE_RESET_REQUESTED, pf->state);
> -	}
> -	if (test_bit(__I40E_GLOBAL_RESET_REQUESTED, pf->state)) {
> +	if (test_and_clear_bit(__I40E_GLOBAL_RESET_REQUESTED, pf->state))
>   		reset_flags |= BIT(__I40E_GLOBAL_RESET_REQUESTED);
> -		clear_bit(__I40E_GLOBAL_RESET_REQUESTED, pf->state);
> -	}
> -	if (test_bit(__I40E_DOWN_REQUESTED, pf->state)) {
> +	if (test_and_clear_bit(__I40E_DOWN_REQUESTED, pf->state))
>   		reset_flags |= BIT(__I40E_DOWN_REQUESTED);
> -		clear_bit(__I40E_DOWN_REQUESTED, pf->state);
> -	}
> +	if (test_and_clear_bit(__I40E_RESET_INTR_RECEIVED, pf->state))
> +		reset_flags |= BIT(__I40E_RESET_INTR_RECEIVED);
> +
> +	if (!(reset_flags & (BIT(__I40E_PF_RESET_REQUESTED)
> +			     | BIT(__I40E_CORE_RESET_REQUESTED)
> +			     | BIT(__I40E_GLOBAL_RESET_REQUESTED)
> +			     | BIT(__I40E_RESET_INTR_RECEIVED))))

operators shouldn't start the line i.e. the '|'s should be on the 
preceding line

> +		return;
> +
> +	rtnl_lock();
>   
>   	/* If there's a recovery already waiting, it takes
>   	 * precedence before starting a new reset sequence.
>   	 */
> -	if (test_bit(__I40E_RESET_INTR_RECEIVED, pf->state)) {
> +	if (reset_flags & BIT(__I40E_RESET_INTR_RECEIVED)) {
>   		i40e_prep_for_reset(pf);
>   		i40e_reset(pf);
> -		i40e_rebuild(pf, false, false);
> +		i40e_rebuild(pf, false, true);
>   	}
>   
>   	/* If we're already down or resetting, just bail */
>   	if (reset_flags &&
>   	    !test_bit(__I40E_DOWN, pf->state) &&
>   	    !test_bit(__I40E_CONFIG_BUSY, pf->state)) {
> -		i40e_do_reset(pf, reset_flags, false);
> +		i40e_do_reset(pf, reset_flags, true);
>   	}
> +
> +	rtnl_unlock();
>   }
>   
>   /**
> @@ -10694,7 +10696,6 @@ static void i40e_prep_for_reset(struct i40e_pf *pf)
>   	int ret = 0;
>   	u32 v;
>   
> -	clear_bit(__I40E_RESET_INTR_RECEIVED, pf->state);
>   	if (test_and_set_bit(__I40E_RESET_RECOVERY_PENDING, pf->state))
>   		return;
>   	if (i40e_check_asq_alive(&pf->hw))
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
