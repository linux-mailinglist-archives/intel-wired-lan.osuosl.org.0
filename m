Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id //nYNeXaKmrLyAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2026 17:57:25 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9044A67341F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2026 17:57:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="WK/B0EMa";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA3D381971;
	Thu, 11 Jun 2026 15:57:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SNq6KOYtOGIS; Thu, 11 Jun 2026 15:57:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5CE178195C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781193442;
	bh=ahPuEDe6hBaJsVQJ0jZfw2oWqcbFP2B+y/zjdfM/bQA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WK/B0EMahVkG6F+QxlaTy997GYMPsODLUnheKlH/uBmee3ug1xSoQH4zcFewhJlk0
	 GiVkW+mF8q+UwEjm2mWmkdL2n83uBbsqNgdHBMZyGdU8/FpGNtEmWGNAxIAoxl1RX4
	 Y6SmcYondN0SHVRbpPdaJECu8GnIVgQcrCQ1mICJPXVlRenejXrkNbS/AARnNsOj7Y
	 CbFeleK/raZw63mAaAuzIdgo6bTaeorTBU54C+R6ANvf1VmQWxDQDau+IXgakF/Msu
	 jRaqxxB1PvQ26gvKVX3yxV59l8PkADtC3UGe96Jk/GSQ0Q21sR6kHCJ8oviVy5YRHb
	 il58ud05JDirw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5CE178195C;
	Thu, 11 Jun 2026 15:57:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E3320192
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 15:57:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D22048194A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 15:57:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zK8qx3q1BG8x for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jun 2026 15:57:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E84A481948
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E84A481948
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E84A481948
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 15:57:19 +0000 (UTC)
X-CSE-ConnectionGUID: 2lPcG5bCSkW88WDQCs7exA==
X-CSE-MsgGUID: RVqB3mc5T/OgHBx8ctNyvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="82201680"
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="82201680"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 08:57:19 -0700
X-CSE-ConnectionGUID: aOGTAv63Td2dUfhZVELXKQ==
X-CSE-MsgGUID: PYtkis/9RFWEGiOW8cN7zA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="246601155"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 08:57:19 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 08:57:18 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 08:57:18 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.54) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 08:57:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GOa7UtocTryZ60w4u8e4dphaN0hvRHoI7lH4DkPjwI/SyTDIrN9vLHaL1BzzeguJP0knfPhQJQItBggvQeAr7R61Drg9fUPzq3pd0Q19/PTgs5ZSso2kxo2xhl2oqCVhP1zzeBQN8uvysQssVntmB2kmH11QeFpGxfawWLGvWUUBGl1Smy0xv8ZeGll9c/Q36f4frhtSw85WpcebJg/9D2CAql+VoZL2/HdNjR/CJrpZl3oLZ6aN4y7RiMVBC7fAXmm9ySICGAfCEr9dxiMo3qeD0FqszaX3+N5oCIzb9A8pQfs8MhFzbogPPdLwvYjysDI7Im7/3hoKQs3B7Es1wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ahPuEDe6hBaJsVQJ0jZfw2oWqcbFP2B+y/zjdfM/bQA=;
 b=Ni+36FgvsdRS3q/6i4aLnReIOfNcRALGWgbnbt7n9BRE933YAwxo+FZ/ruOR3drGGYZ7N+ZKQdd13VfiXvrKEicSohVfiWf/5yWkHrcuyn/2z/R+Q7AOZUDAbmrm2qz9MYNZeSSBgq92b+iCXQmY1TYzGGgFUaSwT7lfUOfWwsezR45NzuP5VXsx6VbppJDQFzaFmZWHRNMAdxvFnjtFBPWd6/48fhn06GWjGE0qzlJYdZ4keboogwf5dOzfVxSkkW34+XDatiQxEeE5u/T6HcHYuzdh/l6ZvlQZPIEdL+1HG4361G+cLx2OCYgMupOKCwzsY3ZV0p0UN+NTyX0PRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH8PR11MB6854.namprd11.prod.outlook.com (2603:10b6:510:22d::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.18; Thu, 11 Jun
 2026 15:57:13 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c%4]) with mapi id 15.21.0092.017; Thu, 11 Jun 2026
 15:57:12 +0000
