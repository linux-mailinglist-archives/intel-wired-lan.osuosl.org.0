Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB3B57CA30
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jul 2022 14:03:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9256D84751;
	Thu, 21 Jul 2022 12:03:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9256D84751
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658405016;
	bh=gi1CjVkmGdquQ/X4+kUW2zOFib8jWKSHX+cP6GDdCJY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aQ9fIIehbrEg5A0L1z4WzFUO+EgpGlaq57GCituRAwBftjsxsb0wrUpxl7IhtE6Ot
	 enna8Db+XTeY5xUcboh329hV4anmsMEQ7ILAMXfsjpTKnoO6uYgiJY4ypqfGQDwN68
	 1trYKyPRg2pBxjXd5to5Yik3rlsRCBCIiQw+flSNA58G29SHfX17V5npf+l/d1s5Zv
	 DJPLKQ3NdoQEExNYXOMZlaHeqv9AjGDUjtsFl6mOObVCDJghfCk0x7MUp5spxnNXIX
	 yvPedYTxpGZTGAdD6wCEmmy2JXpZV2JmAO48MEzUL5ON1RJHkjJMm+qeHCAB/is/qD
	 qz4R8SFpg1tdw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iFVkpOlhBeZr; Thu, 21 Jul 2022 12:03:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 77F0E84750;
	Thu, 21 Jul 2022 12:03:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 77F0E84750
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DCB921BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 12:03:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B53FC84750
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 12:03:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B53FC84750
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bbAKTsYMKrIh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jul 2022 12:03:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B480C8474C
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B480C8474C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 12:03:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="267423433"
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="267423433"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 05:03:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="844389092"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 21 Jul 2022 05:03:29 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 21 Jul 2022 05:03:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 21 Jul 2022 05:03:28 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 21 Jul 2022 05:03:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f48huAjUQ+X4Mk9/bZruzlMx54gUFzGPU6DCunlsDgBH2v8lUqsYRhHyz9H3v0L/+UQ6RzHNNLJMaOIaC2jUhnmspVYMs2hpyKsZeODYLrs1ncs0PnTCfe47QuKfq2jBnWCv9anQWGNcGQ8x8dGMvYp3B77rg59ZYtcSfQLSHkUmdNk9qs3j37506gHaYCEfIkoxbKUkp7onRUM1IfxUHoV7Hj3ecwAtyHk0LWfCfYNjSindsx2GLWFQktzCa1PZ0GLmZ6I52h5uhlSLpSG9682LMvFHh3QEOqaqSPzZRi/sHyYdFwatirA7K/V/mV/aUJLNfsDhMLGpzRPTWpYdHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FZj5Y/OzJYRtAUIJWOXJHxWmq3QvLazsWom7S9pU2zo=;
 b=jMbRnMmdeK/YPzCCtZh6C8RxlAh32NxdCBpshXNie+q5j+JtjCJVwpl5gQoSyvkJYwfDTUVQ8Cp/iIIpTZR/4Fo5Msxzzlt+QntP/GbqZEC47o0FjJwGEGJbzVQfzl/Pbqp+t4BrWQyXtMJELoV9lPb1ULYIs1Z3F2xJlT9Gw7AskxDD1pXIysuWK85xIRxaikikHyyjH9jiCWUSs3GorxXdfo6tIta4UzTSehgxFWc0x68q+IPnQFSmOZ349RN30qKzmTatPP/+Yx4JpVXvpH1Gwah/J7kvXcKfcFouJ5i/nrWVV795LrZbRhJsE0DuDB/Xdojmx4/wO6C9dDmUUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5603.namprd11.prod.outlook.com (2603:10b6:5:35c::12)
 by DM6PR11MB4514.namprd11.prod.outlook.com (2603:10b6:5:2a3::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.18; Thu, 21 Jul
 2022 12:03:26 +0000
Received: from CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::5008:4f0:1078:7ba3]) by CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::5008:4f0:1078:7ba3%9]) with mapi id 15.20.5458.019; Thu, 21 Jul 2022
 12:03:26 +0000
