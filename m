Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B2DEB6E4FBF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Apr 2023 19:57:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 591F74136C;
	Mon, 17 Apr 2023 17:56:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 591F74136C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681754217;
	bh=vvP8gCg6//OjirYdpeGXDLFBP65c5E+t8JzerKfu6Oc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iFWy2L0sZtZBCL2ma+KJRg/1LsbQ9AHSdxafdmgkSh5o4QfV974O5oswFpqdT94DG
	 TtK++gSZD0iNO/BM0pxZ2xbfiUVD4wAXdEGpMbnNzArxul2FcIrd7iBc34Hg04HKFR
	 V6rzqUAWK6BHiluMJtRK6qYhfR8AxNd0RPZ8EfUmp1L4yZEGn8416rzWrpQ8QUmnKX
	 KZnL/Tf/0dbEkh11JCq8D0bymItkOMcvCHXat4BYHAMnyoE5VDATV4Co/o61fjbx07
	 Sodo/Iny9zR3znlQU1O7EWjCP1M1tOChp6xUWgb1gdds7LrxhDp2Tf5H5CnYRHmO9C
	 tg1ovovBdcoYA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lJSDzooRB_4a; Mon, 17 Apr 2023 17:56:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C8C1A4092C;
	Mon, 17 Apr 2023 17:56:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C8C1A4092C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C78AF1C4212
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 17:56:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9EC034092C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 17:56:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9EC034092C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3fChep8wcSIb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Apr 2023 17:56:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E76E408D0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7E76E408D0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 17:56:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="343715139"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="343715139"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 10:56:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="723326418"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="723326418"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 17 Apr 2023 10:56:48 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 10:56:47 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 10:56:47 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 17 Apr 2023 10:56:47 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 17 Apr 2023 10:56:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TCPupYJk5A9epAz8f0+i4s1BqYSR+m4HOocHcDDLoq2f8Ujre1648pYBSz75MvLxWZw6SI/7IgnuQYV45C097jlD+x8DUyyw1AyyX93hbvA7U1RqABAMfRpr/u+tODYe9Y+YUeQHVz9TM+hiVrTssBW2iu2IWMSjjrDVg/XMSwKF/fNJF97I5XNElYN8afwnVbwdQTqpUaN9LWYlrRz4JqWeliaMSVMzvPcfmnX+48D78FsiD0ykdXqFxvT7cr6573bt5kz3rag81axEI63Lh6vaLJe8rYuWLW7lrTljyD9R3QbhzB6lyHeb1CzhMJdXr7g3MEBbILNSSftQCubMDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iLYVSo6tpvf8YeyLfqYfR2USLYDjOxbkpn8aIttAAqE=;
 b=IiGgzMf7HMr/BEG8PUQlDiq/ZhaXEPQjlz+2X5CHIcPN5TxrR7OyJjAvtexsEa3pjrzIKNwNCiJHSBICMzNIwopF4fdeFuKOrqWl+zS1U1TM6Q4a4pRFZeZb3SAZ3yzPS/ybzR0y95WmnaPoL6XMkuM3EwmPXItL/0nZHtWxMSXaB17qqZYclCc4yH2/caqaU+MdIpxH59B9/anKH+csUKEo7/aovU+rCzRqm8ZnseMWfuE0mwTxvaQL7inmZ8vam5g8QnEd9hulxyeyTkDIsUyv60tYhdFre2ltzrT7p/ciWRMSi2jITTfzIbX8HOzuxgA8ZjkR1rTGeYC3VfdLXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BN9PR11MB5451.namprd11.prod.outlook.com (2603:10b6:408:100::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Mon, 17 Apr
 2023 17:56:45 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4b81:e2b0:d5fa:ad47]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4b81:e2b0:d5fa:ad47%3]) with mapi id 15.20.6298.045; Mon, 17 Apr 2023
 17:56:45 +0000
