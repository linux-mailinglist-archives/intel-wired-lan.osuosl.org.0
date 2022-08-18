Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE16597A6E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Aug 2022 02:00:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A03436105B;
	Thu, 18 Aug 2022 00:00:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A03436105B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660780835;
	bh=mMLjNSv3QP+q5o3L7L32YevPZElalRoxw0UsThUgrdc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QCsk1N+OEwJF4abiD7nl+txvGvbLqezzP1yVvdJoU36VQ8q+YPVy/PNlIo1baU90w
	 xO70CuxqxemSPdLa055OS+IgEdJKbXkWhz+874FM4/Sp2Uq7hQGSHFBjP2momv9c4e
	 wvApc2RLfUndCrJAb2eTersC1kM0uq7lQd2f3kx7AoeFY4HKnJkb9a+gnJMROhbKzE
	 l3nyFqBMzShzw4T6OnuYUrUjU7XsSCz16lOvJSg9uLukCbwNdjHmm8+r87uMr+M8Zl
	 iKfQ+P5BpOWiG314r8W4rdT3nwEokJF1eRF2kysCyQZeUUaFTGldZiPAinfxOG6NeI
	 FzfrqwUt/EQIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vZZ-9xz40vKE; Thu, 18 Aug 2022 00:00:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C59161023;
	Thu, 18 Aug 2022 00:00:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C59161023
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7F6441BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Aug 2022 00:00:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6570940E08
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Aug 2022 00:00:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6570940E08
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uTK0MQDI89fs for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Aug 2022 00:00:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DCDE740C67
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DCDE740C67
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Aug 2022 00:00:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10442"; a="275679589"
X-IronPort-AV: E=Sophos;i="5.93,244,1654585200"; d="scan'208";a="275679589"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 17:00:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,244,1654585200"; d="scan'208";a="583973486"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 17 Aug 2022 17:00:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 17 Aug 2022 17:00:17 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 17 Aug 2022 17:00:17 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 17 Aug 2022 17:00:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EZUi+3KsYwtDT+lgGnFQG2NiCMgUVAu+lacC75xiPrE0qJFypJQ3Ina7OK1EgPoasf/lpezqrUkSJHIPpROkzaJerF5QDs+MurUTtzXfJ3yZprYKP+QtGAn57WPBJX5oqBUiwazkAbmgTr9giPIfX1JKFI/TS4WhVRp9v4N0NT78g36FhkOdUc9tGxhphwsut8HIerWQOm/qqVEWkTC831O+/WZhk1e6sRE1A58M1LOb7CSNRcLIMoGXGZOqEngblI5a0s0XgDySctoEAHJ8mA47FVnKOT/D9bl6kXzw+WfpmtjeOlcFO65zSMhY2HrxqtCA4+vwakOQZFod1mOeFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mQq5NhcLfgP5Kcdkpg6HI91N1FGSBQVRZz5EnTcVZI8=;
 b=km+PXev9MOhdKzUKPIND8LJyGFXE/aHEA6EUOzpJrUorjx0HPiRUREucZR9HJgUyoeQG5kizUk5xqVZTFe1+lKBS2n4Y7ab7CfN0Vwf7QMAO0kL46NhehDMujxc/qiU9/GXrB6QGjvjDICjKY1lW02SQlv2KZYusx+vUscVcdg1bGQPaF9XazDGQGxzO0FSgdYbOfZodnx24vB7Bz39b/HNfC4A1Wn5hgK3hrgIWmbABTaPQP6KyL3N3S/IId8iXh2if8DQpmtc6gDzTI1pHwlCfStC6tFSvxlCNzipAQdfOWSjH9+WRmbPNrEHF+98sKVdhZ+pWRN2JQqb46eZomw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.10; Thu, 18 Aug
 2022 00:00:15 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::9d3b:23bc:a1e8:2475]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::9d3b:23bc:a1e8:2475%7]) with mapi id 15.20.5504.016; Thu, 18 Aug 2022
 00:00:15 +0000
