Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 94002A842BE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 14:14:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7DFC061B24;
	Thu, 10 Apr 2025 12:14:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9xEWjAPODuFV; Thu, 10 Apr 2025 12:14:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56CE161AE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744287274;
	bh=PMkETOP95SUCw5Yu3oQwStgsoRNsv+psg5uMKWqMqnY=;
	h=To:CC:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5uSBqapaWdwZH8PWsdrLeZVa6qmxmqSQGjKcmg364mf1nKTeJj4LekzC3G2dznPjv
	 FuhrYxnW+jZH/n7NFHBSCoGst0YIHZP4V0tj8YNTzrs8t3Hi9oHBOIsxff2QUESvM7
	 It9tI+Fa+8dplpcwum7yNPetW3iQQY68hS5mXmdIoyCMzj14XSsFv1ltYZlkkbT/x7
	 0YyeZe8zMMHUXRQSojbLujkA/6TDVRK7xajY6lpk/uXwEZHbEdpknEeG+7OhR/yePn
	 ZFfqqfQlgLu8RNIvYa6KvEsjEO8hBKlhhALNyLYJje/e4vv3ecRrr9lvw+JzNUoKkI
	 0GRGUhXFuKfkA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56CE161AE4;
	Thu, 10 Apr 2025 12:14:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DD546108
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 12:14:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CDE6980CBA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 12:14:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zuOZRdXjiJWw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 12:14:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4FA8A811D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4FA8A811D7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4FA8A811D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 12:14:30 +0000 (UTC)
X-CSE-ConnectionGUID: dkYQu0GWQKqfcTFY7koYhg==
X-CSE-MsgGUID: oDTvaLUDQ8Gl+ENgpBD+sA==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="56782310"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="56782310"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 05:14:27 -0700
X-CSE-ConnectionGUID: YNO571usT72pOBsJPsZ+KA==
X-CSE-MsgGUID: e7OWP7fcRVaqATjRpnpNxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="128631588"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 05:14:27 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 10 Apr 2025 05:14:26 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 10 Apr 2025 05:14:26 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 10 Apr 2025 05:14:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gCzY9A43LaUB/KQlT9KetnoD4nXp6B2Qpd15gJhM8UTx+AJawZrCx6DzwCi3ckOiTla67tN2zY+keTEz2UrT/Uw+kV+hvxRrLyIBGiDaL4WF7GVIyu1DVGrJC5K7xG9mNJyeKEghn9MXdUxzHpz2iCXNOOExnSklEEfRr8jmBPSqeB7rR0nKEoxNqOuJ0BshFg7/NfcPrgmcEkggew1h7eiNa/tUxuA0ZeXxGLK24us9Im1UmDuOcklJ1KHIr0BgnPrXB74ihwLw4iI0R2StUyw37LO6VirO6FAt8ig+jiZEXeEc2lsHDpLHHOo46cHvMg4yjCz4LDQbac/0HLho5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PMkETOP95SUCw5Yu3oQwStgsoRNsv+psg5uMKWqMqnY=;
 b=Qhi2uNm8mZhHSDjKBEKX5ruoaDqD3i2TsYQj3RjmSfKCzRCNj+VVgv9Y8h7li46fxn49i+qLShGY5r/NymEB+dYvNI3GkRMaOVLyAK0KiYqrrm9w2lkplxkhiOH56HV5xWVY8JSZfHbvcN+TPb97+mZtpl5r8GIuQeD5amylqiathcqUZOeGtS8RgrWA72cSvvZvii4CFUmlnwxhuWdyp8RTsVw/7k6ZwBoOpaLZbHpvBB889qgP1BCVqQfnnkp2v0hXzpzZLaDwUGNwQKQJypdUjH+q+7M630CwlzWxGE61DiW/Djbsok87m4OSLEMQSR4vHb8yrOoTtg1cLRETFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by LV8PR11MB8607.namprd11.prod.outlook.com (2603:10b6:408:1ec::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.21; Thu, 10 Apr
 2025 12:13:50 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%6]) with mapi id 15.20.8606.029; Thu, 10 Apr 2025
 12:13:50 +0000
To: Jacek Kowalski <jacek@jacekk.info>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <c0435964-44ad-4b03-b246-6db909e419df@jacekk.info>
 <9ad46cc5-0d49-8f51-52ff-05eb7691ef61@intel.com>
 <a6d71bdc-3c40-49a1-94e5-369029693d06@jacekk.info>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <ca5e7925-1d75-5168-2c54-1f4fa9ef523e@intel.com>
