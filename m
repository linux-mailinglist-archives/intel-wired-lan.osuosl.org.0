Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A30A8959F17
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 15:53:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3E40A4011A;
	Wed, 21 Aug 2024 13:53:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9X_w28BxeKly; Wed, 21 Aug 2024 13:53:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ACCE540201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724248389;
	bh=zehJBxIdwcE0pu6erl6ULhumrBMD0tIaExYfQjyJiCk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pOrJscVWCzG/p9fUCCmVLUdw3Ase+Lg36YDc/btnSDuZRXWL39vkGhoret5/7NNUZ
	 qNjIrNGAw+DMEtCgImKdbrwdpPh47vQTxLaXTzADZy0tZY2hE/wP6RspKFXUZRdCQe
	 F2l4t1yFuVaNbIodHIudUX3RGa6C3qeVX2bxTIzGQ3TiZrDcXDBBquRp8uPePAUmBZ
	 Q3Kqvn3pHuYCJSU84YRPCc/e173wx7SceoB2xCmqoRHd04K+H80/V2wxL8Pn9trlzB
	 W17zsLZ8p0MjS2ERFZEWFYk+Q/n5XkV6QIhXBQ/g+qDRzWDKaKuJP7akAC0YpODWBi
	 yOW4Aa5h9G8WA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ACCE540201;
	Wed, 21 Aug 2024 13:53:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B4AA71BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:53:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9FA726069C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:53:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sunOjHnOhfLA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 13:53:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8E5A26065A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E5A26065A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8E5A26065A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:53:05 +0000 (UTC)
X-CSE-ConnectionGUID: r5mIgsP6RgmoeneSpOLB6g==
X-CSE-MsgGUID: 01bLnxjtR4Osy8MnjHPDIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="26476357"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="26476357"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 06:53:04 -0700
X-CSE-ConnectionGUID: jwCA67ykQd2kwZjCFMoxPw==
X-CSE-MsgGUID: Mwm03WDLTwuQdlAZC7ZKcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="65447158"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Aug 2024 06:53:04 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 06:53:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 06:53:03 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 21 Aug 2024 06:53:03 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 21 Aug 2024 06:53:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BARfcuoP9Pa3eIcPfC0+/FA4I/lPviCOSTJnsmthlI/fXq6tqZz9ioZM9y5i5uYpTdNJC7gTZRimVh9ampNbZ3oEXP9PKkMAo60XafZKU8VrgcNr5DKuKi/fqarOqRaztOn7CGjUxJJW7Vggt3bs1gvTt/TJWCAls5fyGpuyej9xve3oMJCZuVAYQQXsU6NHZN3xX1mE7o7ECbPN7gUfeiL3Kz/mPPZ4unNkZAOYJJT5egdS/NJTZZMfLRTlEZzG37/aNVQgYkd0HvkmU4wiI5gaYK8i2HrQY1+kqLpigds0laJu92ja+ybGC2BSUupKIJC30IixNbPJhUBIy0ZofA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zehJBxIdwcE0pu6erl6ULhumrBMD0tIaExYfQjyJiCk=;
 b=GLUi/MtfEa8f4LpdBpFAsVKdcw7wZej3HDGu/d6WGK8v+249V9K/UI0Q6pB0nPOmOrB/nknAmHaNitHnIGNYGOk68WnsxYqAxofy0VnUbLmQL+X8KAIbZmI78gexnhso632CeiVnSSpYa8SOYpo0voXNXwOyjRaWWjsUgPzMKAsSL8lks5yVwIsreEZw4eQvsfltnP/8NVoNG7/Qcp9gxQO7W0F+UBOr8kQOzP95mnUhHRGiGnABimuOZmCyUddDwQzW2QbOnyYbunz9dY7JwgzDv03aj7PSSKaSfqGsS8RNououu0bWlvtKt2b4mIlAIUo+ZFcJknX7bW6iwIiiRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by MW6PR11MB8312.namprd11.prod.outlook.com (2603:10b6:303:242::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.18; Wed, 21 Aug
 2024 13:52:56 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7875.019; Wed, 21 Aug 2024
 13:52:56 +0000
Message-ID: <b8845a87-e27a-4834-b510-f9fde51a364c@intel.com>
Date: Wed, 21 Aug 2024 15:52:51 +0200
User-Agent: Mozilla Thunderbird
To: Wojciech Drewek <wojciech.drewek@intel.com>
References: <20240821121539.374343-1-wojciech.drewek@intel.com>
 <20240821121539.374343-5-wojciech.drewek@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240821121539.374343-5-wojciech.drewek@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0048.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1d::17) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|MW6PR11MB8312:EE_
