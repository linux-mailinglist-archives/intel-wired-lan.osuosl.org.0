Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A43DE6E0251
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Apr 2023 01:11:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D44A41F93;
	Wed, 12 Apr 2023 23:11:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D44A41F93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681341062;
	bh=Zz4bSBMNNu4T0titWzK804ioxl37K+WKSd9eJkDs7rU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZEJupLJoNZwVlXR43h5Vb8hcG0hrpdS1kyTcUxyExsr2mhcl/KLlu2mUltmBmksLv
	 D8g9TWFZKms0Ln8vQQUUX7Xbgt1BKxFBjTOxOEpLEuKU4BYN7UV3IQJsvg2bKaK2ox
	 b1TlCf+vkkKYRfcjPvm9rO0DAL0Obvear/Qa/DLL5qaHI27WX0Iq5aqsrmhaTBKxhk
	 9OP+xUKrMplHz09V1hlwsoI79sG/K1oSiTcwpl32qQp2NYEj6zax1Cab43RCk0uJ3c
	 kgyMDQGxiHMPJ51Ti1O/ewAv0HMUO4jrDm3t1jeXaAtq5I1nRg4WAfPHzOiOzfWO3J
	 h7GwE4ojzN1RA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IZe_TgBYJAOC; Wed, 12 Apr 2023 23:11:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 52D9A41F8F;
	Wed, 12 Apr 2023 23:11:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52D9A41F8F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 463871C3D6E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 23:10:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 188D16119A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 23:10:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 188D16119A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jtIG6uxAYzp2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 23:10:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A1DDB61190
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A1DDB61190
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 23:10:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="371893786"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="371893786"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 16:10:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="935303886"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="935303886"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 12 Apr 2023 16:10:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 12 Apr 2023 16:10:25 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 12 Apr 2023 16:10:25 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 12 Apr 2023 16:10:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YlQwY6cyRAIA1S6jZw+jr4UeFroWtqSip//dX6+84WrB0tlMRbQdu3qllNMFBVh7ejHhIV4mytxMwy/zSzV+ueknO7lP6w3JK7wMYSGSgN2iwDGLi3hsPcsjiE91ahy/y4UtLwSQMziID3LxlDh/ety+t+6G//PNvf64ba65YGnNUeqGzaF/xrQnevt3NMS8v/LIaNdbpMN8cCFJSeaqyeXG8CP5ZJ+0CRGymaaNI/hrv0aTqZ4TNHf4GoF6eo3J2A+kGRxu2aMbICMaKmTVhY0YI+ljxebalJ/MPCXUWGbAKUS3VvHG3BzaUBqoRrgETv6QQy3iMKGoEYDlW45yFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mpXvZ2fu7dWpxIOgKZ5qa0QObyIokXayhtwAqZkLrIw=;
 b=MePPKFp9k9pyK6k+qs8Ew8PMT772EWBTXY44vXkro2VEhWWQwwfiENgXPTKGmzIi3/nehQW5Q0xdS86xVE92u+dD+j+dAjU9v4/Qx+JZsuDKA0vv3ttI9CIOxgFkauURepz4ThJGrCQduvabQ2iz+hO9WYX33Nsy5WmpKkUwsk52kP6ww5oivhNEnSWwE8OkLHyuoQQVgZjlAUKB1wj5h9QysCNNHGUPeRAbdnLMBn6r3FgWO1R1p/OunIHGrxRROAr1TgZE2SzyZP3GT5ua9muKrhWqyM7D3z1Hso3J8/JDkNLka7ZrEctOhyBxHjJw77DXM46cqYpTpKgGeELveg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4538.namprd11.prod.outlook.com (2603:10b6:303:57::12)
 by SJ0PR11MB5598.namprd11.prod.outlook.com (2603:10b6:a03:304::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.34; Wed, 12 Apr
 2023 23:10:22 +0000
Received: from MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::8733:7fd2:45d1:e0d6]) by MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::8733:7fd2:45d1:e0d6%6]) with mapi id 15.20.6277.038; Wed, 12 Apr 2023
 23:10:22 +0000
