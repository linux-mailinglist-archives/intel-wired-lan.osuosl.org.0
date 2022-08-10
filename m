Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 042C958F077
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Aug 2022 18:34:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B5A881346;
	Wed, 10 Aug 2022 16:33:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B5A881346
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660149238;
	bh=v5rcazv1E0J+upM9nWX6gd+vcMPbchGyliMYSnmTAr4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DXG+q55U+0SkycNeg6evn213OfwZjIuBuF+9/lPKdXQ7yj39rIJj1Et/l4wsgVeqF
	 j1L9KZ+zEpcM3UCujV/imykb50nog9INVB21xEou3ddrEO4dbRgrHZWJnsmOiCVJvh
	 eW1hr0WJxgbM3ZCdS0jPXfOWqNksIPwDVtLy0ZE9ET3DiQ7pqQd+OHuoE3dS8z1lpy
	 KguQxQESwnAWOnmMDoDNEJeeqGI3dBcLbr6YNQp1+XQZjhwi4tMI2sEIKprLJ9vd7U
	 e5SwjCI6UUaE5/mBR0lWSCXo+vlZkoHnzmJgnawRTeJrTNMaKZNB8+30MrxE14cCHo
	 J/sp6zhhNUe3A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F1171nlVJ5U8; Wed, 10 Aug 2022 16:33:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E85F18136F;
	Wed, 10 Aug 2022 16:33:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E85F18136F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5AA461BF479
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 16:33:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 33CC560BE7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 16:33:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33CC560BE7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UgDRSXk-Ofk9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Aug 2022 16:33:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2795660BCF
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2795660BCF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 16:33:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="288700320"
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="288700320"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 09:33:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="608625346"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 10 Aug 2022 09:33:50 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 10 Aug 2022 09:33:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 10 Aug 2022 09:33:50 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 10 Aug 2022 09:33:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nDNj/CzWn2z7cqRNNjkQeR8DJ2t81kCGKUfa6f0BqmA9Hfxpoozgq6D03nuPXvNli4wBphkuau+5taQxmWDEVOuxAnVFLf5mKuvOdXBFH3a8GLswTRsNgZIbOHk3tXsmcbDdSceE+oVRqWrVqA0WMON0Gu60/9/2zqxSlAX6WMpePAi8C+jNgVpqqzxY6RxAxNKUrqZaQUQ/otAjOIVuPhJ3FrE6HpHKsAH5KvvWFGaxpwVaEkHIn4v4smZ/6poxA9SZJykSmn/trVa5rPT1gu5c6tuCI1jup3Ao4hbRK/O7FVsOxAkEa6l4BxOV2iKb++6wWv1HlihmT81GNUl+tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I9U8jxmyI43IeNfWOE2Ieuz65/HG4c5KkqUDFtdLcug=;
 b=h1iYp71kRKg6/RP2cIjRHMg1f2ygXeEnx7GQY43EiQx52nGBtf382A1C3TdBME0YvfIpVrpIwkMgbX/i4vdWj6cECunlXrEY6N1srpV9JJSX3Vw8U3DIAtfONpkkA+DZ4XPK7AXkrn7fhLZT7BVAVSQMSABdEt1Gk6PRuXrfFvNPNhTwQYiVhQs1OAblzRROMcvP1gxeeF+62MsERXXUduZjBwjVFJVW4uhUJSW6h96gvVtL/196rlWNPwJeG06bJHXSKOOdLQ9BHH1vsU0LwCJ6COClob6ec44Lkj3m+qT8d1g/V4EC84dXOFofv8jBn8Na/lXvC+RFg7VMwKd1qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BN8PR11MB3811.namprd11.prod.outlook.com (2603:10b6:408:8a::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Wed, 10 Aug
 2022 16:33:46 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::9d3b:23bc:a1e8:2475]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::9d3b:23bc:a1e8:2475%7]) with mapi id 15.20.5504.016; Wed, 10 Aug 2022
 16:33:46 +0000
Message-ID: <bfcf60a6-a1b7-6069-380c-ae8457efe14a@intel.com>
Date: Wed, 10 Aug 2022 09:33:31 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Grzegorz Siwik <grzegorz.siwik@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <1660141315-216111-1-git-send-email-grzegorz.siwik@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <1660141315-216111-1-git-send-email-grzegorz.siwik@intel.com>
X-ClientProxiedBy: BYAPR07CA0056.namprd07.prod.outlook.com
 (2603:10b6:a03:60::33) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bde54407-1c4b-46e3-22d8-08da7aee1899
