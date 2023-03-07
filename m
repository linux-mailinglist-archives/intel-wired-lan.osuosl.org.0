Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0016AF67D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Mar 2023 21:16:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 21EE140B76;
	Tue,  7 Mar 2023 20:16:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21EE140B76
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678220178;
	bh=3KzJ+pf5/E3g4rW3JIYqIuskxjNpV20sJaTHN6V1E34=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZOV9AV4yWfB/dwZSUWEAIDv3/P/vsD7+ImdOJrucxNKBXri/SXhekKmz9tcC/T4As
	 G0mIbb2+WoUCZqvgifKgvJH4JdZ/nqYZJ24HbyqwA/mxbz004THyab7j9PfaWXbUBi
	 CSfV2iPupDlGRhXTN1hb7UxKeWl0iaKa5QTcXilli+JU4+5eQYlQ/wzcU6/F2LUilR
	 zY72Af9QrSQBkGfyS6IHP/3wHg6qL2e6Cz2euQjY1l8d3ucZBf0om7Hsh/+wGIVzQm
	 4TBmk+h1j5EzLa7cLcS/GxdSODaRySLefAxIS80WK4NBw9/6D0tTddk6cMhGhoG1q8
	 eKJ99/XYCUUow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S996vlx5_rkf; Tue,  7 Mar 2023 20:16:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EE5C6400FE;
	Tue,  7 Mar 2023 20:16:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE5C6400FE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 38BF21BF3EC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 20:16:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0FE6E81E3E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 20:16:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0FE6E81E3E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D1ddNQVMVxvr for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Mar 2023 20:16:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 763E681E50
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 763E681E50
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Mar 2023 20:16:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="338283827"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="338283827"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 12:16:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="679085856"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="679085856"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 07 Mar 2023 12:16:04 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 7 Mar 2023 12:16:04 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 7 Mar 2023 12:16:04 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 7 Mar 2023 12:16:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oMeJKX+iE/IyaW9uF42LvW77fhYNT1/3YSSgfviQPgKxfmhYwuaYU3C574rKId8fYYqNDevJbXXNsV2m8yflr0gF3vA87UqGW1BQMhPg7fHG8BDG29cvV4YtveRRiawL/whWm0QthAjMBgu7xOnGPaMqgLg2sbBIQVHL4XbZcDACF0+VsC94rKXL1im8RAYg6nzKCIicpzrtxLbewxka19O4XvqK4SGVWQHDYrhOC0Mwe5cYjdASY3u0FvKLtz8A38hF83ydNox2iZO4oF4olCpYAHp2SU/BOjIgz/hb13OZbMhOZJ5ZqoTmg+KDL223dA4QM04y/s0lJXiBPPJMNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KF55XEry6MtbSeYd9qDUpVA2H8DwnjVZ6BECdcpCnWY=;
 b=hchO1A/lQlFSyo+MJfnDtzBEN+oTwKaUA7EwYUS/x/1cAkBdQwyjzDIv/ktFMXxMDMfhYmZrWYeS30iSPpJw0+EQWkRWXB+IJxntwkhgreDzXwNVM5funh40YG5R/2lgpJr/6qTy64FONQrNO/oyGigu+HbPz0NBT9E7BAXRvsVLnJdfPYGU8ywHS5e9rqjgsgxtg0ghyBrJ8n3OrIDwc2PQvHsSEHP42aFVzJNpCq90r6cCBAz9Me9piQs6G+43qPCqu8msTvqFgJW2tWyIToWUyXRRFVHga6XBFod+ZIz23Y2NSZk/iQxsmYruoxKC8V4fHZq1a2iKK+7uvqNzrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6695.namprd11.prod.outlook.com (2603:10b6:a03:44e::6)
 by CY8PR11MB6916.namprd11.prod.outlook.com (2603:10b6:930:58::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29; Tue, 7 Mar
 2023 20:16:01 +0000
Received: from SJ0PR11MB6695.namprd11.prod.outlook.com
 ([fe80::25a3:92a0:1379:9e00]) by SJ0PR11MB6695.namprd11.prod.outlook.com
 ([fe80::25a3:92a0:1379:9e00%4]) with mapi id 15.20.6156.029; Tue, 7 Mar 2023
 20:16:01 +0000
Message-ID: <47fada08-d95f-8b29-a6ac-09c3edc2b725@intel.com>
Date: Tue, 7 Mar 2023 13:15:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20230307150433.2441989-1-ahmed.zaki@intel.com>
 <ecd1e81b-f554-9827-4f1c-e1f0dbcf5ad8@molgen.mpg.de>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <ecd1e81b-f554-9827-4f1c-e1f0dbcf5ad8@molgen.mpg.de>
X-ClientProxiedBy: FR2P281CA0086.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9b::14) To SJ0PR11MB6695.namprd11.prod.outlook.com
 (2603:10b6:a03:44e::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB6695:EE_|CY8PR11MB6916:EE_
X-MS-Office365-Filtering-Correlation-Id: cb2ece9c-02d2-4df4-a77b-08db1f48c529
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FQLf6j5dMfaqD/Cp3p1aS8Qsx3x2moWC3phsmtYbNczP5j9cAbLup0ZUiD0tRM/FCDxIjJoedut0fZM3KpV5d+dDzahSWREXxYKYcRULEDQlW3HlEPEP3FsDllcDAyJSQqheZkjQW0eelv4TzK8c8VjUut+e7EVXWLRaW+zp/7p8jSZaskesVOP8FznalvAnozj/IxEdQhMRRBathO2yuQ26kXuC7VMVHE0iUEOYHBhixsH5lnaB31tPorrz+ovhRpEwCQtnQXOwTfWRuUznxtIsjNirlwDkEuW8M+yzoPfxZRndwNNOCWlbDAZf7i/sP4LwegQmuyERMHQ4lrMgZu2OnsSGCjBo6V+CI3i+jzxEv0AkU/7NZ+aBllSIjwy7MVGr68+dEhM+KxeeNsS0i2LDo1UXtsoxQmqBKDcAvzul4pMIHucHybQrfa92DxpH5DXMlBCoFJkhz/gq8O16+k4IaP88kJFNaeWcLvtfUeA64Qs3F0+BLyCWnSfYTV4R77b7+3KqHS6N8HltwcZ78hsIscAjMzIhnow8f2E+zBhpF+0RYTdzUzrM4jyoaW0N/92slOjX6I4FVJTW3QqROTXGusLMKqVbW0nll/dJSpfYcFduj+yhTKTG9/5/pbiLSD/JYtms+oxUIYrmX+3ZCf0Z0tDI6YUmrolNzgotX8l18xbhwxhz9xPqLc/aDYBz+qBiYjYpgndMp05c00Hpqoa39nw8FTbycPKC6hpIXDE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6695.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(346002)(39860400002)(136003)(366004)(396003)(451199018)(26005)(6506007)(6512007)(6486002)(53546011)(107886003)(6666004)(36756003)(82960400001)(31696002)(86362001)(83380400001)(38100700002)(186003)(2616005)(41300700001)(66946007)(66556008)(6916009)(66476007)(4326008)(8676002)(44832011)(2906002)(8936002)(31686004)(5660300002)(316002)(478600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Vm5XTFU3b0Q3V1VvQ1lhQkxZVVVGK1BxSktCWEZhUzNEdXBCMEw2SjVNSlVj?=
 =?utf-8?B?WGtLU2x6RTZMd1hhQ2RhWlo0UzJLaDVEaGs3dEx0QVdRL0QzWWorNnVlcW02?=
 =?utf-8?B?b2xucnlvNVlaRHlPWUN1d0lFaUtPTHExdm1tWTBlNUlpY2ROeDlDRjJnbHBx?=
 =?utf-8?B?SjZIZ2ZweFQ5TE1XYlppWC9PSlNYZEtlaXVlWDNsWTArV0RwTWc0RnJHdW04?=
 =?utf-8?B?Y1lKeFl1cFVsUllzeTJxUnc5K0lUcDl1ZzJtU2dBNnQ5a0owdWpHZUVJVURS?=
 =?utf-8?B?aWV6dWdXSGphOFd5SmJ2NmlCM2l2SzRlTXU1TTlZTXZaLzUrd3lCdWtMdDZq?=
 =?utf-8?B?L3RXNTFGRnJMUzA5ZnJ3YnlvcDZwYlBoUXZiV3R5c3hzcTVXSjNBbHFwVVpq?=
 =?utf-8?B?cTdkYVpPSjBWcERVTjdVL2Z1VEY5cWZYMlE3OEJjRnNZMjQvKzFNZHIyNHlP?=
 =?utf-8?B?Um5ldjMrSzdnaVoxVHlqNDZkTEJ5MDdRY0hMTlJoNDZXSi9nZm1lTDhZUUtz?=
 =?utf-8?B?dDUwb0lrTUMyOS9zMUtLb0I0T0hWZVQzQmFyNG51dG1HZHlnalJMaWlaZlRT?=
 =?utf-8?B?QVpCbnVsWlI4N2dYOUNZN2JjK1ppUnhYWXZjeUhicithMkx0Y3haWW1DcWkv?=
 =?utf-8?B?UTRudXBIQXNjM1graFV0bFNnSzFWOUpLTjNFSWN5QjA1RGlqeUwrb0doZGQ3?=
 =?utf-8?B?L0QyYkhYd3BwQ09lazJFVEd0Zkk0ZVhxdzcxbW4zTEVMUzAzSXNrcGpyV1hL?=
 =?utf-8?B?M3EyWFU1b1JvRWgzWXd0RVVsODFhTFBwbk1CU3JvdW1zQUJ3UGxLdGZ5bEdw?=
 =?utf-8?B?WnVCODJhc0hIM1dndlJpYmI4R05qOHR4SVJXR0IzVXNidVRTQ0kvTElZa3ZE?=
 =?utf-8?B?VUwvYWI2MEVYZFo4bWJFbTFFQTZHSStqZy8vSWE0QlJZamFrbVAzNnVJOFZE?=
 =?utf-8?B?SnpZNEZSOW5LeHhYSFF0R2UyWm5vVWxtTDdFbExkMnR3UzYxL0ZSeC9FSFFj?=
 =?utf-8?B?bEZsL2xFMy9YajNDZmhTMFR4M3F2LzVlcTBaT0hKRGEzQVc0cEFOTnIvT0li?=
 =?utf-8?B?dnUrSVFGRE9oeDcvMFVEZFlkTXRrUkhFeWVlemUyK214a2xEMXhrcU5CWWtK?=
 =?utf-8?B?T1VucDBNVkYwSWxndDdIV0ZkUlJPRkttRUhtTmVVMGgwaU9NbEg4N1RmZGhD?=
 =?utf-8?B?SmJlL1JITXlaWEtyRGVUandOSVM0RnIyRWZNdHZUSWZMNU5ZL3p3cHVnenV5?=
 =?utf-8?B?U0xZcEY0dksrSkxxTExlemFhQm82ejdwTXltaElSNGFJdWZ2TnBTRFZLYTVn?=
 =?utf-8?B?MXhTMTRSS0RqaVdxK2Fsa1FWU0pwMHdZMTF2ck1aYnZtZkI1SFkwN3lCY0Rn?=
 =?utf-8?B?RTZOWmYrRmxuMkY1OW9BZi9sdXdDM3RVMlRhQlZoQ0lra2s1YXN2N1k0aXV3?=
 =?utf-8?B?Ym4rRWk3UERFeXNHR0R5dWxBN2VadlF0TkQ5QlVFbzRYbW51V0lybGc4azNI?=
 =?utf-8?B?QUZvVmZ4ZTJSdjMyemxhSmJzWTQxbXFTTnFzSXRuQWJLcTdxVzhabzdLUHMw?=
 =?utf-8?B?MDNXbTFHVGVjL01LTFdNMXRxMEovaVFyNHpFTDg2NDNxWmEyN0M4UU9HMFZw?=
 =?utf-8?B?SFRTMVlkVnU3eEIzM2pPK3YwdzBkK1l2OUNjcURFb1JML0VLL0doT0N6YnFH?=
 =?utf-8?B?N2Iwd1lNenN2dkpnc0hydzZXMEVBemVLZGNGeHNRTm1BTERmbHltZlVzM21B?=
 =?utf-8?B?dWFwdElxVDZ3YUNUdG50NDMrQUUrUm9wanZOeVh1MnpKUk1tMUNyK2pENllD?=
 =?utf-8?B?OSswZzRCWkNHN1B5SmNXUk5DNWh3clovajk1MkgxcnAyNWtjc1BKSWdrQTM4?=
 =?utf-8?B?Tlo4dVF2ekE1QkNjYWpRcFJnUkpLOWhLL0cranJXWElEdUh2bXZIZkNaL1Zp?=
 =?utf-8?B?UkxDRjhLeGdzZmFIQ0hPOWNlaTArVUhyelE1MElpWlhrVUwwRUUyQkZqYWJD?=
 =?utf-8?B?QVkzVkN6c0hSeWl6KzduZ013VjUxQzJPY3BGMjZ4VlZJc1cxd3dkSkpQK2Rh?=
 =?utf-8?B?SC8rWFFhN1VBL3doUmIzMFg4NmVnSXBGS1EwK284MjhBbnpRdjUvSmpuRGxv?=
 =?utf-8?B?V1pNWDNZcllxZGZaK2RNSTVHeFBUSHFBZmxlSS9vMy9XNXBTMURSUmJUckRx?=
 =?utf-8?B?QUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cb2ece9c-02d2-4df4-a77b-08db1f48c529
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6695.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2023 20:16:01.2441 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +t17XATPxSvFc220KJ5l9MhEtYaQ/LpnyyEreCt4vWbnu6oLrk++132slTsEA4LdOoXiz+OB0eiFM6bcQd/x8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6916
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678220170; x=1709756170;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=k1PcEFFBUG2O/6h+IzKL4CBT/d0SluSluqsEzrfL1Zg=;
 b=AI2KFaMYwl7N9M9NZbMasxTCL6fIQUTg/86/RxbPLMo3wiQkJplX0WAH
 lE7v9e+K9fZpry78hD8HHSvTqsVqRMM5aYhqccPB8hxIw8HOhuKM019o6
 iL+jiUCTPS7wjFzVfYnNYxHahKfz4Tw6Bg/GdWO0sW2KLBxSXNb1w62qj
 o1yOsJJktAAPgrSflBLy1MQFvOXGFhydxR1BDok5vrEfAJKWH75/cC9AU
 XbW9xbUJotZjDH0L5Ww+31qdNhriEGmOyeCLiRWYBLF3Ob6QrDsl24gEI
 JzX4im7YyC8KFd0P5CLNa6C1U06Ng4cR1UyZlqmI/BmZRVjfBKLqkNmpG
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AI2KFaMY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] iavf: do not track VLAN 0 filters
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
Cc: michalx.jaron@intel.com, Michal
 Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDIwMjMtMDMtMDcgMDg6MTgsIFBhdWwgTWVuemVsIHdyb3RlOgo+IERlYXIgQWhtZWQsCj4K
Pgo+IFRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaC4KPgo+IEFtIDA3LjAzLjIzIHVtIDE2OjA0IHNj
aHJpZWIgQWhtZWQgWmFraToKPj4gV2hlbiBhbiBpbnRlcmZhY2Ugd2l0aCB0aGUgbWF4aW11bSBu
dW1iZXIgb2YgVkxBTiBmaWx0ZXJzIGlzIGJyb3VnaHQgdXAsCj4+IGEgc3B1cmlvdXMgZXJyb3Ig
aXMgbG9nZ2VkOgo+Pgo+PiBbwqAgMjU3LjQ4MzA4Ml0gODAyMXE6IGFkZGluZyBWTEFOIDAgdG8g
SFcgZmlsdGVyIG9uIGRldmljZSBlbnAwczMKPj4gW8KgIDI1Ny40ODMwOTRdIGlhdmYgMDAwMDow
MDowMy4wIGVucDBzMzogTWF4IGFsbG93ZWQgVkxBTiBmaWx0ZXJzIDguIAo+PiBSZW1vdmUgZXhp
c3RpbmcgVkxBTnMgb3IgZGlzYWJsZSBmaWx0ZXJpbmcgdmlhIEV0aHRvb2wgaWYgc3VwcG9ydGVk
Lgo+Cj4gKFlvdSBtaWdodCB3YW50IHRvIGluZGVudCDigJxjb2Rl4oCdIGJsb2NrcyBieSBmb3Vy
IHNwYWNlcy4pCgpUaGFua3MsIHdpbGwgZG8uCgo+Cj4+IFRoZSBWRiBkcml2ZXIgY29tcGxhaW5z
IHRoYXQgaXQgY2Fubm90IGFkZCB0aGUgVkxBTiAwIGZpbHRlci4KPj4KPj4gT24gdGhlIG90aGVy
IGhhbmQsIHRoZSBQRiBkcml2ZXIgYWx3YXlzIGFkZHMgVkxBTiAwIGZpbHRlciBvbiBWRgo+PiBp
bml0aWFsaXphdGlvbi4gVGhlIFZGIGRvZXMgbm90IG5lZWQgdG8gYXNrIHRoZSBQRiBmb3IgdGhh
dCBmaWx0ZXIgYXQKPj4gYWxsLgo+Pgo+PiBGaXggdGhlIGVycm9yIGJ5IG5vdCB0cmFja2luZyBW
TEFOIDAgZmlsdGVycyBhbHRvZ2V0aGVyLiBXaXRoIHRoYXQsIHRoZQo+PiBjaGVjayBkZGVkIGJ5
IGNvbW1pdCAwZTcxMGEzZmZkMGMgKCJpYXZmOiBGaXggVkYgZHJpdmVyIGNvdW50aW5nIFZMQU4g
MAo+Cj4gKmEqZGRlZAoKZml4ZWQgaW4gdjIuCgo+Cj4+IGZpbHRlcnMiKSBpbiBpYXZmX3ZpcnRj
aG5sLmMgaXMgdXNlbGVzcyBhbmQgbWlnaHQgYmUgY29uZnVzaW5nIGlmIAo+PiBsZWZ0IGFzCj4+
IGl0IHN1Z2dlc3RzIHRoYXQgd2UgdHJhY2sgVkxBTiAwLgo+Pgo+PiBGaXhlczogMGU3MTBhM2Zm
ZDBjICgiaWF2ZjogRml4IFZGIGRyaXZlciBjb3VudGluZyBWTEFOIDAgZmlsdGVycyIpCj4+IFNp
Z25lZC1vZmYtYnk6IEFobWVkIFpha2kgPGFobWVkLnpha2lAaW50ZWwuY29tPgo+PiBSZXZpZXdl
ZC1ieTogTWljaGFsIEt1YmlhayA8bWljaGFsLmt1Ymlha0BpbnRlbC5jb20+Cj4+IC0tLQo+PiDC
oCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jwqDCoMKgwqAgfCA0
ICsrKysKPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3ZpcnRjaG5s
LmMgfCAyIC0tCj4+IMKgIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2
Zi9pYXZmX21haW4uYyAKPj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZf
bWFpbi5jCj4+IGluZGV4IDMyNzNhZWI4ZmE2Ny4uZDRlNTBmNmVkMTRiIDEwMDY0NAo+PiAtLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jCj4+ICsrKyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9tYWluLmMKPj4gQEAgLTg5Myw2ICs4
OTMsMTAgQEAgc3RhdGljIGludCBpYXZmX3ZsYW5fcnhfYWRkX3ZpZChzdHJ1Y3QgCj4+IG5ldF9k
ZXZpY2UgKm5ldGRldiwKPj4gwqAgewo+PiDCoMKgwqDCoMKgIHN0cnVjdCBpYXZmX2FkYXB0ZXIg
KmFkYXB0ZXIgPSBuZXRkZXZfcHJpdihuZXRkZXYpOwo+PiDCoCArwqDCoMKgIC8qIFRoZSBQRiBh
bHdheXMgYWRkcyBWTEFOIDAgZmlsdGVycyBvbiBWRiBpbml0ICovCj4+ICvCoMKgwqAgaWYgKCF2
aWQpCj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gMDsKPj4gKwo+PiDCoMKgwqDCoMKgIGlmICgh
VkxBTl9GSUxURVJJTkdfQUxMT1dFRChhZGFwdGVyKSkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJl
dHVybiAtRUlPOwo+PiDCoCBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWF2Zi9pYXZmX3ZpcnRjaG5sLmMgCj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2
Zi9pYXZmX3ZpcnRjaG5sLmMKPj4gaW5kZXggNmQyMzMzODYwNGJiLi40ZTE3ZDAwNmM1MmQgMTAw
NjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0Y2hu
bC5jCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0Y2hu
bC5jCj4+IEBAIC0yNDQ2LDggKzI0NDYsNiBAQCB2b2lkIGlhdmZfdmlydGNobmxfY29tcGxldGlv
bihzdHJ1Y3QgCj4+IGlhdmZfYWRhcHRlciAqYWRhcHRlciwKPj4gwqDCoMKgwqDCoMKgwqDCoMKg
IGxpc3RfZm9yX2VhY2hfZW50cnkoZiwgJmFkYXB0ZXItPnZsYW5fZmlsdGVyX2xpc3QsIGxpc3Qp
IHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKGYtPmlzX25ld192bGFuKSB7Cj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZi0+aXNfbmV3X3ZsYW4gPSBmYWxz
ZTsKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoIWYtPnZsYW4udmlkKQo+
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29udGludWU7Cj4KPiBJ
cyBhIGNvbW1lbnQgd2FycmFudGVkLCB0aGF0IFZMQU4gMCBpcyBub3QgdHJhY2tlZD8KClRoZSB2
bGFuX2ZpbHRlcl9saXN0IGlzIGNoZWNrZWQgaW4gb3RoZXIgcGxhY2VzIHRvby4gSSBkb24ndCB0
aGluayBpdCAKbWFrZXMgc2Vuc2UgdG8gYWRkIGEgY29tbWVudCBqdXN0IGhlcmUuIEluc3RlYWQs
IEkgd2lsbCBtb2RpZnkgdGhlIApjb21tZW50IGluIGlhdmZfdmxhbl9yeF9hZGRfdmlkKCkgYWJv
dmUgdG8gZXhwbGljaXRseSBtZW50aW9uIHRoYXQgd2UgZG8gCm5vdCB0cmFjayBWTEFOIDAgZmls
dGVyLgoKPgo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChmLT52bGFu
LnRwaWQgPT0gRVRIX1BfODAyMVEpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBzZXRfYml0KGYtPnZsYW4udmlkLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBhZGFwdGVyLT52c2kuYWN0aXZlX2N2bGFucyk7
Cj4KPgo+IEtpbmQgcmVnYXJkcywKPgo+IFBhdWwKCgpUaGFuayB5b3UgZm9yIHRoZSByZXZpZXcu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
