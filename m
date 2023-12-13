Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD53812299
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 00:06:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4BD8E43672;
	Wed, 13 Dec 2023 23:06:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4BD8E43672
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702508787;
	bh=dNiDBsn7wdKeA/gyOjLuoeJHypmsFjk27VihBd0HCBo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ILyV4YXjzEKZjuqY2eRextT8RtQxyEq3j5nHHpFDIkwthDTZvNxgF60o5GX7ANnV1
	 S7bh3DZ312IKDMuKHg2z1ZkKMYIXr1i+5c00ct2TwcRZM8VsLT6+W/xjvZYfndhyFW
	 cVz3LwHAgFSWafq+xyJN47uAKHrk9Rrd6aO1nwzYHiV64ORIJSj0xCDKG/H9IWm229
	 bA8mefkyhd/8OZMxbqCAiROUYcoDnS9+Xv/QII5pnhX7ZdEcmaq19S9GUMRStZQXBi
	 bMqf+AbSgs9fYPWf73ooB8spSB4OFNV2+77QuEnQ28EPx2+XKY07ycx1ZEDsFsrolE
	 56t3jGniVD2eQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 00j2AgRC6Ez3; Wed, 13 Dec 2023 23:06:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C796840488;
	Wed, 13 Dec 2023 23:06:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C796840488
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BFCCE1BF28A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 23:06:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9BC0B6159D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 23:06:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9BC0B6159D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id snKZLdlwWFXf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Dec 2023 23:06:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 02F7D6146B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 23:06:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 02F7D6146B
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="397823596"
X-IronPort-AV: E=Sophos;i="6.04,274,1695711600"; d="scan'208";a="397823596"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 15:06:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,274,1695711600"; d="scan'208";a="15600814"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Dec 2023 15:06:17 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Dec 2023 15:06:16 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Dec 2023 15:06:16 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Dec 2023 15:06:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z5dzL7SZqS34bh1S6LtQMLApXquwzhgtasFNBihFPCsxPgbzwoj2uK5Yymj0+k/WYd5lpeEO/N7clKIlI47Roiam/qoQon1iJGHfshQpVVIR/ub/zLPfoE96E2rBGeUdUB6iz6waaHo5ykupCv5aGD3jhEHxyVx0c/yslXyo6q4Sw4E5XMr26awTuRn4u7ABjlKRF3l0ukh5q+LCHd9ij8OI+8pz8d94pdqgaTqG2DhXDx2WQXmGJFirgjPh/aeW2HoVdjH+vv6Z+7Y7IH7wrGf9q5wzltam5lXkz2D4pjG736DsxduCw/BG705VfjPWIPVFI2Gl5I++D9CU6V2Rig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7jB5cojTPDoPMc/kkURKlFmqNTI1pWBrGdVMdGojeBU=;
 b=OG3b01utnFwLHbcCGBjaRYoJb9HuJT4LgN/JX/GdbKetUkcwcf93R/4o/U2hSspQxoy/1/7iFfTuiaXFIw2odrrjNqeT2r95Dw/NnZcJI9sbKZRRCxW3XNuNjkRWW5CUyf34GtqjxNfE/TkossYT04hqgnHEtBqeLX136KSgCkNG51gtUYwFbgoXCNYJZC+LquZ3JwOvZ/8H6ezhNJSwDjwQ68uBrDrmeZcqm9yD2WxXGFDoFdV/GVk8iFk/d3Hr5rQYig2tUNgK0dmwzp9weioLW33qEnpe7yuAHEmctJifAl3WFUjUjjWVdRvNVgnZspViMzlgpkhj54Qiwv26gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH8PR11MB6657.namprd11.prod.outlook.com (2603:10b6:510:1c0::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.26; Wed, 13 Dec
 2023 23:06:13 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3%4]) with mapi id 15.20.7068.033; Wed, 13 Dec 2023
 23:06:13 +0000
Message-ID: <4f2559d3-06f0-71c4-e34d-073f2bf84fe4@intel.com>
Date: Wed, 13 Dec 2023 15:06:09 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: "Kubiak, Michal" <michal.kubiak@intel.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>
References: <20231212145546.396273-1-michal.kubiak@intel.com>
 <78ecdb9f-25e9-4847-87ed-6e8b44a7c71d@molgen.mpg.de>
 <ZXmwR4s25afUbwz3@localhost.localdomain>
 <ZXm22Iw+vSxacpkQ@localhost.localdomain>
 <BL3PR11MB643539AEA523C7427BD255F7C68DA@BL3PR11MB6435.namprd11.prod.outlook.com>
