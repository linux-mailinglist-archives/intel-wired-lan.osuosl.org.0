Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 853395843E9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Jul 2022 18:14:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA44760F90;
	Thu, 28 Jul 2022 16:14:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA44760F90
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659024876;
	bh=TGRKtBs+AFPjYgYhUyaUFIugXXCi5RE6p9q5/T4qdvI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=E2n2OvNijCUr/2CdZIQLD6KkFglzBM/1ERnxe97MrbRk0xFs1Uq+RcgJesJwNzBkB
	 fsOtXQ9wfRrqsNV0toCN7uIy7z4f5l4UqXY2ePDQiR5WDRC2eODfSmczp7WCbARiz2
	 tXqU6+8zjPvGUgSnTFdi5Bhec8abm7n/BU24iFmJKd6Mz/ZHnZKIuLA8iwjDey51f0
	 DPZijNOkmLG2frRxcMkj4MHZZTEaBfuVfHbfFtwXRJTSQNpFRb1u49zH+jwTzU6snQ
	 uNWP8ltn8oCZKK3JWIQGrklZjJdkA87CmJ8aSTalezx6fXwiX0ACEDciMP3CakAiZZ
	 vv3FzXwL4Wi2w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zVEKp29cWWu5; Thu, 28 Jul 2022 16:14:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D12A260F9B;
	Thu, 28 Jul 2022 16:14:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D12A260F9B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5C93F1BF2B8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 16:14:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 42E4D40B8E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 16:14:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 42E4D40B8E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ilwIzRh4ojHg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Jul 2022 16:14:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EEF6B40B91
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EEF6B40B91
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 16:14:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10422"; a="350257652"
X-IronPort-AV: E=Sophos;i="5.93,198,1654585200"; d="scan'208";a="350257652"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 09:14:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,198,1654585200"; d="scan'208";a="743177588"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 28 Jul 2022 09:14:21 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 28 Jul 2022 09:14:21 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 28 Jul 2022 09:14:21 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 28 Jul 2022 09:14:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f0KersUbbVUOVzVVH7/sTrf1VLx10M7JYC+Bg7N4YMTepwz6SpJOd4/iAAjvHY7RkvmmwW70ld2V2dwi8byu7bDSNX3xWc7chKaZUrg/6eF4YujWW5at0dhPT6DTACzsPY/pAH7gWqV8qTZJvxjEkHZ/p6SrEFkmOUCBkxesDryZtdBSATiGSJEyexMJ0/Mm7i3aiCzheobLaOG++MZP7bp+wSXmP6D1zNZN/7VZXPfhSpyKi7YJT1F72d4nYmNQjbRJiwRlDanSs/hu5aH9C+vHeJSPJa52PiGLBHEKxnzCiwZPctCVatYfXFAtyma99hNzg3oBzikUmdxalfSZEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hKCK4d1SpfdhOKzzm+az8MPWkSqQ+x2HHdnHKHL4hXE=;
 b=iGMBPAnAAwCOXUmhBMr/41fSw1oa38T5oXepedKqU0hKa1Cg927vT4nTdxTiS1vcpPV71ZUvE12OnzDSNe7bwtre/qC9Sx67QUDt9sRyRWWOCVbXcfNFxuzMjpvhFhu62QOwQrQB9qlXw2+e4uDW6sguRKLRIGUo32juyW9+1wN7tzw4fNhw8IpzcbL0JqtHdqnk5C0I0HVHeVzz91VylFcJxFZPItHT3TDYpy6naUXWBq8TYHJ3m/HvI7q4Qw05S/PExAFKnmIIWC2VF8iPHbeh3kg8NQL6/DQpgS+RxIWxlVd2Fp2bxQJBg4gMFjh28CDz0Tb2vHIpEXa33k767Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MWHPR11MB1888.namprd11.prod.outlook.com (2603:10b6:300:10e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Thu, 28 Jul
 2022 16:14:17 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb%7]) with mapi id 15.20.5458.025; Thu, 28 Jul 2022
 16:14:17 +0000