Message-ID: <b601d0d4-d472-450d-a966-e18c9642a433@intel.com>
Date: Thu, 11 Jun 2026 17:57:06 +0200
User-Agent: Mozilla Thunderbird
To: Danny Gonzalez <digonzal@google.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, David Decotigny <decot@google.com>, "Anjali
 Singhai" <anjali.singhai@intel.com>, Sridhar Samudrala
 <sridhar.samudrala@intel.com>, Brian Vazquez <brianvv@google.com>, Li Li
 <boolli@google.com>, <emil.s.tantilov@intel.com>, <stable@vger.kernel.org>
References: <20260611002437.1671401-1-digonzal@google.com>
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20260611002437.1671401-1-digonzal@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0044.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::20) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH8PR11MB6854:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f5dddaf-e229-4652-a2e4-08dec7d219d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|23010399003|18002099003|22082099003|6133799003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: h6Qes7soocOBwhTVau2nEmxgcqMFNE/ZW7gHms72KimkN7pwBVFYFE1LVzf5WeITC9k6t6HdmVRNzTJlZpjR3PqjqERPQsRj6xrNyT8RNSZRd4imBfQ9W34yGVyWHfF0koQX5+OMpKntmUsGPx/PpkUkNbmEup2k7t4PNdBGhg82vghoAY7wbIhq2I/kspppGkZXzdzue5cxZB7W2uC7XX5ntuUmHA5CqvenBRMvZznQicuh1owjXCFmNNZn+AObRADOjdVmKiP00qwGXI+9V6e/7UI+6y2OgQ1ZKYoZJzB+Gy/bQp9fakamO51ftkO7E+zHEHfXXSqd/H6WC4BvU7wb1Qtb1fa8waHLmFJMe2XcGsagqP98KpCIILU//ZgnMFwwGn19ZgtiRSfXnxUqy9IhFNfHjinDhWciEYbu54vwf+0sHnHyI1bx8GRsQufKFdxC2cot81+8g0rCwby5ONAOdEiWtKJDeAaONpPDIBWlX9DOgNka/eE7EyUq+Fn7/ZBnD7EceWNhSSLVaZbGnL1DTJLhtH0g6VVSgBj1bU74ni/gXHKtldPE4LKcCUKRqqo2cJ31pCJnYnjk9Xjqvn38W1KmD1jGKdwuLWUtdloVvuC99fvOEwSrMFWpbFrYaCunxWpGxsWds6Ish62R/Xj42jI+OsswJ1EVVvPwr4vP2OmtR4pC6tI5Um7VvCu/
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(23010399003)(18002099003)(22082099003)(6133799003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V3g0ajRSQUdramZHN1pJNWVBTEZzWDlhRGdyaTN5SE5jRWFCVWpFQnFkdUxt?=
 =?utf-8?B?MU9xQXUydWVtTS9JUFVZZ0VmV0dRRDRkOHB4V2FGZzY5YmxVNTNYZHZVL1Vp?=
 =?utf-8?B?bHJ0dmNlVnBtOFpIVHB4cWJUZ3Uxd2QzNDFlODdQN0ZuZkoyL1VtQVllN1NN?=
 =?utf-8?B?VDJTTThVQjdZUzBqN3dDU1JOeWxoNWp1enZXNCtGWVY3NWdsQnUxTTQ3QkNi?=
 =?utf-8?B?THJ4Um1iSDlXSktZa2xIem9lSHo5NWRjMGdIWWE2VzFYQ1NzK00zZ3R6d0Mr?=
 =?utf-8?B?RDNseXYrMjc4T3NyZytDbGdpay9JbG1VMDB1ZTFWYVpQWGZCNllseFlaTUVo?=
 =?utf-8?B?ayswRURTTm9YNm92cEVFeDkxNDdFbER3Tk1FQkdaK2o5ZmZGZEZ5VjJpQ0JZ?=
 =?utf-8?B?TkhqNTUyak1QcnhObFhmb2wraCtYWFc0bkVzWnMySmFpZkVyWWhtNFFvR3hn?=
 =?utf-8?B?Mm1OY3QzRHd5ZU1pRlJqNFVhc2Z1TC85aGhlQ2tpRkpBS3VPeTl0bXFITnp0?=
 =?utf-8?B?YVFZRi8zdC9ERmZMV1hrVC9XNlJ5Y3dzOER3a3MxSi9nejhPR2p1czF2Y3lw?=
 =?utf-8?B?SG81bVdNNnM0b2lRMFQxTi9vd3pORjRQZUZ5SUZ2Rmt4SEpDVEtkSkhqb2Rt?=
 =?utf-8?B?MjdYTWlrcXIvZ29FU3NaUFFQZWM4bmVpdWM1UmVpY2JKN2RFdFNNeGl0dUpE?=
 =?utf-8?B?VUpUWHB4b2E3M0hmMElnUWRneDB1K0t4SGxBT2g3ZE9xOWNyVFc5UGZ3bkt1?=
 =?utf-8?B?T1o4REFxSnZTL0dxOFpiY29tMFBuQms0ZVJyR3E5WUN3eTdnL2x6eXAwTlJD?=
 =?utf-8?B?NkMzWTgyUkVQSUt4MDhjOElpRFR6cERITTBHVkJqM3QxdndUVThGRzVpVFI0?=
 =?utf-8?B?VFR0NFpuY2hlTzhaTGRpNnNMMGtzU1RwMk5iNVJtaGdXVXAyNDdWeURMQ3h4?=
 =?utf-8?B?TGc5TDVOS3FoOHJWS2YwRjZoSEJLZVM4N3FPaVBSTUs2MnZQc1dacmpGdUVO?=
 =?utf-8?B?T2NhWko4TkdmVUozWHNGY2x2eUJrdWRob0ZRTDRjenVPbEFiYzFaVVV1QXdl?=
 =?utf-8?B?KzNNbG9NT1ptSTgrbjZIcy80dFg1RnZra3l0eHREalBQOVNCcVM2T0lrd3lD?=
 =?utf-8?B?U0xlcTk1ZS9nU0NJNEkwZFpUYkhFQ1VmTC9RbytuRW9VdkRTalVmUXhQcFlo?=
 =?utf-8?B?S0ZzUjdwNjZONEg0MFZhRC8zQkNuQzVVVVFLZEluVHRLYnFkY2E5ODlxSHph?=
 =?utf-8?B?dmcvOVFqbDFjalg5WjkvajJ1ME9Qd3daTkpwTzQwNk56T3pFUWRDS1VHUklM?=
 =?utf-8?B?N05uQXVMaWV2ZWhLWk9mR3hWb3NDVlpNRWozOWxHU0tvNHFRWUhEekRrWWhw?=
 =?utf-8?B?aVk4Y3FjQjFTMnFHaUFaaGo1bnBhRGhwSTd3R1grQWhrUFB2aURvTmlKYXg3?=
 =?utf-8?B?MS9LTWV4NXVnb0lsZTRsNUM3NXhQMy8yYzBRMHhkYTJNaEMxa2M5VTJkNW5i?=
 =?utf-8?B?dEpkNXQrc05LNFVXUWRuOEltTUxEL3JJVVNKcGo1NEFlaE9NdjJ4dmg5MTFV?=
 =?utf-8?B?R08yUWZoL1d5cWNkZGJWOWNoaE9BeS85Zm5QT1dRamhlY0Iya1ZISlNTRU00?=
 =?utf-8?B?S3JkWVUzOEZmU29VZWU5dnhBek9JL3M1cUhtUWdGZk44dFNZUC9PVGtOdVNu?=
 =?utf-8?B?K0tXL29UNXNFbWlnY0xvaVRTeTVLQjlEVkM1eHpSTzVmQ0FMd0U5QW5mUmJD?=
 =?utf-8?B?M09tVW9Xa3h2NHV1KzdzblhCeXA0UGFyK0ZhcFJ5VCtabk5yakpFVXNka2Nr?=
 =?utf-8?B?UnB6V1lGL1R6cko0b2hXczZZakFReFJOZ3FBTDY3dG9waS9rOC9VejFGNVo0?=
 =?utf-8?B?QTRwK3ZJWjhnblEzZWY5a0M2MUF3a0Y4S0lOTnhJTVA3NXZjNzZqUkhKQ2w4?=
 =?utf-8?B?a2pvWVo1R2RwLzRuT2VPTjFmL1p4bWUwSEhPTml3S0tlYSsyeUQrU3NCR3Fi?=
 =?utf-8?B?RWZ4aVkyNXBHK0E5TW53eE12dlpXb0tFVFRUaU82eS93Q0NOYUhIS2Q2bVUy?=
 =?utf-8?B?amxpTmRUMG1FY2ozbE1DZDR0R0FReWdLV055M1NYZ3lnSE5zYjNTUHJTdURU?=
 =?utf-8?B?UXNVQTlRVkRHK1E4TnVkcGJTVUJsSlpHcmVUL0VlVkhoOG1zTFlGbVBYUlhO?=
 =?utf-8?B?djV3SGlwN0hHNmxRUGR6bkZWWVBSMmFIYWNUMVRRazVlOXdqdUxhVHVGaVNX?=
 =?utf-8?B?S25wMXFuVHgxSnkxaTNQeFhsd3hlbzdvL3pOSEg0MFl3d3dJTXdvM01zOGJ5?=
 =?utf-8?B?MCt0aWRkWDVleTdXV0ZPNmp2enpCcUY0bXlkRFJONlRVVU5EOXdzMDZVcDFl?=
 =?utf-8?Q?pMERkgo6MdxUGjCg=3D?=
X-Exchange-RoutingPolicyChecked: MPm9fYH7jHTVFG48fimr2rzG/Rd9r8YFBNK7CnjnB9DdJzABgXpqIhVGj7bHOPgC9mWEqvEYoyfv5UsDnhwdajnUeokyCfXPK0INnFRhnuekVwz2KLavzklK6sUpinhT9Rgkx8IKIMsNppv+hrga29rO3NptMVEorJ1W1/eaS+p9Bi93ASNRBqHIfVQd0Svpj0fx0Klkq7d1COqH0YYvP6kTpDrLnvXWEi/09eRr0h5FDtSDL7Wrc9rqruKdcv55ZDKIIwfzncAGZ+dddBbqgDJQ4NnmwZbcGUfjPnfDJRojVsCtQvZv8Exu24tCuOogMIRgdhidPQyOkK+iGsxeug==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f5dddaf-e229-4652-a2e4-08dec7d219d3
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2026 15:57:12.6870 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6bWdw6WycQYvK3oM5ZS0lGiENu3UI3KE7LOh0vY1zzLrc2Zh47O1QV5F3KputkSNGSjZiQfIxy3WiL6v1QeAAxriRUymz8P/6YA/kYLxYD8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6854
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781193440; x=1812729440;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ka3TMuPWQXhN/jkExosZdBpHmVnm7K+t+OXt2L88K0A=;
 b=XaKTT3DJzqR0vw+lUAxiJ5h05d1qQFNFdE8ycsrNoJBbviN7/H1Bz9TM
 zx0oBHLs3w1G+iwWtiNpWR7R1jaMHQc3Q7Or13FBfzPv2tTHiQW2xXQyY
 as3bPBBQD4Tn1LHHMAPzClxrmIZKL0GFBOA/1CkgAnvS2ywBt/jOQP3Vz
 08Xhsa32rFlAiOaFYhzIhnblmSPkSFIa2EnbCBLKEZ0PJMG0Z+0ENbQXW
 w6XBW/kvyxdVSnWaEkgMISMM1z+GDT9wKdziz1XcT4UAga7xuf1/p+afs
 mUv32bgnC7LD0ozPRO514gqUH0cOdbw/8hitmmJSL/1S4NjHuhEw8goHW
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XaKTT3DJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: decrease statistics
 refresh interval
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:digonzal@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:boolli@google.com,m:emil.s.tantilov@intel.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,osuosl.org:dkim,osuosl.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9044A67341F

From: Danny Gonzalez <digonzal@google.com>
Date: Thu, 11 Jun 2026 00:24:37 +0000

> The default 10s statistics refresh interval is too slow for real-time
> monitoring and causes network selftests (e.g., uso.py) to fail when
> verifying traffic immediately after transmission.
> 
> A 10s delay also causes aliasing in telemetry tools polling at shorter
> intervals (e.g., 5s), leading to inaccurate rate calculations on
> high-throughput NICs.
> 
> Decrease the refresh interval to 250ms to ensure fresh stats and fix
> test failures.

Have you tried a bit more conservate value like 1s? Wouldn't it be
enough for tests to pass?

250 ms is also okay, just curious.

> 
> Tested: drivers/net/hw:uso.py now passes
> Fixes: a251eee62133 ("idpf: add SRIOV support and other ndo_ops")
> Signed-off-by: Danny Gonzalez <digonzal@google.com>

Thanks,
Olek
