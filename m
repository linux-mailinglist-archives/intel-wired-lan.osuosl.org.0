Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 008207723B6
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 14:21:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4FB37405D2;
	Mon,  7 Aug 2023 12:20:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4FB37405D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691410859;
	bh=r/8I+m0YAhOB+1/nFQZXgoGlTFfyinE8BYQi4Gm1z1c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=X1AYZ6cq31zE3t0dDqUIGmi4enOjn+LlHbaB1AvhgmU591m5QfD85CQvZBOdbdq40
	 +0Cm5cBfxQbg27MjvSlsFyIcX5LYZU/SkqQRyAKFnSQG6gPbYm5UyHAvqS8yaeonyV
	 PZRLitQRBzRIxddUlm2X1lkZz9CYI2S+wjsNTCnmvAD57UH1M39FNqUN5hX44dTgBR
	 nSaT/c+rtQPMtj8ikFGX3Z2WaHIgTcogSpusFP7bjKg7NM9zEEu1FMlzVi0qxYRNYq
	 7Eb6Ky4Xg0hVL8PkhAfU9YE2/FecVr7xjYxgrolOgamZUjSUQ27vkn+4BjoIWNFevF
	 8qsFnP+NAuZZg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M1jIk1oiDfxV; Mon,  7 Aug 2023 12:20:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D22BE40640;
	Mon,  7 Aug 2023 12:20:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D22BE40640
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4D38B1BF35C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 12:20:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B26CB4097F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 12:20:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B26CB4097F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qkYgKKT2xM0z for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 12:20:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7BAAD40979
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 12:20:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7BAAD40979
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="436859185"
X-IronPort-AV: E=Sophos;i="6.01,261,1684825200"; d="scan'208";a="436859185"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 05:20:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="707850937"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="707850937"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 07 Aug 2023 05:20:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 7 Aug 2023 05:20:36 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 7 Aug 2023 05:20:36 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 7 Aug 2023 05:20:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H1/bHtMBctRigqdVcsz6250kXvusBZHOMzZwQRc/vGH4NcE+odptmR/7wwpNnQUZUvzeoo/TRyUO5J87kQl5RTxEv1XLTKKA5O9nQivxlXgw/3Ig5qms/gNrMmoteACs4bQsftgthzuBxc3bXAtsZ5a/Xkde9dxFv00SsXJJ0KXF/JWCmGIQ1vIIV3b8knRd5pYJMNWqnRyBbNe99h2ig1HYTElWYB/AKcqHx5T/19rUqelp0xe5k/XNZryO/SbTRmLv6bifiVuJLv9JX/+unc6OB85uxgg4qn9+Ejqfcl7wKKmII2Cw3OeYJSrMqr3YsL9InzsesEwto6o2ZxM5xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fKhbO7XeOFnX0QBpain6ivwfVmD39M+cos1mNG2QVKA=;
 b=HDa7AGspGTd3M7OE6jEN/IX6keglWwZDVf6RM0PNABQ9+8eNW89UiCk5M1dkdIVI9h8Ys0wRWX1RYRsEYpRdN/FFKLAV+GdzFpKjEOOUF3sdir2sGBIJhNlbS0hjkE7EyPGsgk8Yf6fhhEFeNVgDHUGCXk6YPDlCevxTOcjWjLo8r21Twwjebwa0xuD6/ZMZLVXULlKe0fwGlwyjm9Bz6wxXdvpQpHtMYdAupp1b1uHn9xfkSRkTF0VeQjw6frWmUch5rHn0ft2N0cXBe7FRSlZacSD6EXe+IC1WKOTgotxEFhrWdP2/HIztlPWl44vDImLpOVM0X3W7bRVzfSiHog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by DS0PR11MB7970.namprd11.prod.outlook.com (2603:10b6:8:121::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.26; Mon, 7 Aug
 2023 12:20:32 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7ed4:d535:7f41:de71]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7ed4:d535:7f41:de71%6]) with mapi id 15.20.6652.026; Mon, 7 Aug 2023
 12:20:31 +0000
