Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDNBIGgPmWmjPgMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Feb 2026 02:50:32 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A03516BC84
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Feb 2026 02:50:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B6654611D9;
	Sat, 21 Feb 2026 01:50:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zCqFQunojcg0; Sat, 21 Feb 2026 01:50:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7871611C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771638628;
	bh=0ZmCYsLxm7LHN4b0EbRsmWrQ4Tg08pg5Fb8gMF1bidE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wfUl9BLNtbpydA1L9XliprInxEHT3fImyOT76j7x73nGS3MOIHgMf2nJ/yv5OB4tK
	 UbQ9/95i0ZsKYbv0M+Ly4KuF/FmSjBvooH3H0wNzGeBy7L78wIeOUlaSHI/gz2pTpC
	 iJpydgRnq64NOtVtszvV4J/9uSwogYo7+6svu66ow2dzKygPotnnX51vRiMyf4Bzdl
	 cQlC5EXwlpnM+CRXNs6/63MBO/2wg0jDqcXqmBh0EfH2kspQTSt/cc5WwCz7Fd8Ldx
	 rbzP3XOhvR0YCsAadxAr35g3wsHFtgJ613/OntjDGpJHJcLWjO6VHWWM9ctKkE4Vax
	 LnGXaPiEkcn9g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7871611C5;
	Sat, 21 Feb 2026 01:50:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D14F8206
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Feb 2026 01:50:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C112161174
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Feb 2026 01:50:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iQacuUWoxlkS for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Feb 2026 01:50:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 51E65611AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 51E65611AF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 51E65611AF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Feb 2026 01:50:23 +0000 (UTC)
X-CSE-ConnectionGUID: LasT4Bw0RIaAHeF4PQ1bag==
X-CSE-MsgGUID: 8DLP7d5yT6iccuIn27+tbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11707"; a="72715203"
X-IronPort-AV: E=Sophos;i="6.21,302,1763452800"; d="scan'208";a="72715203"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 17:50:22 -0800
X-CSE-ConnectionGUID: JO32p1i4SrOW4Q4dTWyrxQ==
X-CSE-MsgGUID: 4wPR9NXvQS68TLgedwCFFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,302,1763452800"; d="scan'208";a="252706199"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 17:50:22 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 20 Feb 2026 17:50:21 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 20 Feb 2026 17:50:21 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.29) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 20 Feb 2026 17:50:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UrIYhu7nq3Exkkc540aZgRjLGHx4XvlkkUfHbOyWBKrmyoeQN/WF4G05cGgdJrMm84TE53znCWe85gOhyKYW1xt/ZwCgBIOAHQjnGnqU/Hy7gp6ObVQuJnMpmEnsMZlAjcRebE6J406UbIkeXlo2PXmSZm2NZbLOIusWYhiVLrSQM6o4YcA0SISdb7Nzjzgc+8qZLRKqAEaYydOth/tqgKWQfC0lfCvmGHJAFk8LfVBXbkIA0WQFOqZuqPBCDtVlQOSGGUI59S/G/qimIllF2f2sL1oh5evEFIVYvxJFK5gNxHot8KIIe5yv+mDGe5ChVrXdO20jFw/aT01ovvP8Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ZmCYsLxm7LHN4b0EbRsmWrQ4Tg08pg5Fb8gMF1bidE=;
 b=SN40tJ3/vH8dc/NqZeziYoM1I56L/cZnB64CEFDxaZjkfSAMJbdnmatcWML2VnS6M3CZ+IJKF4utYHdhunh4dWAmS0xPsLs0lmeFrr8+hNNbVgg9aN8Q6OnthzgndroDhGho27+NFdY3lHQjQM9TIwmQhCMrvCZY1z3R6OpJ/Vmz3vom04KYyYjuRq5JcGPSV8969XU4ltspSdW67epZzNcEs8CgqkM9/nDfaAikrQOkwf9r3qvLv00vCW2khV+vHpABUSz+AZVA4AwpPcTIa5vMbryUlMk3mOY32WkYThwHVdlKEYZxmlhrz8MwUxYzI6gBFabTtid7q8AfRUhjvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8241.namprd11.prod.outlook.com (2603:10b6:208:473::9)
 by SA3PR11MB9487.namprd11.prod.outlook.com (2603:10b6:806:47e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Sat, 21 Feb
 2026 01:50:20 +0000
Received: from MN6PR11MB8241.namprd11.prod.outlook.com
 ([fe80::cf79:ceec:e277:9d46]) by MN6PR11MB8241.namprd11.prod.outlook.com
 ([fe80::cf79:ceec:e277:9d46%6]) with mapi id 15.20.9632.015; Sat, 21 Feb 2026
 01:50:19 +0000
Message-ID: <81f91e12-599b-49e7-9299-cfecb994cb6f@intel.com>
Date: Fri, 20 Feb 2026 17:50:15 -0800
User-Agent: Mozilla Thunderbird
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, Kohei Enju <kohei@enjuk.jp>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Alice Michael <alice.michael@intel.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>, "kohei.enju@gmail.com"
 <kohei.enju@gmail.com>
References: <20260220184031.60113-1-kohei@enjuk.jp>
 <IA3PR11MB89864DB144A3D8990E6512D5E568A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <b57460ab-d523-4e2b-ada3-4d338dea6701@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <b57460ab-d523-4e2b-ada3-4d338dea6701@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P221CA0003.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::8) To MN6PR11MB8241.namprd11.prod.outlook.com
 (2603:10b6:208:473::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8241:EE_|SA3PR11MB9487:EE_
X-MS-Office365-Filtering-Correlation-Id: 307e7d9b-915d-4527-1566-08de70eb9181
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?LzRBMGlWbkVYY3NtVk9wREpvOTQ5N3ZwWFEvRytWMzJpdHhFODl3VDBYem5Q?=
 =?utf-8?B?UjBqcWNqZmZ0dTBQMzdta0xhTkRiWnJ2cEFwYmpJNkRzeHAvM1FOTUYwSmJY?=
 =?utf-8?B?N1lDKzdTbnJSdTg3ZGVsR0l5dVlQcDVhWVY5OVI0aVk1a3liR3NwMmhmYlZP?=
 =?utf-8?B?R0RRNkt0NE5TczMwN3YydHpkeXBHQUNjTUZOckY5UXllNG5CR0tzZU4vV08x?=
 =?utf-8?B?dFFvaXM0NWNCM2FDdlYxUldadytpQ0luSmpPU1ZCZk1LdEdZL0ZWWTV1bHh4?=
 =?utf-8?B?TTlGMXFWZG5wT1ZIRkVKbEZEL0NHb2VUc200ZzcxNi82UTNSUDR6RkdpTXND?=
 =?utf-8?B?T1JtelR1TWdhbktxOEdHZW9GRjZ2am9RbkxNaFZDdWZYV2ZmL2VTTmx5cnAv?=
 =?utf-8?B?MWJOYVN4WGJXMVFZRlFoWGxNRi9Eck5qYzliNW5vZlhFbFpvTXRxQzdib05n?=
 =?utf-8?B?cmpvc3ZkWlU4cXlMNXI2R0F3SVBsY0cvaER4SjgzOGwzenlWdGp1djVUTDQ0?=
 =?utf-8?B?VldaVlJWRTllQ3hxQjJ5dFNsQlZYR3NWUmg1cWphS0JUSkVwdUdhMEJQWWx0?=
 =?utf-8?B?THUxT3lIQTVwUi84YkJ5cENYQlRuNDZoRGdIeWxBUGZrUHpxTnBvejJrZjdP?=
 =?utf-8?B?b3BmRjNGUG51eEZIOGs2L0pvblc3R1YxSlVaa0NRWWdRZXAwOXdnSkJQczRX?=
 =?utf-8?B?TVRiaVovUFExTmdvc0NveFA0YlU1ZHVSbElzTHl1aWUzYldPcVdKNm5PR3I4?=
 =?utf-8?B?RlhnQVVVNCtYWitZS1lWZko4R0hPcEhqdDhKMTk5MVdOYXNxZ1dhQWxxdkJQ?=
 =?utf-8?B?NjZKQ1hiRDN6N0w5dG0wVERuQ2NQVTFiRnlHV0I5MEdPNEYzSWFGWjA3NGN2?=
 =?utf-8?B?NEVTelZwdUVWYUVYZzZ1YWU5ZTlrdklWWCtTa3Ird2pVcXpFOFk5LzNoNkln?=
 =?utf-8?B?ZjZhY2ZoNThvQ0k5Vm9MdTY1QnRYc1BjRFY0eUgxd21zQ2Nva2JYQkFLbmZJ?=
 =?utf-8?B?TUJhdHFOMW1aalk3VmlmSDg4UjcvSWQ5UG5acWFTdDBJeW11ZVM5bFNpME5H?=
 =?utf-8?B?ZjhQK1BKd2JGbTM5SU92V2xWTGZtMjcrbEtaZ1lETUpEcU41Y2ZmK1BCZ2Rn?=
 =?utf-8?B?R2JCMnh2elhaMk01M2RWcU8rVFBsdUdmSnV2Q2pmVnhmM2dkUU5nUWV4dDg2?=
 =?utf-8?B?Y2lPdE1YSHB6aDFTdE1EV05rUWxGNWZYQndCQXk4OTBScFhDS3VPZTFWdm04?=
 =?utf-8?B?RHArc1g0T0tnbncxdGFsMG11TUR2ZCtSeGpRMnY4YlBxUWtoQnFwcjhZdjRW?=
 =?utf-8?B?N0ZoNW5WSGhiMzJ4ZmkvQjNlcnBPUGpwdDgzTzR5WXFpeUl4Y0hQdFFoWG9V?=
 =?utf-8?B?cEIySkIxVXRvUEFVOWZtZklpbHBrRWl1NnMxMmJyWXYwcTVRZmJST1plS2M1?=
 =?utf-8?B?SU9ja3o0UHIrOHJaT0l0SVR3UGFBVm52RmlTQTh4c0liM0dsZ3Y2NG54S1Fh?=
 =?utf-8?B?dko0eDJCU0JvQ3ByRFpDZVFtVTU0NmxDMStMeEVCa2lwRnI4QmtJWUhGNXM1?=
 =?utf-8?B?cnpRcUtyMGlmWmtuSW5IQk00UGxxdGtVR21ybHljRzJSV2NpeHRLd1EvVEVB?=
 =?utf-8?B?NW8xMC9DdXNtQUpOZ2NxdmZRclNvOHhIcFFleWI5STYzRDdyck9CR3lTVkFM?=
 =?utf-8?B?NGFiRU5paVRXd2h4WVM3ZTFKeXBPclN1MFowZUVqKzFGa2VCY21XS0xHV1Nt?=
 =?utf-8?B?ZS81b3poUnZ3QS9HWEMyQ3JoUm0xUWVoUmZpcHFHdUJoYWY0QjJyRmhFWE53?=
 =?utf-8?B?aEZVeUlHNGxuRWw1REVBcVAxVTZvR050dWtvdTF6Z2U3SXdBcFBKOG9TYVZK?=
 =?utf-8?B?UFZybXZOd3cxUFVGeE9rR1RWSWRmWnpUUkp0NVhycnlUdm5TelRUL1Znakls?=
 =?utf-8?B?NU1sUDlJZEZXR0lyd2RZVXkrV2lTOUhUNEhmVEJmempmcGwxdDZ6cnZkVndK?=
 =?utf-8?B?alYyNVlWSXRlck1ZSzRnRjZleG5GUUlrQk8xd3JJSU4zbEx2YmhURVN1cWk5?=
 =?utf-8?B?R3N6eC9UV2NaZXZrWncvdVA1WU5OU2Z2aEEyTkgyOE1POE8rbXZmWTNtZmJx?=
 =?utf-8?Q?CkPs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TFlhYmtsVXZkNkx1RjV6WG14NVNBRFB5aUphOUtLRjhMZENCNFBlRmljdFdh?=
 =?utf-8?B?Qnh0ZkpiL3F4VGFib0xwNjNCNjNXSzNzcURHSHN1WUtSZ1V3QWhKbTZEME1x?=
 =?utf-8?B?OXpYTGR0dDQxdVZwRnNRWncwRGVWSStLcmYvYzhibjJHaGlZM25nVitieEtv?=
 =?utf-8?B?ajk2OXpnN2VjbUZqMkw0OHZuT21CMVM5bmV4dVMveVpRRmtuMzZ6M21XKzM0?=
 =?utf-8?B?bkNpS1VMbitoeEVaRTRxWGdUL242eHltVmFHcGhSVElYejVicVdTVGg2bW1k?=
 =?utf-8?B?c1BCQ3lGd0cvZmphUnIyZ1pJSmRPKzFEbWs3VTdqSC9UYmxsTjF3UHpaNWJo?=
 =?utf-8?B?cmplRkV1dnlORXoyQU1vUElhUE9pNkMrRWMvMHF6THJjNTBnSzl5LzJaZWFS?=
 =?utf-8?B?K21UUENjaFNsQ3ZIbTZtSi9VSklrOXdFa0VQanhITDduZkdHTnZZMlZtV0ln?=
 =?utf-8?B?eTJPbFhhOXJPc05BQ3IraWVzQUEza3VFVDYrckdUZ3BGVVRPOHBjeTFuNUdP?=
 =?utf-8?B?QTlsSWplWDc1UVRZVEp6VmlwemNZbzlJY1BWcFJBRnpmSWRock8xS1F2cnBC?=
 =?utf-8?B?WDZCTVJqYU1FTFNBL0xBRDdVZFBFTDBybWxYTEQzUWlCSW1jbmtqUE51OWNH?=
 =?utf-8?B?ZTdFb3NwZVBiL3liZGFxckpLeHBnQlM1RnhTWW95ZkdCNjdWNnp5TWYza1lj?=
 =?utf-8?B?WVAyR3BmQVJaWXpiYnVZUWRVOUNNTndPYzFQUmI5M3NiUzRzUm1GdlVIZVdH?=
 =?utf-8?B?S0RrL2J3Qlhsai8xSUxjTFdKYzZQeHNrSUM5ZkVJeGZudU9PTUVDMjEvb0My?=
 =?utf-8?B?SXhXZG8zUXYzOUVQbHU5eDM2cFlKQnRxcXllTEZrMFFNZk5FazdPQlhTUGp2?=
 =?utf-8?B?NlRmbUs2bG1CTmNvUWxleGhqK0tBeUczM1U5L0tYR2hYMlhJb1NBZjlCdXkz?=
 =?utf-8?B?Nnd0dk9KMUI2Vm9sb3gzc0RiK2I4ZUl0UUFmSWU4aDExbXpsR2Z1UHVGTlFP?=
 =?utf-8?B?M3NmQSttQ2pmOUg3ZWZwdVVETjRwaHIzSFpFb1Zldjl5cVJUYlREL3htZEVt?=
 =?utf-8?B?b1RFNU9lZG1xMG9FRTE2cHZwdHBqbjNJVHVsZmIxUlpCUG5DekgrbzJwMnFM?=
 =?utf-8?B?ZTY4ZGpMNCtPK1g1Z3UyZDhwaWM2dHpFTkZSZFo5WjVqN2FBbXdsR2UwM0lv?=
 =?utf-8?B?YzdiSXZhbHlXRVo3VzFSSHptZ1REUnNjNS9mQUU2SGx2MklRZU5QOEFDT21M?=
 =?utf-8?B?QWlhZHU4WllsazY4ZTNaWFEzSC8xTjB3UTN6anQrWllLeVkvSVNvK1Exeis1?=
 =?utf-8?B?ayt0TUorY0Jta2s2ZjRwcGJnanluemVUU0ZEVHVWUFNwaWpKZWlTYWpCZVVa?=
 =?utf-8?B?d0MvblBWdThrSGgrZ04zT0RtV1lUa09LaHhXb0x4WFJBT3A2MW9qazhJUFA4?=
 =?utf-8?B?WTZBUkg3MWczV2xDN0tqVGF3UlREYXBUMHJvQlcwVytVMWNPL2kzcUw2b2h6?=
 =?utf-8?B?akJVaGlFV1gvRFlkeFEyaW84VmtHUE1UWlhWakI3UzlnMUhwNFhuVzd3NmFt?=
 =?utf-8?B?Y0s3b241LzhrUUtnVDFSejJtWVRYRnR2bWljdWRpOS9GNERVT2o1THN1Si9G?=
 =?utf-8?B?bHV4SS9JMGpRSFNaT3RSVDJUbk9KcHJBb1IzVWxQV1MzeWVzWHo1SDQwQno2?=
 =?utf-8?B?c0xKUHF2NG5qSmZHeXVENXNRR203VkhFM1FkYm1IQWw2cjJvbVkxSktHbTFH?=
 =?utf-8?B?RXRMVXpENTM0YVh1ZUllbDE3L0tFQW9mZTAreEpqWjZNSkozS2k2YVd3RDRB?=
 =?utf-8?B?N05BcGxsM0JwK2pXc3hQMWpnYUtBRjdVWjdPY3VyNy9FRkI4RVlDUS9OZ0Ji?=
 =?utf-8?B?TVRLUEhZRWxaNEFkbCtRZG9kTSt5TmZYWW5tbTI5c1ludHlzZFlXaFBLZWJW?=
 =?utf-8?B?dGxkRjBVRWZhTEs5NmdVYkJGVUxJRWNZeU1HSS95blZPY0NRNEU0emU5ZWRK?=
 =?utf-8?B?V25RRklHU1BzTG8rQ2pIczM2RnVkME9aWkdOREx4aC9nQlowZ1YxeEhremYr?=
 =?utf-8?B?WVQrbWlzSHJlaHpGRzQ4eHMvbmtVOEtwWFhBOXdDbVNBK0VYd0MwQVpsWUVN?=
 =?utf-8?B?YzFLYnlJK3N2dk5qc3BkeGJSTUtPQ2NtYTZpUmw3dXRxVGRsWE9uTWM0Rm1l?=
 =?utf-8?B?VFROMEJNemRrNUpZVUxzN0lPNi9mYW1KNURVVlNQd094amVyS0VlUEMvWkho?=
 =?utf-8?B?U2lVQXRRcEJPTmR5VmhxclQ1aUx6cnU2R0c3VVo5aU9GWFdGdFVjVktKc0Ix?=
 =?utf-8?B?aDBzK1R1U2QvUHhOdUQ3Umo1RHdxSHFJd0lKVVpnOGN1ckZSVDdnUUZlRDZM?=
 =?utf-8?Q?KEkn3C9iQ8jn5Kww=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 307e7d9b-915d-4527-1566-08de70eb9181
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2026 01:50:19.6343 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5eD1h/cYMgPdErncyMYXhPVdO7jy1sqz4rs8lfK1K8WPNlHa7na51aK3ZaKJvQJbU70+1MBx40SCST03F3yIYCpVVU2bUGqc2wVBxbQe2rg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB9487
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771638624; x=1803174624;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VHBDblEmB1JUJfBUlwtdcJjOyDCEo/KsjLiztuxm+qA=;
 b=DoxrudQ6mukUeoZsEafsoIHYMk13qAC56KsikhLIK93BjQvrC1NmTosl
 ACDz4JWDxx4KSPjKToP51r0aLfZhlu+d4FVZgIqZJb2EtVoix8iBaSV//
 H0kcPqpToT6fqLPjBLswpSoMzR5XSdNfzeEhdJVUrfgUIf7UHJDmCyqEw
 IpbfS/hkiXTltF3EIgvPzMidWXz5LdIZe+KeoTgbAPVE37AjNj9/9+Mde
 HZWe2tGtIM9IQYiXBxb+0km9IZ9xGtdjefTW4Xzj0Y57AlqnWMrso2hNV
 l4HWSRfTOoPH4xweLk2br9HBszqPWekFDv+4pwsrFD9p8tsIp/bYaHEXL
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DoxrudQ6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] ice: fix potential NULL
 pointer deref in error path of ice_set_ringparam()
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:paul.greenwalt@intel.com,m:aleksandr.loktionov@intel.com,m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:alice.michael@intel.com,m:maciej.fijalkowski@intel.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	NEURAL_HAM(-0.00)[-0.997];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 4A03516BC84
X-Rspamd-Action: no action



On 2/20/2026 4:35 PM, Greenwalt, Paul wrote:
> 
> 
> On 2/20/2026 12:04 PM, Loktionov, Aleksandr wrote:

...

> Also, per Alex's comment, please target 'net'.

Since this is for an Intel driver, iwl-net is the correct target.

Also, as was responded, this works off changes that are only on 
net-queue at the moment.

https://lore.kernel.org/intel-wired-lan/20260220204526.7514-1-kohei@enjuk.jp/

Thanks,
Tony