In-Reply-To: <BL3PR11MB643539AEA523C7427BD255F7C68DA@BL3PR11MB6435.namprd11.prod.outlook.com>
X-ClientProxiedBy: MW4PR03CA0288.namprd03.prod.outlook.com
 (2603:10b6:303:b5::23) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH8PR11MB6657:EE_
X-MS-Office365-Filtering-Correlation-Id: 056fbd18-03ec-49af-943c-08dbfc301a27
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: X2Fnv6iNl915LFLPtaNMb1iCPQUTQQoXzJzedyX9e4mI7l33EIgBvDdaXd2BgiqG7S7CModjxGerUMTkzby3yADIBX6afaYpkDnefbQioTJhrLm/tDD8iD98Fg4fqGR2/+3balP+a/96Zgv3jfYD9n1XNewDNwckQoeJ+3H8YQkj9XiHvmD065O19U+1Dq50xU3tCW0G5hmY/clDLav6WvFRnnYJ8CGfzLEUV1OWWZT3o54c1JVySaiQwaKh5fdq0mxwlIA6/oFXUV6hTFCgCXwMVac1NOPIK2Vy4nWAndS1NHelhdxkcbu5JUdjmZL54Uz6zUshOjEb1jvrlbljfXGm/dlFLfPZEU+ymICpPMA6JXkLRe3BKaQQQlmXmO0BmexnfTiEh66yq10CUmGTKTwJi9tOMLQ7RmRmsLYrDlPSGnEXzJJbUejRFsMfarQPZbzo0yDckutmKz3aeapCiE1DpJdClbwgjFPeCQk75CZlCy6wmknreYmXr3YIUE8U3lXWKy/GkUdKcVNBh2thSv1qoLDIxxXFiJatM1wT6pdOILtMM+tsLEpnf7wQpJo/PzvC9kkvkIBpeIGO/ag0k/XxfZcT9aguwjjF52qYB8Ye5DL82RDsDF6pWPKt6dIXO+RtGl4sEsMcHufMyi8Z8a0r2HzBsUf86cC9p9MwUzIzqHN5GFd851nLVAVjZDLh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(346002)(366004)(136003)(376002)(230273577357003)(230922051799003)(230173577357003)(1800799012)(64100799003)(186009)(451199024)(2616005)(26005)(107886003)(6506007)(6512007)(6666004)(83380400001)(4326008)(5660300002)(8936002)(8676002)(41300700001)(2906002)(6486002)(53546011)(478600001)(316002)(66556008)(66946007)(110136005)(66476007)(54906003)(86362001)(31696002)(82960400001)(38100700002)(36756003)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SzRDTXVLc3prdlg0SmhRQU5pNUZDb3p1SFdDYnhJOGFFNytYMGo3ZS9sVEJu?=
 =?utf-8?B?SjRndllXODYwYUZOTG1DVUIrR3RMdkJOdU5SR3dPMUJaNG5kNjRVQ3FJYnJz?=
 =?utf-8?B?QlJ3MlFVOFZTZ1RsSE5DVmp2S3g0eXI5Mlc5VFBxRFRCVFErWWZmUitOd295?=
 =?utf-8?B?Wk1jRXdXdEYzQ1lrSnhQTjc0UElIT1JQZlhPTHhUQzhMUzZ0YnM5MFVSRUpM?=
 =?utf-8?B?Nkt4S3Vrd1JtS2RmTnI0OFl0QTBrdEpBdFJGZlQvcll4UU1kVVVOd1duMzZ0?=
 =?utf-8?B?dkl3cm9Mei8zQXZCRHBzdVoxTlRvTlRYSXByMk1WNEMyRzdmV3FXcFFGY2VG?=
 =?utf-8?B?UVdIQVpsWmU0b2xEVmxlKzYraU1OOUoyTGhLZjdBR2wyUk1zWHpVM2dSUzFL?=
 =?utf-8?B?cXMwdDZPTkYwZzlQNDEvajVtWkl5b1hUcU9ucDZSTjNNOVFCOUd4T1pKb1JQ?=
 =?utf-8?B?Mk5GSkkrN3c1R3BtekMvV1h5TXdUc2g2VXVaQkhNNlRRVzltQjB1Ym1HMG5S?=
 =?utf-8?B?M2VIcWNrbGhQNEdQWWJYWFFOQVpTOGxEcG9ucjNzcVFHeWNaUTdvd0JwVHUw?=
 =?utf-8?B?bVE1V3hIS1RlUzFHQXk3MW50MmJ2TEJlR2V6by81RTRadExSaG0wcHk5bUw0?=
 =?utf-8?B?SnNXdmFxVlA3WlVjUmdSTFlpMjVtaDRYNjJpVktiQjI5WEk1R2h4TjFCdXdQ?=
 =?utf-8?B?RWJITWVXbE83b2tibzVPc0VJUFJpV2RwWE9QOVppLzZHUEQ4a21GWUZUeTBN?=
 =?utf-8?B?bFlTZDRmQ0MzZmxsdTVKUG12UEExcVpFSHFZYndaNEdCSW1ROGpmcEwvcHJO?=
 =?utf-8?B?VDkzVURwOWJqcmVFQ0gxckl2MzR3NktZcWt0VzlPNHEwSTd4aGorMmRXbC8w?=
 =?utf-8?B?UUlhWGpCcHJDZkxEbURKTmZyOVk5ZXB6T2VPbnZ3VWhGb200M01rZHRDRWJD?=
 =?utf-8?B?TG9pNHVvNnM3c0tzMXNFNnByZGptdTNPOERHNjNXbENGRHdld3Vnc1VqdXBq?=
 =?utf-8?B?MXFpOGFZeDVhM3Q2djFES0R5eTI5S2IyVUR4cFY0alhZZGpLZVNlV3NZakFF?=
 =?utf-8?B?RC9la1d4Qzl5QVRPM2JVMU1UeXZlRFlpVnM5MGRpNXdqOFh3bEE0MUNYRFor?=
 =?utf-8?B?Yk1NWVBpbHMwWUtXTDdyM1lWTzY0dHlkQVBtakV0Yjd1c1l1N01RRXNqZDBW?=
 =?utf-8?B?aE5pNURGMHNKemlZNnJ0dWR4OWNWTXhQSXpIbHU0dW5HTitMb3dwTWkwWktY?=
 =?utf-8?B?ZWhxYm1TaC9HRE13MEVjTW41NEsySU9aUWM2N2wrOFRYdXNYVUs2YkdRTEkr?=
 =?utf-8?B?Tm5xUVdmWkxyQ1dyTUtnclZUN08xbEo0TWVtK0ovZWFjUlJlRnFwL3VmUld2?=
 =?utf-8?B?bVJ4QTJRUjNBNzJPN2doSkE2dmFxUGg5MkNmRU1KM3VWYkxjRmh6SE16MnZh?=
 =?utf-8?B?aXk0eHpaLzZnMWxadm56TXN3cVVTekozMzI4TGFaSFRUMXFwTkgxeU9NRG5R?=
 =?utf-8?B?S1ZzRVlMYlNoTnBMWVluZWtiMEw4OWN1bk5pUUhwSlVTVnJFUGs5T1Z3WWpV?=
 =?utf-8?B?NTFmb25NUzZlYzlBVUN4Ykt5V3F1RDBMcXVwWitLK0NPNkVPTHhVcDRFRjhn?=
 =?utf-8?B?MjBFaUNxZS9qQ0ZBdlhUQmlUTmNMNi92ZXUxcEdxcElvZ1N0bnNEcmcxUWY3?=
 =?utf-8?B?aEdkOHB6czZWUzRJbjlHSk1VelNWK3JrYVJ0ZUNTU1lHVW9XMjlmL0ZZMkpC?=
 =?utf-8?B?TllHNy9WY0diQzQzVnBzT0dtOVNRYklQb2RGY1NGZ1cydVJsT2FieWlOYUtD?=
 =?utf-8?B?V0hCdFJjLzZiYWhVZ1JCMFdDalk0VWlhK0pRdEZJSmFkOVJXTlE0RjQ2R3Zi?=
 =?utf-8?B?NCswdmRyUnNUYVNvczlDeGZicy9EMlEzb2NGdzkwMldyVG42OGMzK0VCNEpC?=
 =?utf-8?B?bzF5OHBTcVFLKzA5MUNBV1JZbkR2Q2EzZ1J1U0Y3T1kwNzRYV1BtRWNjRHpN?=
 =?utf-8?B?Q1dTK1E0ZW10OUJOWDNKU0dad1JDWHN6bjZzMDJrYmxKWXFZWExUUnJYY0ZV?=
 =?utf-8?B?MmZTVUhnbGt2Um1vUVR3SFh3VStlczFiaFFhV2pRbHA4VzhOVGdWYkJzc1dv?=
 =?utf-8?B?R3ZtOXJ5VVdHMUd0VlN4eGpERGdYdzlXRklQL0hGTy9aa0xOdXYyR1dkQmJX?=
 =?utf-8?B?Nmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 056fbd18-03ec-49af-943c-08dbfc301a27
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2023 23:06:13.2791 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HaNx62qKJcwm9LjtlkUOP2M8ifYJ+YHgvmtVrBPKoHHy5X/GHslr8MpKJtY1kbbcCUMnpKOZ4/8UwOof6xbpAjwKdmUSxeDgyJYqjuMfnIg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6657
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702508778; x=1734044778;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Yv9H7A7AbeAnCF5YTsNxYbq1p7NvsI1KG21SeOBaQtY=;
 b=HqugAi5XRat0Z0n6sE6zt7T5GY2fthc6l0J5zAYeE8NAzsnGUXxqolie
 Cln8pO5I7YUNOhlQlqKgzB/yMRLQnU/hsSgz46bx0DGNdJumyHtcZirgW
 6NEbI9neKcMSIpUODbcS6UspsyskTix7lhGM90P/p2U/1TsV3xgnVGt7p
 gNLGcqjDX7uQxUCk1/gzk4PUx//8aHp+5ZgPhAgb3DksT2wkHqmPioh0o
 LC3lr43Cm3cBGyDnYkD8zGKuEo3iX89vh/XkPtjoVnB9gX2VCy0Vw3enT
 54GEPu6B4OynuKlbCY0byaANER4vfScPlqcfMudO0D6D7RVXDjymrkSdv
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HqugAi5X
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: enable WB_ON_ITR
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Tantilov,
 Emil S" <emil.s.tantilov@intel.com>, "Zaremba,
 Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Hay,
 Joshua A" <joshua.a.hay@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Brady,
 Alan" <alan.brady@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/13/2023 2:22 PM, Nguyen, Anthony L wrote:
> 
> 
>> -----Original Message-----
>> From: Kubiak, Michal <michal.kubiak@intel.com>
>> Sent: Wednesday, December 13, 2023 5:51 AM
>>
>> On Wed, Dec 13, 2023 at 02:23:19PM +0100, Michal Kubiak wrote:
>>> On Tue, Dec 12, 2023 at 05:50:55PM +0100, Paul Menzel wrote:
>>>> Dear Michal, dear Joshua,
>>>>
>>>>
>>>> Thank you for your patch.
>>>>
>>>> On 12/12/23 15:55, Michal Kubiak wrote:
>>>>> From: Joshua Hay <joshua.a.hay@intel.com>
>>>>>
>>>>> Tell hardware to writeback completed descriptors even when
>>>>> interrupts
>>>>
>>>> Should you resend, the verb is spelled with a space: write back.
>>>
>>> Sure, I will fix it.
>>
>> Hi Tony,
>>
>> Could you please add a space ("writeback" -> "write back") when taking the
>> patch to your tree?
> 
> Yep, I can do that.

Actually, looks like you missed updating kdocs

drivers/net/ethernet/intel/idpf/idpf_txrx.h:508: warning: Function 
parameter or member 'dyn_ctl_intena_msk_m' not described in 'idpf_intr_reg'
drivers/net/ethernet/intel/idpf/idpf_txrx.h:508: warning: Function 
parameter or member 'dyn_ctl_wb_on_itr_m' not described in 'idpf_intr_reg'
drivers/net/ethernet/intel/idpf/idpf_txrx.h:561: warning: Function 
parameter or member 'wb_on_itr' not described in 'idpf_q_vector'

> Thanks,
> Tony
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
