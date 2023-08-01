Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C1476B5C2
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 15:25:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9460E610C2;
	Tue,  1 Aug 2023 13:25:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9460E610C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690896337;
	bh=8SOgSGkgH88htwVTN1VwwB8ta5IWRLNusTZRBo/KoRE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DfSi1HOzwo5925T6yXyZZHh5MGSm0Ja+399quiR4k+AVblI4rH0lxBWViLPKJFdwR
	 ox0pPBhX4xgT0vpyx1/bsM7Oz6VnB5c/Nq5rTTKaQzYDR0prAYdzyyXB2xS55SxgQw
	 4jIQYyK+5GB8zNHJS0xmmE6jwyxNXq18V1DxmgaZZOvEb6TCtavd92xkJJC0H0mJuX
	 2O6OTPUgaHrXzMfL71bfUuwpS7fz/N7FWqsPNc+To11gzh/TGXKJMabBH6BnQ2j7GB
	 7LoCsxWKJzpsrWK0rS9ekUx6nfjLee8MQbwj1kMURUN3d6v/KUSl1X/hyC6Jr8pWKa
	 d/qKqBPIWefzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ma6DSPrLQ7B8; Tue,  1 Aug 2023 13:25:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 696F4605A6;
	Tue,  1 Aug 2023 13:25:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 696F4605A6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1FB8A1BF38E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 13:25:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7C67481CE7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 13:25:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C67481CE7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id InrzrgMGEFP3 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 13:25:27 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BBC7481775
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 13:25:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BBC7481775
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="372926667"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="372926667"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 06:25:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="1059401846"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="1059401846"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 01 Aug 2023 06:25:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 1 Aug 2023 06:25:25 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 1 Aug 2023 06:25:25 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 1 Aug 2023 06:25:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jt6zqmfmjHFQUPNIwp2S6twbCq9S32zmkYCTH0Bq7rtcoGdQnle80Y7J8o/hugAdYJZMC5Kv07ajsyTTF3NlN7oQXv4mS6kY782OVJnTN0clxrjzkP4L0ytyZr51xxgaUSWoc+10kLhiCtTr+S8Qx+wBLKxfXRQT/vXuX5qLdxw2wzA9+BxwY38ThMhFmk9o0GFJNrJJmgOuqzspMS3hZAZ93ao+uaX0x9frCcqRMijMm9Y8LAcCUD8e+SM5PRA4GEO1lws7kPmJt1gopUbFMlS3Eo7JXhez+vP6OIOWnnY8PDw1/6PmLsCn8kr8jV5EkjYdaDkEHIYzTWnEGBxUUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y5KaNWApBx7o6VA1rw1YGlsq3T9bVcgGZNG7f6SfvjU=;
 b=NIEg/fuwRxRq/TIRfUIVcEZzkwypk9Oa5xA9STaZR1WmBlYngyYd1murhGqTxngo+Cs2foQg/J1xy16WiMiBU9tLoSoE2XRBv4Bk5bsPJYZ4TMyUiTPOHuaGYSs5vLz0Y5A0mNwTcHmjWvlmNWDtQgIxiXN4rR5PgPbKfe1BWe8igYYdKomAdnUHbq/zBT4abJC38m0W+Kb4eUsMLO+r8RCHwCnC87Qo6GeGMLowC6IJJIK9cXa96GkWwOc5xn+85lzVm/01dBEHwY6OZ3gojPF49dlNuhIqnxvioq+d7l+LXTPLTdmBKliDyKnxgPDNUjbe84LjnEoqIZhTNfa4yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3674.namprd11.prod.outlook.com (2603:10b6:5:13d::11)
 by CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.44; Tue, 1 Aug
 2023 13:25:23 +0000
Received: from DM6PR11MB3674.namprd11.prod.outlook.com
 ([fe80::7f4:c05b:358b:79c4]) by DM6PR11MB3674.namprd11.prod.outlook.com
 ([fe80::7f4:c05b:358b:79c4%7]) with mapi id 15.20.6631.034; Tue, 1 Aug 2023
 13:25:23 +0000
