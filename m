Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A6B6E00F0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 23:33:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 73C3E41E26;
	Wed, 12 Apr 2023 21:33:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 73C3E41E26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681335204;
	bh=pP8R9XzZFDAZJuDY2e4Heq0VDNwe+Sf2CAbGGWd3LBU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9dp5E+MjGhSWAF5KvyDXHVtloHKSImtjA1l+maDP7euQD1xmr8/SgOqsatz8HGOVS
	 p7IEEoASgWBSJGAK3jnq2tG36ruGhJPL8Euxvvh1JA/PFoLe4y2CTWt/HKxuKrybYs
	 ur5+u/PNozSARyviRNHwaYpxzTYxT+iCOjWuVVyzXOtHEGNDXb2nPixgQxt30glXAP
	 HRKapfS5/BDkKcfF5WdOtLiH7/AovNgU7jD4gaY7YNmglVbLHrU2ltvpZlIv0gCm33
	 tyuyk4xdsl0Ur2xvTWo506lo+RyjXcLfJ6Oki6cEfAljfGbJdMORnYGtwdVJV0FLm8
	 iidCh1qHWYxBQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sJlQ4Lhqnspw; Wed, 12 Apr 2023 21:33:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A775940C39;
	Wed, 12 Apr 2023 21:33:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A775940C39
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A12B11BF3CE
 for <intel-wired-lan@osuosl.org>; Wed, 12 Apr 2023 21:33:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5C5CD40266
 for <intel-wired-lan@osuosl.org>; Wed, 12 Apr 2023 21:33:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C5CD40266
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M49Fqy41b0pK for <intel-wired-lan@osuosl.org>;
 Wed, 12 Apr 2023 21:33:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C473E4022F
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C473E4022F
 for <intel-wired-lan@osuosl.org>; Wed, 12 Apr 2023 21:33:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="430315109"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="430315109"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 14:33:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="813131462"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="813131462"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 12 Apr 2023 14:33:14 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 12 Apr 2023 14:33:14 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 12 Apr 2023 14:33:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 12 Apr 2023 14:33:13 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 12 Apr 2023 14:33:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z4IubXPxzqwbMwsGqzVo/AoSOpHvY14TL3xLF4QAkFgVbcER60IQvn865P+vPbmWJqgxD4EMBY1m99qmOyJdyD2VdhTNlxw622Pl+Qse17PzAUDQJdjYkpNU3CiGKlwnjniC6uP7isWbTS+bkZ9e/doFkQfAZOsNYf7J+dqmAls8BjBOz2q3DJDeXxG6ic+QKRRZjxDTTcLGse2w3RXKHm6c5dJ96JqdXQsLsvPyAvBxvz6LRCRAcU2lv847uYmvL2/qqDJZhGzSEPtVorz/KDG0zpW4JYMUOrla9jUhHMefEwdNaFsAlisg8Ypb8S4hXJQn23rQIzeyKG43qHEvng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xUnpjLOX1Ad8eMSmossQiy9RCs/SDz/2u2OyUNl8GyE=;
 b=bXPCR4DGs5jxcfqiFwEt37fMlptVZvQ1Y466YgWuh2Ya8OTdyAnA+1hwI8NS1lRpoK7xizR9WeStlMLDA6xZA7BFbd10gI5hyWaV/8vWpfk8V6bNCQYEgNYxBuF7MbdS1/ckKnqIKMOhGtf3kdeG+1m2ncv1VShc7n8VZ06R2bd0KLr3Vc8T35yZ6gT+dpI+ebr6bDe+idWRfDrVztCEEv/RCuXUQ+jnlT4iGP73CN1E/rJ+7CTqelnjXtFmkLAkhQ3bkggnGOg30UoZTB+CSTU/l1vmkUPT2BicNN6l49oslNXiTLlgw5gPGMzDIuvi8ycuy6GdRLkGOAfaDQ7d6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CH3PR11MB7324.namprd11.prod.outlook.com (2603:10b6:610:14f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.30; Wed, 12 Apr
 2023 21:33:11 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6222:859a:41a7:e55b]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6222:859a:41a7:e55b%2]) with mapi id 15.20.6298.030; Wed, 12 Apr 2023
 21:33:11 +0000
