Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB12773926
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Aug 2023 10:47:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 63986610A8;
	Tue,  8 Aug 2023 08:47:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63986610A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691484476;
	bh=WNCqco8Yxkhfll9CNZnsvoa4PJdnq+h5ofYpai6vT9s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=arm44PixZsUxrMfOxZoM+G0YX5kDp/TMIJ7glJRUes17RRhCr323FJrOkWfZz5hEM
	 6Efz95VNzf4Ak6j8lfL+08kRm757y/UYzZ68rEOEh4Uzu72Qe9xc7vCztu+GgkTeb9
	 DTcs288WaDU/2PMHEo7C0DMTte1YLRLFY/caSw1i/CgOZfiAWH7bhCDVDjjvghf4Ym
	 bFXynffciYSWmExMgnKTSSKERHjrUF4Yp7CKehrCmNkUjfoKLvA4Dxp3TdRhKPf31/
	 iO68cVqYkH9+DEg2AobCJaIuX4/jqdDsvtxVJu5+epDQ0mL9l5CelbsD2ut3qkepyx
	 KUjoNHXQSLQKw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MZJ__8_TSE6S; Tue,  8 Aug 2023 08:47:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D6B3A6109A;
	Tue,  8 Aug 2023 08:47:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D6B3A6109A
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AEC9A1BF25F
 for <intel-wired-lan@osuosl.org>; Tue,  8 Aug 2023 08:47:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9262181BD4
 for <intel-wired-lan@osuosl.org>; Tue,  8 Aug 2023 08:47:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9262181BD4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tckt1DI4ZfDp for <intel-wired-lan@osuosl.org>;
 Tue,  8 Aug 2023 08:47:46 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7F2E181BCF
 for <intel-wired-lan@osuosl.org>; Tue,  8 Aug 2023 08:47:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F2E181BCF
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="373512725"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="373512725"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 01:47:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="855013858"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="855013858"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 08 Aug 2023 01:47:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 01:47:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 01:47:45 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 8 Aug 2023 01:47:45 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 8 Aug 2023 01:47:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ywm2quaGhX+A+9NlKSNriQbY4UF5tWffQ/5r7M9q28BYBqeA/W9tA4ZZ0jo4PrCqte8AbkHH2hY3fUaq6C0naGID6BcqrdYaM3Xfwt8clPt0EOU8h2Er7RxCR8paqWraJIWsma9K7X46HqUutWS31KU+suHUoCdyauOkxBdDfDwy34htRXmC/zyXgWi9OJPIDv99luvOhSw68EVQ4HFF7FxKhCU/VvaRJ4lEMcWV0en7c5n+pQdfY5RBFbTHHib5e1dTbr+dnKPmutrrvQIhvKwLnOO0Z+D3nj4R3vzEJ1K8L431zOROQ0KmrfYay4876Kx9Cr8kIDd8lGOvJdx1ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ucrqWqIZfoQcZ927/s8rGIYyrNXwLSQIfxKuqP/EJek=;
 b=VjmpjIvnKGwoa609MQp3JKQwKYo6aziZgYnskjR4UcfhKj7JOJOgHNweWMuSh0Y/Gj1r8+0k1YeaLpJ9klVFSfrc2uv6Dnc8PaCVBx9gNQk5GJ26o9cMVh9erwb852JUH9voabjwhyvv4FdHcXQJlO77I9Fik553PnW72SZS7XRCIFOioikHawSwLLFNf+vOsZjwySnGOf+RLq//aJvgdZz+97vX+WumLOtoPsL6pdsFm+BlMLJAVUDsOVcic3jw5kKS9gu/H3GCPi73egD07IBYfvIIc3bya+Z6kIBFtKO8l9j0nMFOAtBvHRNdjXhbDlSPLrJ2rxeht/dmyMsJKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3674.namprd11.prod.outlook.com (2603:10b6:5:13d::11)
 by CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.27; Tue, 8 Aug
 2023 08:47:38 +0000
Received: from DM6PR11MB3674.namprd11.prod.outlook.com
 ([fe80::7f4:c05b:358b:79c4]) by DM6PR11MB3674.namprd11.prod.outlook.com
 ([fe80::7f4:c05b:358b:79c4%7]) with mapi id 15.20.6652.026; Tue, 8 Aug 2023
 08:47:38 +0000
