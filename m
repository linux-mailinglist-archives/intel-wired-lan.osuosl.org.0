Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mPQyMY/s72mjKgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 01:09:03 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B12AD47BB73
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 01:09:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1FE57818D0;
	Mon, 27 Apr 2026 23:09:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bw1mEzsmy1kF; Mon, 27 Apr 2026 23:09:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 378CF81911
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777331340;
	bh=p6j9L0GQ2bBK4o0luKgiuaVpnsLhfDGvEpb4k7g/Rks=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a4N05Ge7TFriIIFrNycrfBnVDQtlUIJkT9031DeXak74eM6Cp/k24g+AyxEHiW130
	 xdYakhn0m3PDttMk5jRRFw3sEJ7JQKJh1co8IC3E5N0Kj3U/irlDuRjeWqxyT0nM6J
	 mZumDod+7+3j221XypjBdYreNcA4ADnxSqDEYy0Gdo2VySBmd9oYTWGZbL3p2uvw4Y
	 SWjLK49VEFuvgqG6+GSvzLxwCmacOnD8Rr1yn4VeNA3SRoKsVEehz0+bBxYAit5cLu
	 x+KUzLRY6LZWBHGgEd4ecVXebY9ccnyo2JJpvNgicZx2oK3TUiVLMs7on5afEWfZkQ
	 tpwQNuLPXsqKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 378CF81911;
	Mon, 27 Apr 2026 23:09:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id CDF221B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 23:08:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B364E818EC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 23:08:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yd4nVN6uj-zY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Apr 2026 23:08:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F0EEF818D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0EEF818D0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F0EEF818D0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 23:08:56 +0000 (UTC)
