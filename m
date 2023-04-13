Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5E56E14A3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Apr 2023 20:55:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B0B27429E4;
	Thu, 13 Apr 2023 18:55:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0B27429E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681412105;
	bh=GVJqOjsNJZraoTodhYfjw78RXrCH2XYMXeYky01MG58=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IrP0Umhj2lnVLF/sfcZMiAYKg5JFrz+ankbErM0xX3D0nM+2U4cwnitGbb5/41eQT
	 HeRNHSsp2GhZ+BwkJ5QPiXqV5EnGexK9QKMZOvm059DOnVIVXRit0Yj5iSFkct+5GQ
	 jxe09a288OO7XXUazy0zcgiEG/qGmYPB4PloSmutAugu7zCKzX3PBXx6Zx/OY+RyJC
	 NroshuZCmetBbWaG+L/sEjdbuP1NVEGnkR3eYBORsh4ACa8PFhK2hVM35oShAAdA6v
	 iOd2V9vjSi5N1P2JAg93k1p9jpFcmn8zb1mWBmqA428wd/sCywvXZefB3G/aKv+6i2
	 FKHZKDk7tL7ng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uwB4yDVCHrQ3; Thu, 13 Apr 2023 18:55:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5E2BA4063E;
	Thu, 13 Apr 2023 18:55:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E2BA4063E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 994551BF34A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 18:54:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7D6D461655
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 18:54:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D6D461655
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OJT3qrwdkb4Z for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Apr 2023 18:54:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B3FD61613
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2B3FD61613
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 18:54:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="341773020"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="341773020"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 11:54:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="758804249"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="758804249"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 13 Apr 2023 11:54:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 11:54:47 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 13 Apr 2023 11:54:47 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 13 Apr 2023 11:54:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K1xP/2Vg6+8HnaJqkFl2lMX1g/Cu7YAxEqHQtGcYDut+ZOW7PyIsQcscQ+wpCZ53CxL/veyBokCeDAyne0lbFR0mNG3eBnbx8VNWO7WpU1gWo0IOh5O0U/cxp1/2nEeE25L5Dnv8IWSRD4Dkn8o6G9LdozCZ55WINKB7Hlq4A3k3Hbvnyu9uEaquiK8HWCmUxEy951+p28qZVF1jBdMByEz/bm8OmTsvLBfFtmRIxZA0Gx7D7RO1ZuZWc9dwSl4rf+g6RULVrirdm+L+jpr4Fet0eT4gPfWfiZl9bZoFiYK59XyF6uUPf4SAxyAypy5eh1398MqSsOw2k6Oz7ZeN+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wbFb95hoZKBnXqvnri2xCWErr7ZR3eBsR3ubDVpabw8=;
 b=ZA0jkdWL6eN4BGGKjAvX03zuzsolILtFDkPFcWceJ3Ah7ZgU0W6hBCtPdr5KOlO2uYK2A73lHko+3a3VYPWMlvPJeQZoA8hYlubiyoSQfMJ6m7yYBWaHRDbF3vlLooOoB31LzD2S9v0/pSwpnkCuHhrJsDsDUoaM5QQU454Hxd0vTt+6Ni+Xck1D3CMPtAwuBB1MfYd20nsOAGRTJpQE1+AgKinkuniy6RPQxgtiCOpRWy54pUNylg9MJJ7NMSwpvEFR6ERFzFVx1Ek+M1h/7prtfQ39aE+Lhc/9qM5Sp3XkwnPAX5L9rsPv3YquF2bCejEvLVNpZNa1veR6zcuqjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4538.namprd11.prod.outlook.com (2603:10b6:303:57::12)
 by SJ0PR11MB5216.namprd11.prod.outlook.com (2603:10b6:a03:2db::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Thu, 13 Apr
 2023 18:54:45 +0000
Received: from MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::8733:7fd2:45d1:e0d6]) by MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::8733:7fd2:45d1:e0d6%6]) with mapi id 15.20.6277.038; Thu, 13 Apr 2023
 18:54:44 +0000
