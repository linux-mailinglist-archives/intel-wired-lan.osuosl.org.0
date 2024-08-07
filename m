Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C77A94A697
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2024 13:05:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A975980CE0;
	Wed,  7 Aug 2024 11:05:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ewOwClLzn4gR; Wed,  7 Aug 2024 11:05:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A518A80CF0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723028702;
	bh=rt2O7gnLUZpxQBpl3EfCfqiwiLCYGOazr3wmy3opvTU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bfO5qfuC6UleXHEPStDn9S7RZU6M9g/uY3Ef40MDUtBoI5r50QvUae62FUPhnGJsI
	 ZPSypJT6qY12Kh16T+410VkZaVLT5sF6SAWHQo0m96EkIrcy7Ecss9kjquOy5IY82A
	 yjDPwN0RPA5mUZnFiLyUcm/EtxxkT/bb+vcg0nZHmxVthISbvR7s7YKbeKQefGq6sd
	 6r+yXEPBB6ru6BDXcxCR35mwm/INJ3SMsxwYo0gXmgEcYxeup4ogGiTBIsAC0I5VfJ
	 Olt7tHD4zE5O6AqDubpfx6ISyHd48ccvfWbKb3HNank9GflTciwQdXFPAdG3BI9l1x
	 ZWbVkFLCrBS4Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A518A80CF0;
	Wed,  7 Aug 2024 11:05:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A4D8D1BF2EC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 11:05:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 906AB40576
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 11:05:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hBxpQr-ZIvyd for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2024 11:05:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4890740557
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4890740557
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4890740557
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 11:05:00 +0000 (UTC)
X-CSE-ConnectionGUID: r9XCk1OBQmS5urlwSxCN5Q==
X-CSE-MsgGUID: MM6gtNxjSguUJ/faEzTcCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="38547811"
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="38547811"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 04:04:59 -0700
X-CSE-ConnectionGUID: IDhtK8HZQYy2YPDcYZbchg==
X-CSE-MsgGUID: lotWhS8PQXC9HTrasYWJsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="57055609"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Aug 2024 04:04:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 7 Aug 2024 04:04:55 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 7 Aug 2024 04:04:55 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 7 Aug 2024 04:04:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wkHTYx76QrMYpPsj7DJiA76YBs+bcV2+OWfWpHqEQB3aQvY5qfdtIOJadvDGpmS6jQdNiJiGRoH1QB4nQc9u+n97kC5sEdRS6xU/tFlAC8xPr62QYnMLIAxOGyPeLPWxbiUqw8S9ZKN9072+XM5WH8QmJnLwlLZgp0Zgb/yoLTg/U6ksTMR0VpztPkxz/1e9muuOXpWYSrH5zzj2hUj7NEz3YYIEwenvnrEPldfnO0GgXTJp+2dgmdkAy6lagfCZSxXu4ScQRfWwFc4sgAUXsdP0CB8RESKyfamcluZD1bkZXKRSCbJwn/uD83oVEBx9XqVWCitlycyiDlJ4wBsNQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rt2O7gnLUZpxQBpl3EfCfqiwiLCYGOazr3wmy3opvTU=;
 b=r81NLzwX6xpsAwaY+dASTcA7twHiW4yUmCONPxZMHjoQ0ywoD+v3wZhElmdJonZ4Qy+UYiSyoWXVgOaNqJbk78g2KuEzBiHfoWj8OpgIjEKMpMuDqldweNcYhtueuQCUqUyVBXTmj5hLx5jKnjlWQueY5hp/qnrgC7KSlvznHqpPQlxXwCA7q9DUmrFX/uzyMMdeC1gu2PoqP0VVNF1gtZK6pf9QgxTBRKXtNHL/OGobSSnm4kgCYByJ5wAeChdjEColqs6hRVLr+B1cCiAxv3AiJDkvwVhNm5fRbx3MBtYOjfvw8pCG/gGKeqZwlQ2u1TL5c/7hTqsum+3FGqcTPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SN7PR11MB6726.namprd11.prod.outlook.com (2603:10b6:806:266::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Wed, 7 Aug
 2024 11:04:52 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7828.023; Wed, 7 Aug 2024
 11:04:52 +0000
Message-ID: <04affbd5-828a-4327-8b84-8767c1c139f1@intel.com>
Date: Wed, 7 Aug 2024 13:04:45 +0200
User-Agent: Mozilla Thunderbird
To: Manoj Vishwanathan <manojvishy@google.com>
References: <20240803182548.2932270-1-manojvishy@google.com>
 <20240805182159.3547482-1-manojvishy@google.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240805182159.3547482-1-manojvishy@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: ZR0P278CA0010.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:16::20) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SN7PR11MB6726:EE_