Message-ID: <f8e9e966-8d98-9a17-298f-d2e791e5359d@intel.com>
Date: Thu, 28 Jul 2022 09:14:01 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220706162639.8897-1-marcin.szycik@linux.intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220706162639.8897-1-marcin.szycik@linux.intel.com>
X-ClientProxiedBy: BY5PR04CA0029.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::39) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a1883176-3b87-46e3-98be-08da70b43847
X-MS-TrafficTypeDiagnostic: MWHPR11MB1888:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JVIUdRwfOIEOGicXDfzd1PnKMZMVr3NAEpB7p+s4wCo4QabevbNKXKg/fz9UL5NXyqroT6+IIfE5bSUPfpg4x+cwhhPcPOVLmeVwnv9tT5TlB35MHFKZHOOIeK6AHAa0PcKHva7yRcEZecb0gLq+PA5q9qbDz7Kw+Fg8XDca4WctwfAhtj70sgZZgqE4PC7i9XMkszrSm//+6yLt+PWyno3ouqf3psysKmzvLVH1jZJSdydJyBlKwvqTWu03Hi5d2HzmJ+xoUEcrjY25xs4Ac0Dcp2S7jilhCvmyAZT7h9pU5ILMVx6Q9CPd9JN8mh4YkSju9Id1Pjh6YxQKt5PzI3EE8uEqNHfonCV6IVH+D0MIWrLpXFN6B4tOscvG84cNhzOZPoAyjFyrdQ/eXPdiL5JKts8KzS+kO1trz+2rdkILr2nEADVYuvSDWqbTmPZhwiHKo2DU8+ZQmB0sSgthysSeOpBArEWxRICOgBIQAhI+2UdgEnE/5aBSrOv3Gel7SjfTeVNff0DElj4X9LvoEnAWR2nPWDWw2TTKawo4X1oOG1yButfANOdqVxRSxjPFMEvyucQbyNwoei8/i2rZrKL1IOyP9Lc5wzi7Y0rU9n9f59fM7HsCqG2koNhyR3sVX7u4XunJVF0lDKejqd7vl+PEa/4cTNG40ejMWY8Lw9xtGZiYv36Cto8ep9kCy94wKvRLYQkbbe9/Lu9K2tOEYKAcTiqtuiGIHS3+MfcqVdVGWpDd/jrtkepKNNbOxqxp6DZmWpXBoQsP3TxUq6Lqe0o+F/sX2NKV9Urkz9drap+h/HhMNMLQce0B0cX+bewX9RXjRYKxwNn8qfLcMYLwRC7fIGsDIEWnb7LiZ/mMy+A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(376002)(396003)(39860400002)(136003)(366004)(186003)(38100700002)(5660300002)(6486002)(966005)(82960400001)(8936002)(478600001)(83380400001)(316002)(53546011)(31686004)(41300700001)(6506007)(6512007)(26005)(6666004)(86362001)(31696002)(2906002)(2616005)(66946007)(8676002)(66556008)(36756003)(66476007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eklDNk9Zc3U3S0lPcncwbE1kb0t6VXlqQTVPSmhnSGl2WVhQd3dZT1VVV2M3?=
 =?utf-8?B?U2VSRmJOeEFEeE5hbzJaS2VkUldrSngvTlF2ME5wZWdhY3JYUkVRZGRKNTd1?=
 =?utf-8?B?OSttOHFuQUdZc2dMNmFZMVd6OU5Xcm1sd1VCZEtJU3pKcHRxOFpYd0czM3g1?=
 =?utf-8?B?cmtsZCtrWWlIK1poT1Q0NS9SbS9talFJcWlHVXdyeHl1M0QzK0loaWpBY0pj?=
 =?utf-8?B?RmdzZDQ1anQ5NUhJSWd1QTNLcmFSSkhUUzByMVYvcUlYaU1KaS83NjVOWEpF?=
 =?utf-8?B?VkplbjRLa0Y0Mll1K2lnMCtJenRxMG4wTlh1TUF1R1A0Sm5zKzFNTHYzRWRP?=
 =?utf-8?B?dHRNcnZtQWM3R3NFK0JVRWpWRGlUS3hKRXNsaHYrek9SMThrMzVHSXdpb3Nt?=
 =?utf-8?B?Ykoxb21ucHZTeVFoWmpFOWZiSWtBcFBBaHlWM2dadCtEdkxucFVQYzNQNnB3?=
 =?utf-8?B?YUoxdVpzY1ZkY0RkdWRlKzE4NkFJR0lzMjl6WjlmdWl1cU11U3lxdkhzcnM3?=
 =?utf-8?B?Ri9teWNIcW1ZL01zRWRwaXBIM1lXRzRXQklTTkhmRUZ0OURVcU91OHlCQnh6?=
 =?utf-8?B?YWkxY0hBN01QU3UxdGRpajI3ai9LM2VJUDBxYXpYdWl4T1hZOCtsR0VXK01i?=
 =?utf-8?B?VVgzRytmRzEvcit4eS9DUUJyZ1h4c2ticjRuajBjWk8wNTNPYW1DWmdVdmZF?=
 =?utf-8?B?R3kzVFJnZXRYd0tkL0hGTmd1c21oekFsTWdHRzlQWGgveWNBUHpMZy90eElL?=
 =?utf-8?B?MnQ5MHRPc2ExcVk3RXB3UWpWSGRVUVR3RUlVWXg0SHM4bFRKUGRMZzNaekVq?=
 =?utf-8?B?R2JRdW15M3JpR1RtMDNpV1hxdWQvTml4eFVWNENIekdBOTZ2OHpacGNsUngx?=
 =?utf-8?B?MW5qMExpeGNxM0NsUzh6S3l5Q0wrazlwYlNPYnhZUmVMRGhVVUpXMlM4SGFL?=
 =?utf-8?B?M25GaVdEcjJ6M1RqZVl4QkFYY2ExSGpLTDREOE5wZjRyb1dFZWpwWlc0UURw?=
 =?utf-8?B?R1N6bEpuTzJNTXY5WEQ5T2MvTjd5bVBSM3NSYUhHbXE2bmVTYlp4UlJNNUc2?=
 =?utf-8?B?MEtpZEo3RXNpWDFTaTFHT1JWbnRoQ1JWcnBqSmJRMzFMOXpvZ281eGZRaGtC?=
 =?utf-8?B?K1NFYUdhZklpU1V5WjZ1OGRjb2cweDBnQy92cURIWUZ3L0Zzc2xNUElIM0Zq?=
 =?utf-8?B?SCtpNUpRbXdFSVo1b3Y4WTZGT1F1ZE1sUlVUbFZxeVVON2dlTW9CeDRvTEMw?=
 =?utf-8?B?c21DYVVFLzRtRzN3S2d2a0x3aU5CWk5aOTVDWGZ5cHB4a2QwTWFiZUJBUXdO?=
 =?utf-8?B?RkNuRHA0RDE5K3ZxSFdCM0h4dUMxY0dadUxwbEQwVjFkN3FEMDhXTVVaOFNX?=
 =?utf-8?B?YmY2ZTlvQW15YmFLY3EwNWR5TXp2aEk1VlNwV2Y5MEEzWUMxQmN6TUxrenNj?=
 =?utf-8?B?eUg2VUxzZi9yODhGb1B6VDNTa3RnUVIxUzBCVzYzNVR3VTBJcVJycG0wVEdq?=
 =?utf-8?B?c2RKTEE2dWdHQWlzWlpNd0VFT0J2OXRZUXEyNDZ6N3FoREZFTVhacElSc013?=
 =?utf-8?B?ZnBieVBGVHRXTmJWaWJNSGhpZkd5M2k3Y3pQZys1WXJjdUZRQ0FEVmJCdkpu?=
 =?utf-8?B?VjA0YkQ3UGJlMnRsazEwbUQrYnk2YlZXNWlpNUI5YnRCbUhsZUlIc2hOMEFw?=
 =?utf-8?B?eVRmNUtJSGdDMTJ5MEp5dk9Pc0tkNGNDdTdIK2cyT082a2lRN1Fsd09LbDE3?=
 =?utf-8?B?d0crYm1tTGVkSkdZRVIxVVBrNkZ0ZU5zRkxHcExYOXBidCtGRzQ0QXUxOGZ0?=
 =?utf-8?B?VEFlQzMzYk91MWk1ZElHYkI5V2s0cmU4U2YyYUlUYnZJaWtBeW1rZElvRFNY?=
 =?utf-8?B?VVRZMWNaM2tRNkdvS2pvVFBPWTBJYjZteVlIc3Z4am54d0s2VVg4OUdJOFF2?=
 =?utf-8?B?ZVZBa2lSL3dtSmYwTDdHUjN6K2FuYzJsQlE2RHBHRjhqNURBMmozRjdId0dU?=
 =?utf-8?B?b2ErbllTdUhMTVR1djJkdzg3OHFzOUVrbFlYMzBHeTVZM1lJbVFsTG1LbVpp?=
 =?utf-8?B?RWpiSTZIbVAwbEFoTit3RUlJQVZEaW1vM05pekxYZVhmc0xwejN2UERHb09V?=
 =?utf-8?B?S1V2cTNHd00zODNDczhRd25OL2tWeFR2QzRuM296blhBUVRYWVlUckc2WGhM?=
 =?utf-8?B?amc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a1883176-3b87-46e3-98be-08da70b43847
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2022 16:14:17.0111 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mrqITKBbE7Gy2n8R0SeTcTuOHVeI9AObYL+OT6eJkC8mYUxvQoR0JZekeGmI/QXyS9zav/nMy0VsHQVR31vsYrtPieah4FgzwEnM+m2dV0s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1888
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659024869; x=1690560869;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=BncYVwbZ89I4CjrkqAtq9SM7veOWIGJ9vf6ugtsVrBU=;
 b=GpUbpDQq0ZCXL51W1xkUnuQ+UdmPvbNCWwq4HWI6inxgPgT5PAFyxW6r
 io84IsihjT41dsXhEdX4PvVZE1jyQt4zoMD3iR3vepj2QjWD2SbeKhhXZ
 X7mUCIR9ObgWx1/ibDebxOLf32vfjqQM5Sptq6Dzkan00k1T7Ud56iTga
 OxCr/EhYbNsVnzJvYxRzRbBTbhaahvtiOeMlusLyPOayaZYHTVX2JISNy
 QsfWla36UHDxwFYTpee4+GcQLU1W+RneIv59UHxepvcCXW0ZYcMWprv1S
 tLAIbgjZ1V3L3yV16XTZ38UFxdE7muvbxRNfxRidp6psVcRONw7Ux+FqF
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GpUbpDQq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: Add support for ip
 TTL & ToS offload
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

