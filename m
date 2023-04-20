Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4714C6E9B5F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Apr 2023 20:15:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B954741F8A;
	Thu, 20 Apr 2023 18:15:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B954741F8A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682014501;
	bh=7mD8RaFbJ6xBrBglvU7W+OVzcR1vkQyZWoktNHBu8Zk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6XcrohFv57nS0KYVNNeJ9ckjRJpksYVuCUbHBEztNky4aHfjXmVX4Ue/JBmWrxiF6
	 IkS983ZnmebOJK4rKvxAWDdONpu7jC6/NPQuruZIMq50EI3hFPlWpYznnN3vBAfWH3
	 GnE7bY2nHmx6i2dCCzcVZcLsSL61GWHBg2los1R9mnobBn5fjkqx1/FAbZhNsx+yKT
	 uV1ft+5AFVHbJdRAzeVzuN2GHydzjtiSQEqKsOcisHUlFJiBaqicIXQiPbjhUmWYEQ
	 ulVRUcu5Hi5fQE2PKUjF1cirDj0ud1CYYe49T1IrbUQSnR8m37PvbgdBlxR/BfTpId
	 X7XzpMfZr617Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZCO0UQwtSfh0; Thu, 20 Apr 2023 18:15:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4DB4E41ECB;
	Thu, 20 Apr 2023 18:15:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4DB4E41ECB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B9D21BF38D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 18:14:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F414D8211D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 18:14:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F414D8211D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nf1L9__OKhSC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Apr 2023 18:14:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D71282117
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0D71282117
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 18:14:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="373730672"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="373730672"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 11:13:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="1021656248"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="1021656248"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 20 Apr 2023 11:13:16 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 11:13:16 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 11:13:15 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 20 Apr 2023 11:13:15 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 20 Apr 2023 11:13:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fohKlBCdKoN3CkGVJBGPW76rdAPZLsLDY10x3gZ5psNDk6RSdj3wOxhMIZRwl+jig3/H3q82Uwj3SfACtSX671d0E9dJgc/dwKPAKmCPdr8A2q9mbWKVpH5OmoS2opXkvqirpZf74a5Xtz3i3pQ1uPWkHypRCrxUIti4T40mV/AhpX8he0QQBUhx8cO++PFQeJ2KgPy7ggROZCN5Syp8wtqmmcCeCrKfwVZYVk05t/BKLTmjBXQhez7afVtPNLJU85bHwdCNtVxRC57Xxvngl4PlmAlhLmowEaCLVVmT5J0vLlg+dJN4+jtdtw/RBSRcCjr+Yb7cIuJL8HwURoT6MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iIpDa+xj2ILGL1f1Xv52TrxqmCw2Q/GyARM5BeVjsuQ=;
 b=DOulFX9GSI9rfsQk4NPa42oTLw/NO7AYCeJtr5WHxomVitrkGWnM6RJKSwmfern0KuHX7YGBcjxgoTIAOdvuHP0zQrfhX1twTGYD7H/d8qjl9reJvLJJdqXV9+i+G5sUEbAa8rEXplOyDvIkb6yOdCrf+pLVzLOpVbZuBpbgTR6rUZHlL7b8V4KdDwAR1xSIlAy66WvAfmfmcYr+WSoluuAL4vu/q7fO6+UnOL3mAcovlh7T0wDmGd8nHFmkESO8Fza7qaSE90/GUyvLlDX+UMy0nHJWGubiwtq+wF9dlHpWpYYsaAa6DI/U6ZRYjCBHjM0qVZzCx71/q/4JGRRehQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4538.namprd11.prod.outlook.com (2603:10b6:303:57::12)
 by BN9PR11MB5436.namprd11.prod.outlook.com (2603:10b6:408:101::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Thu, 20 Apr
 2023 18:13:13 +0000
Received: from MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::aae6:d608:6b8d:977e]) by MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::aae6:d608:6b8d:977e%4]) with mapi id 15.20.6319.022; Thu, 20 Apr 2023
 18:13:12 +0000
Message-ID: <4640cb7c-faac-d548-b0dd-4519396e9f25@intel.com>
Date: Thu, 20 Apr 2023 11:13:09 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
To: Leon Romanovsky <leon@kernel.org>, Pavan Kumar Linga
 <pavan.kumar.linga@intel.com>
References: <20230411011354.2619359-1-pavan.kumar.linga@intel.com>
 <20230411011354.2619359-3-pavan.kumar.linga@intel.com>
 <20230411123653.GW182481@unreal>
 <b6ed7b0b-9262-3578-1d88-4c848d1aea82@intel.com>