X-MS-Office365-Filtering-Correlation-Id: 590daf92-860d-4798-6cb2-08dcb6d0c328
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZXlSTTBMcEZrbG1HS05EZUZWL2FJK3pVMWRIQmN0VmoyTzVPdHRITi9RSGVp?=
 =?utf-8?B?SFJtazNibEZpSGZJalpHZlFIbCtWRHpCdnF4am9qdlpVdDUvZytibGRqUStG?=
 =?utf-8?B?d2NRRUo1N09aaVdmblltNThnSXJmZWZCbDc3TVRHa3IzbFdDdmhEei9URFdI?=
 =?utf-8?B?NzM3bEFiVDE3c0hGdXRzNFRBOG90VGNLQldZczF1OUZJT3lzbmRsNVp2UVhV?=
 =?utf-8?B?MGpkbUY5a2t3Vk5FOC9nNE9EQ0MvbEhCRCtGN043Z0J5Nm04RUE5dUVWQVBO?=
 =?utf-8?B?NWlqcGI0Y0JzRy9qcHkwQmZZSWdEOWROcVRVSnZ1VzNZRnBhcEUxZWhmMlIy?=
 =?utf-8?B?VUUva0N3RGp0dDRYS2dmVkFMQVpRdFFJU2FlMUM2c2FDT3UyWXc3c0xXS1VC?=
 =?utf-8?B?Wm1yeVg0czlVVXBtV21lZDZwN3VxSkhqKy84Ym1EWnNUdHBlMkh0WTgva2pj?=
 =?utf-8?B?RDZUbHlmZzArZE85Z1h3aEtYWTFHT1cwYXVkOGNIYjZpTDF3WVpZOW90eUh5?=
 =?utf-8?B?VGVzZGFVZjlkWXNHeG5ham1rTk54MHpndVhrQllEbWlab3N0U0NiMHhWMGk4?=
 =?utf-8?B?bWtPNzNkalZ6MUVLQWp6QlRaK2plRXZYbmdlai9WM09lSWxTZmRoZ0xFSEVF?=
 =?utf-8?B?SlhQckxPVno0K1NCMzlCZjA3bStvaEd4TVVYc01TWEFLeHowK3kvcTA2SVRm?=
 =?utf-8?B?YkdReTRRR2RBaEVoMklZVkNCUE5vRWkzcTdwejJWd1ZsOHhNK1ZCU2xJVFZr?=
 =?utf-8?B?SjdwbjZsV01XcmFtS0w3WGVRY0c3Rk9mVVdkejMyaGxwUklQeXFXaTdXcWdH?=
 =?utf-8?B?QnFDdEhWZm5wYmhHcG81NG9Mczk5SnlNMWJlRHNmU3VYMVZQbUVzZVVWVzRP?=
 =?utf-8?B?UjhiSFZSczVnVm93YWZxVXlXMHVuV0lUUkxTY3ZrK1ZHRW00OHltaDhnMEE1?=
 =?utf-8?B?MjhuT2g1Y3ZoUm45emxhRm13eXRuZXNIclEvb0JxRW9nN1ZRU242amFUcHlw?=
 =?utf-8?B?WklXcnVnb3o4UGV0MGIwTFZEaGpIWEhCZnhUUzRBSEd6V05BUEpTZjlWcHM5?=
 =?utf-8?B?WXJxNDVmT1Nzb25xVytPRExDNEZPSWpqTXZ5N01DZkxyKy9uRll1b1d0MGVL?=
 =?utf-8?B?OUR3dzBnMURRMHM2cnpEUmgwNFdPeldRa1NYUmtjNG1KV0gzaWtPRjIvTmo5?=
 =?utf-8?B?T1FSWjc0OENJYTZLK0dXRU45VHZFR0F4UndncU5HSjQ5cUdCODIySEhVSHNR?=
 =?utf-8?B?N2UvOHJyTU41T3VTVVJib2pWNlB5WTRSMzlVZllGb1JaMjl0RmxOazRwM2pB?=
 =?utf-8?B?MkFEZThzcDBkSWdUNm1PTklVNzBTTEphUU5heGhjWWtJUFFyQjJrOGhua29P?=
 =?utf-8?B?ZVV4a2VCM083bU1wUVk2NitKMThtV1AvVGxSTW1CR1Q2bzFRSzJqdFlmUTht?=
 =?utf-8?B?a2ljTVpIbmtpTHJJSCtzVmY2dnB0cW5vQ3dOa1F3SUswVE9qREFLa1ovU0dQ?=
 =?utf-8?B?SUJRZUdlN3BqUTFYY1RUMVhOSzNwcFNNWjVFdnFqbHM2SUFzUVg0WE4xNVlJ?=
 =?utf-8?B?YjZZUTRndUFxY3pVamRmUjRJblFSb0djeHF3SFBLVXA3RERYL21PVEI0UTU0?=
 =?utf-8?B?WnRwcWhPK1RRNDJpUnM2cG1vY1dkZjIrbEt2MFlrbkhDM3FaRkdvcnViQ1ds?=
 =?utf-8?B?MFFBeTk1TzBDSVd0WGlLdmM0dzFTODVZbndYY254WmVmOE9qUlFwaWZnMjBs?=
 =?utf-8?B?MmVpNGR5cS9oOXdqbFNVK09FV3hqbTdneGNnZnVVS3pDSWZrcXptNDBMUGxZ?=
 =?utf-8?B?YUtlTjBuOFFxUU1xY2NhUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SDcwTVppOEZ1L2Q0VDVoTUg5U1kxY296V2tqU3RNb3ZKU3JIK05VV3VoWllZ?=
 =?utf-8?B?UEFoWTE4TkNTbVdqOENSNC9QSWRKTkozRmV0UlVBVXJQdU9FUE9Qc0xENS8y?=
 =?utf-8?B?ZHRHQllEWnc4SEdKZlZURUVvSzlMRzJpbm1scytSazV5OFVuanB1T1RqSVUr?=
 =?utf-8?B?T3FkOHZVWTJnYXoyUE1GOHI1SE9kTit2dFg0dmFsSmx6d0hkNk83dUVrT0Fh?=
 =?utf-8?B?ZWcvblp2a0g5SGd0dlN3WUd4eFpiUXpkNDhndjhtTlB3cXhEVlFOaElROXdP?=
 =?utf-8?B?NU9ZNm14RDRNaVJRRVVJNXBQM3hHb1ZRb00ySUJhY2swaW1YOTFQMEVYT0ty?=
 =?utf-8?B?c2ZzWDFsbjdrM0FWcHFyRzNsbW5FVUxpdXNvdFpiN01vRFpwd2ZwSmdwL1Ir?=
 =?utf-8?B?U3grSVZzUjZDTG00MXBjaVZnVGZVOEl2dmpqY1ZvWGJqak0rU2E0YmNsWFli?=
 =?utf-8?B?WloyRWxFYUVRb3A3aklOTGxhRmNNR09YSGZhTXNlRHhPaUEwS1ZqYytkV2Jo?=
 =?utf-8?B?cUtrQVJsTVlNK0hqRHppTmdoajd4ZzhLWTQrMXVnYVdXZlJDZUNQWkc5bkZw?=
 =?utf-8?B?Y3NBZnVXdkN2SjhySE81cjBBd1VIT3BwTEVpNzVnZk5mdHU2anBkdE1CbDhu?=
 =?utf-8?B?ZW9RazJXbWVGYXRKaHNnWkloRCtBalJ6am5wRldBSFVsNDNOWjVFeHZvOTdu?=
 =?utf-8?B?OHlZbEVoT2NMWmRxakhEZWNuQ1JWTGF2bTB3eXlZSGhaT09vdFY3aTNocmFV?=
 =?utf-8?B?ZVNyMm40MU4wUE5EeDRtNEQ4KzFwbmhzanVUR1VQRmxMOHZlVU00R2RlSXc2?=
 =?utf-8?B?NGJpUTJRanZYeVoxcEhrQjhRRnUzZGVlT1VOVHNSeUg4YWZRWlJ0TmkzczBz?=
 =?utf-8?B?MVJ1R3VCYjNDTE9VWjFBSXhkMEN3SllxK0FZT1RUS2RNU1RKZ0c5clM5U1BJ?=
 =?utf-8?B?b0lES2JNVnRiY1I1Y3FwQmNWVnZBd3ViSEpCR1pvQStvZEdmZTRyQzUybzNZ?=
 =?utf-8?B?SzllRHZ3cUVmU01nUlBEOG1ucDJ1L2VLdGVzRGt2MEgvZTYwWC9hL25HWkFh?=
 =?utf-8?B?djR4M2NLMS9uNmYrRmN4Si9yZUdFRDRBWUNzZml1NW1JWTVyTWxOYlRZSWRW?=
 =?utf-8?B?N3VWd0RqNGZwK2FrYVhLcHlHVTVnaFdaekVUd25YV3JaSVZGbGlkaFRtam1k?=
 =?utf-8?B?OXo3b2lpZW9wNlprQXlUcDM3cEQ1UHFCQWE4WTUzUisvYnFoa3JxME55RTVX?=
 =?utf-8?B?Ymdzc3pXdDFkLzNhTmxkYnluM3RSVnVORGtPL2MwVUhPdHdoNUhPZnZNcVJI?=
 =?utf-8?B?OWxNYjZrNzBvMlBnYkgrVEpzUkVRei9OYkYvSXJDTFZERUtrUHhqTmJnSmVa?=
 =?utf-8?B?aENvck1RaXFCNlRvZGY5MnpmMTNjTHRWbmphWkwzaExiUHZkUFZ0NlJJaUdD?=
 =?utf-8?B?Y1p5V2lsN0lCMGpzYXNRdTZCZ2FVZkwvVnArRWZVTys2MmNEb0FUVm92djR5?=
 =?utf-8?B?Z1FwbUttMWFpbUxLd0ZYTk9vbnRKM0M5K1p2d2ZpNDBDbmw4SGNQNXdTeE56?=
 =?utf-8?B?NkNqNGxHa3RhM3dVQmwrVWl1OE1RdGFZVHZHekhlU3RMM1JGTDljR1Z6VjU1?=
 =?utf-8?B?Q2RCYlh0Qnh6SS9ndWlKZU9TTXBvaG1qT3FvK2FpaG9PbHRCcmZwWVBjOEox?=
 =?utf-8?B?MzcwcTBCNTdIVjBIZWtROHA1Ym9HQ0JCaHhvdXpLRVRld0wveng4UHNjWjdE?=
 =?utf-8?B?K3pOUmZJS2FMVzlhdlF1bHNvMlFJNkJMZTlvWFlta0VnTnlVaVZQRkRzb0Ru?=
 =?utf-8?B?U2ozK1NLZGMvTmdkYVg4a3RtZTlwa2NXbnF6cEpqSWlHUkxJZ09vTTY3b0pw?=
 =?utf-8?B?QVZFdmQwbTdJNWFjUVRQNGtmaVIzdFlMQ2tZZXp1MVF1Znd5ZW9sdm1wMXRx?=
 =?utf-8?B?NEczdWw1K0YrSGYySFhBeW1uYzRhWU9yN09RZTJsc2hIMlZyZCtZcktpd3ln?=
 =?utf-8?B?Qlc5VXBhOXVYU1NmUWdOays3UVBIb3p1N3VsRmE1Ty9yM3dmYnFrcHVXTGFj?=
 =?utf-8?B?K3d0Ui9tVklRMElteDNET0ZYOENzQmJ0bTBvQnozVGdDQ0dLbk9yMkcwMGFO?=
 =?utf-8?B?N3ZlN0w0UWM1amdSUmxYU0tEdWtoalBRbFZlZ3orWEl0S01kcXMxb3RhYlln?=
 =?utf-8?B?eWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 590daf92-860d-4798-6cb2-08dcb6d0c328
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2024 11:04:52.5806 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1WB9vfU8TQNK45curkQZvFXKG/gMfX55v2k1CCpJeQ8NVeaFiTX/yzQvGjrQOv6aT0xk63vFNzYu3KfVxyA4i5TU3tiMZtlgz6+6gUNB2JE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6726
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723028701; x=1754564701;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1PJWQTeTtpeG1CoTm6JbzwCEtokMUHFRQ4q3xU0kujY=;
 b=Yaw27dL+A4QrWKDerLFFaZXz2UBucvYDdTtuttTLgMTcNtkx0BXr2z6L
 9IQkRPGaDRRoK7t7i0jB92DVqR7CdL06ehcDqM2KrdhWq+AcsvCJzdeqR
 /RSK5IZZSnu1s66PgMkrxC/RuZsbFIXNgJKImnFAgXA/UoSlp83P2f/xk
 BuS4CrZX3rx0EHsSMHBs27QxGwLobr5OvcQT1uk/2KMNVfCOPEh2dqYRS
 hL7DHI4TkEOIfbF4L4D9nkuz/ei1Agz8OL/IAc1gnWY0Fg1xF7On9D2B2
 AwQfGHEExpGxKe7LLFDFVKuEq7RtEKGEVcOhaCSurP2Gyi22QFJsSGIJO
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Yaw27dL+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] [PATCH iwl-net] idpf: Acquire the
 lock before accessing the xn->salt
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
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Decotigny <decot@google.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Manoj Vishwanathan <manojvishy@google.com>
Date: Mon,  5 Aug 2024 18:21:59 +0000

