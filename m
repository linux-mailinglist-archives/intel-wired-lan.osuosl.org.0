Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A5DA8177B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 23:17:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 960CD40D8C;
	Tue,  8 Apr 2025 21:17:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QZpVOJMoF6iM; Tue,  8 Apr 2025 21:17:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF9B6411E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744147024;
	bh=HqXsCTnLblqMgwk3eeHXT6feF59WaU2YhkBvMlUGABI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eC5u0Cp08leKO4biJz6AENa3IfsXlcrwNdExI6sCHYxE8mengTzmWwkkix6to0nAn
	 0dm7QNMuGkAf3+9hE30/XSEgrKyfpbOQkjFtb/kdYQaQwFc+7PRYtLnZl4jw6QIBXU
	 +k0Euu5ZMlkNsXw370sfJM7GoavAuXEi9X5opjsiKUhwcA2PyGAHsnLniTc0ZP5ANl
	 EsHMuUmJCwJ3X/t6oKRlPCZo21vS1z7zhp9vEkrovTEQkonbnSC3/xelLvatLKHZiR
	 yFuTIv7BdkJ/s9LCpe46gvkdNgSZyiaTLg0lTUewAUfDNK9U1oAHORc8mw5Z4ITjI8
	 X2peBWte1kOGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF9B6411E4;
	Tue,  8 Apr 2025 21:17:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3BE8A1F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:17:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 38C4E4060C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:17:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RLre4KMesfqb for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 21:17:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 817CE400D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 817CE400D7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 817CE400D7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:17:02 +0000 (UTC)
