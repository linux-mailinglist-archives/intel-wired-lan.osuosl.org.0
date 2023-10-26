Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 045B17D7FA3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Oct 2023 11:35:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A9ED417FF;
	Thu, 26 Oct 2023 09:35:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A9ED417FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698312937;
	bh=deRyMB8WIucO3sFOMvhrLgpu+YIOaMnZy4Ppn2D2TH4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lIDHumF1uDExW3RUK1/d3j8vanazH+h11H6BXsJ60hBcWBvflyWS1wPmNlOK+7C27
	 7FjnBoo6H0kAMq0rROWR0Z2UNgT6BYxJmTYN2aO//SGCyLVktTklB39d2TzBKXlNP7
	 ebxz1I+TTi6iIC4hJ3GF8QnWm34My3caiLqF0x52soCZJXOnNdcJjJPMir8hHVSjgJ
	 4VvzEkEbWixCSTBonLOaDcD3prwrK1fltHASBVoo2jL54Qno7JTEQ7jDrNGEImNLAL
	 /tXigWK0PPTtidxOtCpIMKvFHwPcHZxAk2zsJMdWVqPyL6q1LFv9ROpzqUQJ4ScKcj
	 CxjmsqKjsrjQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z8440S58o0xi; Thu, 26 Oct 2023 09:35:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 20EAD400DD;
	Thu, 26 Oct 2023 09:35:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 20EAD400DD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D342A1BF2B8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 09:30:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ACDE66124D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 09:30:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACDE66124D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7uPBlrZo25L3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 09:30:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 605FC60E41
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 09:30:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 605FC60E41
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="451735511"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="451735511"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 02:30:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="386701"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Oct 2023 02:29:39 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 26 Oct 2023 02:30:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 26 Oct 2023 02:30:13 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 26 Oct 2023 02:30:13 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 26 Oct 2023 02:30:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A1lgpSHiCYrpVY0DB/VVn70XwgyKZrr+vVPff1r8ER4PMYDbvitpuoR1HrzF+d9TDLAgcePgaz60sm2MfP9FD1v03+uKn19vCcRcd5U7wNNEVRQlNKDkr06pHZd2i8ZiPj9F5VB8f3r9tyjYkK8UQYQmGipH2WKcaBnXUfpptOiT7AfJ5MiWKeKv+64UnByReo7AYaZGglVhV6IsHPP2/DEU0YrqumFYa+Te2o2WhBDLzIhk3kr8FWevhEEFMbNFBe4oIRn2ZjLm61nmp4Kilpnt/WNZnC3agc7yHgVtNGowJHjxJOaTT0ep/CjK7VvlRfoz5Zg9+Edlh7srtRXUVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9M7DLaf4IRK9hmZcQKlJwMOJX99d2lMPduawTag+NcM=;
 b=l0ChAzMInCoaqYRHy30/n11wEyP2ibOBDAajRZWgQhhl21grqA88mhTq0wJJkYjNYP50kDTQAXmzsZQTbfmeyjZ7KUxB1NlU8UPPpXo4EM12n4Kg3MBq4WBxx0bRNUgAuHVrtn8bMUC2BQc/+pmDk429Lh4rkzRMHNveoN3lshm5qpa8TKajorD5Cpu3e2zAJ3dK4xH+7zJ3IewzRsXl3Jit2w8W3ypBFTnwTRgbU8Y2+37G56uIehMBIk+jXvtlvmZUPVtElAH8Lgv0FOS8e5o04RQrsh80leLoV8UqYC0EG1Y5yvweY3DlK8PEg/D2Ep0IRS8/jhclYA1THJ20gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by PH8PR11MB6880.namprd11.prod.outlook.com (2603:10b6:510:228::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Thu, 26 Oct
 2023 09:30:05 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48%4]) with mapi id 15.20.6907.021; Thu, 26 Oct 2023
 09:30:05 +0000
