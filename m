Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E6457BFCD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jul 2022 23:45:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3DF5783F82;
	Wed, 20 Jul 2022 21:45:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3DF5783F82
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658353537;
	bh=hC+dEmjzmE3jW7r/CP5z5I0JFFbZV6vI4P+nleJeIR8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Bnxu8GkAZ0Etciqftt629s3rwtPIXp2abYrQ10ejPMDTFMaghT3L7vcXp7UVqv/zR
	 Xiq7h2XIMDUUD3Cp8uKZxfYksIv9jJU5Vr+46xGIiuIn0D6aEZh50jrGFwTj7SY5s5
	 4xXnjP9KeFdT/+5uPemu9sejUCPVnVSqL6qTtcByD130K/uxZflFsKU9AqsZptQ4X2
	 d58r0z8sQnE4JaeRhM5son8JV2oAUqIgJ0VjTiaJVUPV5iMHZkCMqFI75fUyPxbp62
	 I5CgBg6gxDI3BA+UswKoTZTw3xRS8bBVtu3eXrrch5YYv1Oq1d+P+pEiYWznZvEJ8u
	 k8AKEXQ92aYZw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NRzGV6GpPb-E; Wed, 20 Jul 2022 21:45:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 355A883F56;
	Wed, 20 Jul 2022 21:45:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 355A883F56
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1DEDE1BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 21:45:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E689D417E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 21:45:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E689D417E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jpx-ZCID32eP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jul 2022 21:45:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1D20410AA
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D1D20410AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 21:45:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="348586489"
X-IronPort-AV: E=Sophos;i="5.92,287,1650956400"; d="scan'208";a="348586489"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 14:45:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,287,1650956400"; d="scan'208";a="666030477"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga004.fm.intel.com with ESMTP; 20 Jul 2022 14:45:27 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 20 Jul 2022 14:45:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 20 Jul 2022 14:45:27 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 20 Jul 2022 14:45:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kfr7cyqr7ClXbeX/IYxCxsGuzCX/7SaxxxjKlkLVSurvNwWTKUpGiUfvY4uVhM86nVmGG12+FqtLfa2kVa5YR/UQdGRHV1kfXMQf3wAQ1hPxeHOvysfuGhprVqGFUaVSUbbHbGHvknrPxPChUwtqTowQT9Bb8p23k5Qkt9ytiwxTS8B1gGFA1w2Q6q+ZqaKv7nhfKLr/JMK39vWVI6ExRfaa1+32ALyA+7xAbQ7TM0BE7vkJ0sbGQiGyEO+wLeShdHHTG/kC+xlhLbb3zDkE0KDXKxY9bSV2m3UTP9L3QR/6cOAyjj6gTFUFCnvDjKoB0tYYGmFu/DMN4YcMz/z8kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wVWGbaAo5/bsoW9Ic44qAaB5UXue4aJ9R2wQEyWnsJw=;
 b=CbUHQfIlDCTeIUo8qfTtRcyFnAiODdNgFKfLhJe6xIcJbEM1DxijIXwzUuxhmRcO5iyDE3ifuZSnS87eWlcRXDe5h6k17+gZH2UfJZ+CjGM3senlrw4yZa8lEOJgt91HERxRwuVeG0LEzdEaICEnE30Of+xicUlW4kjmA/f0+VEFC22wcJHSHKD1xR+qC4oCmF4n9nQ1+aStjqr5SMaFM5nk2YhFeYttEd44BCqxyi+iTBzQqoc3k6exe4CIqAdqmgBqSjKRSr2sRItLCBCx0hJHYeqHmzy/p6WxnHwtB3Tu2sO/qlCadYvlhdaHkLWo11yAEHZYmF3CZSPoBUy+9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SJ0PR11MB5677.namprd11.prod.outlook.com (2603:10b6:a03:37e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.18; Wed, 20 Jul
 2022 21:45:25 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb%7]) with mapi id 15.20.5438.023; Wed, 20 Jul 2022
 21:45:25 +0000