Message-ID: <23ac62bb-67c3-4685-4648-476c648dde98@intel.com>
Date: Mon, 17 Apr 2023 10:56:42 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Kamil Maziarz <kamil.maziarz@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230417113200.152404-1-kamil.maziarz@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230417113200.152404-1-kamil.maziarz@intel.com>
X-ClientProxiedBy: SJ0PR13CA0040.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::15) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|BN9PR11MB5451:EE_
X-MS-Office365-Filtering-Correlation-Id: d9b68233-7215-41e9-13de-08db3f6d1b9b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aGLg48iWnfS+oVuKNiDSMk37fum3W5lyuJJjuooD2HQCEq9WwPIMDp+Nt+F7k8EfWqJa4if5WOWp8UKqETujrA+1VWcFKTtaZr/JlSQH5rnTkJjQVlmEw89qNd3aZ+xavkUcDX/beb2mQMYMElxtl56mUmDsE8cokk9E8t4oibPyT32NEWVtoILCIBK0ml/TYjzMbTnbeJS78pi1tW/R9b0Rg2V+bx2DZSz4gUFGQel4xKX5BTyhv/x+lZLqa1RUxcZkAqhemVo+mzjrKgaJAoMo/cKd/lzOcnhmpylDFAoAUB+p66VIrl4zoJBv34QpZU8fAYy034GqS4WMN2JBLf5ZMD8l2aWbuxWwrFTmwYTh9lm0m1O5qoB+GAj3og+ekOG44x2oU/eKXJv8eybj6P45InEEfx2NRogTA2fP2GPuFdbGkDn9D8UAY841A1OgPPHUKB1+Klxuo/tlhREmOC72vZ2TIIjEGn3D0ShjHUKZ/FyFzjvFGadxNUK62SWhv/vR5CtuiM0vuhqEDV9uKvHVRiB7+76S5n3Ncydbwy+g5mAY/XrsefsTxRWYTxN/zRhN+H/49Jtm7WXRk7ZpLxk8VZVAQYaLrwnERpw77TSWFOZ83gfF7j4NlliL8U0zDv/Nz9tpz8Jxja15F49abw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(376002)(396003)(346002)(366004)(451199021)(38100700002)(8676002)(8936002)(5660300002)(2906002)(36756003)(86362001)(31696002)(478600001)(6486002)(6666004)(54906003)(31686004)(107886003)(186003)(2616005)(26005)(6512007)(6506007)(53546011)(66476007)(66946007)(41300700001)(83380400001)(82960400001)(316002)(4326008)(66556008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RDRNQXJnNE1nY0RTV2JSOTFaaGF2NTBVNXhSdGdpcU5wUit4Q1JXNDRzeHdP?=
 =?utf-8?B?MjY5NzVka2pEUVhVOHAzSEM2VFVpODQ5Q01JeGVrY29HbXlrQTdCT3EraHJ0?=
 =?utf-8?B?ZHNhMU05MHM5bHhLUDZxSGVFUS9pSkpHcWVTM3RXMnZPV0N1ajdzZnVtL1ZN?=
 =?utf-8?B?aCtUQkJjb1Y0Wmw5NDBmUDlzOXZyZVU4WTRwUGg2a3NOckl4TEw2S1RpKzh1?=
 =?utf-8?B?aDBZNVVUbUZLK1dmTGEzUGprUFFTbFZTUDR1eko1U01TdVEwelN4NEY5U3lG?=
 =?utf-8?B?Y093ZmRIcGI3U3paWkhjYTQ0SkRPVkwza2s1VExJRTkrRXhHMVZrQU44QVlt?=
 =?utf-8?B?dFR1d0swZHEvaFNrMXA0aDNhM3labHIyRWt2VDhHS0JsRkdWZ25mTXRtUVBp?=
 =?utf-8?B?TU42Q08xQWlvRjI2eGRBR2NuTTNyOHVJU2NrU1F3UEQybis5VjFGZGRzZTNj?=
 =?utf-8?B?dWNLNktnVVNZYVpYelVwbFpvT2t0YW5seUsyN29HYzdMYnpvNzFjSjJqY28v?=
 =?utf-8?B?UFY1R2dEZ05GaWxhWFZObzZqZnRSRWo2b3ZWQmtwYVJWYUdIZS9xc016cGwx?=
 =?utf-8?B?Wnc3TE5TU1JNZjcrVnBwMXB2Lzg2QjFxbkJGRE5SRFZHZ1hpQzFnRnlKbUQw?=
 =?utf-8?B?ZVBrK0VKTWJFMk5EMG5MeDNQaFY4Vy8yYTZHVjdObnBuSDdody9SRzdnK05T?=
 =?utf-8?B?YTRiWncvMmM3NC92YWZ0WXFicVJVbmVEWGxSSXVodlJHT2xKUkRIMmFsY2N6?=
 =?utf-8?B?d3dES2E0YWEyYVNKMUxrS1B4VmFoMW81bDZoekY5L25vdWhTQjl5S0Q2Umcx?=
 =?utf-8?B?UEtlZEVENWlIR2UyK0dWVFdONmpCY1R1SE81Y1p1QlNoVEhCM01CNkhsZ05t?=
 =?utf-8?B?ZWZIVVdvT3ZPZjFCQXdVekJrYlYxdzFWMFVua2JqRVRjZmd4SVJLT2VmOHoz?=
 =?utf-8?B?Tmp6d3FxbEpGTjNZa3l3NWVyaU0xeTIxNlB6TjN2V3g4YW9zTXBjYnVMRVh3?=
 =?utf-8?B?SnpWbjljZGFlYkN0b1dmcjBkbjhKbm1BUmRaazJBSnA0dHIycGNvUGdZZUhi?=
 =?utf-8?B?Tkd5eUEwSUdOVlEwV0RXeXdRb3RNcUZPWXVhWUxXM2Y4dm80aEl4SitsbmZW?=
 =?utf-8?B?QkFjdGxvbTJXYWF0T3doVEdjR1lSV3V6a1U3MjhVR2JsdjRTbVhLWUVZTXdH?=
 =?utf-8?B?U3RDZkhBeEMzbm9WNDd6ZkhwQmUxNGxNUDA4ekNNbnpRLzlQYlR4YndrTVN3?=
 =?utf-8?B?SlI0ZnRGQ1p1M1ZIWGR3bGxVcjhWMS8wQ0ZDSWpYbFdCVFhsVkJybVd5RXhi?=
 =?utf-8?B?UnlOZTAveXpxZ0NNOVJtcCtUYmVEQjhDR1M4b0p4ZjVWVmZiZTZjMURCZ25C?=
 =?utf-8?B?TkFMTkx4T05JTHd4c2xEL2JER1lNQ2ZNaWE3SHBpaEp4ZEVEN24vSGFrSzNL?=
 =?utf-8?B?UldxL3NuTldNcXJCUXZvMGpUK1A5SkNBb1pNS3E3NzN3SEdCN1dsMERucWhv?=
 =?utf-8?B?UnBOeW95V3dVUHdFYlZnMlJmQmVKRmZYMUQ1bkJmM2dkL2ZnWXd4a1ZLNXRn?=
 =?utf-8?B?TUE5TXEwVHJGSXVXQmR0OHFZRDZuKzYvaGtBSUUreFZpRUhrYXV0SnlEWUt1?=
 =?utf-8?B?ZEg0QUZBWjJrNzNSa1hPcGQxNTA2RENNWmN5QWVPRnRPSkg0SXd5cDRESG1V?=
 =?utf-8?B?MHA3c0RKdkY4Ti8xY1Q3Wi9iZEd6c0tZU0xnbDFYL2RxV2IxditMVlJWUVZo?=
 =?utf-8?B?RFZoTmlYcXJ2UitTNE1CdVVDczJpMHlKVWZYZG81eWtuOVFsTWlLUjVFNytN?=
 =?utf-8?B?Z2wza2ZVUHZqNXdONFFlMVJ4d1VVVXhqRDhOTldtSU9mSFozM3RMVkdiUGI5?=
 =?utf-8?B?eUJwN3FwbEMxZS94S1lhRkthM3VvQmZrOUU5OWtpNXl2anFPQWJSMnhsMFU5?=
 =?utf-8?B?OU5UR0Q0ZEdmcFQwR3FYOUk3bmtVdEc2T0VreGNSY0M1aWpVS0wzSFBxeW9L?=
 =?utf-8?B?b3JSYnFDSm5YN0FzV3YweFgvMGsxQVhaWnBpMllqaWp4VFNNb2RoMndWaGFU?=
 =?utf-8?B?azZYdjZGSDFZdlNVdDlGN0FWemIvQkFCU3k4YWtOb1l2Y0hJUVdrTDMzbWVk?=
 =?utf-8?B?akk4bm1uajJnVVBiZzdzNjRKMDRIdUtpS2tnRFArcWNkMU53bFg2MzBIcEdN?=
 =?utf-8?B?M3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d9b68233-7215-41e9-13de-08db3f6d1b9b
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2023 17:56:45.1980 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AxeuMJQnFL9XZLYiXHD0revto9UNi2rsgNLHMtUQdZcH7ueW8HpI2Rx6oPOMs2IuE6AoijZXY2Vz0p5GTU85hY5P7zq3mNk7s28XbUy4NkI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5451
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681754209; x=1713290209;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VtmR93+LlBvRtd16TLgKy5cu6YXEH7l5krHm9eMvp+U=;
 b=Ml7m+r2BHDa1HuNTj9VfkmKt7f0vq1/CUBy9snpZEICvnMD2CorkHjdO
 Az1oLGlgxvSEWRYM2/qlroEq7CWCf8kZ7p0w+JKtO306po1qMQVkFMeW8
 Xy5w39wEw6yhKZxxymHmPU1AAx/JChuaJ5Jwv0yF+5AKnyGZbl1eQ5Gal
 AL/v1SJuzR4ZeImf2L9YUOdQF5W29giG+nrk9rSvG9J7nPjA9wobXC5bZ
 tyxoHefYcqwF8Qsi3fPbmkzeHP60hSwnhUjXBkDNO0nYSdmIA11XlRfUU
 i8WKXGYjPedPTXQigsL8VwbA+ToUAszTNXYrklEimdSljJSyzW/MiHRuc
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ml7m+r2B
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix ice VF reset during
 iavf initialization
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
Cc: Dawid Wesierski <dawidx.wesierski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/17/2023 4:32 AM, Kamil Maziarz wrote:
> From: Dawid Wesierski <dawidx.wesierski@intel.com>
> 
> Fix the current implementation that causes ice_trigger_vf_reset()
> to start resetting the VF even when the VF is still resetting itself
> and initializing adminq. This leads to a series of -53 errors
> (failed to init adminq) from the IAVF.
> 
> Change the state of the vf_state field to be not active when the IAVF
> asks for a reset. To avoid issues caused by the VF being reset too
> early, make sure to wait until receiving the message on the message
> box to know the exact state of the IAVF driver.
> 
> Fixes: 109aba47ca9b ("ice: introduce ice_vf_lib.c, ice_vf_lib.h, and ice_vf_lib_private.h")

This commit seems to just move stuff around. Is this really the 
offending commit? I believe Jake suggested c54d209c78b8 ("ice: Wait for 
VF to be reset/ready before configuration").

> Signed-off-by: Dawid Wesierski <dawidx.wesierski@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> Acked-by: Jacob Keller <Jacob.e.keller@intel.com>
> ---

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index 0e57bd1b85fd..f206293a8cf1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> @@ -185,6 +185,26 @@ int ice_check_vf_ready_for_cfg(struct ice_vf *vf)
>   	return 0;
>   }
>   
> +/**
> + * ice_check_vf_ready_for_reset - check if VF is ready to be reseted
> + * @vf: VF to check if it's ready to be reseted

WARNING: 'reseted' may be misspelled - perhaps 'reset'?

> + *
> + * The purpose of this function is to ensure that the VF is not in reset,
> + * disabled, and is both initialized and active, thus enabling us to safely
> + * initialize another reset.
> + */
> +int ice_check_vf_ready_for_reset(struct ice_vf *vf)
> +{
> +	int ret;
> +
> +	ret = ice_check_vf_ready_for_cfg(vf);
> +
> +	if (!ret && !test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states))

No space between function call and error check please.

> +		ret = -EAGAIN;
> +
> +	return ret;
> +}
> +
>   /**
>    * ice_trigger_vf_reset - Reset a VF on HW
>    * @vf: pointer to the VF structure
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> index ef30f05b5d02..3fc6a0a8d955 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> @@ -215,6 +215,7 @@ u16 ice_get_num_vfs(struct ice_pf *pf);
>   struct ice_vsi *ice_get_vf_vsi(struct ice_vf *vf);
>   bool ice_is_vf_disabled(struct ice_vf *vf);
>   int ice_check_vf_ready_for_cfg(struct ice_vf *vf);
> +int ice_check_vf_ready_for_reset(struct ice_vf *vf);
>   void ice_set_vf_state_dis(struct ice_vf *vf);
>   bool ice_is_any_vf_in_unicast_promisc(struct ice_pf *pf);
>   void
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index e24e3f5017ca..d8c66baf4eb4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -3908,6 +3908,7 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
>   		ice_vc_notify_vf_link_state(vf);
>   		break;
>   	case VIRTCHNL_OP_RESET_VF:
> +		clear_bit(ICE_VF_STATE_ACTIVE, vf->vf_states);
>   		ops->reset_vf(vf);
>   		break;
>   	case VIRTCHNL_OP_ADD_ETH_ADDR:
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
