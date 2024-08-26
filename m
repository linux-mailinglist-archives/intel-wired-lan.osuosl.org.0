Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 735DE95F1B2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Aug 2024 14:44:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 42808606B1;
	Mon, 26 Aug 2024 12:44:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J3WH6DJ_pjHx; Mon, 26 Aug 2024 12:44:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3AF4A60739
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724676253;
	bh=tGBvvbljQaeb6rqy8lEkd4wxG0kygXGvao0F0jHU4Uk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UIJ8nenth/uaHsbpkU6M29/O801SclNTApN4x6rq1braS3urWNpDzbztKuTWL7ZiJ
	 eoiA4C3w8WtPliz/D4zAzyohg9QDSVDy3wBkS1yer5GfarMkxlUzCYZqfV5HO410Eo
	 lhODYhLkq6Hd/mXP+N4HVmXrHMtlED0PjsgcPTYdfQlE+QD/+1MBQYxnndbrLNljS9
	 WtFLVPKNeZaZw8di6oITAMnf2MEfIIGw/fhBgjb2W5w2IL0UZMyHTZpR6XIPJGGVwg
	 +cQUMbTLuP1W3TKw/Y75TZH1ki/XjhrhxwcpxFq/UQGKWz3Kg+cJbKGVmnC1gwHSAQ
	 rXwS98xKquaAA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3AF4A60739;
	Mon, 26 Aug 2024 12:44:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C3C131BF97A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 12:44:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DADEE40547
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 12:44:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0xVCxLONneJS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Aug 2024 12:44:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 43F1240592
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43F1240592
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 43F1240592
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 12:44:04 +0000 (UTC)
X-CSE-ConnectionGUID: RoizXr60RJCyo1cgPXeBBQ==
X-CSE-MsgGUID: Zb58cLgFRN2twd0019RvmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="40568394"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="40568394"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 05:44:04 -0700
X-CSE-ConnectionGUID: cbzlbZrQR8CYyq8dc0JxmA==
X-CSE-MsgGUID: oIBKBFwiSWmSpHvoEL86RQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="62472138"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Aug 2024 05:44:04 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 26 Aug 2024 05:44:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 26 Aug 2024 05:44:03 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 26 Aug 2024 05:44:03 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 26 Aug 2024 05:44:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yfUAGlD2npYIFfxbDFN6+X+BdmoFgReNCFxajEfk7gtkwFUlgtCwL7Bx28NxdIwEcwziuLwzXsduo1d68OnJjys0OuIbh22czKfJ8YdHS8FvRX9U7PC64RNmwHfatxhPYfuiM2OmLrCRCUsrpjVhyKgits4mtckxq7fkCJrLMX09lN4fAI+AVwhrKDyXMea3HMhOfyXh9QYcZMA8xoEddCjjvH7wglDGmmM2n5hWFm/kF6O2LpXZz2XVS0ibyqSA2yO/YUPXi0XwT4zEZGP9LiX9JMqadUVLFvPAigflVOOOxFsh7qgk37v9400WxZfJiyMItXTaYRLjBqaWAs5WgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tGBvvbljQaeb6rqy8lEkd4wxG0kygXGvao0F0jHU4Uk=;
 b=g1WqB/ETrWyl8SLqR+rTPrWStvzNwE6kAh7CJTXPyuYtSn14dTDgpAfXYiyAZJRdRa1UkCfq0AXYk/a4vD+i+fWfAuR4GIrCVfZ4zgmMmGFxzCyK5XLKVYbLZm46KmmqoTixViu65qYFjUx65C24++MMoRjpiozDsMeFfn3xweGa/w+qGPgRG+JkXn1whvMBPthHi+hSr+xwJ3h++pRhf9tzsf/En2Lda2dbsdXC7y+xQ1IdBh42IJXfiv+AmdZRKEwQ9wq26qPvMYxGb8/Gj1EbXL+VQav+SkLH5+1SJS1uGgFcdA2UaOPmNVVNwxEic5zmrBqvfwz3gHklykrwEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by IA0PR11MB8377.namprd11.prod.outlook.com (2603:10b6:208:487::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.24; Mon, 26 Aug
 2024 12:44:00 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942%6]) with mapi id 15.20.7897.021; Mon, 26 Aug 2024
 12:44:00 +0000
