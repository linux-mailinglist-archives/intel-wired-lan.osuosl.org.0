Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AFB783B95
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Aug 2023 10:17:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 43D5F81F30;
	Tue, 22 Aug 2023 08:17:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43D5F81F30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692692240;
	bh=lqEvvO1skGbZg9y2Au3de6dmiygVLoHJpIQhb664q80=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Vu3h/tQtIIQL4b20tEUxXoeCnbzb39VjtIa9Y/kkjKjcDXcrCAXuvwGHhSWMUOR8F
	 MCBab3QfA9B0UBDg7ExiIlxfJwmZdQxaJfeAMyxEgFtE53w08HdGru9+CghfPNlkjc
	 EMKuZ+Cu3omBpppRC2mr86bA+zqoX0Q87O1+nFwbP8i8lHT/skjfy5iNDIShMQFQFw
	 DK8/mfsJNOkkC1l7yRtTXYV3wURmqkHRqaXLixfuEX8/EvGlqYHQFFYGKNf24HT1Dn
	 pHqR1NwBzkutQQ2yEQjScd4IDya35+oaj9EWnzSORRqNI48m2fVAH20uhz5cBqg4Kv
	 CMwKQa6sA1hbQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oLNnHQWF8ak0; Tue, 22 Aug 2023 08:17:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8A7FB81D5C;
	Tue, 22 Aug 2023 08:17:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A7FB81D5C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 14DE91BF35F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 08:17:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DCBB560BBD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 08:17:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DCBB560BBD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RleHTruiM29c for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Aug 2023 08:17:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E8EC360AC6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 08:17:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8EC360AC6
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="460183052"
X-IronPort-AV: E=Sophos;i="6.01,192,1684825200"; d="scan'208";a="460183052"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 01:17:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="859815796"
X-IronPort-AV: E=Sophos;i="6.01,192,1684825200"; d="scan'208";a="859815796"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 22 Aug 2023 01:17:08 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 22 Aug 2023 01:17:08 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 22 Aug 2023 01:17:08 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 22 Aug 2023 01:17:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D3qlPr/GxwZZY3jQUJbbGGLROG7zHESvZuw36YKAzUzPXJS7Uobf7j6vLUqF3fdGN2qYI/SQ9RLeHTZu911pEJ62FTowyUR7YqSTp9PuzHCHBWC32WzyYq3IGcZd3/bZ8ncvITSf2B9IsDwqdUbtusLA60E21T+80wJz13+Y3TZIozvRZAVPBnVlWheux7q6t04Pz2rdtjD2pOU5Rhib20t/3QaxdvRQ6NMqLGE/8Jw+zaVNs/u2Edjw2N9kuBz9k5Wg55Qcp46cEWSvFwtQl65wUwloz9RKCISNF3zTLij1FNWY0GwqqDoroBercCywKBKYm9MUi3suKcOgfL/V+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kg8G3QQGk8HqBdVFIdvHA4kcCjbp5tKJdWc9JAdOWto=;
 b=JbjrZSEvUJ+oyNDE1LzApPnzSITTAb8koNCVC3cnI10H1lbyfp3rJsXmhkN66MgGsCePNgCK6QRCNZeYNbSSJ0w3/Skam43DaBALUXjgwLU8UsAuriijcc4meWFVWiD6nF1aOwDsT6HCrW+dRxlNm9C2ym1B48ckwR1Y4+6KBfAiyr9nbym7nCGq+Rhmnis2xSW2DxtqtyWpvvmwFZ3wn8lQpybO/AzbGYbd9gzuXEbe1VWl9t8JUxMEuOI2qxrzn8qL8hLPfRMeWNCE6LDqas5oEtb8hMHq9eMgS5E5D1TMcr0yCg1B0WfgkrEnwWC3AGIom5bqU1Wj08mkI1PYjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by CY5PR11MB6091.namprd11.prod.outlook.com (2603:10b6:930:2d::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Tue, 22 Aug
 2023 08:17:06 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::c45d:d61e:8d13:cb29]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::c45d:d61e:8d13:cb29%3]) with mapi id 15.20.6699.022; Tue, 22 Aug 2023
 08:17:06 +0000