On 7/6/2022 9:26 AM, Marcin Szycik wrote:
> Add support for parsing TTL and ToS (Hop Limit and Traffic Class) tc fields
> and matching on those fields in filters. Incomplete part of implementation
> was already in place (getting enc_ip and enc_tos from flow_match_ip and
> writing them to filter header).
> 
> Note: matching on ipv6 ip_ttl, enc_ttl and enc_tos is currently not
> supported by the DDP package.
> 
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---

<snip>

> diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.h b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
> index 0193874cd203..7da9b92e3b49 100644
> --- a/drivers/net/ethernet/intel/ice/ice_tc_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.h
> @@ -24,9 +24,15 @@
>   #define ICE_TC_FLWR_FIELD_ETH_TYPE_ID		BIT(17)
>   #define ICE_TC_FLWR_FIELD_ENC_OPTS		BIT(18)
>   #define ICE_TC_FLWR_FIELD_CVLAN			BIT(19)
> +#define ICE_TC_FLWR_FIELD_IP_TOS		BIT(20)
> +#define ICE_TC_FLWR_FIELD_IP_TTL		BIT(21)
> +#define ICE_TC_FLWR_FIELD_ENC_IP_TOS		BIT(22)
> +#define ICE_TC_FLWR_FIELD_ENC_IP_TTL		BIT(23)

Looks like the PPPoE values [1] are now conflicting with these. As PPPoE 
was accepted into net-next, please update these values.

>   #define ICE_TC_FLOWER_MASK_32   0xFFFFFFFF
>   
> +#define ICE_IPV6_HDR_TC_MASK 0xFF00000
> +
>   struct ice_indr_block_priv {
>   	struct net_device *netdev;
>   	struct ice_netdev_priv *np;


[1] 
https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/diff/drivers/net/ethernet/intel/ice/ice_tc_lib.h?id=cd8efeeed16e8ecf30071583865f3f468db9e854
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
