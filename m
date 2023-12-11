Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3CB80C629
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Dec 2023 11:13:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E1C4611F0;
	Mon, 11 Dec 2023 10:13:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E1C4611F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702289602;
	bh=SnYUhbPz9dtw9Q7Iu6ScrPUcT15L9uvVD+MgYZR2vGo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YdZdPSFIv3CHd58+7RqQdzVovcBdqXyDJpxh6TsvpPeTFZdAcT9XY2sBNmFqs+yMm
	 iE4fYG4RbgKek8KMTyVwuqtR70z4+vx/Cah1v5ESY2XN/hrOlSvu/an6MCbTZaHzmt
	 y62Dayw1rbYDSwqOVk+Ck1JjE3d6j2tsrJd8EYO4hn9yt8v2vT2JYC2q7ZSyS6S4cn
	 fkmw/hFbt4CgINfmxy4gT8VOVYEzjpz71mHauojosUyvg5jb3hanyG5Wb1AvuY+PYS
	 hkkpmWFI2Q4F+UR5GOZVSxHJRq9WBLgkiPLJ7c9hhYMfwXMiO2l5XrTHTLRb8JMpPI
	 A7GsczEZb/NOQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mfnJRSvLqjCO; Mon, 11 Dec 2023 10:13:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 91106611E8;
	Mon, 11 Dec 2023 10:13:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 91106611E8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7D4381BF39A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 10:13:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4C41781EB7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 10:13:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C41781EB7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EAPatUAaM4fP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Dec 2023 10:13:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3961081EB0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 10:13:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3961081EB0
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="1750585"
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; 
   d="scan'208";a="1750585"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 02:13:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="776610685"
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="776610685"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Dec 2023 02:13:07 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Dec 2023 02:13:07 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Dec 2023 02:13:07 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Dec 2023 02:13:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XSfoxCL81oPw/DYb3JS79eX3hMQzunN4NsmVavBuV9nid1/czeFAh0U4K6gBSGf4cprAcD2wHqbL8ylfPN6LU0/S0y7MrTgx2uxtYbHOSfgyhKSMLHb0ytN4mTAuU4fQ5qNKAzNe4yJ8WOeIvRFrujDI9AZBpUu/r1HvXRtw30stnDhhIdwa3nS7SFDTl3ebDfetl7XotVxYpPkCOlsLPXILW43+FFkRSF8gwbU6TzPe61JH7namDwbqAI4ZScXCn5T5qQEB7+g1myWOkjiT4yvLEuqLemI4ZtF2aaTSWQggwYEyLMnQoWFCaJwiwDYjZId7wfpc7wqglwuhZ++roA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3ur85iY9xDixXPT9eu8dMwXTuO3CWtjWCvGCO/DL6P4=;
 b=hXmUoxEv+7LZ5TdqA5uhtv7yfyH6c6ZGw3b8sj8F4CnKfNgF0y46OyuwoDpBrPuu8frDcP3wrD5/9ytA0Nu2/+rwX+g6YwZnC3ggcuUMnUkg6XqopxWQhuwryGLH3iOpaHU4ZxspAzzWU6wbE42WUtq/r9/xBQx/Vw+2RJ8T9nJbWszX4x4W1qWWb+rEQO8TY7bJR9bFXGEuBQ7bI74n8eq6pirRXkvfSUAaZiOFf2i7dZ0xVak2MRkpzG4Po/rzuKweMrCrD/A7EBNLoZjY2ngvoCKGcpw3jAlPjEAVF0/Vy37AeRVnTy+lQWObpmEGqOwwzhBbhZUcFEDLdTQCMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by SA1PR11MB7038.namprd11.prod.outlook.com (2603:10b6:806:2b3::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.32; Mon, 11 Dec
 2023 10:12:52 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7%5]) with mapi id 15.20.7068.031; Mon, 11 Dec 2023
 10:12:52 +0000
Message-ID: <b9c33092-6268-ef89-4401-0cf438ee8a4a@intel.com>
Date: Mon, 11 Dec 2023 11:12:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Kunwu Chan <chentao@kylinos.cn>, <jesse.brandeburg@intel.com>,
 <anthony.l.nguyen@intel.com>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <richardcochran@gmail.com>,
 <jacob.e.keller@intel.com>, <karol.kolacinski@intel.com>
References: <20231211062649.247148-1-chentao@kylinos.cn>
 <447d130a-e1ac-02f6-e168-b04bfa9c6004@intel.com>
 <3231a5d7-29bc-4464-a26c-803b95774f86@kylinos.cn>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <3231a5d7-29bc-4464-a26c-803b95774f86@kylinos.cn>