Message-ID: <124f8872-37ea-dedc-75ee-331d8d1f590f@intel.com>
Date: Tue, 8 Aug 2023 10:47:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>, <intel-wired-lan@osuosl.org>
References: <20230807103624.468230-1-karol.kolacinski@intel.com>
 <20230807103624.468230-3-karol.kolacinski@intel.com>
 <45567907-afad-635c-73d9-95860beefcf3@intel.com>
 <fd0a3660-f4e5-d540-4dd3-98e9aaf270cd@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <fd0a3660-f4e5-d540-4dd3-98e9aaf270cd@intel.com>
X-ClientProxiedBy: FR2P281CA0099.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9c::9) To DM6PR11MB3674.namprd11.prod.outlook.com
 (2603:10b6:5:13d::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3674:EE_|CH0PR11MB5332:EE_
X-MS-Office365-Filtering-Correlation-Id: 835cb109-09af-4ab2-bc8d-08db97ec1e51
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ot31qwQ6e8a3yIMbkC+KspdCqU/nqlcq1srWTeTz1ugDxx9yhZue7ZmfGNeksQ70CTc669jFsB6qoZm41IkVTTzOK3BZVFvzSXDaSXV58FNttaXsOR7a6ir/Kg4TEiBl1eJEUOtzQ/lSvQRG8zIaPNHuAq2o/wXWCxIM5f1xhrjSZzp6z5NThBBgLLK/ADqBAhj5RjBTRqcgp8ZM5E34t70HQdtXOPosFbVykNJVPHqsOTznCASr2KbVKJsx6MnHKjAyT5eeExJ1wtv7icGxSiswtmQZGnnN2k8XQW2eKHOuNhWOi8YsokA1NB7VkWKULz7gTjz9EIUryKZXxrdVIZRuj1C+Q+Cz2uncLX0/Mk17XMxz0lXy1yaxo5RP6eg9KiI89MZiMBFYwCrQXRZvZU+DoNl3yib5FTMnP4kj/9GrYSRzL9JhXix9K7vntBj7KifnjdrqMAzwgVgeEGedkrgXr/ep6Qm94Qr8i5s7fMZvy0fMhTI/BJrxaETYGWqtI5YQhPjk2R9qMuX38SStuIkmXVFnYH0SWvXHgW6yL8PNRGlbKmkeaIG6KJxyVcWDtgXyghWiYX8gFsWC39LUqhdOBL5F3RoBeRTg7fPxVwMSQyTvaDtxDOqs2zw2eaJWNMy1YAp4l1NmCl+BtaE/ng==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3674.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(39860400002)(376002)(136003)(346002)(451199021)(1800799003)(186006)(83380400001)(316002)(66476007)(41300700001)(66556008)(6506007)(66946007)(38100700002)(8936002)(8676002)(53546011)(26005)(6486002)(5660300002)(6666004)(6512007)(478600001)(31696002)(86362001)(2616005)(82960400001)(36756003)(2906002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YzN6L1RKMzBrRGdNS0V5NEN5MzFXNWw2U3Q5RUFFbDE1R0ROZzhhdDJtaFdo?=
 =?utf-8?B?YWJsRTlLYzFKckZ1RFZDdTN1VUd3bitGTVZzbDNwU0N0NUVrc0xEOG1hMlZR?=
 =?utf-8?B?VmNwRndib2l1eUJJSXcyYjBsM2lnazFBbFFwYTgzM255Nk4vZWFPaGlDK3c0?=
 =?utf-8?B?RDY0ODJZTE9YK0FPa2Z2YkM5QlM5bWtFRlJXZ0x4M3RmVWh0THRPcEZIK1I1?=
 =?utf-8?B?RGw2dzM4bHZIMlFiWHQvRktjTFFEczZyL0NsVmxBemNEdUsrLytmN01SRzVa?=
 =?utf-8?B?VnBLeWxLc2xDNk9iQ1ROMHVIZlNicHFVdTFqKy9PRGoxRWpCUHhERjNJM21i?=
 =?utf-8?B?NFB3Q0FvMTgyNncyR1A5Q1VzUThGSUxNdlJxTE5oNlNManNPbUo0S1ZwbEp2?=
 =?utf-8?B?SGl5WkEzaEc4K0lTYURnZHcwSmJnd0x3YjgycncycEg5TXNVUVYxRnRzejJT?=
 =?utf-8?B?TVo5MTUyc3J6YldIZHRWbElwK2oxMjgrZlVTLzZmaS9Ib0x4Um1hU0RCVGhX?=
 =?utf-8?B?amhCM0VlbHdrK3NXcGRoOW5vZHdDMGc4aDB5b3JzTHZpWmhrR21vNlVBbnZL?=
 =?utf-8?B?ZkZOWnFNUDFvcFNXQ3lxNGVwRURBd0hiKy9mUEtxTCtIVTNacSt6UDFuNi9N?=
 =?utf-8?B?QnNaMVZnWnBNMmp6TmtBRlVlcXRvR1NCaDV2OTNrWHl5MGM1K2Fma3M0UE9J?=
 =?utf-8?B?VWJuaHN0ODhmRno1UmRITmVqdDU3K3U1Z3ZwZXR2MmJtMWxJQVQrdEswTWJE?=
 =?utf-8?B?Z0ozLzVkTmw4Z2pQS2lqdlVjck1JWXlJSWdJcjFYeVplL3VvM3BIMDh4eXR6?=
 =?utf-8?B?Yy9NdWNyUWs1NlE0eHdSUWMyTUFJSG1LVVZaam9oWnBHN0NzOU4vZi96MWlH?=
 =?utf-8?B?QzFCS2hlSUtRTXFMTlBEdHRjZ1o5SncyeVpTMkM5eENxTVlWczlsSDNwWUk0?=
 =?utf-8?B?RVQrWDhaVE9VK09kSENBQ09lc2s5N3hSWFBYU0dEZk4vZkpqTnllcG05WDFr?=
 =?utf-8?B?azBkeEpnblhlNVZaUTFxTmczUjR2c2RQa2VTRC84OGFZNGtUV1FrV3ZlUW5q?=
 =?utf-8?B?QTNjU09VSEorUTdqZXpxbmhOeXh3MEV0RVl6V0MzZUZDRzVvSENSU0VORjVy?=
 =?utf-8?B?eHgrRmU1OE9vRTFjclhEUVFFcy9xb0l6WlJzTmgrNUNvdWdnOVNnYnFNdTk3?=
 =?utf-8?B?YTUzZ0RkL1VyV1JnViszSHgzb01vaVBOWDdjWU40ekN1VTIwNmQ4UldRV2ZE?=
 =?utf-8?B?OFowMUg4YzYwWElTQ1BIK0djV3pZTzBKa1RnSk84ZlNTdFBKeGoyamVraTZM?=
 =?utf-8?B?ZzBBUitGZGVaR0V3Mk5YdktKOWl0T0R0NnZobUttME1aRDFyQjdSRys3TFRT?=
 =?utf-8?B?SGtkYm5GbG1tOXpxYzFPYUNrdWxaZWpaUnBHZUxOR1k5eUZnbDJJbGhsNk00?=
 =?utf-8?B?bnJxZlB0d3d2ZHd3cVVNdlA2dXMzQ2RLRkRkaC9pK3lQUW9TTkpnWGNibzAx?=
 =?utf-8?B?WVBHeG1GWFdNUk5JZ2V6NkhkSms4SnIrVkFnMnYrSGdYSXdrcU5nNTEreGNn?=
 =?utf-8?B?RVh2b2p0aFcydENMTTFUVVlHQllhRFdkNklZZnRmQldLazFhakNLejVFMmRK?=
 =?utf-8?B?UWRvMEk3akdiN3oxT3BCY2E4U016Mkk0UE5jbXpXT1BvYkJ4SDk5cW1WSU4v?=
 =?utf-8?B?cDMxLzdVL3RGZ3dEbWZFV2Y3VXIyYVB0Y3VaZXVBQnY4L1BBVVdwWVo4YzF6?=
 =?utf-8?B?ZEFINWJITndqaEEzazI4SUh5bWJLaUowOFdhMVozdDNVc1lrMFhieVFGTEdk?=
 =?utf-8?B?ZFp2ZEdoV0VOaGdaYmdSRDRmS3ZyUWVVZUlPeG5ncWRoV3JoNmdVeGtXeDVS?=
 =?utf-8?B?M1M1NVg5RjE5M3FIZ21KUEFwVHNkOTBGd3ZxelJ5bDdaNWoyNklSOFdGNFpH?=
 =?utf-8?B?VUdRKytCclIwWE8zR3RzY3ZlSm03UUttOUxvN0phYXhHSlBRUng1QlFadzEv?=
 =?utf-8?B?b1RaZWdhN3B6MG5HdVVsYmltMTR6NG5BUGlJdE1tS2hwS0FDRGlDZnVOdGVT?=
 =?utf-8?B?eWFhMkRuOVZTRFpoL2tnV0Z1WWgwY2xhVGRpTEVTMkJGMSszS2dJSzBnak1t?=
 =?utf-8?B?SkJtVlgvdU1IT0xieGNoUXpmbytFcEIzSGI4blpoa0pHbzB4VjN1bSt0THF1?=
 =?utf-8?Q?6Xw8IreDUxAG+XsyWql6tEs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 835cb109-09af-4ab2-bc8d-08db97ec1e51
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3674.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2023 08:47:38.2061 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NRWSmY1Gdhj8rgj+gGtncHoAjDeTcotLhdpbBWqWvwOnMx3kquQWzAztPEx25XCuGNkndFo2tCrdX1IIEbR4aGyhLUdNFVJBznp9H658uTg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5332
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691484466; x=1723020466;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=N7rBE7wcfgBrM9yJHAyvrL3zV/03oY9pw9y8PBG8SXQ=;
 b=nOVhJcQAfltq0hEtU5P9ePcm3P9kH9YpWupY4T8blHuwuQphZkOjtn31
 w0fllunSl6Mnbu2IkfX+ucsRZdf6lhCsVilMFUAv5zeXMdfCXTjm3lEyC
 01/5NLOZIkwhaGJoyOtd/n7RqapgZiT8H/PEpgbcKVUsxw58GHUWJetQA
 f4OsjBV0wc0dKPK+oHjW7hDbDidGHsUWgHZQ+ZamD4W1+Bh5B0FJkrQvD
 qic6uclTvmofnh/fxoiwCwthQYKjew5GIBeDcw4bzWI1zf8mV4AnKvY/o
 dGEn4vHrZHLsMxKofl4Iw4A8STeM3ktrsZqFzCpo7+LfeBOI4TJb8zebz
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nOVhJcQA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 2/9] ice: introduce PTP state machine
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

On 8/7/23 19:32, Jacob Keller wrote:
> 
> 
> On 8/7/2023 4:12 AM, Przemek Kitszel wrote:
>> On 8/7/23 12:36, Karol Kolacinski wrote:
>>> Add PTP state machine so that the driver can correctly identify PTP
>>> state around resets.
>>> When the driver got information about ungraceful reset, PTP was not
>>> prepared for reset and it returned error. When this situation occurs,
>>> prepare PTP before rebuilding its structures.
>>>
>>> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
>>> ---
>>>    drivers/net/ethernet/intel/ice/ice.h         |   1 -
>>>    drivers/net/ethernet/intel/ice/ice_ethtool.c |   2 +-
>>>    drivers/net/ethernet/intel/ice/ice_ptp.c     | 131 +++++++++++++------
>>>    drivers/net/ethernet/intel/ice/ice_ptp.h     |  10 ++
>>>    4 files changed, 99 insertions(+), 45 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
>>> index 34be1cb1e28f..86f6f94da535 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice.h
>>> +++ b/drivers/net/ethernet/intel/ice/ice.h
>>> @@ -490,7 +490,6 @@ enum ice_pf_flags {
>>>    	ICE_FLAG_DCB_ENA,
>>>    	ICE_FLAG_FD_ENA,
>>>    	ICE_FLAG_PTP_SUPPORTED,		/* PTP is supported by NVM */
>>> -	ICE_FLAG_PTP,			/* PTP is enabled by software */
>>>    	ICE_FLAG_ADV_FEATURES,
>>>    	ICE_FLAG_TC_MQPRIO,		/* support for Multi queue TC */
>>>    	ICE_FLAG_CLS_FLOWER,
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>>> index d3cb08e66dcb..7d57ecf48da0 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>>> @@ -3275,7 +3275,7 @@ ice_get_ts_info(struct net_device *dev, struct ethtool_ts_info *info)
>>>    	struct ice_pf *pf = ice_netdev_to_pf(dev);
>>>    
>>>    	/* only report timestamping if PTP is enabled */
>>> -	if (!test_bit(ICE_FLAG_PTP, pf->flags))
>>> +	if (!test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
>>>    		return ethtool_op_get_ts_info(dev, info);
>>>    
>>>    	info->so_timestamping = SOF_TIMESTAMPING_TX_SOFTWARE |
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
>>> index 0669ca905c46..a6ea90b9461e 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
>>> @@ -255,6 +255,31 @@ ice_verify_pin_e810t(struct ptp_clock_info *info, unsigned int pin,
>>>    	return ice_ptp_set_sma_e810t(info, pin, func);
>>>    }
>>>    
>>> +/**
>>> + * ice_ptp_state_str - Convert PTP state to readable string
>>> + * @state: PTP state to convert
>>> + *
>>> + * Returns: the human readable string representation of the provided PTP
>>> + * state, used for printing error messages.
>>> + */
>>> +static const char *ice_ptp_state_str(enum ice_ptp_state state)
>>> +{
>>> +	switch (state) {
>>> +	case ICE_PTP_UNINIT:
>>> +		return "UNINITIALIZED";
>>> +	case ICE_PTP_INITIALIZING:
>>> +		return "INITIALIZING";
>>> +	case ICE_PTP_READY:
>>> +		return "READY";
>>> +	case ICE_PTP_RESETTING:
>>> +		return "RESETTING";
>>> +	case ICE_PTP_ERROR:
>>> +		return "ERROR";
>>> +	}
>>> +
>>> +	return "UNKNOWN";
>>> +}
>>> +
>>>    /**
>>>     * ice_ptp_configure_tx_tstamp - Enable or disable Tx timestamp interrupt
>>>     * @pf: The PF pointer to search in
>>> @@ -1285,7 +1310,7 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
>>>    	struct ice_ptp_port *ptp_port;
>>>    	struct ice_hw *hw = &pf->hw;
>>>    
>>> -	if (!test_bit(ICE_FLAG_PTP, pf->flags))
>>> +	if (pf->ptp.state != ICE_PTP_READY)
>>
>> test_bit() is atomic API, but "just reading/using variable" is rather not.
>> Please extend commit message to say something about why transition  here
>> (here=whole commit) is safe.
>>
> 
> Just use of "test_bit()" doesn't really provide much more than
> potentially some memory barriers. On its own, it doesn't actually
> provide any synchronization mechanism. I guess this could be "READ_ONCE"
> or use some barrier to make sure this doesn't re-order the read, but
> otherwise its about as atomic as before. Either we see the value as
> being ready or we don't. That's essentially no different than the bit flag.
> 
> Unless we were using something like "test_and_set" or "test_and_clear"
> the use of atomic flags here isn't providing any actual protection or
> synchronization beyond avoiding screwing up the flags variable itself.
> 
> I considered swapping to an atomic value like using atomic_set or
> something but it really felt like overkill when writing it in the
> out-of-tree driver. (Yes, the lack of proper synchronization primitives
> in ice is rather annoying...)
> 
> In my understanding this should be no worse than before since the state
> field is always either directly assigned or directly read. We're not
> replacing something like "test_and_set_bit" so we aren't any worse than
> before.
> 
> This could be clarified better in the commit message.  Note that
> originally we kept the flag and introduced the state field, then later
> removed the flag. Some of this detail was lost when squashing everything
> together.

Thank you :)

As a whole this series makes things better, so it's not an issue.

Some part of the question originates in me not knowing the driver well, 
what only proves the need for clarification/s everywhere ;)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