Message-ID: <aeb969e0-b829-d869-a93c-1d15755367ce@intel.com>
Date: Thu, 13 Apr 2023 11:54:41 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
To: Shannon Nelson <shannon.nelson@amd.com>, "Linga, Pavan Kumar"
 <pavan.kumar.linga@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
 <20230329140404.1647925-2-pavan.kumar.linga@intel.com>
 <49947b6b-a59d-1db1-f405-0ab4e6e3356e@amd.com>
 <a5b7f1e4-8f14-d5fb-8f88-458d7070825d@intel.com>
 <f7c7c691-d173-73ab-c24a-79c22e6ef3b0@amd.com>
 <ffd66203-4349-0986-2130-f8b156f1923a@intel.com>
 <ffe43a28-641c-c263-2ea2-67882b476cde@amd.com>
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <ffe43a28-641c-c263-2ea2-67882b476cde@amd.com>
X-ClientProxiedBy: SJ0P220CA0006.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::29) To MW3PR11MB4538.namprd11.prod.outlook.com
 (2603:10b6:303:57::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4538:EE_|SJ0PR11MB5216:EE_
X-MS-Office365-Filtering-Correlation-Id: 3933b8c6-e9e6-45a0-742d-08db3c508bc1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9no7bJp0EtbZJqT6eBSUZJ6UdjfF7X+Qmfl8O8092NZRn/ZDKpjD9Dxquhepoo+bye1fTT1nqOWIvqPaK6aLfgfYH287Mt5+pZYM4JhFz6tPtwBbZIAQqe3Z4SYUZuw8xf9Ya58sa/OFk2Vo7Pg+f+q6dkz2Q4q9l1CogXz2YZs0DA87bj2vJqvA6xquIY9pXezW7CoPvknxG9e6W6CqkJX9OzI8O9Me/sNxSuUox+x+wVzQYbkZiAffUVVqbD8KYLwF+XLwVpsANmA3eUtghXZ8KBxLmwLwptuMokeahfSAmYYGiSPku+vlOmCBQgxquh97zWu+IytAmT3JKmNsy+H/w3EE2ub7AFWDIkUoksjJcniZveWpDMY3ynl0rXN0eLs5DAxv9AEfGYQy7cqh6KIQ26b8Sy594qejnspICWE2mmWdLprfr1Zz2byL1pSE2DMIpwe94SuZQsVfiRvX7z+umHXyNpGgiUTKU7vWSBnps5Y1Wkb0LfWHofQyJBqfwmdbPJ9/SAt1eTc2ZNeN1oOrifSxaeRyR8Hqsc6wAo54fhYFW8qBnfbnHUaogbTrpQYVtoLhvBQga9WdulRgsrXvhVs0TjEaIZ3FLGGS9T1VVFn9etkvw5YRas2XJfBtNAnbRBQlhIDuWy2/LN1Drw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4538.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(396003)(136003)(376002)(346002)(451199021)(53546011)(26005)(31686004)(6512007)(6506007)(54906003)(83380400001)(186003)(2616005)(107886003)(6486002)(6666004)(5660300002)(41300700001)(82960400001)(38100700002)(316002)(8676002)(8936002)(86362001)(31696002)(478600001)(66946007)(4326008)(36756003)(66556008)(66476007)(2906002)(110136005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ODkxT0ZLWnJjaERqZVZHWFc0UDF4WWxuVktIYW1JNG1lK3p0OE5KZVNKaEl6?=
 =?utf-8?B?cno5djMvWHZkWGFodTd1YU1YMFFCbThyc2JLT2VhSDlLZXNvM1k3QlZMSGIy?=
 =?utf-8?B?ajlNOXVVbWp4S0VsQ0krYU8rTmhSZ2FuWUsxOEVCamw4eVJnbU5YRGl5Z2or?=
 =?utf-8?B?WVlhVEd5cy9kZm5ZQ3dHMjlpQXFYZHFZNlpOK1M2M2R3MDRpRkQrVGZXalVH?=
 =?utf-8?B?UXI0VTFFV3IvaEtmV1QyTUhHM3Y2cHR3WENockVOYnQzWFNTck9OMUtVdkpQ?=
 =?utf-8?B?dERFNUZSNTRoeDhIaWNrclZvS3ZheW9DUVd6bkpQSVdaZnYwWmtod0pPUVdu?=
 =?utf-8?B?WjNoWW9MR09LMlY3TTZFRGltUWYyWUthQ0QyYlBtc2dZMVJSS002Q01CYXJE?=
 =?utf-8?B?RnhtTjJITXRPbFBPeHJNblN6ZVdKN29Db0tBa3dTVEFXcEZoQlJsamhZS01L?=
 =?utf-8?B?UFlTN2kxOTlHNkc4ZktwUUJCRjNvYU9CYjlnMnFjVU82d0ZmQzFzWlBrYXA3?=
 =?utf-8?B?WlByZnlsM2dKbmVWQmRFdFFTSStRVmdlWW1XZW91ZC81ZzV6NFUyWXIxUjly?=
 =?utf-8?B?M3h6eGZCWDVzcVhWMXRNQTB2dDJnVkJzVjB2N2RLVWgwRlJoZ0E3cDBaeTh5?=
 =?utf-8?B?dHpuWHpCMWlaRVRjZ1lPL1cyaE12WEtvT1NMUW5rbS96N0lGb1VoeFY1ZVpY?=
 =?utf-8?B?VUJxQTJYcXY5dzAxQTFNdnVqTzZFelZsbm5HK2hiKzBhVzU1MFJqYXBrR29D?=
 =?utf-8?B?c3ZIUHVyaDFqNWZlQ050NVVSNkoxRUU3TGUrRjZEdzhOZW1IdGc0OWtZU3lH?=
 =?utf-8?B?YmhodUQrVjBpM3ZiZjJDYkNXSVVock9YeXZOaEQ3aWIvWTJESFpQejRvT3Zs?=
 =?utf-8?B?cThZcFh3NlVmODBBRnlFSnlhYnFjR1dkOFl5ZnhWUkhkMGRsUUhVSW5FL3NM?=
 =?utf-8?B?aUQxSUtWWGNWK2JhSVZja0MvdjMzY1loV21IVXh6c25Ya0pSeVJYTGgvRWdv?=
 =?utf-8?B?d3hBOUVmemFDNDUzVWFsWjJ3aDhDOUI4WnRFZWNVUU5HT1VLcEsxMU80Q2d5?=
 =?utf-8?B?VDlVQkNXQUxoWVpsVUxuZXg2akVhaWowRFFtdStKOXlqSUUvN2hXRUgxQlJG?=
 =?utf-8?B?NEJSU3FKVEhQbFQ2YzRGbVBNZXZCMUk4TTFaVE5UNzY2ZkN5ejVOR050TjJG?=
 =?utf-8?B?ZCtrTnFaeGtuNmNqT083Wjl5Rm55T3hvTGRNSVZOb2wyaGRBTXZrUDdIbHp2?=
 =?utf-8?B?TFpCZ0xxS1kwVDlUYWZnRi9PbERLVkYzR3JkOXo0ZjhVZFpFOENRRXdjRFpT?=
 =?utf-8?B?eHVZV0RPdnYvcXE0TlhLWWovQnpKYkV2bTRtTGJnR0tZU1VoWHk3UzJHR1FZ?=
 =?utf-8?B?dVlpSnAvRmhVVHBTUjlzVExIdkQzUXJiaGRPZ3ZNOVNTeVhydEpDUjRvMGdO?=
 =?utf-8?B?SmRjaDRkWkY4eGx6ZkFCTHVROVdNdkdldUd5OW4zelpORVRPSmwvQjFEczUw?=
 =?utf-8?B?SVJ1dUE5bURQb2Z3Z0thU0dSbHNYNkxLMy9yUGFhT2dRRzdXRWFHRFMvaXVX?=
 =?utf-8?B?dUwrVUVwKytYR0laNFFDayt6TFFDYnRlWk0rbEo4eVhBdXU4ZmtscVk1Zjla?=
 =?utf-8?B?ZldBcGR4K2xQTWtYd3lYYkdaMExjbWxGemZIWTIvM0JUUGJkOHNlRVZtMVVV?=
 =?utf-8?B?aEIrVTIybC9NNU1hakt0V0svcUhhQkljUHcyRnhyd1FlaDd6MGNTN0d0eXhz?=
 =?utf-8?B?SEcrK2VFais1RE1ZcFV6SENPS0d5TnB6c1VKWG5Iamo1RG1vWU1YNEdaWFl1?=
 =?utf-8?B?ZGxKL2NzVVhpV0p2TjdMc25CMjlVdCtkN2lQalFxdTJ5QVBKZXltZzVrTFdp?=
 =?utf-8?B?dXRjc01DNUh5Zi9TcUl5Q2paYVdnM0dSdVhCL2NiTER3ZzVYUStBY1E4OWhM?=
 =?utf-8?B?c25YQXVhcjdhWUxGNnp2Z0wwRTVNUk15dGtCaEJUbkxram1lN0J2TUR4a2w5?=
 =?utf-8?B?bmNWOXk4TGVXdnpLWDA5M0tsUTArUnZCdmtMUDRBV3RBS2NVb29odVpNTzVn?=
 =?utf-8?B?OEMwM0NuV0Z6ZU1qajcrNlRmalhHRGdFKzl5bXNlUysxcnNPYm1KQmFBTjlD?=
 =?utf-8?B?aDNlWlh4eE1VamxrK3BtTW9NSlBNdmZBMFA3aDljRUE0M1hTd2ppbFFxN1VW?=
 =?utf-8?B?NEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3933b8c6-e9e6-45a0-742d-08db3c508bc1
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2023 18:54:44.4823 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GR2pz5hEDtyL+UhHtD4xfXomt5unj0wU+d9AGisBzq+BKK+UdE1D/pjCheDx4xCQFhXrjUtcy+Os1QcTjZWt7Imdqej/cnK/LJPWawZVD7A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5216
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681412097; x=1712948097;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OEl+6PBa7plpBVnhg06Ox+ITTKWpnbZOh9yeeVVMWdY=;
 b=avUxSSuzzfGMOk2+7e8Yp6VU73nittgSflqCDTYI5DoyhkfnDd87nM4X
 kJoZ9MoKT78vrteTlNZK7ETicjoodbzOBlpHH1Tni0Tup2+Icdw4PpskH
 ggzD6QBk6L69bAGSZAMFtq4CXMiwPbqB+OwlIodD376RrebjrXSd1+rUh
 GKVCj1rff9TXPTnwqVQlTgnVcaZ9oBYgdevp3iTw9VAC728gYFsOpVidQ
 ALermstdwDEE+ihV2SrbCZe22Jget25u0oW5E2lnp4AICYXc77UOBbswy
 RQ8NLRK0a9Q3KDydXWn3koPIU1+QdzJPvZNgIMt6n+94wwuv69k/Q2d3o
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=avUxSSuz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 01/15] virtchnl: add virtchnl
 version 2 ops
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
Cc: willemb@google.com, netdev@vger.kernel.org,
 Phani Burra <phani.r.burra@intel.com>, decot@google.com,
 shiraz.saleem@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA0LzEyLzIwMjMgMjozNiBQTSwgU2hhbm5vbiBOZWxzb24gd3JvdGU6Cj4gT24gNC8xMi8y
MyA5OjU4IEFNLCBUYW50aWxvdiwgRW1pbCBTIHdyb3RlOgo+Pgo+PiBPbiA0LzEwLzIwMjMgMzox
MiBQTSwgU2hhbm5vbiBOZWxzb24gd3JvdGU6Cj4+PiBPbiA0LzEwLzIzIDE6MjcgUE0sIExpbmdh
LCBQYXZhbiBLdW1hciB3cm90ZToKPj4+Pgo+Pj4+IE9uIDQvNC8yMDIzIDM6MzEgQU0sIFNoYW5u
b24gTmVsc29uIHdyb3RlOgo+Pj4+PiBPbiAzLzI5LzIzIDc6MDMgQU0sIFBhdmFuIEt1bWFyIExp
bmdhIHdyb3RlOgo+Pj4+Pj4KPj4+Pj4+IFZpcnRjaG5sIHZlcnNpb24gMSBpcyBhbiBpbnRlcmZh
Y2UgdXNlZCBieSB0aGUgY3VycmVudCBnZW5lcmF0aW9uIG9mCj4+Pj4+PiBmb3VuZGF0aW9uYWwg
TklDcyB0byBuZWdvdGlhdGUgdGhlIGNhcGFiaWxpdGllcyBhbmQgY29uZmlndXJlIHRoZQo+Pj4+
Pj4gSFcgcmVzb3VyY2VzIHN1Y2ggYXMgcXVldWVzLCB2ZWN0b3JzLCBSU1MgTFVULCBldGMgYmV0
d2VlbiB0aGUgUEYKPj4+Pj4+IGFuZCBWRiBkcml2ZXJzLiBJdCBpcyBub3QgZXh0ZW5zaWJsZSB0
byBlbmFibGUgbmV3IGZlYXR1cmVzIHN1cHBvcnRlZAo+Pj4+Pj4gaW4gdGhlIG5leHQgZ2VuZXJh
dGlvbiBvZiBOSUNzL0lQVXMgYW5kIHRvIG5lZ290aWF0ZSBkZXNjcmlwdG9yIAo+Pj4+Pj4gdHlw
ZXMsCj4+Pj4+PiBwYWNrZXQgdHlwZXMgYW5kIHJlZ2lzdGVyIG9mZnNldHMuCj4+Pj4+Pgo+Pj4K
Pj4+IFsuLi5dCj4+Pgo+Pj4+Pj4gKwo+Pj4+Pj4gKyNpbmNsdWRlICJ2aXJ0Y2hubDJfbGFuX2Rl
c2MuaCIKPj4+Pj4+ICsKPj4+Pj4+ICsvKiBWSVJUQ0hOTDJfRVJST1JfQ09ERVMgKi8KPj4+Pj4+
ICsvKiBTdWNjZXNzICovCj4+Pj4+PiArI2RlZmluZSBWSVJUQ0hOTDJfU1RBVFVTX1NVQ0NFU1PC
oMKgwqDCoMKgwqAgMAo+Pj4+Pgo+Pj4+PiBTaG91bGRuJ3QgdGhlc2UgYmUgZW51bSBhbmQgbm90
ICNkZWZpbmU/Cj4+Pj4+Cj4+Pj4KPj4+PiBUaGlzIGhlYWRlciBmaWxlIGlzIGRlc2NyaWJpbmcg
Y29tbXVuaWNhdGlvbiBwcm90b2NvbCB3aXRoIG9wY29kZXMsCj4+Pj4gZXJyb3IgY29kZXMsIGNh
cGFiaWxpdGllcyBldGMuIHRoYXQgYXJlIGV4Y2hhbmdlZCBiZXR3ZWVuIElEUEYgYW5kCj4+Pj4g
ZGV2aWNlIENvbnRyb2wgUGxhbmUuIENvbXBpbGVyIGNob29zZXMgdGhlIHNpemUgb2YgdGhlIGVu
dW0gYmFzZWQgb24gCj4+Pj4gdGhlCj4+Pj4gZW51bWVyYXRpb24gY29uc3RhbnRzIHRoYXQgYXJl
IHByZXNlbnQgd2hpY2ggaXMgbm90IGEgY29uc3RhbnQgc2l6ZS4gCj4+Pj4gQnV0Cj4+Pj4gZm9y
IHZpcnRjaG5sIHByb3RvY29sLCB3ZSB3YW50IHRvIGhhdmUgZml4ZWQgc2l6ZSBubyBtYXR0ZXIg
d2hhdC4gVG8KPj4+PiBhdm9pZCBzdWNoIGNhc2VzLCB3ZSBhcmUgdXNpbmcgZGVmaW5lcyB3aGVy
ZWV2ZXIgbmVjZXNzYXJ5Lgo+Pj4KPj4+IFRoZSBmaWVsZCBzaXplIGxpbWl0YXRpb25zIGluIGFu
IEFQSSBhcmUgb25lIHRoaW5nLCBhbmQgdGhhdCBjYW4gYmUKPj4+IG1hbmFnZWQgYnkgdXNpbmcg
YSB1OC91MTYvdTMyIG9yIHdoYXRldmVyIGFzIG5lY2Vzc2FyeS7CoCBCdXQgdGhhdAo+Pj4gZG9l
c24ndCBtZWFuIHRoYXQgeW91IGNhbid0IGRlZmluZSB2YWx1ZXMgdG8gYmUgYXNzaWduZWQgaW4g
dGhvc2UgZmllbGRzCj4+PiBhcyBlbnVtcywgd2hpY2ggYXJlIHByZWZlcnJlZCB3aGVuIGRlZmlu
aW5nIHNldmVyYWwgcmVsYXRlZCBjb25zdGFudHMuCj4+Pgo+PiBXZSBjYW4gY2VydGFpbmx5IGxv
b2sgaW50byBpdCwgYnV0IGZvciB0aGUgcHVycG9zZSBvZiB0aGlzIHNlcmllcyBpdAo+PiBkb2Vz
bid0IHNlZW0gbGlrZSBhIG1lYW5pbmdmdWwgY2hhbmdlIGlmIGl0IG9ubHkgaGVscHMgd2l0aCB0
aGUgZ3JvdXBpbmcKPj4gc2luY2UgdGhlIGRlZmluZSBuYW1lcyBhbHJlYWR5IGZvbGxvdyBhIGNl
cnRhaW4gcGF0dGVybiB0byBpbmRpY2F0ZSB0aGF0Cj4+IHRoZXkgYXJlIHJlbGF0ZWQuCj4gCj4g
SSB3YXMgdHJ5aW5nIG5vdCB0byBiZSBvdmVybHkgcGVkYW50aWMsIGJ1dCB0aGUgbGFzdCB3b3Jk
cyBvZiB0aGF0IAo+IHBhcmFncmFwaCBhcmUgY29waWVkIGRpcmVjdGx5IGZyb20gc2VjdGlvbiAx
MiBvZiB0aGUgY29kaW5nLXN0eWxlLnJzdC4gCj4gV2Ugc2hvdWxkIGZvbGxvdyB0aGUgd2lzZG9t
IHRoZXJlaW4uCj4gCj4gTG9vaywgd2hldGhlciB3ZSBsaWtlIHRoaXMgcGF0Y2hzZXQgb3Igbm90
LCBpdCBpcyBnb2luZyB0byBnZXQgdXNlZCBhcyAKPiBhbiBleGFtcGxlIGFuZCBhIHN0YXJ0aW5n
IHBvaW50IGZvciByZWxhdGVkIHdvcmssIHNvIHdlIG5lZWQgdG8gYmUgc3VyZSAKPiBpdCBzZXJ2
ZXMgYXMgYSBnb29kIGV4YW1wbGUuwqAgTGV0J3Mgc3RhcnQgZnJvbSB0aGUgYmVnaW5uaW5nIHdp
dGggY2xlYW4gCj4gY29kZS4KCkdvdCBpdC4gV2lsbCBjb252ZXJ0IHRvIGVudW1zIGluIHYzLgoK
PiAKPj4KPj4+Cj4+PiBbLi4uXQo+Pj4KPj4+Pgo+Pj4+Pj4gKwo+Pj4+Pj4gKy8qIFZJUlRDSE5M
Ml9PUF9HRVRfRURUX0NBUFMKPj4+Pj4+ICsgKiBHZXQgRURUIGdyYW51bGFyaXR5IGFuZCB0aW1l
IGhvcml6b24KPj4+Pj4+ICsgKi8KPj4+Pj4+ICtzdHJ1Y3QgdmlydGNobmwyX2VkdF9jYXBzIHsK
Pj4+Pj4+ICvCoMKgwqDCoMKgwqAgLyogVGltZXN0YW1wIGdyYW51bGFyaXR5IGluIG5hbm9zZWNv
bmRzICovCj4+Pj4+PiArwqDCoMKgwqDCoMKgIF9fbGU2NCB0c3RhbXBfZ3JhbnVsYXJpdHlfbnM7
Cj4+Pj4+PiArwqDCoMKgwqDCoMKgIC8qIFRvdGFsIHRpbWUgd2luZG93IGluIG5hbm9zZWNvbmRz
ICovCj4+Pj4+PiArwqDCoMKgwqDCoMKgIF9fbGU2NCB0aW1lX2hvcml6b25fbnM7Cj4+Pj4+PiAr
fTsKPj4+Pj4+ICsKPj4+Pj4+ICtWSVJUQ0hOTDJfQ0hFQ0tfU1RSVUNUX0xFTigxNiwgdmlydGNo
bmwyX2VkdF9jYXBzKTsKPj4+Pj4KPj4+Pj4gRG9uJ3QgcHV0IGEgc3BhY2UgYmV0d2VlbiB0aGUg
c3RydWN0IGFuZCB0aGUgY2hlY2suCj4+Pj4+Cj4+Pj4KPj4+PiBDaGVja3BhdGNoIHJlcG9ydHMg
YSB3YXJuaW5nIChhY3R1YWxseSBhICdDaGVjaycpIHdoZW4gdGhlIG5ld2xpbmUgaXMKPj4+PiBy
ZW1vdmVkLiBGb2xsb3dpbmcgaXMgdGhlIGNoZWNrcGF0Y2ggb3V0cHV0IHdoZW4gdGhlIG5ld2xp
bmUgaXMgCj4+Pj4gcmVtb3ZlZDoKPj4+Pgo+Pj4+ICJDSEVDSzogUGxlYXNlIHVzZSBhIGJsYW5r
IGxpbmUgYWZ0ZXIgZnVuY3Rpb24vc3RydWN0L3VuaW9uL2VudW0KPj4+PiBkZWNsYXJhdGlvbnMi
Cj4+Pgo+Pj4gU2luY2UgaXQgaGFzIHRvIGRvIGRpcmVjdGx5IHdpdGggdGhlIGZpbmlzaGVkIGRl
ZmluaXRpb24sIG9uZSB3b3VsZAo+Pj4gdGhpbmsgaXQgY291bGQgZm9sbG93IHRoZSBzYW1lIHJ1
bGUgYXMgRVhQT1JULi4uIGRvZXMuwqAgSXQgbWlnaHQgbm90IGJlCj4+PiBhIGJhZCBpZGVhIGF0
IHNvbWUgcG9pbnQgZm9yIHN0YXRpY19hc3NlcnQoKSB0byBiZSBhZGRlZCB0byB0aGF0IGFsbG93
ZWQKPj4+IGxpc3QuwqAgRm9yIG5vdywgdGhvdWdoLCBzaW5jZSBpdCBpcyBvbmx5IGEgQ0hFQ0sg
YW5kIG5vdCBXQVJOIG9yIEVSUk9SLAo+Pj4geW91IG1pZ2h0IGJlIGFibGUgdG8gaWdub3JlIGl0
LsKgIEl0IG1pZ2h0IGJlIGVhc2llciB0byBpZ25vcmUgaWYgeW91Cj4+PiBqdXN0IHVzZWQgdGhl
IGV4aXN0aW5nIHN0YXRpY19hc3NlcnQoKSByYXRoZXIgdGhhbiBkZWZpbmlnaW4geW91ciBvd24K
Pj4+IHN5bm9ueW0uCj4+Cj4+IE9LLCB3ZSdsbCByZW1vdmUgaXQuCj4gCj4gSSdtIG5vdCBzdXJl
ICdpdCcgbWVhbnMgeW91ciBzeW5vbnltIG9yIHRoZSBhY3R1YWwgY2hlY2suwqAgVGhlIGNoZWNr
IGlzIAo+IGEgdXNlZnVsIHRoaW5nIHRvIGhlbHAgbWFrZSBzdXJlIG5vIG9uZSBzY3Jld3MgdXAg
dGhlIEFQSSBtZXNzYWdlIAo+IGxheW91dCwgc28gZG9uJ3QgcmVtb3ZlIHRoZSBjaGVjayBpdHNl
bGYuwqAgSWYgeW91IGNhbid0IGdldCBhd2F5IHdpdGggCj4gaWdub3JpbmcgdGhlIGNoZWNrcGF0
Y2gucGwgQ0hFQ0sgY29tcGxhaW50IGFib3V0IHRoZSBsaW5lIHNwYWNpbmcsIEknbSAKPiBmaW5l
IHdpdGggbGVhdmluZyBpdCBhbG9uZS7CoCBTb21lIG90aGVyIGRheSB3ZSBjYW4gbG9vayBhdCB0
ZWFjaGluZyAKPiBjaGVja3BhdGNoLnBsIHRvIGFsbG93IHN0YXRpY19hc3NlcnQoKSBhZnRlciBh
IHN0cnVjdC4KPgoKSSBzaG91bGQgaGF2ZSBiZWVuIG1vcmUgc3BlY2lmaWMuIEkgd2FzIHJlZmVy
cmluZyB0byByZW1vdmluZyB0aGUgYmxhbmsgCmxpbmUgYXMgSSB0aGluayB3ZSBjYW4gbGl2ZSB3
aXRoIHRoZSBDSEVDSy4gWW91ciBjYWxsIEkgZ3Vlc3MuCgo+Pgo+Pj4KPj4+Cj4+PiBbLi4uXQo+
Pj4KPj4+Pj4+ICsvKiBRdWV1ZSB0byB2ZWN0b3IgbWFwcGluZyAqLwo+Pj4+Pj4gK3N0cnVjdCB2
aXJ0Y2hubDJfcXVldWVfdmVjdG9yIHsKPj4+Pj4+ICvCoMKgwqDCoMKgwqAgX19sZTMyIHF1ZXVl
X2lkOwo+Pj4+Pj4gK8KgwqDCoMKgwqDCoCBfX2xlMTYgdmVjdG9yX2lkOwo+Pj4+Pj4gK8KgwqDC
oMKgwqDCoCB1OCBwYWRbMl07Cj4+Pj4+PiArCj4+Pj4+PiArwqDCoMKgwqDCoMKgIC8qIFNlZSBW
SVJUQ0hOTDJfSVRSX0lEWCBkZWZpbml0aW9ucyAqLwo+Pj4+Pj4gK8KgwqDCoMKgwqDCoCBfX2xl
MzIgaXRyX2lkeDsKPj4+Pj4+ICsKPj4+Pj4+ICvCoMKgwqDCoMKgwqAgLyogU2VlIFZJUlRDSE5M
Ml9RVUVVRV9UWVBFIGRlZmluaXRpb25zICovCj4+Pj4+PiArwqDCoMKgwqDCoMKgIF9fbGUzMiBx
dWV1ZV90eXBlOwo+Pj4+Pj4gK8KgwqDCoMKgwqDCoCB1OCBwYWQxWzhdOwo+Pj4+Pj4gK307Cj4+
Pj4+Cj4+Pj4+IFdoeSB0aGUgZW5kIHBhZGRpbmc/wqAgV2hhdCdzIHdyb25nIHdpdGggdGhlIDE2
LWJ5dGUgc2l6ZT8KPj4+Pj4KPj4+Pgo+Pj4+IFRoZSBlbmQgcGFkZGluZyBpcyBhZGRlZCBmb3Ig
YW55IHBvc3NpYmxlIGZ1dHVyZSBhZGRpdGlvbnMgb2YgdGhlIAo+Pj4+IGZpZWxkcwo+Pj4+IHRv
IHRoaXMgc3RydWN0dXJlLiBEaWRuJ3QgZ2V0IHRoZSBhc2sgZm9yIDE2LWJ5dGUgc2l6ZSwgY2Fu
IHlvdSBwbGVhc2UKPj4+PiBlbGFib3JhdGU/Cj4+Pgo+Pj4gV2l0aG91dCB0aGUgcGFkMVs4XSwg
dGhpcyBzdHJ1Y3QgaXMgYW4gZXZlbiAxNiBieXRlcywgc2VlbXMgbGlrZSBhCj4+PiBsb2dpY2Fs
IHBsYWNlIHRvIHN0b3AuwqAgMjQgYnl0ZXMgc2VlbXMgb2RkLCBpZiB5b3UncmUgZ29pbmcgdG8g
cGFkIGZvcgo+Pj4gdGhlIGZ1dHVyZSBpdCBtYWtlcyBzb21lIHNlbnNlIHRvIGRvIGl0IHRvIGFu
IGV2ZW4gMzIgYnl0ZXMKPj4+IChwb3dlci1vZi0yKS7CoCBBbmQgcGxlYXNlIGFkZCBhIGNvbW1l
bnQgZm9yIHRoaXMgZnV0dXJlIHRoaW5raW5nLgo+Pgo+PiBXZSBjYW4gY2hhbmdlIHRoZSBuYW1l
IHRvIHJlc2VydmVkIHRvIG1ha2UgaXQgY2xlYXJlciwgYnV0IHRoZSBzaXplCj4+IGNhbm5vdCBi
ZSBjaGFuZ2VkIGJlY2F1c2UgaXQncyBhbiBBQkkgYWxyZWFkeS4KPiAKPiBUaGF0J3MgZmluZSAt
IGp1c3QgbWFrZSBzdXJlIGl0IGlzIGNsZWFyIHRoaXMgd2FzIGludGVuZGVkLgoKUmlnaHQuCgpU
aGFua3MgZm9yIHRoZSByZXZpZXcsCkVtaWwKCj4gCj4gc2xuCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