In-Reply-To: <b6ed7b0b-9262-3578-1d88-4c848d1aea82@intel.com>
X-ClientProxiedBy: SJ0PR13CA0031.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::6) To MW3PR11MB4538.namprd11.prod.outlook.com
 (2603:10b6:303:57::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4538:EE_|BN9PR11MB5436:EE_
X-MS-Office365-Filtering-Correlation-Id: 4b02e265-aa96-43bb-d6be-08db41cae762
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b0sfhS+tatUpxk/XJ0J5cVDjpuO3GZUPE9fvJ+4wXu134Mcfxht2z6hFkkm03+hzX2mZ0IFAjJYD0AU7osvJM0TBASO5xJxXnglWBMQbQ4BDwTd531c6G7nqo9ex0h029sn9Pusbde1YQmihbkk3Pio4geizehq/2qtz2uO040ezgiERLklSi117g3jEIXPz4kSjfbf9+Nm05BssshLlycDVRCiSEyR4udoiU/yagVqVLhrsvkmi6D3EKJDFvdy8cHKzgmLNfe9IWXxYnKTIc0hRTO9t3g/sQi7ZcZmq/upZDdtjjPZot+fKEL4Y+DMIXVBFm3MJk2FqUf8nccw62BndqJEYIffYWJ9rttzXllFv7Y93H5t1gReaU+/txHvdGiBuqXtMtx/t8q7i22GrHot3F7QqL/pedQ5C7JF5Vj0fscJ5LRKyHJ1FIrRHL0eLm8tXivKJQmi4/RT+WbVCuugNstghGzWiTh3Z5gqEyW5pTUHDoCT9065YxhaeFFgYIkaCTRp99HV/t9IhMp6PBFaGyrNLQwUIM9FPGOHRK5N+C1ZuwD5WwitSEU4EjVOVEe7BcfiKiZ4+loiMUuBnEVbqnL8qK+BVxJwWKYEEW/zhAemH4GllLc9p3oWodbMd48PyyoUbCCFPByb0yAMyrQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4538.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(366004)(376002)(396003)(39860400002)(451199021)(31686004)(82960400001)(36756003)(4326008)(54906003)(6636002)(110136005)(316002)(66946007)(66556008)(66476007)(186003)(53546011)(6506007)(6512007)(26005)(2616005)(83380400001)(31696002)(38100700002)(8676002)(41300700001)(5660300002)(6666004)(478600001)(8936002)(6486002)(2906002)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RTBteHlMd3JCVEtGZzBGYnJhWFhDeTNlRi9sLzkrZG5hd2VQbDNyVGlNVzZr?=
 =?utf-8?B?c3NZbUlWbXJhUGo0dHZoN0VEVW8ydnNGQ2lOWDBvbHVuN0gwemZtbnFxU2Vv?=
 =?utf-8?B?eHk2N2FGRzhEOGpGeHdmOHdGM28vd2VzVyt0a1QwSkdybzZWdkx1Z1FXQ2NL?=
 =?utf-8?B?RnFPK2VDZDZtcEw4N1ZEWGN3Rk9nYUV3SEtwVzBHU0V4ejNHc3pZZVg1TUkw?=
 =?utf-8?B?WUpudnF0NGZBaEE2TTk2LzhCUjQrOHBoaWFkVGlpVVhsQzhxdFVYVzZiL2NG?=
 =?utf-8?B?RERLdXRHSXJVY1krMlF3dWdaV2dPOE9IUDdhOFVUek8rc0dFSlBjWFljd21K?=
 =?utf-8?B?N3ZxM2ZoVlZGS1M1VDBhaC9mNXlvaEdCWWswNVBqWUxad05UUGdYNExtZGJ0?=
 =?utf-8?B?R0c5RWpHdURuSFl2L3FJanlORktxd0dDS1lWZHhGcmx6a3pDTHY1ZFNEWGhI?=
 =?utf-8?B?ZHBoQ3Y3b0VRUGZ3YTZIV0IzODFtbGZvMjQzR0dOU2pBaG8wR1dSSkZJR0JM?=
 =?utf-8?B?bWFEc3lldWFzLzdFSHpzK1p2V3ptS3QzMkMrRDF0NmJWVGxtTXV2YmFCcnpx?=
 =?utf-8?B?SXlDRC9FUFFOYWY4UTNFakxMU0YrNjcrZGpBKzZrWGlZSFVVZXIwaU90OUI2?=
 =?utf-8?B?OE5KVkVzNkpWejI2Zldpa3R3SzZVM3Exdko5a3hpMGZ1aUI3OUZ6dEN4RnJl?=
 =?utf-8?B?aDhMVWJFRTRIUkVIdVZrQy9JRGg4aThMSTRMTnpMdHRHOGtaQkY4bTVUM0U5?=
 =?utf-8?B?Qlc4VmJwMUZ1dnFyS2RCeVpKQjU2QXBmN2NmWjBzVVova3UxbjBvdGlmVGdK?=
 =?utf-8?B?am4rYmJaY0Z2bVIyem82OTBDbkl3Q3Z6Qkd0b3lpNjhLd0c1bkNIQ0UybHkw?=
 =?utf-8?B?QnRjUlhRdmJuTm0yRFRhTnhsUTR4TExvODdUYUJidm9XUlY4Wi9zL3RIcWZS?=
 =?utf-8?B?Um43d1ZrZFhCeEVQditKcjlkUm5tVm5lTzJteURJUDIrTTFQYTdvODZwd2o1?=
 =?utf-8?B?Q1dtS1lmWTRTWEJIR2NoUjNvRjBSeUl3UWpqbi9BdlExaVRqZXk3T3ZkeTY1?=
 =?utf-8?B?UTg5NjRUTGFmajNjTWVZaGI2RjV3L05LL28wbjdvWmx1R2gxVnN0a2ZuVHZ1?=
 =?utf-8?B?bFZQRVQ1Sjg5NVFlN0hHUzRVSGd6UEd4TFJaZm5xb0hBMHJKVE8yMmRJV3hN?=
 =?utf-8?B?dWxLL0c3SXpHR3Y1KzJIY1pWd0pDU0hLYnZNQzAvL2daelNvc3k5UnRidEdO?=
 =?utf-8?B?SXZkL1JxellDN0sraVZxZWVLa2ROVk5xeldyTFNxcElYU2Y0M1RrVnJnek0v?=
 =?utf-8?B?T2F3eHprS2IwR3h4SEJtZEg0bmVFSFArbVBsdHhQSzFRd1R6NzdENGNnNlQ5?=
 =?utf-8?B?YnRDVm9mTitDYWRaTWI5TVBiUWxRd3d4ZEZqKzdwWlFsNTNTTlE4Zmp6cWFD?=
 =?utf-8?B?NEYzbnFaUUgxZko5VzFyK1Y4aUhJYjlabGYraXR4R1crcGtSeE9KTnVDWTlN?=
 =?utf-8?B?S0FzMGg0V1lJRHNWRXdzajYrWUF2aVc3dGlBSVNJTlpGeXEvNXZWdTd1bTc0?=
 =?utf-8?B?QmpmL25pcllsd3BoMG11Y1QrRFlQVGhjKzY3b2VlR0N5NTdSQXEyNlNRYWgr?=
 =?utf-8?B?U05GRXcwQW50ZHZPTHlFNlVhWVVJL3BnOUM2T0haRmhYL04xN1ZmRExQYk5x?=
 =?utf-8?B?c21pUSsxRFEvMGp2NTB1YmNMenBvM3c5NjYxeEZKQk5qZlBreVlBcGxnbnUx?=
 =?utf-8?B?VEpocWtxYTg3WUVaei9sbUtOZ3I4SmdiQ0hvTm1vNFhmTHRnQjA3T0FpQ2FH?=
 =?utf-8?B?RVpEbGh6S0VUdUt0ZUgySHZ6WVRCOFQ5ZWtiam5zd1B5WjZ4dDhyVXo1d2dQ?=
 =?utf-8?B?Vi9hdUhnczYvaEdaSUtIOC8zZUhtN2xJOW1qUnpzL2xKazcwclZlWWNpOU8r?=
 =?utf-8?B?ZVhCQi94V3Nwa3VrKzU1aU1hT1ZQMHhEZWkwZkZHOWx2Nk5YS3EwRWJheE1t?=
 =?utf-8?B?aVkyMVRjK2J6YlAvTzZjWFlwaTMyeEhOZDBxN01YbG1FbGJ4c2x3MDlyaFRD?=
 =?utf-8?B?OFhmV2RIRjFyK2NnN01RYkc2a3VKTFZpV2svYnExeWNBTHFTNmpJaWVGTWdG?=
 =?utf-8?B?NzY1Qjg0TUl3YTNFdlpyUkh1WGczWTVWMXl5bXhyVGF2bE9yWUZXQ1kraG8z?=
 =?utf-8?B?aEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b02e265-aa96-43bb-d6be-08db41cae762
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2023 18:13:12.6799 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I5tSeHBIb0CB/ABbFHPLBmEN1Werbsp4iIYYFqn8K8e4DBg15mZQfNGxUFWoaLd1vRbnHhSN8rnWS/tz+4LqCsMe3hKRpKfClCAyD37eZxY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5436
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682014494; x=1713550494;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IoWoxJj/UKstxkTA/+El0/4QNo6C8CQREXgu8Kt4Fpc=;
 b=WP+/LXgU/dY5nmpGg0EZfb/VizQfG6+kBxp8nqMfy1ne9jhJB6oIooxI
 NOIPGynIqc5Q5lC3y7yxHEOPnp6/lsVhxqCxhX7UvH9UILfioJ0Zv+RuQ
 1U0ZhGk7N/HTfXRvKR8l3794jzsRzo/quZvBuoOGM8fphUWjamAGm3r5o
 D8TGrc9mmNKEK+zgZ1T8d4aJasyqU/CO4As5yi4rgb9Z5unHQizEls6uB
 vbT3odcFSdTmzGCXZdgHd/DfsqHKAPkllQn3t3DTkI8dSwVS+akOjlJI2
 mP9jQecEcRxtyUascku/7n09cWQGc4I5qHJpG/psJ9Ujol+uoiCXtCPKQ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WP+/LXgU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 02/15] idpf: add module
 register and probe functionality
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
Cc: willemb@google.com, decot@google.com,
 Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 Phani Burra <phani.r.burra@intel.com>, pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA0LzEyLzIwMjMgNDoxMCBQTSwgVGFudGlsb3YsIEVtaWwgUyB3cm90ZToKPiAKPiAKPiBP
