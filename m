Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IBQCJGgv72mb8wAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 11:42:00 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D474B4700A9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 11:41:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8055042C5C;
	Mon, 27 Apr 2026 09:41:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6t2CzbUg1Y63; Mon, 27 Apr 2026 09:41:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF13D42C6A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777282918;
	bh=xAnbBptgKVsQcey8Gdf9t/VAyH9hjmwD7npOli57J3U=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WR9Y2dH3w/tGEyWjgWXQDw0oNN4teGmWXeHBZ+4X2BmmY5FrtiVmPB9yXZVxuMOzG
	 1R3hwZkL+WZ0T41WncVJcjwtq34L6AzTR/XPTcsjsLzKMN6qu/pqW5qvblQGcsgr7Q
	 RUQ3AqHtMqThiAIyzFzqrlMw11augDnOeJjrXHMvqSIWuVr5Ci6KEgSF/BbdC9gILX
	 xv4A+nT4WGA1A0c7TFeh1iJSo3wEab/Og2ftbumUvSyh7ukdeQ6qmUFzvsYwZrZkfS
	 YEBfTHCErNA0ZQknT3fwuP+h2FR+CBB4JrNxt6zjRHnnpBV+ffiudRWAyukmYc7Dry
	 pnigmd7Zpr/RQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF13D42C6A;
	Mon, 27 Apr 2026 09:41:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id AE12C2DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 09:41:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 93A384056B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 09:41:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id StCEgI2rQYom for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Apr 2026 09:41:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9A17F40210
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A17F40210
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9A17F40210
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 09:41:54 +0000 (UTC)
X-CSE-ConnectionGUID: vY0p9WSCQleWjYWxFXhvYA==
X-CSE-MsgGUID: KeJCkB9FQJKniZ5Sc2Nl1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="78354884"
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="78354884"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 02:41:54 -0700
X-CSE-ConnectionGUID: zmzjJ+Q7QtqgYytT2QlJSw==
X-CSE-MsgGUID: Hc+kziF/QK2fgywxU2x4zA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="232710344"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 02:41:53 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 02:41:52 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 27 Apr 2026 02:41:52 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.1) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 02:41:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OAAcFwP4MgVCgZpeHIgXrOjXbx5/aCt2y4UMht8nx0r89UY7IBpHAOffnnJ5gVMC89DXJRVQbdc13hqc/L6h48G4y9KoNHpV4f6M3zrB8iygdh8pEvPk4s/E1hmtdO9s2sZG/d8l0jxU6NB6xIp75DfZKDn1u3zYCxHBuYvrTTeBIpq/Y0ik6Sr/OPuqMmLeN/sFkI6NvuPuXokusCbWDBy5kCD+hCoAabIiI28v58iT2Q9jil0tpS7IDh1FgNYhfnGTzjePdKkCOXqSTps6cUYqryzU1FpWIFfyoz/+E3nVjEAwc+pgvf6GyvpzmPYxeoldGq+8sfVWJcIjbkJv7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xAnbBptgKVsQcey8Gdf9t/VAyH9hjmwD7npOli57J3U=;
 b=azEWDKsB09SYK+97B7SWcu7infWkPVZcRb3ui+X6+GCvW+ispvRAfp8R3OblY7BLvCmysnhlmBAuNlv/lKS0ecE2r2xgEuFIaNQsagytYKb97DRPXCVNijUZSFMygNOzT1ktD5FmRJoBTPmdPjahbXET6d1hivQN+XwCtXDx5Jjg2Bi56xTlTiBEmfsAquG9KdNOKiGqME1ukA4h0fwCNHqQQf4zFCA8AcICzw98on2N9oFJKPi5pC5H3xHtgF81GVYJ4/MeQbTvLSB0Bpc0T3XMLQ9MFGrB10vV1pQfuEnK+AJ+EfvJANnzlOHBWEOCJ099kKjkmPJ7G0KKB5vPlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CY5PR11MB6092.namprd11.prod.outlook.com (2603:10b6:930:2c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Mon, 27 Apr
 2026 09:41:50 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9870.013; Mon, 27 Apr 2026
 09:41:50 +0000
Message-ID: <b2d17381-93f1-40e7-8fdd-fe1c83089a31@intel.com>
Date: Mon, 27 Apr 2026 11:41:44 +0200
User-Agent: Mozilla Thunderbird
To: Aaron Ma <aaron.ma@canonical.com>
CC: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Kohei Enju <kohei@enjuk.jp>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20260424030345.1140665-1-aaron.ma@canonical.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260424030345.1140665-1-aaron.ma@canonical.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0117.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bc::23) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CY5PR11MB6092:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a67844b-7635-4961-6484-08dea44134bc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: bIIrprOmxSdVXMaEqEknEicdPrietj9n886VSJoB6aNCVEZg8Fzma5S2OpCmo6yQYGotU35Wx4dk4DQLn18A70bwagxRIwGAmmYoYUBegnvG/UGIQcGSadkNTMssj07CyYbWz5fp1IwmAbR2AETx1nmmmC7TZORug9raOJ6S4zD6swYHtHyAEPfau1js6P74FdEWdmK17h9vj3+beLC8TUNscWGGcnP6d9q9nf4JbaI8HHUhal1PdTCUwmULT8YAIMHgLSwmhzLxsTVRXhJ4ryZlsVVyPsFOCbEki981B8W2cZt/3PWRbShEk9C+gKrAIwr4WDC+BTh83xTRW6vbFYivczsVPZ6JMfZIndXMVsW1e8nRk0GkOAJlgP5Os5aaNWdNuhR2lQMHGbg9F3T008iEYyfXmgXXzGI+uIXP/cvDk+cr3L0m47BgZQxiT1Kd62bTOsEL6DKvFLkiH3DSpBfi5/RBEhnVQUaqa1pJatc8Q8HOMtSG8uZNfK/xZAvZrQ4KK2hKoVtOS28XT6yEmGPH1RemaTfQvTtPhqrKNVBbNH36Vwnmv84fEjrvA5dlzl5xvwNIQg8DlHK6NHm5M5oXiobAPN26TBT5wI09kEWhVzDdjSKZTAP8cCKlHxluNr7goAFGJde8DvPou/wg1Gy78BTUaG03bjbCfyvsGwy2dU8rFfH9uaYUkyrSQs9t/Ak6AaFtj8PsTGcFoC9Q82cS3zoJpMVT/NBymu0P5n0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c2wvZmZpRm83UkVlcEphQU93b1RSZ09mMmY0M2lLZnh2czJLcHhCK0drR0FM?=
 =?utf-8?B?YXo1MVFyNlB2MlNUZU1aRUFNTFkvWDVtTmYyUHhQRXZ0eWRiRG9rRmVMZklM?=
 =?utf-8?B?ZlpqU25mRW8zUCtvRnpWWjZjNkVDMk1FdW90SE83WDdINThKT3ArZkpyc1dZ?=
 =?utf-8?B?TUJRcVZFSVJ4ajgvd0xkaUtMamdhdkluM2lrOGJ1bjhKeklBTjZZdmZaczNX?=
 =?utf-8?B?TFdvNWRrSVVjcDg1eld0N3JpMEV2UnJSNnRhWmdBditLT2ovL1FSRnJNcUc4?=
 =?utf-8?B?dzBJNDZRSFpteGhDelJ1Wml0bVRGS0VIMlkrYUw5SHRqMXlnSUhiYkwrVHpI?=
 =?utf-8?B?MWJIYWR6Tk1GK01TOXFYUnNlbSs5bk80NHQ3dlRROUNSL2x0WFZsODdYNkNM?=
 =?utf-8?B?VHVvQXF3eHljejhIejhrNG0xQ1VZdHFsUTVHaURBeDl6cTF6RFEvK3NabnBv?=
 =?utf-8?B?WldHYnpJUkxtcW5HL0tBeU5nTmV6eWVFczZFeU9WYnNkTDVXa1RSb3pwZmts?=
 =?utf-8?B?cmp1ODNVZy9yeFJzMmlDbm1UTUZrYitMK0s5bGRtRVJDdDVwMDJPMHdUUDl3?=
 =?utf-8?B?aHdPWE1kd3dpaXBGaHUvY0RQb2ZpbWoxaDZBUkZYaEN6N1Z3Z1g1K3lDVjdI?=
 =?utf-8?B?dU1EakNYUzNrOUR4TWRMSTJEMmVGZkNDL3ZsLzRIMGpMM1V6dFRuZUh5Q0lL?=
 =?utf-8?B?blI1dmZySGdsdnRKeVVoTkw4WHVYSDhzSDRBbW5LcHlEdktNRXBoNHJQc3Yr?=
 =?utf-8?B?TlhRWFIrcndBVnV1bzZZVm1WVVFkNm9iN0FLdzFrRU91YkcyM2d6ajV6NDMr?=
 =?utf-8?B?Y0krek92YndYckNLa1R3dGFxeXJqRHhvY0ZxcXhOZERpTlFNVm9kTFV5L05R?=
 =?utf-8?B?aEhRS0k1cHRORmMveFJhMGhGUTkzNklXZks5eFJySSs4bHVqMDNNQmRSbURX?=
 =?utf-8?B?SWNUcUorMW9oYnhBdlc1Qzg2MWpreXVRc0xyYVcrdFBCcnBvWFN0eVFBWERv?=
 =?utf-8?B?cDBqMmJ5UVVRNnU5ZkRlSkJmVUpzUllDSUYxSWVhWHczTXRsME1RcnhiTE91?=
 =?utf-8?B?ZU41aVZOYlNaWXBJdGVvZ0hXRm42VmpYUkQ1VTNIQ1YrVGphWUxpcXF5Smpi?=
 =?utf-8?B?cFROQWxWVUNyNHRYTUg0SlZKcFJhTnl1UGozMjJMNlBoK1JtM0NGV1lneHVF?=
 =?utf-8?B?MXlmbU9ucG1KSWtWMUJXNFB4aEZDc01tVlVscEcyV3NPYmJDaVo2NmFnUTBP?=
 =?utf-8?B?bmxDRTlXTGl3bTFhbjhVTUYzQmVQNkNORXFabHB5aUJWTWpUTDUrajllak8z?=
 =?utf-8?B?bHd3dWZubTBjQ2UxeGRBeHZKTG95elNSeDJNL1lvQTN1akNtRDdYUngvbVUv?=
 =?utf-8?B?RUpqK1YwcjdjQ21pSFhiK3VlaTc0bmZVUFdTMGF5amFKNjQ1Q0N6Y0szdmtp?=
 =?utf-8?B?cTJQYVZYRnZlbVFhOExVenhqeU94eEdFazgvS3NYYzQ1Z1UvNlRoQXpWaUpu?=
 =?utf-8?B?SzZOT1Fvdk5uckd4akJWK3A2dTZsM0J4cml5R2lmV210c2pHVTJkT3FFYUhK?=
 =?utf-8?B?T3Bwdk0xVUd1dmx0a1FhaEp4Qy9ydHU0Z1dyZ0IyNXNWdmhaTnJNVFRNUXQ4?=
 =?utf-8?B?VDhKL3gyQ2RnaHNQNlFJQWUzd2NldEpZOEFtOG5kdGZEWlJkWTJOY0QwemJ6?=
 =?utf-8?B?cEJPdGIyNC9tbUlpc0hqWHJ6RUk4d1RjUlR2alhLaHZIZVErbVd0OGFxcTZ0?=
 =?utf-8?B?N2hndDlkUDQ0QnlmT2xueHE0VExaTDh3VnRmLzFUZW1naS9VSGtoTGJXUTdv?=
 =?utf-8?B?QUZPVEw4eUhCYnFJMWFkaS8zT0lwQkFZOHR4TGNiYmN1QVBrWW94cU9WNFZs?=
 =?utf-8?B?MkJ1bHZoZ3lpaitSQ1FLSVBrUlZTSWx6eGl2ZHQvbXN5dzhMLzFCRGNSTGIx?=
 =?utf-8?B?N0tuWjRBMnhLMlErdWUxbE1zbnE1eTBmRlhYK3JrcXlYQUVaU2JzU0p6cFRa?=
 =?utf-8?B?MjJzNjYyNVNJQUZ0YVByeEM4dE1yWGxNT0tyWjdyTER3RkppUXBVY2JZbDdl?=
 =?utf-8?B?ZE1hcWVGUlovWGlrZ0FRRURKeThKaXAwVTNKeTdCT2JDY2g0Y3RidUlFQkQy?=
 =?utf-8?B?QS9tNGxwOFJLTjA2UkV4ZjRtUlJ1UHZzRTVwNGlFK2ROTFcyUWpCMkJKSXJD?=
 =?utf-8?B?dm5CNlpFb2tWVWwvZ3BNMUxjZVFzbXVTTGNUWnpIVzFKNXV5NTF4NHNZRWNv?=
 =?utf-8?B?SFFub1M3Wk9BQkZmVlBRRTZzTFVaRXkyeFJxSjJLSFhoeUdkd0dSbHBlZ09j?=
 =?utf-8?B?b3N3WUZPL050RlBOQ0xSSzJsdVJuSjFnU0hSbzkxc3RaeGpIQ2ZuakUrN1ky?=
 =?utf-8?Q?7EPeDcxkg/d9OTe0=3D?=
