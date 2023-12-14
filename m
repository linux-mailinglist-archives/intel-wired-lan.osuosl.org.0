Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB3C8128F3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 08:17:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D08C42029;
	Thu, 14 Dec 2023 07:17:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6D08C42029
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702538233;
	bh=ClP/eIiDl4yX7O+ebJFiuF5gJFxZBucA83ouEJIHv8k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RUzmfW24a133jp39aaQi8oq0s7nzXEZa2nn+BgODuRZ40izDmDPpOQTc0tT1/7OyV
	 vN1iUgAvMaDzZCTk1TL1Gz7GB88Jboh+VOGkY++bJMQI0WV3lf0h3tq/BZ49A+KI5a
	 fP0ccMFB/z04nYyWPoHAuZD9yW+acvA5Hmwo4vYWdML3pvm+Mtnof4jRp8ls/stt0V
	 uGzxfQfMPiLJWAQIAgS9BKWwgI8g333ogU+qLdTEpsXn5bl3vUEemQdVx1EZ7mmZK1
	 9npLRGpYDtelNVDkiWkdRIQN02xX10EynLzUyr5Z6HR7D7PIWvR1PVHBm8rUxiAcxT
	 chrLC7JyhGsfg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J8bpiBNZNPKF; Thu, 14 Dec 2023 07:17:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2934E4201F;
	Thu, 14 Dec 2023 07:17:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2934E4201F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7DAEE1BF28E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 07:17:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5E41660E4F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 07:17:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E41660E4F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tBhiLNTo23ag for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 07:17:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F022660E8A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 07:17:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F022660E8A
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="397864754"
X-IronPort-AV: E=Sophos;i="6.04,274,1695711600"; d="scan'208";a="397864754"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 23:17:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,274,1695711600"; d="scan'208";a="15734877"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Dec 2023 23:17:01 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Dec 2023 23:17:00 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Dec 2023 23:17:00 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Dec 2023 23:16:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BoJ5Mdmf3Ir+tCzaKgq1nuyL1UvFY9xq9/JfD3LSGOm6siUWb68bYnjasTMeA8227Q1ZNIdKoRzyqww9HaDOD2alwhjXQjspKFcDLlEeIE9gvebO7n1Fx0+JbIMACy+m8M+toAHh0te+F+w45oRuF4WLvhkVfB3hC76K/k6fzPU/dHE2ZOfT+2eZTef20IzKPq3eeh64GsCvHHz35t6ReOBwMQws7JjYSctgas/Ya83Qnqt8HOoxx6VzhvN30xIAdMvdtzT0n2PrLjlBPoOG3Ay8fSg4FY0URPkIJAilK70Y8fHCmBsfqQPr2Q/gcHEZNulgN7D59IQQ7CfnEYB+uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RFppG8mOd9CQ4Z3Rpj7WI+wpDLfxdz7cwnV8QRjruQc=;
 b=jzGr5a/Ok+pQ9KPF7DgBJoIWNff4lDBqi0OiTdmMyB7uwIhsNlL4+MUzvN/pOkMS25ejf3m3Av9DHe5l0hTHxuOEg0t1+9a5cbcMWWHCF3/l2lNkK5C/HphOOr3Fu/buINvvfc4OF35+omhh7aTXtRmY8cugQba1shEH4RBC9mMeRzR7+2OMQ62rTCmsuAPHN5d/ONoxnWvdlihmlMJByyW58s65Td04ExM1WU2ofZEJlU/79aYAfMmYAw5W6Akr22gedzmUNd4ScRd6kX5PCGW4+7671NNtPBMXZGcsGU+CX3BnWNydD2NKmakqlzMU5YLVbf6broiPJkV4MolUcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by SA1PR11MB6965.namprd11.prod.outlook.com (2603:10b6:806:2bf::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Thu, 14 Dec
 2023 07:16:47 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7%5]) with mapi id 15.20.7091.028; Thu, 14 Dec 2023
 07:16:47 +0000
Message-ID: <5a163d97-2989-e5f7-e6ba-6dd346ab4236@intel.com>
Date: Thu, 14 Dec 2023 08:16:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, Kalesh Anakkur Purayil
 <kalesh-anakkur.purayil@broadcom.com>