Message-ID: <b6ed7b0b-9262-3578-1d88-4c848d1aea82@intel.com>
Date: Wed, 12 Apr 2023 16:10:18 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
To: Leon Romanovsky <leon@kernel.org>, Pavan Kumar Linga
 <pavan.kumar.linga@intel.com>
References: <20230411011354.2619359-1-pavan.kumar.linga@intel.com>
 <20230411011354.2619359-3-pavan.kumar.linga@intel.com>
 <20230411123653.GW182481@unreal>
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <20230411123653.GW182481@unreal>
X-ClientProxiedBy: SJ0PR13CA0094.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::9) To MW3PR11MB4538.namprd11.prod.outlook.com
 (2603:10b6:303:57::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4538:EE_|SJ0PR11MB5598:EE_
X-MS-Office365-Filtering-Correlation-Id: 53b061da-c60a-48e2-7b64-08db3bab1773
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kaMlJhAYOx3zhKUfKqm1P4an4uzE3SFk/YDhQVpELQjqprgxL9wdnvwghqymCnTO3M7SOg6Q+ADdYr5ZMZfjpkxU2QyniP52q5amBFsQRD7g+Np+dNwIvzDU4aLw2tFjyH5ujiGeYstFpi6/dXRKRXQDt8pOMkWvqhkz8VbRL1Q6hSIpiEEuIDjeMT1N9YnagdNAQi8gXL9LIHHgIOfi3xGwiTMe0O7BFHhLx0BIhzRa2w51jF9DCS3vNG3mvmwbzwGhXxH4kcFnYRSAeqzAdJ6RSTvXFVFadn+Ey5QP706Kz2e8rr7k4YvpBPzUaKaYLSKg7PvX66yKYagSnadrHAF1cOBuflMkrLfMxuOQiMg5Wylq2LaAbAZnOtOEao2QUUZ2k254kNiWz+W18D8nT5d8wA6ldQm0Hqi2C8tCfYnKKN3/SwevDbIz7jMJPeJKlDSKJEOfgcZo016wqbD2r1IUvLu5TOxR/Au6ndrG4v2EtzHFBlTq3nUI5pbhAwRbBlLt/UZVMYx49qpSQ4aA5i1f5BnIGRH0X0n8jBwsROMEG8W7dNsM3h3dTpMDHZd+rFGT7BIw1YvTIbrpW3/QYhbsBvmm2qqBtL1+ed5cBxA1nUwn3Dh1eigsXlbOSRQj72W0BiXTLQfdQKRw9IDr4A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4538.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(346002)(376002)(396003)(39860400002)(451199021)(186003)(54906003)(110136005)(316002)(86362001)(6636002)(31696002)(66556008)(83380400001)(66476007)(4326008)(66946007)(8676002)(5660300002)(8936002)(41300700001)(36756003)(2906002)(82960400001)(2616005)(6486002)(38100700002)(107886003)(6666004)(31686004)(6506007)(6512007)(26005)(53546011)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M2lEYjUwV29Ga3NsdHlzVG1TdnNJVmhXanVpRFhRVENUeml0aTdtNnppcHUr?=
 =?utf-8?B?UUw2MlluVVlhU1NQdFFTU2puZkZGRXZnbnVyU21mM082eTZGVW5XMzN5VDV1?=
 =?utf-8?B?Y1pTalRQUzVFUWZGaVowUFpjMmZkUzFzNHVEUHNUdUJET0NhY0NZSlF4ekRp?=
 =?utf-8?B?QzU4WFVJeHRGd1dDUEUrWXVaSXcwM2FtTmovRWM4OXRZUTVKRHdnNE9mUGow?=
 =?utf-8?B?YjAwdldPRXdXc1J0a0h3dVROeTR2UTc3SkdnWWVYSkxEQStEU3JLSkI1SlRr?=
 =?utf-8?B?aU1sc3YwSmEyekQ1WVFLRWdpZG16QlJMSHBTbGJMTlJYaHhpZnBWeXZ2ZE5i?=
 =?utf-8?B?VjYrcitmT2Y1ekxCaTNvUXpQam5VQlErNVkwcG0ya2xTQjA0SWJIU2FvTCtI?=
 =?utf-8?B?KzdZVEtwaFd5VGc2ZW93WXFaczBRcHpnWHRabGFUb2FZMXYwUk9vVnJlVjla?=
 =?utf-8?B?NWo4WnFVYmlGdUFNeUxkMy9XeEdTZlhsamNYck8zeWh5QklEZUNpZWJ5amp3?=
 =?utf-8?B?NlZTcVc1T2ZZQWxHN0lVdXJwSHdKcmUvWjkxTW1uVGw2OFVhMTZtUzlnZ0Ey?=
 =?utf-8?B?c3g5UTRlWjMyeXRobTZLamRENWJSZVQzQUgvVnBlT3JvYWpqZENCSTNMUGZ6?=
 =?utf-8?B?TUY4aTVnWEJMakJGdWY5R3RyYmVwK1g1Y1RYcWhWQVF3Z0VSdFU1dWZYRE1i?=
 =?utf-8?B?Y01MU0JINUtvQ3V0UXltRmQrOWhIdExyNUIwZHJ4ZXpaY0FjTzEyZU1ZL1Fh?=
 =?utf-8?B?VWp3ekdZaFFFWGZtUTd2aDRwVFk5WG9mdzMyRU9WWUQwczR5OFVvY2pRMjlo?=
 =?utf-8?B?Y1AwNDVjQjhZWlFrYWtHV1NUZW5XN1NkOTVoeWd3M1VqZnRJaGtKelJmZ3JQ?=
 =?utf-8?B?YXk0R3VKNEd1aGtWZC9tK2pQVHJIZUtWMk9PY2VUZ0MzMHVOWVRJQjkwdzQr?=
 =?utf-8?B?Y0JZTFFIdkMyWHh5ODVaNy82STQ2c3VoRDNrbS9CeC9NejRmdXVTdXF3UmJW?=
 =?utf-8?B?cWk0eTQzaE9FcHJKNlhjRmxPaXpBQVZ6ZTlFTi9SNTZJWjR2eHZqcW1XQUJ6?=
 =?utf-8?B?bDNQczRGZkY1L2k0ak1ZQzlVNEVyYlkxRGh2RDJXK04yT3F2ejhHKzd1U056?=
 =?utf-8?B?TEpEc3hYWVN0WHY0aVA4T2VvcHFHSUNnSkh5a3c3cnN5Vkc2d2ZpaWF5c0J5?=
 =?utf-8?B?akxwOXBIOElWSmpSYmlLcURMeW80bWR2c0dQdFprZVpjVnNHRG9ob1BHWmFV?=
 =?utf-8?B?ODNBdTJTODViM1Y1RkxoWHNIRUVrZzcwR0dXcVZiOWRjNGRWdGpFbCtHTmFh?=
 =?utf-8?B?RmgrNTlDbWlkZnNjdjBRcURSSUlib3NGL0g0QkV2RTQ3a0lqalBOcW92akVp?=
 =?utf-8?B?ak04YzV2V3NpQ2tQVzA1b1ZnR2tUZGU0a1F0blJIQWdwM3JmN3JDdThZR1la?=
 =?utf-8?B?KzNzZ1NnYmRoS3lIeGl0VGExaTd5RlF1NWVLRDFWbDNQNzFZMjVFb2g0UnBM?=
 =?utf-8?B?M05ja05OZm5MZnN5OVI1NmY1a2JaNUMxMUtkOWdBQnQwN2RwbmNSakhrdGdX?=
 =?utf-8?B?c0pjUWRQZnZDODdXNkswV1cwN3E1ZDZjUTdTU3g1eTVLcU80dFNiMDAxWm9M?=
 =?utf-8?B?M0lWU1RyNzg0RldCWE55WWNnd3lVTGRvMkxrWTZuMDRuSE8vVThqL0ZwU25S?=
 =?utf-8?B?RnEzTTB5OUFUbXV6QVlpdWNGMjJIMGVmb2sxSFo5SkRKRnhoOGpTMW5FT2Vz?=
 =?utf-8?B?YW5YaHhtY2FuVEtBc0IxN01xS2dKZ3NtaWx2d2lBT0Y2RjhRZm5pQmRUT09j?=
 =?utf-8?B?UGQ5eXJQNlFiSnVBMCtVMU9vKzlKT2JDZUhtQjIwMTBqai8rQU9FanBIakdU?=
 =?utf-8?B?cnFFc2VSNmVGVnRBZkM4MUJ6c1Fiai81SEVWSkpNelBaSC9oVVNUTWtvMFlZ?=
 =?utf-8?B?K04vMVpYYTl0YUxlN3JwZ1hNUEg1MDhNb085aGkyMWtyVXMvbFFkT0xmUVdR?=
 =?utf-8?B?VDFiOHdhWEFudEJRMnYwSWYzWC9Id1NoZW9kUGJSZFk2WExxL0hTMEZ3cXVF?=
 =?utf-8?B?bnVQTzZDVnFPZ0VxeEJYSkFIellQSHpEZU5FWXpxZnBLWUltZm90ZnVQZU8x?=
 =?utf-8?B?TmRnbWRlQ1dMVmFKOW4xZ2NleURCV0dFdmdDQVRIK2F3M0RUWjFRWEN1ZkxT?=
 =?utf-8?B?Nnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 53b061da-c60a-48e2-7b64-08db3bab1773
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2023 23:10:22.4299 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4BDbpRpUUJ3FdQKP7mnRm4dxvCsdPlDG9EDLwOhrGwVMmUSL5kDKnL3NMSp4FAl9d4qXSfxGH1T4TOrNSz9CM8yzCc/Ab7aF9i5Rt0ROht0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5598
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681341053; x=1712877053;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JtGdZP+nz3GVQ/mSiLMNG7fLwS/2AA089AJFrRqskyg=;
 b=XYO08Gb5hDIrEMNMYb9wzt+iqIXYIh3l/pGLl9FJvbucNsdYkO+0Q3QC
 jwdU6Cwdjp/lLucFNVrKof97BAzquHNDU9CgGnzESNZKDHKq1/f1hLBDD
 GMjSm0tCs6ksGVsa+plFflIUuYvu4PEEZkb/v1lD7UK4qkE4P8R3NG0iU
 kZ6uIJqvizHRb021q8yTQP9tBcoYovXGyG5kUDYa7g06Ac8SAzxZfMmJg
 Cu/suZPtKjvyyRHvHxhOSfnC3GgtJU+Jo2xgyMyVunLSiDa8i9Rth/m9F
 ggObiqObrFDyg5xXIadHAlOxG9IfTdRT3bMNuZAPIIs+rBjpweaJpDR1I
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XYO08Gb5
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
Cc: willemb@google.com, pabeni@redhat.com,
 Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, kuba@kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 Phani Burra <phani.r.burra@intel.com>, decot@google.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/11/2023 5:36 AM, Leon Romanovsky wrote:
> On Mon, Apr 10, 2023 at 06:13:41PM -0700, Pavan Kumar Linga wrote:
>> From: Phani Burra <phani.r.burra@intel.com>
>>
>> Add the required support to register IDPF PCI driver, as well as
>> probe and remove call backs. Enable the PCI device and request
>> the kernel to reserve the memory resources that will be used by the
>> driver. Finally map the BAR0 address space.
>>
>> PCI IDs table is intentionally left blank to prevent the kernel from
>> probing the device with the incomplete driver. It will be added
>> in the last patch of the series.
>>
>> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
>> Co-developed-by: Alan Brady <alan.brady@intel.com>
>> Signed-off-by: Alan Brady <alan.brady@intel.com>
>> Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
>> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
>> Co-developed-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
>> Signed-off-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
>> Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
>> Reviewed-by: Willem de Bruijn <willemb@google.com>
>> ---
>>   drivers/net/ethernet/intel/Kconfig            | 11 +++
>>   drivers/net/ethernet/intel/Makefile           |  1 +
>>   drivers/net/ethernet/intel/idpf/Makefile      | 10 ++
>>   drivers/net/ethernet/intel/idpf/idpf.h        | 27 ++++++
>>   .../net/ethernet/intel/idpf/idpf_controlq.h   | 14 +++
>>   drivers/net/ethernet/intel/idpf/idpf_lib.c    | 96 +++++++++++++++++++
>>   drivers/net/ethernet/intel/idpf/idpf_main.c   | 70 ++++++++++++++
>>   7 files changed, 229 insertions(+)
>>   create mode 100644 drivers/net/ethernet/intel/idpf/Makefile
>>   create mode 100644 drivers/net/ethernet/intel/idpf/idpf.h
>>   create mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.h
>>   create mode 100644 drivers/net/ethernet/intel/idpf/idpf_lib.c
>>   create mode 100644 drivers/net/ethernet/intel/idpf/idpf_main.c
> 
> <...>
> 
>> +/**
>> + * idpf_remove_common - Device removal routine
>> + * @pdev: PCI device information struct
>> + */
>> +void idpf_remove_common(struct pci_dev *pdev)
>> +{
>> +	struct idpf_adapter *adapter = pci_get_drvdata(pdev);
>> +
>> +	if (!adapter)
> 
> How is it possible to have adapter be NULL here?

I think it is just defensive check since remove can be called on error 
code path, but in general you're right and we likely don't need it. Will 
remove in v3.

> 
>> +		return;
>> +
>> +	pci_disable_pcie_error_reporting(pdev);
>> +}
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
>> new file mode 100644
>> index 000000000000..617df9b924fa
>> --- /dev/null
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
>> @@ -0,0 +1,70 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/* Copyright (C) 2023 Intel Corporation */
>> +
>> +#include "idpf.h"
>> +
>> +#define DRV_SUMMARY	"Infrastructure Data Path Function Linux Driver"
>> +
>> +MODULE_DESCRIPTION(DRV_SUMMARY);
>> +MODULE_LICENSE("GPL");
>> +
>> +/**
>> + * idpf_remove - Device removal routine
>> + * @pdev: PCI device information struct
>> + */
>> +static void idpf_remove(struct pci_dev *pdev)
>> +{
>> +	struct idpf_adapter *adapter = pci_get_drvdata(pdev);
>> +
>> +	if (!adapter)
> 
> Ditto

Will remove in v3.

>> +		return;
>> +
>> +	idpf_remove_common(pdev);
>> +	pci_set_drvdata(pdev, NULL);
>> +}
>> +
>> +/**
>> + * idpf_shutdown - PCI callback for shutting down device
>> + * @pdev: PCI device information struct
>> + */
>> +static void idpf_shutdown(struct pci_dev *pdev)
>> +{
>> +	idpf_remove(pdev);
>> +
>> +	if (system_state == SYSTEM_POWER_OFF)
>> +		pci_set_power_state(pdev, PCI_D3hot);
>> +}
>> +
>> +/**
>> + * idpf_probe - Device initialization routine
>> + * @pdev: PCI device information struct
>> + * @ent: entry in idpf_pci_tbl
>> + *
>> + * Returns 0 on success, negative on failure
>> + */
>> +static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>> +{
>> +	struct idpf_adapter *adapter;
>> +
>> +	adapter = devm_kzalloc(&pdev->dev, sizeof(*adapter), GFP_KERNEL);
> 
> Why devm_kzalloc() and not kzalloc?
It provides managed memory allocation on probe, which seems to be the 
preferred method in that case.

>> +	if (!adapter)
>> +		return -ENOMEM;
>> +
>> +	return idpf_probe_common(pdev, adapter);
> 
> There is no need in idpf_probe_common/idpf_remove_common functions and
> they better be embedded here. They called only once and just obfuscate
> the code.

Will remove in v3.

>> +}
>> +
>> +/* idpf_pci_tbl - PCI Dev idpf ID Table
>> + */
>> +static const struct pci_device_id idpf_pci_tbl[] = {
>> +	{ /* Sentinel */ }
> 
> What does it mean empty pci_device_id table?

Device ID's are added later, but it does make sense to be in this patch 
instead. Will fix in v3.

>> +};
>> +MODULE_DEVICE_TABLE(pci, idpf_pci_tbl);
>> +
>> +static struct pci_driver idpf_driver = {
>> +	.name			= KBUILD_MODNAME,
>> +	.id_table		= idpf_pci_tbl,
>> +	.probe			= idpf_probe,
>> +	.remove			= idpf_remove,
>> +	.shutdown		= idpf_shutdown,
>> +};
>> +module_pci_driver(idpf_driver);
>> -- 
>> 2.37.3
>>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