X-Exchange-RoutingPolicyChecked: BC8XVrywryV+E51i7dwoS4C4KLMZcoHnmldcYKhhJCRIlVgkgvV22LyAUMeueEiGPOjjoNcq5D5ngbBxgTiEYWu1aIG4J9EXO+vUyLByYx63RwR17yhFXjqXUBUk0KIEPk2FVw/1sSso+WTRWnVU9lBuuXS0EqVKX8/Wjy5NCRU26SJC+ezcnWs/yiai5o090H2dpOGuaeN9ypcevtKtpMZNomgb61KwSHnKNamIvcDFV4W0+oMO38OJ1oM9d83JiDyDgzwBgo/CVgjCzLkwTC+BUuw5WlG0Z5NbehWxlGBERkcqdBg/omDGFt5LaZLJEOzPtAsiNplTsEUW4vCPkQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a67844b-7635-4961-6484-08dea44134bc
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2026 09:41:50.0363 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nD6sa8G+G/Jm+OcXzkGo5IdV0khvvMaDIgDQf6mudxwA6svr67tWqAJOoxYlAMTcGQnPVXHg1om3pTCdjOLAIlI8eyjcsmNW3vuomYlMTHM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6092
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777282915; x=1808818915;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GAzpzT+g/bdeid4JxQu+IKqhRcmR4SMX6NELPx7APc0=;
 b=k/5c4N3tmBwgF9uR0v0jv11q1FQ+YEs4gTwOu2qGDnUyuFCDOCoNF0uU
 AOk04kSiJItRjAQGrv0TvYB4/HHNYt1jmLRU71gVP1vwzfvu+GFouFhxn
 KzhpnZEHXUxAy1Ff1Sba+2nygYLwC2H059R1EfJQaad4edVPAwiMAfJ2K
 ctpIreMkWIiFB/f232+tKp/Sij5SmBOJ/iRTZhaULIS802S2RMe6UxJYz
 UnniofBRk6JAq++Kt/AcZbqdtNlTzT3OIR9ma0/FuR3gOjE2wTIZDqm4h
 6X5TT3XyH02/gIUPJCEHgP28HMaX0ivxThiDxUME88p8F7hut47u/5rfj
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k/5c4N3t
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] ice: wait for reset completion in
 ice_resume()
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
X-Rspamd-Queue-Id: D474B4700A9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aaron.ma@canonical.com,m:akeem.g.abodunrin@intel.com,m:kohei@enjuk.jp,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[canonical.com:email,osuosl.org:dkim,intel.com:mid,intel.com:email]

