Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5510C597368
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Aug 2022 17:59:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD677610AB;
	Wed, 17 Aug 2022 15:59:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD677610AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660751958;
	bh=I7bmUwQCmm7PNFOact3JrzYEc3inaGPSAhSdmXa3YJU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=820mG9XCNkT4wA6lpR5/AE6JHj/xcy0hpBJ4iwEdDjWrBzlfqLEmg1/Rto2P7vbVj
	 LCJXU5vaqtNK0L/bJqWIs3VfztlNOzHprqAXuz+jVJSXATz2TUEVl7Kvx5UiRLnGlb
	 Iq5lAOQ5ng7X1DLjxk5u0YqtQxDCg7Iue/YjReHLuxiNRDTJpX91hwy5Oh309tKfiO
	 +7vDTJPPIWCPH3maS9fIkxCGNm6NwHa9uYOREAxkRXMYlFNTxC6WyQi1M//7a657FE
	 WBs+XMxvSQhCOdPBPhvRmX0LKfhK3LUOZYQ8/zNfEyxX55aYW7SiVgmPRAk0pMrLYU
	 +32V656IPnnZg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GOE6jPUrh5kD; Wed, 17 Aug 2022 15:59:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9EF4C610C6;
	Wed, 17 Aug 2022 15:59:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9EF4C610C6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B61DA1BF2A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Aug 2022 15:59:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8F61D610C6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Aug 2022 15:59:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F61D610C6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VPjpjJfYXOLF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Aug 2022 15:59:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A0D5610AB
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3A0D5610AB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Aug 2022 15:59:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10442"; a="354276909"
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="354276909"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 08:59:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="558175293"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 17 Aug 2022 08:59:08 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 17 Aug 2022 08:59:07 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 17 Aug 2022 08:59:07 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 17 Aug 2022 08:59:07 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 17 Aug 2022 08:59:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fJZYlh7Mxe0GIOTrEoTOoZnsHsfu5+f5kOtUAAj1tqF82/zgwi5X3JCnH1ak5Rx0n7kw9PB5yUSBRRe3owM6BxZQqzuZ95TLTTbN5IjZ4mnKjARcd2Xl4R1Ki/cPQ64wzMTiEkwY5nhK4LyaRH32fUxYZT7EDDjgLJE9GCrwjdm2wqGGRsOQSyNogYbUeRbnI4CA6ihjs514npV+9qWJFaK+U+TWlnucuj7HENk3P38IKpKPSOxEFrf2X3LGVbPYesH5Xdj2pe9RQ5jY1ww90YFKrKMnhnDkoqQ8m/5zsdZ2WGjkldbS+7INBf68jIssQSwmbBk4xAKyBiOmlSkicg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/ri3sP9YZJVhVUEwKpuvE7ana99RWRTgAljZFfibYnc=;
 b=FWI5TI/rl+S4SrMH295cLT008X3eee0HEhwO/gnpEN/CvZ/ZziAyITcgn6Dzue4SYHXF+2y8XXo2NOdZSAEmcIBKrKQOs7zX2aJ6MSYHiQXujSRSm5YymYqV5JnwNRk+/2JnSMxDJmtWO1OppC5hQlqjmSmqZH1KPkwCreHtmrA0oRhcnHdprPIq3gzrzM4mJwXlC773yBdGuecdzQ7w4AUR+Jr8U3iDcfIiVX1kt4WF7h5lF5KOLU1Ty7fDrXGJeFzb4Fo+vlpplK669MPs1kcDBV97OXZPyZ0W0T0oRTRFr5S9QlxOt8HRVeWxDwEzuQU010BlQwU3NQZS8n6dhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.17; Wed, 17 Aug 2022 15:59:05 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::9d3b:23bc:a1e8:2475]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::9d3b:23bc:a1e8:2475%7]) with mapi id 15.20.5504.016; Wed, 17 Aug 2022
 15:59:05 +0000