References: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
 <20231206010114.2259388-15-jesse.brandeburg@intel.com>
 <CAH-L+nPi1yCP+18Z=UJj7E-jeV3W8aWnNXP49SDTVXWEErBqWg@mail.gmail.com>
 <d5cc134a-b8ed-4d4b-96fa-de096c41ada0@intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <d5cc134a-b8ed-4d4b-96fa-de096c41ada0@intel.com>
X-ClientProxiedBy: FR2P281CA0075.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9a::17) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|SA1PR11MB6965:EE_
X-MS-Office365-Filtering-Correlation-Id: 56196a10-7c01-4537-d24e-08dbfc74a1e3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VhQqdVDLz+9wAgtm8ju+aQtg0DYSiJ3gAkFXrTSNvz3Ia+d10yxonqPNyyIcgXArUwwRqtyDfgAEwnLsOP33QCRlQ73iHeY8UsLb1D412TR1Yl7YaTRtYqDwVgByM9w9uSby69aDVsCOzzla744O+aSDM7D11W2TAf20607TDuLtkpVRHWr7tsRNgws0gsiqp0bHMBc5b19puirbs1IgaQ96gLcobmB44kfkncE6fSFpCFYH9zwD3znShmRqXLfvLxKrA74H4mPtgrD9Wvq7Ix+gNQZ7c18GoEu42SJoB52b8THpjf3gdBA2aZLsB2SIBELC/N7IzZY4dP8fiNDwN3FmN4jlvIN0TwwRA2gLn8ajX2iyIhC5TJw3k+9X3bNneBqbVtVer0BTzyblXxMxLhV7ue6VzT5JKXk7nNB+e/dEg29efYDuicLdBGxTLPrWEpVVYOE1W4opHuO20k47vKInqucXKpAGdEISo5cHH41mWcHJJq+7kiVW/JJm0zImIz7OMlHWkImn2ZyG6A3ITBTSptYPnqdLB699sTY8vIa6qWlWvg4Ik7q1ggsB6L96MCxxwQEgUCmbf925U91SI0XfFCYz6IJIeHhka1nG8UV/HisSwjH6bVZ/7SsnqX752Wy4CU02Z6haqDCtHlsP9A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(376002)(346002)(136003)(396003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(8676002)(4326008)(8936002)(5660300002)(2906002)(4744005)(6506007)(6486002)(6666004)(6512007)(478600001)(53546011)(66556008)(66946007)(66476007)(316002)(110136005)(41300700001)(38100700002)(31686004)(31696002)(86362001)(36756003)(82960400001)(83380400001)(2616005)(26005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VWl5Tmh0S0cvT2xhZ1NxcHZCRTQ0SnFsaDN2YWxkOVEzemJrN00yZFFQVWVx?=
 =?utf-8?B?QUh4amdlY3hndlVoVnhiQS9QQ3dSRUJlTnhyUHoyTGw5WXNNVUxxSjZKRjBl?=
 =?utf-8?B?VDVEV2dqaGNDT3kwZHA3Zk14eHpMNXRrVkVmU0dpR0JQalEyK0R4blZEdzZt?=
 =?utf-8?B?ZW5GK1R3WHVRU3lJY2pmaERQb3JVS2Jqdk9laTRseHo4cjg2QWRpQU9ET091?=
 =?utf-8?B?NzRpY2l5a0dTK2ttVjhaMWJqVGtlWTFaUWVncE9jWGY5UmNvc2Z2OHkyUE9B?=
 =?utf-8?B?d1IzUm80ZWRsU1RRV1MzRjJOc2MzNmt6RXY0emY3SDJzME1IWUYxTVdBWmQ0?=
 =?utf-8?B?MFlsL055dFkxY2N1eTJJcUx4VjdmS3FRSkFWdzJoMklNczhRSTBvK3V5MlFm?=
 =?utf-8?B?TjlQcnBvKzhLaHlidjMvUUFDR1Vlc3RBdzlYZXlvNTVKWWJmMUFqV3hVMDFY?=
 =?utf-8?B?elZsbXJ2MWlpU0lybU9JaE5McnlUV2JNdXQySkgvdy9sdThiWTE0blNpUXA0?=
 =?utf-8?B?TkxHeENBbDJHMkdhcFplZUVnSjQyclZoTXEvMXNFcFBKem5FWUdQT0RhU3Zl?=
 =?utf-8?B?emJkWGtqZGtXb0hmY3l2M2prcEpCTWIwNmw5eTRjVHJ2eXIyTFl0cnhxMkNq?=
 =?utf-8?B?VEk2Ukg4ZWZleFNyaFR2cEpha3d4K1dxaWVDR0s1Q2hqRFFmZTNtbmZHWDF3?=
 =?utf-8?B?cW1xUUM1SDU4QXJEbEVtVk9SN2Jwd24vMXFkcFprQTI2cENCekxoZmc4QXNn?=
 =?utf-8?B?aTVOMXB4VW9GQlkvaGZpMWNnQitHdW0ySTZIYi9VUkVCRFZlVVhYQnpJYXJI?=
 =?utf-8?B?UWxEVlR4WHhxSnZBOTNLeWJOd0dtYWk1QytVcTcycHRXMXNmRThHclBjYmQ2?=
 =?utf-8?B?Qjh0MlVtV01RVWxHbVNCZzBnN1BaRXJFV1pPanZCQVFsOTlsMVhzMDc2V1pN?=
 =?utf-8?B?QzlKSGpMdlZMZmNVTTRJUm5IUWlpaEJ2cmZkUGpxdjZDcWV1b3F1bTV1Mk1h?=
 =?utf-8?B?dU5pT0dKT0xQZG9PemE4SzJ0aW1nbHJWUHZVaXpzOUlTeExNNTAxdldsZUxz?=
 =?utf-8?B?dDNVdm82UW5PUU1xZnJLR3BtMzRheHd2czY5a2xCb1BMMWU3NThLN2diL3Jp?=
 =?utf-8?B?QTFKUmp3US9KL0s1MTVNSnlJMzE2N3RCRDNwbG5NcG9jcDRGRnExTXFHOFRt?=
 =?utf-8?B?MENXT2Q1OUp5MzRoNjBFUkZjQUdVUGxxa0phRHJ1cEU5alpzWlhjQkY2Wjlm?=
 =?utf-8?B?VzZoU0c4MWFVK28wSTg4VUlZTnZ5RjAzSHI2ZFF6bXZHZ3NIcnJwc1FuTWd4?=
 =?utf-8?B?R0RsSWREQnl0TjVOaGJ0RlJKeUYydUsyZ3RGQ0ZHbE03RGViOFJLSnpFVS9T?=
 =?utf-8?B?NFg5aDJmbmYyY2JleUtsTGMwOTV0UVYxQkYwSExWN2RvUXhyZUFKTU81RVRO?=
 =?utf-8?B?Vld0aEJ2MGFLejhsUUMzbDQ1eXVXbDQyaENiTUhGU1JJN0xnZFNpZ2FQYzVO?=
 =?utf-8?B?WnZMVldhamFPL3JYd2gvTEtpUC8xYmRDdTVGNkdteTFrMklQL1BlcFVvcTR1?=
 =?utf-8?B?NzRFVlRiamRDUVpOVzAveUNNTFhkdS85ZXdJaXVNZUMwMnlWRFZ2QVcwaGlL?=
 =?utf-8?B?QkhBaC9VZVR1MUpuNnRueE1CRFh4UngxNGZVMVdMV1lrNGJCZ2F1Zm1KczA5?=
 =?utf-8?B?bzQ4RmlxeTZGYnlqa2FHU21HWHhrL09USXJqWFloWVh4dSs4N1R2VDNNUlVs?=
 =?utf-8?B?RGRmbFhkSDdIaTF6dHNtYW1oMHBlM1RtbGlSS2htYTM0NFh4a3RxUHJSZlU1?=
 =?utf-8?B?b2Eyd2M5OXFWc01KZlYwQjFtWUhrRnRZRlFnUTVKbFFZS3NqOUV1TUhXSDNT?=
 =?utf-8?B?bWVaYzVnOVM1UnczL1FvUW9PZlhXeEhPTk1MZUxxWWRtb1gwMlM5V291Q1hR?=
 =?utf-8?B?M292R0RnZG1jNFZXZnMrV2ZXQVEyc2tWYW5pb3VKTFVzWktCQzZyM2Jkc2xv?=
 =?utf-8?B?MHR4UnlCaTVZUlZaZG11K2lNbCtET082MzZybEtQMSt1Sm1oSitIQTZ5dnhZ?=
 =?utf-8?B?YytTYTcrTWR3Zitrd3hxRTVEU2ozWmhTVHlBMStJUWVWYUxVdUxQVWFBaUY5?=
 =?utf-8?B?Y0gyTldibjFrMzc3Y09LVzRGdkV5M1BEelM0WWVqdUdDczJzQWI5eTdCU2hR?=
 =?utf-8?B?anc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 56196a10-7c01-4537-d24e-08dbfc74a1e3
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2023 07:16:47.1485 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1hoogZ6KW4Kr7JyQB9QRFNKTCJGaCMKuLYe3Mru2xkIdcoJ/Nb81yHbBooKNUpdXpifQoqxN7vGGiAA7nmjqNTvGSq1jjh+zCHhoBKuClbk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6965
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702538225; x=1734074225;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=N9JBQHShCdpzqg/Z9YZOlfdRJzD6uz1L7/L9fQwpFKU=;
 b=QtUw9kR96pcywivFcGaYwHmSEMPNZ93FefCcxUeyNP2fOvO7u6UYueHB
 GlhHduLi+KZOgM8ZZSs4Cc8nnTZvW0TLM0a2rhoHcUwh6DvbflV3Guh+t
 D/HH90jIb9uEMiqBE7CDgiGr1VurADKxmjRb0uUNnL7OZNhzbJFTf6ZJJ
 bJIxPVUQzg4f2cSG8zCktVf2X51divKVQMOXJ0NEt3ltGp7HDJaUx2ao3
 Ls5W99ROydh1m64Pe6CP0iXPHOeiS30DJtZO1Go/gZdq5hPPheyHGUfzW
 3hZCDBjbb/leqvGPNDp8GRJRvEG7d96ClEOUftxJ2fyAAIK1mgcwrhmqh
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QtUw9kR9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 14/15] ice: cleanup
 inconsistent code
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
Cc: netdev@vger.kernel.org, marcin.szycik@linux.intel.com,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 aleksander.lobakin@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTIvMTMvMjMgMTk6MjcsIEplc3NlIEJyYW5kZWJ1cmcgd3JvdGU6Cj4gUGxlYXNlIGRvbid0
IHVzZSBIVE1MIGVtYWlsLCB5b3VyIHJlcGx5IHdhcyBsaWtlbHkgZHJvcHBlZCBieSBtb3N0IGxp
c3RzCj4gdGhhdCBmaWx0ZXIgSFRNTC4KPiAKPiBPbiAxMi8xMi8yMDIzIDg6MDYgUE0sIEthbGVz
aCBBbmFra3VyIFB1cmF5aWwgd3JvdGU6Cj4+ICAgICAgLcKgIMKgIMKgIMKgY2hhbmdlX3R5cGUg
PSBGSUVMRF9HRVQoSUNFX0FRX0xMRFBfTUlCX1RZUEVfTSzCoCBtaWItPnR5cGUpOwo+PiAgICAg
ICvCoCDCoCDCoCDCoGNoYW5nZV90eXBlID0gRklFTERfR0VUKElDRV9BUV9MTERQX01JQl9UWVBF
X00sIG1pYi0+dHlwZSk7Cj4+Cj4+IFtLYWxlc2hdOiBJIGRpZCBub3QgZ2V0IHdoYXQgZXhhY3Rs
eSBjaGFuZ2VkIGhlcmU/IElzIHRoYXQgeW91IGp1c3QKPj4gcmVtb3ZlZCBvbmUgZXh0cmEgc3Bh
Y2UgYmVmb3JlIG1pYi0+dHlwZT8KPiAKPiBZZXMsIHRoZXJlIHdhcyBhIHdoaXRlc3BhY2UgY2hh
bmdlIG1pc3NlZCBpbiB0aGUgR0VUIHNlcmllcy4gSSBoYWQKPiBjYXVnaHQgaXQgb25seSBoZXJl
LiBJZiB5b3UgZmVlbCBJIG5lZWQgdG8gSSBjYW4gcmVzZW5kIHRvIGFkZCBhIGNvbW1lbnQKPiB0
byB0aGUgY29tbWl0IG1lc3NhZ2UgdGhhdCB0aGlzIHdhcyBhZGRlZCBoZXJlLgo+IAo+IAoKSSBn
dWVzcyB0aGF0IE5PVCBzZW5kaW5nIG5leHQgcmV2aXNpb24gaXMgb3VyIG9ubHkgY2hhbmNlIHRv
IGZpeCB0aGlzCnBhcnRpY3VsYXIgd2hpdGUgc3BhY2UgZXJyb3IgOykKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