Message-ID: <cb2c4e87-1e61-b9b5-4c41-31a134f8de51@intel.com>
Date: Wed, 20 Jul 2022 14:45:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220720131155.468702-1-jedrzej.jagielski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220720131155.468702-1-jedrzej.jagielski@intel.com>
X-ClientProxiedBy: MW2PR2101CA0019.namprd21.prod.outlook.com
 (2603:10b6:302:1::32) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8f719d48-a7b1-4130-4733-08da6a992764
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5677:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NMVMeSSbf8MYyU+FVx/p1maNlTHVDgcbp98Cu5Dh8bxQOoZg2rooJgLFnfdvNu/N7wmMKS9/GMTDmX8+Mn2Jh24+mlMlG+7gGvtD08+GeSWvlaTb5jNONlMkGZXhVIQ9UjANV8m/l8LIpvpHI57QA2BUM0ThUis1ooHhmD6aJX15VhVITAUurEhxbC5AiKzkqvWOHgXbz4QSm7/m7Ev2uGuPl4cJO7U8GBsa2j9PStkanqhflf2QVv/BZvhKI1TfonV3aYrv28aXdcOdkjP/6XNn4ffasEYsQAyHFjL0GnAMrRyzytfBZ4VL9UiMbsia0RD70JeMT2fXMprToIgmkmB9np/GmrRo1xUqEj14/RtGMiI5bhmuJDq4dD+5dENoUw8S0nzpxNu8pqC9ct218r2w5wtBS3suTmHI91zPYbzmq/31vu5P9vu9NeBxFHK7MmgEtqb02wXt17C9O+coAJ/PIstcjJsimiVBBRAMRmxun6223AYScV1DDaGgyvARg4GfbVFReTwMsgRR4unRFP6/pIo9NhJdUI7dELJIs6Wcq7luPtOUnM2b68ohQmjCAv/VO+1zYf9LOJ3dRz6jeqEwLN7QcB3YXp44aVIwVIRilfFy5h6fFA95HM3HlH9wFcmCPYOQWFnh+qX5uLh1JEXkAmKaK0zhEucGEpmHdipOLhw3qK8ICpdaKZoJD5HCKGOG6UVaIdOyGTihyNXvNJQcWzlzLefsUok1a24WgFpXZ+OPFwWSaerFl0J0RU4DPjEM7zSKkd+zevnhhDjOgKLfVDBbJ0AtPNl1dHhUU9uBGkOu370W6VuvWOr5upwr4wQ/bVbmo6YPqjbtKKPRDg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(366004)(396003)(376002)(346002)(39860400002)(2616005)(186003)(31686004)(6512007)(53546011)(38100700002)(107886003)(6506007)(86362001)(6666004)(31696002)(66556008)(4326008)(8936002)(8676002)(66476007)(26005)(66946007)(41300700001)(36756003)(478600001)(2906002)(316002)(6486002)(82960400001)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WXIvMGlWRXpRZGErRklzLzB6MGN0ME9YWjl3a1Y4NWhHSHVES2RaUE5lT2JH?=
 =?utf-8?B?WDF0MGJGVXVER21hTTJWZWlRRTR1TDRYSnROcmVUb25UMjJvRCtVUjFBeUMv?=
 =?utf-8?B?SFRiS1RqL3V2aTVGelhyQ1NIVDhCYlN6UWRLRG80THVBVGZva3EweDVnRlQr?=
 =?utf-8?B?MzlnK2xGSmZxbEpJcTJPRVdxMTZEa2FoSXl6VTYzenZ3ZHorK25GRnZXS1VY?=
 =?utf-8?B?bndMdWZoMW41VE1yRVBuRzVzcmZwVXlHYTBLaDRRTjVsS3ZudWVpUG5NVHpt?=
 =?utf-8?B?amU5K2pKR3ZPNkVwOEFtVWtCK0V2R2Y4Y1NnRWRpYVdNYks0QURoTmllQjN1?=
 =?utf-8?B?Wi9IVDRzWGVOUy9OVUJtYjdGWitFMGZlQUk0OGVJcHJMOFVFYkNEaVBqSDgr?=
 =?utf-8?B?RTBBWDVkZjJyRHQ4N2JVYjg2dzd3MFdDNmxSRlZ0UnI4ckhGb0ljQ2FCbTNo?=
 =?utf-8?B?Um1idVpHZmZNU1FjT0FKMmpMT3FwTDZTZ1RDeDh6aHpzYkVERHg1eEQzSHBJ?=
 =?utf-8?B?NXZ6VFZLa21TWjlDU1hUbDJoRnlVWmwwOTdSd3Q4WkxKczRHMnFnRDZLczc3?=
 =?utf-8?B?djB4NGhQZkkxUGRPeCsybHJuV2gyN2hCQ2ZmZ2VTNWMzSTg3ZmwyS0JoZHJW?=
 =?utf-8?B?a09tdGk5UFE1K2NrbTVCdVVzUUdLUkthSTlZdXhRVXJIbEtSSzN0T29vK25M?=
 =?utf-8?B?V25iTTArTjUzaGpXYXhTTzd5RXdOMDBZNHUyZUU5UVVmSm15MTl0K0htcU1N?=
 =?utf-8?B?ZmU3Y1dwQ3BITVV1TXl5QnRJbktUUldwSTk5S1VFckhCUGFKYzJsSDUybkha?=
 =?utf-8?B?eGc2RVdydW1NUVNPZ3JaMWdnTnM1Yk9iZFphZW80bnNzUUNOc3E3OXV5ZEZT?=
 =?utf-8?B?ekFob3ZaMFBUbXROK1ZFY1ZsVGFWZExXaFMvRWI5V0xubW5ZOFJvU3RySWpR?=
 =?utf-8?B?ZVdQdmtFd1dwbUs5Wmx5VUhBczc4NldrZ1NZbHA5ZEFLR2lubGxHS25CZW5N?=
 =?utf-8?B?eXN1ZTZER25BcUk3aDJnVXo2ZjVlaUN3a1VDZmExZGtsR0RQRm5raklVQWFZ?=
 =?utf-8?B?S0RFYU8rV01MZWVoRzFuZWhwZklZeUxEb1VqczMyU1ZJN0JNcU1xY3M3bG0x?=
 =?utf-8?B?S3ErZU0xVWk5eUdERWNzR3A2Z2p3aEU2c3JhVVNyRmx0VnhUcFNlNGg0dmpq?=
 =?utf-8?B?RkhwR2o1L3RYUFlMajZnZHdScWNGOXNWa2tSc2lmYnkzenJ0eUxqcUlUbi9W?=
 =?utf-8?B?RllXNVpSakU3YUFwa1RUalk4NWN5a2JmcjJ5SFZjRi9jbitUMFpPU1JnQXRQ?=
 =?utf-8?B?bFlVQVZrZThvOHM0c1FQWUR5SXRTSHdMZXVCbnJKNHBjd2RweWtnUTMxVCtS?=
 =?utf-8?B?dlBZVjZrUDVzbi9xQ0FUaDUrSVhURUVlbDVYUVFlNEVGc2gweW9kbkJRNENY?=
 =?utf-8?B?a3Job1ZubXZtR09IcnB6M1E2YWlpUERJNDkzWDR3eUJ5VzBxSHdUM2E1Zmlu?=
 =?utf-8?B?TWUrdkF4aVBXQ1E5R2dpNVo5WDh2NUtSOUtPeWtCWDVEbnpaNFRlUnlVZisw?=
 =?utf-8?B?ZFJJdlJZdzFZRUlNWXFMcDFGYWhoWmRuU0xtNFV2aEhJRkwxUFFLRTRzY0NG?=
 =?utf-8?B?WFcrM0d3Y0R4YjVwckVoM0pNUlFHK29QY3lUMU43YjBUZVExckJ5SVlkZlY5?=
 =?utf-8?B?REpoMlpWcXRFekwveGNzYWJGeWEybUVTNEgrcGs3VWtvSDd3VGk0RkMxdWw0?=
 =?utf-8?B?bFJLd09NTnZNdS9OMEs3SVo5UDFjWHdhVG00L0hpTTYyTXJkSlhqYWNqa3Vn?=
 =?utf-8?B?ZUl6S3RKQm5ya1NlNUpWWWlBTXl1YlRMU00yM2w3bllBalBIZGpQT05TdjUr?=
 =?utf-8?B?SFZQVkhGZTg4aTkxdnEvWm03dHo4a29XR2dhMnJRNDBGRXVVb1A3RktScXFa?=
 =?utf-8?B?N2FWdTlrd2g5cmdVMWFXMndMK1NUVkc2MHFXSHNXUmllZlQ3dFpNL003U1ds?=
 =?utf-8?B?SS92MC8veVBTNmJZY3ZtbmpWM2wwTzVtVERFb1hPN1g2UGlVb2luRXFuZTRB?=
 =?utf-8?B?VCs3UnZySkZvYXlwRkZpSEVBUXVyUFZtek9EdThMRkJPd3FXRThqbStXNDZQ?=
 =?utf-8?B?cHhOdGFCRDVKM2dnM2hBTDlxWWVodm9ROGRvaS9yNndKemZTenpBTEtYZi80?=
 =?utf-8?B?VFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f719d48-a7b1-4130-4733-08da6a992764
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jul 2022 21:45:25.1332 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UXLUdti6ObYzQhNVMpFa472Q/gj90DpZO0Cb44HFn0U2gYb6WAPkZ+p9rDT9u3XzGb57Mc0TDJVS9UqKEfHt1HMvqTuZS1RVEiw/pZvFFrw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5677
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658353529; x=1689889529;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lgMnriKrZlWfBLu3bKSL/2Fp/D+hy5E0670s98grdb0=;
 b=N+uADFW7FepM6VhyoSjmqwP4LSI8lAePCT8iSpAvfTo+GFCGGZUCZnSe
 PJSafUgJ0MaJk/UgcYxXLWhPjwYK2f7gV+LtV/djG/KSNMqiVawf/D0M6
 ACNkPhl/hx5pIrN1L0XC7LZJAdmuNYW8wM5SxxK6jCGvvTfWx9y0OsAa4
 fHxrE4z1cw/MRMNBqhZq6dCsksE8UeyDUHwW0NzVWQvWxhU3oTzVa/qQ0
 Olli7PqfUgraNva6tutgdxykaX4bnbapl6U2JJogY5t0O6KW6STdlUoAs
 FS5eueyHlRPNa0ww9km8HXAHpRW4WApVLPIPcCMciDoKnQFnz+yCsXV13
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N+uADFW7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v6] ice: Fix VSIs unable to share
 unicast MAC
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/20/2022 6:11 AM, Jedrzej Jagielski wrote:
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> The driver currently does not allow two VSIs in the same PF domain
> to have the same unicast MAC address. This is incorrect in the sense
> that a policy decision is being made in the driver when it must be
> left to the user. This approach was causing issues when rebooting
> the system with VFs spawned not being able to change their MAC addresses.
> Such errors were present in dmesg:
> 
> [ 7921.068237] ice 0000:b6:00.2 ens2f2: Unicast MAC 6a:0d:e4:70:ca:d1 already
> exists on this PF. Preventing setting VF 7 unicast MAC address to 6a:0d:e4:70:ca:d1
> 
> Fix that by removing this restriction. Doing this also allows
> us to remove some additional code that's checking if a unicast MAC
> filter already exists.
> 
> Fixes: 47ebc7b ("ice: Check if unicast MAC exists before setting VF MAC")

Not enough chars...

Commit: af88e1d3506b ("ice: Fix VSIs unable to share unicast MAC")
         Fixes tag: Fixes: 47ebc7b ("ice: Check if unicast MAC exists 
before setting VF MAC")
         Has these problem(s):
                 - Target SHA1 does not exist


> Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