X-MS-TrafficTypeDiagnostic: BN8PR11MB3811:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eAcnOr1X5IRHnNTplJrYcPZoTiguuNCe36E/bkigOqfKXjl5eYHaCcjM/pZVo+nZebvbygqc5uS0Sk5qzJkmIgtylxLkm7Uyy4Nh1j3nylKR8qZ+fJtnVL4rOqDvKn5tbFSscp5KFm1+CoP5ZdbaRmHc+jVLdjpgRqbVA1S7sl5dwuG057Bh9OPZx2fNmygPmh9TEXQR99B+A8v/3cwZkVzrihTItPGsGKZxvXhjBp7Amb7QE3hPAXk724TG+7aaEFMw4yuZ58NupzotnMPm6LedexxDXhHhI8uEJ80lfsWRbchXnQ0iOAC8P1dFEZA9UANmYYDbGWOL9X9EyhDqoudS2hn0WxCe3a7z5vgF7j+gx5T8KErSYKxvP7NW+7Ah/oCp5URFaSj+pSHTleF5u85Uf4jnxHyIAohZNjyZ1Yzat2TRrSz0Q1E57elZtjaoU4BDD3tn8D4UPHUxsxA/ji33bJ7vbo08j5qY+UpedTXDLrruTtSPSCK0BWhOlK1ASVaVCwJPfgtQ3AD0PiY79ivHfHegwcPaM+v207sw8uu8IYLM87nVj0eEsYCb+I7I8KXN4tOzn5vUtWRBpsHFAWCQrqRPV3OsvYQbhBvmNaRHDZ4f4GzOEY64ijtYPyWzbJcuaZD3xgkaka6vf4UeU6QXOWB1nQEK4Qwt6cYOWHsoKoOM/IDpBx/jt0NBDIHSnrxoAtq3tDB3lIA7oE0zq/orM59ic30uaUM/hqYWr1idy2PW1EY4Sk87r42XFsCJqGL7cAzNibaEdwkz3xVF+ccTOEVfwXbnXpXAai+4gPuR0ieoGNi9NYAsVZ0ruqCv4kzJ+x2piC5fGHJMtKtRuA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(39860400002)(396003)(376002)(136003)(346002)(2906002)(38100700002)(2616005)(82960400001)(83380400001)(6486002)(26005)(8676002)(66476007)(41300700001)(5660300002)(6506007)(6666004)(8936002)(31696002)(53546011)(66946007)(6512007)(316002)(66556008)(186003)(478600001)(86362001)(31686004)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M01nVGpnMGM5UWtsV2xMYmZuRkc2NGxHWU9QTzEraHZYbDBEZEpicy90UFdW?=
 =?utf-8?B?c25GdmRyVTNrUzVYU1Jnb0ozWU5QK0JYMDdJNUR3VFFuWW1yaENhemlQU1N4?=
 =?utf-8?B?TWMzQk1jcit5c3lhaHdoSGM3d3hGU21JV2hJNzRTdENSQU9XZUZGeTFTYWRj?=
 =?utf-8?B?dGlMZ3V1UnNBMWNkdXYxSWlEdmVvNjhQNHBhM1pBdU8rL0l3eEVWWGlWdmNX?=
 =?utf-8?B?OG91ZGlyMHBRNEIvMnpJa0NiOWx2Q3dLc3krRXlvZ0owT0x0SWREbUFFeWs3?=
 =?utf-8?B?Y1V6VVFqSjVMZTQxTXZja0xsTUt1ZFAxNUVCOWJ6R0QvR0hGY0t6K1VnT2FX?=
 =?utf-8?B?ZzJkNDlPUWFvY1dmUm9DS0JMbmd6dFJZL09lSk9aRzVkMEZhbTh6Vk9yY0RK?=
 =?utf-8?B?aFpSemRxNHZHODdPSjVZZkpFRmxGNUsxcHplRVFGajJVMzZNYVR1bVphbWVr?=
 =?utf-8?B?MGUwcFg1RHFrbkNmQkQzZ05SUW5mb200QlJja1hobXNuVFZ6TnV1a3VRa1hT?=
 =?utf-8?B?MjlJUEdWTFdGMGxENnU0Z0YvTXhLSHdaUkZseTRjY0Z5MjhXSFgxcEIzaEdU?=
 =?utf-8?B?KzR2cHgybUM1Q0V4Y2JxYzU4dTJRUmFVTWZ4Z2pUQTN4NktCNytuTGI1VWxS?=
 =?utf-8?B?cmpRRkNadEJPRGNHVEVnYXRld20zc3JhM2pobE1uM0xaNWpoR2Zrck5yYWlN?=
 =?utf-8?B?cldOaTN5SnJvSyt3S0RUZU5qMXpydlMrZ2ZCU3E0VWd2V1hyRzIxRldtOGwr?=
 =?utf-8?B?RUdjL0N5dHV3Rm5LQW5QS1UvNTZrajBScWpFRnhiTmlUV2hEU0MvazIwV1Fs?=
 =?utf-8?B?ekpUTEVnazk0KytKcFVlWGtMQklyQWd1bzR3U3NiVGh2UE9OdmlCVnQvRHo4?=
 =?utf-8?B?cVFDbm1aNUxFSmJqWGgvWGtWN3VKNUU3TXpZOURsRXJnSlRWeS8rbmMvRDZV?=
 =?utf-8?B?SjgvL0tEdWQrVUpQZ0kyRVozdHdoc2NRSmliYStCL1VNdk5uMXByUVNGeU1Q?=
 =?utf-8?B?bGo3UXUzeTlaTTNpRE5aUkVBMnAwa3QzMmVaQ0QyNTFYbFJZWUVqWFF4MVl2?=
 =?utf-8?B?SDRXcVVJcW5LTlRDajJJckE0NENqYi8yakl5citmOWlzaE9SQmdPaHRCVkJC?=
 =?utf-8?B?Mk1rek52Wk5Ody9iRGVmL0QzVmxPWElmVzRSRWxtQUJ4dkZKNjBNNU8yWWRj?=
 =?utf-8?B?T2tJdjdiZjdsbGVyMUdaVTVTNE1Sb2hGbFk3b2dDb0o1a1ptcVBaQldmVWRB?=
 =?utf-8?B?ZDN4bGthcUV0ejZJRGlrVWp0V2oyRkFMall0TTh5STU3N0ZtUG5mcWx2eko2?=
 =?utf-8?B?T2dRQUlUZWNqWml2RzFnRVczY01JRGlmNGhFdGM5OTV5ejBMWGZqWno3bm5O?=
 =?utf-8?B?MG1PRlNScCtLSS8wS2xodXN2VlMwN1ptbWUvNHRZMnBQVWNjeWJUbytkWTcr?=
 =?utf-8?B?NjM0emJFdE5xeUlOYzR0RUFybktKZ0d6ZWx5aWhXS216M25KOXpJN0hpc1Fu?=
 =?utf-8?B?dUhGSFdkVmZ5cC9QeTloRnNyTkd3SzN3ZEdkMGp5bjZsZUp5WDdhRDlabldL?=
 =?utf-8?B?QWJEWG0vaE1ZQVYrei9yc3BNeVFuclpwZk5yb3VSWmxrYmxzUlZtRDVyeXFw?=
 =?utf-8?B?eDk4V3NKdHdISlB0QUd1WWVOV2VHTVcrUGtsMHAvV1QvazUvREJIMHp0b1pY?=
 =?utf-8?B?ZW1zNmFqZEFHb2MxcDJXR3ZiV1RzV09ZR3JyODVXYzF5WC95RFNWelp5SkZ3?=
 =?utf-8?B?R21BdjdzblNmeEthdEROQXdoTWE0NktrYUhiUTB1MVFLMDA2NGdnR2kwK1Vm?=
 =?utf-8?B?SStyb2YvWmtGOFF4MC92aTRJUWJJWi9ZSjVxOUJpaW9oZHVhZUJad2xpdGhP?=
 =?utf-8?B?cUtiZzhXQTBIZmFwVEVTWmF4T204RllwY0QzTVpkdko0NzRZNGlHYkdUUUVv?=
 =?utf-8?B?VXlzMG1ENTlsN2RZQUZZQmd1bE16a2JuS241QzlKK0dnQXZkSDlCSnN3T0Iv?=
 =?utf-8?B?djZqcXVUUzRHc2J2dDhJa1hjeENrdFV1d1l1WTVSTUVaMXFWQlFERDFzd2lZ?=
 =?utf-8?B?Tlp4MW13RXpQVnovZjJ6S01JaDk5aTF4Nm00VGpnZGNGeUFpcWZzTEF6eXZO?=
 =?utf-8?B?eG9aSWhyeG9XZ1d2Q0loTW91MmdEbEVFTkFDbTI2VmRMcmJxTG5HZzRnSGp0?=
 =?utf-8?B?K1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bde54407-1c4b-46e3-22d8-08da7aee1899
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2022 16:33:46.1090 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bvTFUcjIzqnjFNz+fpib3IMqnKEJZhqvBUt/FwY6WXHpR7gqUKx8FLqA9W6hIcUywZn5BFnOSdmXstnIPAxfHIQs8HV5MK9sSBip6dquhTY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3811
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660149231; x=1691685231;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wE9JEDuFVNBMUviBLwevJ81oMp41wBF/qYICOQg0EAs=;
 b=V/qof60z+TR8OU/odqa+FDLZ+fzSu4EW5cbH1mt7HXLH7STDLOwp1d0n
 +rzgKIaaWMUFKXV6m3Xtc+EmyFBJlYllwhcMShSyT3PO0n/1+bOkkf9O9
 C4XM3pSU04RqbDkfPbK+s0lNGAxw/bg5VBy5PvcIaTo+eCBAidkTmhaq9
 l+Q/HSP2WUiwbqfoyyI/RlEmSElFRvnia50V3MvVKfC408J/E6vtyyJgb
 S3MthoiJwT7/0aq/TKBZQaHhuQ18/d0pr+ZvY9EAnBZ0LZBYK6+SWEiLR
 GJs9UYWxbIptzRYusao8jUHHowFTaaBsNPkqzYvs0SeR9DQc6hOYh5ky1
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V/qof60z
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3 0/4] ice: Fixes for double vlan
 promiscuous mode
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



