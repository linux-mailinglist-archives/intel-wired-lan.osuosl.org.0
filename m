Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FD3A4BB8E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Mar 2025 11:01:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22D7A4095A;
	Mon,  3 Mar 2025 10:01:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jsZqJtsWB_Qy; Mon,  3 Mar 2025 10:01:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11D5C40DF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740996061;
	bh=aaiTR+oYY2X9w2FY3jCLhKPojX7p3R+jHetFTtlKF48=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5O9/9ZOPK/kt/2FxgbzHkoBmDc38xzxBCOdswKW303rjuSrz77Gk8S5aFyHb7tj4D
	 i89bLNENZllDXMv+t3LDHdqY0qqbzjlEGDBpv8SAJeq1Erzb03hvk4z2NpK6tm0ygp
	 ZsBDc/cyhk6fBJYVUb6VsLGres9Y7cmaEScgRRCf9Xhjrx9jaiQruVdHCmW7J8bx6z
	 F7G02WsJIYk4maIIR6I799PLYgVPK7uVBAz2v494l/G9g6Bvvu82drlT9n9iCTaIZh
	 QTblgjzxeaUgCz0LoGSIvfy1P0h4VZzl5Hp/70WomgdLKiv3iHDTD/9x9upUWudcKi
	 EWaKkhfEbzwHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 11D5C40DF8;
	Mon,  3 Mar 2025 10:01:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3FBDB182
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 10:00:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3A4B9606BB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 10:00:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d5K2IahaRpjZ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Mar 2025 10:00:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3463D6067F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3463D6067F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3463D6067F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Mar 2025 10:00:57 +0000 (UTC)
X-CSE-ConnectionGUID: HBjENaQRSceCo08YUmgZXg==
X-CSE-MsgGUID: DXxpgnF5QjO6J7nAxSR0NA==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="41750598"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="41750598"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 02:00:53 -0800
X-CSE-ConnectionGUID: AWaiMi8iSOyhS/hMV64Hog==
X-CSE-MsgGUID: wLNH8fjSTtqo1hQ86oS0Kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="118142751"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 02:00:44 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 3 Mar 2025 02:00:44 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 3 Mar 2025 02:00:44 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Mar 2025 02:00:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cSAd998bhdiu500J1V3E01gZ+Rt76480+C9Z8NqHNGTtjAWhl4onWHkONIKisZDszlMAv8QnFeC8GXqaKC+D3j9dHS4ZxFSvWvF9qkEybd55nN0o0ygxB7f4g/oS3AEVPKdo5B0LaZRfxg8ATybYrN9jR3aPgCXudqsmhuYT5Fcg85o582o1C1Afz8iLJpzX0x2AmgEnNoCaWgT2h21KozklGBxB7x7e3NzDd+DOSHZuRYg/IfrDsZHpvx+EPZ6nt3TqsufZI5JNFSaofF+jeAzPW/RVJi5s72VadgwDGBblSHeCijhygJleU9oxN6MT2wKWKdYMfLS6C8+g4wqmyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aaiTR+oYY2X9w2FY3jCLhKPojX7p3R+jHetFTtlKF48=;
 b=BICxpGQeKG+awndnZXUEXcHVE74gDTOuXr/AQ3cH4Qk9pqOzy9Q+fku/evLenACB6fDgpTzS5NE3H6YZK7S/ngAjgeMS8HjKd+zkQa+MbI0gprm4n9m36Hkwwk85paaz3vpOiHV1QIQzaGVtjhsiAiA8Wi6mDWNsL2sUV5rquW1gXOMWEiaAjluRT9HtkuB5/iLCuG+d6j579NYs0bY3pIjlucjp3g+zdG5NTKl//LhInKn/1OVHB4grQKxvseAS5hUZEX/D2Mw8C/QEDLxuKGbTIs5da+cWhSA8nVDyWLxUr+C4UCVgJiWRGvbdHsW+y5qqb8FZuOK5SaOVOz/5Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SJ2PR11MB7475.namprd11.prod.outlook.com (2603:10b6:a03:4c9::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.26; Mon, 3 Mar
 2025 10:00:40 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8489.025; Mon, 3 Mar 2025
 10:00:40 +0000
