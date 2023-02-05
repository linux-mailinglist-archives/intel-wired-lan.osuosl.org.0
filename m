Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7142168AECF
	for <lists+intel-wired-lan@lfdr.de>; Sun,  5 Feb 2023 09:06:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F37FF812B6;
	Sun,  5 Feb 2023 08:06:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F37FF812B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675584382;
	bh=OyMROnyJGEVEZV9bnsie/kk825RESWi/8/AmtwHCBko=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AleZYqYFzMikU4/AOXU40jBtMMeICfYzt5QHs7BJshQr0OZgjKeZ8pSm4oytE9QdJ
	 n/nQlVghCwfjnb9emuPcS8AgpNOcotDf6xsnXJOCSSPQrOC6mpkXmNBuLZv/VV2s20
	 BOHEElOP4p5DPUDe7YxbxciV1DqgcqvckBgUBgthmdTZDc+ztzptxhVj2qyZD6tElW
	 eGWwIRI7h9mS2NM1ut4k6cZbrU9gvWOQtIPk3x63AGBdH2any5sd+rfF16b+Rl9yoH
	 TAqHqlAy7Tl0oJhzCDXxRse+fAZ7iCnYo1lSOJ3dx4ahthewExu8ocRNf3G0QG4Uma
	 ae9ox6aYaEXpg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2W7dMzuDNu2Z; Sun,  5 Feb 2023 08:06:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C26A81388;
	Sun,  5 Feb 2023 08:06:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C26A81388
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A07821BF20B
 for <intel-wired-lan@osuosl.org>; Sun,  5 Feb 2023 08:06:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 77E11606DC
 for <intel-wired-lan@osuosl.org>; Sun,  5 Feb 2023 08:06:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77E11606DC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vpoD9wiMj8r5 for <intel-wired-lan@osuosl.org>;
 Sun,  5 Feb 2023 08:06:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 475B1605D5
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 475B1605D5
 for <intel-wired-lan@osuosl.org>; Sun,  5 Feb 2023 08:06:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10611"; a="317030974"
X-IronPort-AV: E=Sophos;i="5.97,274,1669104000"; d="scan'208";a="317030974"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2023 00:06:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10611"; a="808795071"
X-IronPort-AV: E=Sophos;i="5.97,274,1669104000"; d="scan'208";a="808795071"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 05 Feb 2023 00:06:11 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 5 Feb 2023 00:06:11 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 5 Feb 2023 00:06:11 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Sun, 5 Feb 2023 00:06:10 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Sun, 5 Feb 2023 00:06:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jyunkPHUUIBg+Ze3LOgNPWXL8+2RmgrqXE/HEmTXWn6Rxe/irSyFMFHPanxrsmFp+Pr1F94pME0aXPU4FH4GmdJ2gkxJqrmIVslvmdeDtu/cB5Xo63d/aC6GNwX3uSfBx8wltgxjE8k3KAV06pqsvYEOVMIQAYNHyhxblcN02B/5OLpO1BLfDAI5vRHEygQdQXfhPpx9cSsz/rUjRlfv0b4LNH8OC89f8qK1xFIT1uxGyiNz2nwR71RlyHAl8TXmEtQTg6FmqOC4O92Z8JsvX92oLf/3FxZwWcDa7dUW4zGJ9q+WrR4JZOb5s37HKer618ToCUNN0bqWVIo4bj6fUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QwK0duQID0bZbjX5Lsf/5LzAzB3VwWC2PMI9GT83I1Y=;
 b=hl9F1o68Ss6EAi506lw92PgTIjnXR7aFC8D/JQUehfScGOmyz+LaETkRHYh5E+WmvCqVYDmVNDrHZ0050wraD8OneFG3H8tQQczXAytG6vEb0Fs+arbpMU5yjBr4Ymz+b+74r00A9AqnfqP006ObM9mQcL0zB6PI5XKRiOL/wPz4q6PswXU6pMJ3vkaUdhtamGBLt7VH4+6OOB1rsvZ/4K2THLCXG7Aae2OWVS3ajuOHnYFuNkjYv7Y0HRRganLVcS2VCYxzo0fSdkTTl2aSlorosdF1ysCnjZ6dOGKQdr4LXsi2hYn+oSzNsPeO66iFuhW6qZWPERrZ7abuUlzcmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by CH3PR11MB7796.namprd11.prod.outlook.com (2603:10b6:610:121::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.29; Sun, 5 Feb
 2023 08:06:08 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::68d9:b7f2:6312:6aea]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::68d9:b7f2:6312:6aea%9]) with mapi id 15.20.6064.032; Sun, 5 Feb 2023
 08:05:56 +0000