Message-ID: <2151f504-5244-5680-1d70-1fcd8ecd7022@intel.com>
Date: Wed, 17 Aug 2022 08:59:01 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Thorsten Leemhuis <regressions@leemhuis.info>, "Wilczynski, Michal"
 <michal.wilczynski@intel.com>, Jaroslav Pulchart
 <jaroslav.pulchart@gooddata.com>, "Siwik, Grzegorz"
 <grzegorz.siwik@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
References: <CAK8fFZ7m-KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com>
 <2596b2c6-71e4-543f-799f-b4b174c21f31@leemhuis.info>
 <CAK8fFZ6hS69JMtnvFnLVt9aiWEivZ9-izNgMHtB+KeAWAfaXaQ@mail.gmail.com>
 <6f52ccd2-8411-0c53-2deb-885bb1234ce5@leemhuis.info>
 <c89c993e-7a7a-15df-85ef-8d9b7be16b71@intel.com>
 <35814f70-26ad-8007-9381-e8edf4a6d77f@leemhuis.info>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <35814f70-26ad-8007-9381-e8edf4a6d77f@leemhuis.info>
X-ClientProxiedBy: BY5PR13CA0021.namprd13.prod.outlook.com
 (2603:10b6:a03:180::34) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5e7a58f7-571b-424b-7f89-08da80696930