Message-ID: <e66525d1-3f4c-45cc-909f-1a9665d4db97@intel.com>
Date: Mon, 26 Aug 2024 14:43:54 +0200
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20240821121539.374343-1-wojciech.drewek@intel.com>
 <20240821121539.374343-6-wojciech.drewek@intel.com>
 <7e832ea6-2036-4112-9b63-20f4475e7f8d@intel.com>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <7e832ea6-2036-4112-9b63-20f4475e7f8d@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0026.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1c::13) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|IA0PR11MB8377:EE_
X-MS-Office365-Filtering-Correlation-Id: f24e746b-b766-415c-443e-08dcc5ccc255
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R0tLaVhvR2NqaDlNOVhUbEpIN1hWdFhaTkUzL1JvdHQvcmU1WkpBRjFha1lD?=
 =?utf-8?B?cksxQVcvRDdBRHhnenhhM2dPeHRsUE02Z1lCZENzQjgzZEJINjRKZmZyVEow?=
 =?utf-8?B?eUNkOGk0dDgyZEJ6U3d4ZmxZUHlGTDgxWXZTelh3MmVMSTloVVVlcEdDdmxi?=
 =?utf-8?B?aEtVL2k0ZGRYZ05lNldaTmlrelNGSS9WaWJpQUc3eHpMY1lMbHQ2ZEk2TG10?=
 =?utf-8?B?Q0lObHNvSDIzdllYamxheEJmRVNqYXBLdm5VNy9FbDFjUjNDbWhaTkY2QStj?=
 =?utf-8?B?dmxGazFIdmRQaDhCMTFMUDFNUGdkUkJiL1dOWGRuTnVrZzBYK3hOcWZSTmFN?=
 =?utf-8?B?dENvWGhBclc5aUxsTDVoZFUwS3R3ZnNzQXpEc0lLVllIYjdsOHdCMVErR04w?=
 =?utf-8?B?ZnhwRXpNcFVwdnd5NFcyamNETWxEM0kxNURQM2VvSnUvUnh5R1MwYWUwRkVM?=
 =?utf-8?B?MFJtSHBGZnhqK1BZY0FJbWhib2tMUVNyN0l6b2YyTE1wRkd6SjRxNXlTT3lq?=
 =?utf-8?B?TVU1bkZKZXd0aStyUU5SSDBjNGtDL1phbXJic3JJZWNSUUhjVUYrTVMzbTh4?=
 =?utf-8?B?NUZrY3pUdWt5Z1A1c0tNYmQ1Y1ZPMzZQMnNPRzVqdlJxS0sySFpqU3ZLcDRp?=
 =?utf-8?B?d25IUWk1aFVPWnQxUEZ0dUMvVEx6dy8ydlVKOHdnYXMydlJzcnRiN1RjUjY2?=
 =?utf-8?B?NHBBU2dsRFRobXJ2ZG16clZONDFRTVhxM2VWQzhBVnJBaXJ6alNtQWdIclNE?=
 =?utf-8?B?VlcvMmN1SUx3OUxRcEMvNUtoSGQxL1Z4S244VHM2MExhZmlCbWt6bTVud3ow?=
 =?utf-8?B?dGcrLzF4UEZDaW1CUGpNSHJjc2labFhBZFNZTjRYaUpHek9BVVJLMk1NN2lG?=
 =?utf-8?B?YVdlK2pzUFlMdmFBQjZFd0pudDgrQ21XRTJETm5FUnE4RzVyZnZzRU9iMm1s?=
 =?utf-8?B?MkdvTkUwcXoxTVRTQnRnL1A4UU5FVVpEQkt4OFk4ZjM2UTVQcEVTSU9Edm5r?=
 =?utf-8?B?NTZtdXJ6QnBub3c0Zk1tUlMvdUpHSnZQeFZqeUJUTkVkbERac05HTzNUbnJU?=
 =?utf-8?B?QUVPL3l0b21MdmtWVnREbk13aHZ0ZVExTkg5aU1rY082NXNVNDI5ZVVLK2V3?=
 =?utf-8?B?R3RuK2l6VU8zcFdDc2dDSkdRZGd0YUJTMUdwN2tjWFdxTkZWZUp6blBWK0o4?=
 =?utf-8?B?dUFNaFRPOXZORGRDd3lJa0owMzM3N3RlU29nYUx6WGdJT29yT3REdE5Eb3JX?=
 =?utf-8?B?RkgyTTlWRVZzM3NDZXFQamtXNnEwTEN4RUN5Wld4R2NWcjJrdEtock5YMVlz?=
 =?utf-8?B?TmFFekRmNi8vTjdoNWxxZVhlRUZQUjBoWVVhc0RjTXBlMzIxV0pzcWQrbzdy?=
 =?utf-8?B?enNuVzA4NFhrREx4N0piSGtSNmZFZlVkeXMzUUJLUk9RZ1NUb3h3V09nd2xi?=
 =?utf-8?B?VVY3ZjVIWDFXTGk0Tkp3aGZMOEc1UGFrU1hNU2Y4K2YvY29hVVhzNGlUdVhn?=
 =?utf-8?B?ZWthd2JOR1U4YlBKSGliK2E3RXNsSnlFZkpvUk4yNkpyeFNnaWIwVDhJdFFF?=
 =?utf-8?B?bmFwU1lmenJXQWNzU0haSHlDdDM5L25jNmp1czlMTnV1L043Q2hoWXo5VFd5?=
 =?utf-8?B?SDdEYVhkNDRlMmVBdkNaQis5QldNd3JKSTB6RmJUU2ZVUzlrL21aNkxSMERr?=
 =?utf-8?B?OUR4UWMrU2I5SHBLdkdkTkZ3TmIvSkg0VEFOMjFObUxkTk5jU3JBT2R4R0k1?=
 =?utf-8?B?UjE1QWlPckFyWUx5MmV4YXowK3RJdnlkVTQvU0daR0txWVdoK3FaQ3ljUHc4?=
 =?utf-8?B?M2ZCMk5xcFI3cGdBdnFVZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cWkwekFnU2g2VW5lVFJwMHpIQkx6VEF1SkJuY1psZHRvTFJLZTM2dTQ3Q2k2?=
 =?utf-8?B?UHU5QmZ5UFFHMDJsSUN6dFBscHVZZk9PYzFHMm1oYzV2QlcrOVJjM2tPeGxw?=
 =?utf-8?B?UnJYQlRMY3JUZytpamc4czVYV0xzWWppbWFRM1EwaC8yY3kxSHNqN0c5N2pR?=
 =?utf-8?B?cWlmYUQ1NGlzeXQrRWs5S1l3OFlnUDl5aW4xQkdKbk13K0RDSENBWHRmeGpn?=
 =?utf-8?B?bllIcDluNENuSHpmVDRicCs5c2Q1WnZKVTdyL3VEWEE1WHg4OXBEczJodk1C?=
 =?utf-8?B?MDBPUXpQV2w3Tks5WHBPUUtTSW9FL0NLN01CWFhoS0tscjlBQnhWUFV3MTZv?=
 =?utf-8?B?ZTlNcUQydVZhbk80RHJDc0ZKanZucnVqS2trZ0dHTmh4M3hXR1d2VDNuOFpz?=
 =?utf-8?B?R0ZmcEk3VFJ1WVJHTURFYWVPL2dCRWV4MmRiUGMzTytYRlBYZCtuUEZ3aUdQ?=
 =?utf-8?B?dlFJdURpeFNqdFpLNmd5SUoyaEdZNUoxU1ZyVjhrTGVvbllIaGxUeDI5NE83?=
 =?utf-8?B?UFBjRFJhSFZVU1NFWjB3R0JpeE5NQXh4QTc3WGhmMXF5WGIzdEMvUmsyeERj?=
 =?utf-8?B?RlVnY1FGQWZvMmd5bk9kN2lkL3pqMU9BaXVUL1F0VHVuS3VnSWJVeXE0aS9h?=
 =?utf-8?B?UmhnYkEzcy96MklhY0tnYnVqWGx4bk1XOUFjR0lhRHE0aGhCbGg4Q2RDM1hW?=
 =?utf-8?B?czdBT2Y3TjNEdG9rVFp3S3pyd0VYenlMVkJ2TDUrSFBZaDJEZlVicmFPWWpW?=
 =?utf-8?B?N2R5RzJRalJ6N2Y2TnhIdXRrWDMzMHlhMnRVMERJd2Y5UTNMdG1WS3RCOXMv?=
 =?utf-8?B?ZTdVMFFLbCtKMWFjWVV6VC9xWllmVzFoY3pQZWNvQnRDV1ZFb1UzMTYwT3lU?=
 =?utf-8?B?NklzNkVxUDlPUFJ1VGNJQWc2eEFydVpESmVZdnBwQ1g3OFQzemd1bDVvMjc1?=
 =?utf-8?B?dmUzOGdhU2t2bTcvRXNTQzdVMExTZXpMYkw3ZE5OTnU5T0duTXY3all2Y245?=
 =?utf-8?B?Nk9lMGNZb21UbmdxenliZWEra0luMzdDMDIrdWgwcHhYVWVVSTQraUg4T3dT?=
 =?utf-8?B?RE9oYjRMV2NibGlSSVdPSDkyQXBCeWhOaFdtUWVsU3BKVCtDN1Brb1NSWlhz?=
 =?utf-8?B?ZDI3SllTR1Q3elNXT21EU3d3VGlqM2JqeUF3ejVBL1RncEN1cEZ3KzB3Y01a?=
 =?utf-8?B?cDRHSW5NREtCbG9KZnNHZWtocmtWd3NhdGVvT011NzRDNFdSVXZyNzZUT3lo?=
 =?utf-8?B?WDFvYU1qWHZ5QWVibVo0aUhsdk93bzJVTzdOK2t4TUc5Zm8wQTNIMEd3aHhZ?=
 =?utf-8?B?eDBqYWdmcGtMZGVvWlpqUnBlZlQ4ak5lMVJoa1ZMZkNlYVlBZnp6d2F0Mks5?=
 =?utf-8?B?Z28yMVpWUk5VOXUvbW4zTnpoQUlhT3M0bWtIU242dlZuSjFNOWZJSHRSNXdP?=
 =?utf-8?B?NnpPcTBEWWFCQ1V3UGZMUTJaY0ZDd2lPWW1LZ3FMYWl3Y0tSME9KODV5NnQz?=
 =?utf-8?B?WFVaRk12SUpKTm14eVFXRGR6QnFlN2RGbGJxODRpVGhjbFRFaWxYdE9tTjds?=
 =?utf-8?B?NXY2QUdsU3RFNElWTXJ3QTIvS05VbzZRNWl4eHR3K0ZzVE84UUJJczR2amhG?=
 =?utf-8?B?OGk5Um1lK0JRNndJQ0RvQVV1Yy95RXpkNGRwRlptam5HOGsvazNWZnpBNGhB?=
 =?utf-8?B?QTRWYUhhbVhrTFdOYXVIbllqMjFMVnVESitoL2NyNWsreVlaQ0hDaWxFaEdY?=
 =?utf-8?B?NkFrQXQ4TENUSFNWV1N2SEdBbjl4QWFSdjQvS0p6NjZ5NlVyZW1HOHlLUVNC?=
 =?utf-8?B?V3V1UVd6SFJXSzRCUlFqMkRWUlVQMk1oSGpBblBEeDhkb0lDczVMZ1hDdUY0?=
 =?utf-8?B?cTFXVGZqZUNCaWYxZFJqY1QvWWhqM2Y4N3hDc2w1bUxBY2x4Y2dHVzhRM3Vw?=
 =?utf-8?B?WDNtSktMZWRzYkRETFp5MkZod20vRTY2UGtLYXpIcFJmcE1JYThoVk9kbXdl?=
 =?utf-8?B?UUJUUXVqaFlFZVBTeVJ4N3pLdklEMk9wUTBqRXBFVUxCaGQ0UGF6L05qUVNZ?=
 =?utf-8?B?M2R6NUpVVG1DMm1KT0hXRm4rQlpaUkdrdmNRMitKYnhnc05OMXJrTXpLNVp4?=
 =?utf-8?B?ZlFvaVIrS0pVSFpFdC9kU1lER0RrL3gwQm9JNk43YjVPd29USEUvSmh2V3hJ?=
 =?utf-8?B?N3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f24e746b-b766-415c-443e-08dcc5ccc255
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2024 12:44:00.6754 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CvYaf+s+aGrjzijs88hX1DVdSDg5+IOxJ739vBGaAkOU/l2pD/SVekgvsMoP3A1fCYAndPZF4EYZIdBAmUBGuFIF+qHkI5tCMsm2EfdJKmg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8377
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724676245; x=1756212245;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5ru8DmeheTHhK0Mng8w6RpFYVL0niHhfKgdji7uG3ts=;
 b=DdBN8HOlvmh/zQ98Qn9qZzxq/BN9NffhNYYCy78RoHFauSmlvPE7w1hk
 H1U8ILPVGJSIp22VUdMmtzEiU8/w7d9vzh7wrVWWaBEb5Li760XNDG3Sx
 fHZT8g5n9QUmwjx2RGxWkCjKV0Dh1EdVEfYS7uHnB7gG8+OGBT940wkbk
 HRinjTyWRx4MWZ558k9jhsKuaBBb9odVIerSRHSG9GrqRVbMKf7DSsTef
 LVIcsF3dVuvzSffsoiCLbBDGmIYgIZTqzWGxoMrydMoHVCOItb1Q+PFHx
 jW1RebinO7RlyTsglABG5Oa479nvOZ8oLzLmKeeqEN6ARXy9f93IkU+3+
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DdBN8HOl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 05/14] iavf: negotiate
 PTP capabilities
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



