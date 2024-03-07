Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD278745C0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Mar 2024 02:41:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F2FBE60B8A;
	Thu,  7 Mar 2024 01:41:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 92LWHtuNwtT4; Thu,  7 Mar 2024 01:41:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 244FF60FD9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709775682;
	bh=d7O6NKOh3SwlEIe25iFIdSjgMgQ4ldBV9gmEKfdsml4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W0357IuNrc5hTWmHOjjRvZcQg7t9ACJY+qNwxx0vbvUPGVpUCy8cxz1k86ynRLT9n
	 783zGYbObD+PxmSQPJLrHzypDqt2k8ZKndDgNWZ31ycFKT4aP1kOTHnwOs2WPUmO1Z
	 JTSBJ+wv0K5fzsc4hAC6c/ER/nbLWUq1wXHRRo3ePaw6d50Wg4F0M55epG6AAKTr80
	 EiOxXqlbEutfE9Q3CVo1v/NWxk0ygKb/a85Q9IEdqk1xF9qxNUIqRvnD4A6l2VVgiK
	 gnKTm26zrEBSpznjNVaKOHXU5AyRxiVSSqB4GmnKcUTR2T8zKvNAAguMC4TSnpIqLG
	 E+x0QLH/gaJ5w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 244FF60FD9;
	Thu,  7 Mar 2024 01:41:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9E8291BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 01:41:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8AD4740475
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 01:41:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9XFp0NlMflEa for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Mar 2024 01:41:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6B81E4043E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B81E4043E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6B81E4043E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 01:41:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11005"; a="15565504"
X-IronPort-AV: E=Sophos;i="6.06,209,1705392000"; d="scan'208";a="15565504"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 17:41:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,209,1705392000"; d="scan'208";a="10493578"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2024 17:41:17 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 17:41:16 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 17:41:15 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Mar 2024 17:41:15 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Mar 2024 17:41:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SoZPlrfMoNzcQZ8MZxaiusS2PC+EiVXwbYIAyEK6623x5K2NhaFiLY2zkqooBnVD5lFdcAJpLudQ+XavPkGglH86aowcA4wiNvRj0++U3yhA0bjp6DhDEzC/gjXdCGGpnTdmacLXPZ1vpU0z9liTjVwV3iCR6FO/y4jrfcri6SduuxinrJblgDp8SwLONnPTNCLc20TiEbElhSewbXz8dmqACOSWmKXqe502cRr8kfyYNu5fiLaH7to3bgASNfq8IHUnJGWQWgztPnRx+r5SMmVEpmEUfjzuu97LViHHJuswHktBw4JZHFFeR7zNtxL/GtkONm7vvG51WCYu7pu9bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d7O6NKOh3SwlEIe25iFIdSjgMgQ4ldBV9gmEKfdsml4=;
 b=fpXOjk+6rTbIR7HlRUApTZis1JasyALBpZt1vyYzluyrW7tM8rXm2D1wWJMeTNvuIF2eJFyQdGN6tzLdmOJBGWbDhbdbcPdlXZJYE2JpgWWwXyKFtJVqySAMqsp9G6gJuDiSFTR2Oj4RFFJ4ugYSTpx2bRY34KgIXefX7WvcFnZHZtccL2IaA22QHTJdjjIJQ7jAyWQ/m61/YKMm1bj6L416Uw86qQhAx9gL2drsmZnVNT+EeTzPpl9cIp0kxz/mj7PCzbg/xx4atpPZXbH/QTNLlWDyxrTLV4jn//DXrp5avJL2DI4P0iNb+sUaHUtuZ8WbdrHiU0TX1XVCwgCICg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by SJ1PR11MB6105.namprd11.prod.outlook.com (2603:10b6:a03:48c::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.7; Thu, 7 Mar
 2024 01:41:13 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9d72:f2c2:684b:6b50]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9d72:f2c2:684b:6b50%3]) with mapi id 15.20.7386.005; Thu, 7 Mar 2024
 01:41:13 +0000
Message-ID: <9662b26f-3bba-41fb-90a6-3a6dbf98b5f5@intel.com>
Date: Wed, 6 Mar 2024 17:41:10 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
References: <20240304230845.14934-1-jesse.brandeburg@intel.com>
 <ZeidykgnELeMx6xm@boxer> <ZeigQdj9K6CZocbL@boxer>
 <02751cec-c273-4120-adad-6ea16a86532b@intel.com>
Autocrypt: addr=jesse.brandeburg@intel.com; keydata=
 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
 /fnLfll98Nhx