Message-ID: <68c841b7-fb5b-4c52-bd55-b98c80ad8667@intel.com>
Date: Mon, 3 Mar 2025 11:00:35 +0100
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, Martyna Szapar-Mudlaw
 <martyna.szapar-mudlaw@linux.intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, "Mateusz
 Polchlopek" <mateusz.polchlopek@intel.com>
References: <20250225090847.513849-2-martyna.szapar-mudlaw@linux.intel.com>
 <20250225090847.513849-8-martyna.szapar-mudlaw@linux.intel.com>
 <20250228171753.GL1615191@kernel.org>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250228171753.GL1615191@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR10CA0113.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:28::42) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SJ2PR11MB7475:EE_
X-MS-Office365-Filtering-Correlation-Id: ccdab905-ec6d-4bf7-6792-08dd5a3a4142
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S1JQNDlLRVpIVzdPRmduaE10eVVINFh2L2xTYTBqK3FlMjlkOVczWjZrckhY?=
 =?utf-8?B?QlEwVnNkZXpLaXRoelZzQTVmOHlmZFpNVGNxTkJ0NWJrYTBTK3ZadDlmcUxZ?=
 =?utf-8?B?Y01wR00zQ0V2Mjdhb2NZMVZWd1FjUEIwYjk4SU9TU1Z6M25vREEzT2NGZFNa?=
 =?utf-8?B?ZEIwSFJiR3lGR1BtNUw2YXY1aitMQWRzWU9wc29tNi9rdjFLYnVHYkFYVi9Z?=
 =?utf-8?B?cnd1T3NZMUhWVzBnVnBjbUwvYlJjR3I3NDhBaUZQYytOaE5KMDlXRG82Vmg2?=
 =?utf-8?B?dWxFTkpnVXRKR00vUlNXQ1NQbVVkL20yK3hYR1JDZ3JsdlJTTHlKM3kzL200?=
 =?utf-8?B?MmdsWjNJZng1R1g5UjlkSUhlU1NUdkdPNS9zNlhmam5OZXpjSnZUYW1ESVpl?=
 =?utf-8?B?ejZ3L1FrUWJXVlcxMm5kekJZazNDNkJNOVlEU1VNZ3VkeG1FL3J6R285YUxI?=
 =?utf-8?B?WVVlVjBmVGFuYVJnb1pTRmFnTzBDZHN4M3ZIQmhzZFNzVVpXeERJNC9TaXc2?=
 =?utf-8?B?SW1tQms0THBsTThNcG9YeDJ3SGQzTkcxVWc1aXhPbWJCdTRaNzNWbm93UXlW?=
 =?utf-8?B?ZVpBL0E1d3BQeVBhRHBDSUgzZzFXcWVZcGpydTBUUEpyclZRQWc1d01WRnpk?=
 =?utf-8?B?UWhtU1BpUFd2Nlh5WFJsS3Fqblk1aFdTVmtIOGtWOWFXOWVRYUNib09mdWg2?=
 =?utf-8?B?SVdNZ2t0Y2RldGNUMmwvRk13ckxiU0xVWTFCbHVjTkZLbENBREd3Z1BGQTc2?=
 =?utf-8?B?aWRaajlBcG0yWCt4ckxWQlRHOXJzWWxZbnUyU0RFRERUVVZUVlZ1T0hKNEln?=
 =?utf-8?B?SmQwWkFnN29PWXVYZVFKNmhDS0I5bFdCOGVYaXNWd1VuRWVreWpzSzNzMTBz?=
 =?utf-8?B?NnBrQ2ZkUjBlRGxhNE9pL1ZiY3dHdWlCWkU3bmg2QWEvaFFOREJiYVNWQXo4?=
 =?utf-8?B?T3pSakR6NGtCaGU4YXhteU1ER3pRTmk3cDNZR3hac3ZPejZOUWJQNURqUmNN?=
 =?utf-8?B?Mjhxd29JQ0NhTXJ1RDVvd0FnMTZZVmZMM3k3RGRzRlNyYUJVUWttQ25zQUhi?=
 =?utf-8?B?RkpkR1VHWjByb09qNDJNQXFnSkdLMW5NbEM5NldxUStjZU1NZkZvNC9NRWEz?=
 =?utf-8?B?V0dRcnFlQnB0WjB4dkh5RTNrY0MvbCtqbWMxN0x5SWlUZXkzRGZuSWFPN25W?=
 =?utf-8?B?Ujh0ZGRETHh6UWgrOFptN2lFL1hXTzJuOTdnbmlmUmw4R0IzOHFhMEozajhV?=
 =?utf-8?B?Wk1EOUd4WWtFaGZiSm03ZlNjbEw3T0VwV1JmVHpyV3IyR0R1c1RiaWI0ZlR3?=
 =?utf-8?B?UlhXeFVEMjFjMkdmQTU0ZC9tU1pUNTdUeTczemVGYUlXanNZWlVnRVdZdEZW?=
 =?utf-8?B?QnpTZ2Njb0lRazhzSWVQNlJlRUFJMjVBMkNpYmNwTEFuNFVNVGc3UXhRQ1Bu?=
 =?utf-8?B?ZCthVWxwbnlJM1duVEdGZm8vcjlYbjJydUlQWUZIN3g3TGQrNUFIeUFNdWRH?=
 =?utf-8?B?Z1BGQ0ZvZ1M3UzBXM1hra0tQb3F2NE1oS2tRNlpyeEZnQmtRcTNVcStpOUR5?=
 =?utf-8?B?Z01ZLzVIZ2d6dGI4M0VudSttVGZJSHlMaHF6OVl1QzJSNTJIaWdqdTJBUUl1?=
 =?utf-8?B?c0ZUR0xkcTFvamNDMVV1enR5T1VJOTdJY1dXYVB0cE5QRFVDQ0ZFVUY1Mm8v?=
 =?utf-8?B?TnJFdWYxczV0Y0tOY2gxLys4ZWVxV0dKUFEvMmV6d3pkODNVK1kvUzZoVXdC?=
 =?utf-8?B?ajdwaU1oZjliL3g4R0d0MEpyY0tJVmthbzUwU2Y0SE5lUHRlcWNXSXlUKzZ6?=
 =?utf-8?B?VGFFMXhpTFQrL2ZlaVFKTzBaeWdhU05Rei9hYnFZZ240eWJlYm1mY0lJOUky?=
 =?utf-8?Q?4stLdTzpgcThj?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MzMycEczSldwZFV1NmxRcDg1T3RwbEpJVmd5bS80N1RVSUdyZENnSVAxYk13?=
 =?utf-8?B?SUU0TElFSjdPMmg3MFVSbktZcWNDWVVxRGdJZEQray9FZThsZk9SSVNoQmZL?=
 =?utf-8?B?RVNMRUpMTEM2NmV2NkdQNjJEcGNrRFdGMURoOUR0ejE1dit0czgyYlZjdFNR?=
 =?utf-8?B?OGdOb2l4SjZmOVd6Q0NiMTVyaHFkeHBEWllGOUd4MENJRmdnYks1aDZrYnFW?=
 =?utf-8?B?RjNUOHUrSlgzQllGN0ErczZsTWV1YlFzdW5BdzMzcjZZRW5qemZNVmNiU3pF?=
 =?utf-8?B?bjdvM0xYd3VjUEJRSmoydU85NlV5bHB2TkJCUW5HTWtQRldlMWhIQm5JVkxM?=
 =?utf-8?B?N3RiOTBUV2M4YllwR2IxdXlkRkYvVHBFc09yOTM0ZWZoekZleUdLRmVnZ2tI?=
 =?utf-8?B?Mk9oYVpBVFFWczN5ZFdKUXltcmh4YmhyL21wV0x3L25zSEZFR2hDZ3B6Smt4?=
 =?utf-8?B?UUNJV1gzNFZYdDBYTVR1UFRHK0R4UnVyMENEdlpRZzlwVHJJclFWeThsZUd4?=
 =?utf-8?B?dUc5bSthbGEvZEIzSjg4eGNsSFkrTUR4Wm04cmQ2WlZxeHQvSmxLVG1QTGJx?=
 =?utf-8?B?dEVkdzgySzRhRytoOFVmMEc1WEVpcHEwUGloTUt3RUR4dm1qTEozU1p6bUgy?=
 =?utf-8?B?bEpoaSt0UFNSaXJkVllkb2ZtNjN1bHI3SEhWbXZuRnJMdUVNK1dhV0tNVWVl?=
 =?utf-8?B?RVhmSTMzUFBnZncxb3p4Z0xuUGpWai9EZThYMENBM2FINm90SGFicHVSVDZL?=
 =?utf-8?B?YlVZOU5YRVJzcU9JeWxYVU90b1hvTkh2YjcrVXFkUndHd01PdDY3YXVHNzhx?=
 =?utf-8?B?eUh0NitBcXFyaUdJYnZoMG80YXJLSjZ3aTJXWFYzdzNIVVhHby9WZm5NcWtT?=
 =?utf-8?B?Mk9HQlRZeWE4OFF1UmNqTTJoVEt5OGpLSXQzRWFHR0NrT3VjdTIxWkoyZDly?=
 =?utf-8?B?dk1ZZ0ZUL1NnWXVaa2tsKzcrNHAwRjZ3YkdGcUg2YW9Vano5TkZaVVkyNkNx?=
 =?utf-8?B?UFV2Qm80azhKY1J4UDU2VnZPQXlTeUtHdml3QnNZNTgwVWZGckNIU0xYa0Y3?=
 =?utf-8?B?RWN6cWs3bC9pbU5HQ3lsSVFVL0V5RzgyRGJMSVpIaHBQOFdFUCtmaGlpcjZt?=
 =?utf-8?B?bjJkdllGMWxnR2RSbkdKZ2xWQ084TkdKdDlWZFhQS1Jyb0p6eXN4VUxrT2xQ?=
 =?utf-8?B?TFNBMnJUODlaT1MvREROZ2NQRXUyaG9zZW1YZWNaUjNtQTZQSlQ4UlhPREM4?=
 =?utf-8?B?WDRhdi9NVW1UWmFWeDIwSHRldUtoM0JvUmJ4Z0FHQXNyQXZQUFpmYWhCKzhL?=
 =?utf-8?B?SW9VV2JRcjJiNGkwYTE5a1Jzdnl3S2s5Zlh6TXh2L2x5UXVzMUNpSmcvZWRQ?=
 =?utf-8?B?WGFia2hlcGhQeTEwcE9jTTlTOUN6RTB6ay84OVMyeFJjZFFoRG1MYUZRTWpy?=
 =?utf-8?B?NVgzak8vcTdIQkxJOVBWaVEzT3EvY2hpRjJBcUN0N1F3WFlocmxsbW5zSDhL?=
 =?utf-8?B?TGx0Kys0NzV6MVNvYzlqVzRhZlJKMmhNbHArMTlYcXpXc1FuNzZkQXZVLzVa?=
 =?utf-8?B?WUZyMklXWlQxbEVSYkNkeHM2Qy9HOS9iUWMvMC84UXhEdmxVbHhuUE5jY1RR?=
 =?utf-8?B?aUgzM294SnQwM05BbW96RnJHRnEyYm44V09LaENEeWtRMWxyUmJjSG52QVB1?=
 =?utf-8?B?UkpHZkRDN3cyN2pobkRQdm1FV1I5RTdmdVFXanVPdlhKOCtwVHJCZzcyTldY?=
 =?utf-8?B?Uzh0N2dLWTh1RGVTSWsyTTduNEs1U3BpRkxhTTJSeWRXZUZoalV2YjJoWEtO?=
 =?utf-8?B?WkFYc0FzOUJLZU1XY0JTVHF6Zmk3eHVKdEFLUkFYOVFaeWYvZVJmTkJvdUJo?=
 =?utf-8?B?ekozdWRqQzdCU2RwVCt6STN4VWxiUTNkVXJvTzhEcU92YlNKUVMwY08waUZZ?=
 =?utf-8?B?VG8xOG1ORVpQaGZLUlF3L2lmaFgxSGhYaG9tUWdrd01rK3d1V3dKaExHK3hk?=
 =?utf-8?B?Q2FnOUJQa0I1ejBCWnlIenRnM2x2VjM0WmcxSkZrSG5HbTcvdDV5cHMwRFdS?=
 =?utf-8?B?S3ZEcXJLR1BKdlEvWldLeVgwNFRNMm5VWWRMbkovVDRjQW9MVjgzeE9MeEpp?=
 =?utf-8?B?eVBYWThXcjdXUEI4S0FwZkczTE9tVVBVVGhhcnd1V1pqWW1sYjZRYk9NMDhZ?=
 =?utf-8?B?V0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ccdab905-ec6d-4bf7-6792-08dd5a3a4142
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2025 10:00:40.6898 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hqw5CeIlDa3MdGvYjp7HIOXQmJ92kvPey98F2+tkJwMUiilZQaAzvd8YD0iCbqKgW13pUhiOOR7m1WVwrJaGADWqE6fKkQJPpsEp+k2tNXM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7475
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740996058; x=1772532058;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QBdp8bUK9dG0vlVTMyXP2rM5pi/Zy3X/TAKPc7ZcgPs=;
 b=YNWI8jPLjkx4A6lYDujVKSKC0RQsy3ZvbJys7IPZ3/AX0My1nwbWS8Hl
 2n/orXF9QTQ/QwJDPlLKWdLyZCpiL0DMGIqilXuF40z1VLm30ofMPJ9zU
 4B3JKZkOpKn8mdKu+vtPE4zp4JntBhJOnJJgIn9aurI1GmeKf+SLamMvJ
 QFWWe9SPzkQ5si1nzWCC0vUTp796XB9c478rdmOZq7+jFPyJkguWQSH20
 H1rfuwL2kf6uDwwcAK4jszaFTMs1kllh8fDvgaBRa0w6OZTlnr79ygHoI
 kl2SWKYyC7Kb580wfhLe7fNBxmTJ9fwFTU9zbiblxdESmyXbE+xDMCJup
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YNWI8jPL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net v2 5/5] ice: fix using untrusted
 value of pkt_len in ice_vc_fdir_parse_raw()
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

