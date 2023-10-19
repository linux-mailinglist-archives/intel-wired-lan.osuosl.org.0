Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF88C7D0282
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Oct 2023 21:26:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B92514313A;
	Thu, 19 Oct 2023 19:26:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B92514313A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697743578;
	bh=FyIirppDelWzhfJ8VA/vX5NknGoo6ZOeiiEge9+3m+A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lyUjKCpACygos47Tb5dtCDK83wfzMsb/6A94o0szAnIPJNwiRRTCcJeg2sGe75NV7
	 6PIWcczIYDKGiFublxjiDN1k4ry9p5627tdKTcX0eWe+bCyaW0c8mRyZChybY5YUoi
	 TqBbVv1Kcm3mE4zujijok+rPlT/xT5F26Z7iThVfdaMij/w0Y+fi50RTfwS9Hc/RUB
	 YQbIJEdKJUkRb9npa04ssLMi4qCtZi/ScBe2ROQPapMY/o8/uYQdKZ/ak4WJYZOhwE
	 CcKP3z+3es2+tQ7GDMDGkBD3KQpESKEQOWrUv9Gxz3EfqfuC62dLs2edysIIJM3GBP
	 IhgUwiYW+BVKw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hpb9YyIVQtWY; Thu, 19 Oct 2023 19:26:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 533E143138;
	Thu, 19 Oct 2023 19:26:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 533E143138
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1F8DB1BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 19:26:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 04BC260E49
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 19:26:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04BC260E49
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u7pi1lIRVFlg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Oct 2023 19:26:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3200860DCA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 19:26:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3200860DCA
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="450569917"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="450569917"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 12:21:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="792124715"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="792124715"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Oct 2023 12:21:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 19 Oct 2023 12:21:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 19 Oct 2023 12:21:00 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 19 Oct 2023 12:20:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ntlyoUyQCAi4LcAp0B+HIbw6amEX/auB1/P5r7FmZnKReFvQWZ9e9Jh4UME+oocH9hTMx6DBxnVFYU5uIzgAwFb4vU9c4A0ExnoshTNj3I26GZaOVeiU4psf646qOdqD3CyEL1sLWda7f5nA9QILRvcxOJ3BJqa75KBTAOeHaD8GDPzICXwqQYGShYRd3w10wtOyaPHPt8Pdc3tDTr7v1vv4A73CeORD2FAXygiSG5cojRoL5rwHPD9HCiKuEhuNCWWdUazfSQ0Fl10MD16lNYl0YULkxrHVA51cXvI4uV2NmJhtYQQT32r/bwsJOVHyLFJ4pbnPha7COJrvPtmzcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZiefLKg7B0mqM6+myqElBr6h2ECW/Gcrh1RkKzcRM+g=;
 b=Gt77UevLwya98b+mZ7zfnMe69YB26t9jAl7C/+7rn31fHDeD8/YLUm8QtxCgluP8n8vn8nbteWTvN06oahgCwqqhBjjefO6AiMYevwCJdZxBUi9iioBzwUDtHvCjk+JRuyEGqOLziXLXPCM6iXjpfj5ovqvijzs1egJsYtqbcMaFHRtlTvmFpGqYWgIKoZc3OXLenv3+VtV9iSEAOLm7z1hP+r6IbFDUHGS7+RKqeL+ozr94JMqDsTNVYy0ioiu/MsL+2GHAc+6ATPbZzKd4paE+YgIKs6Z7gT03KX2M50lEOqBes68VKL39SPSJjA10PinXXvlP1ZSrd8CaREQIrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM8PR11MB5637.namprd11.prod.outlook.com (2603:10b6:8:33::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6907.24; Thu, 19 Oct 2023 19:20:56 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4%4]) with mapi id 15.20.6907.022; Thu, 19 Oct 2023
 19:20:56 +0000
Message-ID: <b0bd5678-44cd-47ca-aeb5-33735100dbdb@intel.com>
Date: Thu, 19 Oct 2023 12:20:55 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Ivan Vecera
 <ivecera@redhat.com>, <netdev@vger.kernel.org>