X-ClientProxiedBy: FR3P281CA0075.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1f::23) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|SA1PR11MB7038:EE_
X-MS-Office365-Filtering-Correlation-Id: 1c201c8e-2f1d-41f3-35b1-08dbfa31bbd1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: daiQuxaka78KBGPD0wh8yrG6ZNYqLPMvNPI2T/2RU04jiqSxUxADuuk9Fnv+21beqmcxLFrbTwbFngGYZ68Lg//5/B8hiv20XzMycoBAJPhlbuxcmzdIOjhGIJheo3Kmt2Z2J/sMVucFeOU4gYsLYl7NNmZPRdhXq3aFRanKesg3+/Nl4GBZA5B3RrAcaSI1w5h/qfd2I1Oxxk+2WTbcOtfCNRwCDVzTjX0WNXCyhAdjvxMdNWj3TILuXG8pyLPoYuNpMftJ9LGlWKHvpQyzGPCaCHAdjEUhCwrQCJcaGJ1Xx6CUWFMtbifvJbXae7SyNIqj1gG7PsZeuyLa83FiiMVPjvC4HeWDVwUs798k1XIlCcYz3ApH36v0HCBYtN8KxCKvnCTbAVJ5GuZUIulO+dd4N4UwxacAnT0WZsfaOiLI61evSYRi4gICa+HVNYvD1vFQj/0nXnBKaeg07aEfTMB4Twoo+R1OZhcaldTjVE93bPkejcQsTk9NE/UcbR79knsSkw0IkTQfzACqoaerT+SfwDs7dvCTYGw0GVr/iYO9+/Fkj0mmU5o63MSJ5lJFrH0qJJDLK4w25nln1ea/+jRSgd3gwQ3Q6lsVLf/tA9IRWAwKk0qwuKvG/uGK6rh5mCSsAZT6WlF+V5YMczgp/Um/QzeLU+1fxQJSfTeClY+SWmD/R/mrIRwe7B3tR56raO77CnedoghALcWUxvteLeBOgIvpMvSuyV97Th4sErE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(39860400002)(366004)(376002)(136003)(230173577357003)(230273577357003)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(31686004)(45080400002)(26005)(2616005)(6512007)(478600001)(53546011)(6666004)(6506007)(921008)(82960400001)(38100700002)(31696002)(86362001)(36756003)(41300700001)(66476007)(66556008)(66946007)(5660300002)(2906002)(7416002)(6486002)(83380400001)(4326008)(6636002)(316002)(966005)(8936002)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TzB2WmxPQ3hiSGVZZjI0YitsTXN3SnhRRFhUNVZ3UTMvQzB1L0UvRFFpUUZY?=
 =?utf-8?B?dVdObXROMHcvU29TdURRVU1rV0tJaTdQMnNoN0dhWjdYdzI0MmdpMjRqNjNJ?=
 =?utf-8?B?VE9UNUVUWkJxRlgzS2xjZGZjbkR3QmNIdVlnSHZTTSt5LytqQVlRRDRhMytL?=
 =?utf-8?B?bHZ6RS9yY3JJUEYvWGlrdTM3UEd5cWc4M1Z2VHdNeE5MY1NsNWU3Y1ZRcWNE?=
 =?utf-8?B?OXNzNjc4OHhBSnQ3bnNHNDRJZzhxMlRYeCtTYnRzMmJsQ3Myd0NsQmZ3b3hU?=
 =?utf-8?B?U1ZmdllBemtJVXZTUHpKT1Rkd3Z3OHNXTmNVd0Q1RC9Iei8xQ0I3SmZpNEJn?=
 =?utf-8?B?Q3Y3RUlCVXF5cHplRmNTbWlqdjR3VGNUb1EvMlk5Z0VtMDA0UGd0UHc4N3Zk?=
 =?utf-8?B?aEZUWTZ4dk1BbWxFRWJnZWVRbGI1Z0VuaGRKSUYzR1hCdkJmbDh4OEozTGQw?=
 =?utf-8?B?TmR6aXdzSHZGUjljUjBmTXk2Q2doSGx4Z2Y4VzdYVkhER0tIWHBUWHNoMnlU?=
 =?utf-8?B?M3RqTmUvR3VmN2ZrRkVSWWwvWS9sa2dXVEgvaDh3RWJnNE1oTlljUzJPbFh6?=
 =?utf-8?B?d1BTb29BbS9LVHlmYis2YVNOc0tkZzE5Qll6Y2JFK0dyZnhkNzVDdlFZUFpM?=
 =?utf-8?B?TW1FVVo4YnZaNzJpWmJCSHNJZ3F5aWo0Mnc0RUlsZlZRa1l5ZnU4UHVvY3Zt?=
 =?utf-8?B?bFVGRHZOY2lJUmMvV0N1V25ldjRLaUNONlc0T2cvOWlKZjM1c0prNWRHUFhv?=
 =?utf-8?B?Sk9mQjhGQlNPZW9YMDBPMTNUYVgzWjBDclNmQTRZeitpSUNLZC9lb1c0b1cx?=
 =?utf-8?B?ZG9IMk01MkRDSzVXM29ZaVZ2TzR0NVhtcEpRQXdpbGc4TS9VcWd4Uk14K2RQ?=
 =?utf-8?B?cmdEcHFVM2FuWngyYUNtOUFEaXJiUXZhWDdjUUVrdXVoU3FCbzd0K1VvZ0lT?=
 =?utf-8?B?SDNrTHhhb1Rjb1ZKdkZEZGt5cVdkZnA1dFhXNzV6Qy8zMEdhZWs5alBHQ0Fo?=
 =?utf-8?B?aEZaZDBCZzFSN05LTlF1aENaVlRCNjNoY2VBZGptYnViT1duTmkzK3ZSOTVq?=
 =?utf-8?B?V1hjWEVxc1g4V0dWNGZHR0k1NG03ZjhIc0JNbXpnZGNzcVR6aWZQclVYekgz?=
 =?utf-8?B?aG1nOWU2OGtybWRHVXVGbVRDQnNMMXJMazBjRE9lY0F6MTdNRDVCRmszbHU1?=
 =?utf-8?B?YXRFNm5JRFNCb0VNaFdSdm4wRXZ2WVEzY0N3Z0dCNmN6L0VIMDFrUHBIR0Zy?=
 =?utf-8?B?V0tadW1VRjZsRnZsTDhCR2VsNFkwS2U3SVI0WDJTS0t4REVHTno0VW15dmVG?=
 =?utf-8?B?TjlFKzJBVTJYbmRaS0V2eUFlMUZDOStVOTZuVURCUWQ4Wk1wd012M2pSUGdS?=
 =?utf-8?B?UXhsOEJKZnl6eGJjS1J6NHZYRk1wRzdyZnlicG43MWEvSDBMVGt1cE9ZSEZ6?=
 =?utf-8?B?ZUpmalYyR0s5N0l1QmVjMVh0Qmh1RFNxRGRhbkNHMkdtZlA0Z2Vaa2ZoMTBO?=
 =?utf-8?B?YkQwRlhESDZKUjhCc3gyT20wT2xqdlh3VFp2d3hBanp5b1EzbFhPRmZZVEJQ?=
 =?utf-8?B?OUJ1TFlnanM3VS9qZ3A2anNqUVZHZE9pT3lFanNRZUNlNUcrWFlZQnlWS01l?=
 =?utf-8?B?SGpzb04vRi8xdjFyaGdMZ2F3MFFrbDhQQVlad0luV1h4dTFUd0hYRU5FQmRP?=
 =?utf-8?B?UTlvS1JSWTRpUHdVb1VkZGszMVYvWDVCWGdvdWtyNTFzRCt6NWNiNFlOb2Zi?=
 =?utf-8?B?Zk8zeGdaSnc4Tyt5L1JSSStlZSsyS2lxYnJPRWpPWC9OUGlDM0M4K01sMzJP?=
 =?utf-8?B?U0VCZ0dGR0g3K3ZYc2VsbUFwQXFUVndxNmpkcVJ5R1E2emxZczhmUTdSME9l?=
 =?utf-8?B?eWhZT0pyd2Z1blBLN0FmUlFiZDFuK1BoQ3ZCSGwzM1BEa3Z5SnZlck0xdjdq?=
 =?utf-8?B?Y2hVc2JsV09jcWI1bkNtQjB0dnJsWjlNWEtsQytLQUZLeGRsUklBcVVLYkZC?=
 =?utf-8?B?VG5XQkMxNjdNM1ZjYU14UkFOMnhFQVJXSmdRMzhDVHI5Szgvb3pDVkVJUU14?=
 =?utf-8?B?RjlONEpHU2lMQkJheVZqdmhneGJYYzNCSERXTzg0cGk3RzZUR21zSHRkREtr?=
 =?utf-8?B?S1JHTlRuTWxCWi9vMEFMSGgxOXVjNXlUTFcyRlNYcmRiUC9IQkU2ejhsSTRp?=
 =?utf-8?B?a3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c201c8e-2f1d-41f3-35b1-08dbfa31bbd1
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2023 10:12:51.6294 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YZpinkLvnrnugchrQGSNn7XuE56St4HxHh1e28H+daaMcPWQ06AgvaHOsdXvhhyQ91SD295EsXuwcCMecUOZZ0lHI/435Wv+ccJLtks2Y1Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7038
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702289592; x=1733825592;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PAzQ2POEDQ4yXdZ1yPECepn6T6BLWb6YQiAAJ3pszMo=;
 b=FCrxX9jtLRT4mnb7xdBLr/rCLk7Bj6Y6ySu6SotMn5XFucycnh5hVumL
 GkUxbX9a05xIi5fgfgguuoGygn4x7Kh137sr4kCm/7qZQJQaHVPrPr9G2
 ZIzaXYPSUtkzYz+O3dyJ2ULREKTGP7LS8RTIH6Z665zdtl+OhDN0gNCqO
 mCBf2JQol1Wj3FqYY14DJqSbKD716axQCWcesPFTdvC4ceys+oY4+Qyty
 oq7MZOZ2nztjHtHbQcVn6IEH3C7IbTVIivtxzlRu3uPSDUMbQKEZJ1rM9
 9wdvoPYqMORfStA69gGbBd2My8vey2XYMycFRZxrChOm8BmIZV+pXhoZH
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FCrxX9jt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: Fix some null pointer
 dereference issues in ice_ptp.c
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
 linux-kernel@vger.kernel.org, michal.michalik@intel.com,
 Kunwu Chan <kunwu.chan@hotmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTIvMTEvMjMgMTA6MzIsIEt1bnd1IENoYW4gd3JvdGU6Cj4gVGhhbmtzIGZvciB5b3VyIHN1
