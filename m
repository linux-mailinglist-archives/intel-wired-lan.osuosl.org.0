Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AED0D66A586
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 22:59:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB0D860B1E;
	Fri, 13 Jan 2023 21:59:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB0D860B1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673647157;
	bh=kIPET4uVEjoMT8Jzbj5D9GLUgvzdAUwYZQ8nscA1TNk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KVltIoDGb47YR5jg6pEW2rJDU9EbNJK8BLix3A6QPq2JHDSxlbQsAc1/4t5FC7gr7
	 vvK5png1jfW3tZQCK+bROeI8M7he1kZs91oecGo2zU+Dg2+kmoj2skTB794t2G7Epw
	 qjYB8N9goVICqWj2tVvAGq2U0XTfWbHDWJHps9/sWg3ZFuJWHf7zGzQIKqegHSi6Rb
	 ouYQLiIV3IP4jHU2igUiXO+rXvtg9pfYYzXl/VhPEs5susWc3bc56Ik9CDsHCoFgWn
	 iUNxI3s7O+2ezTgQ/j/PSb+EP4FnIq6UhEmQwcce4o7engxkV99IW72SH62ue96Qs9
	 CjnTi5itj/eYQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gehYBKArvuyh; Fri, 13 Jan 2023 21:59:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B183A60AFE;
	Fri, 13 Jan 2023 21:59:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B183A60AFE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 278831BF28A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 21:59:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E9BD341695
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 21:59:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9BD341695
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6eauqjIvMGlG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 21:59:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EFAF740918
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EFAF740918
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 21:59:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="304490561"
X-IronPort-AV: E=Sophos;i="5.97,214,1669104000"; d="scan'208";a="304490561"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 13:59:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="608284692"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="608284692"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 13 Jan 2023 13:59:09 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 13 Jan 2023 13:59:09 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 13 Jan 2023 13:59:09 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 13 Jan 2023 13:59:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bbblT26cN/VdpuHYiB4C4DWmm8AUF8kyB5/GKZjDOICU6Xx8lfy6IiRJi6KT8mxrCER5Br6Ff9J4ClrfibCfbnrthYh8NNmhH4eA3vy8S/rRuV+JXBPZ+VJ5Ri5LstAWEq8uzCctbz1m6FBe51T7HzLUwpw7r6yOK7WPHA3le0qm1V4of5M9EZu4TijueVp2pbdxweOa5UUsYg8OSCHovAAnhRRn3K+o28AjPV0PlMeCbqcpoIAUh/54Z53C2QYKFssvmHMV2/mhjLdGwezVLkpTguncX4911jSCXcFPhgQATofCwRWxFNovTtmyR2SZhDu0weL47Pw8DAyUHq6JyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8EhM4K1Z6pEaVYRX9ijwidjJa7WLp3GLPNdWPJG1JFU=;
 b=NqWvy8r8UyoAdQQnrXh/UMEw6phJ+FhnrmhvJTD/UJPb0I7I2qXPHIZAcrgwLHD74SWdw4mEL4E+TALjPjDb5CYT+ib9PWJw7ehT17QPOJWM7gCz4kGTgrVmImUwTjtHjKAT/bvl9uZk4HYBtxCICGjMViT9eVHGI5vD8qHnseBpEyj8agIO/M3pzOJGW5WyqGzNsdBgLmuShoiSxiTwLHe0cxHc4O8sQVIDQ3LjvRXpEbbYsBFlGYTnT+ZH3/ivlG8oFgxvNkvCMu+swHDj7OzVR9BMx90WLLoaobMVZaJbRBxm96cUIF0gUaj2kXkc4yaQ2oZZftf66dN78EGwUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM6PR11MB4658.namprd11.prod.outlook.com (2603:10b6:5:28f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Fri, 13 Jan
 2023 21:59:06 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5986.019; Fri, 13 Jan 2023
 21:59:06 +0000
Message-ID: <ca88f959-e658-fe9c-6011-1d38d50a61ef@intel.com>
Date: Fri, 13 Jan 2023 13:59:03 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Karen Ostrowska <karen.ostrowska@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230112145434.770847-1-karen.ostrowska@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230112145434.770847-1-karen.ostrowska@intel.com>
X-ClientProxiedBy: SJ0PR03CA0340.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::15) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|DM6PR11MB4658:EE_
X-MS-Office365-Filtering-Correlation-Id: fbc95d3d-7e95-4dc4-d636-08daf5b163bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bMpEBn/MlLQ3oXDYfWYl2fWppISRO14aLOc84h++VFLYTbbuig9l9IYl69ZXwO3WVaKEW9zwSwYqlgfwwrJRr6UEKEusXFRrbS8ScjwhqAVislDnEqpCzm377e9NgwnOjhxgDH3Z0CU0hgzb6QdNGLGk+NU4AxxE0R5uz2H6RYVd/VtBM2H/io/ZNu43+tPtZ+TFApIkRhKNr6OEAgjutATIJjSKxscA5Pprihuew0OafZQbDu59SVQ41EkP1NkAIJfLfeDgvxbO0AVLeUi5HeQVQF52u+5UIekxWYlk+OdFImrbZNTOiqALu/1k/JA81eTYadnRk6ztKKmVRMQNM+b4L4AOS0wK5iqhjDqdt9nw3y9jd4vs7K+jN0010zVI9R4To8NnG2Saup/HclWX4NyRuAqaGWhAxNyp2STGvFz2yjdfOH/HDjloyKy592rCfcIr46h/n+n9mN9M6pQrc2qr8F2Vzw/pWpYiC8Y7fBvn6UQFkzuJm2XY9FP3TxVjxGJ3GCS8JqiIAmm+a5Kw7uBBCqFpMbp84Vfz5bKcgIKnGKine+BAoKvC1mxwL2LnNpf1UDjoF1Om4tOlLlThKRL55jOpxPyitxBI8RlxarRrkidVRCo2MnJraaXtf8dOuOXZHcEoOe92jO+V9fpbVM69Uha4Km/Eu+YK2BsSVFyaXEGw8opc7mxvACpdIb7BwCYpeaFiGB1Oz2j6+sJTiLzbDY4vYttemm9Z2WTxHtM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(396003)(136003)(366004)(346002)(451199015)(36756003)(82960400001)(38100700002)(8676002)(4326008)(186003)(86362001)(6512007)(26005)(31696002)(316002)(66476007)(66946007)(2616005)(6486002)(478600001)(5660300002)(107886003)(8936002)(6666004)(41300700001)(6506007)(2906002)(66556008)(31686004)(53546011)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UWJ2bmszblJOVjVEVWtOK28zclRCQ0RQVmZpdjBnRTZYUHIzSC9Pa2Z3Y0dU?=
 =?utf-8?B?NTJzQlROZnMvejlGWWxFcEc5YURWZzZRVWszVUJsTDgvZzhlT3M0ZEV0VDBL?=
 =?utf-8?B?Y203MHkxTUVUNjNKeEc1Rk1PdXoveEFUaEhXRjVxUjl0dXRtb01oZjFISEk3?=
 =?utf-8?B?dGVsZnhtS056cGVIRS9TZ1V2aEJUUDd0clV1NzZQbGM0eDFZZXBNSmw3bHNv?=
 =?utf-8?B?ZXVMMDliOWxUTkZJdzM0NmNFYllOTy9iNnBHQU5PUWdFNzh1b0s4Z2N2K25q?=
 =?utf-8?B?aEwwem5nWDJoWVlNRnl1eTdBa1dKSzhiNmk1MnllWmdOcCs4d2RVd0xHd0Fl?=
 =?utf-8?B?bW9iTDA1aVk2OHhVYTFTc1ZnSklZSDM5bVd4dGZobU4rWENlRHBBM241bXdE?=
 =?utf-8?B?VllhZHV6YVkrYW9SSE9RNlNVVG5oNDJLVWplY1lXS01rcVA4dGhoTm1Cc09L?=
 =?utf-8?B?V09QS1c1NXJWNXJXMFJHVVM0VG1VT2lFcVM3bWRPOURpbUVCL1pZekdHR2Zm?=
 =?utf-8?B?eTU3OXhFY0ZoL2JSbjdHbHYwSXNSdmlTRjRBOCtPdEJQNU80YnZJdWNRVFhX?=
 =?utf-8?B?a0pFenRGeGJ4VEY3Kyt6ampjYlhwUFNZVzlROU9pOUh4NHluZG9KOHltV3l2?=
 =?utf-8?B?SEJTZC9wYTFPZ2dOWmQxUStGcFVWNXFiZUk4TXo1K0NRSXhxWmFXNmo0em1s?=
 =?utf-8?B?ekdMemhDdVUxSzU3STlzZHRFOWlxL0lnL0Rxd0o5UjV2RHp2Szlab2xtVnhw?=
 =?utf-8?B?RVpUT1lQa1crY0N4d0lJSHdkbTFiUFI0eDk0VndJT1BBbDlNMDg1UjBtRWUv?=
 =?utf-8?B?NmJkeGF2NEdmMzdsODlmNzhlVlNCTnRXUXk1eHB2dGVRdWRWQ3dPV2pNcUNt?=
 =?utf-8?B?RFNBS1FtVG9FSnQ3b1JSL0ZtMm1lMUVLa1pRbTludGNPOURlbmVKNmdySnh6?=
 =?utf-8?B?eXphSDRhQ0k5ZnZXeW5EVjZMRW1uTCtSTU4vYmJQaHRMeFVvai9nUzlkRDNS?=
 =?utf-8?B?UkpTNko3NWQ5c0tCQURvRkxoR2YrbEk1SVdPNCsya1RrRzlxTlM0cXV5VnZi?=
 =?utf-8?B?TzMxZm9CUHQzQWo1bXFXa2JDLytKa1BjZWxsQTJQcGFCWlV1cWxud2NGL0s2?=
 =?utf-8?B?MEpCYkpNK0FPOHhRU3lRVTVZZGM2V2Y0ZUVVSWtoalBoU1QvNEVOT3lIanpp?=
 =?utf-8?B?TnJXQUZ1Q2h4Nks0SUZVRkZzdFFHRXgwTWRkT2g3N1VGK3hTSGNJbm00aUhk?=
 =?utf-8?B?UjQrcmxnSG95Y3YyZGpNWWtmblRWeExEclp2V0NzYTBhL040aDVMV3dXcDlV?=
 =?utf-8?B?Mmh0NDYvWGh4MHJrYXJpU3lwdDFwTFFNM0ZZTUhRQU9qUzdzK0YrM0xFZnhX?=
 =?utf-8?B?b1hPblRML1hsWWdkSjA5ck0rK090WVBadEhSbHh5RWdWU1BwU0NMclhyVUNI?=
 =?utf-8?B?d25LbHIyNk9EdldDOFJrdTFzSHE0WWtPOWl3Z0JoaS9TelU3aE01d1FJbitR?=
 =?utf-8?B?K1FFREYybi8vYmV0azJMeURGREg0dGVYWmdyVVl3UEpLTWw0UnVvV21ZUHh0?=
 =?utf-8?B?S2tmdGcrUncyblRGSHdEZm1KeXVpSXkvS1k0cWhJSHhjNWJ0WnY0b1A5cHhP?=
 =?utf-8?B?WUN3L050NWJqZTNBUG9Ha1ZmZDJTdWlqNFF3YTd6NFBaeWMyZGZvRWRvaDdK?=
 =?utf-8?B?ZmFzYWtFZ29vWnFSSDRXNUhWQjFVQlk4ODY0cnl4akZhSlBvZXJkTlUzbllH?=
 =?utf-8?B?ZFdUL1pGV2VPSng1M1dmRDljUXl2ejhxVTJYSXJQbHhwblA0WUVvdllsNERk?=
 =?utf-8?B?OHBnTEZuUUw5c0JNKzNadnEzQTEybnJoT3BiZ1ErR1hDZ2p4SERxT0lheE0v?=
 =?utf-8?B?M0hFY2lqaCtWYm1mRVk1a2IybzVHT0lhNlFDZk00ZVAxNkxmY3dUQWpUcXgx?=
 =?utf-8?B?Nk93OVF1SS9GRDM1bVlYMlE5Y3pHVDUwYkExUWNQcFk1NEhXYnowRTRRRDRO?=
 =?utf-8?B?aHdkNmlRaXpGOWN4OU9JaGs3SEI1S3pSY0Z6M1A2cTVuOFVMUi9nSk4zbk1H?=
 =?utf-8?B?NzRWQ09Xd3RHamk3NjAwRStFbStGekNQUzR3aE4ybkFQMkN5SlF4aWF5amZ6?=
 =?utf-8?B?NGZKYmJxdFNiOUViY3BCV0ZISFZJcU41Nk9XSUNrdTk0TUk3V2F6T0EvMnFF?=
 =?utf-8?B?aWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fbc95d3d-7e95-4dc4-d636-08daf5b163bd
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2023 21:59:05.9935 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pX+OeIYViigYT+m26c7nX4XYSzujvw6wJZ2ilswGqpQbM+2mhq5y7/lMqLqNc3N04iyeHmUnpXwkIASVJMBgQiVUyBslzS4Hjlv5td0VFgE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4658
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673647150; x=1705183150;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7TBFh+zdokrTV4myTBrfMAQjktzl13kgA9HyEDWoZAY=;
 b=EEO68yDMBf7zGcYcLwZ7Sy1Scxk1TLZX8PpQHpi1tIKeVqtcwR+KFMoJ
 2hy8zmcptNh+OPk5v5NbB29WyS5qasXjdIfgUyD3jDvik75DbaIR0JZrB
 KZlWFWojoTUrF8AEDHbo/KsPTap0+8GAJsTnUrw561XH8MBxWBr6KhN91
 tRDKrMCct8J0HfzF6nr+qL5kXYjGnCXyMuA5xF77cOl22PnJfcEniRbRx
 7pKmOiOPKi+SBBmSZOctBJ6DAlBd+/cUJ0fObIceU1QKzqkwn4Kjd5F0M
 i0jfTYxGg5AEkuSWqBRDBj4InvwSMPoXvPvjc0ah/XA7uya3e7yCaCnqy
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EEO68yDM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix disabling Rx VLAN
 filtering with port VLAN enabled
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
Cc: Brett Creeley <brett.creeley@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/12/2023 6:54 AM, Karen Ostrowska wrote:
> From: Brett Creeley <brett.creeley@intel.com>
> 
> If the user turns on the vf-true-promiscuous-support flag, then Rx VLAN
> filtering will be disabled if the VF requests to enable promiscuous
> mode. When the VF is in a port VLAN, this is the incorrect behavior
> because it will allow the VF to receive traffic outside of its port VLAN
> domain. Fortunately this only resulted in the VF(s) receiving broadcast
> traffic outside of the VLAN domain because all of the VLAN promiscuous
> rules are based on the port VLAN ID. Fix this by setting the
> .disable_rx_filtering VLAN op to a no-op when a port VLAN is enabled on
> the VF.
> 
> Also, make sure to make this fix for both Single VLAN Mode and Double
> VLAN Mode enabled devices.
> 
> Fixes: c31af68a1b94 ("ice: Add outer_vlan_ops and VSI specific VLAN ops
> implementations")

nit: Please don't break up the Fixes tag to multiple lines.

WARNING: Please use correct Fixes: style 'Fixes: <12 chars of sha1> 
("<title line>")' - ie: 'Fixes: d07633fca9d5 ("ice: Fix disabling Rx 
VLAN filtering with port VLAN enabled")'
#22:
Fixes: c31af68a1b94 ("ice: Add outer_vlan_ops and VSI specific VLAN ops



> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Karen Ostrowska <karen.ostrowska@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