References: <20231018112621.463893-1-ivecera@redhat.com>
 <4bedad2b-cdf6-471e-a8bd-51ba3564aa6a@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <4bedad2b-cdf6-471e-a8bd-51ba3564aa6a@intel.com>
X-ClientProxiedBy: MW4PR03CA0228.namprd03.prod.outlook.com
 (2603:10b6:303:b9::23) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM8PR11MB5637:EE_
X-MS-Office365-Filtering-Correlation-Id: 4a6adf5a-1ddb-4468-e340-08dbd0d884c3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Wvc/ZzuS4ZmA+E6cMVlyNorKf1/r+9WdXbqevUZhIMLYh8ioFsNH4oSZK1i5Q2/1V1aXYl/xZUFoS67e1/Cp3Q3kpAmiOnYKmbn0a9fghYyXJ+lI6d3yKLvzkB/Mi9RqyJ+asidmLfxEjdundv+QgKaqFnLccnmv85RnmJ9OCy9D8/qaDHCP7CjUQZdpVkJp9AD9bpEX6nFUaXAqCudfigGTZCd3vqdpSeRRNhB6Pi1w7CcP5m6SrpEkN5M34NJb+aLoQX01A978ukju+TJYh0Jskm47nJaxttMnfnp8WLXs1MXv6i3qMPccZVvTwlxysAx6acDW/s3ZEmqRgF99iWRxZVcVug1GpX0B6mtd2rhFuOXKPHl0aqcjsdl8G2NCC5q+/uYlIxWSkXpVdRgf2MFw88qwviaGASsfjy6Yd1vHxIbQlHM9WrrOK1e/oiGTRemcYxlMyw49gGf7CS8uGLm29ZbMEutIdFRf+kTpb5MYH0AjwDwl17UySF6kzO8ZBbKUnvT8EyIUry7mU78ulPAXerFbMsr5WFmdeVRIek6MFmW7z9LzPPdJMj3AvPkCnegcPqNzOdC9DUtXTjPUtaD5NnQEtqiA9ccIjZ1XDeUW2KzsJg8QqvRNBAJfYXy33b0xYEpWUOKl5yNZH/rdMw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(396003)(366004)(376002)(136003)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(6486002)(2616005)(478600001)(66556008)(66476007)(38100700002)(66946007)(53546011)(82960400001)(26005)(31686004)(54906003)(110136005)(6506007)(6512007)(316002)(83380400001)(5660300002)(31696002)(4326008)(8676002)(2906002)(86362001)(8936002)(41300700001)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TkpLaGhIaVhWYVpHS1hvZUJmQlh4clA5Nldia3dHU3ZUeDNaTDBON29TcWYx?=
 =?utf-8?B?ODFjUUM1MDE5M1pJSVVPMlRYZTJDdzU5QzdLNjFLMVJQK3ZzSzMwbjJzS3pC?=
 =?utf-8?B?dllYZTRWT0ZUcHV4VXVuWEl3Z3BTVUpqZHlYNVJodHBqMnlBcG5LdTJYNWdF?=
 =?utf-8?B?KzN5bldIbUUvMkFmRytXMjRiU1FCN08xYmwrL3BTeEJPMHJNaG1vbU5qQzAz?=
 =?utf-8?B?Skl2dktDSFBWZ0FINDVpSlEvL0tjREo3c29JdWlSc1JBazcwNTZZVjdEOHFG?=
 =?utf-8?B?RFZ1NlpQanYyQ3Q3SVhtRktpVkNQd1FvRURoazgvUVRsNG1VYmN2TWlnUEhw?=
 =?utf-8?B?ekhXZnM0U3M3dU13eDdkM2RRSTNxTGp3b25vaXRMT09CcDdHbEdWNlNIWkVO?=
 =?utf-8?B?STdNZG1GVWNSbmM3Z3lQa1FxcHRqM1ZsUWVqWmNHS0FYTXRVS2wxUVRsSDhE?=
 =?utf-8?B?OXFyL0lBQmJRR2s1dUcreGxvNTUyMjF1amdENnN3WDZQbDcyOFNQb0VEZXM5?=
 =?utf-8?B?d1pZdHhiZEEzUjd4bllvWHRpT1NBczZuNEROMGIzTHdvZWsydlA2S2hHdmhp?=
 =?utf-8?B?N1BUMUJzVWZ2Njc5YWFNd1hNTmlQWkFIb3VrNUp0Z2M1ZXdtNGU3NW45RHFT?=
 =?utf-8?B?UzZJNm9Pc29SRGNZN0poTzY4b0dUQUFEZ0FOYWtTL1o4dWJNTWQrOHVNbTly?=
 =?utf-8?B?a1BrcDQ0UkR4ZzhreSs1aVVJdmJLMldvcHJBYitOTVNybzdJdlRvQ1U4b3Zp?=
 =?utf-8?B?cVVYNVlwVFJQUTFYcGVzRk5oL2JpV05LYmgvUXdOWER2cWlJOTRIVW9sWi93?=
 =?utf-8?B?RjM1TUYvSUVCd09tL3hTNzFFS0dvSHh6RjlMYUx5R2R4T093ZlVTWTlIU2VS?=
 =?utf-8?B?RHlCRDBJaE5kZ0toQzk3L1c2cWl6TzIyUU56R1ZLRVpRRW9wbDh3dE1pM3kz?=
 =?utf-8?B?c2RpV2wrTk5GVVo0R2xFc21iUDFnWWExWE1ReU1ubWV3dWh3cERkTG9GUDcv?=
 =?utf-8?B?YWFvQVRqZjJIRWxkb2kxdWhmV1RWUnoxNGlFQjczMVFtbC9ucmJxWkxNaGlM?=
 =?utf-8?B?aEppazV0K3h0UkdHYUlXRXBDOGorNUpWMlFUMDBPMElVR1Q1UFdTQWx2RXU4?=
 =?utf-8?B?UW1nUW1uVS9TN2t3alVDOEYxYkg2dFRJQ3lqaiswMlNlbkJQTEowMm5Eb1Ba?=
 =?utf-8?B?N0dYUUpJOUYxMDVRN2NtRWJCelpJY2lMU0puV1djN3NMdG5QTnpIbEdpOUht?=
 =?utf-8?B?R1RuRktUcXJUV0FjZm16T0FGK2pnUWVKMHo5Z2VtcklnZCtqTDdHTnhwWDJt?=
 =?utf-8?B?SkdYRFhHL25mRjlOclRuYitkUEFxQ2oySzI5TDQ3OElDSkJOSWpXUmovcUgy?=
 =?utf-8?B?dHJNbUlVNTYxWWJxaW1renhvN2Y1UkZWcVBtVWNibnNVTVN6aThoSEZKSGYy?=
 =?utf-8?B?UEw5RUlEcHZoTHk5TFNBK2NJWDBXd3ZxVFlPWi9vOEtOUTJISlJSdzBtN3hN?=
 =?utf-8?B?aVd0VEJrai9BejVaeStqL295K2VmWXEyMHFZc25KR1hVT3p6c3RvTDRyWUdn?=
 =?utf-8?B?K3RadHdiU085dXA4c3dzc20ySGVTa21QVnJKYUJxUnZ3SmV1amlmeXV0SEZO?=
 =?utf-8?B?U0llc3Ezazh5cDZVelRqWE50ZnYrUjRST011SG1mYS9uQkU1TTVjdjBwQlJm?=
 =?utf-8?B?b0xSL293WVRzSk4wMVlGUEZwN3BIalArbTdJR0IvdXZGNWY1NWxlZDhjelN6?=
 =?utf-8?B?LzNuYmNtRzA2RGlWUDF3TktBcjVFSXdaeTlFU3dpV0JhWVRvUGRBYnc1bERB?=
 =?utf-8?B?TEdpTlE4clA4ZkVQTEtzR2NpeHZzeFQrZzZXaXZDVHNRS0RKN051RXhibmFG?=
 =?utf-8?B?MTdHdmpJMlhxdjVXMGpwSjNoMGt6TVpseWV4ZVRVVUlucnJzbHljR3BlRSsz?=
 =?utf-8?B?di9mTWVqQkJlZG00c0VTdk81czZOMCtEcVh0UUNocUtJSTNuckFYUzFOZ3hU?=
 =?utf-8?B?Y2xBVjFPTytvNUlrMElCdktwcHYwYzRwWFlic2w0QUIwOWxVTURrekt5a2t6?=
 =?utf-8?B?d0pqN0JlRUtSS2ZidW12QTlQeHhudUYzZmtRL0ROa01sTnpmTWU5aWVXUXNs?=
 =?utf-8?B?NXRrUmhhZVdjaTlGazA2MGtZZDMxcGJaQ2JRQVpaM2lTRldQaVZFUVpvOFU4?=
 =?utf-8?B?Q0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a6adf5a-1ddb-4468-e340-08dbd0d884c3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2023 19:20:56.3209 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WzddD3UOCWDW9PZwm8MKoBYRbWlYBmuCVBtSRrFEjn8x8fXBfY5omGTS7LBudMOVkfS7Rvm44E1eCv2ZKbPbg7KdtMrFr35iGY8/fZYkxug=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5637
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697743571; x=1729279571;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XaxEcXHfBbZZKHoO8PXCigo+JfBn17REvpbEhAhBSGc=;
 b=nO/mKNNweEOwKxicS0m1gxR91luK4BoDmYnXe0cCBUhzn6FFtu293xIc
 gavc3PenKXwiZKWORsOEIZ00ACzdq6wbmlwFbWm/2O3VXU6jvL0z+CQYI
 C7GastLmLwzzgFjJz2XZylOobmxI8F3VfaTacqz3CcubAQkWaZ/AAtbYL
 s5LABhkUH3onMTUEzZcOGNWmJ28E4wa/dqhCNxK4eNNL1EMEzCl4W7NNb
 BYr/c+Kdbv2zDizydC4FC/tUSDXtHIsEHVuGrnE8sPdEVs72kvTabLwQ/
 3LVc2UIrgz0gbYY02LllUi31GnMOHm6a6rrpxPhKgHXyh3uPXoZL52K/j
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nO/mKNNw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Fix
 I40E_FLAG_VF_VLAN_PRUNING value
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, "moderated
 list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/18/2023 5:30 AM, Przemek Kitszel wrote:
