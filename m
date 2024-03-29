Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A33A389257C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Mar 2024 21:47:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 30CB540BAB;
	Fri, 29 Mar 2024 20:47:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5xW1EolUkm2T; Fri, 29 Mar 2024 20:46:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 70A0140A15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711745219;
	bh=CX2vHtBbI9qqg/q0TRV1qETrkmc07CDFL0CyPCDq3J0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JuTe/oN/W/9FEBw3dJA/5jaFkoNz0x6CJK/kbARKVIBedLiE16cn30vLrpfZo2Bkh
	 wBt+m6vO3xF9z5XnjM0gOtKB8Wkjo0k4mKqfkvi7BaFefyEcoJ09cUUjD6tT1/LvcH
	 y88pkJB3wwea5RXRy5bVIED6dC9FSS58yk2f93MjPDStPz1zndkg1jy/V2DrPWAyh/
	 M4EdUlr96b2Czox/jjor4hDv6tyDJqQuE5EqtX3Web6BKJdKJULKAXQ3PfoBqPlknE
	 08VBWG0JtjSHPwSTaK95vJgY3rQZTKGwhk2WT1r+nHbO7/m50+HCB2lXmNy6bBE+LQ
	 Eto6yam5AXVxQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 70A0140A15;
	Fri, 29 Mar 2024 20:46:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BD1871BF681
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 20:46:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B5F048246F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 20:46:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qSRiVpaDTt1m for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Mar 2024 20:46:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 60C3482446
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 60C3482446
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 60C3482446
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 20:46:51 +0000 (UTC)
X-CSE-ConnectionGUID: bPwoc/fITV66lKGI3nLYow==
X-CSE-MsgGUID: /wEP4vwARQqBHo795erOzA==
X-IronPort-AV: E=McAfee;i="6600,9927,11028"; a="7062626"
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; 
   d="scan'208";a="7062626"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 13:46:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; d="scan'208";a="17056286"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Mar 2024 13:46:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 29 Mar 2024 13:46:49 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 29 Mar 2024 13:46:49 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 29 Mar 2024 13:46:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TOw77p6bDHulD1sUgk2apPvNvQqlPbVPNUvZeS+JWW4Pp3CBgVmxzUnLXgAFuhWtTYv/kVmT5pg8PJyTKaGycVEViXIkEugHGxeOOXFGqO1vapRpUT4Dj1vGwBmN/Yqe/W8Y18XXAKKyG0KNrFNebRQyymgH1txZy+PgjLwayQYCNKNuH+UGG01L6pynkCDDnfnh2yUiGRmYymmmqp/sXZy/ngTF5gxymAwuvI7i15gzxi7vk1kYfGO+cQQ5GbgK4DqrzlqE3E49ZvQHnkdr1Lqt44+75PEzhiVXv9kc8A6Fl2VrdiYXl1p2WZxjf33icDEEZIBMxkJevBzQZFwUMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CX2vHtBbI9qqg/q0TRV1qETrkmc07CDFL0CyPCDq3J0=;
 b=mGrMNqv4ysPSmgN7wEYqNcTNEc+pI7GcyR07j3ryYrqEXiRIQwyamSmabnE/RT6N6oIO/7QQec9dJ/XFd8iLkn2Eep5kro7b+x152dYLzPkEWSDnGjYPb5iwmGzlntyAK7gY7DOWDMg0gwwIWSpcilSl9XiZY5+exJUvd1YFG2DQkVSYpxKpjpNPH7281JVvR6A/nHEQeNcvCtViVEcWgzcUDrE6hcDHJ7+fSHRv+ghCWcDIWcKtB9ZdQXchcVzTwq09gqWsU500XVfd+TrohUI5W7BQPE3zf0nBIM9gvT6IImBoC1548VeFov+DF42opgsJc5gt+PjXZgf5sGIOtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by DS0PR11MB7190.namprd11.prod.outlook.com (2603:10b6:8:132::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.40; Fri, 29 Mar
 2024 20:46:47 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308%4]) with mapi id 15.20.7409.031; Fri, 29 Mar 2024
 20:46:47 +0000
