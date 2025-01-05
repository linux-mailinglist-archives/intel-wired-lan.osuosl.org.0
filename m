Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A03A0A018BA
	for <lists+intel-wired-lan@lfdr.de>; Sun,  5 Jan 2025 10:01:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C52D8148D;
	Sun,  5 Jan 2025 09:01:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N08VtW526wkP; Sun,  5 Jan 2025 09:01:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC5658146D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736067710;
	bh=zhH8C2o/V8J3IE6CrrEcJQiFchaiHarPM/1AgYTlsrg=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=snQR50FzR4IQ0lpuzqDHDTchdZMfDmMztsgPjZFWjG9AEGIpmYrmv1Rzz0bcuwHo4
	 wkzWWVpPX+4pN6RCM4Ft60nh2vVeZwPKfToS3Oos21rBGNibJP7UNNxR52DPiI1VDA
	 Txowt1KhFKPZIrkAtGcyMNPCXI47znaIh3RvImwqHDljvaTjMcYSd3MPHAyj73bGbi
	 vhYHdSlzgHpWBpWfci2rcAs4aKdWax0mxwfanlfZimatL2JZQ8MC1CqoZp5ygSX6V7
	 08d3aUJ0dMnVVYYD8KcpL7Q8+4gq5ft4U9zlHUjLJDO3YQyg7blEbIMyOLiyKS6+vq
	 K+8e6FOH/rZmg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC5658146D;
	Sun,  5 Jan 2025 09:01:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4BB0DDB4
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2025 09:01:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 39B0A81418
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2025 09:01:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nQcPdZ8WVMWz for <intel-wired-lan@lists.osuosl.org>;
 Sun,  5 Jan 2025 09:01:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 354EE81360
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 354EE81360
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 354EE81360
 for <intel-wired-lan@osuosl.org>; Sun,  5 Jan 2025 09:01:46 +0000 (UTC)
X-CSE-ConnectionGUID: Y7ZCA+UIRPKejiPrTBYPkQ==
X-CSE-MsgGUID: LxZVyTykTyu84HD9uqcqBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11305"; a="53657700"
X-IronPort-AV: E=Sophos;i="6.12,290,1728975600"; d="scan'208";a="53657700"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2025 01:01:46 -0800
X-CSE-ConnectionGUID: A6N2p6VcSZ6OwlunXDlKMA==
X-CSE-MsgGUID: /V4QdfmUQnaeWeCosGKqaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,290,1728975600"; d="scan'208";a="102350695"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jan 2025 01:01:46 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Sun, 5 Jan 2025 01:01:45 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Sun, 5 Jan 2025 01:01:45 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 5 Jan 2025 01:01:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uHjfDJsuNuZxgkV7hxmdwjOu9wdKuSF+LAK2rSswVwABHKj7fGQrOrdDiwyksBfd5KUTCKg15y3aZsPBOKs69p5SPEC4+uDpIyNLMMrLecElbZm7TlAmWvhIiHd4+Y/42qmIg7WMO/Pgbk15nQsD1TNuO+ESXo+VFr5EuHjOCp3JwlSkJdyIdOWEqpM7HxqRGYMm08jRax2nNaGmJwfqgZQSnidu6x/1fICQTTwP3RZ0EV36wZk9Pp15flZRzVG6z0Ua6C4r2hU+vXtuz9Q67P445UaxpfmKRNaiwKNagPREmQyqNE6vMNAjUgF7tzAQrI8Sb8Y84O1E0UG9f6BqeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zhH8C2o/V8J3IE6CrrEcJQiFchaiHarPM/1AgYTlsrg=;
 b=BlZJ0C1rNiHOU/zRG1L4AD984OAJEiAe3r39Up5+wsIhuEBl+U+Sw0Ap22/gEAXIrouLeEbWBCtYJQrHUotjaC4S37O7iAWPxGY2xGd4cZpIcu4ZnRZS9cpQsYft4s4oTGYBCaHXOhY1+KQCo8p8d4bwAAc6j70qaTuIO84GE5DejtFjVYIscPc7VA+eP3l8+TZD2PutUZbkXVPv+z+nhn7Dcaxmby0xjcmjcD+vtwFFP/C7ov42Czyg6+rgLQ/dTr3SA8gVE7uGOyGnn/ameAix2XdjYNPSv0dxCtQuLAkl4SRtAlTVihCIxvjwWHZ12Ki3UBlwYCjYztJUo4eB8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by MW6PR11MB8389.namprd11.prod.outlook.com (2603:10b6:303:23d::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.16; Sun, 5 Jan
 2025 09:01:24 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%3]) with mapi id 15.20.8314.013; Sun, 5 Jan 2025
 09:01:24 +0000