Message-ID: <0ad6c79b-6876-9ef6-7892-06b55544dc96@intel.com>
Date: Mon, 7 Aug 2023 14:20:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230807103624.468230-1-karol.kolacinski@intel.com>
 <20230807103624.468230-10-karol.kolacinski@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230807103624.468230-10-karol.kolacinski@intel.com>
X-ClientProxiedBy: FR3P281CA0205.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a5::17) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|DS0PR11MB7970:EE_
X-MS-Office365-Filtering-Correlation-Id: f52da804-641b-428f-c910-08db9740b168
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iRtCLGXK1qt4XNGJQyavnMpqhtW9o5PIXxqVTuvc+zFDwPn/ObiFWsoSSUnnkJKNnEN7UgvBVLbjCTbi3h488wvL6QtlQQRlDIkN30Gprh+uhlgmCEuIodwYj6RZLGD3t0HwIIeWp0RpDEcFqpJJynEP2eApYTS8SpGC4nLH0TfWHiMXNYr8AugMOtz9P876VoWzlELTSR333Z9xXsVmu8ZHn1QxqG6+5FA6tZbJcESm2yAQkx5HSB8NQq0yzTYNY/JIvKGCF+gtEHBWAq7N8BoD8FCg5qFoS6Y5Y5qeWeJBYUHDZNsX/sQazw5yM/NdiIObu1b8vhJ/YQvfTUpanrB69AafLEsKYfUQYeqBrkZ1/QGRcARqDH1FcRguj/POj+WDdmMBdT34JhdKI01LP/vR7KVCfpdgfHhsvWGnlgMN/nEC0nFnlJErhGIzGEtftMECqKnjduzU/F3c3s3jFkyn7tKUWIE4KhvbUWsLeUkIdqktKJ9e5JVyHfnJ7nYMnRDf+EV/u6Gw5bLG8ztiRRRpLDNcd2f1f/6Ve5amybnYcmfjXI2/2fb+OpBJntpoGiOT8J3RJnS2WbwfVyLfvBkpQs4V6mG+BpptDR9pdVtyz2H1mrHLklZX85Si28t+R3BJS5Ix8t8+D4dnF0TW2Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(136003)(346002)(376002)(366004)(451199021)(186006)(1800799003)(2616005)(36756003)(6512007)(316002)(86362001)(478600001)(38100700002)(6666004)(66946007)(6486002)(66556008)(66476007)(31696002)(53546011)(6506007)(82960400001)(41300700001)(26005)(8676002)(8936002)(2906002)(83380400001)(5660300002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?azNhWEJTZVVuSWhWMzFvTDk3QXJuekRaUXBnQ25EdHZQeFN0RXNxMC91K29F?=
 =?utf-8?B?WUdUZEtkVDVYL09aMW1tTjNOM0dsN0VwcjEzenhKNVhPYXNPbktHeWpsWElP?=
 =?utf-8?B?QThqdUc0ZHd3eDI4T0M0VVVSbTdNdjhJRys2WmNtcTRmbXQ5b3FjZ1hLdTdr?=
 =?utf-8?B?UVZxOVJaYWdhckI5ZllJcVRtYmI2NGIwZXNuNVFneXkxWUd0YUFrcVJRTFcz?=
 =?utf-8?B?cEtpOENJZTJqSHlHZGJLTno5eXdNZ3AyYmxkU1VzWDFaNUV0V3J1aGVnbDk2?=
 =?utf-8?B?RDVLQTZiNGVCNmd6eGNWRlJGTlJFdldTc1NkSGhnTFEyVWpUaHhtNXlVaWc3?=
 =?utf-8?B?RjVJNVRuQ0VZcUVGMWxuM2hUb2xhZkpIemVheERURlZyTS9yYVRTbStObElj?=
 =?utf-8?B?U0dWS2hHK1lTZzQ4bk5BV2tjU0lkVVVqVldCaEJvZ3AyS2Zzc1p5U1dkbkpS?=
 =?utf-8?B?RTVDRWlyZkZ2MHVJL3VjVE1odXluVTAyOWJjL0ZlejF1OVdmL3BvYVJtWlJV?=
 =?utf-8?B?bFQyRWtKOWREaEtLczhtYTI3TGFhbHhJeElxTlVyRXV6NjU0NnNJTVBxZWRz?=
 =?utf-8?B?L1h6alhXS0VTRGlVQXBFK0lwSEtqRTVpbzZXQnI0YlMyVzA5aGEwVVNSbjRo?=
 =?utf-8?B?bGg1R1lOU3BqU2tLcFNhVmlrVFdaNjM2N09DYjdyZnZycFB2T3JkUjBXMXlx?=
 =?utf-8?B?TVNESVF3cWxBSm1VU05GVlJ3TmpwVG1Wb3UrbTlESGhETHlhQ3hQTlNkamRH?=
 =?utf-8?B?TjdCQ1AyRkFTcEZLaHBaTHlYU2tZMUNQWGk1K1dHUjEyWmt5MzFhNGdCcXlp?=
 =?utf-8?B?QkJSenZMN0o5bGhnd3JXcy9yQ09ja3NUWkRYSEQzNmdXdkNaR3RRd2YvWDdJ?=
 =?utf-8?B?MERsZEQzMnJsTzNPOUxmZmttTmg5aitzbzFBc2xTTW5va2hadHE0NGhKdERV?=
 =?utf-8?B?d0JXSmYwVTNpNEt4eUVnVU1VUjRHemJJc3JXNHpnaGdSQnB3UDJrbmQzZEN4?=
 =?utf-8?B?R0dRNFdXRk5oSEhhOFM5Wkc0QnBTQ1p3ck9ZdEZOd3VEMGl2WmFQZXNuZFEw?=
 =?utf-8?B?QWNIYlpZZXU1TjAwOXBSQlVURkM2WmdWWGtpY1hkeEJMUGFyMVZBUmt5YjYr?=
 =?utf-8?B?NE1RaVNpbDk1UnFNNHZnU01yTnZlZE5id20yQjlTYnUvN0FCZnozaVBUM28v?=
 =?utf-8?B?S1BYN0JWOGJXR1ViOEtXd1d0cmt0SXVLSy9WUWZXdUtaZWlhSERxYzJocnJo?=
 =?utf-8?B?MU5JTmpvclI4NE10TjJDN3MzcTJTMmpEdlZnRkI0Y3p4VFFMdUFKbWhDNjVs?=
 =?utf-8?B?NzlZQTlVZE5SMGE3UndSdFlmNjExYzNvdmt1NFNQMmdmSGl2T2QvV0oyR1Ey?=
 =?utf-8?B?Rk9NZzVMdHVqanltU2NxYTByMm54eG9IZXRYUCtwMHpQdGlKYjVjREpvNTZk?=
 =?utf-8?B?K3kyT2E4YVVJZE1ubmJTdHlPNkNRUnhQOEJKbUR0TFdEb1hGdlVJL0Z3aEhP?=
 =?utf-8?B?K256R1VRV0FodHBKYXUxcXZSMXhwcVAyekl1dlk5Ylgxa2hkNGJ2YnVMNjFR?=
 =?utf-8?B?RWpsTUVxKzhVRnJOVGNpVXhSZ3lPUlJ3SGJtWENHaWJKeU1yNWV3TzVBR2Jx?=
 =?utf-8?B?bUtEWU1kb1JxSHl5SUtLZnVqTTV6L3ZPRWIvQ1AxZmxHWitReExtYm1OSm1F?=
 =?utf-8?B?bjVLT2VaeHU1K1hJUFdld3IveDhsY3VxK09mbVVvZUdpRHlLNEQrWWxmTm8v?=
 =?utf-8?B?YnROTUhZRHlHcStqOTl5SzZuZ3NxMnJNdmJDWUtoOUtwOEd1TnQxUlZKZXpo?=
 =?utf-8?B?dU1KazBxeVdZNGFiRVljOFJXWHJEdUZOVzZhKzJGNGhZSndzc3EzcVBSWlZ0?=
 =?utf-8?B?aC8wL1ZQcmE3MEFmeVV6TzhNVmdhTU1ianRJR3F3Tlg1NjdEc2NzWjl1SXhP?=
 =?utf-8?B?dWp3RXZuRjd1YklBZGhXRkpoUEM5Rk9ubU01T0pieVR1eGxLcEdEOGhaNnVm?=
 =?utf-8?B?MUpCOGVOL1BTVVMrZkliQlltS1VSOFVmbnYxaGhwS21lWkYzRGZTV0c3bWZp?=
 =?utf-8?B?MlNWeGttU2crYTRGT3JkTi9MRXY4RlczUXJYcVFtNm9LYmN4dHRqNWlKYjNz?=
 =?utf-8?B?K2Q2SUhWSU5sYWk1dktka3ZPZkY0MVdaelloMGRnbjBXcjl4UDZBTDRDWThU?=
 =?utf-8?B?eXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f52da804-641b-428f-c910-08db9740b168
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2023 12:20:31.6062 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yGSH/mESymNsJQDDT7enYSJJAfQdo/hE1Z7Deuq6SxjWrdpQc6U/d87XMkmSrAf10D5xGgpGUpNx82Cbm1agZjva4OFxbwkxLbhmQFYb0NA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7970
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691410839; x=1722946839;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DbQlz6RP8Uy6acG0Yw/LlBdxxN6XZo/b9KXpUKLaHEA=;
 b=Z0zJd0kK1AtgjpIBf1ExfBOEK8evKWwrMbn6lEVbtlw6lSNydlY4M7Ds
 KAXmDBJ3WM4FVn4G6FOwKGNWQ2G+2gitiNthRyOw5dyYUrkvzSwj70M6Q
 9s8SOZZjUssHC5iu5PcgazqmURWn7u2A+Z3TUKFgn0xD4q7wUeOrH4uul
 c6uzNAYLykPFcGr8GdyWfxXx1WILt73oPjVjv2UJ4EvBSv8ziJBFHcnlc
 SaSkncmLDT64nmxfbHt1pk1KFpSfbamrQgLLEI8iblLBJafAA7GZ/pm8h
 98L/x8+eO+io9MYjSQb0/kIJP5j+vZvqWABdNZTCrDV1N7rvlfvrc3zmj
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z0zJd0kK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 9/9] ice: stop destroying and
 reinitalizing Tx tracker during reset
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

