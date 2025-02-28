Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48193A496BC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Feb 2025 11:16:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DBDCF606E2;
	Fri, 28 Feb 2025 10:15:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wg8M6UlKwc7h; Fri, 28 Feb 2025 10:15:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D83EF60728
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740737757;
	bh=gkDp/dyCXNU/VGJhfGIvsS/rRNEgD3jeeJddqWg9Bkw=;
	h=Date:To:References:From:CC:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JypOKYHbghrqHg92Ip+Pli1piznLXqn1ZZhinyG6rtyvNtmAtD1mCoylrXcwakd65
	 iuls8gJFupttW/ETgkOhqpCGL289a8fmCx21dTgCwZWHe2T1Kkez+0K39f7Dvwcmmw
	 KtjldUVfLU4IYm3fEzqpu2scmSfdMCEGXQ1UIoK13I2Qlw0ZZX7Tegq04TQAQKa2mZ
	 ynIuLl+KaqpaK0IgWcmPQJlEhcD0BbbkSM/KBS6rj1dRQQAVuzBqUDXOHSzOMEPxlW
	 AHoMa9ZsQmhKcHLFKxCGSsokn4dxJUymb9NMs8r3hIR1Iv0kRL+j2fzujbJfCenVqn
	 SSW9oRM9iUusw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D83EF60728;
	Fri, 28 Feb 2025 10:15:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5B0BF94F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 10:15:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4AC5A606E2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 10:15:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KVqK464msPtT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Feb 2025 10:15:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0D9F9606D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D9F9606D6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0D9F9606D6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Feb 2025 10:15:52 +0000 (UTC)