On 4/24/26 05:03, Aaron Ma via Intel-wired-lan wrote:
> ice_resume() schedules an asynchronous PF reset and returns
> immediately. The reset runs later in ice_service_task(). If
> userspace tries to bring up the net device before the reset
> finishes, ice_open() fails with -EBUSY:
> 
>    ice_resume()
>      ice_schedule_reset()          # sets ICE_PFR_REQ, returns
>    ...
>    ice_open()
>      ice_is_reset_in_progress()    # ICE_PFR_REQ still set, -EBUSY
>    ...
>    ice_service_task()
>      ice_do_reset()
>        ice_rebuild()               # clears ICE_PFR_REQ, too late
> 
> Reproduced on E800 series NICs during suspend/resume with irdma
> enabled, where the aux device probe widens the race window.
> 
> Wait for the reset to complete before returning from ice_resume().
> 
> Fixes: 769c500dcc1e ("ice: Add advanced power mgmt for WoL")
> Cc: stable@vger.kernel.org
> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>

thank you,
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

> ---
> v2: reword comment to clarify best-effort semantics (Kohei Enju)
> 
>   drivers/net/ethernet/intel/ice/ice_main.c | 9 +++++++++
>   1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 5f92377d4dfc2..a81eb21ea87c1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5635,6 +5635,15 @@ static int ice_resume(struct device *dev)
>   	/* Restart the service task */
>   	mod_timer(&pf->serv_tmr, round_jiffies(jiffies + pf->serv_tmr_period));
>   
> +	/* Best-effort wait for the scheduled reset to finish so that the
> +	 * device is operational before returning. Without this, userspace
> +	 * (e.g. NetworkManager) may try to open the net device while the
> +	 * asynchronous reset is still in progress, hitting -EBUSY.
> +	 */
> +	ret = ice_wait_for_reset(pf, 10 * HZ);
> +	if (ret)
> +		dev_err(dev, "Wait for reset failed during resume: %d\n", ret);
> +
>   	return 0;
>   }
>   

