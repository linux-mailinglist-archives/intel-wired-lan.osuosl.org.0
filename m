Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8077C7740
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 21:49:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A0FC34056F;
	Thu, 12 Oct 2023 19:49:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0FC34056F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697140156;
	bh=MCQw1uCLc9dCxd72E4c0pXBFMu+AU5b5cjXsBxXJ9xM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bykEVsA9Gl5KelTSnXXeSLR+BpcU/hDxkAMo2p9Cn+rNiy39dnpcX8M9pV70qjHnI
	 AYU7gdGKCzRKBL2UyKmtbmINMww1e6vCFiDW6OMveuUg2ExM2zmo2bFewHw1NfeMoM
	 Z/zMBlXD2v+bAL37/UFlg2aDQPwa1zfjQqgDkpjeWj/FANnJO5EkZWiWjjUuitpIEJ
	 cO4Gcwv/L4Q8NeCZK5F4iIo/vLCD6RnR+nHko2rUVEASxxYCln4oFhgF+LFjfJyCvr
	 9PAGgSGp7Ikl55fmdth43g+7zIFGrCAFYDUTdIE36NizWDjm9EIPBMX9/BJcTFieEs
	 1rv8ZB099Wh4A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FzWB8LU_J7cb; Thu, 12 Oct 2023 19:49:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 39FC04045C;
	Thu, 12 Oct 2023 19:49:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39FC04045C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1449E1BF5B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 19:49:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DF75860B36
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 19:49:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF75860B36
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7aDUNc8rhEjQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Oct 2023 19:49:07 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0C96A60B31
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Oct 2023 19:49:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C96A60B31
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="370096844"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="370096844"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 12:49:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="731053508"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="731053508"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Oct 2023 12:49:05 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 12:49:05 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 12:49:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 12 Oct 2023 12:49:04 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 12 Oct 2023 12:49:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Usz3oqYFuia4ofrRxybFaleEuqWTlVMjaL7FnlLvnS/qS7gsCaVLl63qD6F5Wfl0WHjdBB5mZpBmVt/wIEhfYoebYN1C4eV2sbyFpCQtMX6Y54RV3OMg++94MVjYgNXZL7M4pCciMKwxmmzE70Qzfir9tZAdCsLV9cMdYBPWcG/FNdAtEN1/0OoKJomEeuL7wYSxrU4uM+DKhsLD43IT2r3G2BWFGnlYhEqg7xZcgWIqZ2UxZn3430jnhASnMSsEpduDR9CrGmEnx1/tD4JYQdzH8CX24z+PqH9QV1SW8sVni34psKlHyexM8Gun76NB3gr/UpQVpzYssqzo6HOIKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nc5gc/3wkftUOpB9ngp2c9loT1holP5PLzx7xqFSBN8=;
 b=XDG3yZ99YeokbND5vIrGznnaHZRJjMTa6XZxo2uNqHLGCME69AbaGCVqcYzLygBuNKwSvB5RoJss9cPXrwRHumHqOTrwW1gEKIB+s24IEOvC1QA9NiruqAWxsg4zIWXaUi3KtiQAfarDS2yVRHY18qYqbelqyi4hSvC8tVHjqPphMyTOlYdxfivrdxU4KLjeZ4UhkpISfQVfMOOkFpDnmSoo5owNegKau32H4eqxZhsdUHdZj/MXRZ+ThlKydwnNhqvth3o9mRZhaSrTHyM9tYdJE5P/XT2wBmnCHwbMrPMQlDoL9wrhYGOjz7WHmLqWY8r4Y3H+TDUuQoiMGyk+FQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Thu, 12 Oct
 2023 19:49:01 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f%5]) with mapi id 15.20.6863.043; Thu, 12 Oct 2023
 19:49:01 +0000
Message-ID: <6817dbd5-5db8-48e8-b7b8-0920c7e38730@intel.com>
Date: Thu, 12 Oct 2023 12:48:58 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Justin Stitt <justinstitt@google.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20231010-netdev-replace-strncpy-resend-as-series-v1-0-caf9f0f2f021@google.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231010-netdev-replace-strncpy-resend-as-series-v1-0-caf9f0f2f021@google.com>
X-ClientProxiedBy: MW4PR03CA0012.namprd03.prod.outlook.com
 (2603:10b6:303:8f::17) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CY5PR11MB6344:EE_