In-Reply-To: <02751cec-c273-4120-adad-6ea16a86532b@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0278.namprd03.prod.outlook.com
 (2603:10b6:303:b5::13) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|SJ1PR11MB6105:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a00998a-a821-4149-6c0f-08dc3e47ac10
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CBqHpq+V5pbXKqAsCEKSj/tp/2wUkj/HxAV8QE/FmkWUMdxbkl7xkGspZPvN7vowohe1QaGzFHzcvyE0GyvPtRwOsftQvF6zifYilcEWmSQddNcTZf/5PGCj8hA6yNDdTa+JdjeSJbVLjtceM/xXEAk5j7eaGGHNWwEEdNCwFElV3uIUlBunqRuIVAwdAnQo7H77kq3ZMUVAOUgfxxZzzx4qdQQSBeS9nutSmGViSaUxRyGpGBB0S9Jp3BqBCB1BH2ERZbsLt18TGfdzVk+77skNhSdeWE7S/yQz4FJy8NBwRCECs94Mk28Sz6XN/9kEV12MfivyF/KDaoamXxmbAM9uVe93Y8J8k6tqJZM0/couE+3OCjFkgG/kJrTW240quC1L74xk4cHDxKf2Z2ykjEo3FV1J0f5tWz3w5Rxy8inruUi1IfjjRNLIKJJzFsxNgaMwxVBXLYfrZK9vm3aXsJ0IYIMSYb4dli29HZCzn3m5FvsoSvIipFZXPjtDcdIA9odbmDYcmzDuIw04YYcpvBWFMz1VqQEGWGsgP2PGOSIoBnF5CWv8V0BGpge+Hr1hez3Wtt2YePmtlq3F61T0ciFhMTT1BhuNJIkD0x5Xdnw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K3UvbWRUYUNpUUtnM09OZEw0R3kzeDVXa3pIL0dWanBzd1hveHZZWHJ3N2hY?=
 =?utf-8?B?My8zNFpPSE8yb05aTnBvMG5OTzV5NW45QjhUZXQraTFmM1JTZU92enI5bnBa?=
 =?utf-8?B?Sm9LTzN2Q1RTZDRPTHNFeUJwQjF0YkNsbllqcGk2dit0MjB3bDBCdU9MR3p3?=
 =?utf-8?B?a0c4ZzNyNndEeVlSMDZtK0ZOUjFyT1BWRmJScWFZTTFwZjZLNEdVUHNSLzFZ?=
 =?utf-8?B?WUkwVmxRUjFYNzFyNXQvT1BBVThHT2tSWDBPOVZpVUVSUDhKZC9ka2Z5RFpQ?=
 =?utf-8?B?K0paOEk2M1pnYlNaZjM3bDByekRVYTA2ZnpuUVJZdjcwcUZTa0cxTkZqUmRO?=
 =?utf-8?B?SHJucjlZRkVGS3NUZExOM2t0emlmZUh4NG1oNysyVi9NdjFLM3Z6anFEeklp?=
 =?utf-8?B?MmRBcEpzaDFlM250UUFMYjVJb0V5Tzh5dkozVjFjbTVtNUVWQ2VvYXpHN205?=
 =?utf-8?B?RU5Oc3ZyQnhhdHovajI2SkFjcHNBbGJFVHNsVjRHelpoWU91ODNvakVQM2JL?=
 =?utf-8?B?d1FKcnBRSXhleXBnRzYxd2I3ZWRZeEI4MnFOV0Iwb0FaZEhMSzVrTGZhOTlV?=
 =?utf-8?B?d0lMUXh3bnhtME5DVmZSRFpSQjAyenc0TjFHREhsbkFNUHhVNVMvMGJ4TkZ1?=
 =?utf-8?B?NzZPVWlSYmd4MGFPeUU1TmVJNjV0QzhaV3huTzEwNFA0MXE0TGYrcDR4ZGVI?=
 =?utf-8?B?SldZU2NVZUFOTTVQQU1BWU1OWWY0V1d6NGZKWUFML0VzOThCVWdDZXcyeko2?=
 =?utf-8?B?SDlIdWJwYzArY1BORlZnY2dWckFZU1llOGN2dVJWeE9KMXM3UUxKenFzRWtL?=
 =?utf-8?B?cEsyMHk3dDVvK0p0OTUxU2pFOG9zM2diVmpWV0c4MjlEbVJwNmt3L3VITjdK?=
 =?utf-8?B?SUpQN3ZyWmdONnFLWkRIQzRPUFlIaU9UQUZFZlJIZm9OTUtNUzdrMWhUb1RU?=
 =?utf-8?B?cDRRNnBSaXZJNUx2OFhRVGZBdHlZZG5pYVhHNytFV1BMMjdxTGt1S3FUdjN5?=
 =?utf-8?B?U003dis4UVhBZk9xTmFpWGFmcVRWNFRnUEdpMktGZ3g2VmliaWdQTk5qQnRS?=
 =?utf-8?B?TUVjbXgyOW9nZEN4THdWQjRKQVU1MTB3RktaaUJtWnZhK0JyOGVQNVdDSGN4?=
 =?utf-8?B?WFRvVUp4SnVxc3hVQlVmRDFJZDhDN2hoR3hROVR3SkZjenFmSWZPN2JZbW9C?=
 =?utf-8?B?RmVVY0h4SmpOaE1yNmgrY0czaUgyOXpwK1Fhci80SzVXVnJ2empSU1liekV5?=
 =?utf-8?B?UDRCNkorRkROd2pXREhkOXp5MlRwOU9NTk9IVmJGOUhzY3JLUHI0NFN6aW0r?=
 =?utf-8?B?cjgxN1oxS291cS8zYVRXb3VRbmRmY0hzUVk1QTRONXVQdHJVQ2pHckFjRmhR?=
 =?utf-8?B?dUdmeXB6Yk9rcE50SVhvZzlsbnJtWHFnN0xDR1JjQVdzRnR1Z3hZVFNqSHcy?=
 =?utf-8?B?Zmc5VmIxT2ZhNzY5NTg0M2JvblJrb2oycGdWdVpKSzY0VkVlT3BNT2xRbjBj?=
 =?utf-8?B?UUIwRGRhbncrL2l5a2FZS0Foa0lUUHZOWUV5V25Udk1kQTFjOWlUSVM4d2pO?=
 =?utf-8?B?eUZXM1ZSdkE4bHdJdDlGSXNuSlJqMEhZdFJYQ2pTSHNVOEhBWjZBcVVqbzRr?=
 =?utf-8?B?aGJXWHJINDVKZXhxUWRTSEd3cGFBa0lJeEZMNkE0YnV4dTdLNWJjR3NSdWxU?=
 =?utf-8?B?SEpWSEYrUmgyV0dPVU4vVFRKcW5qbnlRdkoxKyswSERFMkMrY1d3SjRKUWdJ?=
 =?utf-8?B?ckp1UVBwUk9kTC9CY1p0UWRzbmhyV3czM010U21BcWpVU2VhWGRCTDBYYjU3?=
 =?utf-8?B?ckFTT0FTYVRhWXRDM3hvUXY0bkxpYmhLVm9acXFhTytsZWp3SDJXdG8wS2xs?=
 =?utf-8?B?UTl3MXk2Nm55N09nV0dCVXlnNHI2WXZmOGdhc21zeTE2ZXVUL293L1Y0NzFn?=
 =?utf-8?B?Q2RSZG10VGhtUWhieWEyMmxxc0NOeDFtb0w2a0pqRVNUaEYrQ0dFSjh4NFAw?=
 =?utf-8?B?b3J6RU42S3NVdGU0NTdkcEtVN0M4YzNHNWk5R2l1cCtXVEdMSXUrNTFLcWdH?=
 =?utf-8?B?UGl5anZYUUhGZUhTTjZXcXUzQ2RLaDZPZnVmaUVvQzJ5ZWtISHRFbTRON1pk?=
 =?utf-8?B?Wk5MMk50QU9EQmtOQSsza3k0QWg2bitZeE44NmhrTDBhYjIwcmIwTGFqSUk4?=
 =?utf-8?B?dlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a00998a-a821-4149-6c0f-08dc3e47ac10
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2024 01:41:13.1028 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wDD4VMTg3kZKETTvPUbQOg5MpAkkDXwfVuZeWlzLKIDMzwyKEkHehx8c5+cmeYKlIT1O+XbwZJkkngKF8zyglzWNU/c9RhKwbZ0UcPJ1KA0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6105
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709775678; x=1741311678;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QFARN00c0z1i6Pi9fGJL/dehUfNmQEaaRLsom8hM6ug=;
 b=UK6rGIyQAVE91cHKlKJnJ9lMOI+Q+xhjHIZ7/J5HmdjdDeUAxKIDPv29
 b2G1KsWoCEs3WArE5eZ4UA7YG6vNlYInZe3i4q40chrbf0N15PAjGoq51
 z3e419w68F/is2iJlteDqvhl3zXhW2+IxsBiZxAT3+aPimv92inLF8jqF
 l1UrcjfLSnSqMP33ifLLaTnKzanakwQpJ3dPyCsOAN1mVx72iuSX9sSW8
 sR2BF7RQzezf+Hg4q7t8RRXEbn+JAkeKJtRjHgEdbFBY+KKnbPD//6IfF
 zSjuX4bLKj1g0F4oWti/NznAHUPyVlmN2LflSY498DNidVDq9xTVOuj/9
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UK6rGIyQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix bug with suspend
 and rebuild
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, Jakub
 Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David
 S. Miller" <davem@davemloft.net>, Robert Elliott <elliott@hpe.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/6/2024 5:33 PM, Jesse Brandeburg wrote:
> On 3/6/2024 8:56 AM, Maciej Fijalkowski wrote:
>>>> Fixes: b3e7b3a6ee92 ("ice: prevent NULL pointer deref during reload")
>>>> Reported-by: Robert Elliott <elliott@hpe.com>
>>>> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
>>>
>>> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>>>
>>> Well, that refactor of config path introduced lots of issues. Could
>>> validation folks include a short list of tests they tried out against
>>> tested patch?

That's a good question which I'll follow up on with our team, but please 
don't let it block anything for this patch.

>>
>> Sorry, I got confused and now I saw the same thing Simon pointed out.
> 
> Thanks, NP! this thread is for v1, and v2 is already posted with the 
> refactor just moving the CONFIG_FOO in patch 1, and then the real final 
> version of the fix in v2 patch two which switches all the intel drivers 
> over to the new macros.

oops!

FYI v2 of this change was posted at 
https://lore.kernel.org/netdev/20240305230204.448724-1-jesse.brandeburg@intel.com/

Thanks for the review!