Message-ID: <22a6ab36-2efb-eccf-b4b0-333c50515183@intel.com>
Date: Wed, 12 Apr 2023 14:33:15 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20230412133811.2518336-1-arkadiusz.kubalewski@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230412133811.2518336-1-arkadiusz.kubalewski@intel.com>
X-ClientProxiedBy: BYAPR07CA0004.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::17) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CH3PR11MB7324:EE_
X-MS-Office365-Filtering-Correlation-Id: ac687628-099c-451d-f579-08db3b9d83c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6wfkh2qYYn5ZLFQ6l4Nd0Hy91qltOiGTS0StWLIbw2412iuzeXwDpCQLdTwIUssIpXOyN4XpIXFK3bAku3Awuut3WVKpDNp94HmVwuY5/k20bvHUOoA8jHpPYCkVYgxmi0uDckFhHDxV9QcUxGkP3ze0JcunOyu0DbEtdVIR9PoNPYyrqBFMpFMYj1GPS3E+q8KGtfT6tgxKBvT9yUI16N9apvZP9sAshLfrD4pewqUn1SsRvfTISIEr2DzjxEV9RcYN4Iy+i3luEkNx/saMGZy5dhplaA2s2BGLQRKWpEaA1v3P5Y/rwsArHeLtnilKy4l64ORCkK4pj03BB5DxS2zAl7tEpNDr5eTt/eJDF3XOr4p4XU33msgZ1PIqH+N++FweOcmp7GBpiZrcCUK6UeizMA9knQBSrOSd4bDT7iNtr7V2bglmYSvaduq7eoIHrFTl7HoHnl7JHEKfPDxNYDX6E6/Prbq9ijnzktFLp8vq8q+OAWqlckfrDbpJ/FqIhKfcZymG+AZy9uyH33/2+9lb1atAx37uarcoM0vk/AT2oyo40J/Oww4bjI2nYqf+z//xbMOaFTnFwZ0V4fcxhfZHrSwv2/T73qXpNe3UXl/l2rsBxRFiUaA0iQLMawEdVoEt2Y5i6RoirQ8/dmunDw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(346002)(396003)(366004)(39860400002)(451199021)(36756003)(31686004)(86362001)(31696002)(478600001)(316002)(41300700001)(66476007)(6916009)(6486002)(66556008)(66946007)(8676002)(5660300002)(8936002)(2906002)(186003)(38100700002)(82960400001)(53546011)(6506007)(6512007)(26005)(2616005)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eTJjbFdjWVhoMitsWTh4VlY0OG52QzdlMkFrdUw3RFVzM2dmV0l0cEt5OWpJ?=
 =?utf-8?B?THl5OGhVVkh2WEJ1T0p4OS9iMVI5VzE3Q3Zzckppck9STmZ5QVpGOGZObzJO?=
 =?utf-8?B?KzBuVnhDOVNUR2VnMGlwLzhsbVJoU0lNMXZYL2RMTUQ4ZXNjeURHNlRjTmNH?=
 =?utf-8?B?NmZ0VXRjeFhyZDBtbDZEeXc3NjFxT3BHNi82M1ZHU25wWDhaU3U3WTFiUEll?=
 =?utf-8?B?bXlYNTdtVkFwcHRFQVVPMk5NSmpDWTdRMmtnalFGcG5SMTlYeExnQmZFVGxV?=
 =?utf-8?B?OFJlVFdSZG5BSElTQlJzcDVGdnROcGduS1JscGhsdHhaeWRHTk42MzlZbVZE?=
 =?utf-8?B?WndCVFF4dkdBalFXdnFYYndEdm9NS253NHpHNk1FajJIODRpT1dOUEt3SHNa?=
 =?utf-8?B?NnZmNHA3VnZBZ08rVm90VmxzREZENk50ekRXbVZVN3BrNDl0OHZXRVlKRWFR?=
 =?utf-8?B?anJRTDVkTitzcVJLM3Mybk5zNE0vVWltRGhoTlNpZUtkV2pGamQybUl3T2pN?=
 =?utf-8?B?M0tldWJVZFQxWUNaN3MzQU5UZUJiMnJZVnhNSGk4MFNQTzYzbVNJODJZRFJP?=
 =?utf-8?B?SDJ0cHQrVElJQzRjNXBQNmxkdzFBTUFVQnA2QWxuZXlEWmdqbnNnSnpzK08z?=
 =?utf-8?B?TG9ldHF4SDNMSHRDQk93RnBHYVY3a2srbUYya21SSTBwcTFYbDRhUkxiTjJU?=
 =?utf-8?B?eDBtRWp1WFJ5UDRxK3FsOWhnSTBSNWRSVjVmWkRpQ2wwNTZOUE1wNDhLd1k0?=
 =?utf-8?B?ZXBYeG1lNGo5RTczNzNBU1psYU9ZQU15K3Y0aWlrZ0V3eUZxRTZXNGsrQmZJ?=
 =?utf-8?B?S1pKUURMNmhMWE1uYmhCd3U4MThDKzRpclJ6VEZkeUdqWGVubUp0Y1FNeXNB?=
 =?utf-8?B?Z2wvSVRNY2ptVERRd3JGQ1JZSkM4QmljQmNVUUp0YndoeXhJK09LYmQzN3pC?=
 =?utf-8?B?WGVmdUw1SkxkWTBBSFFrdlB1dng1VDF5SndxU25zLzh5VGM1bEUrZWV2NXNr?=
 =?utf-8?B?ZkRiTitERW9qOC9CSlNlcjloSWlmREZMZDNhOWhyQ1BRRVpMbkJnd0dDL21F?=
 =?utf-8?B?dEpWdEpuS2ZRZVYzcCtMdjZPMEJGbkZBQWZqcXJONDcwSEdYR3FveWtOdWJk?=
 =?utf-8?B?Y3NpNzV2YXFhclRINTNFRTZwKzhNL2lwaWd4aGRIZDUxRCtmbkI3NXVvc0U0?=
 =?utf-8?B?T3l5UkJDZWxJUVIxSzZuektpOUUvQUpXZTBtZVFNTkMxT3piK0ZCZDd2QWVH?=
 =?utf-8?B?cWFtbWlodFZLRm0ybGNMWWNsNGVZcVhXZ0h3a2Q4WG93dE9GMFpUM25Za2x5?=
 =?utf-8?B?UXpMSnJGM3NJYllRd2RxSS9aZ2tJVlZJQlpiRmYrbDJkdmRoLzg1Y0lsV21y?=
 =?utf-8?B?SzZzN1U2QzBER28velk2ZkhrQ1JTcTBmdHJJTCtxU05GTm9TWDAzQW5YNHRu?=
 =?utf-8?B?aXdEMmxZSkNieU1yQVpGakZHekpmeUZHNnV6RGdPYmRQeHljb2JTZWF3MmRD?=
 =?utf-8?B?SHZ2NFZ6WmJWMi9wT3hKcWZqVlp4S0NCK05mWDhpY1hFRGxyTmJpRGJvQmpF?=
 =?utf-8?B?bUsrQzlaQ2l0U2NFOTV2TGdPRmpZZVhmT3ZIaUs1YitmOGhEdmZ5RXZRZXA1?=
 =?utf-8?B?cmwyN0xERzAySXJLbmRzcEoraVpBc0tBN25oNFNsaUFId2J6TzNkMEZLemhj?=
 =?utf-8?B?eWRwT3g0citrY3MveEZjZlNtZ1MzNEFGRVVYWFQzTjAyVHR3MnZCV0k5TFM1?=
 =?utf-8?B?WCtPa1BKalk1YWFVUlc3bDRma0NYR1VTQmxPODVzTlpyZmNHRy9oVXlTK2hp?=
 =?utf-8?B?L3pBRitJaEJaamIyM0IyYlBhUjdzZ2E3MHByL0lkcnhFRnlDbkdEYlVXcnh5?=
 =?utf-8?B?aW1KYXdBaGxzU3p4ZVR6NndiS3hneTdzS3JzYjJKenIvRkxEZ0NKTU1xdHBj?=
 =?utf-8?B?WW10cTJZdjczUlJvMHFoQ01pZWF4cnY2Y2hJQ05xZDVHYTV6UnpkWHNkdGV3?=
 =?utf-8?B?SDRBY09rUHpmQkt4NWFxOTErbnJBOW8vNlBMeDNEbmdmVXRCbi8vVnZpd1Rr?=
 =?utf-8?B?L2lsa1laTENuVmdiQ09MSEVFVFJWd012Q25iblVWRlpmNDd2MThxbktHa3I4?=
 =?utf-8?B?TmhrbGpsUVBoVHdLWkloYW92MzlaSzdrVW4ydG9pdGNsbXZucGdDRCtBOXd5?=
 =?utf-8?B?eVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ac687628-099c-451d-f579-08db3b9d83c9
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2023 21:33:11.2014 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PVV4JpPPxA+heHfundZyvrkW9vDPwNv4rTcWDwYxaZf6BzPTGo0d58CDvkp1KHfuZXWasoXwR1qbC2Z85HQwX1D4D1SuaeROrRIiDFICyfk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7324
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681335195; x=1712871195;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=rdD0vRJlPB4j0NtuN0exKj/H6A5VdrpC32CFyGSoFak=;
 b=fRibeClSQ7rpPcBANYKRn8yKy3bk2u30KXEGJfpdvDPfx3YjSWE1k1L+
 gqrxW6ngprJ28uNyOu1+MYT6yk4jZQ4jesEA74nesCIiQ1y6L6ce1H9Zn
 s5jgyhLMiXQDRNwUnJ3VfS9um+uo+N3qKcjcoOBWEJZn8cq5DQoWI86Rk
 bn5kgq3QqfQswtDlm03TntqpfkcVQKLR70fwRcBSu6MlY37xlTZBUB1EK
 g1ksvzfdwy2/22RU0qnz9Jl2lbWta1qWKQU304jo8i+mu79vnreFBNUuf
 XE4lcBfnseZ3XymPCl2p+Y71NeYWXgGrohJOSMyVkS3BD0xYWJcWJwT7A
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fRibeClS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH v1] ice: add CGU info to devlink
 info callback
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/12/2023 6:38 AM, Arkadiusz Kubalewski wrote:
> If Clock Generation Unit and dplls are present on NIC board user shall
> know its details.
> Provide the devlink info callback with a new:
> - fixed type object `cgu.id` - hardware variant of onboard CGU
> - running type object `fw.cgu` - CGU firmware version
> - running type object `fw.cgu.build` - CGU configuration build version
> 
> These information shall be known for debugging purposes.
> 
> Test (on NIC board with CGU)
> $ devlink dev info <bus_name>/<dev_name> | grep cgu
>         cgu.id 8032
>         fw.cgu 6021
>         fw.cgu.build 0x1030001
> 
> Test (on NIC board without CGU)
> $ devlink dev info <bus_name>/<dev_name> | grep cgu -c
> 0
> 
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  Documentation/networking/devlink/ice.rst     | 14 +++++++++
>  drivers/net/ethernet/intel/ice/ice_devlink.c | 30 ++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_main.c    |  5 +++-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c  | 12 ++++----
>  drivers/net/ethernet/intel/ice/ice_type.h    |  9 +++++-
>  5 files changed, 62 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
> index 10f282c2117c..3a54421c503d 100644
> --- a/Documentation/networking/devlink/ice.rst
> +++ b/Documentation/networking/devlink/ice.rst
> @@ -23,6 +23,11 @@ The ``ice`` driver reports the following versions
>        - fixed
>        - K65390-000
>        - The Product Board Assembly (PBA) identifier of the board.
> +    * - ``cgu.id``
> +      - fixed
> +      - 8032
> +      - The Clock Generation Unit (CGU) hardware version identifier on the
> +        board.
>      * - ``fw.mgmt``
>        - running
>        - 2.1.7
> @@ -89,6 +94,15 @@ The ``ice`` driver reports the following versions
>        - running
>        - 0xee16ced7
>        - The first 4 bytes of the hash of the netlist module contents.
> +    * - ``fw.cgu``
> +      - running
> +      - 6021
> +      - Version of Clock Generation Unit (CGU) firmware.
> +    * - ``fw.cgu.build``
> +      - running
> +      - 0x1030001
> +      - Version of Clock Generation Unit (CGU) firmware configuration build.
> +
>  
>  Flash Update
>  ============
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index bc44cc220818..06fe895739af 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -193,6 +193,33 @@ ice_info_pending_netlist_build(struct ice_pf __always_unused *pf,
>  		snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", netlist->hash);
>  }
>  
> +static void ice_info_cgu_id(struct ice_pf *pf, struct ice_info_ctx *ctx)
> +{
> +	if (ice_is_feature_supported(pf, ICE_F_CGU)) {
> +		struct ice_hw *hw = &pf->hw;
> +
> +		snprintf(ctx->buf, sizeof(ctx->buf), "%u", hw->cgu.id);
> +	}
> +}
> +
> +static void ice_info_cgu_fw_version(struct ice_pf *pf, struct ice_info_ctx *ctx)
> +{
> +	if (ice_is_feature_supported(pf, ICE_F_CGU)) {
> +		struct ice_hw *hw = &pf->hw;
> +
> +		snprintf(ctx->buf, sizeof(ctx->buf), "%u", hw->cgu.fw_ver);
> +	}
> +}
> +
> +static void ice_info_cgu_fw_build(struct ice_pf *pf, struct ice_info_ctx *ctx)
> +{
> +	if (ice_is_feature_supported(pf, ICE_F_CGU)) {
> +		struct ice_hw *hw = &pf->hw;
> +
> +		snprintf(ctx->buf, sizeof(ctx->buf), "0x%x", hw->cgu.cfg_ver);
> +	}
> +}
> +