On 2/28/25 18:17, Simon Horman wrote:
> On Tue, Feb 25, 2025 at 10:08:49AM +0100, Martyna Szapar-Mudlaw wrote:
>> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>>
>> Fix using the untrusted value of proto->raw.pkt_len in function
>> ice_vc_fdir_parse_raw() by verifying if it does not exceed the
>> VIRTCHNL_MAX_SIZE_RAW_PACKET value.
>>
>> Fixes: 99f419df8a5c ("ice: enable FDIR filters from raw binary patterns for VFs")
>> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
>> ---
>>   .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 25 +++++++++++++------
>>   1 file changed, 17 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
>> index 14e3f0f89c78..6250629ee8f9 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
>> @@ -835,18 +835,27 @@ ice_vc_fdir_parse_raw(struct ice_vf *vf,
>>   	u8 *pkt_buf, *msk_buf __free(kfree);
>>   	struct ice_parser_result rslt;
>>   	struct ice_pf *pf = vf->pf;
>> +	u16 pkt_len, udp_port = 0;
>>   	struct ice_parser *psr;
>>   	int status = -ENOMEM;
>>   	struct ice_hw *hw;
>> -	u16 udp_port = 0;
>>   
>> -	pkt_buf = kzalloc(proto->raw.pkt_len, GFP_KERNEL);
>> -	msk_buf = kzalloc(proto->raw.pkt_len, GFP_KERNEL);
>> +	if (!proto->raw.pkt_len)
>> +		return -EINVAL;
> 
> Hi Martyna,
> 
> It seems to me that the use of __free() above will result in
> kfree(msk_buf) being called here. But msk_buf is not initialised at this
> point.
> 
> My suggest would be to drop the use of __free().
> But if not, I think that in order to be safe it would be best to do this
> (completely untested;
> 
> 	u8 *pkt_buf, *msk_buf __free(kfree) = NULL;

Oh yeah!, thank you Simon for catching that.

I would say "naked __free()" was harmful here.