X-MS-Office365-Filtering-Correlation-Id: fec7f91b-018f-412f-4ce6-08dcc1e88f4f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WnU5V1hFMEFCd2NEY01Kazh2MTNyVGJndTA5K24wVmp0elpiTko0em9Id3Jv?=
 =?utf-8?B?djM3aVFEM3UvN0xqcENCNVFucUxCOTJLTXdBc1lYdE9tbWl2c0Y1cy9vc3Qw?=
 =?utf-8?B?Sk9uNmtjWnZ6MkpqVTJkdmx0cHVhQXIwS25hWlRpZUxjTFFtQmN5Rndwam5R?=
 =?utf-8?B?Nk1HMGFYZUovODdURlJveGYyNEJBNUJ3MDFOeVVHUlgyZ0pXT0p3REtrLzJ3?=
 =?utf-8?B?ZVJWVkpVUytjajlKdTBIWHhBdUQrZHQ0c0tnM2FNL1RZT1RhWm9uWC9velpV?=
 =?utf-8?B?TmlPeC9QT0kzaDM1VkFURUVkTkNHMzBEOFdNbDlMbktTdGxqZ0h5VWhQSDhp?=
 =?utf-8?B?T040NCtEMTdhNXMwakpLblZxNi83TXd0cEl3bHo1Ritrb3RVdE1kVklJOEVa?=
 =?utf-8?B?YUZNT2hNSW5telhZampyc21LWlpyc2hBbnBzdW5hYlZ5bFdCYnludjcyOTBL?=
 =?utf-8?B?eG9MYTNvZEdvMmNCN2ZSZnFTbGtXRE1iaGNJN3dDQVB2SHpONVBRUjlUaDBF?=
 =?utf-8?B?WnpkSXFIcnRMbHV1U0pjVldNSFgvOExvY0ZLaU0zWlNjck9ON2EyTGhCRmMz?=
 =?utf-8?B?SVJLL2dBbUhOU253R0IwS3FzUFZVWVhhcnBMMG40ejEydkxQKzBFZG03NmIr?=
 =?utf-8?B?T0dqeXNqTlIrRzhkYW5hZjdxbHdSeENlVWo2L0RUUVhzdkFaSTlkdGZXMVhT?=
 =?utf-8?B?ZUtMaFdCekZuV0JNL0xHaWdvdUxGR3FSV3hNSWlHNEJuc2JFb1hxeHZDUlUw?=
 =?utf-8?B?MkVINTJSNnhOZEJ5TDZsWGNJakN2eFlPQjgyUmc2NU1HNHZQWFBnR1RzQjRh?=
 =?utf-8?B?cVhNVkg3Z0QyTy9sRFJLTzFjaFN1Ulp6WS9HOVJYY2U5cWlOK3N5NGVzeEx5?=
 =?utf-8?B?aUZHc0c0dzdlRkZCK01neWhtKzZGTGF2RTNrd1dlNVduU0Y5R0VKT2pJc2ts?=
 =?utf-8?B?N0h2U0h1L3lTOXFDVVZSaTJOeWhYdEF1N2lNQ216NE1HR1EzdDlyQW9aOHZG?=
 =?utf-8?B?WE9GTFVUb3lWQktlZ1V3ZHdlYmg5bTVzZWRiNlVOWmp2MWthcDFNWHBKQUhk?=
 =?utf-8?B?cE1rK3dJQVQ2a0M2eGFDVkFaS1BqRGROaUY2MVFWS2JxbkRQSGF3aC9DRDJS?=
 =?utf-8?B?ZzdTRVBWK2xsa2lBeG80TnpEc2FHY3MvdVNSMnRaaXFXRWpack5ZSWZRTkRu?=
 =?utf-8?B?WmYxWWJYNkh6QXZzUWtGUnArTFVNT0tKb0Y4QmFZZHl5MEx6TkRPaEF5dG12?=
 =?utf-8?B?aFRZZS8vWTVMSFpKN010RUhrWHZ4K0w5N05VVG4zNUU5MGRUTTlqNGF3TWJo?=
 =?utf-8?B?eDhTVnYxbUc4RGdtRlpkbUp6NTM0enBIQ2Z3UUVQRDJQVHFibjE2eExTT2pI?=
 =?utf-8?B?N0xXM1RsQ01zLzRELzlWV3cxbWMrbTJZdHpBV0VsVlZVQ0lNaXpReEIwNytF?=
 =?utf-8?B?eDNSWXo2VFJhUks3OE1WbWRLcStJZVp2ZkVLWUhvZ1BHRFZhREpia3dpZjlB?=
 =?utf-8?B?cEZaU1V5ZFNrK1BoREl5MjJQb21aVVl4NmU2cllBaUpPRDZBMzdpZnozbSsw?=
 =?utf-8?B?Q0hnZGdEcGN6YnRVdnBkWHNMR3o3ZUNNb3dYYWFwQ1N2dG0wWmFRejlGbjBN?=
 =?utf-8?B?aEdmTWk0emhMV0dhZDV1TkpZMUx4VDVYa3MwdWdiaVJOaHI3TU1mVC8rNjkw?=
 =?utf-8?B?aVc1YU4yb2xySHdUckIyWGR4YjF0QjB4YkhSTmM5MktQdnFiNEZoeDBNVGlE?=
 =?utf-8?B?Wk1ZaEhrckFNUTNaNUxRWXhkZWFZaEk4Rm5ETzNOaDBJYnRiaCtBY3c5UTg4?=
 =?utf-8?B?L05UTFlEM2RvZGFvbWRzUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YmUwYVRhOW1JMjEyb2tHdVdNdEZTQVg2T01tSjhuMGV3cUZPWkFKd01aa2ZQ?=
 =?utf-8?B?Zm9aN3BOUkFObS9LOG1hYTJ4aDY5K0hSclRiSFNNVndnODFWdXFIQVVKeVhS?=
 =?utf-8?B?c3ZjdGNhNWNaeWlQamJ2bkZmS3k3S1FmZVZ2ZUVVa1pxdlhqamk4ZEJXWXgx?=
 =?utf-8?B?bkxKNXhBa3BJR0RUaGhKUVFPZmJGTXlmUDlPL0tCYlRwUHdqN2U1M1lyd24z?=
 =?utf-8?B?aEFlMG5SVGc4VTdjNDBEYjlzTUEvbm5jMXAwVzRTVWtNcFN0VGdNNWtOZTFN?=
 =?utf-8?B?SVFNd2ZyWkd6dWpFOERralQrZDNSb1NZQURPNmhTbjhvVGhJa2dwYjFzY1Bk?=
 =?utf-8?B?NjZFbTc2SUxPSzc4OXpaeW9JT1U2K0RNdVFZamlwajQ5TUVlQ0V0dGtHSVpa?=
 =?utf-8?B?My9hR0VZRElTT3NVMEZaNlZUbnp4U1lmMHkweTFJUEUzQzRXV0l3aFlpalZS?=
 =?utf-8?B?TkluQkJ6N0F0V2QxaVVmZGIwU0lnc2hQcmhKMHUxdnZCQkNRbVd3WWhTejhs?=
 =?utf-8?B?eW9NRTVrMHg4d1BRMDIrWHd5a203ZkN6N1JwZzNXQWRvYkMyMk5LazhDQyt4?=
 =?utf-8?B?TWUwQk1tSnVrVVJTYmV4OVRCaFlJNDBDOVJHVzZneGtsQmRQVUdwR2ZkWE1V?=
 =?utf-8?B?dXFXcGcrRWZtTFg3NVk4OVZrbEk0SnZvVGpyWk1obFlzYUNTOHJpZEtUamZE?=
 =?utf-8?B?Y3RKbzl4MWJSZFFxemt5V1VUSW8rNmRpN0hTRVcwYXhXclV6Wkw3UDdTNHQv?=
 =?utf-8?B?WVNOandISjhqRkowZVdKZGNjYlRHc2hlckxENTdTMG1IbW0vMzVocjZQMXd0?=
 =?utf-8?B?eVNNSlFUMUJLdGd3L2V2WnFpUUVzQVo0SkFET3ptZVd4d0VLU0xTSjFZc0xk?=
 =?utf-8?B?R0ZIa21pUHVYM2pzQU13endyUzQ0YUtjQklSWDlRZk93bmFJTU9MYlhuMFJG?=
 =?utf-8?B?UnA2aUxIcEZEdFVYeTlBS0NaOWxXdEZaN1dkZ3YxVFBzeW5PTXplYUtZVktl?=
 =?utf-8?B?dEpnV3lxM29WbkdNUU5sV25jWmZuam81Z0M3WGFhWUk1Yi9HQnR5Vm5EVmEz?=
 =?utf-8?B?dTJQVGFmcFRlaFh4MDkyWlllOFkvdHUvOEJpWUdzeERWRWI4UURTcVFMY3Fw?=
 =?utf-8?B?eHJjd0p6aHVBYU5QRjhUakpKaitRdnlQTEZwQWxPMjRrdmZCUkJkYVhocWpR?=
 =?utf-8?B?dGk3UHI4ZE9ZUDljQk9hbU1RL09oUWRmUE9XM09sOEZZUjg3RUhyczk1MEY0?=
 =?utf-8?B?SEhTblMrWFpodTFKMG1kcjBJVU5vbE93RXZJYTVtNWhLYktTMHRJWUtvT1Fj?=
 =?utf-8?B?cm5DY3NUMWtheGVydU9mcVNReDBuK2w4bWlkV290eDdYNWowemgzakU3cFpQ?=
 =?utf-8?B?L1BWeDNKVUJ6M1lnQ09JT3NCNVJ6UkZZNHd0R0hyMHB3VC9jS3Q5MnZVY09p?=
 =?utf-8?B?U3orcVZDbldCSkY0WUp4UmxBWDRwM0pwRWJ3cjJvTWtNOGpLZ0N0d1JCck9o?=
 =?utf-8?B?aGorcEV1SE16eHFaeUNZVGRpQy9pclhqdnBGR0pFaFI2V2xpRXdaOThXaDA5?=
 =?utf-8?B?dDJZVTl1MnZOWHlJd2pSZ1hZV1g1UWRPb1k5U3NIdGwraFRuVngwYUR2M01Q?=
 =?utf-8?B?QXJ4eTBFRWVmb1o3OW44cStKSVlOcnB3KysvekhQSkMrQm9IbEdpS045UFoz?=
 =?utf-8?B?UTRITHRjUDJyZTBXNDVzdUpBa3JVcTdxM1dGN3llRGY2cS9uSWVka240blNl?=
 =?utf-8?B?Q25HbWM1SWhXUUlqdGZYUkZUQm5lSHl6bStraFhSRUZaQktjd3pPK0xPSklX?=
 =?utf-8?B?WmVTNmVNKzN0eVpVWCtGWHBsb05lcitLTTFrZmhtQ2drQ1NpMU8vTXhiQmZn?=
 =?utf-8?B?WXZzWHVka0E2ek50TFRjbnc2M0ZYcGI2Q2JITTZyQW9Ca2tUampoWHNIR2h1?=
 =?utf-8?B?QlZIdnB2ZDZTVlg0VmszZS9EZkh2cXNMSW14UU5wNmZkd2NkZGsvTlJtQ3hF?=
 =?utf-8?B?azRVZnBINXE3NE5Sc3VKU3lxNmJ4YlhrMHZUVHNNUmRsMTFuSU5yQ25BbDhz?=
 =?utf-8?B?eDN3QU1ZbUdSSWhxK0tndUJONkNFMkdpUEpCdmRUeXhHZFVQQVVkaXZNNEtH?=
 =?utf-8?B?dVJESDZoYXduMU84NkpxNU1reG5oaXJpcUZjbWN6dktXS3dncTRSMkNPdlNw?=
 =?utf-8?B?Wnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fec7f91b-018f-412f-4ce6-08dcc1e88f4f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2024 13:52:56.1630 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1Yc6WjvLHONhGx1UgqkdFKD2mVx5VYaPT9hCiQvg2AmtPvhes84W+83GR90j/dOKiY9RemXJvoq/cj0noM6um+UfhhsbWLxID6Ui5KA7TDA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8312
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724248385; x=1755784385;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lIGlIOGuuiO1Fiwv9M4BSm6GRd0fgSZxwcZsM9rNk2k=;
 b=NlQQJIL6qKhMHASLSPDf8afzoNSohYBxHS230eY8NMTeTSoQIYDULpMy
 ayETm75jqeOlCNRRS6Our47NLbF+5G5WD3y2/Jo6TCgO5bEjoH/dcSowe
 /LG47KBccVS+oVx7jQSMDf12/QGa3KxSYGI93TPdwy8eWm7+OhYFSWLSc
 Z+geytR8OtDivoZkf/XLpXdZFtJVUSwX5diEItJPYP+eU1ibyNNGFB2MP
 gQUWQoDSlU0xErDvPpvVaP0wF0oggEoMPfRff5fvq3Z3n4KqG7omDeOFO
 9gH/QPuSJlSB5ypxe1fCO+ScmPYPqv2raRhoUYdf7rEFTzVYffDKI2lFZ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NlQQJIL6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 04/14] iavf: add support
 for negotiating flexible RXDID format
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
Cc: netdev@vger.kernel.org, alexandr.lobakin@intel.com, horms@kernel.org,
 kuba@kernel.org, anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>
