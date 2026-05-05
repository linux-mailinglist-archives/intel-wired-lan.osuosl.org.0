Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +AisB059+WmZ9AIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 07:17:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E50B4C6C6C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 07:17:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F08564092C;
	Tue,  5 May 2026 05:16:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F_ELM6iqLGBY; Tue,  5 May 2026 05:16:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F87B40929
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777958219;
	bh=+JrsbObHIOpaIZiLZaaWBghecj/I+HUuq210M2thnlU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iTjUl0KbDFeq2q9Nq1QT2RDVbJ7ZOOL4/bRepQ4269TAucgHyYqkCQAvK9W+16ZYX
	 Hc7CyIRaxwcU7D9PPae+xvT9//nUqTuvoOaspv+akc4sGZJk1hdh8eVKUWSm4mooGn
	 vpMyFJRG3mG4BJvx7WpKCL+wjCPSXsGSjsBXJkXJyugJ2rpI6KcuJzdV1/lzsrJrsd
	 d4H0PJUCXD6uS3E0nxCA6YKFr/pzCYaXwl+HWg6xpqj8Qw+hVbC2A4hoiEzJaWRCX7
	 50U6XRP523ST/H0b38OMCLo9YOP+5nv6rDXnUrvBfhZ5ZQqe5JieS9N45w+94wKi+0
	 K92ruWs648l6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F87B40929;
	Tue,  5 May 2026 05:16:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 17857280
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 05:16:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AF92681264
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 05:16:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gYhgonloVtC4 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 May 2026 05:16:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A49448125E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A49448125E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A49448125E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 05:16:48 +0000 (UTC)
X-CSE-ConnectionGUID: cm5+nvwwRY2d351MzQ9+4Q==
X-CSE-MsgGUID: bBrZYJCYSzmG4wvmqURCSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="77978465"
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="77978465"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 22:16:48 -0700
X-CSE-ConnectionGUID: GSD1DGpSRSSBJi2I8IMtjA==
X-CSE-MsgGUID: 1wQqQ5NzT6mNQavHM/HXjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="235764344"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 22:16:48 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 22:16:47 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 4 May 2026 22:16:47 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.16) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 22:16:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AU13giQg5se4gRksNyGjoQrc+GDofa3iB7HEWVu7uTYM0FqMMnxyNUT1OmAsLeXla7F/ALbo26yqqPyST+Nv7loyHLdNj1zrYE77QCuj5m+2aLC6trHv0+gQKmn4ozYR/tUuJxkZhx5kCugAb/Sb+t5/1HWoQjf1RPGdbLSB+YRkYs5AOSoXCtBnXQNS9QIq9v76KjdRzIbY0aEEZPVFCJ0A6qW+2/uaXjcO3F7A7/kaoM+cb87P69deefYnESxCzX4TlOrBllMrGH+tbQiNax34fTjGKNvnjCxF+NzeTbOoevvUW9opdW1xffeRdymjUF5tj5H2MvLj4dRvMjcwOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+JrsbObHIOpaIZiLZaaWBghecj/I+HUuq210M2thnlU=;
 b=JdONCY3mCmxx/PGAxtRjXAc5ofxXP+gk8gDDaq5xGcFhzftJyZnzfzvB3n9UMHJQljKSzVLtk42Dk7vLazGRgfGAmXg692an7cMoMxTMnfVigWGxBPWPuV5AWiBZO3KLEyxHpcVZWMCMlSV6rWzksJBNRU8AAaV9ZIi0KRV/5OulzoiqqdDiZk2pRpdNNrEi3A0M0Evgt18uKRWdZSkHBQI56YRChp9LcYHRLsNFbjpQwqSptPtJD+YZki6gg+fJMoDAsql4rVxeMfVRV5QRS7DCn9dv6C8YdOXGKZR6js/4x7JlCVvWLqiEK6tCPJKE6ja34fql/7gD4Is3w05itg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7592.namprd11.prod.outlook.com (2603:10b6:806:343::16)
 by DS0PR11MB8020.namprd11.prod.outlook.com (2603:10b6:8:114::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Tue, 5 May
 2026 05:16:44 +0000
Received: from SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6]) by SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6%6]) with mapi id 15.20.9870.022; Tue, 5 May 2026
 05:16:44 +0000
