Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D69D4C98CB
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 00:06:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD76A81CA0;
	Tue,  1 Mar 2022 23:06:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HmxldaH_W1k3; Tue,  1 Mar 2022 23:06:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D26CB8175C;
	Tue,  1 Mar 2022 23:06:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 57D261BF580
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 23:06:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 41BD781CA0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 23:06:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FHBsijGssKYC for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Mar 2022 23:06:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A137481842
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 23:06:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646175975; x=1677711975;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WbF5E1dFokXT7x5sZ6Mtn6PCg5jaa0lANtZoXDP4pEE=;
 b=S+YGoA7qtp+++kQf4d7iRU3chJB9swWBi1VIJoJZU1P8skddCzxtkmp4
 9UnYeENjzXc5TPtGCT4wNU6DR/qHz8qP6Hd8ki++nuq6oQDu5gmcgkRZe
 DPDi1Nohp78eY68u1kppWdDkH+ukPLBbtBEdZYcxiPn0aie2ZiooXcI1p
 hz7kgF3njbfztWTa5wEHSgj5lxJ6NJCXIKWV805N/yBbjYR4cmSQKvR0P
 BTFvdoWS7QSjJPY0rLHTn+nwj697Hwy/KuPPVkfWb43/nzQGgr94eOdWU
 mWX+CSLmEW8Qme43e8FKLXA1GiTJJXpDvQtwGYidE1Kx+vWx59N6xIFvS w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="253188294"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="253188294"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 15:06:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="709251052"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga005.jf.intel.com with ESMTP; 01 Mar 2022 15:06:14 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 1 Mar 2022 15:06:14 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 1 Mar 2022 15:06:13 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Tue, 1 Mar 2022 15:06:13 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 1 Mar 2022 15:06:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=niAEtb8RbbcjQ8ZyfmmRWFXTcK6FO94y4Trv4zXztL/DGJc371EF4G/nDtIvj7VM80Ljk6C+nPt9hLNY441tSPJoFlkyHYCJgsz+AHtxM2umdLk8x9TzEWE3Bzgp3gdOEEgMvjqbRw5eIxjryP1dEf8xOy2774oQnf5YTHtxkC+xQhC32P2b0Be2n3/XiegRsOfCX2dZ40F6+MGRtKi9ZwyDnBnYeTtT2pXe4rbazq7tcNWZcYlhvG4C9d5yek4RkKK3UhMTnBFh1Eq6TFUl/gihDkra6Pw6YCNA11YVKiNrIDb71vP+LETdSL3t894vlEJFMHNKJEsd1Yu6JW9LbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ahyQUQjtfuChLPzqHrmyJN5wVw/8HXU/o31Jm5SCdx0=;
 b=fWkdGiqdyrEqqkpy+QjOHtpQmHTqDgYLx/2ZXFxEMCciW/EbpOa5kN/xhcUsLNYFAnYFO5XcH4XtAFlbsBA3vjCB4gs7GThvjxg7x6vZg3aaLepQtUpdE1vIny7aoGY5cQkvLGtiu6alj5JpZ1l1bS6a7jbjqd6ZBRj/rO78Jgh7CikjWZ+8wFCRYy5vTGJ/fMs2UjVPLe91tcQt1rcUxN8SUnKbo4EBoFHfq2hjFZrBYhU/GDfyHwVgQCfrcAxFilV0TMCLGphxTeQG2rPYYhs/myOqRlPr+cKoz/sh0Tbh9rTUbFyGZPrupUuQ29+18n9crpxV75YYMG/y0XCEog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CH2PR11MB4357.namprd11.prod.outlook.com (2603:10b6:610:3d::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.25; Tue, 1 Mar
 2022 23:06:11 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d484:c3ff:3689:fe81]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d484:c3ff:3689:fe81%6]) with mapi id 15.20.5017.027; Tue, 1 Mar 2022
 23:06:11 +0000