Message-ID: <cb83107f-f022-86c6-b463-a1eee4936967@intel.com>
Date: Thu, 26 Oct 2023 11:29:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Justin Stitt <justinstitt@google.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Shay Agroskin
 <shayagr@amazon.com>, Arthur Kiyanovski <akiyano@amazon.com>, David Arinzon
 <darinzon@amazon.com>, Noam Dagan <ndagan@amazon.com>, Saeed Bishara
 <saeedb@amazon.com>, Rasesh Mody <rmody@marvell.com>, Sudarsana Kalluru
 <skalluru@marvell.com>, <GR-Linux-NIC-Dev@marvell.com>, Dimitris Michailidis
 <dmichail@fungible.com>, Yisen Zhuang <yisen.zhuang@huawei.com>, Salil Mehta
 <salil.mehta@huawei.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony
 Nguyen <anthony.l.nguyen@intel.com>, Louis Peens <louis.peens@corigine.com>,
 Shannon Nelson <shannon.nelson@amd.com>, "Brett Creeley"
 <brett.creeley@amd.com>, <drivers@pensando.io>, "K. Y. Srinivasan"
 <kys@microsoft.com>, Haiyang Zhang <haiyangz@microsoft.com>, Wei Liu
 <wei.liu@kernel.org>, Dexuan Cui <decui@microsoft.com>, Ronak Doshi
 <doshir@vmware.com>, VMware PV-Drivers Reviewers <pv-drivers@vmware.com>,
 Andy Whitcroft <apw@canonical.com>, Joe Perches <joe@perches.com>, "Dwaipayan
 Ray" <dwaipayanray1@gmail.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>
References: <20231025-ethtool_puts_impl-v1-0-6a53a93d3b72@google.com>
 <20231025-ethtool_puts_impl-v1-3-6a53a93d3b72@google.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20231025-ethtool_puts_impl-v1-3-6a53a93d3b72@google.com>