X-MS-TrafficTypeDiagnostic: DM5PR11MB1659:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wGp0IYx4MLABt0mlC9C197YEyXQPXHKPiYBcgY/OpW52Y+mP+BidwQpjECgBHsakJvSx8xHuG684QD3X/U0+OGYT1HjR/ka4/BmEiFZ2K6Uf/z7Fdy8IOtjTb4rB8ZDGh4bNOdw0aXoaHDoHwvNMNniHygVmaJUGYcafim6iujPLKkvOXmOVBRqGHz1oN1U7J8GMJnalUVXte9cFm/OEOKHW+uHhREy1/91iEudKraokVGjJu0N7YSO0nJAwWOjLJwbuIoC01d4YMKqvrcUczSeJ47T8Y6agFUextrzcjVQQPrEnudRCG7w2/U8zQKu+zSKy0wdrDA2gRtKOVg2M7ybZ/DeJ0L/Kbx310i3/jJ/T5B6DOOub0Nrsmb8AixrVUeFeeWf5/zhW1KJl8/V5ktUIT9hAMCXASHLPpLBcPgFctbCcxGz2IcbPnx4tvT6WDtwJK6SHFAjD2KMtmdzBkWKBYk4wPH6kaKWsxhcN7+qmjOQ8QoFkjjb9zHDaeVLr2Bn7QaEVXfWAfK0RzbwTDV8gGYbXvxU6ifz/Uw9wOZ9mN4/5wnECHPP90k8gW3oENykRuGjfVxdvHVK2TVYl9vntT1JihrftZXcRFXveVXu9vlA5PfwYDA40ALB+k0iTE/rDEIEENYGflwtmEUS5nO78UT5F245tQeEbO8PozUWFP34Fttzy1qi/yaivi8NpgVDMo5gENv7vzvQs94cKdz7YnP+O30AxrPFr2Thz6qiFrtXs9Ezna7rZVmZ5qn2gc5OFlHMYU4YztpmffeaNrMGJTZPSKL3Z5maCHstFViLlw31MTgpBNYtNtJzmVP6j+xv5yIFGBSdoTIqeD4gb5AtK2cUh7+OiDkbn0CriKiVytSlK8zs7wS84VQU9gk8AJBUEcokEaIGtReeOhqGBZA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(376002)(39860400002)(396003)(366004)(6512007)(6506007)(6666004)(6636002)(86362001)(316002)(31696002)(54906003)(110136005)(6486002)(966005)(53546011)(38100700002)(26005)(186003)(41300700001)(478600001)(83380400001)(82960400001)(8936002)(36756003)(5660300002)(2616005)(31686004)(66946007)(66476007)(8676002)(4326008)(2906002)(66556008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NEJmSTRhTFp6NEFjVUNFa1ZReFFmSHZJLzQyWFhneFVMN3MxQ1NpVDBQVno2?=
 =?utf-8?B?alpZRUlvNVU5dDJjMGFRcGdrSTFsN29QYi9WTERtakdtdXUzNFZGS3dwUmpD?=
 =?utf-8?B?TGlMQUVwTmRrNnVCdkFRazJTT2t2dER4dWs5dHRjeHQ2TlYvVE0wM3BWR2Ji?=
 =?utf-8?B?RmtvYXdRTm9RWk9Bc1BFOWRCQ1VpYlZTMjlpUmN5STZpcFZQZXZnQ3RxcFlW?=
 =?utf-8?B?LzlCWTk5R3Y3NjlVVCs0YjlPM2lQMHQ4VlhWRDJDVkhGSVVnWFh0cW1QRlRX?=
 =?utf-8?B?MytwQmphcVdMRVlWNjNOYzZ1Y3BybWRqYjIyS3huN2ZsTTJWRFdOTVJvSVRV?=
 =?utf-8?B?OFQzdnFtQksyWDluRGFYMHR1SkxoSnUwRytpMkpQaHd1bklkVDdZTG5xaGUw?=
 =?utf-8?B?UzJzN1UzQm8wdUNsK3JoNUVkamp2VHJBUEVIQXRVMFlqTTIrR2t2Zy9ZQm5O?=
 =?utf-8?B?aHZBK3UxUFdVUGQvMzVEVUlZZkFMdXZvbUxGK3F1cjNIRHo3RTY0VzFBejlG?=
 =?utf-8?B?N09JMUpMNGlXVEN6SzZLNG9zWmJTRy9RNTN6ZU1UQThZSnIwN2Y5WUJ0a01W?=
 =?utf-8?B?NXhLYW0xd2lYNFJqdWRUcDY5amxtVDMxS0pqdEx2Y1Z1c3ZBSWVxNjRlZmhi?=
 =?utf-8?B?dlNFMkZ5dkM2T0JPcmRnQno0cDAwUURxcWtyL3VoQkVrNXIwT1VkdzRIVkUy?=
 =?utf-8?B?NnJTQi9yVXl3eHcxVW9jM1RPNkdXc1JaRlJxZTVCcGJ5Vlp2NXZlUkZOU0Qr?=
 =?utf-8?B?SlFWLy9KbGVCdms4T3E5RzhYQ3E3TmJJTlhpZktkR0JPWFB2RHhHU1A5U0d6?=
 =?utf-8?B?YmZxUDg2akhtR3NGYnV5VHJOb3BPeSt4TENmd3dvcStEK3B2L3JmcEZNMTBh?=
 =?utf-8?B?SGFNVGZKYStIM1lCM0NBSzFCVUMzVnZKdmw2MzhlRVBXSXZhcThsT3pKdGFh?=
 =?utf-8?B?VEt6emJ4d21KejZQM2ZSMm1QdHR4Y3lPcExaTkZXemxuNjFvWXF1eFhmQWR5?=
 =?utf-8?B?ZWxOZkJXWjhoYmNleW0wbm55TFFKRFZyWGZjWU5EbW01Vmw0c3k5cjVldmtr?=
 =?utf-8?B?dEk4N0NQL2I1cEFiK0NRL0RzOGdpdGZLaU1pa05hekNxdjJzSGUyRnJYaGxN?=
 =?utf-8?B?UnRjMGtjS05heHcvTmdZQnBCYUtVU0U5TW5FcTlzaDdaWExPOXk4eVkzVCtP?=
 =?utf-8?B?VzdLemRJRWpTdXdrdUtaTHA4VkhRYmNKalBJV2J6VzZYWmx6WTdMSnlmQ1pz?=
 =?utf-8?B?QXVHK3lGRk83OFlSYWMzZkJUSEg1ODMzZlhoS1RCN0Vsamtvdzl3NUlMcDZQ?=
 =?utf-8?B?V28zV25iMUdpbGNnOU9yWjV2WDhRUGNxdVlRZ0QwbkVCNlpnWnZCQnYxcGMy?=
 =?utf-8?B?YmFiYk85MXU2Z0FUaUpkKzlaRnhYd2RwVGpJa3hZdkwrWnZSOFhDREFZV3Z2?=
 =?utf-8?B?SVp5c2g3NUFpN0VxMVZXa296eU5WU2NJcEF5VzZITXhpZm5CRmtkblN0Z3o0?=
 =?utf-8?B?OUp5L1JLRGF4eGVmNWZQc3kyZktkYUJvQnMyc2dGRlN1VmJRUm9YY0ErR200?=
 =?utf-8?B?c3FKTXZYc0IvdW1XRW9xRmR5cFUySXYrMFU4ZWJGTklJZUJSeWRKYUI3MHg5?=
 =?utf-8?B?NzhSN2Q0V2M5ck5EeWJLWGRYS2N1dkZrRjVVNGlFUUw0RCt6TUJpYTI2azdu?=
 =?utf-8?B?NVZKU3pSMTI2TVlIQzRYSjBjb2txMll5S0NlUVNCQ1N5QnNZeWNRZFJUOGJP?=
 =?utf-8?B?d3dGRjNoSnZ5MGE0UnArQ2pZckRrL0tGN3FhUWFDY3JMTWVJNmJ5RHVyOTlk?=
 =?utf-8?B?RlJGYXF2WTlzcGgzNDFzWEg2UWFGTENxQjdzb0tBRytKd3M5dS9VS1pITUI1?=
 =?utf-8?B?c1pBL3hzdng2SGZOZ3BaYjFqMHhRQ0VPa2JHUVRTK1JhYXJ0QmVFVnBQVnZD?=
 =?utf-8?B?ditqNWszcUc5NVdVN3dKOUh6bEhWa09sZWRFMTNMOWRjQlpWTm9zWVlod2hP?=
 =?utf-8?B?T2NlUlFmTHFicWRzRTVLMDcrcHRiRHBraFNSYnMxMWVVTUpjR2NjNHo3aUNa?=
 =?utf-8?B?aDRHamVQeG1NcUxJZWorenV6MVdpZGw1ZXBsbTNMV0gvRmJSRXdxVkc0OUgz?=
 =?utf-8?B?eVFKcW1FaUI5TmluYkxnQlNJQVhJM3A2QTlYdTVQd2pXS1lIbnh0TUxIQXB1?=
 =?utf-8?B?cGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e7a58f7-571b-424b-7f89-08da80696930
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 15:59:05.2616 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: twtVrQuHDTRrhvIM1GMetIf2goStGKleen6Rj6bu0Mr9fxlet2cT9AUddXi2mlu4i1hQAGMi8O/LL5omalk3vnMqaayeztX9i/1kwbIM1Q4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1659
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660751951; x=1692287951;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=91GbsnkTwuSxA5JAezQjrzp9a0LgDSl6VWYQxZ99y5I=;
 b=TCyrdvRPHiK8rIMmwvepROROiFAQVasCgL6H/5Mlmf+l24up07k7Vznm
 fpP8x11iR913+SyQ/MpZ2p+F3MM83lOw9+qIroDwY/6DxIBXI+GxsVX3q
 PDflN3QAtsaQRJe1qKqHWP80QoWNFpvRdwQ/OP77Tzv0jB0trgUuyOqvm
 qJQtE940GRQuE38LOucKlxEhFIHzDKkvWUvpZfaga3wP6tcohvgmrvO7F
 F7jvbuJNU9JrlevWQP7owCO2cfYjzdcd0skEcUGbpFKPuj4osOGbcnr8q
 ZM1MumtYpRsMw5oHuzdU9QfYNm4yXsgwk/uYg8/g5gKjM5XC+3VNRs+jH
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TCyrdvRP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] ice: Error setting promisc mode on VSI 6
 (rc=-17) @ 5.18.x
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
Cc: LKML <linux-kernel@vger.kernel.org>, intel-wired-lan@lists.osuosl.org,
 "regressions@lists.linux.dev" <regressions@lists.linux.dev>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gOC8xNy8yMDIyIDI6MDggQU0sIFRob3JzdGVuIExlZW1odWlzIHdyb3RlOgo+IE9uIDA1LjA3