Message-ID: <131487ef-a94c-76f2-3bd8-531f77bbd7c3@intel.com>
Date: Tue, 1 Aug 2023 15:25:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Jan Sokolowski <jan.sokolowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230801115309.697331-1-jan.sokolowski@intel.com>
 <20230801115309.697331-5-jan.sokolowski@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230801115309.697331-5-jan.sokolowski@intel.com>
X-ClientProxiedBy: FR0P281CA0182.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ab::13) To DM6PR11MB3674.namprd11.prod.outlook.com
 (2603:10b6:5:13d::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3674:EE_|CO1PR11MB5089:EE_
X-MS-Office365-Filtering-Correlation-Id: 16ddc5c4-da20-4a27-b0ad-08db9292c263
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Y7lddlN83Tc1X4nlGz7Eb44Yq4Y7uYy2V+B0rwSkjZxdM2Dr5PHkOgKwyzIOrJjFiBO8q60afd74dhU3+r5MuBadFbvMfZqPIWgffCJuzUlKbzuxfORiMtUUEAydULPTNcN+k/NVXGJ0gfo5KoHV1sXO5/H3FmmN1bCX/yvxBeFpptevstJsHzqaJADu/crvwE63bm08hLvvw+DN1zqUFVqq3nqBy2IhhUQlx+5BTUUy2AWU9tNB6obeU7FUS/Lht7tHngyo23K2M0qyu0khjpHlng6LvhFBqTmFLgwSZaLGHREsEaMfXanJk/ojHjzstWWudanU3PaqLgDe9ghZvSk1c/aYYdHzZk47gcXRzE7x2/RNh/6QfawvrhkFKwWGT3BpNRe9ooOKmnBrFasI9zRc4zAwLZEz4Bbrt7FgKhFzaEt7t4Hmezt8Q3xGzxhMZ4kfvnsj59t8bsyxn0rKhZeWVisemd84HSk/0hj21VpRQXng4MiPmszojean2ZFWosm8Y2ed0WuGXUqsQ7kNYg7lN9eU4/UxDGZyzzlYNAwAOqbIgr4meoDB7C0lF9aJ78lp8gV0cgqBSiUzu0eCJ4Qp4EpQakM8d7MlFazJa7umva4Qxr/GC0L2CJvOcNkvzX43J8/uUXL+0ckCuK6c/w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3674.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(39860400002)(376002)(366004)(346002)(451199021)(8936002)(8676002)(31686004)(36756003)(6486002)(41300700001)(478600001)(2616005)(2906002)(4744005)(6666004)(26005)(83380400001)(316002)(31696002)(186003)(86362001)(6506007)(5660300002)(38100700002)(6512007)(53546011)(82960400001)(66556008)(66476007)(66946007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TzNDMGNsNzZGZkJxK2F4TDZNK3pZZFdoTW84UG5FenZOOFd1MWt3ZDNwcFJY?=
 =?utf-8?B?Q3hVbEpIbCt4enduODl5aHlqdnZYd3hKa1ZoS2hnakNVMW1IUnIzRFY4SElD?=
 =?utf-8?B?bGNtVzZCZDVVM3ZUalF3Y3pBdWRuR1Rld01XUmhQbjRWYzVTbDQxOTlacEhD?=
 =?utf-8?B?ZDRsZE16Mm5kbnZyZnVWV2lobzZmbDVMU0Y0QUNSNkFpaHdCQy9pMzlEUCt1?=
 =?utf-8?B?bmhWMktmQS9xMDBJTzVjSFp0TTdHUFJ1cnhXUzdQS0MvSkxvVXlQa21JVVhT?=
 =?utf-8?B?bDY2UlZ5dThRZERYVTAyNEJhWmxDbXF5ZUJKZjZzRXoyNXM3QVhDOTVyeTVG?=
 =?utf-8?B?WWQrbVhDUXpGUVVjeXczeUtZWDJQZnhjMFQ3cUhhSXZDVWJ1Z2VHSVlCdXdI?=
 =?utf-8?B?UlF4cnZWQlFXbGdIa2VyWDBHeG5DSGhwSHpHNXk2UjNiNHc2UE5EN0hXeWpX?=
 =?utf-8?B?VHhYRTNybVgxcWZDbFJoSFNwdmdHYitGM0RoWUpIVWFyQ0VQUFJmRCtTdE5O?=
 =?utf-8?B?M2x6YmdEaHIySG5pZTJ3bW02S1YxL2M3UGV2aDgrYnhUZXJCWXAyaXRYN0dD?=
 =?utf-8?B?bFFER1ZjdVR1bFA2ZWFlN2xxeGdzaU1qbC9aMUxxUmx0bXJOVW54QlgyRHBl?=
 =?utf-8?B?T2hreFJLMUVMMG1kWVEyczZ4WFNYSGh1eExaOVJlbzY1UGtXdmVtM251VnJQ?=
 =?utf-8?B?RUxUbHp1NzUzV3RRWUcvOGVZQS9Rb0JCeTZpdTZxNHV2c3U2dmJLdDFKR2Fj?=
 =?utf-8?B?bzFyNkpLZnlLV04xejRUanRadDVqVXFkb3JNRmxRNk1DUHpzSVhYc1dMRHE5?=
 =?utf-8?B?WGZ0MXQ3RFE5c01tOWZTekpLRDdTbDJVMmo2bHFpQUNiREttWDJwTm5xYi9B?=
 =?utf-8?B?RzYxelRKNEZVVXR5R0pUWHpMbnZ2ZGlQY2pxaVJubHhpeFlqejdRczI4d2JI?=
 =?utf-8?B?b0czdkE2YnplSFk5MzU3NjA2VHptQ2dJSGsyWlBYMHFnT3VjOTY5YzhlSm5o?=
 =?utf-8?B?ekRJRHorVUw1aW9jNGlpNEVqN0Q3KzdBU0VlQURZcFNyQzhhUS9lc1RCbng5?=
 =?utf-8?B?clB1aGpuMy9oNmt1R01HbzZBQk5xNzVzUUcxMzdSbE13UDU1NkZPL0cwQUdG?=
 =?utf-8?B?ckNGcndqdmt3YXFpTnp5VHh0clNGbDh1M0c2ZlFsNFpQaVpjcE1oaHRYdkla?=
 =?utf-8?B?RDV0cjNOaEkyRjVxazNENDA4d0FPcDMzVHNSck0yOW1aTnNGVzF2aXNRY0Iy?=
 =?utf-8?B?SEhYNlJXb3F3YVJwakZTQ05hL1hKNnhyMjlmdFU4cSsrVTFqUlBZa2RtUlc4?=
 =?utf-8?B?VzM0dkVUSzMxUTFqejRyeXR3aGF4N251TkJmUjlzOGIzZTVVUU9nOVVmNTA0?=
 =?utf-8?B?b21OR0RueHpzdmg0Vk5ESjF4dFBZVWE0TkpEMEJ5b0xtZGJPdVdQWHBiY3dV?=
 =?utf-8?B?TGRLS2xULzUrdWowWGV2MXFwdFZFeWJWdE1YTkV6VnVHUFRiYnplK3U4ZWFn?=
 =?utf-8?B?bzVWVUdVZGVQU3IzQUxxNEpuM3ZqZjRFeHhoTlNLV1g1YkpmMEF6RjhYbHFa?=
 =?utf-8?B?R0QrbGh5Z2tCbEh5akZoK05OQ2RBTFpzR0d5Snp2Qzc1cWE4ajRmMnJhWWFz?=
 =?utf-8?B?Um4yeGpBcUxFVVJRaEZsRTFTK1BWN3BsTG4vTkQ0RktIMlZwK3dLMzRneDc2?=
 =?utf-8?B?aHB0amFtZ2lQbXdwZFNNSFZyNTVucFY2ejZHdXNZTm9kb2h5VTJ6VDYzQ0JU?=
 =?utf-8?B?eDkyVjJ2TXFKYnRHRkgvcVQwZUxhQmt2a2p2eFpLeWdmN0VkY0VrM25HWENv?=
 =?utf-8?B?ZVhldytuUXhlSXJDU2xhdWVOa0pGSUVXNDdFL3Mwbi9TS2lpMHVVUUhQbENI?=
 =?utf-8?B?eldCdy9FckdsNUsxUFR5TENkQnJIQ3BUckpveE9HMTF2YjY4S3E5NVJqVisy?=
 =?utf-8?B?M2c3ZXR3L2RoZElOVHdKQVUrWDZnd2VRMHlTaUlSTXJremU2NmtKUTNySUND?=
 =?utf-8?B?WFM0UEhuTmwzb0RqQXhHaUpURTJwMmFLelYzUE5kSzViMk8yVjArSmU0Mk1z?=
 =?utf-8?B?emNqbjhRWUJhakovR3RvTTRld052V29rS29lWFozcHk2VHVhZjBBQTM1dlVh?=
 =?utf-8?B?am1lZUllb1RCbjkyM3BZVXB6dE9vQ3k5OWN5WFQvakd4ZFdPRzJwSitabWwz?=
 =?utf-8?B?UEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 16ddc5c4-da20-4a27-b0ad-08db9292c263
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3674.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2023 13:25:22.9530 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BDT3kt4ISiSdRzM71QhsWR+367rRCQuavHgRa3gwFgVxyBEXvq29ZwYG0Sq16BOOrXlprgqm6qOfDGdOgqqa9F2WnMTZVsIkJWJ7MhiBRJc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5089
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690896326; x=1722432326;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=euSxzy1tVsoL75qI9BNHJVTE2Bb4Jc/85EKIflnFvm8=;
 b=cHXkU4Rl4A58gAygvYC7xDePapPuRWntp5vgghXOzeRD3pE5vgCKBfzq
 +rR9jfVU2AMwLt5czLD7ES44xTUG9k6eqj3HavTLEGT543cfsnQRw08ah
 BLU8s9fAJHo3Xd9+O9Xcgf9r8NdYpt9O1Filj59B05seyhvCpsLjEAKPq
 WOCmfRO4OXTC43anoLlwK2mhMOeMXEHVTXfZnQVXyz2heB0C+BLFccBaL
 tX/D1AXdmY1G7xopjgZNh1mXKWrHx9kvAxZIOInS1GbSnU2euHW2buov5
 +jrtm0bowE5tAyZITmuKHo+SwnNQZMAowtwHQP/MOqIZ5o1ljXyFrdhlO
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cHXkU4Rl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 4/6] ice: refactor
 ice_vf_lib to make functions static
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

On 8/1/23 13:53, Jan Sokolowski wrote:
> Refactor ice_vf_lib.c/_private.h in order to make as many methods
> as possible static.
> 
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 468 +++++++++---------
>   .../ethernet/intel/ice/ice_vf_lib_private.h   |   2 -
>   2 files changed, 234 insertions(+), 236 deletions(-)

I don't like such big code movement to achieve something that two 
predeclarations would provide.

We could either just abandon idea of converting those two functions,

or move predeclarations, augmented by "static" keyword, to ice_vf.lib.c

That would slightly violate "the style", but you will achieve SAME THING.

I have tried locally to see the diff size:
  drivers/net/ethernet/intel/ice/ice_vf_lib.c         | 7 +++++--
  drivers/net/ethernet/intel/ice/ice_vf_lib_private.h | 2 --
  2 files changed, 5 insertions(+), 4 deletions(-)

-Przemek

[...half thousand lines snipped...]
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