On 8/10/2022 7:21 AM, Grzegorz Siwik wrote:
> This series fixes known issues related to double vlan promiscuous mode.
> When at least two interfaces are bonded and a bridge is enabled on the
> bond, an error can occur when the bridge is removed and re-added. The
> reason for the error is because promiscuous mode was not fully cleared from
> the VLAN VSI in the hardware.
> Ignore ERR_ALREADY_EXISTS error when setting promiscuous mode.
> This fix is needed because the driver could set promiscuous mode
> when it still has not cleared properly.
> If the requested promiscuous mode setting already exists,
> an -EEXIST error message would be printed.
> This is incorrect because promiscuous mode is
> either on/off and shouldn't print an error when the requested
> configuration is already set.
> Avoid enabling or disabling vlan 0 when trying to set promiscuous
> vlan mode if double vlan mode is enabled. This fix is needed
> because the driver tries to add the vlan 0 filter twice (once for
> inner and once for outer) when double VLAN mode is enabled.

This doesn't apply. Did you rebase?

> ---
>   v2: Fixed error message when setting same promiscuous mode
> ---

nit/suggestion:
There doesn't need to be a '---' between every entry. Save some space :)

>   v3: Fixed style issues, changed to return directly.
> ---
> Benjamin Mikailenko (1):
>    ice: Ignore error message when setting same promiscuous mode
> 
> Grzegorz Siwik (3):
>    ice: Fix double VLAN error when entering promisc mode
>    ice: Ignore ERR_ALREADY_EXISTS when setting promisc mode

The title needs to be updated too. s/ERR_ALREADY_EXISTS/EEXIST

>    ice: Fix clearing of promisc mode with bridge over bond
> 
>   drivers/net/ethernet/intel/ice/ice_fltr.c   |  8 ++++----
>   drivers/net/ethernet/intel/ice/ice_lib.c    |  8 +++++++-
>   drivers/net/ethernet/intel/ice/ice_main.c   | 13 ++++++++++++-
>   drivers/net/ethernet/intel/ice/ice_switch.c |  9 ++++++++-
>   4 files changed, 31 insertions(+), 7 deletions(-)
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