X-CSE-ConnectionGUID: +UQvdqxTRz+cPGkFZ3901w==
X-CSE-MsgGUID: McW9khwQRliXN29d35RNVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="52295902"
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="52295902"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 02:15:51 -0800
X-CSE-ConnectionGUID: wGOnVbKFQTSwpUcrWpKSHQ==
X-CSE-MsgGUID: 91CiE4keSjGFRXI4ogyr6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="117478747"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Feb 2025 02:15:50 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 28 Feb 2025 02:15:49 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 28 Feb 2025 02:15:49 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Feb 2025 02:15:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vMG+vXwr63NhyzhIPs64iD0FKuj96vZcGyevv/jwPrqPgYk4Hn4gQkXXHfc/fMWlpT5xmjHBmKKmPnsCCqt2JU30BbiI5oPRWUDNf6Z6XgaMsGTVwJEGaYOcBbdVrGSydDcQzlbyTKUyYploFI6J7LgsED1lgpgyTN4CB6vb5Dgs5RZgEHycoyqcY41bLtHNzvmoQHDFL95FBmPvdrSWt+ns5USEA/2CW7ILz8QtBKHLBbDHZtuDtcUYqbPDl2z1S/1ACXA4dO3SmpIygyz7GzsMZZpjd4sRHHiBZPe7bbs6SsfvLCfrYbx2UXypFQtg9Xn/VwsHRsszvw4aPrIezQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gkDp/dyCXNU/VGJhfGIvsS/rRNEgD3jeeJddqWg9Bkw=;
 b=UF9nPtF1jS8ttRwJemeyhEQIJY/dl8hywvjblI+7P1lNO7tYBOZVihiSnIBTUNUlEIin/UzkBRUMUwWR1bRntZQp2jLH2fb++rpg63UQJn8Rj9GSOZK8pkSAHjB5WOUooor5+BUQI0+OFq9pHFsx13GGKoxjKkrd5wqXGWXJ9PNrvnRCUPoktRNOnGpj+NK9yAWiNRooyF+903lndiLPwDsx/HzVXAejMwmVtn94ImmEaVZBktOTwHoXOsdKUPdAY2QyNOpuAEUB45yigzegx8bFSuppQo1NziLYDyaOZzBnt/NLco6wr258/8SdnF9iGiT4vBLEDJoY8lg1uxYY0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DS0PR11MB7766.namprd11.prod.outlook.com (2603:10b6:8:138::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.24; Fri, 28 Feb
 2025 10:15:47 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8489.021; Fri, 28 Feb 2025
 10:15:47 +0000
Message-ID: <99df73ed-7988-405c-b6f9-e251ec11bb67@intel.com>
Date: Fri, 28 Feb 2025 11:15:36 +0100
User-Agent: Mozilla Thunderbird
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
References: <20250227140158.2129988-1-faizal.abdul.rahim@linux.intel.com>
 <20250227140158.2129988-6-faizal.abdul.rahim@linux.intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, "Alexandre
 Torgue" <alexandre.torgue@foss.st.com>, Simon Horman <horms@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer
 <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, Furong Xu
 <0x1207@gmail.com>, Russell King <rmk+kernel@armlinux.org.uk>, "Vladimir
 Oltean" <vladimir.oltean@nxp.com>, Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>, Suraj Jaiswal
 <quic_jsuraj@quicinc.com>, Kory Maincent <kory.maincent@bootlin.com>, "Gal
 Pressman" <gal@nvidia.com>, Jesper Nilsson <jesper.nilsson@axis.com>, "Andrew
 Halaney" <ahalaney@redhat.com>, Choong Yong Liang
 <yong.liang.choong@linux.intel.com>, Kunihiko Hayashi
 <hayashi.kunihiko@socionext.com>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <bpf@vger.kernel.org>
In-Reply-To: <20250227140158.2129988-6-faizal.abdul.rahim@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR08CA0228.eurprd08.prod.outlook.com
 (2603:10a6:802:15::37) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DS0PR11MB7766:EE_
X-MS-Office365-Filtering-Correlation-Id: 50569a2b-c660-4a94-a7cc-08dd57e0de5f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cTNxQkNaeTZOWmp4aS9lU0pqQTNTTjJ6UzhZTy9JR3l5OE5rU3h6M3dhUVVJ?=
 =?utf-8?B?OHdWYUk5ZW5iMU5zNTJSZVNKaXFZZ1FlOW91ZW9ndVIrcWp1cXh5b3d5SERN?=
 =?utf-8?B?K2ZzYklocTRibGNpNWhKK1R3L29PNWJIRTJjYXRDOUZqYVViMXBoQ2hQREp4?=
 =?utf-8?B?ZTZmSjNablNtcGJra2ZUS0ZKc2NNSVU5ejM0cVpUUU41TGFGMEZHdFhrckti?=
 =?utf-8?B?UXlrT3VQbm1nWGxyRnpSS0VXekZxdUlMS3FHR2MxRFdRZ3J5akF0R215bHR3?=
 =?utf-8?B?TzhqSjVjYTYwb2MreHZxL2lEajhqeWNFdmRNQ2V6NVBmT1VPZ2lVZ2UwK3Jh?=
 =?utf-8?B?bVN5dWl3bmtvc2RWc3VVc1V5TkdKSTNtWDVQTWhCTmNoZU56WkZKZncxb2Nw?=
 =?utf-8?B?MmlmUmc1c05MZnVYeGdONlZVUFYyZ1AvNlZ4MkNWdmJQWUJ2bmN6UGdvamg4?=
 =?utf-8?B?b0tpVTJJelFvd09pd0RybWxFdW5JMjBUaGNJUzFaYkdCN1VhcWJ5eFVxRGQ0?=
 =?utf-8?B?REJCVGRBYnl0YjZzZ0NLd3ZlUlhSU2diTHRXQVdDLzJqUlhlaXRXS1JXK2JB?=
 =?utf-8?B?VmlFdVErOHp5bHRxZWN5VVBCUlJPaWxyT3VwdHBZaVF6eUFWM0hKa2k4Q2U2?=
 =?utf-8?B?ZGtCdFNpQVc1VlJsTGgzOWNkM0hZR0E0dXBoUDhjTjdwR0crV1dKU2l5dGYx?=
 =?utf-8?B?R3R2MzJBbW51RkxScXRRcjlpdm5VVUhuRU1MR29tS2IxL2Z6VitUbFZwRS9n?=
 =?utf-8?B?VzJyMmxLQUp6YWdxNWJhS0FPa0J4VHJjcU0wRnpJelJBcTBhbVBWSUQ0dlRL?=
 =?utf-8?B?ZXBUc3ZHS00rSGJGUEhDcnBlTnFYUHUyN1VQM3hhdjNJb1gvNUNxTi90a28x?=
 =?utf-8?B?QVg1UnVHMXREVVNHQVRocDN2SkJMZmZTWndkdU5VNWlYamNsZUliRXI5bStD?=
 =?utf-8?B?M01xTW5ZaDVCdmVFbFlFTXBxMHRsV3BKeUZQM1M2UDRmZExDcVNaSjBoYW0y?=
 =?utf-8?B?WVJYYWVweVhIbDdPK1hSc29ybGJpalhoZXFIejJ0SGhKbG5BMVRPVnVhc1pk?=
 =?utf-8?B?YUczT2hKMFN1U0RrQ1lYcURSMlJUcitRWFZPZFd3bGpQbnBKVFd6cUFyalVX?=
 =?utf-8?B?ekxtazNUUXFDeGEzb1d6Wk9VcU1XeXp5Zm11cjlzeUxycTM4bGVYTk95NlpE?=
 =?utf-8?B?LzhjZ2RjbzBMTkJGZGFucVZNamdBSnBta1M4RVVYQ2YxaUtkS3UwV0ZicTdS?=
 =?utf-8?B?b0o5RHNGdHhzR29BZ0RuT2JKOXBpSi9Gd3gyWXQraGlHOU8rV2lwb1kxZWt3?=
 =?utf-8?B?WDltRWFja2pKcVNxVVpxdWhiakNWRU92Y0FUbFRUTnhQdXZoVTIwcC8wbjhY?=
 =?utf-8?B?dEdlT2JqT00wRTlPSVBXbnZqazNGckMvNXRINHhpTnQ0ZXIzSFBZSnFFaEor?=
 =?utf-8?B?L2R0ZUVtN1NaUnlWQUhPclZhbFpFQ2doRGhxcElQVSszZExlYnJkZzMrN0JY?=
 =?utf-8?B?dDkyeFBuT01NUkZ4WUkrQ25IOGdkczBsUkRaZS91UXJmcVdtQVlYN0tUaXhP?=
 =?utf-8?B?QVhIOHJwVzJITUtYMkw1dXJDeVlIdUV5T3N2UXBkTmxsb2FIRHZobENDRm9m?=
 =?utf-8?B?QlQvcy9HaXhXNXdqdFdjczdSTTJCVEE4RkZBU2ZqTVgvempFbGhpUWRaWXh3?=
 =?utf-8?B?RVFBZTVscHRuOWtEdkNaZEp1ekk1aUIybE1OQWNCWXFhZFBjVnZDd0pQV2l5?=
 =?utf-8?B?WUtLdDBYTzRSSFJEaG1mMUJWRS9lZTdqellST2hJZVRuTzVEN0JwRFZjbHIw?=
 =?utf-8?B?MlRsZUZtSnFDcjNwcXZjMDVPYm4yQkcvVTY1UXduYUh4RjE4enZJZUo2d2No?=
 =?utf-8?Q?3p27LIRklCwu/?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bFRCMnJZbUNZaUJOR3VHZTFnOGxHTUU3KytVREtoWjRkVGYyeEs1WkpWZUc4?=
 =?utf-8?B?eUplT240TFJIRlF1YUMwVExROUJLMHp3SjFpdTFGRGFKQlpFT3JlMHIvMTBG?=
 =?utf-8?B?bXI3bXMzQWlNN2Nkc1lFZ29NQ2NvRGF2cWpnR0s4N1FPdmsrMmZDa0pZY2ZG?=
 =?utf-8?B?a2pvcWU4TkJMWnlqN1RuYkRWQ25DWjJ1NUpseXhXL2FaMzNxY01SK09nNmE3?=
 =?utf-8?B?Uy9Wa2Eyb3V1YVF3WkZHOVZYYk5KaUUrU0FwNEJUaklQVmZVVVE0MHQzczl5?=
 =?utf-8?B?VnpRYzBSMTdHcXhEb2FmQy85RjliS0tTZjVaYWtzMjVjcmsxZXB2WUc0bVJ3?=
 =?utf-8?B?czJ4U3FCaUpwOHJJc0VsVWpjL2JqSlRrbFdYMTIwTmxsZ0FoYVJUMUdtZEdm?=
 =?utf-8?B?aDM1N3JYUjA3SGxXODJkUnAxYkI2bG9uUEEzejVzZEdJZWlmUjk4dHFmby8y?=
 =?utf-8?B?Z0hmVVcxZHZMd2licU4yZFdVSjFFaDVMMkNKNndQazJ3MnFhbTRJVkNNTzN6?=
 =?utf-8?B?TWpkT1U3NjBTUFNOR3hjNGZjV2w2ZnhBdUtYVDMyYXVaOXBIU2xWc2lvbWpa?=
 =?utf-8?B?TmJsSWZXRVRqM0RyK2Iybi9CcUlJeDJBbzQ3UHB0dVIyZ3AzR2xZMFFDaUtN?=
 =?utf-8?B?bFZHQ1I1VWlqOEpQdVB3MUxZSEprY1hvOURhbHY1dVZmdWpOWXRFMzdPSktT?=
 =?utf-8?B?YlRXMXhXVzY2Yk9DYnBWeDlPRGw5Q1FXVVdTM3piSTJWa2VoVnpGWlJrL3hW?=
 =?utf-8?B?REFZK0RHVlZvdWU0K3RsNEU0a0t5S0ZWa1NOOFhHQlBaN1E2TmZUMTh6ODV2?=
 =?utf-8?B?c2FqTVhtcjAvVXpxM3B5ZGdVV2x2ZURnenBKd0J4dHMyTVZQN1RjdGlDK1RX?=
 =?utf-8?B?WDZLTUppZXVVaWkxYWRKL0tRajhLSmJQOTFkSU1lUUIwTmhmeTZpSWtSQS9T?=
 =?utf-8?B?TzVBWWhzSFROMklGSGVkeG9IMGxrYjZmcUN0TnZSS09KTTE2TTkwL25xSStG?=
 =?utf-8?B?K3RtNW5YT3pFd2NKWi9zNnpkYzF1eExaaWFwR29TOUt4L3VTd1hBai8rVll2?=
 =?utf-8?B?czVDcjdhRXVST3JyRzRvK1VyTWx1cDRXeUtBVDVBSWh1SE8xMEIyODE1aHRz?=
 =?utf-8?B?ZEcwSmpNQzREQkFpandnUHNpd2h4MmJ5bmtkT3YwOGEyYzhOZWRtUi9LaStm?=
 =?utf-8?B?S1V2WEIvU2ZraEU2ZEE5Y1h2emZGNy9tditCWENEUlkrNVQxK1d1M21abnNP?=
 =?utf-8?B?VGJ3Q3ZxeVZET0EreXBtWkVHd0tjdi81ODJQT09pU2NmL0JWOUJHd3FJSm5C?=
 =?utf-8?B?V1U2Mlk5RWFMR29YMWJ6S3IxeTQxM3lKV3IwMEg4czlEV09YMmpDU0hrZUdv?=
 =?utf-8?B?K0VGd2RzMExkWjcwQ1NFZ0ltTHpTWWdTbWRTOGZub2ZuRUY1Snp1SEkzNnM0?=
 =?utf-8?B?aUYyUVFsNzFwNDY1eHI2aXVIUGFQbHJZOTdra1JqT3FJWDN2QzhyRmpwcHJx?=
 =?utf-8?B?eXMrWmhZVEoyU2RGZVB6ZnhwbjdzMjRIcHI3UmphUHNJVkc0RXlLYStQVG5r?=
 =?utf-8?B?aVZOVEVWdjhMcDhxRGgxblU3QlMrZCt1dHVqVFVrMVlheFdRT1RPM3diOFFv?=
 =?utf-8?B?eWJyRkFSa01wcnBIS0d4bzd5ZXd4V0Q1c2E1R0tQVWxZLzBLajliSlVQbjZX?=
 =?utf-8?B?TnFUTVVNL3luNENOQUxlWHFOYWhJOGEvbGo0TkFnZy82L2FvUVViRjlZUUpC?=
 =?utf-8?B?K2tSdUFvcDNmaWlTd3FYa1JidzlzdkFaK2dJdDBDQ0dBcHp4OWpFeXJ5N081?=
 =?utf-8?B?RUFTb3hPUFhBUnNWYzZrM1ZZNGdqYzFucVI3UnJEL0IvZ0lNekx1MnkvbTlo?=
 =?utf-8?B?ZjJRc1JqNjZHZnNkMjMycWFMQTBzS05TNDdUeEJNNHZFL2tmVkNUS0c0MnVP?=
 =?utf-8?B?RHcyUlI4cWc5UXRMMm1tSDZOZUpibkVKYkc3MEJ0SjhBb1FGc0JuOTlnRzRQ?=
 =?utf-8?B?emxyKzlIQWdwZEtKUkkxMWExaDBEQ3RqWXVTeE5uU2VQWGk5d1l2WXpqSFk3?=
 =?utf-8?B?ekh5ZnFJbkVHbjhYWXJEZTZxcVVwVlRxd3oreTNuNWVoTklJSndoNitIV2ps?=
 =?utf-8?B?S3UvT0tjQTg4cEszS1QraURaNW10ay8xUXd0ZnBWTzkvbjArTUd0TmZXWDd0?=
 =?utf-8?B?c0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 50569a2b-c660-4a94-a7cc-08dd57e0de5f
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2025 10:15:47.3402 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CX3Fi2UQ43cJJ2fpwJQIywBXNdIe66FYf2N8n+BDTaj1/uxzxnYsIUMU9wD0srI53b1Bn62rkqPUs/G+iPiajHij8oQJVBlF4gRr9yyAXac=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7766
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740737753; x=1772273753;
 h=message-id:date:subject:to:references:from:cc:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sMdPbpBwx2z+ObawTkvk66xo8gRkk8DewJSD6etL97o=;
 b=I2sXx4vreBdxDW9o1avi1Cv2i9Yg44NUFvTz7fEhbY/1aQbkyVri4VSy
 BVpSqmIxGu1C6Ru+V91LomkKJfGFM/PCDm/fatpZeOEu+tMr3DEpJkiSa
 0/17W5P9eFZ2NBUE1UDobElflwHeJGH936e6Mo7NoxCkT7kKM/LFFHq6w
 p9st38oRLKTEBO2FYO8em9E03hI2pOrMpcGFpLWqUSSKyIxfIjF62kxxf
 YfwqMFzrmiUNbjnv2vp00alJr0FgcuYtYu/zX7VYWmEuBH+AGsetJ9Afu
 Y6MRqQZKCZRFSAneVKLvCE+RhKW4XPS1Vd+huCUw45kGcCLgFNf11JnyL
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I2sXx4vr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 5/9] igc: Add support for
 frame preemption verification
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