Message-ID: <da68671d-a58a-48c0-918c-c4f1b10b0a88@intel.com>
Date: Mon, 4 May 2026 22:16:41 -0700
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <jramaseu@redhat.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <aleksandr.loktionov@intel.com>
References: <20260428070647.777141-1-michal.swiatkowski@linux.intel.com>
 <20260428070647.777141-3-michal.swiatkowski@linux.intel.com>
 <44623db1-8b86-4e8e-82a3-46d65b055ebc@intel.com>
 <aflzeKTaOUBy2Xsn@mev-dev.igk.intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <aflzeKTaOUBy2Xsn@mev-dev.igk.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0108.namprd04.prod.outlook.com
 (2603:10b6:303:83::23) To SN7PR11MB7592.namprd11.prod.outlook.com
 (2603:10b6:806:343::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7592:EE_|DS0PR11MB8020:EE_
X-MS-Office365-Filtering-Correlation-Id: 44d3aa63-7fb6-4cfa-db35-08deaa657f96
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: 4FXpLeK0VrNo0htTWx0LI7v6j4IiIKF8CHRf2ZcJc70KftTyVDyeI92Wd1BKHFzd5b40l4X2mKeNRxZLCtB2mFJx8D2wQB18isyQj1ULRWp14raPic46xTzjGAB8GuJTJChV5rcS+uK6zJIj6MxbgdoD7lXzZ+WNfLMUBT0NwB64vlpmESlXrLxMVfDt+WWkIPRXayRO+g7WynwCpbMnmTWfNgP2o3E43zXqz0pmO4uKVk2eBZTBAWvo2R/UL0JvU19Uvrw0/aD8mkt40xSuDDaEPb65pgEDi3tvo8WZIWqWn0m2hp/zpQQ+g3SNgznwMGOVvDns+ICnntP6N4Negk2DtOsBcU37j/3nxzc00yOYrrManRtbeVdash8bpBlbAW8VTQNNZMDO0gdbaIyjf4UCEhYc63K91eUHvers5qtwg/Sibqp11QQNUxGrx2lWwEoeUa34fJsb9kwVMVXWkZ5GE5mXCXU5i54DfsQZAOGqyRgT+eY3x2krupVxgwrq/DB4431BDQwv/3Hg2iXQaZPIzM2RrMnlG1vy+ZB1kpHBGJDpeBSrsjf8QBP4j7SaZxCK6YSJCoe4P88NL4BQ7ka9D7CI9eSYLRI2DqOqMWnPIjPFWj5N691RZPsIzKrLYY7p1TGsbenvkqWOP9GVcNQaUIt7C7KVWE7NIvrGa81n4P3aofuZ5DNTJAxkUeUyKrGQqZADtNkF6AyVS8PN3w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7592.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QmcyUmpPVys2UVpndE5Eay9xMktpNlpMbnVMb01aSzlmeXNOUXhpNVRhZUVH?=
 =?utf-8?B?RG03eVlla0IyMXhmdXNYTWlJU0RwNXVWVG1QdVpXbG8xY2ZmaExzeUpIQkI5?=
 =?utf-8?B?R0FyTXhoeEttbHU2WHY3SytXQTZUWTFIdWRZUWRHYkZ1cnlrcGw3SitxWTZF?=
 =?utf-8?B?QnA3dkFXMVAyZFgraXg0NGE3d3pCa2ozQ05TeUFhQlZBdzNOOW1yNC94S1N3?=
 =?utf-8?B?RWI3RnBIVTlUTmljb0JPTTQveEpPWUxYajhDNUNqUzAreVV5eGJsNUM0YXR4?=
 =?utf-8?B?UUFLQkRyd2VOSmk5UFFNQ1FVOExJcHIvUmthbnNiVm5CcG5VTDNIMEdyb0Nm?=
 =?utf-8?B?Q1I0OFRzT3Y3Y2ZuaVcxK1dqRVlkRFlKQk1hekd5QTBlTlhjSDhtVFF5Q0Ju?=
 =?utf-8?B?QTk5SE13cVovVDFXOEtsanpyMmJ4UExiZER0Rzl3Sko1VDY4L3VYaHVhdzhv?=
 =?utf-8?B?aXJuZ0xUSnFOaFpqZTZLZ2xjeGdvUGpzdkdxRTErMEhRVWwyZVpwWi8veG1u?=
 =?utf-8?B?dUJvTnk4L3o4K0hSeUNGQm51NS9jUFArb2lzczFjQkpBSFhvbk5aYkx3RHJi?=
 =?utf-8?B?ZVluZ1pMYTlhckR6Q3BlSDNSR0FPRG1LTm9lRmpNTmVmTEYweENWNlNZWWJk?=
 =?utf-8?B?MWJYYjhsUFowSU1vbjBpN252Mis4bXh0T2RXQURhbE1QcGd6aGFyWk0zV0NZ?=
 =?utf-8?B?VGJXVlorUGcvb0hlS21BSEkra3BLbFVqYzFWZkEvOVBGRmZkK1pCMWNmNm44?=
 =?utf-8?B?MkNLckxJZkJaTjZMM1hvM0hSOG5ZdlVnU2hiaW9vUjlCT3AyT1pDMmNBc2ZM?=
 =?utf-8?B?SHNQMDZsZktWQWJKS28ya2p4a25QbzhveXFIMXlwOVFtSGhNajRMbThVYmdQ?=
 =?utf-8?B?K2puWlBRRVlxT3dDNGpoSzU3ck1DVU9vd29PazY3ZE50bnp0Um5udjdWMEE3?=
 =?utf-8?B?emdsZWdzNDhRNlRaRnJlSytmOTlJRUdCWXVZZnBwYThIY1RsNFFpZlE5QURR?=
 =?utf-8?B?a2hVTnJMVnd4cTdoZElHVTA5Um02cDgzL0dGSGFhUlFrQjgzUTBta3ZldUJV?=
 =?utf-8?B?RlhkUHhCSG90aVNseVlLdkJNVmp1VlcxenQ5WWpwNGs1OTdqVFNSNGtuakdp?=
 =?utf-8?B?NkZ5VXZ1T3k2NDNTYVpMdWJwQXhaYWlTMWhvTjNNQlMxSHkvQjhxSy9tZ0JT?=
 =?utf-8?B?bHJYdFc2cThCaEpYRzYvejJlYjZ2OFNiZHVxTkN2U2M3V2l2dkZicEpZTWxS?=
 =?utf-8?B?c3V6YnlYWXVnSW41QTJjWkt0dGlERWNCOVIrS2lPQklqSzB4bkovZEl2TXlu?=
 =?utf-8?B?d3FESmVreTR0OFA0dmFEeFBPa05QdEgxTEJtZC9aMHhwa0VWNUo2d1pYem5E?=
 =?utf-8?B?cnYxcUNwVkxKQmsyWGgrNzhteHZQQzJ1YTg3QVJkQ2wxL2NmVHhyZys3TWhP?=
 =?utf-8?B?aXRkUEdhbGdncExiazNiOU1mc1BhZUwxZEVCOXNDajh4eElER0tPWnN0K0F4?=
 =?utf-8?B?MDFaSDFLa0thaHh4N2JDcGFPTSs5Zjk3Z2FOYVUxa1V4dkx1V2dlcFFpOXZI?=
 =?utf-8?B?MVY4eXBxYlcwYzEvVVl1VDhWS21aM1NaVDM2MmN4MVgwWFIrdzYvYXJTNUE5?=
 =?utf-8?B?ck44MlFud1BiZGJsSGNXWERueWs0RnQzMG81d045RW81TjR6YTAvQ1QzL2w5?=
 =?utf-8?B?bXBCUzBPaXNJcjROcC9NaTBXM2xrR3lEOXRvZ0ptY0lkMlNFZ3cwcGVWRW5l?=
 =?utf-8?B?VFkvYjVlRWZjTXhwR0xPWUQ1VEJNSU8rT0ttand1WHNpU0IvWDhVbjVDbVUw?=
 =?utf-8?B?ejUyWXR5Vlh1RnMvWldjK0pqSXRqR0NoczZsYWpHV2VPSHNkKzFCR3RaRmxM?=
 =?utf-8?B?Tlk5UzJWTkFRdGF0VDFSSWQ3TStueFN3ZUg3ZC9uT3B0MkVKOGNiN3pBRGh5?=
 =?utf-8?B?M243UExVVUowTkkvS1FYLzdzd0lSMk44OEZ0K2FCSVFQdDdIYmdHMGdpYUVD?=
 =?utf-8?B?MDJjUklZZnRodnF4Nkd5UzZPdWZpS2VOT3dKUTI5aHVORWI4YUUzaW50MWpr?=
 =?utf-8?B?WjJTNUNmWkY1M2F2WHBmT0FTTDV6N3hpSE5FZnhUVDhWS0FPOWszSFBwaUZT?=
 =?utf-8?B?Smo0OXNiQUg5bmxodjUxRnh4elNSZVZwekQvcGM5K2NSdXJCYVREV3l4bS9Y?=
 =?utf-8?B?MHZjdFBqYkpQSDcyZE5wR0NwcWM0UVgyOFQyR3E2ZVp1OEtEamJlZnhRQnht?=
 =?utf-8?B?RDRxbS9MZ0RSdkMzWE5WT2d0bytDZ2pDc2FYYXJkRXFSRExObWdhT0lZZERH?=
 =?utf-8?B?cFhOQzR3eU8vb3NuQ1hxbElnNFhoUWdjaWZNVERGNXZXT1F3cUVTdz09?=
X-Exchange-RoutingPolicyChecked: FHTjWd5qaoiMOt1r00mEtkqhnCIZguBglG//pM4TtmMcXhpT2wOxgFPdECPNMAYFCy8Rc8Q+bjHR865wh4o7IodojEp09ZcZ8Rs5OMYef/Og9hbJaXolEZLRq9N34JGtUpVDkwM09CFu/IHPvgT3yv2PAUwbmkgKkhCxg8vc+G3xfJhKxuA2ankc5kAhmzjsW27wlqH5WCqYDscTlZlpni4sQWQBWZDCHOsFnBObytJpOcD8qgnDw9rdAi9OSe25mwPMdEQZPG9jnIpcClAD9pFxElgLvHZgcjeUr4eut8XmQk7xbd25g35RI/YqrdOcRBRxD1ndjSp5blqQDSdOIA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 44d3aa63-7fb6-4cfa-db35-08deaa657f96
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7592.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2026 05:16:44.4125 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GPaKJL2HHUKfXQ05WF3GCwuCPd69NIfw/9fm3qR6eT/rE7SIYliE9TZbiCQuywM68vUaC5KOD6lu0mDfgN+4hskPlk4HV40zXSJ4PLRtYqU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8020
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777958209; x=1809494209;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fpgv17fk8Pi1/NVgQ/8AfAhtB8n/Uz8bl2kaSHlk/ZE=;
 b=Bh5YIrEeckBF29aeERgZA90Xhy+E8RtoTt7xinG0LwxIE338rAVRLW7K
 iSvnnhdmbsCfjyUCd46MCP9jFpo2y3k/+pYPkhHTPFaYK3e6hQVkJKW4K
 1mrTkSyUhorghaZJbJNvVXBlZBJI7EearT9DzvzqlbxMoqEBBW9UJgyIx
 0OPcZeh1J1M1X5p8KWH07BFJHKPJrPwoHN4zg4/gxMwy4k3H3+Xp4lMnL
 9Lg2nHj0ACxGrqOM1xVfH7DF3Dj27ertskqFYNOspO7n7Z58Rd3sRNTR/
 idDoOfP/qPqIqNsYI3eyNOCE3Lwv612A9sgZMO/s1p+vPu+BG6YWumobX
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Bh5YIrEe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 2/2] ice: use
 NETIF_F_HW_CSUM instead of IP/IPV6
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 5E50B4C6C6C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:michal.swiatkowski@linux.intel.com,m:netdev@vger.kernel.org,m:jramaseu@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim,intel.com:mid,intel.com:email,ozlabs.org:url]