biA0LzExLzIwMjMgNTozNiBBTSwgTGVvbiBSb21hbm92c2t5IHdyb3RlOgo+PiBPbiBNb24sIEFw
ciAxMCwgMjAyMyBhdCAwNjoxMzo0MVBNIC0wNzAwLCBQYXZhbiBLdW1hciBMaW5nYSB3cm90ZToK
Pj4+IEZyb206IFBoYW5pIEJ1cnJhIDxwaGFuaS5yLmJ1cnJhQGludGVsLmNvbT4KPj4+Cj4+PiBB
ZGQgdGhlIHJlcXVpcmVkIHN1cHBvcnQgdG8gcmVnaXN0ZXIgSURQRiBQQ0kgZHJpdmVyLCBhcyB3
ZWxsIGFzCj4+PiBwcm9iZSBhbmQgcmVtb3ZlIGNhbGwgYmFja3MuIEVuYWJsZSB0aGUgUENJIGRl
dmljZSBhbmQgcmVxdWVzdAo+Pj4gdGhlIGtlcm5lbCB0byByZXNlcnZlIHRoZSBtZW1vcnkgcmVz
b3VyY2VzIHRoYXQgd2lsbCBiZSB1c2VkIGJ5IHRoZQo+Pj4gZHJpdmVyLiBGaW5hbGx5IG1hcCB0
aGUgQkFSMCBhZGRyZXNzIHNwYWNlLgo+Pj4KPj4+IFBDSSBJRHMgdGFibGUgaXMgaW50ZW50aW9u
YWxseSBsZWZ0IGJsYW5rIHRvIHByZXZlbnQgdGhlIGtlcm5lbCBmcm9tCj4+PiBwcm9iaW5nIHRo
ZSBkZXZpY2Ugd2l0aCB0aGUgaW5jb21wbGV0ZSBkcml2ZXIuIEl0IHdpbGwgYmUgYWRkZWQKPj4+
IGluIHRoZSBsYXN0IHBhdGNoIG9mIHRoZSBzZXJpZXMuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTog
UGhhbmkgQnVycmEgPHBoYW5pLnIuYnVycmFAaW50ZWwuY29tPgo+Pj4gQ28tZGV2ZWxvcGVkLWJ5
OiBBbGFuIEJyYWR5IDxhbGFuLmJyYWR5QGludGVsLmNvbT4KPj4+IFNpZ25lZC1vZmYtYnk6IEFs
YW4gQnJhZHkgPGFsYW4uYnJhZHlAaW50ZWwuY29tPgo+Pj4gQ28tZGV2ZWxvcGVkLWJ5OiBNYWRo
dSBDaGl0dGltIDxtYWRodS5jaGl0dGltQGludGVsLmNvbT4KPj4+IFNpZ25lZC1vZmYtYnk6IE1h
ZGh1IENoaXR0aW0gPG1hZGh1LmNoaXR0aW1AaW50ZWwuY29tPgo+Pj4gQ28tZGV2ZWxvcGVkLWJ5
OiBTaGFpbGVuZHJhIEJoYXRuYWdhciA8c2hhaWxlbmRyYS5iaGF0bmFnYXJAaW50ZWwuY29tPgo+
Pj4gU2lnbmVkLW9mZi1ieTogU2hhaWxlbmRyYSBCaGF0bmFnYXIgPHNoYWlsZW5kcmEuYmhhdG5h
Z2FyQGludGVsLmNvbT4KPj4+IENvLWRldmVsb3BlZC1ieTogUGF2YW4gS3VtYXIgTGluZ2EgPHBh
dmFuLmt1bWFyLmxpbmdhQGludGVsLmNvbT4KPj4+IFNpZ25lZC1vZmYtYnk6IFBhdmFuIEt1bWFy
IExpbmdhIDxwYXZhbi5rdW1hci5saW5nYUBpbnRlbC5jb20+Cj4+PiBSZXZpZXdlZC1ieTogU3Jp
ZGhhciBTYW11ZHJhbGEgPHNyaWRoYXIuc2FtdWRyYWxhQGludGVsLmNvbT4KPj4+IFJldmlld2Vk
LWJ5OiBXaWxsZW0gZGUgQnJ1aWpuIDx3aWxsZW1iQGdvb2dsZS5jb20+Cj4+PiAtLS0KPj4+IMKg
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL0tjb25maWfCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHwgMTEgKysrCj4+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9NYWtlZmlsZcKgwqDC
oMKgwqDCoMKgwqDCoMKgIHzCoCAxICsKPj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lkcGYvTWFrZWZpbGXCoMKgwqDCoMKgIHwgMTAgKysKPj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lkcGYvaWRwZi5owqDCoMKgwqDCoMKgwqAgfCAyNyArKysrKysKPj4+IMKgIC4u
Li9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX2NvbnRyb2xxLmjCoMKgIHwgMTQgKysrCj4+
PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfbGliLmPCoMKgwqAgfCA5
NiArKysrKysrKysrKysrKysrKysrCj4+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
ZHBmL2lkcGZfbWFpbi5jwqDCoCB8IDcwICsrKysrKysrKysrKysrCj4+PiDCoCA3IGZpbGVzIGNo
YW5nZWQsIDIyOSBpbnNlcnRpb25zKCspCj4+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9NYWtlZmlsZQo+Pj4gwqAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZi5oCj4+PiDCoCBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX2NvbnRyb2xx
LmgKPj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
ZHBmL2lkcGZfbGliLmMKPj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pZHBmL2lkcGZfbWFpbi5jCj4+Cj4+IDwuLi4+Cj4+PiArfQo+Pj4gKwo+Pj4g
Ky8qIGlkcGZfcGNpX3RibCAtIFBDSSBEZXYgaWRwZiBJRCBUYWJsZQo+Pj4gKyAqLwo+Pj4gK3N0
YXRpYyBjb25zdCBzdHJ1Y3QgcGNpX2RldmljZV9pZCBpZHBmX3BjaV90YmxbXSA9IHsKPj4+ICvC
oMKgwqAgeyAvKiBTZW50aW5lbCAqLyB9Cj4+Cj4+IFdoYXQgZG9lcyBpdCBtZWFuIGVtcHR5IHBj
aV9kZXZpY2VfaWQgdGFibGU/Cj4gCj4gRGV2aWNlIElEJ3MgYXJlIGFkZGVkIGxhdGVyLCBidXQg
aXQgZG9lcyBtYWtlIHNlbnNlIHRvIGJlIGluIHRoaXMgcGF0Y2ggCj4gaW5zdGVhZC4gV2lsbCBm
aXggaW4gdjMuCgpPbiBzZWNvbmQgbG9vaywgdGhlIHJlYXNvbiBQQ0kgaWRzIGFyZSBhZGRlZCBp
biB0aGUgbGFzdCBwYXRjaCBpcyAKYmVjYXVzZSBub25lIG9mIHRoZSBtb2R1bGVzIGZyb20gdGhl
IHByZXZpb3VzIHBhdGNoZXMgd291bGQgcmVzdWx0IGluIGEgCmZ1bmN0aW9uYWwgZHJpdmVyLgoK
VGhhbmtzLApFbWlsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5v
cmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQt
bGFuCg==