Message-ID: <0cae4084-351d-e6bb-9128-0209462e4b14@intel.com>
Date: Wed, 17 Aug 2022 17:00:12 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220811100122.1536531-1-mateusz.palczewski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220811100122.1536531-1-mateusz.palczewski@intel.com>
X-ClientProxiedBy: SJ0PR05CA0002.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::7) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 75d1fde8-a6d1-431f-17a3-08da80aca0a8
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5NMln0nNaxK8KOvMNUvxolVIP92UJcgHCLpaPGVdP8q7d8YhuKsFU/jtp4XellVguOj4RFapq8rLaFW/uzD8odIPBZ1CcTwJKRlit0+Yj66T1DdPSheU9lCbWDFH2OiNhexNt63PVAfJKzFzgXAWFQl6TPUf5sAQvNemn1R7FznOdpFdUeaoXQVrlu+M5xMrIURNztSnNxxMjQ/p2qlSTp1+CTjQsu8A/XctIfv8W5CdQ20TcP+u4apeQW42xkcKE5zihA50O223z+HWdtDY3lexnEpVKaZCILMEOg0bKa5cb6P7JR2gtlDrQs3tEK90Pjqlk+omixPfe2x+hPrsJf/zgmjwZRdVyGFB+eO2RkEwiM5BUCs8eQFdAPBEGkAxzuB/QbHPMlGqVlqERK4REjMXR+W6ase4tqWyuOVFB/0ukam8LQOEHdZffKFSNmIqEDAKRnalOUh/nX367iTK3+5jfCiUbF5yJrcxDOwVV1NRE5ujG6ru0mvcVKawTElaBGbqkGZcipWhO/bQSziY4+mWPmUQ75oc1CWAK0MbtfKjG1L7qnMOEPYWeqEY3wC9r0DQUX7E1K7CbRVQyCS5V/22s/7asfz6SbYI2fGbFWUVpxW33fVRFy/k0/OVKOLvV7A5yUKFFKfm9bkZHrlGZl228qa71h/yqv8vHaHTiaxXlEzsTyEe4ACiz79hCHYj/LZ3RDdWEFt+lH5tdcLAKcsDVYxORVPAdI67KH6sR1ctJrGrN39VDf7/hP4sizsxNM7F8v6JyPNe8/yIK7SOAGb8n0XoQULivaar2pypEp4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(376002)(366004)(396003)(136003)(39860400002)(107886003)(83380400001)(186003)(2616005)(82960400001)(6486002)(478600001)(38100700002)(316002)(41300700001)(66556008)(6666004)(6506007)(30864003)(5660300002)(2906002)(66946007)(26005)(8936002)(31686004)(31696002)(66476007)(6512007)(8676002)(4326008)(53546011)(36756003)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SDlPUXh0a3Rtd3FqQ1ArTjluR2pFNHcreThPMW5vR0JVTGFtdzkzZDBESE1V?=
 =?utf-8?B?Q0xtWDBMYUk3TU0rWkZXbm8vN0VtUGxHTDVkb1p0Z3FMREowMTZJWjdDak9L?=
 =?utf-8?B?dEprK3hULy9aRW1Ua3BIY0NBYzErNzFndEVoNkx2WjhnUUhIeTdBZ2R4c0hE?=
 =?utf-8?B?dnh4NHRxRm0wOUVSS1M2OVFnOHcrdjZ0Y1BwYkQ2K2dZVm9WWFNUQmxCM2dp?=
 =?utf-8?B?RzloQTdVK0Z4OVNGWDlPMzdIemx0V0FjdGVKSVNSUndTbDVMVW40SG1KaTh5?=
 =?utf-8?B?eXVxUEpBVEFzeUwzK3ZwTDJkalMvM3J2NldXRm95em9tYWhkb043aStIZjhD?=
 =?utf-8?B?NkR3TkZIV1V1RWtmUEVWZEhaYW9HS3IzV1YzOURlbGlodGtMa0VpRUdybjVO?=
 =?utf-8?B?V3Z5VE0vS040OWgrM3pYRFF0Tm9mSm9CNFUvRXpWcXp6Z1d3Rk55Q0dJOHo4?=
 =?utf-8?B?OU5nMHkwNFIzWEQ5aEw0dU1UYWpDSXVaS3pZOEhHMWtQQzNkZmxVRDR1SGFv?=
 =?utf-8?B?RXFkdkZZWW9QdmtocmN2eW5BUkd4emMyT29OemdOSG9PN1NIcC9QWmpFK1di?=
 =?utf-8?B?dlZJV0lqc2FuZFRCWVNDZGE0ZEcwZjdydS9UZUlBVVlrTnVIc24zdFlvdnB3?=
 =?utf-8?B?KzBuMkxzdStSeituVEsrbHAvMWU0NHhxNjNYOFlLMWtBeEZudDVNb3RJZTli?=
 =?utf-8?B?TUpXR3hGUG9BU05rUzBuckFGSlpvUklwSEdTdDNtelFqTEFkdjZRc0RVL2xE?=
 =?utf-8?B?YS9HNG5iejFkZEcyNlU5RG9qcDVYeEM4UGNnMnU3cVMyOE5ZeDZzbWErb1Bs?=
 =?utf-8?B?UzBLZGd2bHBOTytHb21FTVlSeEQ1a1g5azBpVTl0QW1YU0dWbFRDNlFLMUFI?=
 =?utf-8?B?MzVJTkhmMUUwV0hCS09mR1ZQZUl6ZDkrbHZiMzZSbWIzWW9iSU9qR3dFL1ho?=
 =?utf-8?B?MXRkTC9tMk40d0xxSXVkd1d0SVBJWWhhYTR3dGhjMTdycEpQNkJoWk91S0VF?=
 =?utf-8?B?WWdrR0tTbkhZZVNpWU9ESEVGQ1E3U3FKR3FkcHI1NzNOdTRYcHdxYXZtNVh6?=
 =?utf-8?B?NEViTnlHREcxblEzamhQekRUVkwxVzNaSUpiMURBb3RiZzQ3YzhQQjRUYmJ5?=
 =?utf-8?B?RlVSN1JMQmZuamVKMC9ybFVxMG12K1hXRzVXejJRUzBFRC9PS0dMTUpMd1U5?=
 =?utf-8?B?cXc5R2oxTXhtZlRiTTNyQzl2MjhZS1NIYStGVk5FdmNSK0tsTTg5M1ZxUHZ1?=
 =?utf-8?B?Q0pEV2wxa3dUWXhMaGR0NDVkd1FIZWtiRE5VdTZycnBwZmhhTVpCR09janI0?=
 =?utf-8?B?TnE3YVEvZER1RldnZnZXSVQ3SURNcEZza0t1NzJGeXg4OGlYSGIzdnFSaERO?=
 =?utf-8?B?SHJJc1c4VFlWT2t1eEhIaDNOMkJna2VsZ2hCTGRDNzRFVkhNNFN0YldaRWMv?=
 =?utf-8?B?WDl2MXFuNnh2MWsvQStLc3JJQWNha1Q4RUpZTG9Sa2JTVmxrcnRJU2ltbWhj?=
 =?utf-8?B?Z2tBZmhLY2ZuZjY2TkJaV0wycTFsdUNmVmpFRlFvUUJmOWs5MWNEQU4xQ2VJ?=
 =?utf-8?B?WTdOdU5NVXFucDFxeW5LNDI5OXZZTkxKRHhtZGhLa2ZXUVlkSjE0cDF1dVVU?=
 =?utf-8?B?UW5KVVNRN0g0ZmxlUk05bi9NYWJXMW5BNXRLSVhVcGV0QXJGOXFKUzZVRHhv?=
 =?utf-8?B?VXQxWmV6ZUQyOXBPaHVDaTVqcVJjN3FIVXRqZWFKL3BaV2VvZnh3RVRtd1dr?=
 =?utf-8?B?eDhaTDF3SUtpMlB4SW5KZTFXRGg1K0xZV3F1bnJ2azBudEQyZHRZYnNRWkY5?=
 =?utf-8?B?eTVLMHdjbVd5UDhjdkYvdEkwNy9OZUJycEJwUDNPSEgzblp3Q0syNUFiTEgy?=
 =?utf-8?B?UjRPdGoyU1cvMWRzNlZuQUh0R0QvWDJFZUdzZGdpcDY2dTF1L2FVNThQcXd6?=
 =?utf-8?B?YVNnWmRVVnpzZ1hIT2pxZVhTNlpoTC82ZkdGU0x1cXRDMFVLd3BHUmpudUFX?=
 =?utf-8?B?ZXFCbmZGaEpRUzd2d3JINlQ0VlJ0djAwbWdMNjcwV01oL2dZUVVUMDU3RzF4?=
 =?utf-8?B?akh6N2ZxUHE1eDIvRGU0cFNxcUYxVDRsbnJmY2kyN2syOWdmbUlwZWZnK21Y?=
 =?utf-8?B?VmEreXAvM2RMaVU2ZTFkdTJYOUdYdzRwVG83emhQczJ5S05DcHhMTWZCYjYv?=
 =?utf-8?B?bWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 75d1fde8-a6d1-431f-17a3-08da80aca0a8
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2022 00:00:15.3821 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YTbcyt+oJOoRiD/Nt29Fo/g57uMWZJaIYQsULkDIiVOKKayHncpuEQE3VdHRxjDRCA6L+coKB0SOFx7hjz6Ug4OgubNZz77KjJa7kr8miaY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5073
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660780827; x=1692316827;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=21TWssQ6LQjnfaFSRiZqxJXbSoLmq3mrdaYNncvlChI=;
 b=OUeOCvcEdPh9srWLAHH2DRMqTqz+ZDTL1XL5q4HhYYneHpQ1RfJBGyOR
 n2CF9gbANXy3kK5YT9FE0wPEKQipMA1jOMmkZ/i4k/EE+DYQKBeRVc7a1
 hXjRo4EWLpQKuZLNG4S9WcAZBwrQ1pm/hCNdxy2aukFCJS2ZmE4dgUIwI
 rCNprD9FMGZLjzwJKTXWyKLnT6i9V7vAvz9nLu3y00PafMZCHYtL3FNKI
 xh7mIYzn5Xt+cuU23JGTJPDUNrg+88m9RxMnRekl6MbcZEuHODyIffI8j
 eje0oVzZd3qSa3Opm5P+tNS9IuTXB85QCEADt1x/4N5SnD0vURlPOxlIs
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OUeOCvcE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix race between
 iavf_close and iavf_reset_task
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
Cc: Michal Jaron <michalx.jaron@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/11/2022 3:01 AM, Mateusz Palczewski wrote:
> From: Michal Jaron <michalx.jaron@intel.com>
> 
> During stress tests with adding VF to namespace and changing vf's
> trust there was a race between iavf_reset_task and iavf_close.
> Sometimes when IAVF_FLAG_AQ_DISABLE_QUEUES from iavf_close was sent
> to PF after reset and before IAVF_AQ_GET_CONFIG was sent then PF
> returns error IAVF_NOT_SUPPORTED to disable queues request and
> following requests. There is need to get_config before other
> aq_required will be send but iavf_close clears all flags, if
> get_config was not sent before iavf_close, then it will not be send
> at all.
> 
> In case when IAVF_FLAG_AQ_GET_OFFLOAD_VLAN_V2_CAPS was sent before
> IAVF_FLAG_AQ_DISABLE_QUEUES then there was rtnl_lock deadlock
> between iavf_close and iavf_adminq_task until iavf_close timeouts
> and disable queues was sent after iavf_close ends.
> 
> There was also a problem with sending delete/add filters.
> Sometimes when filters was not yet added to PF and in
> iavf_close all filters was set to remove there might be a try
> to remove nonexistent filters on PF.
> 
> Add aq_required_tmp to save aq_required flags and send them after
> disable_queues will be handled. Clear flags given to iavf_down
> different than IAVF_FLAG_AQ_GET_CONFIG as this flag is necessary
> to sent other aq_required. Remove some flags that we don't
> want to send as we are in iavf_close and we want to disable
> interface. Remove filters which was not yet sent and send del
> filters flags only when there are filters to remove.
> 
> Fixes: 53d0b3ae2590 ("i40evf: refactor shutdown code")
> Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>   drivers/net/ethernet/intel/iavf/iavf_main.c | 177 ++++++++++++++++----
>   1 file changed, 141 insertions(+), 36 deletions(-)

