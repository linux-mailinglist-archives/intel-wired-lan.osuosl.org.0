Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8189FCB4253
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Dec 2025 23:29:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 32E2440D9A;
	Wed, 10 Dec 2025 22:29:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v8dyauiJlBUW; Wed, 10 Dec 2025 22:29:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7EC940D6A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765405760;
	bh=im2roUoIam7WmfFxOABdwHTKSdiL0Go9vA4nlR9PSoo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1h7Izqsez39J9pTM7jmgzzqw+cyxj8C5ovjFS9iQl98CrBDR8OPsHBaTSFIWyQl5T
	 4tOy1mJm15ZwebWMU/DRFgRQHtZC4KaWge0t6SJnHY5oLCOd9draDTuE6cW9YlSkwB
	 1L4u0v5J+GL8PPV/c0L6QhD30NAnaR8VsO0OfracNehj6n/2IN8Z3zYLss47TjDnzp
	 ivik1oGBHEN/BvSqdbpLyhi2corH1676TPn1IYdjPCFhhRXJKFPT7vvofeHjtCLXoC
	 YNXJoLN9PGF7zhdHGmbh8PuAmv4J5r6oRejprQdtp3ikY0xDHFqZtetKOicjpQlTxV
	 JCKHsmr0v11YA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7EC940D6A;
	Wed, 10 Dec 2025 22:29:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8EA0E2C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 22:29:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7469761C26
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 22:29:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YsN_MDnQ33HT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Dec 2025 22:29:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 41C5461C1D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 41C5461C1D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 41C5461C1D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 22:29:16 +0000 (UTC)
X-CSE-ConnectionGUID: HSWBMb97TgazdsnNoyOveg==
X-CSE-MsgGUID: 8+wSx/mBRVaUrstK08y2ZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="67556193"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="67556193"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 14:29:14 -0800
X-CSE-ConnectionGUID: DAI9l6BcSRiE+NZCUZZWcg==
X-CSE-MsgGUID: Iu/nDoeoTgu8Km2eoVeXxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="234050136"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 14:29:10 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 14:29:08 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 14:29:08 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.53) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 14:29:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vla5jdxAZns3Y2I9SmNnI7UiQyA8YevHHCv8VOcadChft1og0T7yhblFVrq7eWg4e+LgYfwaccRIwd4GC/pvI/kXIAjAqbHMh7AHcB2cZ7EpiOjXiChxFFRKCloiSRsJzYmp8b6fISb8+aWgW8F6DY544Sw33IlpYKJxTHkGEuPjCOX7xn7ST6zlg2xdUO9X8aHVWoQgTAHSIAVB4zoiaVD4w2K+ehdoQQXG0XWCpnGYqyFkWq1Qffy4BalOU916dhSMZFmj517Nte3VsWsM7JM3d3QCWECZ156RZKiWuB1dR873c4NKxab0WlNMuFj6vGR3zxvNOdkQw9ubbAHLTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=im2roUoIam7WmfFxOABdwHTKSdiL0Go9vA4nlR9PSoo=;
 b=Si53NM/2A66aKOA7zszit3zObVliDh8pA5Rg1bFk7INadViEUzguwjsWKOdEdPmt2xhYLxj87Joz9sL8KGU5ZapKq2cXzES8Q8XRqYRKVtTSiGhVUUYz/VEEz/KDBzz9iAtL6FrpIl57Ivm0nN5lw00RIshohXJ2mI3jFud1ORmEWSwAooGT0Qb465zWbJQOaQnXbWkWch1QZ0fleTMYUu8ph2D8vgjhVyqpFsinXwGUvtS/5wp4PasG9ttT2hpkF85I0XurvTLUoDAxyPl6E5vKMEOHoaWHukfaAXZelt1422d9kSm8wlbdyK+Wm9aq04RBWZyNNExNhH69VisKGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by PH8PR11MB6681.namprd11.prod.outlook.com (2603:10b6:510:1c4::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.9; Wed, 10 Dec
 2025 22:29:00 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 22:29:00 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "decot@google.com" <decot@google.com>, "willemb@google.com"
 <willemb@google.com>, "Hay, Joshua A" <joshua.a.hay@intel.com>, "Chittim,
 Madhu" <madhu.chittim@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Zaremba, Larysa" <larysa.zaremba@intel.com>, 
 "iamvivekkumar@google.com" <iamvivekkumar@google.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 4/5] idpf: fix memory leak
 in idpf_vc_core_deinit()