Date: Wed, 21 Aug 2024 14:15:29 +0200

> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Enable support for VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC, to enable the VF
> driver the ability to determine what Rx descriptor formats are
> available. This requires sending an additional message during
> initialization and reset, the VIRTCHNL_OP_GET_SUPPORTED_RXDIDS. This
> operation requests the supported Rx descriptor IDs available from the
> PF.
> 
> This is treated the same way that VLAN V2 capabilities are handled. Add
> a new set of extended capability flags, used to process send and receipt
> of the VIRTCHNL_OP_GET_SUPPORTED_RXDIDS message.
> 
> This ensures we finish negotiating for the supported descriptor formats
> prior to beginning configuration of receive queues.
> 
> This change stores the supported format bitmap into the iavf_adapter
> structure. Additionally, if VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC is enabled
> by the PF, we need to make sure that the Rx queue configuration
> specifies the format.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>

[...]

> +/**
> + * iavf_select_rx_desc_format - Select Rx descriptor format
> + * @adapter: adapter private structure
> + *
> + * Select what Rx descriptor format based on availability and enabled
> + * features.
> + *
> + * Return: the desired RXDID to select for a given Rx queue, as defined by
> + *         enum virtchnl_rxdid_format.
> + */
> +static u8 iavf_select_rx_desc_format(const struct iavf_adapter *adapter)
> +{
> +	u64 rxdids = adapter->supp_rxdids;
> +
> +	/* If we did not negotiate VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC, we must
> +	 * stick with the default value of the legacy 32 byte format.
> +	 */
> +	if (!IAVF_RXDID_ALLOWED(adapter))
> +		return VIRTCHNL_RXDID_1_32B_BASE;
> +
> +	/* Warn if the PF does not list support for the default legacy
> +	 * descriptor format. This shouldn't happen, as this is the format
> +	 * used if VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC is not supported. It is
> +	 * likely caused by a bug in the PF implementation failing to indicate
> +	 * support for the format.
> +	 */
> +	if (!(rxdids & VIRTCHNL_RXDID_1_32B_BASE_M))
> +		dev_warn(&adapter->pdev->dev, "PF does not list support for default Rx descriptor format\n");

pci_warn() or netdev_warn() if netdev is available here, sorry if I
didn't mention this earlier =\

> +
> +	return VIRTCHNL_RXDID_1_32B_BASE;
> +}
> +
>  /**
>   * iavf_configure_rx - Configure Receive Unit after Reset
>   * @adapter: board private structure

[...]

> @@ -262,6 +276,37 @@ int iavf_get_vf_vlan_v2_caps(struct iavf_adapter *adapter)
>  	return err;
>  }
>  
> +int iavf_get_vf_supported_rxdids(struct iavf_adapter *adapter)
> +{
> +	struct iavf_hw *hw = &adapter->hw;
> +	struct iavf_arq_event_info event;
> +	u32 len = sizeof(u64);
> +	enum virtchnl_ops op;
> +	enum iavf_status err;
> +	u8 rxdids;
> +
> +	event.msg_buf = &rxdids;
> +	event.buf_len = len;

This looks suspicious. @rxdids is u8, while @len is sizeof(u64), i.e 8
bytes, not 1. Is this intended? Or maybe @rxdids should be u64 here as
well, just like adapter->supported_rxdids?

> +
> +	while (1) {

@op can be declared right here.
@err can be also declared right here if you address the comment below.

> +		/* When the AQ is empty, iavf_clean_arq_element will return
> +		 * nonzero and this loop will terminate.
> +		 */
> +		err = iavf_clean_arq_element(hw, &event, NULL);
> +		if (err != IAVF_SUCCESS)
> +			return err;
> +		op = le32_to_cpu(event.desc.cookie_high);
> +		if (op == VIRTCHNL_OP_GET_SUPPORTED_RXDIDS)