These changes seem a bit big for net. It would probably be better suited 
for them to go to next.

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 35dcb1ce12b6..9cfcab5e68e5 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1270,66 +1270,138 @@ static void iavf_up_complete(struct iavf_adapter *adapter)
>   }
>   
>   /**
> - * iavf_down - Shutdown the connection processing
> + * iavf_clear_mac_vlan_filters - Remove mac and vlan filters not sent to PF
> + * yet and mark other to be removed.
>    * @adapter: board private structure
> - *
> - * Expects to be called while holding the __IAVF_IN_CRITICAL_TASK bit lock.
>    **/
> -void iavf_down(struct iavf_adapter *adapter)
> +static void iavf_clear_mac_vlan_filters(struct iavf_adapter *adapter)
>   {
> -	struct net_device *netdev = adapter->netdev;
> -	struct iavf_vlan_filter *vlf;
> -	struct iavf_cloud_filter *cf;
> -	struct iavf_fdir_fltr *fdir;
> -	struct iavf_mac_filter *f;
> -	struct iavf_adv_rss *rss;
> -
> -	if (adapter->state <= __IAVF_DOWN_PENDING)
> -		return;
> -
> -	netif_carrier_off(netdev);
> -	netif_tx_disable(netdev);
> -	adapter->link_up = false;
> -	iavf_napi_disable_all(adapter);
> -	iavf_irq_disable(adapter);
> +	struct iavf_vlan_filter *vlf, *vlftmp;
> +	struct iavf_mac_filter *f, *ftmp;
>   
>   	spin_lock_bh(&adapter->mac_vlan_list_lock);
> -
>   	/* clear the sync flag on all filters */
>   	__dev_uc_unsync(adapter->netdev, NULL);
>   	__dev_mc_unsync(adapter->netdev, NULL);
>   
>   	/* remove all MAC filters */
> -	list_for_each_entry(f, &adapter->mac_filter_list, list) {
> -		f->remove = true;
> +	list_for_each_entry_safe(f, ftmp, &adapter->mac_filter_list,
> +				 list) {
> +		if (f->add) {
> +			list_del(&f->list);
> +			kfree(f);
> +		} else {
> +			f->remove = true;
> +		}
>   	}
>   
>   	/* remove all VLAN filters */
> -	list_for_each_entry(vlf, &adapter->vlan_filter_list, list) {
> -		vlf->remove = true;
> +	list_for_each_entry_safe(vlf, vlftmp, &adapter->vlan_filter_list,
> +				 list) {
> +		if (vlf->add) {
> +			list_del(&vlf->list);
> +			kfree(vlf);
> +		} else {
> +			vlf->remove = true;
> +		}
>   	}
> -
>   	spin_unlock_bh(&adapter->mac_vlan_list_lock);
> +}
> +
> +/**
> + * iavf_clear_cloud_filters - Remove cloud filters not sent to PF yet and
> + * mark other to be removed.
> + * @adapter: board private structure
> + **/
> +static void iavf_clear_cloud_filters(struct iavf_adapter *adapter)
> +{
> +	struct iavf_cloud_filter *cf, *cftmp;
>   
>   	/* remove all cloud filters */
>   	spin_lock_bh(&adapter->cloud_filter_list_lock);
> -	list_for_each_entry(cf, &adapter->cloud_filter_list, list) {
> -		cf->del = true;
> +	list_for_each_entry_safe(cf, cftmp, &adapter->cloud_filter_list,
> +				 list) {
> +		if (cf->add) {
> +			list_del(&cf->list);
> +			kfree(cf);
> +			adapter->num_cloud_filters--;
> +		} else {
> +			cf->del = true;
> +		}
>   	}
>   	spin_unlock_bh(&adapter->cloud_filter_list_lock);
> +}
> +
> +/**
> + * iavf_clear_fdir_filters - Remove fdir filters not sent to PF yet and mark
> + * other to be removed.
> + * @adapter: board private structure
> + **/
> +static void iavf_clear_fdir_filters(struct iavf_adapter *adapter)
> +{
> +	struct iavf_fdir_fltr *fdir, *fdirtmp;
>   
>   	/* remove all Flow Director filters */
>   	spin_lock_bh(&adapter->fdir_fltr_lock);
> -	list_for_each_entry(fdir, &adapter->fdir_list_head, list) {
> -		fdir->state = IAVF_FDIR_FLTR_DEL_REQUEST;
> +	list_for_each_entry_safe(fdir, fdirtmp, &adapter->fdir_list_head,
> +				 list) {
> +		if (fdir->state == IAVF_FDIR_FLTR_ADD_REQUEST) {
> +			list_del(&fdir->list);
> +			kfree(fdir);
> +			adapter->fdir_active_fltr--;
> +		} else {
> +			fdir->state = IAVF_FDIR_FLTR_DEL_REQUEST;
> +		}
>   	}
>   	spin_unlock_bh(&adapter->fdir_fltr_lock);
> +}
> +
> +/**
> + * iavf_clear_adv_rss_conf - Remove adv rss conf not sent to PF yet and mark
> + * other to be removed.
> + * @adapter: board private structure
> + **/
> +static void iavf_clear_adv_rss_conf(struct iavf_adapter *adapter)
> +{
> +	struct iavf_adv_rss *rss, *rsstmp;
>   
>   	/* remove all advance RSS configuration */
>   	spin_lock_bh(&adapter->adv_rss_lock);
> -	list_for_each_entry(rss, &adapter->adv_rss_list_head, list)
> -		rss->state = IAVF_ADV_RSS_DEL_REQUEST;
> +	list_for_each_entry_safe(rss, rsstmp, &adapter->adv_rss_list_head,
> +				 list) {
> +		if (rss->state == IAVF_ADV_RSS_ADD_REQUEST) {
> +			list_del(&rss->list);
> +			kfree(rss);
> +		} else {
> +			rss->state = IAVF_ADV_RSS_DEL_REQUEST;
> +		}
> +	}
>   	spin_unlock_bh(&adapter->adv_rss_lock);
> +}
> +
> +/**
> + * iavf_down - Shutdown the connection processing
> + * @adapter: board private structure
> + *
> + * Expects to be called while holding the __IAVF_IN_CRITICAL_TASK bit lock.
> + **/
> +void iavf_down(struct iavf_adapter *adapter)
> +{
> +	struct net_device *netdev = adapter->netdev;
> +
> +	if (adapter->state <= __IAVF_DOWN_PENDING)
> +		return;
> +
> +	netif_carrier_off(netdev);
> +	netif_tx_disable(netdev);
> +	adapter->link_up = false;
> +	iavf_napi_disable_all(adapter);
> +	iavf_irq_disable(adapter);
> +
> +	iavf_clear_mac_vlan_filters(adapter);
> +	iavf_clear_cloud_filters(adapter);
> +	iavf_clear_fdir_filters(adapter);
> +	iavf_clear_adv_rss_conf(adapter);
>   
>   	if (!(adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)) {
>   		/* cancel any current operation */
> @@ -1338,11 +1410,16 @@ void iavf_down(struct iavf_adapter *adapter)
>   		 * here for this to complete. The watchdog is still running
>   		 * and it will take care of this.
>   		 */
> -		adapter->aq_required = IAVF_FLAG_AQ_DEL_MAC_FILTER;
> -		adapter->aq_required |= IAVF_FLAG_AQ_DEL_VLAN_FILTER;
> -		adapter->aq_required |= IAVF_FLAG_AQ_DEL_CLOUD_FILTER;
> -		adapter->aq_required |= IAVF_FLAG_AQ_DEL_FDIR_FILTER;
> -		adapter->aq_required |= IAVF_FLAG_AQ_DEL_ADV_RSS_CFG;
> +		if (!list_empty(&adapter->mac_filter_list))
> +			adapter->aq_required |= IAVF_FLAG_AQ_DEL_MAC_FILTER;
> +		if (!list_empty(&adapter->vlan_filter_list))
> +			adapter->aq_required |= IAVF_FLAG_AQ_DEL_VLAN_FILTER;
> +		if (!list_empty(&adapter->cloud_filter_list))
> +			adapter->aq_required |= IAVF_FLAG_AQ_DEL_CLOUD_FILTER;
> +		if (!list_empty(&adapter->fdir_list_head))
> +			adapter->aq_required |= IAVF_FLAG_AQ_DEL_FDIR_FILTER;
> +		if (!list_empty(&adapter->adv_rss_list_head))
> +			adapter->aq_required |= IAVF_FLAG_AQ_DEL_ADV_RSS_CFG;
>   		adapter->aq_required |= IAVF_FLAG_AQ_DISABLE_QUEUES;
>   	}
>   
> @@ -4164,6 +4241,7 @@ static int iavf_open(struct net_device *netdev)
>   static int iavf_close(struct net_device *netdev)
>   {
>   	struct iavf_adapter *adapter = netdev_priv(netdev);
> +	u64 aq_to_restore;
>   	int status;
>   
>   	mutex_lock(&adapter->crit_lock);
> @@ -4176,6 +4254,29 @@ static int iavf_close(struct net_device *netdev)
>   	set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
>   	if (CLIENT_ENABLED(adapter))
>   		adapter->flags |= IAVF_FLAG_CLIENT_NEEDS_CLOSE;
> +	/* We cannot send IAVF_FLAG_AQ_GET_OFFLOAD_VLAN_V2_CAPS before
> +	 * IAVF_FLAG_AQ_DISABLE_QUEUES because in such case there is rtnl
> +	 * deadlock with adminq_task() until iavf_close timeouts. We must send
> +	 * IAVF_FLAG_AQ_GET_CONFIG before IAVF_FLAG_AQ_DISABLE_QUEUES to make
> +	 * disable queues possible for vf. Give only necessary flags to
> +	 * iavf_down and save other to set them right before iavf_close()
> +	 * returns, when IAVF_FLAG_AQ_DISABLE_QUEUES will be already sent and
> +	 * iavf will be in DOWN state.
> +	 */
> +	aq_to_restore = adapter->aq_required;
> +	adapter->aq_required &= IAVF_FLAG_AQ_GET_CONFIG;
> +
> +	/* Remove flags which we do not want to send after close or we want to
> +	 * send before disable queues.
> +	 */
> +	aq_to_restore &= ~(IAVF_FLAG_AQ_GET_CONFIG		|
> +			   IAVF_FLAG_AQ_ENABLE_QUEUES		|
> +			   IAVF_FLAG_AQ_CONFIGURE_QUEUES	|
> +			   IAVF_FLAG_AQ_ADD_VLAN_FILTER		|
> +			   IAVF_FLAG_AQ_ADD_MAC_FILTER		|
> +			   IAVF_FLAG_AQ_ADD_CLOUD_FILTER	|
> +			   IAVF_FLAG_AQ_ADD_FDIR_FILTER		|
> +			   IAVF_FLAG_AQ_ADD_ADV_RSS_CFG);
>   
>   	iavf_down(adapter);
>   	iavf_change_state(adapter, __IAVF_DOWN_PENDING);
> @@ -4199,6 +4300,10 @@ static int iavf_close(struct net_device *netdev)
>   				    msecs_to_jiffies(500));
>   	if (!status)
>   		netdev_warn(netdev, "Device resources not yet released\n");
> +
> +	mutex_lock(&adapter->crit_lock);
> +	adapter->aq_required |= aq_to_restore;
> +	mutex_unlock(&adapter->crit_lock);
>   	return 0;
>   }
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