Can the CGU values change while the driver is loaded? (i.e. after a
firmware update? Does this come as part of the normal firmware block or
is it something we have to update separately?

Perhaps we want to extract them as part of our preparatory work in the
info get handler rather than reading from hw struct.

Either way, overall the driver code looks ok. I don't have strong
opinions on the naming in devlink info, but I know other folks on the
list do.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

>  #define fixed(key, getter) { ICE_VERSION_FIXED, key, getter, NULL }
>  #define running(key, getter) { ICE_VERSION_RUNNING, key, getter, NULL }
>  #define stored(key, getter, fallback) { ICE_VERSION_STORED, key, getter, fallback }
> @@ -224,6 +251,7 @@ static const struct ice_devlink_version {
>  	void (*fallback)(struct ice_pf *pf, struct ice_info_ctx *ctx);
>  } ice_devlink_versions[] = {
>  	fixed(DEVLINK_INFO_VERSION_GENERIC_BOARD_ID, ice_info_pba),
> +	fixed("cgu.id", ice_info_cgu_id),
>  	running(DEVLINK_INFO_VERSION_GENERIC_FW_MGMT, ice_info_fw_mgmt),
>  	running("fw.mgmt.api", ice_info_fw_api),
>  	running("fw.mgmt.build", ice_info_fw_build),
> @@ -235,6 +263,8 @@ static const struct ice_devlink_version {
>  	running("fw.app.bundle_id", ice_info_ddp_pkg_bundle_id),
>  	combined("fw.netlist", ice_info_netlist_ver, ice_info_pending_netlist_ver),
>  	combined("fw.netlist.build", ice_info_netlist_build, ice_info_pending_netlist_build),
> +	running("fw.cgu", ice_info_cgu_fw_version),
> +	running("fw.cgu.build", ice_info_cgu_fw_build),
>  };
>  
>  /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 6b28b95a7254..a3adc03bdd0a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -4822,8 +4822,11 @@ static void ice_init_features(struct ice_pf *pf)
>  		ice_gnss_init(pf);
>  
>  	if (ice_is_feature_supported(pf, ICE_F_CGU) ||
> -	    ice_is_feature_supported(pf, ICE_F_PHY_RCLK))
> +	    ice_is_feature_supported(pf, ICE_F_PHY_RCLK)) {
> +		ice_aq_get_cgu_info(&pf->hw, &pf->hw.cgu.id,
> +				    &pf->hw.cgu.cfg_ver, &pf->hw.cgu.fw_ver);
>  		ice_dpll_init(pf);
> +	}
>  
>  	/* Note: Flow director init failure is non-fatal to load */
>  	if (ice_init_fdir(pf))
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index 39b692945f73..90c1cc1e4401 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -3481,13 +3481,13 @@ bool ice_is_cgu_present(struct ice_hw *hw)
>  	if (!ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
>  				   ICE_ACQ_GET_LINK_TOPO_NODE_NR_ZL30632_80032,
>  				   NULL)) {
> -		hw->cgu_part_number = ICE_ACQ_GET_LINK_TOPO_NODE_NR_ZL30632_80032;
> +		hw->cgu.part_number = ICE_ACQ_GET_LINK_TOPO_NODE_NR_ZL30632_80032;
>  		return true;
>  	} else if (!ice_find_netlist_node(hw,
>  					  ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
>  					  ICE_ACQ_GET_LINK_TOPO_NODE_NR_SI5383_5384,
>  					  NULL)) {
> -		hw->cgu_part_number = ICE_ACQ_GET_LINK_TOPO_NODE_NR_SI5383_5384;
> +		hw->cgu.part_number = ICE_ACQ_GET_LINK_TOPO_NODE_NR_SI5383_5384;
>  		return true;
>  	}
>  
> @@ -3507,7 +3507,7 @@ ice_cgu_get_pin_desc_e823(struct ice_hw *hw, bool input, int *size)
>  {
>  	static const struct ice_cgu_pin_desc *t;
>  
> -	if (hw->cgu_part_number ==
> +	if (hw->cgu.part_number ==
>  	    ICE_ACQ_GET_LINK_TOPO_NODE_NR_ZL30632_80032) {
>  		if (input) {
>  			t = ice_e823_zl_cgu_inputs;
> @@ -3516,7 +3516,7 @@ ice_cgu_get_pin_desc_e823(struct ice_hw *hw, bool input, int *size)
>  			t = ice_e823_zl_cgu_outputs;
>  			*size = ARRAY_SIZE(ice_e823_zl_cgu_outputs);
>  		}
> -	} else if (hw->cgu_part_number ==
> +	} else if (hw->cgu.part_number ==
>  		   ICE_ACQ_GET_LINK_TOPO_NODE_NR_SI5383_5384) {
>  		if (input) {
>  			t = ice_e823_si_cgu_inputs;
> @@ -3778,10 +3778,10 @@ int ice_get_cgu_rclk_pin_info(struct ice_hw *hw, u8 *base_idx, u8 *pin_num)
>  	case ICE_DEV_ID_E823C_SGMII:
>  		*pin_num = ICE_E822_RCLK_PINS_NUM;
>  		ret = 0;
> -		if (hw->cgu_part_number ==
> +		if (hw->cgu.part_number ==
>  		    ICE_ACQ_GET_LINK_TOPO_NODE_NR_ZL30632_80032)
>  			*base_idx = ZL_REF1P;
> -		else if (hw->cgu_part_number ==
> +		else if (hw->cgu.part_number ==
>  			 ICE_ACQ_GET_LINK_TOPO_NODE_NR_SI5383_5384)
>  			*base_idx = SI_REF1P;
>  		else
> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
> index 128bc4d326f9..814166d959ee 100644
> --- a/drivers/net/ethernet/intel/ice/ice_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> @@ -820,6 +820,13 @@ struct ice_mbx_data {
>  	u16 async_watermark_val;
>  };
>  
> +struct ice_cgu_info {
> +	u32 id;
> +	u32 cfg_ver;
> +	u32 fw_ver;
> +	u8 part_number;
> +};
> +
>  /* Port hardware description */
>  struct ice_hw {
>  	u8 __iomem *hw_addr;
> @@ -963,7 +970,7 @@ struct ice_hw {
>  	DECLARE_BITMAP(hw_ptype, ICE_FLOW_PTYPE_MAX);
>  	u8 dvm_ena;
>  	u16 io_expander_handle;
> -	u8 cgu_part_number;
> +	struct ice_cgu_info cgu;
>  };
>  
>  /* Statistics collected by each port, VSI, VEB, and S-channel */
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