On 21.08.2024 16:06, Alexander Lobakin wrote:
> From: Wojciech Drewek <wojciech.drewek@intel.com>
> Date: Wed, 21 Aug 2024 14:15:30 +0200
> 
>> From: Jacob Keller <jacob.e.keller@intel.com>
>>
>> Add a new extended capabilities negotiation to exchange information from
>> the PF about what PTP capabilities are supported by this VF. This
>> requires sending a VIRTCHNL_OP_1588_PTP_GET_CAPS message, and waiting
>> for the response from the PF. Handle this early on during the VF
>> initialization.
>>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> Reviewed-by: Simon Horman <horms@kernel.org>
>> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> ---
>>  drivers/net/ethernet/intel/iavf/iavf.h        | 17 ++++-
>>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 60 ++++++++++++++++
>>  drivers/net/ethernet/intel/iavf/iavf_ptp.h    |  9 +++
>>  drivers/net/ethernet/intel/iavf/iavf_types.h  | 36 ++++++++++
>>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 72 +++++++++++++++++++
>>  5 files changed, 192 insertions(+), 2 deletions(-)
>>  create mode 100644 drivers/net/ethernet/intel/iavf/iavf_ptp.h
>>  create mode 100644 drivers/net/ethernet/intel/iavf/iavf_types.h
>>
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
>> index f1506b3d01ce..871431bed64a 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf.h
>> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
>> @@ -40,6 +40,7 @@
>>  #include "iavf_txrx.h"
>>  #include "iavf_fdir.h"
>>  #include "iavf_adv_rss.h"
>> +#include "iavf_types.h"
>>  #include <linux/bitmap.h>
>>  
>>  #define DEFAULT_DEBUG_LEVEL_SHIFT 3
>> @@ -338,13 +339,16 @@ struct iavf_adapter {
>>  #define IAVF_FLAG_AQ_ENABLE_STAG_VLAN_INSERTION		BIT_ULL(37)
>>  #define IAVF_FLAG_AQ_DISABLE_STAG_VLAN_INSERTION	BIT_ULL(38)
>>  #define IAVF_FLAG_AQ_GET_SUPPORTED_RXDIDS		BIT_ULL(39)
>> +#define IAVF_FLAG_AQ_GET_PTP_CAPS			BIT_ULL(40)
>> +#define IAVF_FLAG_AQ_SEND_PTP_CMD			BIT_ULL(41)
>>  
>>  	/* AQ messages that must be sent after IAVF_FLAG_AQ_GET_CONFIG, in
>>  	 * order to negotiated extended capabilities.
>>  	 */
>>  #define IAVF_FLAG_AQ_EXTENDED_CAPS			\
>>  	(IAVF_FLAG_AQ_GET_OFFLOAD_VLAN_V2_CAPS |	\
>> -	 IAVF_FLAG_AQ_GET_SUPPORTED_RXDIDS)
>> +	 IAVF_FLAG_AQ_GET_SUPPORTED_RXDIDS |		\
>> +	 IAVF_FLAG_AQ_GET_PTP_CAPS)
>>  
>>  	/* flags for processing extended capability messages during
>>  	 * __IAVF_INIT_EXTENDED_CAPS. Each capability exchange requires
>> @@ -358,12 +362,16 @@ struct iavf_adapter {
>>  #define IAVF_EXTENDED_CAP_RECV_VLAN_V2			BIT_ULL(1)
>>  #define IAVF_EXTENDED_CAP_SEND_RXDID			BIT_ULL(2)
>>  #define IAVF_EXTENDED_CAP_RECV_RXDID			BIT_ULL(3)
>> +#define IAVF_EXTENDED_CAP_SEND_PTP			BIT_ULL(4)
>> +#define IAVF_EXTENDED_CAP_RECV_PTP			BIT_ULL(5)
>>  
>>  #define IAVF_EXTENDED_CAPS				\
>>  	(IAVF_EXTENDED_CAP_SEND_VLAN_V2 |		\
>>  	 IAVF_EXTENDED_CAP_RECV_VLAN_V2 |		\
>>  	 IAVF_EXTENDED_CAP_SEND_RXDID |			\
>> -	 IAVF_EXTENDED_CAP_RECV_RXDID)
>> +	 IAVF_EXTENDED_CAP_RECV_RXDID |			\
>> +	 IAVF_EXTENDED_CAP_SEND_PTP |			\
>> +	 IAVF_EXTENDED_CAP_RECV_PTP)
>>  
>>  	/* Lock to prevent possible clobbering of
>>  	 * current_netdev_promisc_flags
>> @@ -423,6 +431,8 @@ struct iavf_adapter {
>>  			     VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF)
>>  #define IAVF_RXDID_ALLOWED(a) ((a)->vf_res->vf_cap_flags & \
>>  			       VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC)
>> +#define IAVF_PTP_ALLOWED(a) ((a)->vf_res->vf_cap_flags & \
>> +			      VIRTCHNL_VF_CAP_PTP)
> 
> Bah, should've mentioned that where you introduce IAVF_RXDID_ALLOWED().
> I realize that the macros added previously are indented with spaces, but
> it's not sorta correct style for the kernel. Maybe you'd indent both new
> macros (RXDID and PTP) with tabs? You can also break the line different
> way if you want, like
> 
> #define IAVF_PTP_ALLOWED(a)					\
> 	((a)->vf_res->vf_cap_flags & VIRTCHNL_VF_CAP_PTP)
> 
> Looks more clear than breaking it after the '&'.

sure

> 
>>  	struct virtchnl_vf_resource *vf_res; /* incl. all VSIs */
>>  	struct virtchnl_vsi_resource *vsi_res; /* our LAN VSI */
>>  	struct virtchnl_version_info pf_version;
>> @@ -430,6 +440,7 @@ struct iavf_adapter {
>>  		       ((_a)->pf_version.minor == 1))
>>  	struct virtchnl_vlan_caps vlan_v2_caps;
>>  	u64 supp_rxdids;
>> +	struct iavf_ptp ptp;
>>  	u16 msg_enable;
>>  	struct iavf_eth_stats current_stats;
>>  	struct iavf_vsi vsi;
> 
> [...]
> 
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.h b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
>> new file mode 100644
>> index 000000000000..65678e76c34f
>> --- /dev/null
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
>> @@ -0,0 +1,9 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/* Copyright(c) 2024 Intel Corporation. */
>> +
>> +#ifndef _IAVF_PTP_H_
>> +#define _IAVF_PTP_H_
>> +
>> +#include "iavf_types.h"
>> +
>> +#endif /* _IAVF_PTP_H_ */
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_types.h b/drivers/net/ethernet/intel/iavf/iavf_types.h
>> new file mode 100644
>> index 000000000000..6b7029a1a5a7
>> --- /dev/null
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_types.h
>> @@ -0,0 +1,36 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/* Copyright(c) 2024 Intel Corporation. */
>> +
>> +#ifndef _IAVF_TYPES_H_
>> +#define _IAVF_TYPES_H_
>> +
>> +#include "iavf_types.h"
>> +
>> +#include <linux/avf/virtchnl.h>
>> +#include <linux/ptp_clock_kernel.h>
> 
> Oh well. I initially asked to introduce iavf_types.h to not bloat
> iavf.h, but now types.h includes big ptp_clock_kernel.h :z
> When I was reviewing PTP for idpf, I proposed to make this iavf_ptp in
> iavf_adapter a pointer and allocate it dynamically, so that iavf.h
> wouldn't need to include anything PTP-related at all. This way you
> wouldn't need iavf_types.h.
> What do you think?