To: <intel-wired-lan@osuosl.org>
References: <20250102174142.200700-1-linux@treblig.org>
 <20250102174142.200700-2-linux@treblig.org>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <4f94ca89-f4fe-c2fe-c495-a913895c3937@intel.com>
Date: Sun, 5 Jan 2025 11:01:20 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20250102174142.200700-2-linux@treblig.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0013.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:9::6)
 To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|MW6PR11MB8389:EE_
X-MS-Office365-Filtering-Correlation-Id: 5e2807ee-f4ac-4127-4c68-08dd2d678837
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c0JFQmRhQXRINzVjMmRxNTYzUkJxcE14L2YrRU5kckFmVVc1eUw4aG8xRWFP?=
 =?utf-8?B?YktWbytLZi9Iajl5TmFoWEUwNUxCck9wYUlWQklvKy81eSsxckZKUjlpNWJX?=
 =?utf-8?B?RjN0bVlnU1l3OS82d1F4R3o3SnphMUNFSyttZ01XVm5NRkVyT1pPbUk1cVlm?=
 =?utf-8?B?YkhXNHZHWldxN0hLbkpyYi8zNTJVYUx0V29GOWlHWE1yNUxwN2VDWG9oaTZH?=
 =?utf-8?B?c0RvL0JhUjVUS0tVcWJSVEJQZVFQU0txRGN2bEhjcTdKdENJRG5RNmVKdjRT?=
 =?utf-8?B?TExHK1hNKzVGdTJHSE12SXdzenVEb1dQVnN2ZUVLcWZxdHNDc0VrV0FwSEUr?=
 =?utf-8?B?UDk5RXJ2S0hHaEJJUkVKY2tlWjdHSVB6ODlRd1hUdmVIK2F2UWJxUFRIV0J6?=
 =?utf-8?B?RFNQNDRTQU9lVmpCUG1LS0xsUVBQYlpLSEdlL0phOWRvUTRDaVRHVEIxUXox?=
 =?utf-8?B?WVBYZy9HaFJxQU9FWThDR1d0Q0xsaVQ3ME9qYXlQTUtVQnV6LzVra0xtZi8r?=
 =?utf-8?B?ZnVEbFJWeHFBZ1FYOXpnT3pYdzRNQzVJeEtpKzVlV0hrelZ3NU1kRHcvOC9j?=
 =?utf-8?B?NjREZU9kQ3Y2TlRDK0ZCbkNSenFnYlJCRmJEQnRpNHJUT09QWlBUd0xIUm5q?=
 =?utf-8?B?YkpDNm93aFI2T0FnVXdGQTk2bFVickdmSzd4TEUwbjI1c0NDUHF6TEpEQ28r?=
 =?utf-8?B?cGJvdHpoeEF6U3EzZXhsQWF1WCtKR2hWN3lQODlCVXAwQlVnaXpUdGZSRVJ6?=
 =?utf-8?B?aXI4KzViZ1hralhCZ3Q5UTVUZm5uYnZBSFh6S2pabXRaMVJsdFBMMGcrR3Ur?=
 =?utf-8?B?aFFkZG41emVuZ3pCOFZaaWFFaDJ2MHVrcEphTk5sakt1V3pmWnRBclREc3c2?=
 =?utf-8?B?Y0orUlA3K3BlcUxYY0k4WlgyVnd5U3BRbENZVGE4RFAvZ29xU0JFMGZrUi81?=
 =?utf-8?B?MVkyRnF2TXNhMzRnNFRyTDNKUURjeUc4dTIvdVZqSEFzNnBITEc5dDdMZEZp?=
 =?utf-8?B?SDNnMmVUNFNFczZOcEJKc2tpdHJlVGlSa2xxSldUWUZZbElpcSsvN3pJKzhy?=
 =?utf-8?B?bmxHc0U2MUdhVE83d2FJYTQ3R2dPeG1aSE9Pd09WNGx1b0kycjNodGZ2NHpo?=
 =?utf-8?B?VDIzSUJldXpJaDNjOWYweXBEYy9HVXNlTW03cHJuNTFWZnQrNlpRZklLS1VQ?=
 =?utf-8?B?ZFN5U2FaVlpNdnliTmkwMVJjVkpxWEVselQ0N2xaWVRsUDczTml5N1VWUUF0?=
 =?utf-8?B?ZktucHZ6SmRGMENJWGNndjN6NkxwYVZJZTc5MnZjVi9vQ0JtdkJaVElnMkg5?=
 =?utf-8?B?OFo1d1BtTTBGeU0zNEVZa3ZLVU1MMjdtRVRRT1U5Tk1hOGhkK3Z3T1BndE1E?=
 =?utf-8?B?NmVVRzlvY3hrUUMrTlgxbkdSRDZucTd3OXoxUXgrMzkwYUMyZExabGxteWZt?=
 =?utf-8?B?aVVwN3FZTENIMHB4RHhGSzdVbkFHaUxEY1FWRjY4WHdBOFNZYmV3N1hhcnZv?=
 =?utf-8?B?YmJDV1p3QkJKQ2VUUUlUQ0g5ejFVUGhyNjRDdGFDSDY2SE5aQk5yMDF3NFl4?=
 =?utf-8?B?NERuZXdrRG9GMWRvZW4zWkNZUzRmUzhNdXdPZkt5blFOWldrd1pmVmIyOThM?=
 =?utf-8?B?dE5HSnpSaGo4WDZnS1ZqVFd2eWF0SFNLZHFPcnR5cndqdEFBT3c5M1NJaUdP?=
 =?utf-8?B?R0NYMmpYbFl2eDJ1b1ErS0lwU3ViaW91RG9OM3BFeExRd2tJUlJpeVJSdG9Z?=
 =?utf-8?B?T3oxSjk3Q2ZtSVVkRVcyUXowczZCVU9UNXVyRlJIc1kraGJSZEYzTGNXUCth?=
 =?utf-8?B?WGNKT2pCWGhmVmlKWDhCQUg3SXFRZXBRUTVhVE9mb3RjbkdQVzhRNEgvSjFP?=
 =?utf-8?Q?O7St+rNx3PKbS?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VUVvdC9vUW5Qd292TE5yMld1RjRHTmhLYzFPU3duZElmMCtITzNVTmNNYWRY?=
 =?utf-8?B?d2dWTlRMSXQwcUVaaldNdmRIZ1RobS9VdEFhcW01b1F3OEN0cDlhelF2ZXhZ?=
 =?utf-8?B?cEx4RnV0ZThjTURRdGFqWnc2R0RNMllBemtKWlNOM1hmTUF0anhPQzI1dDMy?=
 =?utf-8?B?cWsxaGZqcXpFY1dSNjNNK0tKY3FmQUM1bVZXMkNPcVhmRGtrNXJEeW9wZmxU?=
 =?utf-8?B?ek1mS1hQSUExOXN6dkozdUtxSmNpZmlab0pwMFhxVEF3dmtncnRiaVBEaW5p?=
 =?utf-8?B?blZvTTlYazhuaDZ1NjAxcmh4ZzdzYmV4TzFOTVNLZjZUR211cDdQTElWa29k?=
 =?utf-8?B?OFdNeGg3L2VaVnhZYlVkbE9rNVRFVnhmNGY1UWlqT3R6dmgrZExEMWFKZjlj?=
 =?utf-8?B?bTJ4a3J4UFNQdmxjcVdYV0FFMG5iTzRwT21aRWZGU1NoV1dXQ3V5aXFXclBE?=
 =?utf-8?B?SmtVaGM5K29YR3kvTUY1QjJDK3dGRXp0TXB5Y2tXd2lWS3hxRW41dzRhNlpQ?=
 =?utf-8?B?WUNWOVdwYlN6UE1UaFBpOEtIOUxFSmVSenhPSFRGa2xxR1l4ZUVBU1R3dC9B?=
 =?utf-8?B?eXhIaTdWTm1SOW5McFdTbFBKcGduWnA4aWN4M2YvdFgzbzJSR21QZW92SFlZ?=
 =?utf-8?B?emhKNTMzTkRIWUxBMnlHcnBNY29zWGc1ejladUloRytwdDV0cERYYzBFck9Y?=
 =?utf-8?B?My9vOUlEdXJveFlDUWJiNDBkY3haa283YVp6bEFnQ29NdUFXd1JpTlNkeEwz?=
 =?utf-8?B?K2NVUnFnODQzRHlnbXNha3Vud2ZSUWhoSWNPVWRjcWYyMU9xYjMzLzNuZXZn?=
 =?utf-8?B?akVGUWZVN24rVjJYa3JDS0x1OXhGNC9kR0o0KzkvdjJhZUllQVkxNFJMYVpy?=
 =?utf-8?B?bS83c3hVQys1clQrOGVmRzdoWTVjV1hSZWw3Q21Ea21pSG94VTJ6ZXk1UzhI?=
 =?utf-8?B?anZoVkg0WHJ2TmkrbHIvZ0d4SG5PWHJjUWVRSGdQR01ubHc4UXdvc1U0WEcv?=
 =?utf-8?B?L1labCtoeVU4aWRkZU56SUpuRktIR0dOM1JMb1RkLzNOOWlicWovQzV3UFA0?=
 =?utf-8?B?UWhjMzR0SGFYblA0UmRWQTZITVNPeW1rNzJjZDhkWkNFbDFNR1VHU0Z2ZW9Y?=
 =?utf-8?B?NHUwSFo4VkxUMGhhRnYzajNZN3EwUzFYTGVYUmZKRFNjMWwzZWg3UE1rREJJ?=
 =?utf-8?B?RHZtZDJzekZrZW42N2hyNHBTK3dVcjZXSG8rVS94OGkzakJXUUlDNkRKUXN1?=
 =?utf-8?B?cUJibFI0dkplR3ZTN3QzRSs0RERpK2xPNVBEMTJHd1M2Y3NDLzRsNEpiQ2NK?=
 =?utf-8?B?aTJuYlhka21JdlR3Z2VmbnZZTzc1cVJDa0tkRUk0a1VIVTF0UC80aWhDLzZh?=
 =?utf-8?B?aUxmNmpQVlBrQTlNOGZvMzV1b2NUcVhxR3ZjR2hURS9vajNpckZwQm5pU20z?=
 =?utf-8?B?U0orWGx5SzZHbzI1N0dFcktBSWZQR1J4aXRYK3RXa29xWjZBOGhWMDhiajl1?=
 =?utf-8?B?cEdJdXpjV3VtN0FlRmVQMC9HYUhtZm9peks3YVQ1NnJrckZuWXVPaHR1S01y?=
 =?utf-8?B?VDRNMk1KVGVwK0x3UVNXdy9UTTAxd1J0U3pjME5DVTBkYjNSREgxWkFRY2hC?=
 =?utf-8?B?Mk1NSzhxaEo0WTYzNHFHRlUxQi9kNFAwVSt4YlIvUlRyTE5jbE94Y2h0VDA2?=
 =?utf-8?B?ZHpZRi9wb2FMR3BjVnorVXlGZDZDNXlTcmpFT1dNRS9VSVZIOGN1dXIxaDd2?=
 =?utf-8?B?RDFnS0JFZXlsQkhHWVE4OE5yN0c5V1YvbjE4Z0EvSDVWeWMzb1BRT0JvOU5N?=
 =?utf-8?B?UDFwWnhsU2ZTcXB2c2RacXhmQ2t4cFhLNWhZeGRXNHFhYzhLdERsa3hMZDBK?=
 =?utf-8?B?QjZlaisxc2JodU9zZXlGTnVjcGZQYSt6RlBYdy9YQmpRRWRNZU8zajkzdzBu?=
 =?utf-8?B?Mk9XbXNObFNoMDZCSGNqS0dhVXM4V1hYd2V5ZjkzczRwT1BoSHRFNW1rR2Fo?=
 =?utf-8?B?KzhBN3RjZVo5bXo0VmdPOE8zcjJPcGYxbk9GaFRjQVRmQzE0d25jTWRORUR3?=
 =?utf-8?B?dC85dXVSa1hqQUU3ZzRJRkRsMkpjRGozdTZTMWs4YytDVk9FdWszL3B0cGd4?=
 =?utf-8?B?UXFtOXg3bnROeVZoN1ZxMVJrN1hndkdKbkxxQUVaaE5zb1pkNXlXZHNqTlBx?=
 =?utf-8?B?Z2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e2807ee-f4ac-4127-4c68-08dd2d678837
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2025 09:01:24.7533 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IdYUSQ2jHYGPtY0ktVwtwB17xcWAZKfepPsHXGteNl4eWniTzz+sIKt7f6FVeX+qFRP5LVDyWx009ijwFuiYh1E4AfXciQM9woA8f1wXE88=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8389
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736067707; x=1767603707;
 h=subject:to:references:from:message-id:date:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=BYeeT45pYEzORrjQ+045SH79vdPTcGKqfiyZh7igWJc=;
 b=ZUtf995PBWXYeVQGKoB2Blmp1oSkyeSvN/0OtS5+I3w7Xy0hevvhSb/3
 OEue/R38iKlS5/QU7UxTx7ddC+D812Ia/jmUIvgj7HHt8pSXin2z1wUMo
 2Tbze8vNwGVQOL0p6ez2OTxJr0i/5rhwt2xPhxS+6PsLhFostGH+i5hRa
 K0DMv5srFN42n1cfMgooILEIGCTG2xGjLABslllPbhcVYg+i1pxRq6wCj
 yVWhCbC79cWi3mzCngdpVLGdWm6LPz/36Ig/z42EX4DOKpKLF1Oi+RdXT
 L096Lx0RWdNoK5ur/sAIbw5c1RX0mT9FAmMP6Jqm+XRdaC0EuiEg5mIGA
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZUtf995P
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/3] igc: Remove unused
 igc_acquire/release_nvm
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