Message-ID: <f48962bc-9216-fadc-dd5d-f07e8e9b6536@intel.com>
Date: Sun, 5 Feb 2023 10:05:48 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.6.1
Content-Language: en-US
To: Lennert Buytenhek <buytenh@wantstofly.org>, <intel-wired-lan@osuosl.org>, 
 "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, "Meir, NaamaX"
 <naamax.meir@intel.com>, "Mushayev, Nikolay" <nikolay.mushayev@intel.com>,
 "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
References: <Y926GPvm0f544ogG@wantstofly.org>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <Y926GPvm0f544ogG@wantstofly.org>
X-ClientProxiedBy: FR3P281CA0205.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a5::17) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|CH3PR11MB7796:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e62f122-d07c-4795-1e43-08db074fcede
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 70uNpWVziMT6X4WaoicB+eJvaa+YK1imdUX8tKPOi0O3p9CUK283sfiZtgjFZRfZBlUpiRfqmAenyIzEygSqnTvZt9grJP+26dQez6dGR8Gt3id8BsPeF22m1HMmrAVc8+nb5g3MFG00qwq+hh0gE+gew0R1b9tuEvUFaGvUmweVBFq0UuI6L3FUWSHh7vpCoykQfqg2StDKyQFZOF8yvcVUAS07yXibK5X0A2nOh1kkCG4YQRD+pnWX1YV7M1Gom7GzeB94uwqQyNFTeBODQyopWDQWBameSGgnxePMRolZOZcvdjMhobfcDtwe5DreCpnNP8NY/DKHblVdvJxrD5am3vCKM6uinY2Jj1S0jtasZURD/jdvqegV1EhMXFeXFgCbnFhtzl7btuxGPNcMAo6iZwxnGTQffVC2QJyfdnJMlnSjNWomCeKwiFZGC4mdC8IK6vVHJvxQCm1nf4Hzc7qBn54jnSTCXMOhZNDl7q00ShHlbGhEkrDCjde/rQpkerLo8hCl4fqU2+pSlfojUOhMu5XY/SPz2gucxZYHNmY4flGJidu0IXhgtjAbP/dv8dzKJXa2zNTXAsTPUmdM1v3W4C1k9UyfuYPnCM/Q1/kZuCPGrn3N9ehQWA16H2JWGt4C4s4fZvNEX9zo/vCSHC0uKCjvOQJhj0Nuxxrsu+tzBI41NzfJxc3cn02GrbmFbwYhFjdfzKnnDp4QBUk1kKZ+js+/WFgPvV+FUy2fwUj1ofpZm0efYVkkHrtNM81YWXM0e6E+0ZV6J/gE81uiMeaiaNLBVqpGoT02qn+Ei78=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(346002)(396003)(39860400002)(376002)(366004)(451199018)(31686004)(82960400001)(5660300002)(186003)(316002)(6636002)(110136005)(83380400001)(2616005)(31696002)(86362001)(36756003)(921005)(966005)(6512007)(26005)(478600001)(38100700002)(66556008)(66946007)(2906002)(6486002)(66476007)(53546011)(6506007)(8936002)(6666004)(8676002)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VzVDbjVHZzltMDBEbjN2QTVqTWhZL1hZOHlYWE1Jbm1xd2NLSVZLMEtnZzhw?=
 =?utf-8?B?VlJwVW5SRUh6TE9EVVhQUCtzQnk0T1UxQ01TTnk2clV2ckxzVUlkalo4MXhy?=
 =?utf-8?B?NlluWld1WkI5WkdrWW9NUHRkdWlJVFNrSlBTSVB1MkhuTTA0UHc0RGVGY0xS?=
 =?utf-8?B?TEUxSWk2ZGxBdVRDeVNaVDdVTE8rd1pjeU5xblV3MlRRd0RrWVR1UERqUE9Z?=
 =?utf-8?B?ZkxGOThKb3NZelR6WmhwNkhJMXR2ZDNVck5RZ0FoZ29BUlA2U1BMdS8wM0gy?=
 =?utf-8?B?V0tPS2NPRVdkWnZCbThIVExXNnArUmV1SUhUM3hrMkt4cXdpY01vWElqQ0dy?=
 =?utf-8?B?T2RNOGZNYzlPRFZIR21ETWMwV2dYOTFQWGNPWjBGbjU3S1RUOVByRHZCblRz?=
 =?utf-8?B?azdRK0NDbXJOaFdpUDZDQmlrbTNXd3lLUkM4V1hoKzBPdzRFcURvaE9OWlBB?=
 =?utf-8?B?empwOFo5TGNJS0NvVVJML1pJM210Nnh6RXc3SjkvTVJBcTdENHZPOVk5azZn?=
 =?utf-8?B?OUJwZURjSXhxWFR0NDVMdEkvcTUzRHJMMUl1WkJnR281cmo4Mnh6c1FnZEZX?=
 =?utf-8?B?akdlQ3RZaS91WXlwSmhiNGd2T3NsSmhmZnN3R0xyZ05tQ0lTdU50S3ZsN3hF?=
 =?utf-8?B?OW1IZk5zclFNYlFHUnpNOXM2UkVRVHdIQWYyL0tSRCtsRFErem5wTW1JSXFL?=
 =?utf-8?B?em5RY1R4L1ZDL1dBS2lQWmtzeXQyci9XOXl6Z05HMDc4cW1zalpsd0xrVmUr?=
 =?utf-8?B?WVVCNno0NnNiRllMRDZaa2xjTkMvUHk4SUM4VWI3a1NrKzRFejl4TlBuOWcz?=
 =?utf-8?B?N29PSWRHcnZuTGQzaFc2V0RPZlNpc2ZZZ3pEaDlEWEtjdzd4Q3hnMnJsc3Jr?=
 =?utf-8?B?RW9teUZTcVJOTU5uZmxUQXlKejBIRmpTcVZzbFpFWU5tQkVTdnZJK0FtQUJJ?=
 =?utf-8?B?K25LVlRwSTBNQnN1TjZ1MVA4ZmR6aE1Eenpwb25XRVpibEtLbXU3SXBNbnR5?=
 =?utf-8?B?K1RZeklad2V1enFKdFZNY2lraGRNYWs4TkVIaHdwRENxa3pocnhaaTQ1RWVu?=
 =?utf-8?B?VnNmQjFkaVdUM2VDVEZ3NG5UNmlweFBNWnJZcHkzdmpYend4QWRISTVhM0wv?=
 =?utf-8?B?a2JFWG5QU2dacUk1bXFYNTNweDY0SU9vVGJDa0lZUmN6VXVnaUF1OEF1bVZV?=
 =?utf-8?B?V1F0TVJqNVFtN0gvV2kwMThYOVdabW9QZDUxYzZXVnRkcy82dWUyaFQ5Skcr?=
 =?utf-8?B?SElubEJmenpvVFVmU0tWNHRUcDNqU0l5Rk96cU1SV3dGanlFTkRraEcwTnlS?=
 =?utf-8?B?dTFWZHFiYVJiMDNmOU9pMmp1SU5uYWJlTVZSZldPS3ovcDJ5QjRkK2FsOUxx?=
 =?utf-8?B?cUl6L2tUT1B5VlF1WGlvQnlOWVVaYmdtYjFRblVIWHBCdUJ6akFCUDZmSUxx?=
 =?utf-8?B?T0JtOVluRkdrWkZzd1NxOERMUndTNGdHenpWV0VVVWhlNHFCaUpKOGxqdktl?=
 =?utf-8?B?MWN4ZFlWcnV0OWdvL05hcit1ZGc4RWJKZ01WZHpXbEJzOVNQRnVxSkFETXFj?=
 =?utf-8?B?T0hSeXdRSXBENW51RlFrOG9GdEpKY0NWZ3M0aFd2ZVJmUTcyWVBocEUzbWlP?=
 =?utf-8?B?MmYxNFNvc1lvYzhnNEVteGE4Wk1jak52UDNPeHBZc2JpTHBRemU0eVUvb092?=
 =?utf-8?B?cFVZMVZxSU9mMjhJN2JKeFJvVmRFelhnRytzTm41RzJIc3V4TCs0Rkw5ZHlZ?=
 =?utf-8?B?cVNFTkNKOGU5UjlLeGhIQ0NYQnBZNVFBOFZYQnBPSlcvS1B0Syt3R1laT21X?=
 =?utf-8?B?VStHeDRMOGhFbUR0azVTM0M3NUhxZ2NRcm9PTk5oNk0yR2w3QldCQk5VTjJJ?=
 =?utf-8?B?bGJCMWtJT1JmTlh6TXNZWnJEYzJlNWl6dURQdGdjeTlZNStnaUpQUHhmMDJN?=
 =?utf-8?B?L2xxSHlTODZJdC9MTGNNQ3BQcVMyOXBGVWp6cEp3ODFuazF6L0EvWkQxTjk3?=
 =?utf-8?B?QTVNa0pqYnlBai9ZUW9lRmxKUi80SG8xWmxocStGWU5Bc0VzM3FoQU1aY2Y3?=
 =?utf-8?B?ZHNSRnhlQ0ZUdkV2ZC9mUWVuK01tNmx1azlTVjNJL2lDUVRuZDJuOHRtR3hl?=
 =?utf-8?B?MlpQdGlWQmFMM1VuejRnZHFaS1J6TTk3NXBVakE3QkFPOFI0bFUyNHhxdXE3?=
 =?utf-8?B?RHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e62f122-d07c-4795-1e43-08db074fcede
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2023 08:05:56.3011 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YTUbGXM07ZnLzgwk3hxB8+nfPSI2tirzMmLpDUJW42enc9j7T4Yrcy96I0QQ5sEVV6pkbziiPdwN6E9NnaGQNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7796
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675584373; x=1707120373;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=qcAslaK5u48/3+qo7ncfBH4YH7H3i3hSruOtNVnladU=;
 b=J9j6CyfSuQ0MURTA4YydRlbqjbkvvCkEoZA2bBosQne8GTOKVschtZz2
 XF7siSRrHQKmNWifxTjDWJIZfnB0x4DwkvWTLCjElt9vqb2W4sCAsIyNy
 MiRXGZFzpA7bUVQ2gR+MxjzTvEA7zTH4NehqZ2jCLN8/zBOeDhdBdwhmg
 uYoDxiKVtIgNnAd6qHXMvh/gPa3pAlcLKMuclQCaRntO4ezF78jMZfUOs
 gXSI3O/Q6LNTCLc3yhrOrTKQ3mTBhQq5mZFZCNdkZmHNf0pSLo6pq4Af4
 hd+v9IMbOEBT03mCZnY6xMwGUG/LnjpAuRx1KgtlSKJ+fExUN+SAn+NX5
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J9j6CyfS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] igc driver doesn't power down the PHY when
 link is brought down
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