Date: Thu, 10 Apr 2025 15:13:44 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <a6d71bdc-3c40-49a1-94e5-369029693d06@jacekk.info>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0015.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::11) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|LV8PR11MB8607:EE_
X-MS-Office365-Filtering-Correlation-Id: 55b4c5d1-7bf9-401f-2451-08dd78292765
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L3dNQjJBSmkxTnQrcFBnSUx2RXl3b1BZYXpvazExanNlN0RSTVlNS291N2JE?=
 =?utf-8?B?OERGOU8xM2NJVmhaNTk1MTlaRk10RlM4TVFsQWhwUThqZmNZMC9ZVjRVRERs?=
 =?utf-8?B?d0FEUVkwV3pLNWxqK3JCeWlDNkZPcWlNUDJaNDloN0RQdytTVjdGR25pdDRL?=
 =?utf-8?B?QmtBU2VFZ3M4ZTMvNngwMnBaVUtuWnlqUXNXRjFwTkJDdCtqT3VFYnZVdFM2?=
 =?utf-8?B?U283KzVoQzNaenM1Z0JlbU16bytzUWNuaFh6R1hxMjRCZVViZ2ZRU01Nd3ZB?=
 =?utf-8?B?eE41WnhiRENGVm9zNHZxN2swblRuUVBYRzM0aW9XYmZPd3p4NUxlOFJpSURI?=
 =?utf-8?B?MEFMaHpuS0xSYURad0ZZcndnbU44NkVmL1JsbzdkUWcxb1o0T1lhQjdXQ0pL?=
 =?utf-8?B?SWgzdlg1SnJXTm8vL1VMazJiTXMwVFlSSVlYUlh1NW45eWlWSUJiM002R00r?=
 =?utf-8?B?R01xeXJNNWVPMVR3dUp3VkQrSzVFVEI1R3JSYlVKY09sWEF2cWpuTlVCdTlj?=
 =?utf-8?B?Qm1SNHlFNTBNbmwwRU01YkdTamxMMWFtYjRqSzBZYnlGTEdWNlhSbkx6UVc5?=
 =?utf-8?B?OS8xbmh0QlpOMS8wL0FOZmh5MU16WlpvVXF0cHpWR0tuNy8zWXE3NS94RlJY?=
 =?utf-8?B?VTV0K1hweUkxdDdzWnFpT2dGM1BEc1QvTW9Ta0RWODJQSXVHS0I2WGFyQXFX?=
 =?utf-8?B?Y3FNN25zRkNZSW4rWHAzbjFzb2xtSVIzL3BKb0MzY3plajBGSnRDWXVZNC8v?=
 =?utf-8?B?VmNvaCtjVzFqMDNVbjlycDhubW1MNldGMFF4S1Iwc2xHQ2tGaGo4bUU3WDBw?=
 =?utf-8?B?WkNEcE8zUXJXNjdpQXhrbnJFV2NDYk12U05UclY5eitCbUNKNUJ1cS80amg2?=
 =?utf-8?B?dVVFMmd6dDd3ODdUZTVRN1Q0NitpYjEvNkcxTk5pNXpxRkxGL3UwcHdtVE5B?=
 =?utf-8?B?UXFpY25aK0I2UzVqZ2dSTm9zc0d1c0xwZmdLS0phbEhGMG94ZE45aEZ0OHZr?=
 =?utf-8?B?d2ZMcjExeGtnOUlTWmFKVTNQdXk0SzAvWElRc2xVZlYwQmlwSGN6YWVGNDhE?=
 =?utf-8?B?TlRZTkcrQ0dFRFRKR1lnZytJL2N5Q29hVDBuZFIwWjl5dVR2bnFMSHZDMUI4?=
 =?utf-8?B?eis2S3NNWmpTdjVjNEFjWkM1SERNR1Q1YzVpaFNML0k4Mml2K2FvVmN5TDA5?=
 =?utf-8?B?WjZHVEhObk9hT2NielQ4aURSZEtZUGNSTTE0RmJDZFBzakhITnQrK2h2SUVB?=
 =?utf-8?B?a25yeDMxVmt3bWh1WkZhL0luektBaGp4MkRUVnNFYnpKNnVBV3hxTnpnWXAz?=
 =?utf-8?B?bzlpQm5tWWZzQzMxWXpxSU5PV21BV0JkUU9VUkFjZE96azdGWWhFeWZoaHlU?=
 =?utf-8?B?TUJ4TzYrcllTL1o5M2tKYTRjVWJ1aWxVSU1PcWVUR1B4eUViZlBNS1BlaTVy?=
 =?utf-8?B?TUlkV082Yzg3ZHB5UVFSaTFtNmpEZEM0T1Z4RVFVZGVZR3dzNlljRVBEOVIr?=
 =?utf-8?B?T2libGxPQVBGYndHVEppdDBZazY4K09jcDU1RVZsRWVyUGVEUEJqMVFMZVVY?=
 =?utf-8?B?RWN0MkQxREZ4cEpJUytTaitXY1JnSjNzK1pQcXMwZnJBY09TK3R5cHo1dS9h?=
 =?utf-8?B?STlaSUo3R3hPeTREb05rUnlpdU1XSjl5TWJGd1RDTEJUbHFUcEpJVDc1VkZC?=
 =?utf-8?B?Uk03eDVtQ01wZ0dUcTRJUjUrVjdYT3Z5eXg3TE1abkozblJQdHE1QmV0OTQ5?=
 =?utf-8?B?eUI1MVNtbjBDV3Y0NGIvMzRCRm0zQVd4UkJZanZ3Szhka1ZBM2tIWGtFNWF6?=
 =?utf-8?B?WFV2cVQrQTNqWWhXQkREUXJJTmR6bnJNbWRCcXZiQzArWXpEWk5pZGp3VG1P?=
 =?utf-8?Q?TlhVBlmWK337O?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bWJnemk3cUJLOWc0cHFQMnJuaFVYai9XMjl3RkxZVmsrTlZnS3pUSkNhTDdG?=
 =?utf-8?B?UGJGMHhMeWs0M0Z1Q1g3Nk9YVlptYWo2ZklLb2tGbzVnVldaS1ByTjhucVE1?=
 =?utf-8?B?L2ZmSE1yNktxc0JpY2wzTUl5WndxbTh1QUVXQzQrSGsxaUhHWnZwaVVjd2Nr?=
 =?utf-8?B?cjhhTEpWQ3lqU3huSCtzWEkwMHF6WDVpbFRRaXJBL0ZwdXlLTjcxdldpYkJ0?=
 =?utf-8?B?QWJ6OU0rcG5pbThSRWpFNEZ4c09BL0IxK0NFaFpycDJwNmhIUGI0NEtFNU5K?=
 =?utf-8?B?L0dZZFFlTUFVQklDTDZWbmZaNVpUdFpFWGpMSTY4V0NNTEV2Qmt3MnJUcWFC?=
 =?utf-8?B?NkQwdkRydGNFNUJ6UGQ2RDYzQjNhQzNnQml5azV5MmpvN2dIRGhZUC9yMmZt?=
 =?utf-8?B?UkxUQlV6L0dZVmZUNjZYbG8rdlpwWmUxUEtNc01jcmhPY0J2STgxNTBTN1dO?=
 =?utf-8?B?YmV5S1AraU93SDlpSk5CcE9ubVVPQXhpazBNdWU0NEVmV1FwUnFUNllOU29p?=
 =?utf-8?B?L3BHeHkrdHJVSzNWaStOVHNIS2tSd1NaeUhIZ0llRXVwc0lGS0UyQnJaR0lK?=
 =?utf-8?B?R2RERlZ1cFVtaWk2TmZMekEzd25PdVIvbmRRRUM4dzVaSEZONWdxRmJxT012?=
 =?utf-8?B?TU5wejhFTU45VEFVeFlJZ29sUU1nRjhNbDB0SmhjWUJEVTJIRjdkYURLN3J4?=
 =?utf-8?B?V3ZTSm82YVprNk5qZE13eEdnZHdUU0pWdi9UUko4R21rbWR1Z3lPZ0w2dFRJ?=
 =?utf-8?B?UktZWkhhR1ZKYXh3V1dMeUVKWG1hc2NpVTRvTGVMcmg4eDlnRVF1VXNGQ2tD?=
 =?utf-8?B?WmVMK2Z3aGd0RnEyUnVIdFdDSWJVMGlxUWZJc1I0aXFLYzVMRTZSQi9NeFcr?=
 =?utf-8?B?aWhBQU93NXdLN054YWlraGtTVC9YRzNhakdUb0FOV1lMUCtnSUJNdEdrWFh2?=
 =?utf-8?B?d1RkQUlUYTMySkZrSERYc0lmZzhjUVI5ejJDN3hGOThFeFRzWEVlVGZCcllD?=
 =?utf-8?B?Y21WNkNOTkhWd2NBTEgvcVJERC9kN291cDlmZUQwcDFwYTJrMjc1QkdwZWZI?=
 =?utf-8?B?YzRmWTN3RVlFc2YrMUVaR2w2TzRwVkJSMzQzL3FSVXNtdzRBdys1ZzlxcEIr?=
 =?utf-8?B?UEJ4b2gxUUM1aWpjNG9hOVZDcWx6TVowTjk3clB3U3E0WWROQitxb3UzbTYy?=
 =?utf-8?B?RllQYkswaXFWMzNkL294TkFrMG1GZjFGRnhzdUxGMXNUUDIrdmROQjg2Qnli?=
 =?utf-8?B?NGFiYmJlSVVsbkdTUzF0VEorMFE5RXVkWXQrMUc4eFAvUkNvcHhyOGtZQ0dP?=
 =?utf-8?B?bFRzenorb1RCNGNHeW8zTTZKMy9UTVRUak11QURXdnB3KzlwQTdyc1VxZ056?=
 =?utf-8?B?MGdZRytRUmN1eThOVXFoNkdsQ29ZRUJ6UU12Znh5Mno4QmN6V0M4RDhkNUwy?=
 =?utf-8?B?SnNIZjdKdFQ2UU4waFpCV29JNll6WEZ6MFllZElpTXhma2twamIrRERLNHM5?=
 =?utf-8?B?TmRJU3YxZzNHZllsZS9rYUs2WStsdXdNSGFlUjZFd2FUTmp5dEVuVkpXVXpo?=
 =?utf-8?B?TUovMjF6SXJGTVFVNjlUcHVBNUJUTERhUllFbHpDL1RuQTJaT2FpL2JIV2t3?=
 =?utf-8?B?L3h0dlR6MkN6cTNVcnY5eVc1TW1EQzZod0xPR0NFb1pSU3BkdkRrVGt4cU1m?=
 =?utf-8?B?bnJLb0pTajZQTXF3WVN3UWlYNno3ZFVOeS85a3plNC9pRzlKYkIvL3RwYU5S?=
 =?utf-8?B?OXoyNW51VlBoR0k0UzF4alIxNHlES3pOcDdsby9nUDhmUC8zaUFCQ3lIczl2?=
 =?utf-8?B?ZUVtMSt6TXZvaTNxdTh6UDZra0tUV0thajRjQWE5MEhUVEFPK08vRzFzOHIv?=
 =?utf-8?B?VlBiT1ZEbHljM3NoVWxBekl2ZTJ5T0FjT2xSZUEvcXZGTEp3RWZDZFB4SGo2?=
 =?utf-8?B?NzhSbForMzFVZUJuTjBub0JkTGZ2SWJIbkhoNTROaEhSSk10MlZjUkduVU5o?=
 =?utf-8?B?UFN4aWVGa0R2NWhDeEFwb3Z6d1UzSjB0eGRIVExRNkpvMGU4TENiUG5FWGUz?=
 =?utf-8?B?bmxNeFRjTnMxc2IwK2VXY0ZHN2Q3TTloV050amdmZDE1MGc2bzhRUllEbW5O?=
 =?utf-8?B?SllyTWFFWDg4N0dmNHRXZDgzQlR1dXJGZjVQQVA0VmFnN0EvZ0JJNS92Vkll?=
 =?utf-8?B?WWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55b4c5d1-7bf9-401f-2451-08dd78292765
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2025 12:13:50.7883 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0kSCOwJXYF4dg743MeaTSTTETUdtdILLlDSWgvzVk4W58szAVsT4Pr0VUJ+rVonDGNp8w7cQ2H0q1OryArL5u1FIJtrrlUUI1v5i57sHXVA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8607
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744287270; x=1775823270;
 h=subject:to:cc:references:from:message-id:date:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2fy5Btl2rcRdRWLgmR669sEqNUEcaztMp2L82ytUtHk=;
 b=MvVqmvOqaLi781TtHWhDREUmYtkqmEPOPvCN+j6xVsFJwtak3S7BZwNH
 VrcASveyFWYZggLPCCG/U1dG1zhRFWHy+p6cl6sAEYE4QA1dtpz89g8C/
 oxjeQpzza6TC4QBTP2t4ICbHq952rYbNzRqOfBeGpZvEj7Vu6AAkjQEuP
 0o87/lKjsbVloFX109oxrvZT+dg5AsFUIzhQ9jqVzf0+xSF4LdRdNFWPH
 9IWeC1OzO+FZqACVCIz6hiII6E4jyepricfVKLuen0VpiFiBHWMT9qyU5
 6I6KMlwoqz1yIiYmSfZk82Rv7bx5FrhjBHZjHIY3doJSS4R/7u0Xcfjqg
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MvVqmvOq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: add option not to verify NVM
 checksum
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