Message-ID: <ba809a2a-3850-27ab-5836-f6705150f0a4@intel.com>
Date: Fri, 29 Mar 2024 13:46:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240327132543.15923-1-mateusz.polchlopek@intel.com>
 <20240327132543.15923-10-mateusz.polchlopek@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240327132543.15923-10-mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0123.namprd04.prod.outlook.com
 (2603:10b6:303:84::8) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DS0PR11MB7190:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aQR7gzJpvGbGWdczuueAUgY27xwKkg8DeTNUHRshyA2aJ/iufvOUrB6jU6Lmww/7ESr1N3BFc0+sGAdU1i8yWA1b1ggIEctXakPezyf6roOdskSUtpbdfMH5GznesFrqjiBCqK4lo/WtxhKxA/h+t/oemBxZ1m4tixQDVlcbPAV+bpweEL6Pht2paUox2YuYZdJ63mLB+RVHsPQ66tz8x5hBjKd6R5LRsFxzfGY/m8d/7RBoA1KFetcsqPGHTE4VGpRz1r8px6jZFyXObHGKQfJnD2Cus7OdIUeAyyvJod2hGJwgKReJW9sDTu2iuS9YR06zqS6221E1cEcyhCGAU16thBDo1r2TZHH+YGLepE7A9YDOuZ1QG0Q7mAfysvjNYxQUHfucbAX+BPz+VRVqdnxm8Z4sXJYaWSFzcmNQ8DXMlpRziV3Q2iDtoJTdCTC7qFwODFsycNkK+M7qDeVZGE/ZFjCYgLjkNGsNSg5rvorA1Ok8VtBeTWVZY2UGHH5kjbd+qd/QvgyYsqnzyjTPGbA5ESkTs47ObSDCy+vR0m3WuuRDoy18o6LgjJMpozSEYvlKYjApDc8W2RyHpSC1SYji5/Pd1F9EblK0MW2UDWJcRU9i1gv/XlfcPaR/wLYi9B8d9z6c5QegkNs5/alZ+w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZmJVZVMxZ0JSNDAwR0tEMms4WmhTNXMvSUlGM3RRWGdhQ0FSZHlLbUNINTJ0?=
 =?utf-8?B?QjdiU0NQMVFGRVlkOEFpbW5FWkM0dEYrMVVlT1NIRThtd3o4UWZlT1Zrd0g2?=
 =?utf-8?B?eGxUQ3NQby9zQzNqYmh2UU1HRzlXS1dsUDdjdkRENXNEM2xCTkdObEpXdHFz?=
 =?utf-8?B?aFNxSFpvY0hlakRUZFFaNktQaWl5R3V4QlREQjhwVnE3Slhkci82WlErcWdE?=
 =?utf-8?B?RW8yRUhqNWJwclBtWEt2YzZySEhadHdib0JEcGFHNUJKWDh4dFBhU044eE5J?=
 =?utf-8?B?ZFB2Q0VMUDFEM3d0T3VYSmJMTStLSDNJQkxWYW1oYmpJK1NMNzNmLy9pSGxl?=
 =?utf-8?B?WUFKQ1JQZWtrU1FNeExIMFJZU3FaMlo4ZHlUNkNxSGpZZk5QVFArUjRMQWRB?=
 =?utf-8?B?cm43c0hheFdXZ3FsZmt5ZUYySGN0MlAxblJwQ1lWQldkRlllZTgySzFZQ1Iw?=
 =?utf-8?B?MktsZ2pMbWFmRzNYV1k0cWdKNm9jTzVCZktqL3NBdjFqQmVDbUZVcDIwdWZQ?=
 =?utf-8?B?dEhTdWNvdjNpUlQrUEF4dEY2WC9wRGx5NVRqSEJFbU1BNTlGL2Q0TkpSRUpZ?=
 =?utf-8?B?c3grVlNxbGxNMDhqWWd3Mkg3bFlnTDJCVWpJNVo1QXJSTFd2QnF3WVVLeHJV?=
 =?utf-8?B?ZEg4YTZaYjlESmE3L3FGN2k3STNaV3FmbHhjT3o3NDRrMFJUbWFqelk3Y1FP?=
 =?utf-8?B?ZW9JVlM2YytIYWZJQXl0azlyZnNLUVRPT2o1Vm1VN0ZIY0dtYzd4RmdETGFr?=
 =?utf-8?B?djJzaUdnR0d5dG5TNmplayszM3p0RXEvMzJ4TmFYdEZzT2MyOU4rNjc3WnpN?=
 =?utf-8?B?dGZLNVZVSnBpQ21qTVhwdElCMFFxNE9GcTBuTFJ2dTB0cWpFRFB1U00yNXNz?=
 =?utf-8?B?TzJjM0dOZjU4aWhyNmRVKzM5WllibFBtdWFJcHNjVHdSSlhKR1VHckdtck9X?=
 =?utf-8?B?OUdIakk2blZ6dzViTDNaZVlJb2VTcUF6RXBtVVYxZ2poYit1VDRKb0w5TnFG?=
 =?utf-8?B?LzZDaTlBbnpzeGc4U3lSRnRnZURub2NNYno3Y2M0YzJ3M0pET3NxZU5mNnBD?=
 =?utf-8?B?cTUvSUh3cFJlbDRVUEJGN2Y2MUt4cGVITjZySFNWdXlsWHBtTEJaeHFBbGNo?=
 =?utf-8?B?aDNwMWhmMDgzL2xMUTdNclZzdjJLSVpYMzRzamdVM0c0bkpudlNGbTlKVmhs?=
 =?utf-8?B?TDZEd3gvZEo5ODZyM1o2Vm5XTE5BcDIwcmhzdVhTME83WFJaOG1TVVhOb0VU?=
 =?utf-8?B?bHpjSkFpNlF5YTRveHdDWmdXMHlOTnZSWFFlNnk0UjRTSVNTK2p5ZVdUVHl4?=
 =?utf-8?B?aERwRjdvYkFoOGNyVktEUUxWajJQWnUrU00wbzk2cTl0ZVBPSzh2a0ZCWkw3?=
 =?utf-8?B?czBFbUoxNjJpeTU1T3dML2dtMmdhd2l5QjB4T2dLYkE0YmJtdkJoSGdlcWdV?=
 =?utf-8?B?NlhodzZ4OFNsdjFUeHVtZnRjSElueVp6cktQeVB6ZFBDbi9JVW5kYXhFMEZL?=
 =?utf-8?B?T0JxemwxdE1ScmFuNU9JMXRuZ2trMmdZdXoxRTI5WW9aTlQvQjF5RXBwOHM5?=
 =?utf-8?B?RUhNMWl4aklVbndBYkNhZlVoem8wZWMxczluU3gydXZIdDdKQUVna2hqN3Vj?=
 =?utf-8?B?Tld2U0pGY0FYWnBqMW9ZcU15ajhWd1pPZ2I5VSswSVZYRW8xSFN6T29SY255?=
 =?utf-8?B?dXNRZVZhTTFCejJQNGJKWkFJazdGN1h5L3FSQldISUx6K0hkbUR3emUxUHIz?=
 =?utf-8?B?UUViNUtBTk1WaUNmYngxdEZMQytTdXdHczFGMlpWUTdQYkFwRk9Pb25mR05t?=
 =?utf-8?B?ZitaYlpZRFdleCt3cDkvRDRodCsrKzQzUUFJQytCeVNCWlFqNWZCOS8wdWk1?=
 =?utf-8?B?dGhrSEI2R3FEQ3FkYkVYMWc2SS85akwwV3FVbFRvcXpwSndhWk0yVXpaUk1W?=
 =?utf-8?B?MEdVSVk4Q29PUGl5TFBKOUV5SGllWW1hd0N5clhTZTQ1LzdNbzBiempKYkNy?=
 =?utf-8?B?UnFFTXFQWHZUeG9nNTdGSG5XZlFlRjhJYSttVWpKVUkxRDFHSnlWNFdTRGhq?=
 =?utf-8?B?WTNST0cvRFowcHhKZFM1T0RoZG5Oak51WDN2cWg5NEwyRDJEOEZFYzUvcGRD?=
 =?utf-8?B?TzRWbVVneWxodm5wZFpDc3BiUTJBRUJRUTBIYXhmc0YyMFVwY1FKVmdBQWNY?=
 =?utf-8?B?SXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 05c0ce0d-669b-4350-f9cc-08dc50315a0d
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2024 20:46:47.6218 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 42PuwosqQtAMyTcy9wYJ3OAdeZ4COjreAxG4pfD9oN7Sa/IJDQ9lwYU5Q7qepPoIElrYpoeP0FqpOWoLl726lzF8sCRUO5BJGjXOGP94JRM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7190
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711745215; x=1743281215;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=T0W/vcVcQMWX87w1VyY2NuTB5lHo0SBiBl0eXikknTo=;
 b=C8bIZhiynNEcs58xwf4HnKavY8p+v0L+gqW7BG8GC0RfmWSUpYM8ctgk
 XDvz0TVxSOiRaB4mZNSwxe0y7on440iSYsWx/T5NOOS2ZlySoCPWCtKOA
 EgU8ZwWIaSJPG8f1zDOm38Y7xu1JEBwuJ0cb2UMTr+ZyPCbDZH5SSNrVN
 5d5zvNGtnI1MnaX2UTAWHOL0nfvxj1YP9ejgGXCT0F39K09XmGdKzxc8i
 sf1bK1T0VQ05nE474CXzrOVgQ/BteK5LcVObdp+nEDqmNaf4W0JYdcpQq
 c9MGHg5jgjfaHY/0YpNB6Nrgi5uEqEJksPvDlVzknyH7uPwfteS8b+/jp
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=C8bIZhiy
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 09/12] iavf: refactor
 iavf_clean_rx_irq to support legacy and flex descriptors
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Wojciech Drewek <wojciech.drewek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/27/2024 6:25 AM, Mateusz Polchlopek wrote:

...

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> index b71484c87a84..c9c4f255bc8b 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c

...

>   /**
> - * iavf_rx_checksum - Indicate in skb if hw indicated a good cksum
> + * iavf_rx_csum - Indicate in skb if hw indicated a good checksum
>    * @vsi: the VSI we care about
>    * @skb: skb currently being received and modified
> - * @rx_desc: the receive descriptor
> + * @ptype: decoded ptype information
> + * @csum_bits: decoded Rx descriptor information
>    **/
> -static void iavf_rx_checksum(struct iavf_vsi *vsi,
> -			     struct sk_buff *skb,
> -			     union iavf_rx_desc *rx_desc)
> +static inline void iavf_rx_csum(struct iavf_vsi *vsi, struct sk_buff *skb,

Please don't use 'inline' in c files. More usages throughout this patch 
as well.

> +				struct iavf_rx_ptype_decoded *ptype,
> +				struct iavf_rx_csum_decoded *csum_bits)
>   {