On 5/4/2026 9:35 PM, Michal Swiatkowski wrote:
> On Mon, May 04, 2026 at 04:53:12PM -0700, Jacob Keller wrote:
>> On 4/28/2026 12:06 AM, Michal Swiatkowski wrote:
>>> The hardware is capable of calculating checksum for IPV6 packets with
>>> extension header. To not drop such packets switch from IP/IPV6 checksum
>>> to HW_CSUM.
>>>
>>> HW_CSUM is also used in previous generation (i40e).
>>>
>>> Previously HW_CSUM was used to indicate that hardware supports general
>>> checksum. Drop it assuming that if the hardware supports it, it is used.
>>>
>>> Disabling offload for E830 in case of TSO isn't needed anymore as the
>>> check for TSO is done in Tx path just before preparation of the special
>>> GCS descriptor.
>>>
>>> The commit from Fixes didn't introduce a bug, it just shown that the
>>> driver is doing sth wrong with the checksum features.
>>>
>>> Suggested-by: Jakub Ramaseuski <jramaseu@redhat.com>
>>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>> Fixes: 04c20a9356f2 ("net: skip offload for NETIF_F_IPV6_CSUM if ipv6 header contains extension")
>>> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>>> ---
>> Am I correct in thinking that this supersedes (really, properly fixes)
>> the patch "ice: enable NETIF_F_HW_CSUM for GSO packets" at
>> https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20260310150557.1138437-1-jramaseu@redhat.com/
>> ?
>>
>> Thanks,
>> Jake
> 
> Yes, exactly. I think I linked it in cover letter, but maybe I should do
> it also here.
> 
> Thanks

I think its fine, I just wanted to make sure I was correct in marking
that patch as rejected in patchwork.

Thanks,
Jake