> On 10/18/23 13:26, Ivan Vecera wrote:
>> Commit c87c938f62d8f1 ("i40e: Add VF VLAN pruning") added new
>> PF flag I40E_FLAG_VF_VLAN_PRUNING but its value collides with
>> existing I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENABLED flag.
>>
>> Move the affected flag at the end of the flags and fix its value.
>>
>> Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>
>> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
>> ---
>>   drivers/net/ethernet/intel/i40e/i40e.h | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
>> index 6e310a53946782..55bb0b5310d5b4 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e.h
>> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
>> @@ -580,7 +580,6 @@ struct i40e_pf {
>>   #define I40E_FLAG_DISABLE_FW_LLDP		BIT(24)
>>   #define I40E_FLAG_RS_FEC			BIT(25)
>>   #define I40E_FLAG_BASE_R_FEC			BIT(26)
>> -#define I40E_FLAG_VF_VLAN_PRUNING		BIT(27)
>>   /* TOTAL_PORT_SHUTDOWN
>>    * Allows to physically disable the link on the NIC's port.
>>    * If enabled, (after link down request from the OS)
>> @@ -603,6 +602,7 @@ struct i40e_pf {
> 
> such mistake happened only because list of flags is dispersed so much :/

Better yet if we didn't hard-code the bits, and instead defined them via
an enumeration so that its not possible :D These aren't even ABI so
there's not a backwards compatibility risk either.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