On 2/4/2023 03:51, Lennert Buytenhek wrote:
> Hi,
> 
> When I run 'ip link set FOO down' on an I226 adapter, the link partner
> keeps seeing link up, which is not what I would expect.  The igc driver
> contains this code snippet that references this behavior (igc_phy.c):
> 
>> /**
>>   * igc_power_down_phy_copper - Power down copper PHY
>>   * @hw: pointer to the HW structure
>>   *
>>   * Power down PHY to save power when interface is down and wake on lan
>>   * is not enabled.
>>   */
>> void igc_power_down_phy_copper(struct igc_hw *hw)
>> {
>>          u16 mii_reg = 0;
>>
>>          /* The PHY will retain its settings across a power down/up cycle */
>>          hw->phy.ops.read_reg(hw, PHY_CONTROL, &mii_reg);
>>          mii_reg |= MII_CR_POWER_DOWN;
>>
>>          /* Temporary workaround - should be removed when PHY will implement
>>           * IEEE registers as properly
>>           */
>>          /* hw->phy.ops.write_reg(hw, PHY_CONTROL, mii_reg);*/
>>          usleep_range(1000, 2000);
>> }
> 
> I tried uncommenting the phy write and that seems to work fine, and the
> link partner now sees link down when I bring down the interface.
> 
> Does anyone know what this comment refers to, and which revisions of the
> I225/I226 this applies to?  I looked at the git history of this code and
> it seems that it has been this way since the code was merged.  Is it safe
> for me to uncomment this code for I226 adapters in my kernel tree?
PHY of i225/226 parts managed by FW. Within the very early version of 
PHY FW observed some problems in writing the PHY_CONTROL IEEE register 
(power down). I believe it is ok to uncomment it now. I need to say that 
we still do not validate this on many platforms yet. I would consider 
checking it before submit to the upstream kernels (include wake up flows).
> 
> 
> Thanks,
> Lennert
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