Message-ID: <0a8916c9-0dae-1138-de60-a35411e775de@intel.com>
Date: Thu, 21 Jul 2022 14:03:21 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220720144004.14250-1-michal.wilczynski@intel.com>
 <e25c8680-b194-5a87-9e67-744e3337288c@intel.com>
From: "Wilczynski, Michal" <michal.wilczynski@intel.com>
In-Reply-To: <e25c8680-b194-5a87-9e67-744e3337288c@intel.com>
X-ClientProxiedBy: LO4P265CA0155.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2c7::7) To CO6PR11MB5603.namprd11.prod.outlook.com
 (2603:10b6:5:35c::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 34a17342-da19-419b-41b9-08da6b11048f
X-MS-TrafficTypeDiagnostic: DM6PR11MB4514:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Mh4DWWusVrCB/M17kHdLJkli9Uk3fkh/T1+g1pY2+u4aIMjlwynDPZbCj98ufp+DlmaNp1bySbB2erlXOFu9/9ln8fc9y0Yg7AhN73Bg/TpXdgTERdOoE42+89eOoWgkwjNRFmLWfGgGtHwOuU2n2RR7jmpL0hAffaOOMqUaMC+6/4wmBq6wjzLAvi1JpzuLYFIGGq9BXgFFdZiAd6S+9c2nntRAVE4qd0+iZi123q/KS44mY6Oc1yQxluBRtPIjFEQ9THuirU3RTUDcUm1Ps5eiwGCsG12HNQPDOSnMYIBIASzMtnAz1pE3Aoui54dKJ9EpwiF4vao3ZuzkQ1HHcw24d3WwCDzCSFKVMokz8QLTiedqEHGukfjGtLIDkRr7WBLC7PNBy4gf6E+C2ozD7yQ3VX/7mJFfinIAN6L+ZPmlBODqAQTDS4V0J0ClBfLergYXGwTmcALBbiUBA21LL2NH4mBdGqKk9jkc9TCfyBFmovXVzFUrtxj6Why+xg+GXIEey5YR10d47QXQUWRJuuo3/acKWfRYjcrWaI/MsNfOudrmMHaszkcybeZhOSGcbKlXdjey655xFd5Bp3j80T+JP+qg/40kL/ecc/Hih6x8wFwpik/b0MSd5D1fM9hRro9Sl6x71q98J363BC19R7IbeAg8kydv6o2961MTDbZ49un41CbI0mhXtFx7YLP3wNkXTwmO6uR5MY1piqrYbnR6GgVK9RhTAAuLq0W+CrsojPnftMCCQE4F581/3rgYdl46CH232JkoNw2gPnb7rXuFzubbY58E+zPP0fVcoMxCyT4dY74bPvb/MkM70Kq0DnrpbvNvKZE7Jhdka9b2TeLaxJoAFx25zGd0KF/ywRQfpJT2/QPr+LdyH+doGpG5M3sJlRWP3zkD/tNN69Gglw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(396003)(366004)(346002)(39860400002)(8676002)(66476007)(66556008)(966005)(66946007)(478600001)(316002)(6486002)(4744005)(2906002)(5660300002)(8936002)(53546011)(31696002)(36756003)(86362001)(6506007)(186003)(38100700002)(31686004)(82960400001)(6512007)(26005)(2616005)(6666004)(41300700001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aElnT1JSdmtucU82Mm9vYzFTTS91ckxERnVXZUFtYktRaWpaMXdHTmEyamw2?=
 =?utf-8?B?MnBnR0VaRStQOHBrYWVxVHNNbndXU096dDFmWFFjem80UHplOTM5ZzVtRnN6?=
 =?utf-8?B?YlQvdE8wWmRiU2d5RWZjNklZbGd3NTRQc0xValY4RlN1b0NoYlNHcSs0dW5Z?=
 =?utf-8?B?NWczV0RDbEpacy9rZjgvZk96QXNUaTdBMWpEdWVmQnhNMHFjYlViazlhenlE?=
 =?utf-8?B?QVlCMkNNZ01OakdoeHU3U2labDBrU1RJeWxmNDZhZk1TVTZlMWlrUHV1cTBr?=
 =?utf-8?B?VmNCaXdWZEFzNGNNSXRUWmJ4SnFRTnFIK1ArTC9BczJGUGFnSEZVQmVmcnRj?=
 =?utf-8?B?a0JZZFJZWnNqV2wxMzlvbGVqN1JnUXZPdXFqdFMzNFlTTlBhbWZWUUo1QlpJ?=
 =?utf-8?B?d0VEMGlUdkllZ0hwTGtjRmQyd3cyOEUySExKbXlOVCtrc28vb1FFWWYveTA4?=
 =?utf-8?B?dzN5NjA1NWdSdFBGcnBYcG9xaUZWa0owL1g2bUZUczhBT095TDcxVzA0c1E5?=
 =?utf-8?B?ektja1Y3TC9RY1IwRFB4V3NKVHNNWDNuWSt4eUgrZmdSTVdtbXY5STlMYzVx?=
 =?utf-8?B?RVNMQ3dqTG1oVS9hWUhyRThKMGRpSGJGQ0NyZkVvbXdZVG52MTIwQ055OFVD?=
 =?utf-8?B?bGtmS0x2ZzFvOWRMOUpHNUlQV21FVEIxMTJEUy9SMUVoQzFxSFlTZzlzUTJi?=
 =?utf-8?B?ay94VHFCVEhPYnlIWE9LdzVUK1ZQT280dGNyK3B4WFRhUWxMSm5NRWxDNG14?=
 =?utf-8?B?K0xMdUxEYnExNjFrWWU3NW8xOVVJNmp0cFFuOUpxbldFYnNYZUxVVVpoaDND?=
 =?utf-8?B?UGJCVVNCM3BoVHBQR1JXekd5VXk4Y2VUTHhEbWU4WXdWL0FYYTF3bDB0MjFz?=
 =?utf-8?B?RHRtRnBXUnIxNmt1NGc4U2ZwYUVERGtCdFlTdUZGYnpMQit1bE4yRmVGNzQy?=
 =?utf-8?B?dTFwTjM5bUpXLzNrZTREVm1LMFhyYTYrVDVWbkNvQmdERnB4Zkh5eGFNcTA4?=
 =?utf-8?B?OHAvUjJsSkxGVzNzaHB2ZzlHOW9zZnpmUWtwRnArNm8zbXAzQUNQQ2V2WDRL?=
 =?utf-8?B?L2VqbkdtVzVodEQ3S0UxZm9wa3ZrSDQzVlB5TjN0UWIxOVFBNlByaEliU0Fi?=
 =?utf-8?B?VkJ0bnlta21ZS3Jlck9HbDEveHlva2lxaVc0WnFVRzRndTN1L3NyLzlxWWJo?=
 =?utf-8?B?dit3bjJFbnVqMjRvQUZadEpUVGY0eGFmTlUrVzJaTmMraTlnNVlLbjZ0eWxr?=
 =?utf-8?B?Rkx5eVEwZFN6R1E1SVVhUDhSdGtxd0dNS3FsZEVVUU1lRzU5NzVYQzZTbjlL?=
 =?utf-8?B?R1NKOWovUGo4MXRrVWdxN00relZwN0tXbXhXTWJxNEVGM3h1SHdKR1lwcnRB?=
 =?utf-8?B?dHdPcFUvak5xdExQWGp4b21rTWQvdEVjK1RsNHUvcVZTbnRPU2tUUXpHeTlC?=
 =?utf-8?B?dS84MFNUd0dqVlArYXZ0VlN2UE9EYjRkM1B1VVhvWnFkbEJBajRuY0g3dHdm?=
 =?utf-8?B?RHFjZmpwQjRGWk42ZTF0YUR1aWxubTNsd05mZHc0TEtzdGI2THYvQWVoYXlM?=
 =?utf-8?B?WVlRa1RxaFpHNFhNZU9raFRXc3NjbnpZTCtzWUkrQllPdlFPcm5VNzZWVXBL?=
 =?utf-8?B?KzhLdVhZb21FaGZnTEEzU2NpbG1tNEwwZ2FudnowRElJVFVwVks0bkZvK0Vv?=
 =?utf-8?B?VHd1UzBIRGFmc1BkT3NoeklzdmF3YkQyR2pRVSs1RDVyOWs4ditYTlB4Vjdj?=
 =?utf-8?B?cE10anY2Ylc4cUV0bTN4T2d5VlBvUWgwb3E3ZStyT1NCVTR6akYyWmRDQzZJ?=
 =?utf-8?B?SEtIZ1M0ZEhRQ1Fwdy9MRGU3TzJKdEJ2N2l3Q01lK1JaS2hJbkNERURXSldq?=
 =?utf-8?B?M1lNK1lwTlRXbnRmc3Q1MndRcHpkT294cm10aDBSaCtLY0RBMW1EeDFqSjhM?=
 =?utf-8?B?K0NTd0JVL1Z5ZDUzejJvTXR1YzlObFBOYmxqenprS1I5ZVVVZUlITXVGd253?=
 =?utf-8?B?d0c1RkFJYU9uRWFtSW1UNGZsaFBKbXpBT3ZrOCtqZFFyREt4dERQWlhOMzZ0?=
 =?utf-8?B?MDhlbVNSY2dKb1Jldkh2TXZPbHprVDBhLzhvajhLZGFUalprbmsyUVBnTlhE?=
 =?utf-8?B?M1p5b0JTLzFEaDEwQU1aRmdRelBUMHFvREJ2dkhsK2NROEd4bnM2a2RENXhD?=
 =?utf-8?B?VWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 34a17342-da19-419b-41b9-08da6b11048f
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2022 12:03:26.4116 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Lx0D71gvu7Axrk0hExpPpihwFfMcI8Q2JEt51szUgfZ+Y8IjU7BUuU4RKvsRUbMC6UBUQVuok493/heMYN/JyYOC6FH43SWOLgiY47Mk1GA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4514
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658405009; x=1689941009;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=VCExppwS+uTpx/vFPksplAkQUx/W07oHnWBACUMFsWI=;
 b=Mrz1EbbK5gf9HbvVCqzwWD0mQ5H1DRrgE76u0ItZzJoyD0HnYlxsoIdI
 LB/0VFQvsUu1K7fYsg0a1Kd0TLMNz0lzQ440HibDFiestqQgyGyHep9S3
 kBn2vJi7kVc87D7h1MPsmzdZMjw4W+yXaPtoLJIkQvrf5uKDYxWAXSAdl
 zeWaV5o5u1gozgkmTxGMYGm6c9YYqLoH5hbe2rqB+/n0hMiYOPLYFSVmo
 Re8/Zi7iFo6/pHKLyg4JzMomIFzHQyhwVXT7RBslpnMsfaXkPkbgYYU8x
 mk2BccXVIjgksLpXhaJi6kYBdYqcR+ov5rRgkGhYiPZXNeebDiPNH82pu
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Mrz1EbbK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 0/4] ice: Support 5 layer
 tx scheduler topology
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



On 7/21/2022 1:17 AM, Tony Nguyen wrote:
>
>
> On 7/20/2022 7:40 AM, Michal Wilczynski wrote:
>> For performance reasons there is a need to have support for selectable
>> tx scheduler topology. Currently firmware supports only the default
>> 9-layer and 5-layer topology. This patch series enables switch from
>> default to 5-layer topology, if user decides to opt-in.
>
> Are you using next-queue/dev-queue[1] to base these patches on? These 
> are not applying, however, they do appear to apply to net-next as lkp 
> is able to apply them to that tree[2]. Please use net-queue or 
> next-queue if you are sending patches for IWL.
>
> [1] 
> https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/log/?h=dev-queue
> [2] 
> https://lore.kernel.org/intel-wired-lan/202207210108.7ZpVcgDQ-lkp@intel.com/


Oh sorry I am using your repository 
https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git , 
but I was rebasing against master, not dev-queue. Sorry about that.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