LjIyIDE1OjUxLCBXaWxjenluc2tpLCBNaWNoYWwgd3JvdGU6Cj4+Cj4+IEFkZGluZyBHcnplZ29y
eiBTaXdpayzCoCBzaW5jZSBoZSBpcyB3b3JraW5nIG9uIHNpbWlsYXIgaXNzdWUgYW5kIGFscmVh
ZHkKPj4gaGFzIGEgcGF0Y2ggdGhhdCBpcyBiZWluZyB0ZXN0ZWQvcmV2aWV3ZWQgaW50ZXJuYWxs
eSBhdCB0aGUgbW9tZW50Lgo+Pgo+PiBIZSBjYW4geW91IGEgc2VuZCBwYXRjaCB0b21vcnJvdyBz
byB5b3UgY2FuIHRlc3QgaWYgaXQgYWxzbyBmaXhlcyB5b3VyCj4+IHByb2JsZW0uCj4gCj4gVG9u
eSwgSmVzc2UsIEkgaGF2ZSB0byB3b25kZXI6IHdoeSBpcyBpdCB0YWtlbiBzbyBsb25nIHRvIGdl
dCB0aGlzCj4gcmVncmVzc2lvbiBmaXhlZD8gVGhlIHJlZ3Jlc3Npb24gd2FzIHJlcG9ydGVkIDY5
IGRheXMgYWdvIGFuZCB0aGUgZmlyc3QKPiBwYXRjaGVzIHRvIGZpeCB0aGlzIHdlbnQgb3V0IDQw
IGRheXMgYWdvLiBUaGF0J3MgZmFyIGZyb20gaWRlYWwuCgpIaSBUaG9yc3RlbiwKCk91ciB2YWxp
ZGF0aW9uIGZvdW5kIGlzc3VlcyB3aGVuIHRlc3RpbmcgdGhlIG9yaWdpbmFsIGZpeCB3aGljaCBj
YXVzZWQgCnRoZSBkZWxheXMgYXMgdGhlIG5ldyBpc3N1ZXMgd2VyZSBiZWluZyB3b3JrZWQgb3V0
LgoKPiBSZW1pbmRlcjogdGhpcyByZWdyZXNzaW9uIGlkZWFsbHkgc2hvdWxkIGhhdmUgYmVlbiBm
aXhlZCB3aXRoaW4gdHdvCj4gd2Vla3MgYWZ0ZXIgdGhlIHJlcG9ydCwgYXMgZXhwbGFpbmVkIGhl
cmU6Cj4gaHR0cHM6Ly9kb2NzLmtlcm5lbC5vcmcvcHJvY2Vzcy9oYW5kbGluZy1yZWdyZXNzaW9u
cy5odG1sCj4gCj4gRldJVywgaW4gY2FzZSBhbnlvbmUgd29uZGVyczogdGhlIGxhdGVzdCBwYXRj
aC1zZXJpZXMgdG8gZml4IHRoaXMgY2FuIGJlCj4gZm91bmQgaGVyZToKPiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9pbnRlbC13aXJlZC1sYW4vMTY2MDMxMDc1MC0yOTA5NDMtMS1naXQtc2VuZC1l
bWFpbC1ncnplZ29yei5zaXdpa0BpbnRlbC5jb20vCgpJIHdhcyBnb2luZyB0byBwb2ludCB5b3Ug
dG8gdGhlIG5ld2VzdCBwYXRjaGVzLCBidXQgeW91IGxvY2F0ZWQgdGhlbS4gCk91ciB2YWxpZGF0
aW9uIGZpbmlzaGVkIHRlc3RpbmcgdGhlbSB5ZXN0ZXJkYXkgc28gdGhlIHB1bGwgcmVxdWVzdCBm
b3IgCnRoZXNlIHdpbGwgYmUgZ29pbmcgb3V0IHRvIG5ldGRldiB0b2RheS4KClRoYW5rcywKVG9u
eQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13
aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8v
bGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