When one of the elements you want to compare is a compile-time constant,
you will get more optimized code if you do

		__le32 op;

		op = event.desc.cookie_high;
		if (op == cpu_to_le32(VIRTCHNL_OP_GET_SUPPORTED_RXDIDS))

because then you won't need to byteswap a variable and constants get
byteswapped at compilation time.

But given that iavf runs on LE 99% of time and it's not hotpath, it's up
to you whether to do it like that here or just leave as it is.

> +			break;
> +	}
> +
> +	err = le32_to_cpu(event.desc.cookie_low);
> +	if (!err)

	if (!event.desc.cookie_low)

Because 0 == le32_to_cpu(0), it's always 0.
So you don't need @err here and it can be declared inside the loop above.

> +		adapter->supp_rxdids = rxdids;
> +
> +	return 0;
> +}
> +
>  /**
>   * iavf_configure_queues
>   * @adapter: adapter structure
> @@ -308,6 +353,8 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
>  		vqpi->rxq.dma_ring_addr = adapter->rx_rings[i].dma;
>  		vqpi->rxq.max_pkt_size = max_frame;
>  		vqpi->rxq.databuffer_size = adapter->rx_rings[i].rx_buf_len;
> +		if (IAVF_RXDID_ALLOWED(adapter))
> +			vqpi->rxq.rxdid = adapter->rxdid;
>  		if (CRC_OFFLOAD_ALLOWED(adapter))
>  			vqpi->rxq.crc_disable = !!(adapter->netdev->features &
>  						   NETIF_F_RXFCS);
> @@ -2372,6 +2419,10 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
>  			aq_required;
>  		}
>  		break;
> +	case VIRTCHNL_OP_GET_SUPPORTED_RXDIDS:
> +		memcpy(&adapter->supp_rxdids, msg,
> +		       min_t(u16, msglen, sizeof(adapter->supp_rxdids)));

Why is this needed if you assign ->supp_rxdids in
iavf_get_vf_supported_rxdids()? Or is this something different?

I'd also say this memcpy() is not safe. ->supp_rxdids is u64. If somehow
@msglen is less than 8 bytes, you'd probably get a corrupted u64 value.
I think you should compare @msglen to sizeof(u64) and bail out if it's
different. If it's the same, you should just do

		adapter->supp_rxdids = *(u64 *)msg;

> +		break;
>  	case VIRTCHNL_OP_ENABLE_QUEUES:
>  		/* enable transmits */
>  		iavf_irq_enable(adapter, true);
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index b60df6e9b3e7..3c2d6a504aa0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -2709,12 +2709,12 @@ static int ice_vc_set_rss_hena(struct ice_vf *vf, u8 *msg)
>  static int ice_vc_query_rxdid(struct ice_vf *vf)
>  {
>  	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
> -	struct virtchnl_supported_rxdids *rxdid = NULL;
>  	struct ice_hw *hw = &vf->pf->hw;
>  	struct ice_pf *pf = vf->pf;
> -	int len = 0;
> -	int ret, i;
> +	u32 len = sizeof(u64);
>  	u32 regval;
> +	u64 rxdid;
> +	int ret, i;

RCT broke here =\

>  
>  	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
>  		v_ret = VIRTCHNL_STATUS_ERR_PARAM;

Thanks,
Olek