X-MS-Office365-Filtering-Correlation-Id: a2d08d6a-b74d-4130-25cb-08dbcb5c487b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 66A4X/jwkyM6aJfS32FziDgAr+bTMFmpwR3B7rFAoEmGQn+1XE/D92cCmfO694LmT8XZpWvgxzrudY74yZ4af3zTTzwBAcg7Bz5NuBRlSW3WZSad1e6F9XgyEsylrFQ6GCTlkD2/0ID7UPvribTJvOkjvRlGTyJwt3h98H1AlS6iIkqo7TisoDLI0qGVzjgDhnyxuJG7oZKUwjYFofQDe9YONhlce+foO36SXNNKxpCRbS/YnUC6szEkf7uwyWinjClsJtpG9CLLRWR2ObZM1bPILW6j0dglURmpRntycZoocA12d0nUSredPph/OMPWsonrJr2PjHXx4AbQ07J3sPODuZz3EWC/5chB7zvjVe0EN+uXs1/FoffZR36amfL1oVOdWbXqB0aNPhb5hXgFm12y80fKwQZBF7RvphCPSZWtZabCpwmmo98v8xgHg60FlaD9g5mD/CGlZ0M4k5OC369d7lG47m/78vNgiF1Gne6dy5sVfbTG0zPOhlwx+nM1UKdBVmr6H3M5PI+i88RJpKWQmlEM0ga2osTdpcQjZ+g9K8KVvoPnLnBUJ94bXhC+A72kN1c7Gk6TP36Qw07N6nW6vodW/Vp7084tNhKoHUTnagsbtNYbWoYrnAyQemUc0UrhUutieOmfBkcMTCdym1yjZctAax+I33qxfYpVgfJS8n0klI1nGhSG+TmPzQWL
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(376002)(136003)(346002)(39860400002)(230922051799003)(186009)(451199024)(64100799003)(1800799009)(31686004)(966005)(53546011)(6512007)(82960400001)(86362001)(38100700002)(26005)(31696002)(36756003)(6506007)(8936002)(66556008)(6666004)(6486002)(2616005)(478600001)(4326008)(8676002)(41300700001)(2906002)(110136005)(5660300002)(66476007)(316002)(66946007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aWpwZE54bVdHaXZhUVhnVkZPTEpJSGVZMjdSVkRtcDdUZkZXSmxxYkVKMS9y?=
 =?utf-8?B?b1hzQXZHek5QTVpNdzBWMCtnR0ZReTI2RUR2ZWJRVXBDdjBQUHF0UXNPV3dX?=
 =?utf-8?B?MTYwR1dyYkxmS2RHYTNSUDJHckkrUEwydkFPRGNsaFVCb0tvL3VBSVoyTWVS?=
 =?utf-8?B?OGw3RFNseGlqNTVMMWUvOUtzZ0NnZGxCWkpVYzRiRlB0K0pHU3BOTmtJbEx3?=
 =?utf-8?B?TmVXU20vNlJnd3RjaS9kUjkzSDZ1dE83RVRYOXpvemxuN3FwOUZPWEZuYjUy?=
 =?utf-8?B?R0lrVk0yNXpFbzVsZlZWYVZzZ3hzb2tzYzJRcmFvNXhHSFRvRHVpMGZ1NXQv?=
 =?utf-8?B?cTNFc3BmRHpaY1NDR1dackRiYVNnWnZ5My9PeExxcEhPNmF0VEN4Z2JoTzkx?=
 =?utf-8?B?d0thb3VKdm4zaDhCQkJVcEdEbFJmekJxZzVCT0VHamZYaWQzeFd1a3R4NUlG?=
 =?utf-8?B?WDl0ekpXQm9PNmUzOXZWSTA1UjluZW1NVHU2TkNndWhVZ0VUZHpOY25kMlBG?=
 =?utf-8?B?UVNia1M1ZmhmNGpNeUJvcWlHeVhBOHBDUGFhaXpGdndsU09mMytEK0NWU3Qz?=
 =?utf-8?B?OWd4NlJUOHNsa3JXQW45UVBYWUZjNGtpaExhMm94ak9NZUMySmJnUEFqZk5P?=
 =?utf-8?B?a0xTeDk3TzFrRWFDZWlyL2w2KzdDUEZvc2tVYUNzczRGaEZXRnk5cFQvQVJ5?=
 =?utf-8?B?NkhuM3JqSENNdVlVRmc4ZWFLSlR3NGlnUldzRnlTL25UOWpsaHZMZEdFOGZH?=
 =?utf-8?B?TW9HV1BuYk5pQW9YY0xLQmZVOWM0NzN1R09BMzNjMHJTYkFGbzVPc0JpUVBW?=
 =?utf-8?B?S1o3bEpaREZSN3o5cHFtQ0VjOTZiWU56ekYvSVhTWGVObXdWenZQUEdaZGQ4?=
 =?utf-8?B?U2xyb1F0ZzBUSFppUUtSVy8wT29FSCtKZ3lHUHZOTWpUbzZSMFdpeFMrRHNI?=
 =?utf-8?B?NTAwYXlNaGRIeEMwVWZOd2U3ZjVabk16N1F0NXVPRjRuakk2TUJWNmFyZnBH?=
 =?utf-8?B?eUtnOFBxWHJGbXJOSnBhL1Z0VWo4aGU2V0FBVHpiL3F3cWhLSHJzSFF2K04z?=
 =?utf-8?B?bjVHKzRtN1BrOFlWQnlEUnpCSGR0b2VmOXgyYXNkcFZVRzNxNERzd253TStK?=
 =?utf-8?B?RVpnSkdrNHBibzRNNDc3KzV2bytlaWtzbGMrUGJwNnFVNmxyWVFTVU0yZXhv?=
 =?utf-8?B?VkZvZkRCc1Y4YlQrUjNxK2UrOXdkSnZzblNlc1h0cjFrckphVUU0NjdQN0J3?=
 =?utf-8?B?WHYrQUQ5WFFZb2VidFY3bG9UeFB0TXJyUmhyM0RHN2VxTVI2dm5nWDVzTGpF?=
 =?utf-8?B?YmJ2dWdwSERXNXkvVTk0eWZRT2lycWc2ZGxCR2l2TlRQNXNIaExheEsvWDB1?=
 =?utf-8?B?WGY2OUo2MEMrNHU5OWpEejJHSXJXbk9BSWhWRUFqVHExdjM2UmJrdUthbTFn?=
 =?utf-8?B?cVZqc09KSTRHblQ5N3dFOXlIUzZRN0NEUUl6U2ZHMlNDRGx3MmlEQmdoeTZH?=
 =?utf-8?B?VVdIemU3d1gvRkdKdWNJR0dBOE0xc3FsN1VqazJzWEJiYkJHdW4ycjhObEsv?=
 =?utf-8?B?eWdCaUdUWmRWZmFvMGsyL1k1UWVkQk5BYkNtSmo1M29wYVVFeHRqSjlrK0NH?=
 =?utf-8?B?VXRpUmlBRCsvSDMrellxZFNrSVc1b2o5UmNxWmd2Sm1GYlR4WmZESmltc0xl?=
 =?utf-8?B?enNjV0crdlpXbExKTVZpQUF3Z2cvVkpURlpPUHY4R0d4UXpDYm5NTldJUTZT?=
 =?utf-8?B?elRuWTdudEpkR3M4YjZPYmJZeU9ra3RhTkd1K3I5ZEphWUVZaDN1aGZNUTZL?=
 =?utf-8?B?T0FvWjkrVFFTbHVNcm5paFN4YWlZdmhjZUVSZkcrRDVFTzFKMk5kRmFxcEZL?=
 =?utf-8?B?OGRGMzd3Ujgva09mVGtwV05lU09BSGk4UFFQL29DT0R0VkRDbjkyNFgrVGMw?=
 =?utf-8?B?c2dXV1RTVXQyakE1NGVKWWxqMnJoRWpxTUZLbTRlaEtrcTE2M3hSTUJsSFh1?=
 =?utf-8?B?ZlZQQTdBSkFYQVd6Q3FQR2NOWmNxS2VzckI4OVlPWHA2REgxeVBMTWVmc3pq?=
 =?utf-8?B?ZzhjaHZ6cUJ6SHlKaXFVT1ZtWGRleFhrTGVoQ2ErbjkxeGdsL3AzUmoyUlYx?=
 =?utf-8?B?TDdMT0Rjb1JqYThqWkNOc3IxaUt3dUt3UThmOTMvcWZlaHNFSC90VGk1U0dL?=
 =?utf-8?B?OGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a2d08d6a-b74d-4130-25cb-08dbcb5c487b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2023 19:49:01.7605 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hwrKOqWi482JhtKpxu8i6PHo4gLsg+TwwavoGZCS324JCStleHI8/0VS7b11cxY1VpO53S3zDVJzLgiYolCbTa1x84OuP1j8bIw/ZQaHwZ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6344
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697140147; x=1728676147;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OFRTkbuCp4gUoRDsnxtKl/MDW7mViJ2/X9SATIW9bJA=;
 b=Li7GLZDOCMe7Hqli8FgewmX7kj/R8lu2HjUvbUSIZ8nN7XZ/yvLuCh5n
 rAhT+elyey0ugApFwBHyCoebrYLJyYJY3fx4YAuMwO8sDZIWgByQYa357
 pAUfGBsXziYCPuGteMaaRs7K2Pfi0ZS4TQ057UJmay3ppAqSf5QNmY5/X
 0q4X8q3AUabBjXCd5xeehod6M/Ml/6LuRD5WoblRBhhrDzir5N7FRZPxK
 t9Dx/aqsQiCCcFoIe+PCZJOvxldai8JHl+7FVACd+QFVTG5VBisDR6mSy
 tAzPXdb58dhKszhPwMFnIGeefHlAggvirlLk8pCnZ3inynDMNxZ/mPJ7U
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Li7GLZDO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/7] net: intel: replace
 deprecated strncpy uses
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/10/2023 3:26 PM, Justin Stitt wrote:
> Hi,
> 
> This series aims to eliminate uses of strncpy() as it is a deprecated
> interface [1] with many viable replacements available.
> 
> Predominantly, strscpy() is the go-to replacement as it guarantees
> NUL-termination on the destination buffer (which strncpy does not). With
> that being said, I did not identify any buffer overread problems as the
> size arguments were carefully measured to leave room for trailing
> NUL-bytes. Nonetheless, we should favor more robust and less ambiguous
> interfaces.
> 
> Previously, each of these patches was sent individually at:
> 1) https://lore.kernel.org/all/20231009-strncpy-drivers-net-ethernet-intel-e100-c-v1-1-ca0ff96868a3@google.com/
> 2) https://lore.kernel.org/all/20231010-strncpy-drivers-net-ethernet-intel-e1000-e1000_main-c-v1-1-b1d64581f983@google.com/
> 3) https://lore.kernel.org/all/20231010-strncpy-drivers-net-ethernet-intel-fm10k-fm10k_ethtool-c-v1-1-dbdc4570c5a6@google.com/
> 4) https://lore.kernel.org/all/20231010-strncpy-drivers-net-ethernet-intel-i40e-i40e_ddp-c-v1-1-f01a23394eab@google.com/
> 5) https://lore.kernel.org/all/20231010-strncpy-drivers-net-ethernet-intel-igb-igb_main-c-v1-1-d796234a8abf@google.com/
> 6) https://lore.kernel.org/all/20231010-strncpy-drivers-net-ethernet-intel-igbvf-netdev-c-v1-1-69ccfb2c2aa5@google.com/
> 7) https://lore.kernel.org/all/20231010-strncpy-drivers-net-ethernet-intel-igc-igc_main-c-v1-1-f1f507ecc476@google.com/
> 
> Consider these dead as this series is their new home :)
> 
> I found all these instances with: $ rg "strncpy\("
> 
> This series may collide in a not-so-nice way with [3]. This series can
> go in after that one with a rebase. I'll send a v2 if necessary.
> 

I'm working to apply these to the Intel Wired LAN dev-queue now, and
I'll see how bad it is. I will ping you if I need a rebased version.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