Thread-Index: AQHcWnyKaSrsIF+hoE+/fJut+xxCIrUbicRw
Date: Wed, 10 Dec 2025 22:28:59 +0000
Message-ID: <SJ1PR11MB6297CE409C33E25665E144339BA0A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251121001218.4565-1-emil.s.tantilov@intel.com>
 <20251121001218.4565-5-emil.s.tantilov@intel.com>
In-Reply-To: <20251121001218.4565-5-emil.s.tantilov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|PH8PR11MB6681:EE_
x-ms-office365-filtering-correlation-id: e5b87fb0-9d14-4372-18ac-08de383b83e4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?kTiFs7uMxy+iGo4Q+Hcqh+hfIBQqmn4n/tJ4aaX991HZZff+zxqxecOY3jKh?=
 =?us-ascii?Q?nVQudO/vlfkB0r1xRUYpHLzH/xtc8m+G0bg3xyt8gVwFF9ujm9L0wJjgTsv4?=
 =?us-ascii?Q?+gj+trhcfVX+7ueZ3dkjChZt79QABAfAiw/rZxWtsHOjnOqqyS0/bmnCoaNY?=
 =?us-ascii?Q?xCGW7Tu2S9y6u+CrGDa2zCFPQtzC6edaWzkLt3i2xZG97guYF1qvyboAmJ7u?=
 =?us-ascii?Q?XxVsLL91J/Fzca5dDyYuGz5igbmotLIEjJZHmug+GKVO4uZ+e+9hOgGreLO+?=
 =?us-ascii?Q?+I3PwtkHsmNz6JXzoJ21w1knZNBZl3mq8pesxrpULoMKICVb9hW275AwJ3Sz?=
 =?us-ascii?Q?q/XZhaxAzFioduBdRoZmC+Z/kS8/0noSshkTYCuxkuEWFd/gS/F4ns7MWrIB?=
 =?us-ascii?Q?QPvY7QMY15ZW+9jCWrtMMrPg4PrxdAxpwsujhwEQxl19Lqmkg5wKXjOqS01s?=
 =?us-ascii?Q?bXW8heJBrEmMU0uvHNZBp3C69dHGqMbpmUh2JjSnG8jtHZml7WGjijJ1QrD1?=
 =?us-ascii?Q?TzyhfI1HYgM0FKy1y0SFdOgxoyKKntBSCxOZr44G8FKdRwoUTNTGRTkHh+6d?=
 =?us-ascii?Q?A+OArwkLkWqm1saDEzqyMy4JzZKoVONiVlpEKxwiadQTHAfeKFmgcTnUtj82?=
 =?us-ascii?Q?UW8ZpGgvSPIBNBwa8XzUt5dzqSxjAJDcDPeSs8fBGcs32x1+06c60ZrLWlcV?=
 =?us-ascii?Q?AEGDApzAbKAMg1I+TTUHOEapMj8baXell1KCItoIt0Qb6B+c5vupxJhpeFnK?=
 =?us-ascii?Q?+SQ5IOhiQcHgoTB5uBvlwP1glL2mwgdwZTc948H2psyesFQ0f62BPcb4PPl+?=
 =?us-ascii?Q?fbcmGAyMeI1KUl8bSprmXZ1UCtdYpJK8b6xMwLk5TFERQ1+PnlmQyVm0jyWp?=
 =?us-ascii?Q?IdhRF4VmNlxtZ+d3popTF1LXIy+StrCg52fNxvZ0LVx0rN++hZ/19vvrK/dE?=
 =?us-ascii?Q?LLdwHsDw+ryHwSlxzyeNGiMDjD8uWKPlvHyECpo8xaf1RsHdKjDtqp1sRsFd?=
 =?us-ascii?Q?2hJxZ3qtsVJk/U8cdbQNikFDJliVoYVN26xB7I1MG1Zz+Oa3dBN5kB6Cqo42?=
 =?us-ascii?Q?eKRlb4JbAnvYv8W7yIsVJDsaEYgLVEfVu6PiFpWURlOlmS5chRC9bviTkPe1?=
 =?us-ascii?Q?LeFB0U5MVvTT4K7HqvAAlGPUefvqksvk8kYRIZeHcIh5xf5pGXdN6ymQg/EA?=
 =?us-ascii?Q?irXw5uFNqNzihdYJmGwOZj0GQKdTL0uqmh1ZV3ChKmwx1OG7xbH0wTDZsHhW?=
 =?us-ascii?Q?7uyBIZz7G6x+1JsNR1O0aCWJ7IOpVR7ICzsZsc6D38ZE5aZuND4dneWqXJ0m?=
 =?us-ascii?Q?m7zyxt3K039Hw0Sx/NbZtvKkpURtj/2KBvzgnJvWjO1UAdTjePRBGvp2wBmB?=
 =?us-ascii?Q?S6jZrWvIScqVK51ajlFaYnNNtT8UDWjIdWs7KQQ9xpfCQ9kZAW3wW4/CA/kp?=
 =?us-ascii?Q?eHcsCsY43GYkHI2aoV0V66VUXlmliUXE9i4VViCYfTHQlJe0838K3EPutQNt?=
 =?us-ascii?Q?s+WHL/etZMSCc9T+IVcb4JkrsKdyA5rM4tfg?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XpnDk17Mm2pFlyJbQowh0gen+I0VIiR2OYFaaRRywsYaWqQk6PgYnHIAhNuN?=
 =?us-ascii?Q?NqslaioJccI2mgpZxRXjcjDWSt2yagYazBDHDZ/vQ6WkwVrnI/q3Rf88u5Z+?=
 =?us-ascii?Q?kZKdQ8kCtnEAutvSXrG/Mfo5DnWPBldYOmmtzpAe7LSI00OzDClgK3Usjcvv?=
 =?us-ascii?Q?Xy7IAFmBoUxGSwDLReXgCJMaAZ6dNjXz8KObmBJQt6HihmQuPSx7vEyKAmu6?=
 =?us-ascii?Q?Yx0vK0p4ssXyI5+U1JCqZnk85N/HPRELNXy5p3XxFsZUkXIprKUbgOccISet?=
 =?us-ascii?Q?1g0Tesgr2DcHmxsVwZJZLT97Zp2S3VksHgi+r8DigKpzh73woTApR5KQ2I70?=
 =?us-ascii?Q?jOQZYXGh0y1zaxo21XSpCw0nlZkWzArWgD+7s0E9AnG4aR37eS/QzJj+2Qop?=
 =?us-ascii?Q?ljtbFgKqdlXqulNowAsHxvOkCha4Bd3XwYa2Funa431fbWrhXl+s8xPT0IN0?=
 =?us-ascii?Q?CNEUWRTNuQaJdkrD2I6cKemzkbn3/HrIgO22iT148yVK7zehGnWIZBZZmYFL?=
 =?us-ascii?Q?ZVN0JQNX9DqRXSTj1B68z9CTYlj68gkwhBX8jHjHEWVdvgRoum5FTSSwgfm7?=
 =?us-ascii?Q?DnGFCfqXkAmT3H4Z35En6Q2pLyNuOXoQdZXE/++Q7DOJuflkuXzqd96UX9zd?=
 =?us-ascii?Q?2IJDFBaM/MsSh29XjIrXcqPZRmTwIOhoLfkWamU9YIXdfFpYk17vISkALNDi?=
 =?us-ascii?Q?j+gqMgFE6CTx+EWhunZAF3X8qOCIhB2c7BhSt3NyiQ2xBdq/nL0yr8Jn8+Sm?=
 =?us-ascii?Q?wfCS9pJJzJ7/S3yCOfiOTfRtB1TKjCDpds5nWMkguON+j9lg2iHHCN6j3WcK?=
 =?us-ascii?Q?GxEtU4q+sbzFimtqE7xchE9l/NWxJfS/5hyoN+hTWKVeWgyJS0no8+D8tW40?=
 =?us-ascii?Q?DNIau5dS5q9hNIJGkZtQcrJWhlOsBzERInRIO5bPgzxEArLw3kfQfALF6GIV?=
 =?us-ascii?Q?jrlntCdjQ4zLxy0Ozf8nOI7V80APcLLp1tzB2m9Kc2ZCa/d4wwT3gGxn5zMU?=
 =?us-ascii?Q?r2iweK0wO2AVtFuzLSSIfMqthtPuTa1lqdlUuO0hF8ETimixcHQYQywogYfy?=
 =?us-ascii?Q?8U/VnoDZQNyrSIJGajkabwK20qxrC/kd50g9YEcht7QJVOzPf06FxF0YrfLB?=
 =?us-ascii?Q?eLuKNBznOTpEA3fO6krCgW1gskFp/kMw9Tk9OeF5ymdvx5LsyOUzWJ6T/56R?=
 =?us-ascii?Q?VQNfCDBn7D2JGUK/zMNgXYlfBS5Q6YYv9Wb9O/uK9Z6kO90vuLdn7ySt6SDH?=
 =?us-ascii?Q?mj3llHKJu8nm6vXKI82X+bS0goehAog5ofcQqZmz4knxVb2Ky8ulL3KbD3A5?=
 =?us-ascii?Q?Wv7kfIFFhqiLCccH7xGKPp1eY8HXCaD6hTPrzAdaONWWcXl5CEeAAsS+uEYr?=
 =?us-ascii?Q?TVfW2bdM7v9lUy2uVX+B4gV9istLqzo5RNocmMougd8QptT5JWoz1FxxjIxU?=
 =?us-ascii?Q?p3IHCBz9/Xljt5FwnmcvFJ65J8lWqVBANJbzk0B7xka88rc0k/c+AjvRF4Ih?=
 =?us-ascii?Q?DbVXad0mmnI0ssq6PYFTA6y2sg0OHTic1gLoDqcQ9MZLm7BNg5kMNqe8ABwX?=
 =?us-ascii?Q?XnyKEjrzBXSHBMCQwOQaMZrNhjTC7CJ/QA+qDdBx?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5b87fb0-9d14-4372-18ac-08de383b83e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2025 22:28:59.9941 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jHbbQy+mjcYF+h3iRx2oslUNIsGYAly3CsSZLL4LCgPmkO8lrtMLV5iRv8JzC+YFIpyP1Prk8Snt4BP2rVC6zA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6681
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765405758; x=1796941758;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=g23BPrInF0fQRdTwBWg0shx9zblMkPlSRtt46iyspz4=;
 b=FvXpYAEcX6pvXDFk1W9+/IJXAB7Bk7l3ox7PlrRXZ5THzO4wZlzrhlb8
 htr3D9b/Th1WkBgD50ATcGUsIYui0N8sewvWEO1NDkuBJJ9uzfnxbnorS
 EKYK158VS4abpGaLPf69OWgmVGz8d0iqCzZyvCh2JVP7h+Zkk05nm70t1
 MTU5LaKFM0ZyIKZfmh92iAJ2gjv13m/lbXHNinSYgo1PW01Fm97vIv2Om
 hF6d9/5T+tugzruJFkpjUxbr2qGebn2JIBtE70Rnu8TUcb8byHAvvuFlx
 JH56287t607P/ilulDtZktsaMvxJMMchxLggfQXl2Sjx4X5ncU1kqpB1m
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FvXpYAEc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 4/5] idpf: fix memory leak
 in idpf_vc_core_deinit()
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Emil Tantilov
> Sent: Thursday, November 20, 2025 4:12 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; decot@google.com; willemb@google.com; Hay, Joshua
> A <joshua.a.hay@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Lobakin, Aleksander <aleksander.lobakin@intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; iamvivekkumar@google.com
> Subject: [Intel-wired-lan] [PATCH iwl-net v2 4/5] idpf: fix memory leak i=
n
> idpf_vc_core_deinit()
>=20
> Make sure to free hw->lan_regs. Reported by kmemleak during reset:
>=20
> unreferenced object 0xff1b913d02a936c0 (size 96):
>   comm "kworker/u258:14", pid 2174, jiffies 4294958305
>   hex dump (first 32 bytes):
>     00 00 00 c0 a8 ba 2d ff 00 00 00 00 00 00 00 00  ......-.........
>     00 00 40 08 00 00 00 00 00 00 25 b3 a8 ba 2d ff  ..@.......%...-.
>   backtrace (crc 36063c4f):
>     __kmalloc_noprof+0x48f/0x890
>     idpf_vc_core_init+0x6ce/0x9b0 [idpf]
>     idpf_vc_event_task+0x1fb/0x350 [idpf]
>     process_one_work+0x226/0x6d0
>     worker_thread+0x19e/0x340
>     kthread+0x10f/0x250
>     ret_from_fork+0x251/0x2b0
>     ret_from_fork_asm+0x1a/0x30
>=20
> Fixes: 6aa53e861c1a ("idpf: implement get LAN MMIO memory regions")
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Joshua Hay <joshua.a.hay@intel.com>
> ---
> 2.37.3

Tested-by: Samuel Salin <Samuel.salin@intel.com>