X-ClientProxiedBy: FR3P281CA0102.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a1::17) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|PH8PR11MB6880:EE_
X-MS-Office365-Filtering-Correlation-Id: 80fad5c7-95f7-422a-0096-08dbd60622fc
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FSffYEfD2r+RGox3XxhFGt7Po/zqxSSK17RUh1/qhX17QBsmvhcOFT6e/XddSjIfnFfFd/YXErosfWrcSUoGGwW+72Zn0RCdx5sBp/K/fQ26njw8jc5HMOefFWzlWWEWCE2pUqbUpCEQPs7t0OO2g+rQrZgVLkFdqvASUiHJ1fzvb2VpCDdhAqLuKpOyzfEKNKkamEDwzAEiiEn0yXxhidk0UhkA5sdaedXSB0s9IeAPzuY8+q5JSlhB9PCJROLm1kPnuQzwpfk7PLnOBUipoG/IKQ5CyUzbnEnYOiXaGaqdowX1IGN29K//2l3GSemTDs1hZgiS/PqHd6KRQZu9gvyI6TBsLkgBuDsHNAN2UvUblJRuPS/Z3k4WVjY08gXhHSR6sspw4WaU8RNgj7GimVJ4BAXcbQaG/JJPCccexhnDLcoenHSyz+/PKbYpf9xNCqO0fqVUfcAV3YqgnVPBi0FIuJKksNr3kpxR37mSc6/NWZ4XvvGyYDJYbaoQ5e35Yreq4F0b1Qa4xOC5hykBwB4zZggvYEphHwZytbZ6kXG0GOeEcczsn8vtLk1G/rA1Kv3Qu8fv0G3aVFCLZ2Zr5ON+YEDgSgjDNrsgWRlkyYTlbaUMHj8ppMmBIAGi9xsFSZk4U1tVunE7AI4GRB8oDQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(366004)(39860400002)(346002)(376002)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(31686004)(921008)(4326008)(2906002)(26005)(7416002)(5660300002)(7406005)(83380400001)(8936002)(53546011)(38100700002)(6506007)(6512007)(8676002)(2616005)(6666004)(66946007)(316002)(86362001)(110136005)(31696002)(36756003)(54906003)(966005)(66556008)(41300700001)(478600001)(66476007)(6486002)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K1FIVk5iY2JNVWExRE0wT1JSUVlZeThFQ0xvMXFGNlFDRHgyajJqM1gyUElJ?=
 =?utf-8?B?eDI4a0tsNVhCcUlpTEpxZmNoMmFqWElCU1pwZ1RtTFY4bnVrYmc2cmw3MGRo?=
 =?utf-8?B?VnoyajdZWWttYlM4YmNyR2ZmdVc5OHpCZkhRL2U4UkJJRWloNk1ZSXJPVSt2?=
 =?utf-8?B?VTVqS3JGQTVUKzVZYkxJaVlLUi85dlFqc3N0ZmFIK1JsdVVORTJKUnJJVXZQ?=
 =?utf-8?B?N0h5T3EzbmNpVGRxTGhCcTJ4eEpmZ1I1M1daRm9KUjFvNGtGTGI2WGluVE5X?=
 =?utf-8?B?YS8zSGFvNXVJVGtBeG5wYTd1bTZ4djhkY08rbmdkRnJLYm01MXRyK1pzTm1O?=
 =?utf-8?B?WFh6MmZwOVJmS0IwZXdCSWZwOExXNzFOS3BrWHpaWCsyODl3QVdwM0pOZlA5?=
 =?utf-8?B?M3hFMVRuWEJxVTI4V3Q3Y3Y3ZFVjNGRuM0NHS0d1c05LU3AwYnRuUnRqWUVh?=
 =?utf-8?B?NDdBR05ZZlFRNHdkZ2dwTTczamh3Wkw4dG1QdnJId3JoTEZTZzdVK0lzeDhZ?=
 =?utf-8?B?R2hNY0lVMXdnV0UrUHdGWXNINE02OTdFZmF5SEt2aDJCRm1HQUhhRHptZDNs?=
 =?utf-8?B?NjVuQ1VTbEdIT1RwMkN2RGNvOVpvNVlHeFF4dmcrRzVjYXJHQVZpSnIvSnds?=
 =?utf-8?B?QytVMlJreHgvZzl6M2xYTUR6STBCMHl6UGNtN2tQaUJSOURmTVEvMDFSdTlu?=
 =?utf-8?B?WjgvMGUrcVJlOTNvY3VIT0FDTWxGbWVjR3JvMlltSVZ6TjFkb1R4dlVJSThu?=
 =?utf-8?B?L0t1OWVHcFNrV2YyMW8vZEFyOWppRjdRQ3Y4MXdxK0VrMlpJL1JQNm1IOGJH?=
 =?utf-8?B?eEZoek1VdjMyc1ozbUp4T1dnUFFLazU3VitUNzBjdDlLM3ViTVczMmZGSmVa?=
 =?utf-8?B?OXBpRGVLQ2ZGc0w5ckVOMFZnVzRQTVJXdUZUZlpvb09qSmE4U0VjMzQzTVZP?=
 =?utf-8?B?bTd0NlFQdThwY2F4bzZDQ2FrV0p6NGw3NGRaRThxRTJnYjJsVG9TMDUzS0Fr?=
 =?utf-8?B?emM2SzhvdEx6MXVFVVRabGhjSEI0bEpsemFDWm15YTNLbnZOc2JrSm16dUR2?=
 =?utf-8?B?cFNUTXZ3b2lYVWJINEVxM3Y1N29nZlVDeGhNV0JGVWcxOWhSTWFKMVNNMXNn?=
 =?utf-8?B?d1h3VjgvbEFVRkJIM2VseWtpZGpDaWpndE5yOEQvSUI1VlJqTVB4N29SYVJI?=
 =?utf-8?B?V0RMQ2xLc0hWVjV4RWRNNnhYTDY5NUtZdUFTaWpTbU1rRVhUaStLck9MNlc3?=
 =?utf-8?B?VG9YMkllUTFvNms2cysvbE5uVjYzc2RpRG1uek83SFV1aWhMRTFEVkdYalJH?=
 =?utf-8?B?UDdDeFRoNVhWZjd2Nng3VWxFMjhlbmxVOGNoRnJOWll5S1k1dUt4V2NpMlVp?=
 =?utf-8?B?aHA4d3dVbTErRis5eXJvY0JSMS9zRWc0RTh2bTJFQk5zQ25ITmtjVUFOOHpr?=
 =?utf-8?B?VEt4bjY2Z2x3VXFYaUh6UFk2UkthODhQNkFHc3oyVy85QlQwcXFiWWdWZ1NY?=
 =?utf-8?B?U0N6M2FRT0FiQnhaSjVpN2VSOXZzdElmOU5MNW1QRUNpNlhDcHd6U3U5MUIv?=
 =?utf-8?B?cjQ3cnN5MS9ZdTcrMHdIWC9yc1dzeThNbE55amxUaXFMaERRdG5EN0pxQU5k?=
 =?utf-8?B?emtiNzhob29HS1NRWk5ZVExET2pQWVJjZyszL2Q4TDdjYU9YTUhRclR3RmI5?=
 =?utf-8?B?SnFLaGpYWXhjREMwN3pwekZSQnZlM25uTU42MTBjU2ZJb0RKY3crWndTNmdr?=
 =?utf-8?B?elYvNUk3SzJFbTNZVHZ3bVhsWjhpNUdPTnVlNGdIN0RrZE9SUndyVjNKQVhH?=
 =?utf-8?B?OU5UL01RSTVweld5WGpFK1E5cHIzRVdnTXQvTzhjdk1xb1ExcTFZSEpIVEk2?=
 =?utf-8?B?Wmpyb0FvMkRSUjBqRURSVW9uZkFWc09pZVU1cWtmZEd2Zjc1QVNkUzY2Uy9S?=
 =?utf-8?B?VzNuSDIrVUVNRHJZRlNVQ1g0a0RtalhXYUo2eHNSb2VVc1ozZlQzVzVrMDZ1?=
 =?utf-8?B?VFNzWDB2T2JHNjBuWVIyTXRpVTB4MmovYWhFN1BZTjZ1VlM2VkpXUmZyZE5P?=
 =?utf-8?B?ZlZ3Q0NUa0t0Vlc3VnQzT0hTQkt4VFVpUFMyTEFWa0ZkTVd3eGUvRHovQmhV?=
 =?utf-8?B?eUFpZUVTc1lnNElSbTVqdzIrTXU5T0FkQkN6SEpBWlVXY2tHTXdOc1ZydzV6?=
 =?utf-8?B?UEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 80fad5c7-95f7-422a-0096-08dbd60622fc
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Oct 2023 09:30:05.4387 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SuqanZeHvsNTs5ZYExbL+fjApm/rpyaw43UO8EnzIKTJc9B3h47sQerX/P1O1doBqJPgacq0rFGVTHQQdLkdf9u8qjRovGbLiHJ5bBtGKVc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6880
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698312635; x=1729848635;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fKbR2cN6bXisiynmdOl6jeiqpm67HZm/3nLkvvdSHUQ=;
 b=EqOYTcB3zUeexIptvcwwzkgZNqMrpdaPD+zdQRtfftitFIYn4tYgxU2R
 J8wrkSrMoXAK4WLUX2K2VGvFpOlfyeH3EjGNmM0Nr3xOaKL3kDlftSJD0
 NsUJIRpJvRSNaKQMeRE8zE3whJlpvCmkGQK99oVUrLw26gM+Nv8Mtct9h
 V4dnM0gE5EXkDm68AyAbWx0HY/lo1shBi/ZhaHelN/NZ+3s4hf3lOS6xU
 rlaGWKtqYmGOK+oIHInPBeEbHCjZciuHdnChBGddBJ2uZ4QtlLkCnpeTV
 /yQFTs2ErSpS5i3vgx30HChgNYB+Z7nOznAO6gHllq3u4HswoSppiDZqm
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EqOYTcB3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 3/3] checkpatch: add ethtool_sprintf
 rules
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
Cc: linux-hyperv@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 netdev@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
 oss-drivers@corigine.com, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/26/23 01:40, Justin Stitt wrote:
> Add some warnings for using ethtool_sprintf() where a simple
> ethtool_puts() would suffice.
> 
> The two cases are:
> 
> 1) Use ethtool_sprintf() with just two arguments:
> |       ethtool_sprintf(&data, driver[i].name);
> or
> 2) Use ethtool_sprintf() with a standalone "%s" fmt string:
> |       ethtool_sprintf(&data, "%s", driver[i].name);
> 
> The former may cause -Wformat-security warnings while the latter is just
> not preferred. Both are safely in the category of warnings, not errors.
> 
> Signed-off-by: Justin Stitt <justinstitt@google.com>
> ---
>   scripts/checkpatch.pl | 13 +++++++++++++
>   1 file changed, 13 insertions(+)
> 
> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> index 7d16f863edf1..1ba9ce778746 100755
> --- a/scripts/checkpatch.pl
> +++ b/scripts/checkpatch.pl
> @@ -7020,6 +7020,19 @@ sub process {
>   			     "Prefer strscpy, strscpy_pad, or __nonstring over strncpy - see: https://github.com/KSPP/linux/issues/90\n" . $herecurr);
>   		}
>   
> +# ethtool_sprintf uses that should likely be ethtool_puts
> +		if (   $line =~ /\bethtool_sprintf\s*\(\s*$FuncArg\s*,\s*$FuncArg\s*\)/   ) {

no need for whitespace right after opening parenthesis, same at the end

Does it work for ethtool_sprintf(calls broken
				 into multiple lines)?

BTW, I really like this series!

> +			WARN("ETHTOOL_SPRINTF",
> +			     "Prefer ethtool_puts over ethtool_sprintf with only two arguments" . $herecurr);
> +		}
> +
> +		# use $rawline because $line loses %s via sanitization and thus we can't match against it.
> +		if (   $rawline =~ /\bethtool_sprintf\s*\(\s*$FuncArg\s*,\s*\"\%s\"\s*,\s*$FuncArg\s*\)/   ) {
> +			WARN("ETHTOOL_SPRINTF2",
> +			     "Prefer ethtool_puts over ethtool_sprintf with standalone \"%s\" specifier" . $herecurr);
> +		}
> +
> +
>   # typecasts on min/max could be min_t/max_t
>   		if ($perl_version_ok &&
>   		    defined $stat &&
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
