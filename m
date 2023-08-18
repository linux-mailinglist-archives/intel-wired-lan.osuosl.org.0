Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F067812F6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Aug 2023 20:41:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A42D841A1;
	Fri, 18 Aug 2023 18:41:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A42D841A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692384060;
	bh=qzuhDKaQUzOg7k7sjfcAZpqWbnJfWQJ62zJ4hveFi3o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uwbc0Ddcq6RMHYFmsjCFswVmKqdQG+LvzvRg06Aavljs8UDh1RjIQXFIGVXLXAjYE
	 JVdWeV27pfFNpPFH9fQcoNrl3EYhpLSo72289EgbEkvuIKcf/1EJrAK4ERGlpfmcTS
	 sarM2W+gWy39yXd3H6CYCRt3GL6gYnzM/aY3BlMFBpwTpO7kb8qSf6Hbg7Gw3DJGqf
	 3bIj+gOWiglcEj8cgx+gk3lFbq4U3+NdrUKDO2+9KX6fPrDSA5/xP+hgS6+HWYDw9p
	 VRoGrr/7XQLUH9wk5/7APLe3QmaGvLSaW4jepMCe6UigOizkCMheRnMDbPMFZK+65u
	 fVH9Dm4JFri3g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SKPfXhHg8tOo; Fri, 18 Aug 2023 18:40:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C5BC084197;
	Fri, 18 Aug 2023 18:40:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C5BC084197
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B37221BF355
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 18:40:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 99F0740156
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 18:40:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 99F0740156
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b_NAAo4VwdYr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Aug 2023 18:40:52 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D9CF3400BF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 18:40:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D9CF3400BF
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="376927030"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="376927030"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 11:40:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="738200701"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="738200701"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 18 Aug 2023 11:40:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 18 Aug 2023 11:40:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 18 Aug 2023 11:40:50 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 18 Aug 2023 11:40:50 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 18 Aug 2023 11:40:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HAeAmCNSJ/V/n2sEqSzxzE18lMpeQTkC+JetQ+AHzmwuoHL8Z5sjm+FbiPAAsdLwwxuqljmopngcwKuRX2r1AA6xRK+F8TQjELautSUA/ij9BNWH5nk04AhSg+4tXERX3TI7/X8+i7vKXPqfEPUef+j1X0zYllIUo94CAeNC06GpObY17XVcKOGMbIt5j11XsD75buRx13G74JcYwUAaCF88myjltgpzzQI1hMWn08JY22Upn/Tqg/ApB943/fLwOJIrfCNhn3Vaucc7SMWKDhWEWu3CHEd6Nnrhp5a67B5P+2G/mEB4JomNveOwFs9EXfpFFhG35gd1CR4TwDpfQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=caVFmU5uLQPwUr/2N/v8NU0/UcEGLDGIu3lFc6QZtdw=;
 b=WG8IUvaeLK7aoxcXQg3K1axhLWTCOC0XvECgbZMFAhe6bPGfdpHWCBz/YHKo3i0HQRYx1v7Z7hTgGuiq1Bx6k2OEqC+zzhny0rJ7IOeD8baEgbIiy1XasQtzdDox1Gl5W9yKdFWDLV58SO8T+9sKxzVsbqH154Sma4FDYj5l+TIsQlwH05CmQJqgKWV7tsUhbMjQDXwFJgucyYtdh8hG/DQLxNxTcSKRfaJbAftrpXYQHZ0uSuKHOxnPVSwFp5bC3AxlYXvIkRtZ6rgrq48oq6WAoQK/By7xhs3Z7iCQ4P7UsaFvzsSaI6tg3gMl8f+G3ajPH0CMhwssDpfvksV0QA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SA1PR11MB7037.namprd11.prod.outlook.com (2603:10b6:806:2ba::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.31; Fri, 18 Aug
 2023 18:40:41 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::91f3:3879:b47d:a1c3%3]) with mapi id 15.20.6678.029; Fri, 18 Aug 2023
 18:40:40 +0000