Z2dlc3Rpb24uCj4gCj4gSSBtYWRlIHRoZSBwYXRjaCBiYXNlZCBvbiBsaW51eC1uZXh0LmdpdCh0
YWc6bmV4dC0yMDIzMTIxMSkuCj4gCj4gT3VyIGNvZGUgaXMganVzdCBzZWxmLXNpbWlsYXIsIGkg
ZGlkbid0IG92ZXJyaWRlIHRoZSBvbGQgbmFtZS4KPiBJIGtlZXAgdGhlIGxvZ2ljIGFzIGl0IHdh
cyBiZWZvcmUuCj4gVGhlIG5ld2VzdCBjb2RlIGlzOgo+IAo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5v
cmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L25leHQvbGludXgtbmV4dC5naXQvdHJlZS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5jI24yNzQ3Cj4gCj4gaHR0cHM6Ly9n
aXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbmV4dC9saW51eC1uZXh0Lmdp
dC90cmVlL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmMjbjI5OTMKPiAK
CnN1cmUsIEkganVzdCBjaGVja2VkIHRob3NlLCBubyBodWdlIGJlbmVmaXQgb2YgZGVkdXAKCj4g
SSdsbCB1cGRhdGUgdjIgcGF0Y2ggd2l0aDoKPiAxLiB1cGRhdGUgc3VqZWN0IHByZWZpeCB0byAi
W1BBVENIIHYyIGl3bC1uZXh0XSIKPiAyLiByZW1vdmUgJ2Rldl9lcnInCj4gCj4gCj4gVGhhbmtz
IGFnYWluLAo+IEt1bnd1CgpUaGFuayB5b3UgdG9vCgo+IAo+IE9uIDIwMjMvMTIvMTEgMTU6MTUs
IFByemVtZWsgS2l0c3plbCB3cm90ZToKPj4gT24gMTIvMTEvMjMgMDc6MjYsIEt1bnd1IENoYW4g
d3JvdGU6Cj4+PiBkZXZtX2thc3ByaW50ZigpIHJldHVybnMgYSBwb2ludGVyIHRvIGR5bmFtaWNh
bGx5IGFsbG9jYXRlZCBtZW1vcnkKPj4+IHdoaWNoIGNhbiBiZSBOVUxMIHVwb24gZmFpbHVyZS4K
Pj4+Cj4+PiBGaXhlczogZDkzOGE4Y2NhODhhICgiaWNlOiBBdXhidXMgZGV2aWNlcyAmIGRyaXZl
ciBmb3IgRTgyMiBUUyIpCj4+PiBDYzogS3Vud3UgQ2hhbiA8a3Vud3UuY2hhbkBob3RtYWlsLmNv
bT4KPj4+IFNpZ25lZC1vZmYtYnk6IEt1bnd1IENoYW4gPGNoZW50YW9Aa3lsaW5vcy5jbj4KPj4K
Pj4gSSB3b3VsZCBzdWdnZXN0IGFkZGluZyAiaXdsLW5ldCIgYXMgYSB0YXJnZXQgaGVyZQo+Pgo+
Pj4gLS0tCj4+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5jIHwg
NiArKysrKysKPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPj4+Cj4+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYyAKPj4+
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYwo+Pj4gaW5kZXggMWVk
ZGNiZTg5YjBjLi41OTc5NGNlNGYyNDMgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5jCj4+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX3B0cC5jCj4+PiBAQCAtMjY2OCw2ICsyNjY4LDggQEAgc3RhdGljIGludCAK
Pj4+IGljZV9wdHBfcmVnaXN0ZXJfYXV4YnVzX2RyaXZlcihzdHJ1Y3QgaWNlX3BmICpwZikKPj4+
IMKgwqDCoMKgwqAgbmFtZSA9IGRldm1fa2FzcHJpbnRmKGRldiwgR0ZQX0tFUk5FTCwgInB0cF9h
dXhfZGV2XyV1XyV1X2NsayV1IiwKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHBmLT5wZGV2LT5idXMtPm51bWJlciwgUENJX1NMT1QocGYtPnBkZXYtPmRldmZuKSwK
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGljZV9nZXRfcHRwX3Ny
Y19jbG9ja19pbmRleCgmcGYtPmh3KSk7Cj4+PiArwqDCoMKgIGlmICghbmFtZSkKPj4+ICvCoMKg
wqDCoMKgwqDCoCByZXR1cm4gLUVOT01FTTsKPj4+IMKgwqDCoMKgwqAgYXV4X2RyaXZlci0+bmFt
ZSA9IG5hbWU7Cj4+PiDCoMKgwqDCoMKgIGF1eF9kcml2ZXItPnNodXRkb3duID0gaWNlX3B0cF9h
dXhidXNfc2h1dGRvd247Cj4+PiBAQCAtMjkyOSw2ICsyOTMxLDEwIEBAIHN0YXRpYyBpbnQgaWNl
X3B0cF9jcmVhdGVfYXV4YnVzX2RldmljZShzdHJ1Y3QgCj4+PiBpY2VfcGYgKnBmKQo+Pj4gwqDC
oMKgwqDCoCBuYW1lID0gZGV2bV9rYXNwcmludGYoZGV2LCBHRlBfS0VSTkVMLCAicHRwX2F1eF9k
ZXZfJXVfJXVfY2xrJXUiLAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcGYtPnBkZXYtPmJ1cy0+bnVtYmVyLCBQQ0lfU0xPVChwZi0+cGRldi0+ZGV2Zm4pLAo+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWNlX2dldF9wdHBfc3JjX2Ns
b2NrX2luZGV4KCZwZi0+aHcpKTsKPj4+ICvCoMKgwqAgaWYgKCFuYW1lKSB7Cj4+PiArwqDCoMKg
wqDCoMKgwqAgZGV2X2VycihkZXYsICJGYWlsZWQgdG8gYWxsb2NhdGUgbWVtb3J5XG4iKTsKPj4K
Pj4gS3ViYSBAIFsxXToKPj4gbm8gd2FybmluZ3Mgb24gYWxsb2NhdGlvbiBmYWlsdXJlcywgdGhl
cmUgd2lsbCBiZSBhIHNwbGF0IGZvciBHRlBfS0VSTkVMCj4+IChjaGVja3BhdGNoIHNob3VsZCBj
YXRjaCB0aGlzKQo+Pgo+PiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIwMjMx
MjA2MTk1MzA0LjYyMjY3NzFkQGtlcm5lbC5vcmcvVC8KPj4KPj4gc28ganVzdCAicmV0dXJuIC1F
Tk9NRU0iIHdvdWxkIGJlIHN1ZmZpY2llbnQKPj4KPj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4g
LUVOT01FTTsKPj4+ICvCoMKgwqAgfQo+Pj4gwqDCoMKgwqDCoCBhdXhfZGV2LT5uYW1lID0gbmFt
ZTsKPj4+IMKgwqDCoMKgwqAgYXV4X2Rldi0+aWQgPSBpZDsKPj4KPj4gSSBkaWRuJ3QgY2hlY2tl
ZCBidXQgaGF2aW5nIHNhbWUgY29kZSBpbiB0d28gcGxhY2VzIHJhaXNlcyBxdWVzdGlvbnMuCj4+
IEFyZSB5b3Ugb3ZlcndyaXRpbmcgb2xkIG5hbWUgaGVyZSwgb3Igb3VyIGNvZGUgaXMganVzdCBz
ZWxmIHNpbWlsYXI/Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vv
c2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbgo=