Message-ID: <622d12a7-2667-c01e-3bfa-7fddf50a2b45@intel.com>
Date: Tue, 1 Mar 2022 15:06:08 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220228123928.278014-1-jedrzej.jagielski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220228123928.278014-1-jedrzej.jagielski@intel.com>
X-ClientProxiedBy: MW4P220CA0024.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::29) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f3f15164-fc30-4ec0-0117-08d9fbd813a1
X-MS-TrafficTypeDiagnostic: CH2PR11MB4357:EE_
X-Microsoft-Antispam-PRVS: <CH2PR11MB4357FAA01AEC0504F2F9315CC6029@CH2PR11MB4357.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QaekpT/9QElyv1XXmyUhHpwAr4C5oX/PMTxvHsb4dFaVpmbkKvU9t13Bjkw6Q3Q9S1w61ceaGomqitO5sJNS4xlo8ayHfbjmebx0hr9ZFtrbaW4+KQmA9Ht45Jdayr0UhE8D2sLfKGJy5vYj69yQVE0rm1vswJ8Gf5Jv5vXerihB7HcQi6UttGgfzrsaQn+SqtuFAVJ2f9pqTgYOAGHf6cWKHiSFCK2B51uscxik8m7Ov+5zBojL8R8YmmdTLm677hnimYUk8AWDLH5QoACA++KXm2LzeC9AVKFmokj7wPDfqTPklJyGZmOtpuVbru4lUhpeLzwiFCTW5cM6dkDhz/Ie9hAczVapmn49vrZJDvNKjjzHc49ufLJIvp7W8ZgQCVr9iTJUn+2fIFDkkxcPXCTTQzKrvxXKsqlMx/12lq5fOTPYiObjdpJacCYp6px1nq7Hi/Z6+D5EhjqxKuM5nYmMxC/awHY6/vj0zoLm1m60/ZXje+RgLDVwst5fmaU3UOXT6WU6266TWREa8qWs14GBr3XBdMas9jtxxaTfFZPZ5/0Zs83cf5D1rN12TIB/d4iCqQ9bERZSYsrMyfOwcujSpUFsdwAQpEKhhQYCu31zAHBKpoIFdh1e2DkmI6mTBtS09fn/K9HFWW/UaADSxOkGWypolTdei0mtw3SK5oHPnBWbffd8hLpn31fTugMAgEKzzxATRQQlAeZ031OYC4Eu+yrR5X6zT3sbZP9X4uE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(4744005)(8936002)(107886003)(6512007)(83380400001)(4326008)(66476007)(38100700002)(66556008)(66946007)(2616005)(2906002)(26005)(31696002)(86362001)(5660300002)(31686004)(186003)(6666004)(36756003)(8676002)(6486002)(508600001)(316002)(82960400001)(6506007)(53546011)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dmduSkZHTkp4d0hUM0RPcTlrMzFEQnlVY01janpEQlpKTE5Hd0p5WHMrS3Zx?=
 =?utf-8?B?NHhoSG1SajRyV1JoT2tjb1FMT0FVVW9pTGhvM3JVbXVIUFYyOEZxSUZCcEVP?=
 =?utf-8?B?WE50MFI1d3dRSTc5UUxhUDBtc1M2ZW5FbncyYmwyck5NNHVicmFiRTlld3Ro?=
 =?utf-8?B?YzdoNGF0b2x0a0tDbXJYVGV3dFh2ZHI0Zk8rRG1zVFFDWjFIVlAvZDlkb08r?=
 =?utf-8?B?K2tjYUVJRi9sZ1ljenRTbE9yYUlpWHE3bWlBc1FDWWo0TkRaT1VYbkpudWdG?=
 =?utf-8?B?TldOakpUa1pNOEtHeDhIU05hVTRSUENNR0t3T3RHNE9FaXFsZUNsc2hyY2Rt?=
 =?utf-8?B?UEdxMWR4YmVqWXBnWnhUTnpXYXJrU3BlOE9MankyN0VYaUN1bmlJN0RMSGM4?=
 =?utf-8?B?dE9HZDQ3NXlzTGMyMnVOMk5JREN4aTAxaW1GbHgrZGFsbVRDdVBYQXVNclpX?=
 =?utf-8?B?ZFB1cTRuQjlkVVZjRVVYUEtINE1XWVRPSjlvUis4MEtPYld4VEVKS2lJNkww?=
 =?utf-8?B?VkZEQ20yTisyOXdsUWhVaHFRTmxrVGxsekFFUVorVEcwaExHaFNyZU90VUpR?=
 =?utf-8?B?Z09BbmJLZkRmU1hmdDB2bnBsQ05wcFBXS29CQjJEbHR3K1J5U09iM0lscnlS?=
 =?utf-8?B?cSs3Yk85WDJpZlRKR0dXTmxsRkNqWUYyTHdVM1hwYWtTL0pVV3VkMk11SDRJ?=
 =?utf-8?B?dVEwcUVLL0FEL1pvaE1kVGxiVkhiWXF4U1FHN2Y0c0x5QXNkaTYrU0lQVkpn?=
 =?utf-8?B?VisxWlpzTmM2MlpmT3hpdVIvcktLdFRJQ3dNSlBIL2Y1Sk52WlY1MWJQZUZM?=
 =?utf-8?B?SHJza0JXNkJ4a0xyLzBVK3pLN2dVUmg4SVlMaWVTWTl3dGd1ZXM4alNyenIw?=
 =?utf-8?B?RGdqWndhT1pXbUUzaExNZXcxQmZ0SWJVMU5oazE1L0U2WmVJQzBwMVBXSjRz?=
 =?utf-8?B?NUdlcEJocGVOWW93eDZMcTZxaVE0VHhLZHlOR3NGNi9XNGtYaVdPcjQrZlBE?=
 =?utf-8?B?ZDNLT0J3OE90RFlLOGhPRmdyMkN1Ynl6ODFrUUhNMi8wNkZ3N2REVnN0TDFO?=
 =?utf-8?B?MmsrUEFjT2NKZi8wc3R0QmhqMDd5alY2SWtxZUQ4RS82cmJJNW5KNFJudzVa?=
 =?utf-8?B?SUhmeGUwckdyTkNpWUI4ZXJtckN2WmxBemZzU1RqdWtRRng1NEZhcytvN2ZC?=
 =?utf-8?B?OHJTelN1blVFYno5NmFSWU9zSUZBQStxbzIwT25tb0k4N2FZR3Y4UDY4WHdw?=
 =?utf-8?B?ZXBPalB4YlVXMG4zRkFPK0M3T0pkSkRWR3d1UGpVU2owSS9EZk1JTjZZS1Zo?=
 =?utf-8?B?eHh4aEZhakpyVHZsQlNoV1FVYVVkNEdhZWMrSTlpeE91OWZlR2FKemJBWHZl?=
 =?utf-8?B?VlRzakU0SlZYREw2T2h5MGF4Q1NtK2xIWFFiMlRoSjlNV0prUHk0SzFTWHJK?=
 =?utf-8?B?MnRoNWlGd3RIOFIxV0s1VVdPVURSdThPMkNBZFJCc0dSRnlUbGY4Y0RFVmZr?=
 =?utf-8?B?QnRwOVgxcU9EZGFxeGNIMUFISzdIRzlnZmsxNnorQmhJWFowUXk4S3k0akZY?=
 =?utf-8?B?WlFubS82SnBEMHZndGl1VUNRVHhGOG1ra0UzTC9oM0lScjJUYVcxSm9zRUxI?=
 =?utf-8?B?MmdMNms1VmNtTXAxVXBDVHlSSVVySU1GMko4QkRRR29lTFhuSHJQT2hiQnha?=
 =?utf-8?B?amd5Q1hoU1hVNjBxSm14a09NVjJmTGsrTERqZGVHQUpmbFV4blZDUXJFenE0?=
 =?utf-8?B?YWJlZG1KUlViRVR4bHBMTmtWWWdCZXllcmhKQStCMDYxdkE4OHNQTWdSWDVH?=
 =?utf-8?B?ZXAvbDBjTTJxaGV3QlJ6YTZnSG5lWVFhN2NoNEJhdUpTWGhwZEJ4cGdsWWoz?=
 =?utf-8?B?QXhrTXBqYVFJSmhZVmlkcVROeUlqalRmVGVwT1pRY0NoYnhBdERkY2lqVkRk?=
 =?utf-8?B?NmlDSXNLanQ4VTFwZSsvdmpyMXFOZVV4S01qTS9iY2dxcE1JQXNtM2ZCa092?=
 =?utf-8?B?cHNrZFdXYXBwQUNVTzJ3OEVTbUVENVRSMThrWXZOTzN1NVdHcWNyR2F6ejUv?=
 =?utf-8?B?KzJVSkJVNFZvdldwaVJQZ2Uya0RjVEN2TnI1NzhSS01BV1R3QmRha3F5Z3R6?=
 =?utf-8?B?N0RsMmRIRGh2STF4VC9jZVdMOHpFNjM5K1R2eGxkKzJZcVYwT2lkVk45a3Nu?=
 =?utf-8?B?ZjVKaHVvS1NMSGpwaVJaTllNaXBQaVY4c2d1b1F4M1pHbi9DRFhtbHFiZVlu?=
 =?utf-8?B?c01hTXN2azB4ZXdUOW4wR3dFSmZBPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f3f15164-fc30-4ec0-0117-08d9fbd813a1
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2022 23:06:11.2180 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wE/kR3wdaUbUVIIB1L1peEUhxxnY6473AqRNFEOaSSxL48Udn4POEyjsQ2YOQnHjb6cyZHM04zT4hyPCg/AdK0k8KTzKDgc/SOvdH0gnLhI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4357
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix re-enablement of FW
 logging after reset
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
Cc: Ben Shelton <benjamin.h.shelton@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 2/28/2022 4:39 AM, Jedrzej Jagielski wrote:
> From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
>
> Device resets such as a CORER disable FW logging, and currently, it is
> not re-enabled by the driver after the reset. This means that FW log
> messages are not captured even though FW logging was enabled at driver
> load time.
>
> To fix the issue, call ice_cfg_fw_log() from ice_rebuild() to re-enable
> the FW logging after a reset.
>
> Fixes: 8b97ceb1dc0f ("ice: Enable firmware logging during device initialization.")
> Signed-off-by: Ben Shelton <benjamin.h.shelton@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2: fix incorrect git mail config

I still see the same issue:

From:/Signed-off-by: email name mismatch: 'From: "Jagielski, Jedrzej" 
<jedrzej.jagielski@intel.com>' != 'Signed-off-by: Jedrzej Jagielski 
<jedrzej.jagielski@intel.com>'

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