Message-ID: <dd439a56-81da-a7ed-84ed-c04afd50b836@intel.com>
Date: Tue, 22 Aug 2023 10:16:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Wojciech Drewek <wojciech.drewek@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230822073452.28446-1-wojciech.drewek@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230822073452.28446-1-wojciech.drewek@intel.com>
X-ClientProxiedBy: FR0P281CA0261.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b5::15) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|CY5PR11MB6091:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ed2203f-205a-4cf0-c970-08dba2e82c2e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VzIzsdWh9SNCdPrMIUUlLHAl4cHXYkN79qT8xn1iCtP6Fb2+tIgVro7LWOiupTDSGirMPDLyL0SjECJf9JqxSaPlKVYM2SruITxdZYcz3pSpbC3ALxM/CponXPEFTcsE6mXxtaHtR8yE93c+fODIit6xtX3uJvtULn72DNGNNquFYp9zjgo/KZrml1RQPD68Mh8SBaRLSy2ffsjmZceie12H6LXKDflh2K9gqaVYEzMgpSB02LcR8dKYzY9Ct317aOq7224+1cY48jd81uBD5USugKJBYbVYVapKESikpBV5UULN9xsjC12AyqdlvukdkmNMa95SR5067w0Rjyl0PiKT/mSbuNQsirJzRbniKO+fhJVdSu4b8DLDZ/YF6sHOS8YB6hdT6mYecWnQ+KqOTmjiaB/0ohaSHY/lYJuOTiYJyNPZJD30Q/IrzR1JIH1Ngm68kBAz4VUA6TFO6nN1Y1wYCt+Hq3jvR3dINCQ071UySWThUFuJfofUS+Af+NhUPmqXaZS/sBZQ/5+ocHCoGgP4PaBK/xCrreKgJZE35/CuDuh3DWw9bUuQb/BiGGbZhB5Kpn6gsiaok2N6132MMzFQTF6V1qtglf5POyI91mSWAs0wNjTPPrXT35VCvU3fMgclo05Ea5Bhcax3Xnk4iw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(346002)(39860400002)(136003)(396003)(451199024)(1800799009)(186009)(2906002)(53546011)(38100700002)(6486002)(6506007)(83380400001)(5660300002)(26005)(86362001)(31686004)(31696002)(8676002)(2616005)(8936002)(4326008)(316002)(6512007)(66946007)(66556008)(66476007)(82960400001)(478600001)(6666004)(36756003)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N2M0cUxWOFhMbWN4eE1HL3pyaUdzWG9pWjVjd0dobUVoVGJJVVZrVDM4cDky?=
 =?utf-8?B?V3ZNdGdUNHFrN0VWQ04vLzcwZ2R2Z01hb09Nekh6cmxKSExkNFNQTXp6TTZo?=
 =?utf-8?B?enkzeWR1bWFoRHRkMEJrM2pmS1NES1BwOFp5ZEJXRnk3clhPRlk4d05BWDNp?=
 =?utf-8?B?bnNXbjA1b0txUUNnMG5QRlExSGFKYVRKOVgzdkxLVkpHVmxnNDREK3NTZldh?=
 =?utf-8?B?eTdYSDVSL2U0c0lYWW5rQ2NRQjY4cmpqUmVXWlEvL0I3TGhDQjdKYjV5andN?=
 =?utf-8?B?ZCtFR3NMbm1zRHhMT3lMb3dKUm1UWFlRS2lDbk9UUGVZYmVKcjRUR1pqb2Zl?=
 =?utf-8?B?Q1lzbmFmbTJ4VWhnbVdoTnpTV3ZCclZuSjdqK3BpWEZLMXcvaVB4U1Y2U2Er?=
 =?utf-8?B?RjJYem9lZ1d2enRHRDNhZll2aHlsOXUyQmgxQ1BRNjFSdzVHUWlZT09oUnFD?=
 =?utf-8?B?V2p1WjhmSDFKc2hnTkd4ZXdRdEMvZUpwc2lZL3dQMUQydkFnYmZVdWtOV2NZ?=
 =?utf-8?B?QzcyTitYSmlNSzdCVmtadHgvVmErS0FlV2NRZFE2cnBRL1ZsOVdwUGFuMXRx?=
 =?utf-8?B?aS9QV2lvMmJocUhwM1hya0F1ZDVOTWtvaXpoQk5SdU8zbVRVWTZHcnBwbWsv?=
 =?utf-8?B?OVZ3WXVzQ1VIMVUyQ1d5OUM3T2JFK1JLeHlKQUFHekYvSzRCN0tMOU5yY2Vk?=
 =?utf-8?B?ZklVdXN2ZWpzWklvLzVXbERrYlNWcHA0cXp2dUtRL1lMQVdWNUVJWnRxSE5T?=
 =?utf-8?B?blhMQTAvcUVVMlN0Zkkxb0ZmcEhoM3NXTjcxbW9wMXdrblpHa3B6L0dLa2tt?=
 =?utf-8?B?di9Nbk9FQ09ZVnFjM0VFQitGVXNlNytPcW1EdUdySFVrNE1TY2NEQ3V2dG5Z?=
 =?utf-8?B?d3IyTDFBUnYreHp6MVFCZTVXMUNGNTJmMU43WFRNcXQ1aVRGR0lWT3c3UkEx?=
 =?utf-8?B?QlV5bnhZQ2dUQTZwSWtGTDJvNHpodTFnOHZhYzFRVW1ENWR0ai8rSnFCUWtB?=
 =?utf-8?B?VGdtZXppZWJUQWREVmljWGRYS3FSUEc3d1dTeUI0V0orSmZXWGVVUEo1aUQ4?=
 =?utf-8?B?NTdhVUd3eURDSzN5TnVjeENIelJjc3FPVFJVc1l5WmdlYUdVQkVuR1l3a0xj?=
 =?utf-8?B?aHhzUU9vSllmRVFJbURhNU5CTzY2UFJMWXI5VFU4VzQ2MmphemFMK240RVZ5?=
 =?utf-8?B?dW1Bc2JSK1Z5dkp5aVVhV3d0emR1aFA5NkRuSTh4dkpiNGhqY1k1eWZYVFhK?=
 =?utf-8?B?bjQvVThld21kUUNEdm4zRjI1U3BFU25MQVhlYm1vZEJOdHF2RG1mbXdKTHVX?=
 =?utf-8?B?cldtTzArZVJkRmlhc1NmbmVHc091QXdtUHBMN0FXNElDRmU1MlZYQTNmaUo4?=
 =?utf-8?B?Z1h5dHVzeXBuejRaNHFpTlhHMlc1YW5UaG9NZHMrTWw5eEIxWlg3U2JwZEVQ?=
 =?utf-8?B?bDZ2Wkh5NnlubE1qSktWeWszdnBuUG15bWhPR2dyNW95c2ZmM2MxRE4yRFVr?=
 =?utf-8?B?MUhlSGpqbjcyTW45RlRhYlpPYUhwSE81T0tkL0NCdW1ScDRhcW5zUmRLYWw5?=
 =?utf-8?B?ZEpBVGpDZVVnUmY1NmdKVXJSaW1LT0ZUOU5zYXVkZ3NVUHQxSk1qeVFVRWty?=
 =?utf-8?B?TXdUcGFNaElScDZnU2xSckxod0oxL2RLTWFqZXkwVHNRT1JndmpLV2F0Ull5?=
 =?utf-8?B?K2psMmVockxQbmpSQ2N0dVVDTHpyYm1USGF1QkF1NURYUEYrcHd2aWhUSDNn?=
 =?utf-8?B?NWZ2c3Y0V0U4cUdHb3YvWVp3aDJCZU9iT0pab1Fad0l0ZEJ0enJYSFkrRjl5?=
 =?utf-8?B?WXh3aWFteTljSzFjM3VrWFpuRCtOckNUR29HODZPeC9KNU5yNW5yZWZaWk9R?=
 =?utf-8?B?NzdlKzJmV1V0eWxPcGJ5WkRibVZUVk9wWnI1aWJSaldlNlRDZUZIbHdTUVRv?=
 =?utf-8?B?RjYxMWF6QjIzMHRpOFlxV2FRN3RjdzF4TDFNeU0zRE9veFB6ZFBvYkhSWUJo?=
 =?utf-8?B?R2V4bVdycHlrTGhuNG9mQUMvaXROM3UrUjkzWEFoTHhGSS91bHNDaGtZdklo?=
 =?utf-8?B?dnliNU1kYVoreHVqZU83dUM5bkdqbU43QmNjazZ5WnJVYklxOFp6d2tnczB6?=
 =?utf-8?B?K1QyWHBicDJDL29xSGxzR1JVaVFycy9uRElkaGJlMkh3UTYrNjhSVXJOTHg3?=
 =?utf-8?B?K1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ed2203f-205a-4cf0-c970-08dba2e82c2e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2023 08:17:06.3398 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XlRtAfUkwWKa1x1o5WknAVO05xGnM84uxXKAMP+jeHY8FLZ8XMofIKMvzw0kQnjS8eJL3MksQ1pfWkRIcO4O9urnMciHPc0XHh1Ht+2mQ8w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6091
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692692230; x=1724228230;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JOq9rwzzVX45Hpq+xSwwWkP3SZjNadSO/iFF4sqsnLU=;
 b=nD6Zulk7pOKUTxYiCQKBYj5M3YBS6ol5YJsWT9OzZ+JLMdY92hRoVcZT
 JDKMFS2dzNCtxRp4kIrGmEw5kB31LxKVpwlve2uSumMJ3wUOo3dHM0ZCL
 zHxncIguX4RVMKHxka9m4b4dIBIjBKsfoynHB2aPkZV3k433pDGxiJnJp
 arOkTzi0h2EQMo5lk0EKJsU1pTOLV8LLySoR45dFhNIOuH84fywL1nCWR
 1KlnTPaGOKXHs5pp0ME6+iiDjOpoUnLGmu6t6X7QBeXK30xEk6FBwKcqn
 y5D+zmxD8hjUlZEJ4bTZLZ6GKir9JFFoGDYU0o9LWhvP8Xm2j393Y27TR
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nD6Zulk7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Disable Cage Max Power
 override
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
Cc: netdev@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/22/23 09:34, Wojciech Drewek wrote:
> NVM module called "Cage Max Power override" allows to
> change max power in the cage. This can be achieved
> using external tools. The responsibility of the ice driver is to
> go back to the default settings whenever port split is done.
> This is achieved by clearing Override Enable bit in the
> NVM module. Override of the max power is disabled so the
> default value will be used.
> 
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  9 +++++
>   drivers/net/ethernet/intel/ice/ice_devlink.c  | 35 +++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_nvm.c      |  2 +-
>   drivers/net/ethernet/intel/ice/ice_nvm.h      |  4 +++
>   4 files changed, 49 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index ffbe9d3a5d77..a3a49d922650 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -1569,6 +1569,15 @@ struct ice_aqc_nvm {
>   	__le32 addr_low;
>   };
>   
> +#define ICE_AQC_NVM_CMPO_MOD_ID			0x153
> +
> +/* Cage Max Power override NVM module */
> +struct ice_aqc_nvm_cmpo {
> +	__le16 length;
> +#define ICE_AQC_NVM_CMPO_ENABLE	BIT(8)
> +	__le16 cages_cfg[8];

[1] here

> +};
> +
>   #define ICE_AQC_NVM_START_POINT			0
>   
>   /* NVM Checksum Command (direct, 0x0706) */
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index 80dc5445b50d..e9300df9ef40 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -591,6 +591,36 @@ static void ice_devlink_port_options_print(struct ice_pf *pf)
>   	kfree(options);
>   }
>   
> +#define ICE_NUM_OF_CAGES 8