On 2/27/25 15:01, Faizal Rahim wrote:
> This patch implements the "ethtool --set-mm" callback to trigger the
> frame preemption verification handshake.
> 
> Uses the MAC Merge Software Verification (mmsv) mechanism in ethtool
> to perform the verification handshake for igc.
> The structure fpe.mmsv is set by mmsv in ethtool and should remain
> read-only for the driver.
> 

[..]

Thank you for the series, please find some comments inline,
sorry for them being mostly nitpicks.

> ---
>   drivers/net/ethernet/intel/igc/igc.h         |  12 +-
>   drivers/net/ethernet/intel/igc/igc_base.h    |   1 +
>   drivers/net/ethernet/intel/igc/igc_defines.h |   8 +-
>   drivers/net/ethernet/intel/igc/igc_ethtool.c |  21 +++
>   drivers/net/ethernet/intel/igc/igc_main.c    |  53 ++++++-
>   drivers/net/ethernet/intel/igc/igc_tsn.c     | 147 ++++++++++++++++++-
>   drivers/net/ethernet/intel/igc/igc_tsn.h     |  51 +++++++
>   7 files changed, 288 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 22ecdac26cf4..705bd4739e3b 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -40,6 +40,10 @@ void igc_ethtool_set_ops(struct net_device *);
>   
>   #define IGC_MAX_TX_TSTAMP_REGS		4
>   
> +struct fpe_t {

please use "igc_" prefix

> @@ -2068,6 +2088,7 @@ static const struct ethtool_ops igc_ethtool_ops = {
>   	.set_rxfh		= igc_ethtool_set_rxfh,
>   	.get_ts_info		= igc_ethtool_get_ts_info,
>   	.get_channels		= igc_ethtool_get_channels,
> +	.set_mm			= igc_ethtool_set_mm,
>   	.set_channels		= igc_ethtool_set_channels,

you have picked a wierd place on this list to plug the new op

>   	.get_priv_flags		= igc_ethtool_get_priv_flags,
>   	.set_priv_flags		= igc_ethtool_set_priv_flags,


> +/**
> + * igc_enable_empty_addr_recv - Enable rx of packets with all-zeroes MAC address

Rx

> + * @adapter: Pointer to the igc_adapter structure.
> + *
> + * Frame preemption verification requires that packets with the all-zeroes
> + * MAC address are allowed to be received by IGC. This function adds the

s/IGC/the driver/?

> + * all-zeroes destination address to the list of acceptable addresses.
> + *
> + * Return: 0 on success, negative value otherwise.
> + */
> +int igc_enable_empty_addr_recv(struct igc_adapter *adapter)
> +{
> +	u8 empty[ETH_ALEN] = { };

the style prefered is = {}

> +
> +	return igc_add_mac_filter(adapter, IGC_MAC_FILTER_TYPE_DST, empty, -1);
> +}
> +
> +void igc_disable_empty_addr_recv(struct igc_adapter *adapter)
> +{
> +	u8 empty[ETH_ALEN] = { };

ditto {}

> +
> +	igc_del_mac_filter(adapter, IGC_MAC_FILTER_TYPE_DST, empty);
> +}


> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
> index f0213cfce07d..acfff3919793 100644
> --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
> @@ -1,10 +1,137 @@
>   // SPDX-License-Identifier: GPL-2.0
>   /* Copyright (c)  2019 Intel Corporation */
>   
> +#include <linux/kernel.h>

Please don't include umbrealla headers, instdead IWYU
(Include What You Use)
linux/jump_label.h etc

>   #include "igc.h"
> +#include "igc_base.h"
>   #include "igc_hw.h"
>   #include "igc_tsn.h"
>   


> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.h b/drivers/net/ethernet/intel/igc/igc_tsn.h
> index 98ec845a86bf..7ba232ef37c9 100644
> --- a/drivers/net/ethernet/intel/igc/igc_tsn.h
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.h
> @@ -4,9 +4,60 @@
>   #ifndef _IGC_TSN_H_
>   #define _IGC_TSN_H_
>   
> +#define SMD_FRAME_SIZE			60
> +
> +enum igc_txd_popts_type {
> +	SMD_V = 0x01,
> +	SMD_R = 0x02

please end enums with comma (,), unless the last entry is a COUNT/MAX/
SIZE or similar

> +};
> +
> +DECLARE_STATIC_KEY_FALSE(igc_fpe_enabled);
> +
> +void igc_fpe_init(struct igc_adapter *adapter);
> +u32 igc_fpe_get_supported_frag_size(u32 user_frag_size);
>   int igc_tsn_offload_apply(struct igc_adapter *adapter);
>   int igc_tsn_reset(struct igc_adapter *adapter);
>   void igc_tsn_adjust_txtime_offset(struct igc_adapter *adapter);
>   bool igc_tsn_is_taprio_activated_by_user(struct igc_adapter *adapter);
>   
> +static inline bool igc_fpe_is_pmac_enabled(struct igc_adapter *adapter)
> +{
> +	return static_branch_unlikely(&igc_fpe_enabled) &&
> +	       adapter->fpe.mmsv.pmac_enabled;
> +}
> +
> +static inline bool igc_fpe_is_verify_or_response(union igc_adv_rx_desc *rx_desc,
> +						 unsigned int size)
> +{
> +	u32 status_error = le32_to_cpu(rx_desc->wb.upper.status_error);
> +	int smd;
> +
> +	smd = FIELD_GET(IGC_RXDADV_STAT_SMD_TYPE_MASK, status_error);
> +
> +	return ((smd == IGC_RXD_STAT_SMD_TYPE_V || smd == IGC_RXD_STAT_SMD_TYPE_R) &&
> +		size == SMD_FRAME_SIZE);

too much braces