On 3/31/2025 11:36 PM, Jacek Kowalski wrote:
> Hi,
> 
>> Are you certain that the UEFI FW corrupts the checksum each time, or 
>> is it just that the system left the factory with incorrect checksum?
> 
> I'm quite far from that device at the moment, but from what I remember:
> 
> - when I forced the NVM update path in the driver, the device would work,
> - after the reboot the checksum was invalid again.
> 
> I'll experiment a little more and get back to you. Specifically I'll try 
> to dump the NVM contents before and after running 
> e1000e_update_nvm_checksum and after a reboot.
> 
> Maybe the "shadow RAM" was correctly updated, but the change was 
> (silently?) not persisted due to the security change you mention:
> 
>> From what we know, the Latitude E5420 is 11th Gen Intel CPU (Tiger Lake).
>> Starting from this generation, a security change makes it impossible 
>> for software to write to the I219 NVM.
> 
> 
>> From a technical perspective, your patch looks correct. However, if 
>> the checksum validation is skipped, there is no way to distinguish 
>> between the simple checksum error described above, and actual NVM 
>> corruption, which may result in loss of functionality and undefined 
>> behavior.
> 
> The distinction between checksum error and corruption will be performed 
> by sufficiently privileged user, who must set the properly marked flag 
> in the driver in order to do so. Is it more "insecure" than disabling 
> NVM write protection (flag above)?
> 
> Note that I am not the only one with this issue...
> 
> Precision 7560 (also 11th gen):
> https://www.dell.com/community/en/conversations/precision-mobile-workstations/precision-7560-e1000e-module-error-the-nvm-checksum-is-not-valid/647f9784f4ccf8a8dea83444 
> 
> 
> Latitude 5420 (same as mine):
> https://forums.linuxmint.com/viewtopic.php?t=412046
> https://bbs.archlinux.org/viewtopic.php?id=269606
> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/2102113
> https://community.tanium.com/s/question/0D5RO00000Chk2S0AR/tanium-provision-dell-latitude-5420-onboard-nic 
> 
> 
> EVGA Z590 mainboard:
> https://www.linux.org/threads/getting-intel-i219-v-to-work-in-debian-12.45761/ 
> 
> 
> I am quite sure that Dell nor other manufacturers won't do anything with 
> it...
> 
> I'm also interested in how the Windows driver works around such an issue.
> 
> 
>  > This means, that if there is any functional issue with the network
>  > adapter on a given system, while checksum validation was suspended by
>  > the user, we will not be able to offer support
> 
> Is completely non functional adapter (as mine) covered by this support 
> promise?
> 
> 
> Wrapping up: if nothing else works, what would you see as a possible way 
> forward?
> 
> 1. This flag.
> 
> 2. Option to override the checksum value (compare with a given value 
> rather than ignoring it completely).
> 
> 3. Option to force NVM update (provided that my tests will show that it 
> works - even if only until a reboot).
> 

As we are aware, Tigerlake systems, like the one you have, were the 
first to implement NVM locking for write operations. Some manufacturers 
have encountered issues with this NVM generation. To address these 
challenges, I propose providing a workaround applicable to all affected 
systems. This solution will ensure that anyone experiencing similar 
issues can implement a fix without requiring a technical background to 
enable private flags.

If this approach is acceptable to you, I will prepare a patch with the 
proposed fix and send it to you next week for testing on your system.