On 8/7/23 12:36, Karol Kolacinski wrote:
> The ice driver currently attempts to destroy and re-initialize the Tx
> timestamp tracker during the reset flow. The release of the Tx tracker
> only happened during CORE reset or GLOBAL reset. The ice_ptp_rebuild()
> function always calls the ice_ptp_init_tx function which will allocate
> a new tracker data structure, resulting in memory leaks during PF reset.
> 
> Certainly the driver should not be allocating a new tracker without
> removing the old tracker data, as this results in a memory leak.
> Additionally, there's no reason to remove the tracker memory during a
> reset. Remove this logic from the reset and rebuild flow. Instead of
> releasing the Tx tracker, flush outstanding timestamps just before we
> reset the PHY timestamp block in ice_ptp_cfg_phy_interrupt().

Looks like you are missing some part of this patch or it went into other 
(perhaps 4/9, ice_ptp_flush_all_tx_tracker)

Anyway, either fix wording here or bring it back here.

> 
> Change-type: ImplementationChange

Haha, sure :)

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ptp.c | 12 ------------
>   1 file changed, 12 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 5dc0c9a27180..d10c43f9266b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -2629,18 +2629,6 @@ void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
>   	if (ice_pf_src_tmr_owned(pf) && reset_type != ICE_RESET_PFR)
>   		ice_ptp_rebuild_owner(pf);
>   
> -	/* Init Tx structures */
> -	if (ice_is_e810(&pf->hw)) {
> -		err = ice_ptp_init_tx_e810(pf, &ptp->port.tx);
> -	} else {
> -		kthread_init_delayed_work(&ptp->port.ov_work,
> -					  ice_ptp_wait_for_offsets);
> -		err = ice_ptp_init_tx_e822(pf, &ptp->port.tx,
> -					   ptp->port.port_num);
> -	}
> -	if (err)
> -		goto err;
> -
>   	ptp->state = ICE_PTP_READY;
>   
>   	/* Start periodic work going */

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
