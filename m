Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 258C4806A28
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 09:54:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B40F82C75;
	Wed,  6 Dec 2023 08:53:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B40F82C75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701852839;
	bh=/gTso5soEfjm3CwmqrBrV8LbpYTxvx0esapdeOV6MeE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gM9yzW9KychQPVmRWveI65uu12vIxXAA250Gj4mc1CcJ1fR4dxAP8xGtnY24CJiE4
	 pG+10hchbirNwbWAw0ma3vrkyFrlleXsaydAPeFWTsy8duyYj6etI+BvFnx9xh0GmU
	 wbfdFSLDHp1FhbxQl8SA/hB6z4GwH9Tk70cuAK36wPWLbBiS9kMQjPUk0UHFgzGdO8
	 d+iQcQAfQgXgStxboO7ZpQrO0SronsXTcYgx6pnv/t0W6YdeZBnWtLx3me7qJdXJW3
	 xolsWqwQaPB9x3idkQtfE7P9XCEvl6mnIsVh2n8dL4EOo2kjXZu7ANZqw8/TVIhCC6
	 5ipJjzdflpWEw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 74Q_01TpXU4V; Wed,  6 Dec 2023 08:53:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4307082B51;
	Wed,  6 Dec 2023 08:53:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4307082B51
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3845A1BF32A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 08:53:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 18EDF40133
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 08:53:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 18EDF40133
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cZOPpEU6shPu for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 08:53:51 +0000 (UTC)
X-Greylist: delayed 429 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 06 Dec 2023 08:53:51 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 71F3C40120
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 71F3C40120
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 08:53:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="866356"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; 
   d="scan'208";a="866356"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 00:46:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="1102746227"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; d="scan'208";a="1102746227"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Dec 2023 00:46:40 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Dec 2023 00:46:40 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Dec 2023 00:46:39 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Dec 2023 00:46:39 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Dec 2023 00:46:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GRDs0LcPj+XIeSn1+VxG8xwn80QnNNWGz+bCRa5FnfcDmSJqxbHB6lIXDDZMcYbUZfkrjo+rTNg2A/V0QTiQM3NxF/W9K8GVbdA2vK2GXET8sBWGUGa7/LRhECR4XIakuOAukHGKs7qob+xXI6AJMMr6cWWD+h5JVbziZNsNTMleItPay3j1j9pqa2/wfuEisOgo2tw1FUzQC5oaIKr2599HXhSTs5KeZ7e8Na09A/eSbCA86tWT6gd0lx/6o4IbaKkogk2fHnY56l88zjBIu4y+La+Mzmq8No9yCdsiKwUYLKPFiLUJPD+AlXRjYbytT5xbXznet+nc7lcU04IMIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fg2YmH/knHcWczKxvjMnRtrg5S3m6JzkDkrV5DHpijw=;
 b=OLpx05ti8//KMoCTy5xDU8g0/5O3nJAilEFoYvjJ6DvdTICwPsW5DFsyrBtxr2SmvI43OQVsjNscllk5w+9NWnuRzS3P9TnbMaec9IAhjSS6pidDGP59AL2L/uCkUM7pm7V0/D2k6NsCJj4t+Xdslrd7r/n2C/AzqpqbY29fcpTmHI1ID53+mMWC4rlcX+0h5dR6Itn+9NP9uu+7WT/WB5ir2RH4sI7sshwPO1tYjprhuHwuiKgZZF8qYE+1vKaMIVRgJjXrY9bDBziVGg0onvtRmwTHL44gU2B6iLLayttmFQ42+BIU26FCRoyVewsG2nrpjouAm+a6LI65KOPTLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3674.namprd11.prod.outlook.com (2603:10b6:5:13d::11)
 by PH7PR11MB6524.namprd11.prod.outlook.com (2603:10b6:510:210::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34; Wed, 6 Dec
 2023 08:46:32 +0000
Received: from DM6PR11MB3674.namprd11.prod.outlook.com
 ([fe80::727b:4b9f:a264:1bb9]) by DM6PR11MB3674.namprd11.prod.outlook.com
 ([fe80::727b:4b9f:a264:1bb9%6]) with mapi id 15.20.7046.034; Wed, 6 Dec 2023
 08:46:32 +0000
Message-ID: <3e7ae1f5-77e3-a561-2d6b-377026b1fd26@intel.com>
Date: Wed, 6 Dec 2023 09:46:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Johannes Berg <johannes@sipsolutions.net>, <netdev@vger.kernel.org>
References: <20231204200710.40c291e60cea.I2deb5804ef1739a2af307283d320ef7d82456494@changeid>
 <d0fc7d04-e3c9-47c0-487e-666cb2a4e3bc@intel.com>
 <709eff7500f2da223df9905ce49c026a881cb0e0.camel@sipsolutions.net>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <709eff7500f2da223df9905ce49c026a881cb0e0.camel@sipsolutions.net>
X-ClientProxiedBy: FR2P281CA0106.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9c::18) To DM6PR11MB3674.namprd11.prod.outlook.com
 (2603:10b6:5:13d::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3674:EE_|PH7PR11MB6524:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c4b8450-3162-45ca-819f-08dbf637d81b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CNgxRwVpi7tiw/K3Cburz/ftdgOH8+GrQ644TOeu0vqWu2AeUt+wKsmdDK6DduX527SeLuaa0xWT6mWnuIzhjv3qsHyEBDTG5eoIev+S8xjEOOHHuaS1FT5bzXY1pVERclggl1P3ssrkw+9BsiEdyrsPRRG44BsplnRc70Jl2QAZTkYC6rsePE/KeMBK7vcEoGZhMbIv5vRyavUOcWASJcvUB8/OVOZpiVn7KCFmjNcj+F8nuqX28FE5eQfFhMKTZo5N25KY3Wiavca70T82T03vRGzpUJAdXmK2I/tzMh5o1tNZhttC6SlOBhA92wCwzPmCercwQF1/+B8+Jq8ZLm9joF6KTKbo/Rl0YtD/D0xSHTYRIxs87retiFAEKuEfIaUmSiq1sp5wCflKSJGsBDUhEA+XbUn9vlRjxNxGs6ZJFyzOiieHgGhEpP8ebJMOQjCtqVfqu9A7Jg9fPyZzh14fWBsprkdHYN3paEwKyFshil5/KkHIMDahsakOpHvrdjpNiZyyigTru+nLk16J+DuNLLhg2MMy4tWZM4jZ9EsSL+pIuJmWvHXMBPTuolWcL3fC8Hp7Jqr41bYr9hJaqUkmKz/uRRNwsML0rgiqp4Jv7lvzpjaOM08ITnYevM0e+mkY30lcLy5v3+9Lfx9kowi8a0evDatZdNZXhjjoF9xLx8iA2V9vESxd5qX4L8kCd5WeE7hs3JV+yXyW9VHwQrP8izkHEgwgUO6Kti19bt8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3674.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(136003)(396003)(346002)(366004)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(83380400001)(41300700001)(36756003)(38100700002)(82960400001)(2906002)(6512007)(26005)(31686004)(107886003)(2616005)(6666004)(53546011)(478600001)(6486002)(966005)(5660300002)(86362001)(31696002)(54906003)(66946007)(66476007)(66556008)(316002)(6506007)(8676002)(4326008)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VHVCSW44bEJTaDN4TUtLeHhrdUprVUI1YnZPTEY3R09DWUs3eDkzMUN0Rnl4?=
 =?utf-8?B?K21uVXNxRHl1RWk0My9RVW8yaXp3NS9rRHNTeUhWODhoUnA2SDVrK05kcTd0?=
 =?utf-8?B?MFhMbkI2RVQwekRWNjlvNFc1akVLM2xKYVZ0dlp5YVZZTyt0eTNjT1p2ZDEx?=
 =?utf-8?B?WnE2WC9ObENMWFVRWmRUMWRqTy9KanBWRFl4UFhOZnQ2WmROTlBmcmxqWDFS?=
 =?utf-8?B?bmhxSEErSndidXFoMGNvTDQ1cTZMelE1amtrWWdsSG85YXZ4THlqRFlOLzN1?=
 =?utf-8?B?NnFhYTlkYUxUSnZLRytKT0FDWU9VUlV5cUZubVZKOGZSSFFha0VSd2NCOUhX?=
 =?utf-8?B?RVBrSDVtSTM3b1p2WnFhVzlFYlhvY1hPN2lTUld0eCtabllHb29SdnVwUTNB?=
 =?utf-8?B?a1dBRUdPTUp6V0ozSDNxQU9Wa3lhMGNJeTliaWI0eklpMXRUb2lHUlFEeWFG?=
 =?utf-8?B?cDdRLy9YRGZQUVdUcnBpVUYvR2pjZnNjazdHOHRaakRlcFdqeEdwWVNEUHFP?=
 =?utf-8?B?QVFWUXlwKzFmcHVXczQvcHhkOFBETkZlRDU4V1ZXd29YSjFJMjN4MkJ3ZVVC?=
 =?utf-8?B?ZEtvQVM5RUs0eFZDUzRLVUhhS0lIMFhjeWk5NjZmVUZtb29GMXNJS2JqMDFz?=
 =?utf-8?B?YzJ3U1c3THMyQ0NtcTg5UkNpNFZjZllzQ1lsUzVJUVgwbS9rQmw1aFBRMGNC?=
 =?utf-8?B?K3B0aG5sSWluN2VaUlZ4d3VMckkxZE5yTGJMbklDWDVVSkpJUTZjb1ZDL2JD?=
 =?utf-8?B?Y3E5S1VlVUVaU25aUVdhYTd3OUxGc3ZhODVlbmwrZXJYd1JWNHVManVkYTRZ?=
 =?utf-8?B?VUZFU0wzajZ0UXNpV2pZK2dxQnJNRlhRV3o1Zyt5TXh5YjJyRHhYR3hvOHpY?=
 =?utf-8?B?SG9zQWVnWXhkd2pGWHc3SFA0YWNucFZ5QW96cGs1NCtTK0d0ZnlnNVNhMVRD?=
 =?utf-8?B?MDAxYVNRejVES2ZoVHVPamxjclRPTnZwQUxWcHh1NGhOcVp3c2cyTjFhL3pM?=
 =?utf-8?B?cTRJWENUUW5zSHVXaS91ZEdqcHRRSzVINlVRUExOMlNlM0RSODBGbWpLMjZK?=
 =?utf-8?B?Nm5QYmJSVkpQVDg3azJvenJUdDAwdFhBb0VwcW5OTkpINTJPMkk1TFJhbzBz?=
 =?utf-8?B?Q05YZWtjM0dKc1BZYlJzR2NHUnJaT3dLb2tOQVR2YVUvMFYzYkw5VENIRzNF?=
 =?utf-8?B?N05zbGthTlVFOWhDdVN4K1MrRXV2dVU1Zy9LRnRZNlowVmNWcXlEOFN4WFY2?=
 =?utf-8?B?UFlzVkkrYWtDRDJwSVd5K0ZBUmFnbEFkZ2dLTEhwSlRDYTRnL3E5Q29wd1B6?=
 =?utf-8?B?WklLTnptSHZOYnEvaXZ6cFRJTHdtSEVVSGErSVpQR3IwL2w5VkVmZGxRQUV2?=
 =?utf-8?B?WndERkpBNnN2ZVo0V096NTZSaUNDK2JIUjVRTkI1SElGRGQxTUN3UE1PN1pp?=
 =?utf-8?B?QWg3N21yNGZIZmRoYnFhd09weDZRWWljb0ZPSE4rTWhGeG00QVhhekdyeE5S?=
 =?utf-8?B?U0xLR3d5bW9jT3FhZlg0TXhNcUlZUXVpYzZ4dVBBbkU1UXltL25FQ0tGM1Q3?=
 =?utf-8?B?bVpnQ1lUV1BIZjErenBIQnZ5Q2ozV3BDd21IdnJVVExWSHJYYlEwdlduQXFm?=
 =?utf-8?B?NkRWM1JaNmpyMk1xZmVXd1hEVjlBRkJsSlBCNGNvZ1JJRGJtaHFPYWFXNy9M?=
 =?utf-8?B?Sk9YemNJMnZtTlMwOG5nOHVadWxWNFZHdzNRVm95VGo1NGJyOHdZS1dsaWtl?=
 =?utf-8?B?S3VDcXFDT1k1aVBTbkYvcENKL29ZTUV6KzhBeWRGZnk5ZVVZQ21KTmVpSWd2?=
 =?utf-8?B?OWVUb1V3YUtVbkpQeFhvVmdCRDAyZVBhZm1IdlRiUy9kWHBieWZLcitpdnpj?=
 =?utf-8?B?MC9sOXpmQzNWVGZlcE9jeW13OFpjTStqMHZNWVdTRnl6NUYybU5ML2hIVXBK?=
 =?utf-8?B?NU5ldGpDRGhXdWUrRHVRYWRSSm9PYlJWSWRSMVZrdmxISEt1K0kzclZ2RjJU?=
 =?utf-8?B?V2xBejFaUXBNQlIwNkdkSTFlaU9HL0Evd2ZkbmJNRzRXa1psT3N3N1FBb3l5?=
 =?utf-8?B?MFZWMFZMd09VNjFjbllKSjNSYWVNbHlQd0RRNkcrOFp0a3QwWm5WUGpDWnd6?=
 =?utf-8?B?bG9TV2tuWkl2MXdkWi9tbDNlMGY4Zys0TElwY0JCbXV2anlkaElYQVNVYTcw?=
 =?utf-8?B?OXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c4b8450-3162-45ca-819f-08dbf637d81b
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3674.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2023 08:46:31.5594 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bKm4IbnUoadg7ufJ1ZTCIG+b2gXTPvShG5RWykhRjETj7TLFYvEY1y7WfV6cmKC1birgy+6F7ku2qbjfBt1+GZqOfp+Z6IdG0tijlaXtDU8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6524
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701852831; x=1733388831;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lfNpU8+pxPmHVIjhQJqMOnDtaRpesR+wYWuPRJ0tF/4=;
 b=PlGPcAIDQLAToVKi8um7GHTq4QcG9isB3Qrv+DhVUNFz7B8BRYj0geUN
 Fb5uzjc0UMaKSLGH7A+VDqDtE+30q2MC6PqKae2pkRfcj6uhEXKe6q4yK
 ssHmmTDu6Zsab9TiOAP0csGc1+4e0DPcxBgG9YhMvjyzhNRxRd2j0yYGp
 ORZ3K5tUci6C6vpEdPR4ADXgMyJ0DMI+tM9HObIAQqv+VIYxK0RyqChjT
 drR8Z8Jwmqj+6eQ/GlpBqDvUgqm7Cban75k/YHjC18HngOHAXH0/mezmc
 1rboeqQArQ4xjuXFsxHMWqF4AJukrqLLK8Qa6nHMr9gZj2Mz+LGuTBeBy
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PlGPcAID
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH] net: ethtool: do runtime PM
 outside RTNL
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
Cc: Marc MERLIN <marc@merlins.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/5/23 20:48, Johannes Berg wrote:
> On Tue, 2023-12-05 at 06:19 +0100, Przemek Kitszel wrote:
>> On 12/4/23 20:07, Johannes Berg wrote:
>>> From: Johannes Berg <johannes.berg@intel.com>
>>>
>>> As reported by Marc MERLIN in [1], at least one driver (igc)
>>
>> perhaps Reported-by tag? (I know this is RFC as of now)
> 
> I guess.
> 
>>> wants/needs to acquire the RTNL inside suspend/resume ops,
>>> which can be called from here in ethtool if runtime PM is
>>> enabled.
>>>
>>> [1] https://lore.kernel.org/r/20231202221402.GA11155@merlins.org
>>>
>>> Allow this by doing runtime PM transitions without the RTNL
>>> held. For the ioctl to have the same operations order, this
>>> required reworking the code to separately check validity and
>>> do the operation. For the netlink code, this now has to do
>>> the runtime_pm_put a bit later.
>>>
>>> Signed-off-by: Johannes Berg <johannes.berg@intel.com>
>>> ---
>>>    net/ethtool/ioctl.c   | 71 ++++++++++++++++++++++++++-----------------
>>>    net/ethtool/netlink.c | 32 ++++++++-----------
>>>    2 files changed, 56 insertions(+), 47 deletions(-)
>>>
>> Thank you for the patch,
>>
>> I like the idea of split into validate + do for dev_ethtool(),
>> what minimizes unneeded PM touching. Moving pm_runtime_get_sync() out of
>> RTNL is also a great improvement per se. Also from the pure coding
>> perspective I see no obvious flaws in the patch. I think that igc code
>> was just accidental to the issue, in a way that it was not deliberate to
>> hold RTNL for extended periods.
> 
> Well Jakub was arguing igc shouldn't be taking rtnl in suspend/resume,
> maybe, but dunno.

That sounds right too; one could argue if your fix is orthogonal to that
or not. I would say that your fix makes core net code more robust
against drivers from past millennia. :)
igc folks are notified, no idea how much time it would take to propose
a fix.

> 
>> With your patch fixing the bug, there is
>> no point with waiting IMO, so
>>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> Well, according to the checks, the patch really should use
> netdev_get_by_name() and netdev_put()? But I don't know how to do that
> on short-term stack thing ... maybe it doesn't have to?

Nice to have such checks :)
You need some &netdevice_tracker, perhaps one added into struct net
or other place that would allow to track it at ethtool level.

"short term stack thing" does not relieve us from good coding practices,
but perhaps "you just replaced __dev_get_by_name() call by
dev_get_by_name()" to fix a bug would ;) - with transition to tracked
alloc as a next series to be promised :)

anyway, I'm fresh here, and would love to know what others think about

> 
> johannes

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
