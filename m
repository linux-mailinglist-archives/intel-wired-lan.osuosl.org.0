Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C9B964B15
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 18:07:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E4AE81947;
	Thu, 29 Aug 2024 16:07:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Yblb5sfbX-vK; Thu, 29 Aug 2024 16:07:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 17C9A81819
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724947656;
	bh=O1s8sKK1oGacbyDT9sv8ECtA1YBX4IlYqvgJMWOiIAQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UINbuQm/geHuR7NdsxVGn9LAa7jXg0y1qqZtQay3VwWhfYrfc8del/ciWTYKwViBh
	 L4e1XC1EzbrTFav2JjFheOc1TdhqqV0PtU3lSt7jfI79m63k7w5iU2sc54DbbvJS/t
	 o3iM2DbKTWWuWmM9NJp7Qc3oUK3VdhB8u8OnuNCqV2VUFoG2Q9YoX/73vY4fHqU/DE
	 y6WbxANxizIk56UB0WsMd2nFCfOSJPMCaHp8P0Eq0qEw6I26twnDl2KDrEli3Z6f4X
	 hg/gpLDeX0GEOYRh6qaOy8BSj8E6o3dAavGyi/M1uVO8gNQtZ1WC5B+8jUqksHmcuq
	 avfuG9WwofAkw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 17C9A81819;
	Thu, 29 Aug 2024 16:07:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 14A991BF84C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 16:07:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 00DAB80B15
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 16:07:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id COhV1jMr4JAb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Aug 2024 16:07:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6839380B02
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6839380B02
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6839380B02
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 16:07:32 +0000 (UTC)
X-CSE-ConnectionGUID: g+mzfDAeTBO8jjhBnXhZVQ==
X-CSE-MsgGUID: DWim2SiBQjypz8wkwZG/5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="34216957"
X-IronPort-AV: E=Sophos;i="6.10,186,1719903600"; d="scan'208";a="34216957"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 09:07:31 -0700
X-CSE-ConnectionGUID: ofLzSjIUQuO+Bo7J4vXd7Q==
X-CSE-MsgGUID: wxADZoRzSByXwKmyUHy6eQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,186,1719903600"; d="scan'208";a="63250500"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Aug 2024 09:07:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 09:07:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 09:07:31 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 29 Aug 2024 09:07:31 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 29 Aug 2024 09:07:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C/jMYSjAgTIZGwim90GNHHvItn87hLlTc9eTmTVW3WUw2uDlThLiM+jUPpT6b9w322hLBbc+E6rUCduSaLgRM1rzZ9MGvQbg8sgcewuYPKhxlRK7NFycC7rAACB0ze2JvSlAGaF01ghe5ACdIucxPPso1ui3q2KAdQf656TjYdWgNv7WT2FvdN6A7OrkLQPwH1kj2k7fZwwArr6m1fQY8rtcZWIioLMQCFxTxpe7A56jrRHfHB8ij04lTUWqABx3Fubtv8Tu29e1alXpQnpbob2ZVSX2LcD5PvJtanwUAWZ9IgE2igan6vM+K6O1Onev1TVqcvvo55fCUft4fbQFzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O1s8sKK1oGacbyDT9sv8ECtA1YBX4IlYqvgJMWOiIAQ=;
 b=hFk2F+4vrev8NG7CNH2ncQ2YUuCUH2rGm+DkoTHp+f5TX/fCGfDYI0Un2bWfGXL1jBgkWt/iHZnhbiRMzbXtWcFqNLu6QJCsNiK3qDBqmCCNaZBpNSppTrE8gJgInJsQfwIMfwxDVDo0j5nQmPkZUllkSeClq9uPzc5YLYFpeI5EPISIp4Re+iEs0NAKO10F6kf2rw/AXTngEDHnAE9rS6l/EjYQJYsEo5g//NtIPMc4RVH+RoHSni3H6cDyKBVAhZxlryQAsObHFNsJuEMIsXlE5i5HgdHoxSGg+ynV4IZMJUy+Pk23gnXLnWz8ynXAM7u9cGcmw28BqreCvCIrQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8431.namprd11.prod.outlook.com (2603:10b6:930:c7::17)
 by SJ2PR11MB7671.namprd11.prod.outlook.com (2603:10b6:a03:4c4::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.26; Thu, 29 Aug
 2024 16:07:25 +0000
Received: from CYYPR11MB8431.namprd11.prod.outlook.com
 ([fe80::546b:dc38:a70f:1c27]) by CYYPR11MB8431.namprd11.prod.outlook.com
 ([fe80::546b:dc38:a70f:1c27%5]) with mapi id 15.20.7897.027; Thu, 29 Aug 2024
 16:07:25 +0000
Message-ID: <b3e6a493-ed08-44b1-9cd5-60623318ad83@intel.com>
Date: Thu, 29 Aug 2024 09:07:21 -0700
User-Agent: Mozilla Thunderbird
To: Manoj Vishwanathan <manojvishy@google.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240826181032.3042222-1-manojvishy@google.com>
 <20240826181032.3042222-5-manojvishy@google.com>
Content-Language: en-US
From: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>
In-Reply-To: <20240826181032.3042222-5-manojvishy@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0233.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::28) To CYYPR11MB8431.namprd11.prod.outlook.com
 (2603:10b6:930:c7::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8431:EE_|SJ2PR11MB7671:EE_
X-MS-Office365-Filtering-Correlation-Id: b64b4407-533a-46fc-19ec-08dcc844ac00
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dFNGK1M4Ylp0NE9BbHRub29xZlAyRFJYQnRCbU1KWHhodlR1WTNyQTF0Tkd3?=
 =?utf-8?B?dExMcUt1NmZjakhVTko1ZzlTeWdrRTJxc3d0OUpJSlVMbC82SGlaaUM3TDFq?=
 =?utf-8?B?UHRNUW9oLzhwTm9zZER0aStLQXpCTVZHUUpwd1M5RlRTTHJUWXZ3Ty9KT211?=
 =?utf-8?B?ZkdRR2M5NjRBMHpJb0FMSmk0cUdKc2RnZU9BY2pDWStCRDBVczFDUjNsRXlr?=
 =?utf-8?B?TVlQNjBRdU14UDYzSjlFY0EzN3RNYUp0dHluQnNQMDl4SlY3QmlqYTZrdk1r?=
 =?utf-8?B?UkoxZXA2ek5ONnZCaG1uUDlNb2Z0WFZUek1BZkxmN3F0OGNEL2laVmp3Q3Rn?=
 =?utf-8?B?aDRCTVlVd2pzUzdjankrZUM4QWJmTzVMeGZuV3E4THp6QXgwQzJNVlhCTXhB?=
 =?utf-8?B?ZjJxcUczY2lUMnZzQUY0NjRtNUNBWFR2V2tmK1J3Ti9xV1hoaldMaWhVT05r?=
 =?utf-8?B?RVRWc0dzbXNPTVFKVmwvaXYyMlNPWDdTaitkUDJnK0ViTFFpQkdVNGtPWldk?=
 =?utf-8?B?eGpjRi8vSXoyUVI1QkNuQmNaTHNHbjM4elRBY0taaTB2dHdyaU0xWHRnZDJC?=
 =?utf-8?B?RG9pZ0dYTHo3bVNMSVg3MUlmM1k1d2RKN2RmZm5OSEJoMkRXK05rMGlkSVBV?=
 =?utf-8?B?SzI4YUtxZEZpYlF5NVVFczJGemNzSWRCZ1U0bXRNVnhzVFAwNnU5R05qdyty?=
 =?utf-8?B?M1lvc1JXc3lzSWYxSDB5cjJWZjJYTHFZZmQ0VmRtR0tjRVpYaS95RE9GRHdm?=
 =?utf-8?B?STU5UXVZTmZaNG1hL3h4WkYzS0dKNTJSdGcrRVNrcTdST0lScmxpU05PYmhO?=
 =?utf-8?B?bUNEVmVub3d2VlpyQ3MvU1Q3V2dyZ1hSeDJmUWhxdDlZbitxSjhheWY1SHdy?=
 =?utf-8?B?eEhlQy83aHdDN1BZQks3RnVpS0ZhbVlQMVFNMWp2ZHVzWWdqekM0amtvTDJT?=
 =?utf-8?B?eENVeThiZlNZVUVMZ0hyRCtaR3UxbVgwQVdsN3RmU3orRUhLcCtZOVNTUGsv?=
 =?utf-8?B?Uk9MeTZvUDBrcytHZjJ4UnhYYldoUWZKcVJJNUlrdUNpQUJZbFNqTzRpSnVK?=
 =?utf-8?B?Si9JbnJxZUVxb283b2dSQ3ZOWnE0MUR5TTJqMkRzamlOdEx0U051REN1Zyt3?=
 =?utf-8?B?TXB3WCt6WWF0cncyYjFiQmNJV1BTeFF6cWRoTU54SEpmY0ZSL3pyakJyU2s5?=
 =?utf-8?B?b3BjMGZXL1dleGZ6YmhGOXlXRitSZUxFb0RITE9meFVyZGphdklaNTd3NVlp?=
 =?utf-8?B?SjFjNXhpYTBtUG9KQVV0ZHRmYTN0NytoSHY3Y3lzNjBnaGdMYk9hTzdocDdV?=
 =?utf-8?B?UmZNVWcxbUw1SldpKzJuVW1CS0VYdGk4U09oWnhHK09pUjJSam12VmpPWXlE?=
 =?utf-8?B?WUZsZWdFa0pYeDJpcjc2QkN4T1pBbU9iQWpzQ2wvM2JPclJYUUM5QWs3bnM0?=
 =?utf-8?B?T0M1Z2RPcnVwTExpUEZEZmpXTFlSQ0hmRmk4V3kzTDIrRkVhejBZdnYrN0dC?=
 =?utf-8?B?dVJYY1Z1RzFzR3B3d1gwK3VNM1VsREpqcmhaakZJTDkrc2pLVkd6U3NWSVph?=
 =?utf-8?B?Y1hSOVJkUW4wTXU2M29WMnlZMGtGYkp5T1kvT29kQ0RteFBqczVhdzRPajRF?=
 =?utf-8?B?WTRCYzBnVVhRTmtxTnV5K21DbmRRMkpQNDlBemZ0dkFhdlY5cURYVnRrTFdD?=
 =?utf-8?B?ZFNIU2cwRXMzM2VWWHZ0WFR3ZjFrWlE0aUVBZjYzTmxYL0UycFNvMnRBMjFp?=
 =?utf-8?B?bU1VeElOcWQ0VXRxWjBZS1RBL3JtdjZtYW9yNkZaenU0L0VOb3NnS09RSWdY?=
 =?utf-8?B?ZkxUcTZKZG1uWE1OVlVJdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8431.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SXNGSVhWSlhyaFdEaWUvWnVaV0NVc2xvWndHZkdlcDR0R1huaGFLc01TSFJM?=
 =?utf-8?B?MDJ5dTdUM1RNRGlYSGVmNzRmeG03Qm54ek13bUZrcEg1b1ZBZFNQemMvMU9n?=
 =?utf-8?B?bksrOWRGeDU5MHZLV2xjd2dTdjRWVXg4VEZ6dUZLN3lNTUE2cUNZTXh3SGg2?=
 =?utf-8?B?L1ZRMXkvYWhuc3lsMlIyT1pWZVdQWEZnOTNrRVY2a1ZlYTFoRW0yWERKVS9C?=
 =?utf-8?B?dk93WGNnQUd6MlVlUzIxV3o2L1RmY0NBcE5uUEtuQ1FIQldmUmx1eUVLWFBL?=
 =?utf-8?B?L3NnQXJWWjFIRElDTGVCSmhHTDdHTW85OEwrcnJibGNvWUZEbHpiWWI3d0M4?=
 =?utf-8?B?cm5rWkJGMVh6U0VFbzdBUzAyanpjUHI1dTJZVzA2YWN6VmpySnovOE9BVlNx?=
 =?utf-8?B?WFliRmYrbDFIazNCM1pWdEVRcGswdFpldTR1ZGNBK3p0dTRFME9rL205TWNO?=
 =?utf-8?B?MmVWcHl2UHBWNGtMOVpKMC92Q1h6SnJOc2FPaVk4UmpyTjdWWk5hTSttSTM5?=
 =?utf-8?B?UUdVOUozWCtUaUNJVTEvK2ZVUDI0OTFnUmYvdnNRWUhSS0IycnRzaUcxeXNn?=
 =?utf-8?B?dEdJNFBvODJLRGx5Z2t6MnlNZkVpOXpsVVU5M3F6V0ViYVZwbFhzTjdkTWR0?=
 =?utf-8?B?aW5Kb1RreUptN0ZTaU9JNjBYMlFGU21PY01KeFBBSktudjFpeFRpTGdodCs2?=
 =?utf-8?B?cUJrZDJDMm10akVRdnl4c1p2djZaKzNqbTVFckNycFQrMU4yb05qVDN3SWQ5?=
 =?utf-8?B?cDZYakI4eXZROUdTdUhnakhhNUVxYk5ieFBVSGJDclFMdkMyY3R1bkMxd1pp?=
 =?utf-8?B?dzhQQVJYdTkwTWVvZVl5WVpSUjllZDdPWHBZTVNNVXNyTEFwYVBxRVJIaFNQ?=
 =?utf-8?B?Q2h0S0JYRzRtV3VvZitUZWFWT2dCUURvd2dKd1NuZkdqOEhKTGUxQXQ1SUZU?=
 =?utf-8?B?MDhLa3hjbTFLRDZnSHFVbytJYnpEWTVkMVVTNGFNekFSS2hjWUxPRERSdGpZ?=
 =?utf-8?B?QVBNSjdGR2plUVlXR2dNZ284WHpZdzIwSVhDeEFDNWZDcWhEU0haSGZWZjlG?=
 =?utf-8?B?VHR2cGxVOUdmWTJwaVFyZnZlWnJkUGtDRnZvQlduV0VQOG1wWFdzOFYyNEtp?=
 =?utf-8?B?ZUZYL2htNFMvc3NmdEcwODQwNFNINmpWMGV0V2JvQm5MK0x6M3N5SmZheHVt?=
 =?utf-8?B?SDN0RkUxVU1HZ2RmalBtRXdJQS8raHJGT0pGeTRtdG92VXEwTkYvdzloeFFv?=
 =?utf-8?B?VTF5Y25YYVVxNC9KOXVnNzZLWHFtMUs0YjJqV3ppOTFuOUtCYzNrMGdRVzJa?=
 =?utf-8?B?d0xlcS9Ha25RM2JUSE5iSjRoYlNDbEZPQXRoaEl0bE9OT0NudGtsWWsvZkl0?=
 =?utf-8?B?dEhuUjQ4aXJKdXlIR2duTlRFWVpmcnNQK0tEVy9PbjBDWWM5bmVRYXRCNVAr?=
 =?utf-8?B?M3B5VWV1dXpybkhWVXVYZFhSZUJ1b0lPK3FURndpNm5JakVZRmpMUW4yOUxp?=
 =?utf-8?B?ZWM5SXJubU5OTUpvc2JvbjJZT0w0c1N4WkFiUFIyZDZVNUZmRjJtSWVuMXFv?=
 =?utf-8?B?UnVnU3FxMWROLzdGVm5FSVk0VkxNZjhWblk4SDltL3J1SnQ4Yml0cExhd2lL?=
 =?utf-8?B?WVVZNW5xVkdwNTVWampRalg3Q3B2amJ1YlFmNkp3MDVSOWsvWWg3Snk2ckUx?=
 =?utf-8?B?MjhrSG92WEdMbVliUTREbkNoR1BhVWM2bEdXcUxTV09MTjNNcHUvUnVrOURZ?=
 =?utf-8?B?dWR4dXFpY25BWmNYMEZVS1JrYk1PSHhDNzE4TExMT2Jlc2pvRnZkUnBWRitx?=
 =?utf-8?B?NktDcXBnQVVpdEE2cm8vclJyYjNlb3VCOFpkZnRSU1N0MWdDT1BTYWUzczRZ?=
 =?utf-8?B?M01hRmYzT3Z1RTFlYmRSbjZCdjNCa0NzTTR4UVFtWW5wLzZMaXFUcTN2aFBz?=
 =?utf-8?B?UTV1TERoRFRLTW5pa0dKQTArbjNHTG9YZXpCMkxqd1FqVnEwWldFbXVyVjlQ?=
 =?utf-8?B?KytRWVBLUzNIamZVc2lpRE1RbmUwT3ZWL0wyVFdkeHkvLzE3RzJDVFFnZkRO?=
 =?utf-8?B?ZzJrdnlwRmtyOHRhUW00K0ZHWHFqa0RncEpETlA4ZWxiMnE4K2IvUHg0ZEhu?=
 =?utf-8?B?TUF0ZHJZam9hQzk4b0M2VnV0cU53V1hGRTBwVER6N1BVaS9hZG5aZUhleDdX?=
 =?utf-8?B?WlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b64b4407-533a-46fc-19ec-08dcc844ac00
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8431.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2024 16:07:24.9910 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mu5tgCcQSAus1fgDJJgJ8ot87vr1b3QhHwPg37bAAaahQhAjzA6qWyEuDrsAIBuptrxZcjIHW977ok+YixNt7PgNzQUTXn++5+zpymNfgJI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7671
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724947652; x=1756483652;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ATiVmqiIjoj70Rs5E+108WfY6uEZPJNaktvjstanvQw=;
 b=U0nYurff5uD2bDrC+kTIy1iTzd9DpkWtnIS/08CYJidWncmFiKYp4BgE
 9bPO8jJ48YpYkz9UWuEeKiBSR/EqrKYifqKyObQkvKzhgGKTq/QaRFRU/
 Ygf/KE+C6DHaT4rbKeQ1D4pkrOHCtD38Xu3q9BWovvzgCbdLGoqVE7xsz
 H+rzsjCrWNIwpRi+6XIopmY3+f9nZZWgPLhYPsmEOSNzDYWDDrqqg2Lv8
 m9X1wg6nHbWtywhqsCrQwqcApcG3DOe60SvBzxxTqOwZACMbkKhgyevof
 r3pJKQQcXyY1284aQ1LFFJhdqXDdqcSaXL8VKteFWFIW80caLcfgqyFmX
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U0nYurff
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [[PATCH v2 iwl-next] v2 4/4] idpf: add more
 info during virtchnl transaction time out
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 google-lan-reviews@googlegroups.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/26/2024 11:10 AM, Manoj Vishwanathan wrote:
> Add more information related to the transaction like cookie, vc_op,
> salt when transaction times out and include similar information
> when transaction salt does not match.
> 
> Info output for transaction timeout:
> -------------------
> (op:5015 cookie:45fe vc_op:5015 salt:45 timeout:60000ms)
> -------------------
> 
> Signed-off-by: Manoj Vishwanathan <manojvishy@google.com>

Reviewed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>

> ---
>   drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 9 +++++----
>   1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index 30eec674d594..d8294f31fdf9 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -517,8 +517,9 @@ static ssize_t idpf_vc_xn_exec(struct idpf_adapter *adapter,
>   		retval = -ENXIO;
>   		goto only_unlock;
>   	case IDPF_VC_XN_WAITING:
> -		dev_notice_ratelimited(&adapter->pdev->dev, "Transaction timed-out (op %d, %dms)\n",
> -				       params->vc_op, params->timeout_ms);
> +		dev_notice_ratelimited(&adapter->pdev->dev,
> +				"Transaction timed-out (op:%d cookie:%04x vc_op:%d salt:%02x timeout:%dms)\n",
> +				params->vc_op, cookie, xn->vc_op, xn->salt, params->timeout_ms);
>   		retval = -ETIME;
>   		break;
>   	case IDPF_VC_XN_COMPLETED_SUCCESS:
> @@ -615,8 +616,8 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapter,
>   	idpf_vc_xn_lock(xn);
>   	salt = FIELD_GET(IDPF_VC_XN_SALT_M, msg_info);
>   	if (xn->salt != salt) {
> -		dev_err_ratelimited(&adapter->pdev->dev, "Transaction salt does not match (%02x != %02x)\n",
> -				    xn->salt, salt);
> +		dev_err_ratelimited(&adapter->pdev->dev, "Transaction salt does not match (exp:%d@%02x(%d) != got:%d@%02x)\n",
> +				xn->vc_op, xn->salt, xn->state, ctlq_msg->cookie.mbx.chnl_opcode, salt);
>   		idpf_vc_xn_unlock(xn);
>   		return -EINVAL;
>   	}