perhaps move this define to ice_adminq_cmd.h to benefit from it in 
struct definition just few lines above [1]
> +
> +/**
> + * ice_devlink_aq_clear_cmpo - clear Cage Max Power override
> + * @hw: pointer to the HW struct
> + *
> + * Read Cage Max Power override NVM module, clear override
> + * enable bit for each of the cages. Write the settings back to
> + * the NVM.

Read+clear+write is "how" or algorithm here, but doc should just stick 
to "what" most of the time. So I would just:
"Clear Cage Max Power override enable bit for each of the cages".

"how" part could be inside the function, just above "read" call.

> + */
> +static int
> +ice_devlink_aq_clear_cmpo(struct ice_hw *hw)
> +{
> +	struct ice_aqc_nvm_cmpo data;
> +	int ret, i;
> +
> +	ret = ice_aq_read_nvm(hw, ICE_AQC_NVM_CMPO_MOD_ID, 0, sizeof(data),
> +			      &data, true, false, NULL);
> +	if (ret)
> +		return ret;
> +
> +	for (i = 0; i < ICE_NUM_OF_CAGES; i++)
> +		data.cages_cfg[i] &= ~cpu_to_le16(ICE_AQC_NVM_CMPO_ENABLE);
> +
> +	/* Do not update the length word since it is not permitted */
> +	return ice_aq_update_nvm(hw, ICE_AQC_NVM_CMPO_MOD_ID, 2,
> +				 sizeof(data.cages_cfg), data.cages_cfg,
> +				 false, 0, NULL);
> +}
> +
>   /**
>    * ice_devlink_aq_set_port_option - Send set port option admin queue command
>    * @pf: the PF to print split port options
> @@ -623,6 +653,11 @@ ice_devlink_aq_set_port_option(struct ice_pf *pf, u8 option_idx,
>   		return -EIO;
>   	}
>   
> +	status = ice_devlink_aq_clear_cmpo(&pf->hw);
> +	if (status)
> +		dev_dbg(dev, "Failed to clear Cage Max Power override, err %d aq_err %d\n",
> +			status, pf->hw.adminq.sq_last_status);
> +
>   	status = ice_nvm_write_activate(&pf->hw, ICE_AQC_NVM_ACTIV_REQ_EMPR, NULL);
>   	if (status) {
>   		dev_dbg(dev, "ice_nvm_write_activate failed, err %d aq_err %d\n",
> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
> index f6f52a248066..745f2459943f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_nvm.c
> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
> @@ -18,7 +18,7 @@
>    *
>    * Read the NVM using the admin queue commands (0x0701)
>    */
> -static int
> +int
>   ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
>   		void *data, bool last_command, bool read_shadow_ram,
>   		struct ice_sq_cd *cd)
> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
> index 774c2317967d..90f36e19e06b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_nvm.h
> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
> @@ -15,6 +15,10 @@ struct ice_orom_civd_info {
>   int ice_acquire_nvm(struct ice_hw *hw, enum ice_aq_res_access_type access);
>   void ice_release_nvm(struct ice_hw *hw);
>   int
> +ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
> +		void *data, bool last_command, bool read_shadow_ram,
> +		struct ice_sq_cd *cd);
> +int
>   ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
>   		  bool read_shadow_ram);
>   int

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