I can try make it happen

> 
>> +
>> +/* structure used to queue PTP commands for processing */
>> +struct iavf_ptp_aq_cmd {
>> +	struct list_head list;
>> +	enum virtchnl_ops v_opcode:16;
>> +	u16 msglen;
>> +	u8 msg[] __counted_by(msglen);
>> +};
>> +
>> +/* fields used for PTP support */
> 
> Redundant comment I'd say.

Agree

> 
>> +struct iavf_ptp {
>> +	wait_queue_head_t phc_time_waitqueue;
>> +	struct virtchnl_ptp_caps hw_caps;
>> +	struct ptp_clock_info info;
>> +	struct ptp_clock *clock;
>> +	struct list_head aq_cmds;
>> +	u64 cached_phc_time;
>> +	unsigned long cached_phc_updated;
>> +	/* Lock protecting access to the AQ command list */
>> +	struct mutex aq_cmd_lock;
>> +	struct kernel_hwtstamp_config hwtstamp_config;
>> +	bool initialized:1;
>> +	bool phc_time_ready:1;
>> +};
>> +
>> +#endif /* _IAVF_TYPES_H_ */
> 
> [...]
> 
>> @@ -307,6 +343,38 @@ int iavf_get_vf_supported_rxdids(struct iavf_adapter *adapter)
>>  	return 0;
>>  }
>>  
>> +int iavf_get_vf_ptp_caps(struct iavf_adapter *adapter)
>> +{
>> +	struct virtchnl_ptp_caps caps = {};
>> +	struct iavf_hw *hw = &adapter->hw;
>> +	struct iavf_arq_event_info event;
>> +	enum virtchnl_ops op;
>> +	enum iavf_status err;
>> +
>> +	event.msg_buf = (u8 *)&caps;
>> +	event.buf_len = sizeof(caps);
>> +
>> +	while (1) {
>> +		/* When the AQ is empty, iavf_clean_arq_element will return
>> +		 * nonzero and this loop will terminate.
>> +		 */
>> +		err = iavf_clean_arq_element(hw, &event, NULL);
>> +		if (err != IAVF_SUCCESS)
>> +			return err;
>> +		op = (enum virtchnl_ops)le32_to_cpu(event.desc.cookie_high);
> 
> This cast is not needed.
> 
>> +		if (op == VIRTCHNL_OP_1588_PTP_GET_CAPS)
>> +			break;
> 
> Same comments as to one of the previous patches -- you can declare @op
> inside the loop and also take into consideration that cpu_to_le32(const)
> is faster than le32_to_cpu(var) on BE.

As in previous patch I'll use iavf_poll_virtchnl_msg. After that
your comments won't apply

> 
>> +	}
>> +
>> +	err = le32_to_cpu(event.desc.cookie_low);
>> +	if (err)
>> +		return err;
>> +
>> +	memcpy(&adapter->ptp.hw_caps, &caps, sizeof(caps));
>> +
>> +	return 0;
>> +}
>> +
>>  /**
>>   * iavf_configure_queues
>>   * @adapter: adapter structure
>> @@ -2423,6 +2491,10 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
>>  		memcpy(&adapter->supp_rxdids, msg,
>>  		       min_t(u16, msglen, sizeof(adapter->supp_rxdids)));
>>  		break;
>> +	case VIRTCHNL_OP_1588_PTP_GET_CAPS:
>> +		memcpy(&adapter->ptp.hw_caps, msg,
>> +		       min_t(u16, msglen, sizeof(adapter->ptp.hw_caps)));
> 
> Same as to one of the previous patches -- I'd avoid partial copying and
> check the msglen first to be the same as this sizeof().

Sure

> 
>> +		break;
>>  	case VIRTCHNL_OP_ENABLE_QUEUES:
>>  		/* enable transmits */
>>  		iavf_irq_enable(adapter, true);
> 
> Thanks,
> Olek