X-CSE-ConnectionGUID: hiVBoawUTRKGsOcLEzTJ9g==
X-CSE-MsgGUID: ENzdxIuqSh68ljNo5LQMiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="33206381"
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="33206381"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:17:02 -0700
X-CSE-ConnectionGUID: 8gq7cmYvQKaDcESDQtQljA==
X-CSE-MsgGUID: 9ggRgLupT9SLpABUVgPJZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="128294917"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Apr 2025 14:17:02 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 8 Apr 2025 14:17:01 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 14:17:01 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 14:17:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NEE/OvTU3QgXKpZTNqoePI2EpA5KTf4E7bs88E8/awbNbqbeZGB4ksUpsoUtHWQgvbUAxske3Df5AZppjpbPD8DuJak3BBH1VyHGIY7oQGVl9OhvRgalOKBMn//huqWVgpPAQhNlWWvQadsJos5y6Q8hPWE1mma9lUqSRfBKbyNbV9nA9w461fZDMgjMbr6JEK404nljT48G0Yz8M1JtvOIbEbmjOMU/oVlMMPzBWODA1MKg/gw31N0EejkwmQOKlOx3CS7wIs8P8+GAp5zCJw8+sJJGlmg/5on6y59ECpJlwf8OiO7Lu41C/efTivDit5HF5ew4mU44I8T2jakIgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HqXsCTnLblqMgwk3eeHXT6feF59WaU2YhkBvMlUGABI=;
 b=RDjxSmvRyi4uMG3Dvv6Dns37wJhXOdNANCdR+cmCmTlAE7duHxu/YcdHqQ5rxVcLiZYSrjH/D/WXPt++wJa6VkKQSQthTKMMMW5tVE5LT9fWN7Mova9r32D5hhuIJG6vAfPgQQlxaEja2Yl/NQJgITvdedJfkIJMMijAZPvvlFftKAIdZiGSYcIJxijn+fOZHpmPomz8alq7AmRFqiW1idMSzXE+34Hvuuo6PKmxuHnWfaHOAjs8O3KkqQn9O9B3qtpadI06kruvcIgi83xENPzUsPDMLu9HqKXrFxIRbnYczOtETaIPdmmtBzy4QDbIlgIMuE7nkbyxZRAMsaD3rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA2PR11MB5132.namprd11.prod.outlook.com (2603:10b6:806:11a::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.21; Tue, 8 Apr
 2025 21:16:59 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8632.017; Tue, 8 Apr 2025
 21:16:59 +0000
Message-ID: <8e97d23b-f848-4649-ab1b-51e310757ad8@intel.com>
Date: Tue, 8 Apr 2025 14:16:57 -0700
User-Agent: Mozilla Thunderbird
To: Milena Olech <milena.olech@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Willem de Bruijn <willemb@google.com>,
 "Samuel Salin" <Samuel.salin@intel.com>
References: <20250408103240.30287-2-milena.olech@intel.com>
 <20250408103240.30287-15-milena.olech@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250408103240.30287-15-milena.olech@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0328.namprd04.prod.outlook.com
 (2603:10b6:303:82::33) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA2PR11MB5132:EE_
X-MS-Office365-Filtering-Correlation-Id: f16d6df8-9c66-4d26-aba2-08dd76e2b273
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QlIxSmkxT2VXRUZlVm1LOTFPRHM1bmpBaUE4MjRMd0EwemNLK1VpczBVQ3p5?=
 =?utf-8?B?YTYzYVBQeWRFV0U0dmh2UWlocDBNQnN4cVZCQVQ3dy8zeTgvMWsvejdrb1pn?=
 =?utf-8?B?S2xVZHh4RG14Z3oyazlMbERnWGZIOEhaQVJ6QlMrcWVUQlFEZnUrdkk4QWU5?=
 =?utf-8?B?YXNoVSszNmhIVXdmZkh3Vnl6N1FQTE90dnRkaWZTbEdpQ1VwNjE1WTg3YjJJ?=
 =?utf-8?B?K1VhejJmZVNxbGUrWDhCMUU1K2FpMHZoNWVQbzBDaVBER2EySWxmRjRQYktN?=
 =?utf-8?B?cW9zQW5JL3pkTit1VE44UTMzelZGdWkyWHZKZkVNYmVYM3ZWc1FLTWIydGRu?=
 =?utf-8?B?alVLcVEzNUk0Z2xQVS9NRnRsQzEyV0tHVzZ5TVV2TkU0T0RwNjQ5WjJuenJm?=
 =?utf-8?B?TS9aSTduYW0xZTV0SmtHWTBHUTJIb2hGTGVJWWVHbFpsUEJuRXJQT2t5Zm10?=
 =?utf-8?B?NEMraEIwL0F3MU4wUkt2dTd1azlQSkkvWHRzOS9FR3M1YVBGM2d5Q2N5M2FK?=
 =?utf-8?B?ckcxUHczaUFHd240Z0tvYXJyM3VyUitpMFJ1UVdiajFuVWVxRmJCdVZoYU5h?=
 =?utf-8?B?TzJIM1N2VzdOSlZBbjZCS25EdVVUSUg3SE1tdUVrSnE2bjk0eW5QdEpOaE1q?=
 =?utf-8?B?NGhKNGhaQ2l1dVpCRkxIdjFhVE5sbFB5Q3hCT2NjaWx3aTFhUlczWEdxSU9R?=
 =?utf-8?B?cEl6MExuQjZhR2NFanRBSXFBMEpsbXp3SE9YN3RqZkNzdEk4c2JwMW85QVNj?=
 =?utf-8?B?Z3piV0NGL0FRTVlVNGxEa0NCS2xUUzJyR25nQVdUNDExUHRJY1JJY0lvMDdx?=
 =?utf-8?B?blFiWGIxL1VhT0l1M0dRbEJRRHp5S0daK1JqbmFxYXhDQzNQcXZqMGVUY0hD?=
 =?utf-8?B?T3VQNUF5Z2ZNVkdveEtDM01zM09PTlNOd2h6TklxQ2VRVW16Y1FGeERkaFI3?=
 =?utf-8?B?M1NSSVRxSS8yeVZqSXFrLzJQVWdnUHN6UWJkMjVLMnFXM3BPZ25ubVc2dnVq?=
 =?utf-8?B?bThWdCtoV2VXMFZ2dWxGT1Fjc3NITys4dlg2WUJJeDBjYnJjS3pISnNEdnZT?=
 =?utf-8?B?RUl5WXgzOFFqejlyMjRxTDdIY0ppMVJ6c05rQUU2cmlNajZpUEFUcVRRZDk1?=
 =?utf-8?B?YWJXUjZNUjkyNGlLLzFmM0tmRU1kQWFnbmZLOS9OWVpGTTl4TWxOQ1ZQS1dG?=
 =?utf-8?B?K1pocGFYaXEyaHphelVJN25xd2ttSHB4MUM4RFF2aHZ3VHpEMldCazhaM1FJ?=
 =?utf-8?B?dDVNWEFYbUIxNUhOMk5aYU1WRVc4NGVWUWFGVUYzemhwMDBpRkJabGNieklL?=
 =?utf-8?B?N3k1SUVNYVV2S2tHU0F2anFzSWxlNVBTQWp2KzRINW9JSnVCdkpYOHl2RnFV?=
 =?utf-8?B?MGMyelNmWVJ5eGxrMXJoWFIzTng1d1RRZFgra3E1YmpGVkNaM3hRcm1JRmxW?=
 =?utf-8?B?Vkw5RXJGMkZFalorVXBsMCtlNzhlTVpKOE9OdjFwVTk1a1hGbXVWNHplTy9r?=
 =?utf-8?B?aWVyS3VkTzFiS3NNa3czTVhpY0hxSzFBUzFiN0pJSEVCT2hYZVNTVFFYOWtV?=
 =?utf-8?B?OTYxOWpWYytyY0M4S0RDU0VpenBpSGZ4eC8rUmdzVmU3NUQ1ZGxJNlR0MWc1?=
 =?utf-8?B?K0t2Z3hXdHNMeVhTOHpEdW9ZdjdGbWV3b1F6alR4WmhWL21PUkJSTVFhRWtn?=
 =?utf-8?B?OFUyQWVJWUVtU0hiaU11TVBpRkpUajkrdm85ZW96QVBIUk5hSkI4SFgvdjNz?=
 =?utf-8?B?NGxzS0lKVlJWTnd5Sk9iV2ZVVE52Y1JJbTkvR0w2Um9YTCtpOHZUcHNZamhK?=
 =?utf-8?B?NHkyZjVFaXpnTGhNd0NHZUtqOXVQRWhPNms0U3AyWmZ3RkxhR3llTGpHZzV0?=
 =?utf-8?B?SmRNY3JIRU9kaS8vYU9hbDZSU01kV0YxUXdHeVdrSEtzL1E9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Zm12eUFxMkU2d2VqT1pudExWT3hvak9MYmlpdmw2Wno0bzlSWFRLcVhjMHM0?=
 =?utf-8?B?NGZ0OTNiNWI2QTNkTUtOSzBMTmlCSGR0b0xaYzFsTkp2dmNRR085eU5yWm5C?=
 =?utf-8?B?YUp4OS96bGFXZ3VxYkxWWk1mNVkvdDZ3QWRIM21XbFg5TDc0Z3QvSDQ1NTc1?=
 =?utf-8?B?azFLdGRSUmM2alBIcStOL3RhanM1WTgrL01XYUl6YkxRUHVwOXNFL0lhMHJY?=
 =?utf-8?B?b2pscGNGdzBrM2hDOGk3RGpmRG40R3pXbU5qRlpzTWtoY2FyVlJWLzlCaTAv?=
 =?utf-8?B?NjhEdSsxaGc0ZzZkU0VTSGVZRnVjOERSeVQ0U1VJMm9PS0czTHVSdEVGTXRu?=
 =?utf-8?B?dFZDNUx4SnBVbW5qb2w2M2RJSW5CVjFqbUpmOTJvNkpnMXZFekd4ZXdoNUFy?=
 =?utf-8?B?Z0owOVRKai9TeUI3REVvRkN5d2ZOMXZnLzhNQzc5WWZmTXNHYmEzODVWMEov?=
 =?utf-8?B?a1plTjE0KzVXYmNtTDY3ZlpJQVR4eEpibko2NjI5cFgrWnNNdEVzRmMxVDFh?=
 =?utf-8?B?WUdTMFJKRHlFL1gwd3I4SlR2NTlyaVBrUGZXcEJCMEZUVGtNTUQ1VG51MGY3?=
 =?utf-8?B?YW1pT05QaXlMdHBzTzdZNFpVQjB1aWlRMzZuYmFva1QrSjBYTnpOcXJSSldB?=
 =?utf-8?B?SzNOc25FZS9MdzVEVDBENFN0VDE0cjlGQU5sRjhxMThTUnVPNGo3TldaNEhs?=
 =?utf-8?B?QXk5UmZtdC9hdjNPWHhtQUlZc3lXaVAxSldIZlNJMzFzRENwYzZnUXYrYzU2?=
 =?utf-8?B?bFhJRjU0TUlMZnN0VVNaMWI2Tk5lZlZoYlVSaFlOOXRTZXlxM04vRFJCSndk?=
 =?utf-8?B?eXd1dVRTRVk1SVlXZ0lncVNwM2JMNkREYnlvSnRMYkNKZzdFUmxxd3FoOVU4?=
 =?utf-8?B?dEVBUFR5Z3U1WEZWK3YxUWRjQzdCaUoxUmZCQkxMNzd3MTd2WFV2Sm9rS1Vm?=
 =?utf-8?B?MnpYaUNqSmZrdnMrbGNvSUpxZzNQTTRRK216WUtmckx1d1YwV1kzdmxYMElY?=
 =?utf-8?B?c2VFeEhseDBQZlJtZ2JyRU9IS3hLRklXdFFlSFhUVGRpbFVabkJCMGVpM2Vp?=
 =?utf-8?B?S2RNaG9JeUE0cnFUeUNidWJZNnpKT3ArYTY1YWFheXFsZWlUc3VnWXdjN21n?=
 =?utf-8?B?MzVZRW1LaWVtRXp5R1RscWw4cEY4cmhqUDJzb3hmNHcrRDZaUTdNMDN1YmZz?=
 =?utf-8?B?dUN5QWcwZFNpTTdPZmFOY2Q1TTIxOXlMTitLRnR5bkRDYmhrTEtpck52OU9y?=
 =?utf-8?B?SkVlTXJydzFCVnk1ODFBSXJpbVVpZTY2QzdOcVlWVWF2aDdlYlQ5WWFnYzUy?=
 =?utf-8?B?b0lnZldOSHpRcnV6bWJJUFp0ZzBtK1NVTkFaSVlBTXAxL1JPR0U3dWVaWWpn?=
 =?utf-8?B?VU5scldNdFZBdUZRU3Y5NWpKWVY3dGVpTGgxMWdMMWsyay8xQWRLOVlOSWs1?=
 =?utf-8?B?WnNZSEttSnR5OHdtZWUyVVlnZkFCNTVqRXBOVXhUOGoyenlibXRhUHVUb1U3?=
 =?utf-8?B?RGloSmVkclBxU0ppTjdsVFFLZ3BsN3BxSVZNMkZNWDZDUXlxeHpmbFJZS1l6?=
 =?utf-8?B?NTlrSnZkL2prMTJsZ1FFOXBoQ1FBN0R6TkRaRXhzTWNqOWdXRm9HcjNPQnhG?=
 =?utf-8?B?eDlkVVE5RDRrLzNDS2x0bC9jRjBpbzNaYWxvWS9JUW1wRkRsV1JRTDdyYWxZ?=
 =?utf-8?B?bFZOcWxmdmZqb1RtQnBGKzduZzBQK09ndTFvSlYvU0VtamR0eW9xa2k2MExr?=
 =?utf-8?B?a3Z3cCtjUkZFS0ZRdUNXeFhoYzFQcTFhcHRIYk91UnJRSzhyaGR6OWtNWWxk?=
 =?utf-8?B?L2FEWmxEbzQ5WTFpQmNXaUpiQ1U1SXM5azVPVmQ2RFVEMW54SXpCUE85bDR0?=
 =?utf-8?B?RDNJYUF6TzdLNGVzNmF0YnZpckJvNFIrS2h4dElBRDJYSnROWSt5U0kvSDZu?=
 =?utf-8?B?Uk1aOURXM2NkWjYzaHVqV3NMV2JzU2NZRVFSZytiVXpZckM1a1hNanMyVW5S?=
 =?utf-8?B?cGt6aE5jNThDRWwyNTFPYXhMclplTFR2RlUvTHhHbFZad3RWa21IcFhxMHBj?=
 =?utf-8?B?bUxNSlEwVG9ZMXhVUU1tY2pSUmFFUXJSR3JTcnpYYnhXQ0tUZlN3OFM0b3dl?=
 =?utf-8?B?YWMzVFg0ZGtWaEhXcldmVndMK1ppMllTTlg5Z21UNHprVGpGOG5tKysweEhz?=
 =?utf-8?B?YXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f16d6df8-9c66-4d26-aba2-08dd76e2b273
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2025 21:16:59.1981 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mGaPzPcjQz095IP1eyK1lyoXoHhXkgfYLPQY62OnpCGMkyybyMzGNCEVGPYfcF9ZvCZbtpKAmlhOQ8AeofgIt938y2+41o8GfKM/WR0nEcM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5132
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744147023; x=1775683023;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=l4t0zGtf9vvmEsvKJ+vZ3gdR+124XXscZYB8j8L4/J4=;
 b=bqVIG+a2aYQ9I1z+t6eCs2UL+fp1+QVXazCszrfCl79PURbhErI38maG
 DG9zr5YcU2xzMqwkGU+rsXnDzXX+iGhQMTNAr99mE5Ej6k2CWgWzBW1I+
 +aC8GEcLiCc0nxMeQcOiF82QW1Of2OcCOanmYYLjxMuPLIVHtXoIlMMK3
 NhiRaR+bZ4hGpOS1wtl5tIOK2OoB7ZgVV/HvRFaU0db2EVQw/mkwyjUSK
 UZDcueowJ+M5qGY9MVs8n/500os7HDByeUqmO9+vUiWslo3It/2YrbCiX
 sbyxj9QQWKK4CYXTWQsHvemD8Kb4YbJYFpGFyFflxVzmk/Q2Dcps6QPVX
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bqVIG+a2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 06/11] idpf: add mailbox
 access to read PTP clock time
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



On 4/8/2025 3:30 AM, Milena Olech wrote:
> +static int idpf_ptp_read_src_clk_reg_mailbox(struct idpf_adapter *adapter,
> +					     struct ptp_system_timestamp *sts,
> +					     u64 *src_clk)
> +{
> +	struct idpf_ptp_dev_timers clk_time;
> +	int err;
> +
> +	/* Read the system timestamp pre PHC read */
> +	ptp_read_system_prets(sts);
> +
> +	err = idpf_ptp_get_dev_clk_time(adapter, &clk_time);
> +	if (err)
> +		return err;
> +
> +	/* Read the system timestamp post PHC read */
> +	ptp_read_system_postts(sts);
> +
> +	*src_clk = clk_time.dev_clk_time_ns;
> +
> +	return 0;
> +}
Not an objection, since its obvious using the direct register access is
preferable when it is available. This will result in a fair amount of
jitter since mailbox timing is unlikely to be consistent. We also cannot
have sts be filled in somehow by the host because it might not be
operating on the same system clock.