Message-ID: <ba8b1093-c68e-a707-8d89-edf7c7f07965@intel.com>
Date: Fri, 18 Aug 2023 11:40:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Junfeng Guo <junfeng.guo@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230817093442.2576997-2-junfeng.guo@intel.com>
 <20230817094240.2584745-1-junfeng.guo@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230817094240.2584745-1-junfeng.guo@intel.com>
X-ClientProxiedBy: MW4PR04CA0310.namprd04.prod.outlook.com
 (2603:10b6:303:82::15) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SA1PR11MB7037:EE_
X-MS-Office365-Filtering-Correlation-Id: 20a1f98c-2aec-4c62-9e70-08dba01a9f3d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0gwYD++VA3cW+C6yMtQAgHMReZ/m4S6wZTY2IsCz7bavWwUr6C3Rt7+Ds402roIwWnlq0FJ/bHYFm+aGPyCkEs3fD9VxqcLPIGtvVo2UZSiSM0tUGXrYZ+LIqsyN8jleenb6lYvzM60aoqniNNNtktcOpwcsb3kwwKImoM04vyTseeRj6YIyXWhxREdVZiVAejWzzPLZ37okzyCkh7/HkJd1kYKVcn9Y33HP3JaLo5QvcbvobEpCwo3KG0ofTzK+HeCCx0dZ3EhfDRpPMOJjetcDTWPhAuBZ4K6HwjiDMfLp4HJWmA6zi0dbwV0mJYNoI9qwLJ7iv8Bdver6Xy8HkVPcQWHhlDl6iFeSW0Pe9RQYXscyKgdSoC2Y26pfUgqhchYnhFRnCx841U86Ep4W0TtnCuaL/C58LtUH55E79ysBt4Q9jQDXmJPJ05jT7AdC31slsZMbTyMqad3MXVvjb6QPaVDrCcf9vY1A0bjqe23K38V863s6GyXeUZMjpSPmCTMl/ENtI+Kk9qBxvmPUqJ7nqsSZ13Z6wNvbOYRF3kGobTQuNuNdQ+N1z6KPacQbJhfDfglzWqpQPloObbulQmIqBK7t2Q/vq6B9MJcGCWB1uRNEhhHGWwVKfci/Wz8ZjE1XoNKyY+1FGIHBu1tp89hwU57Ax7lcQAFeNzD464mVOz6vfhxMNDtlYRKpwEqK
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(136003)(366004)(396003)(39860400002)(451199024)(1800799009)(186009)(31686004)(86362001)(31696002)(36756003)(82960400001)(38100700002)(5660300002)(2616005)(107886003)(6666004)(66946007)(66556008)(316002)(6486002)(66476007)(53546011)(6506007)(478600001)(26005)(4326008)(6512007)(8676002)(8936002)(41300700001)(966005)(2906002)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nnp6d0pySVA3UUhqUkFvUWJJWVRKQ1d4S1I1UWdtRFZ0eUc0KzE4c1p0aGFT?=
 =?utf-8?B?d2V6TGlMLzBIY0pHSVBBWlhiU0E0Z1BXdkdEWGViZlVIT1hMVFp0eEZvOEVH?=
 =?utf-8?B?ckxPanMrK1FGeWgrSWR4S2NqNUt3bkJlZnBEWmJCMjlrVjNiVFg4U1JySVNv?=
 =?utf-8?B?b3k0aHFjZVdicjFJK2JPQlQvQ0MzNS9sc3RiNllnU2VEc0dQem9kUDU0WmV5?=
 =?utf-8?B?TFNWcnUzRTFCK0ZZZVcyd1dtR0Vtc09hSTJQb0ErNGRVOW8rczVtSVhjMGtH?=
 =?utf-8?B?cHFEUnV5alNEYlNHcVZSYjJ1azRQYUVLM2tJRjZwamQ2a2VnMllPanhRSlBt?=
 =?utf-8?B?emlOS0dHV1J0L2ZxdDk3WUxHdUFtVnJMRm9LR1BvWTNudDJXK2RsTHI1UnZT?=
 =?utf-8?B?b1hxTUJJaHArcjN6YmtxZUNpNDQwN01wUWZ3WW5hMTFxZmd0ZjNFOFpBUVNi?=
 =?utf-8?B?a1UweUg4WFdtdDZBd3FuZWFaSGZteFA2Sitid2Y5YkVYZXFUYVVlRFJJUUt3?=
 =?utf-8?B?cFRZS0o5ZUZhSHBQcmJGNjRrZzFmRS83VWc0eFNSQit3QW4xR2RxaUpCR3N1?=
 =?utf-8?B?MTVsV0VubitzcUNxQTJONGJwc2VkZ01YVWNEU0dyaTRsdGpqZkJFLzhFWU9s?=
 =?utf-8?B?S1VrMFZkZ1ZTeU1xNGQyREJLYXM1UkJlRTMzdS9zYkE3MjN1b2FVbitpQjUr?=
 =?utf-8?B?UEZDeFkzUUpGNjFBRVpUMGF4UWJ2TWV2d0NQV3VPSFdIRmpBRVl4cVFrS2R5?=
 =?utf-8?B?azhPWXQxdXI3cHZydjBLaGZzeXlFQXN6bk1pRXVzL3B4bHNVY2Z0dlRxTzNl?=
 =?utf-8?B?cWJWaGt5SElCMDlyYXgwNDJLQWtCbk5tVVMyaEFBTzZVVTVHdE1xUFRWN042?=
 =?utf-8?B?enB6a1NjV3pCZjZiaExmblg3Y1ZURXBMSjl3Vnh5WTU2MkU2ZWpXWEY3aFBk?=
 =?utf-8?B?OU4vZXNGa1VIbmhoK3dCazZQaFRUNHJYRHNLVDl6d1FzM1RGK0cxeCsya2JF?=
 =?utf-8?B?NVRvNGxzTDNtL0hvMHJxd2VydVFqekt4NmdrazMzZm1OWmJ0bGY1bVBwRzlP?=
 =?utf-8?B?UmR0M1ZTRCs1U1FuT1h1cUE5N3pMTkdJZFlrdDRhUXJyTnBEcVNxRjVYUnhp?=
 =?utf-8?B?cU5CSmtQNVZMSzlXbFJSN2hTUzM4Sm9qOHpTMGxML2pJd0tLVGEzbVR1dFpw?=
 =?utf-8?B?ZER0TEc4ejYzckx1VWJXY2lnOUY4ak45VDRoU0MyZzgycVY3M1MzWkJpWjU2?=
 =?utf-8?B?VDFPTHJwekovU1dBOWdqYjQ4T1dTNmJQSWRJMzkxaEdoczR2MnYyQmFDVURl?=
 =?utf-8?B?TnA0S054V0NXc1IxZlFvQmErRDR4ZGZRY3dxMWQ3cXF1SDVRbXFuYzgyb243?=
 =?utf-8?B?bmYvWDRmTjdibkVRMk1FWjZJS3pWNFJKc3hMMk95cWoyTEVFQTFwRHcxOEVJ?=
 =?utf-8?B?K1doUlJwVU5BS1NWVFJ4Q0JrQW9vWU1YQkVLZHdRRjJjSGszMHY4dGNVMEZU?=
 =?utf-8?B?YUx3MHBGZGVLOU54d1RYSDNSUjdlMlBXWVNIaXdQUE5scXFtNW1iQnlLK3lI?=
 =?utf-8?B?ZHFETjJ5dHJta1dxQ3VYMjZrWDZ6STd0S0dTejE4SStaaWNpTkJBay90cUds?=
 =?utf-8?B?aVcvZHRNemtQU1J0c2VNK05JdzgraUVGTjNVZStxZTk4TW54eDJpSjhMVWZM?=
 =?utf-8?B?Ly9yZXZWQWJrc0kxcnRpbXhlektJeDRyVzBPRVdHOVJvTlNRSWRwanRxOWJk?=
 =?utf-8?B?eEhxVFlOY1VTajIveGFKT3VGUm05UjhwV0o5VG1kL1pSazJ5RXUrRkJMNy9m?=
 =?utf-8?B?a2drTE5OaDBOeWVLZnRuV3cwUmltMWxuQVlPNjk2VHFCM3pGSFJWd2RvVkpC?=
 =?utf-8?B?d1NFMVZRT3FqanJMbmZIYnhpckJNZW40NU5IRHdKRmFETmJScVNjM1BTRHE0?=
 =?utf-8?B?WTl5N3RJeXdqbllCRDEveWg4NEtES1JHR2NGOUtDYVVDMXI3ZzE3MDg1aHR5?=
 =?utf-8?B?Z05aMlpMbTgvT2d3bWtZUnNmYlpiUnBEL2Q3YnZscFBHUkdEd3cxTmhMV1dt?=
 =?utf-8?B?d0ZnZERxY20vZmRnY0FKaGREQVFEOTFHWkd6OVJjS2hFbWZxalBpUUlDVmF4?=
 =?utf-8?B?QW5vTCsvSTNIRWc1OU9MdDFjaDVocGE0bXcyVWR5d21pbDEvMFFWRlJWOFAz?=
 =?utf-8?B?bmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 20a1f98c-2aec-4c62-9e70-08dba01a9f3d
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2023 18:40:40.6979 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 88yxxzCKK08TDLZh38gDoH9fSP7OAJMd08VNxu4Asnm9b8TUSteoIdLOJ5kFB5xeU9ReTz466kgQ+/S46vyv6Sn3+7uHMcE22K/mfEhB9lM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7037
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692384051; x=1723920051;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fUdmGEW56gvFSJnOo40lXe4HEXAMe0RnmH/pWYl7Mjg=;
 b=IyQyoejES6Xzhpe/fua9Xlp03GSxcwi0ifFe1uYeygQZ+wQk2L0OMfuL
 YD0KdanP+er+QSUqhG8B9HOfm/3ZFb5B/QzqogqSgp17Ny56Mhs9D3t+u
 BkzyjKZluarzteLGm3CQPff/lciAO1wzFYvadBn739qlZrST9naQi8Cq5
 sI2gmSiyr23Hn/l5YjWG1RDp0EEpWGfVT7o6OiNCuXz5gjU/yKC4KmtTb
 9777ZWkcuOb94CDX0TSZ78PSAgxPB1/8nD0NJZ/gQ3+t1ro9w1bjlL1Nb
 QKYXac3TbEtbGrDBhgPUFI6ylDDBwoGgZXDBduaI1rDuYI5Kj7f6NkaFc
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IyQyoejE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 00/15] Introduce the
 Parser Library
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
Cc: ivecera@redhat.com, qi.z.zhang@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gOC8xNy8yMDIzIDI6NDIgQU0sIEp1bmZlbmcgR3VvIHdyb3RlOgoKSSBhc3N1bWUgdGhlc2Ug
YXJlIGZvciBJV0wsIHNvIGl0IHNob3VsZCBiZSBpd2wtbmV4dCwgbm90IG5ldC1uZXh0LiAKQWxz
bywgcGxlYXNlIGNjIG5ldGRldiBvbiB0aGVzZSBwYXRjaGVzLgoKPiBDdXJyZW50IHNvZnR3YXJl
IGFyY2hpdGVjdHVyZSBmb3IgZmxvdyBmaWx0ZXJpbmcgb2ZmbG9hZGluZyBsaW1pdGVkCj4gdGhl
IGNhcGFiaWxpdHkgb2YgSW50ZWzvv70gRXRoZXJuZXQgODAwIFNlcmllcyBEeW5hbWljIERldmlj
ZQo+IFBlcnNvbmFsaXphdGlvbiAoRERQKSBQYWNrYWdlLiBUaGUgZmxvdyBmaWx0ZXJpbmcgb2Zm
bG9hZGluZyBpbiB0aGUKPiBkcml2ZXIgaXMgZW5hYmxlZCBiYXNlZCBvbiB0aGUgbmFtaW5nIHBh
cnNlcnMsIGVhY2ggZmxvdyBwYXR0ZXJuIGlzCj4gcmVwcmVzZW50ZWQgYnkgYSBwcm90b2NvbCBo
ZWFkZXIgc3RhY2suIEFuZCB0aGVyZSBhcmUgbXVsdGlwbGUgbGF5ZXJzCj4gKGUuZy4sIHZpcnRj
aG5sKSB0byBtYWludGFpbiB0aGVpciBvd24gZW51bS9tYWNyby9zdHJ1Y3R1cmUKPiB0byByZXBy
ZXNlbnQgYSBwcm90b2NvbCBoZWFkZXIgKElQLCBUQ1AsIFVEUCAuLi4pLCB0aHVzIHRoZSBleHRy
YQo+IHBhcnNlcnMgdG8gdmVyaWZ5IGlmIGEgcGF0dGVybiBpcyBzdXBwb3J0ZWQgYnkgaGFyZHdh
cmUgb3Igbm90IGFzCj4gd2VsbCBhcyB0aGUgZXh0cmEgY29udmVydGVycyB0aGF0IHRvIHRyYW5z
bGF0ZSByZXByZXNlbnRzIGJldHdlZW4KPiBkaWZmZXJlbnQgbGF5ZXJzLiBFdmVyeSB0aW1lIGEg
bmV3IHByb3RvY29sL2ZpZWxkIGlzIHJlcXVlc3RlZCB0byBiZQo+IHN1cHBvcnRlZCwgdGhlIGNv
cnJlc3BvbmRpbmcgbG9naWMgZm9yIHRoZSBwYXJzZXJzIGFuZCB0aGUgY29udmVydGVycwo+IG5l
ZWRzIHRvIGJlIG1vZGlmaWVkIGFjY29yZGluZ2x5LiBUaHVzLCBodWdlICYgcmVkdW5kYW50IGVm
Zm9ydHMgYXJlCj4gcmVxdWlyZWQgdG8gc3VwcG9ydCB0aGUgaW5jcmVhc2luZyBmbG93IGZpbHRl
cmluZyBvZmZsb2FkaW5nIGZlYXR1cmVzLAo+IGVzcGVjaWFsbHkgZm9yIHRoZSB0dW5uZWwgdHlw
ZXMgZmxvdyBmaWx0ZXJpbmcuCj4gCj4gVGhpcyBwYXRjaCBzZXQgcHJvdmlkZXMgYSB3YXkgZm9y
IGFwcGxpY2F0aW9ucyB0byBzZW5kIGRvd24gdHJhaW5pbmcKPiBwYWNrZXRzICYgbWFza3MgKGlu
IGJpbmFyeSkgdG8gdGhlIGRyaXZlci4gVGhlbiB0aGVzZSBiaW5hcnkgZGF0YQo+IHdvdWxkIGJl
IHVzZWQgYnkgdGhlIGRyaXZlciB0byBnZW5lcmF0ZSBjZXJ0YWluIGRhdGEgdGhhdCBhcmUgbmVl
ZGVkCj4gdG8gY3JlYXRlIGEgZmlsdGVyIHJ1bGUgaW4gdGhlIGZpbHRlcmluZyBzdGFnZSBvZiBz
d2l0Y2gvUlNTL0ZESVIuCj4gCj4gTm90ZSB0aGF0IHRoZSBpbXBhY3Qgb2YgYSBtYWxpY2lvdXMg
cnVsZSBpbiB0aGUgcmF3IHBhY2tldCBmaWx0ZXIgaXMKPiBsaW1pdGVkIHRvIHBlcmZvcm1hbmNl
IHJhdGhlciB0aGFuIGZ1bmN0aW9uYWxpdHkuIEl0IG1heSBhZmZlY3QgdGhlCj4gcGVyZm9ybWFu
Y2Ugb2YgdGhlIHdvcmtsb2FkLCBzaW1pbGFyIHRvIG90aGVyIGxpbWl0YXRpb25zIGluIEZESVIv
UlNTCj4gb24gQVZGLiBGb3IgZXhhbXBsZSwgdGhlcmUgaXMgbm8gcmVzb3VyY2UgYm91bmRhcnkg
Zm9yIFZGIEZESVIvUlNTCj4gcnVsZXMsIHNvIG9uZSBtYWxpY2lvdXMgVkYgY291bGQgcG90ZW50
aWFsbHkgbWFrZSBvdGhlciBWRnMKPiBpbmVmZmljaWVudCBpbiBvZmZsb2FkaW5nLgo+IAo+IFRo
ZSBwYXJzZXIgbGlicmFyeSBpcyBleHBlY3RlZCB0byBpbmNsdWRlIGJvdW5kYXJ5IGNoZWNrcyB0
byBwcmV2ZW50Cj4gY3JpdGljYWwgZXJyb3JzIHN1Y2ggYXMgaW5maW5pdGUgbG9vcHMgb3Igc2Vn
bWVudGF0aW9uIGZhdWx0cy4KPiBIb3dldmVyLCBvbmx5IGltcGxlbWVudGluZyBhbmQgdmFsaWRh
dGluZyB0aGUgcGFyc2VyIGVtdWxhdG9yIGluIGEKPiBzYW5kYm94IGVudmlyb25tZW50IChsaWtl
IGVicGYpIHByZXNlbnRzIGEgY2hhbGxlbmdlLgo+IAo+IFRoZSBpZGVhIGlzIHRvIG1ha2UgdGhl
IGRyaXZlciBiZSBhYmxlIHRvIGxlYXJuIGZyb20gdGhlIEREUCBwYWNrYWdlCj4gZGlyZWN0bHkg
dG8gdW5kZXJzdGFuZCBob3cgdGhlIGhhcmR3YXJlIHBhcnNlciB3b3JrcyAoaS5lLiwgdGhlCj4g
UGFyc2VyIExpYnJhcnkpLCBzbyB0aGF0IGl0IGNhbiBwcm9jZXNzIG9uIHRoZSByYXcgdHJhaW5p
bmcgcGFja2V0Cj4gKGluIGJpbmFyeSkgZGlyZWN0bHkgYW5kIGNyZWF0ZSB0aGUgZmlsdGVyIHJ1
bGUgYWNjb3JkaW5nbHkuCj4gCj4gQmFzZWQgb24gdGhpcyBQYXJzZXIgTGlicmFyeSwgdGhlIHJh
dyBmbG93IGZpbHRlcmluZyBvZgo+IHN3aXRjaC9SU1MvRkRJUiBjb3VsZCBiZSBlbmFibGVkIHRv
IGFsbG93IG5ldyBmbG93IGZpbHRlcmluZwo+IG9mZmxvYWRpbmcgZmVhdHVyZXMgdG8gYmUgc3Vw
cG9ydGVkIHdpdGhvdXQgYW55IGRyaXZlciBjaGFuZ2VzIChvbmx5Cj4gbmVlZCB0byB1cGRhdGUg
dGhlIEREUCBwYWNrYWdlKS4KPiAKPiAKPiB2NDoKPiAtIFVwZGF0ZSBjb3ZlciBsZXR0ZXIgc2Vy
aWVzIHRpdGxlLgo+IAo+IHYzOgo+IC0gUmVwbGFjZSBtYWdpYyBoYXJkY29kZWQgdmFsdWVzIHdp
dGggbWFjcm9zLgo+IC0gVXNlIHNpemVfdCB0byBhdm9pZCBzdXBlcmZsdW91cyB0eXBlIGNhc3Qg
dG8gdWludHB0cl90IGluIGZ1bmN0aW9uCj4gICAgaWNlX3BhcnNlcl9zZWN0X2l0ZW1fZ2V0Lgo+
IC0gUHJlZml4IGZvciBzdGF0aWMgbG9jYWwgZnVuY3Rpb24gbmFtZXMgdG8gYXZvaWQgbmFtZXNw
YWNlIHBvbGx1dGlvbi4KPiAtIFVzZSBzdHJzdGFydHMoKSBmdW5jdGlvbiBpbnN0ZWFkIG9mIHNl
bGYgaW1wbGVtZW50YXRpb24uCj4gCj4gdjI6Cj4gLSBGaXggYnVpbGQgd2FybmluZ3MuCj4gfCBS
ZXBvcnRlZC1ieToga2VybmVsIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4gfCBDbG9zZXM6
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL29lLWtidWlsZC1hbGwvMjAyMzA2MDUxMjQ2LmpjZTV5
U1FtLWxrcEBpbnRlbC5jb20vCgpJJ20gbm90IHN1cmUgaG93IHlvdSBhcmUgc2VuZGluZyB0aGVz
ZSwgYnV0IHRoZSB0aHJlYWRpbmcgb24gdGhlc2UgaXMgCm9mZiBbMV0uCgpBbGwgdGhlIGNvcHly
aWdodHMgc2hvdWxkIGJlIDIwMjMgb25seSwgbm90IDIwMTgtMjAyMy4KClRoZXJlJ3MgYSB0eXBv
IG9uIHBhdGNoIDI6CldBUk5JTkc6ICdhcnJhcnknIG1heSBiZSBtaXNzcGVsbGVkIC0gcGVyaGFw
cyAnYXJyYXknPwoKVGhhbmtzLApUb255CgpbMV0gCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2lu
dGVsLXdpcmVkLWxhbi8yMDIzMDYwNTA1NDY0MS4yODY1MTQyLTEtanVuZmVuZy5ndW9AaW50ZWwu
Y29tL1QvI3QKCj4gSnVuZmVuZyBHdW8gKDE1KToKPiAgICBpY2U6IGFkZCBwYXJzZXIgY3JlYXRl
IGFuZCBkZXN0cm95IHNrZWxldG9uCj4gICAgaWNlOiBpbml0IGltZW0gdGFibGUgZm9yIHBhcnNl
cgo+ICAgIGljZTogaW5pdCBtZXRhaW5pdCB0YWJsZSBmb3IgcGFyc2VyCj4gICAgaWNlOiBpbml0
IHBhcnNlIGdyYXBoIGNhbSB0YWJsZXMgZm9yIHBhcnNlcgo+ICAgIGljZTogaW5pdCBib29zdCB0
Y2FtIGFuZCBsYWJlbCB0YWJsZXMgZm9yIHBhcnNlcgo+ICAgIGljZTogaW5pdCBwdHlwZSBtYXJr
ZXIgdGNhbSB0YWJsZSBmb3IgcGFyc2VyCj4gICAgaWNlOiBpbml0IG1hcmtlciBhbmQgcHJvdG9j
b2wgZ3JvdXAgdGFibGVzIGZvciBwYXJzZXIKPiAgICBpY2U6IGluaXQgZmxhZyByZWRpcmVjdCB0
YWJsZSBmb3IgcGFyc2VyCj4gICAgaWNlOiBpbml0IFhMVCBrZXkgYnVpbGRlciBmb3IgcGFyc2Vy
Cj4gICAgaWNlOiBhZGQgcGFyc2VyIHJ1bnRpbWUgc2tlbGV0b24KPiAgICBpY2U6IGFkZCBpbnRl
cm5hbCBoZWxwIGZ1bmN0aW9ucwo+ICAgIGljZTogYWRkIHBhcnNlciBleGVjdXRpb24gbWFpbiBs
b29wCj4gICAgaWNlOiBzdXBwb3J0IGRvdWJsZSB2bGFuIG1vZGUgY29uZmlndXJlIGZvciBwYXJz
ZXIKPiAgICBpY2U6IGFkZCB0dW5uZWwgcG9ydCBzdXBwb3J0IGZvciBwYXJzZXIKPiAgICBpY2U6
IGFkZCBBUEkgZm9yIHBhcnNlciBwcm9maWxlIGluaXRpYWxpemF0aW9uCj4gCj4gICBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvTWFrZWZpbGUgICAgICAgfCAgMTEgKwo+ICAgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9ic3RfdGNhbS5jIHwgMzEzICsrKysrKysKPiAg
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfYnN0X3RjYW0uaCB8ICA1MiArKwo+
ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uaCAgIHwgICA0ICsK
PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZGRwLmMgICAgICB8ICAxMCAr
LQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kZHAuaCAgICAgIHwgIDE0
ICsKPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZmxnX3JkLmMgICB8ICA3
MyArKwo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9mbGdfcmQuaCAgIHwg
IDI0ICsKPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfaW1lbS5jICAgICB8
IDI3OSArKysrKysKPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfaW1lbS5o
ICAgICB8IDIxNyArKysrKwo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9t
ZXRhaW5pdC5jIHwgMTgxICsrKysKPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfbWV0YWluaXQuaCB8IDEwNCArKysKPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfbWtfZ3JwLmMgICB8ICA1MSArCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX21rX2dycC5oICAgfCAgMTcgKwo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9wYXJzZXIuYyAgIHwgNTYyICsrKysrKysrKysrCj4gICBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX3BhcnNlci5oICAgfCAxNDAgKysrCj4gICAuLi4vbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfcGFyc2VyX3J0LmMgICAgfCA4NzcgKysrKysrKysrKysrKysrKysr
Cj4gICAuLi4vbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcGFyc2VyX3J0LmggICAgfCAgNzMg
KysKPiAgIC4uLi9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wYXJzZXJfdXRpbC5oICB8ICAz
NyArCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3BnX2NhbS5jICAgfCAz
OTcgKysrKysrKysKPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcGdfY2Ft
LmggICB8IDE0MiArKysKPiAgIC4uLi9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wcm90b19n
cnAuYyAgICB8ICA5MCArKwo+ICAgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3Byb3Rv
X2dycC5oICAgIHwgIDMxICsKPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
cHR5cGVfbWsuYyB8ICA3MyArKwo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9wdHlwZV9tay5oIHwgIDIzICsKPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfdG1hdGNoLmggICB8ICA0MCArCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX3R5cGUuaCAgICAgfCAgIDEgKwo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV94bHRfa2IuYyAgIHwgMjYyICsrKysrKwo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV94bHRfa2IuaCAgIHwgIDgwICsrCj4gICAyOSBmaWxlcyBjaGFuZ2VkLCA0MTcz
IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9ic3RfdGNhbS5jCj4gICBjcmVhdGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9ic3RfdGNhbS5oCj4g
ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9m
bGdfcmQuYwo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfZmxnX3JkLmgKPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX2ltZW0uYwo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfaW1lbS5oCj4gICBjcmVhdGUgbW9kZSAxMDA2NDQg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tZXRhaW5pdC5jCj4gICBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tZXRhaW5pdC5o
Cj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9ta19ncnAuYwo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfbWtfZ3JwLmgKPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX3BhcnNlci5jCj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wYXJzZXIuaAo+ICAgY3JlYXRlIG1vZGUg
MTAwNjQ0IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcGFyc2VyX3J0LmMKPiAg
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3Bh
cnNlcl9ydC5oCj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9wYXJzZXJfdXRpbC5oCj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wZ19jYW0uYwo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcGdfY2FtLmgKPiAgIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3Byb3RvX2dycC5j
Cj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9wcm90b19ncnAuaAo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfcHR5cGVfbWsuYwo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHR5cGVfbWsuaAo+ICAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdG1hdGNoLmgKPiAgIGNyZWF0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3hsdF9rYi5j
Cj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV94bHRfa2IuaAo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdAo+IEludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCj4gaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