> The transaction salt was being accessed before acquiring the
> idpf_vc_xn_lock when idpf has to forward the virtchnl reply.

You need to explain in details here what issue you have faced due to
that, how to reproduce it and how this fix does help.
Otherwise, it's impossible to suggest what is happening and how to test
whether the fix is correct.

> 
> Fixes: 34c21fa894a1a (“idpf: implement virtchnl transaction manager”)
> Signed-off-by: Manoj Vishwanathan <manojvishy@google.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index 70986e12da28..30eec674d594 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -612,14 +612,15 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapter,
>  		return -EINVAL;
>  	}
>  	xn = &adapter->vcxn_mngr->ring[xn_idx];
> +	idpf_vc_xn_lock(xn);
>  	salt = FIELD_GET(IDPF_VC_XN_SALT_M, msg_info);

The lock can be taken here after the FIELD_GET(), not before, to reduce
the critical/locked section execution time.

>  	if (xn->salt != salt) {
>  		dev_err_ratelimited(&adapter->pdev->dev, "Transaction salt does not match (%02x != %02x)\n",
>  				    xn->salt, salt);
> +		idpf_vc_xn_unlock(xn);
>  		return -EINVAL;
>  	}
>  
> -	idpf_vc_xn_lock(xn);
>  	switch (xn->state) {
>  	case IDPF_VC_XN_WAITING:
>  		/* success */

Thanks,
Olek