On 1/2/2025 7:41 PM, linux@treblig.org wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> igc_acquire_nvm() and igc_release_nvm() were added in 2018 as part of
> commit ab4056126813 ("igc: Add NVM support")
> 
> but never used.
> 
> Remove them.
> 
> The igc_1225.c has it's own specific implementations.
> 
> Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>

Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>

> ---
>   drivers/net/ethernet/intel/igc/igc_nvm.c | 50 ------------------------
>   drivers/net/ethernet/intel/igc/igc_nvm.h |  2 -
>   2 files changed, 52 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_nvm.c b/drivers/net/ethernet/intel/igc/igc_nvm.c
> index 58f81aba0144..efd121c03967 100644
> --- a/drivers/net/ethernet/intel/igc/igc_nvm.c
> +++ b/drivers/net/ethernet/intel/igc/igc_nvm.c
> @@ -35,56 +35,6 @@ static s32 igc_poll_eerd_eewr_done(struct igc_hw *hw, int ee_reg)
>   	return ret_val;
>   }
>   
> -/**
> - * igc_acquire_nvm - Generic request for access to EEPROM
> - * @hw: pointer to the HW structure
> - *
> - * Set the EEPROM access request bit and wait for EEPROM access grant bit.
> - * Return successful if access grant bit set, else clear the request for
> - * EEPROM access and return -IGC_ERR_NVM (-1).
> - */
> -s32 igc_acquire_nvm(struct igc_hw *hw)
> -{
> -	s32 timeout = IGC_NVM_GRANT_ATTEMPTS;
> -	u32 eecd = rd32(IGC_EECD);
> -	s32 ret_val = 0;
> -
> -	wr32(IGC_EECD, eecd | IGC_EECD_REQ);
> -	eecd = rd32(IGC_EECD);
> -
> -	while (timeout) {
> -		if (eecd & IGC_EECD_GNT)
> -			break;
> -		udelay(5);
> -		eecd = rd32(IGC_EECD);
> -		timeout--;
> -	}
> -
> -	if (!timeout) {
> -		eecd &= ~IGC_EECD_REQ;
> -		wr32(IGC_EECD, eecd);
> -		hw_dbg("Could not acquire NVM grant\n");
> -		ret_val = -IGC_ERR_NVM;
> -	}
> -
> -	return ret_val;
> -}
> -
> -/**
> - * igc_release_nvm - Release exclusive access to EEPROM
> - * @hw: pointer to the HW structure
> - *
> - * Stop any current commands to the EEPROM and clear the EEPROM request bit.
> - */
> -void igc_release_nvm(struct igc_hw *hw)
> -{
> -	u32 eecd;
> -
> -	eecd = rd32(IGC_EECD);
> -	eecd &= ~IGC_EECD_REQ;
> -	wr32(IGC_EECD, eecd);
> -}
> -
>   /**
>    * igc_read_nvm_eerd - Reads EEPROM using EERD register
>    * @hw: pointer to the HW structure
> diff --git a/drivers/net/ethernet/intel/igc/igc_nvm.h b/drivers/net/ethernet/intel/igc/igc_nvm.h
> index f9fc2e9cfb03..ab78d0c64547 100644
> --- a/drivers/net/ethernet/intel/igc/igc_nvm.h
> +++ b/drivers/net/ethernet/intel/igc/igc_nvm.h
> @@ -4,8 +4,6 @@
>   #ifndef _IGC_NVM_H_
>   #define _IGC_NVM_H_
>   
> -s32 igc_acquire_nvm(struct igc_hw *hw);
> -void igc_release_nvm(struct igc_hw *hw);
>   s32 igc_read_mac_addr(struct igc_hw *hw);
>   s32 igc_read_nvm_eerd(struct igc_hw *hw, u16 offset, u16 words, u16 *data);
>   s32 igc_validate_nvm_checksum(struct igc_hw *hw);
> 