X-CSE-ConnectionGUID: EuueRhNWTj+jjAOQDTK8kw==
X-CSE-MsgGUID: AlcXHjI2Su2QfzCGgtMgXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="65763651"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="65763651"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 16:08:55 -0700
X-CSE-ConnectionGUID: jPwSBYzKT423punZH03/dw==
X-CSE-MsgGUID: 4yJQagHnQumQG5VUCdkSfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="257310942"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 16:08:56 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 16:08:55 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 27 Apr 2026 16:08:55 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.46)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 16:08:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mzW7C7k7YnGGWJIX1AqR2dxekOjmc6dB0bHAHDvXuY7EFuy5yu2IGoe3oJXP+tpZo9Q5EYhCvbNbZcYv0ajzbfF2p4SdIQNcdNvvry/TAEkxwlFALrIINbnAWHcvcsQ3f+/y3aDSRlDaN2pJEXjVv1BHHqaZqx+yW/PdJf7zxgALOtqCJeqvptmsRLokE9z16qNLFnAsOM2Vy7OghpkXx9ZjjhbB/Qlep31wnKqHTL5jxYpSHXWoz5lAB3KUf1lbyrtp1T3GGYJMgj2EsBwkY9sKE1vi2/Pck5Upd8dd1ky8TzimaewI9q4fnxMKfHfmZDUsqTeXxC1tOIGDeBGZMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p6j9L0GQ2bBK4o0luKgiuaVpnsLhfDGvEpb4k7g/Rks=;
 b=JSf/i66o9uAjqU5AUMv2yKISxboy4qYMBkEZNmCg4Sd6rIUhNQ40UYpZqhanmoIUkDWcTJdxds2oFBck6znSUJwsoHjfMCpIw7HmYKAMFGLPYe3tdK0lJE6eut09QPHmz2ce3iGs37ho7sUkM7S7CnNpmg/FgCmGiH7PzYv6sLY4ZODAnkjO9hqHM6UHgZTC0svd9Fs8cH9kCenD+RWzu/CWVwlY5IjsS5XCo/a2LypKG2II6cWkh78ojVUSrsSl9QJzh4MQbgBxco54o8KoEkvkbUC+RZBmlRYeKXfwrF8tXSWmOO00as/Nn1SU2d6y+mePiyB4lnJ7iI537DGY9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 PH7PR11MB5959.namprd11.prod.outlook.com (2603:10b6:510:1e2::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Mon, 27 Apr
 2026 23:08:42 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9870.016; Mon, 27 Apr 2026
 23:08:42 +0000
Message-ID: <1108c3d8-df01-4a6b-a616-87c5940d5e15@intel.com>
Date: Mon, 27 Apr 2026 16:08:39 -0700
User-Agent: Mozilla Thunderbird
To: Michal Schmidt <mschmidt@redhat.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
References: <20260427151827.43342-1-mschmidt@redhat.com>
 <IA3PR11MB898650A3226F812E881C1630E5362@IA3PR11MB8986.namprd11.prod.outlook.com>
 <CADEbmW0m_4p9XZZYWnX8RmYjtj1YtV2FRVygac1QH8iN8+FpGQ@mail.gmail.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <CADEbmW0m_4p9XZZYWnX8RmYjtj1YtV2FRVygac1QH8iN8+FpGQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR02CA0026.namprd02.prod.outlook.com
 (2603:10b6:303:16d::25) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|PH7PR11MB5959:EE_
X-MS-Office365-Filtering-Correlation-Id: 25978703-c1c1-4d66-c8b1-08dea4b1ecad
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: UdME7KfSGL/4uRPG7aTAYhv9YzKr4zdD6Dp0visd9EQuVrxTLHR6II5+VYrwehxt0G3uik813MvOYKSW804Eg8kBpUMGp1HI5kc5Q2BIv2d6JVh2GkEDPnMCJEK/zCGc2jlcKBxpHQtvnPhTkEoeHac6DCaf9HWjmv660k+/orSMIEzxnTcVur93ri9fiwwAOLfoYVlO/Vmb5kKXqLjzDGMVl2rnN9aW7yRYN8RHq7c17CykVz1WAoP5sij+xWaAG3tnhuze/TnzKm5ygvEkxszueYi2x2CEgv0010ddqnb4GRRMmoPFxYhPsl9YSzaqJitz7jw0nAQ3neKO1PKFd3uW26HuLJCTuujL2pc4P6eIXoiGFwn/8VOtzrxxRyvI9jsb32LBKXM7PhS4iq5/SPxxqqANC4aFYl6FUR6fOczAGj+TNN3oEBq7A5uXRq/nX0tb7JawHnMadVmLjRjayXotSKDOF6B4YvUyf4nt7WcbLw1x4b90fcSEe3755pEldrL9ebnrX3n1SuvqSytlynVbrrXL5IXrByBqcQJWgC4FQ6ShBQS+MTdRn0487J3B91T4KmB6W7fsLiPQyB2Oh7ZOfSENyqKh25LBZpeasMEypE0ejgzRDAbXZ7dfpUJ78VwcNaRWDcY9oCiPAdo7WxaCwMwdQ39akGA5mLcHv8rSBpShZqbraXEVzKZXALcnUxjXHHp6PaecsTLatfcwoC4FZzOiIl6yn2Q28X9E+hE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R0lTMnhleVdVTkhMYTdMbVlJUUhuUTVOU0FOVVR3UzJ4UVdsQjI1TzFjWlp3?=
 =?utf-8?B?dzNaTDgxQ0R2ZWRaZ21LbC9KanllSlhjdVVoMXlPM0pXaUdoWm5ISXdTYUxB?=
 =?utf-8?B?TkFoV1hZZVFxdnNoSy9HdzlvY0hQUnVNMFdUd3dVeE1tdGc2NXBZMU9EY1V1?=
 =?utf-8?B?RWNWOWtDZ2U0MXdkZy9ENG9Jc2ZLanEyem5PaCs5Nzd4b2pnUEZ0c2g1Q1Bw?=
 =?utf-8?B?Y01pZlNycW1xL3NzRHV3c1loQ2JVMWFjNnlWYTY5akFqb2VwUjdab0ZEQ1BQ?=
 =?utf-8?B?VXk3di9yR01EQlhpbjkyWEl4OHJLeU1tNE5RZ3IxMEdUZVJuT2VJL3dxdGZP?=
 =?utf-8?B?YVc5bEhFU21qYTV1ZVlqcHRDa0M5YW1mU3d3RVlOaVBUZ00yK2tQWTU3bVd6?=
 =?utf-8?B?alE0a0xzRE9wWFUyTFBmYVd6NGlDYjdLc2NPdFRWckhCRGNSTVlMMkJiZVkr?=
 =?utf-8?B?UFlJQllEa0ZWVUxqS3dBMVJTMlo2WkluQ2E2d2VJTnJoaVcreFZvM3V2R3VG?=
 =?utf-8?B?VDdRNThPV0trV24zVHhOeTdUcUFxRjAvM2NTd0tkRUNuOGRSUUc5MGUyVEQ0?=
 =?utf-8?B?Z0x3TDNPdUVLak9xUkZNOTFUTWM0c2Q3NW9MWnFiZUZpa2FYYXFNTWxhNE5y?=
 =?utf-8?B?dUxuRmxCNCs4NjZBbzMwcW93ejJ2N00wY1hEUVpYR3RUUGhRSVl2clJMNnVT?=
 =?utf-8?B?MG1Uams1UXFUUnBkclJiQVZ3aEd2cVFCeWJVZFZTbUpKRDNscHNENkF3d28y?=
 =?utf-8?B?eG5pVE15ZWFzOUVDQ0hkWGpVS3AxTWNoQVMrUms1K3BEdkV5Y2RLTlVabkts?=
 =?utf-8?B?QUVsQk9WTmxSUElnNEUwdjJBaUEwUEROb0RBZFdFVHVpdzVQSUZ0S0lnMXdl?=
 =?utf-8?B?VlJuSDFlbXR6WEVIK3p2ditZdVZyRTJjdFc1cjBybDRLd2lFOWxNS1VBa3BO?=
 =?utf-8?B?dENYODdGR1BvbjM3NjRlRGdiVXNmRzhnZUtsaTlYeU5hZlEyTzROV01WMUdT?=
 =?utf-8?B?bEN5MTJhK1hCaEFTS0dYOFRxdnNVZWwzWXhRVS9JWUFycFl1RU5DdWc2Z0Nk?=
 =?utf-8?B?UTl6dXJuSjY5bTUyd2JGWmJySStUTDExdmJkK3FtZ3I0djY0YnJ1aEt0WVpl?=
 =?utf-8?B?ajN3RkovcHhCaVZyUWFLQkZUTjZId1ZxeTR4VlZobW9QcXF6dVRMRW5iQk9S?=
 =?utf-8?B?VDhqYzU5QTc4UGNLd2NHcjhPdDExNStsVjJWZFo0ZVhKQlpBcG16L0dNUEtk?=
 =?utf-8?B?ejNyOEovQjI4dmNERFllZDFoM0hUcDFQSjU0TFdlQlF2SHZvbjhWRnpsYXRZ?=
 =?utf-8?B?SE1LN1NEejk2blpNZnlCUGQ3QlllcjU4czRKVmk0SDRMYjFlMVdLSDZJRW1D?=
 =?utf-8?B?alhQNGd0YkVGbnBwMmdEbkJyRGdseDNTTEdVL2UvT3h4aW81V1k4SXdpRDlh?=
 =?utf-8?B?UmcvT25LRUphdThqWkwwaGhDNTF0OE8wbUpCZWFxZjgrNWE3QXFtQ0RveERa?=
 =?utf-8?B?YWdIaG9DT2ZtTTRwVStDSkZYNCtNRkZrNktGeEZhcnhzK1BzWXhJakJqWkF1?=
 =?utf-8?B?VnZvUWpqWjkrOCs5SW80bnFjc2Rjb2ZQVkcwdnJ3NGN2YjVDN3IrT3piNzJm?=
 =?utf-8?B?QlRkZ043VzhkODRXWXRYemNtYUZnMTJ5ZTBHMW9wMGwxd0NOU2NneTlKOGx1?=
 =?utf-8?B?SWpEd0Nvck8vZFd4eGxDWHVwTHpNeTYrTGZBNnZIcjJIOGhVemZpTk1JS1RE?=
 =?utf-8?B?czBOWnd5UThIdUIrb25kUzdGZmNZbFptMGd2V3JnSEU0dUMvdXJLeDU2Y2NS?=
 =?utf-8?B?a1NlQmlIU0NLVnhkMHE1dTREMW5YRmdyVUp1K01oU2dQa3VWMWxwNHlraTQ0?=
 =?utf-8?B?bThKTVBvamp5U00rOUR0M1ZkMGFkMmVTeXhzbzhVWTc1NG40cW81Ujl3MGpD?=
 =?utf-8?B?Ukk4WTZEKzQ0dGVsOFY0ZDY5R1NsOFNsTFovL3Bqa08yVVdqRFpEdFg0QW9I?=
 =?utf-8?B?Z2hnVitOTkNLWFduWTNZZ1hET3hjSmozbStqU0NiVnNKblBTeHRJUkpBaW9r?=
 =?utf-8?B?OEh2WEFuZ3BPTDlYcnhkNUFiMUNtNk1Td3VnTlJueTFzMFEwRnNUaUtwMXhM?=
 =?utf-8?B?RzU1T2toTFZ2ZHMySEtlTU5LUTVPOVQzcU5IcmFaTjhLcWxGRE5YSVI3RjAv?=
 =?utf-8?B?eHZYTmVtbGEzQ1NUbGlYampBR1crYVdwLzhpeEYyeUdCRjloMHdpYmxnUjJy?=
 =?utf-8?B?VXVUWFByQ3NORElBZmRqMVBYTzNrVFN3aHRDbFRtSTNSVC9ZMjFzS0xKQ1Z3?=
 =?utf-8?B?OWg3YTZPSWFla2lWWUk0WWRtckhBbWxoZWxFUDRvMXZyZTZWY2tQZz09?=
X-Exchange-RoutingPolicyChecked: tTd7766rcZbLfiAxy6MCkaLXT+uOjSO3xEPyHCEcNy3Z7GBSpC0B62b1dSbAUohcvPl6Z3iOZCVDUEqVH4D4b8R4g7ggjJXG7VWj05AGlitWaa/hxJxpfGDhUOZwLt3LmUUvHSaCyXKHPkqo1zbpvBUvTdxzvsCv+H7pxxnsEmBJcrgKYbb3p7s1hNFPCzRr9+XKjGJp/dP4wj1cvt1wECmgXJVy6SDQWsdFaREF3EcgmewpU6d5GUC/ONvAHBXoEwJl2bxhXt5VEQnnjrEe/b5eFk85dRJblaXt0FHnSVoFM6Fkxaz9u1pb6UT9A3n9pqazF7TvI+39MjtXfokJLw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 25978703-c1c1-4d66-c8b1-08dea4b1ecad
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2026 23:08:42.4623 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aK9iC1YVPl3LxLCEWSQ6zXO6PE4pTrlkZKZ24/869toWqy+Suzb4NcmXnCHouhmljUAy4F4VP/RXTrQ4EcNzZLU1lMHhImyRIzIPOFV7m1I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5959
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777331337; x=1808867337;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=E6875dHXjoRZMngdfMF6YCLFmA76IeyJDs/3ho40dMA=;
 b=MZoeA7p+lVsMsZcpk6xCcmMZgJq4Ai4hZRxr+XylaJHeJ6enbdfOYW/X
 x1nA09g7jNEj4T1lDT2g4lMkGzzk5dFnmv5Upui5Btm193c7PAS+e2C+Q
 DuT3J+RlaEdOQ7f0WtuW2DsqkTV2IUwhjVeHniuw07UjOVzw1fF1OiqCu
 2+jkfwofj1+beFCHpSlaCC5F/1kcB9PAK6Wr04+p1L+I9OPej3nni5XMO
 gPUbcb/6euFPhq7LMeFtqjy3F8CA0aQ0fq0iENtkyp0ytTpsTcpC37yJF
 0Z4BR0Dr+yoFom8PMtakpGCUl/KwRr3GhomXT34y1IGHGMlE0lbg/BhWL
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MZoeA7p+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix stats array overflow
 when VF requests more queues
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David
 S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: B12AD47BB73
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:mschmidt@redhat.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email]

On 4/27/2026 12:32 PM, Michal Schmidt wrote:
> On Mon, Apr 27, 2026 at 5:30 PM Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com> wrote:
>> Why no Cc: stable@vger.kernel.org?
> 
> Apparently I still have not internalized the removal of the netdev
> special stable handling from 5 years ago. Sorry!
> 
> Michal
> 
Old habbits take a while to change :D
