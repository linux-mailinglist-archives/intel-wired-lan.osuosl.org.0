Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 07561960D2D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2024 16:09:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22BAA405D0;
	Tue, 27 Aug 2024 14:09:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xpTLDZnpYVh4; Tue, 27 Aug 2024 14:09:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 25EE5405B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724767779;
	bh=wUDBltAlbk8CcirFooKK4hut8YH0wYvVM2U7gASYCLE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nRXeDjAwwqaJUADfTZPoiyMarvQpls/QeIMX8//7RSCPwpfIqCcC8IoQYGSIy1dsx
	 x+k/84ybJZ3Oos80st4YBmEKYqiroXHUNFiB4wHfijQ+0qxo0jcp5pvUY9DlM3Ls5d
	 t7MxqUbuJ2WXGJfLJDt6jQ5PQi3V7KmZe7ZOfzA1Ic5GF9GPq4DrsqbVoknBoZTHC9
	 vkXONn4J0Lzo4mVaaabN/blo1V0AGCjryApz1RzD0O6EQPDPwrO6apVhYafuPCoHx2
	 90JamFOe+NnzgGTI0sxMufBqhZAfIKA+cu3p5evBO+fTipKxSVVJRr+mtKJ6ZBn2iI
	 LSS42e+taNXwg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25EE5405B5;
	Tue, 27 Aug 2024 14:09:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 384C91BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 14:09:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 23691405C2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 14:09:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GyPuXsa4PHTr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2024 14:09:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 371CC405AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 371CC405AB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 371CC405AB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 14:09:34 +0000 (UTC)
X-CSE-ConnectionGUID: BHJ3FkxARNy3FGmu8GWxYw==
X-CSE-MsgGUID: 5FAeUgHZTLSG/BNQRvwBfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="40719476"
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="40719476"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 07:09:34 -0700
X-CSE-ConnectionGUID: HUL9kg64S6CUx2P1Cy31Mg==
X-CSE-MsgGUID: IydCR5OOQ3KmB/+gsCHKYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="93614436"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Aug 2024 07:09:34 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 27 Aug 2024 07:09:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 27 Aug 2024 07:09:32 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 27 Aug 2024 07:09:32 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 27 Aug 2024 07:09:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QTbIag4LhN/9vECYClfawNRTDlYY4hqaKCOk4RWkhuqRWIB5BOQ7Ca8T7LAyCL8qRhx8C403FvE7Y0rFTDQW3hlMQEkG4CfnCNpxukUYO8Tn78DvAVI+eRtvEHYGgq65u8IcTHiZ6QLmv7ckHokTXlopdpkpvbQd5yiSfa1Zdi8zA9Xcxahu35JnS4qbWE9/a4hC9pG8zx7nZV9lAmj5IcYh+id1d3Faaksnq1sRXav48hDp8O8YBSqk6PwDT8eWbgpwurR6bOTt8s7e/OJ00IUXB7TkP7GgGk3NiHVzTmbm1AQHHo/KQ/UAKrQFGeMnyg31dcsFS1i2gBU4uAjk6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wUDBltAlbk8CcirFooKK4hut8YH0wYvVM2U7gASYCLE=;
 b=rfoPGqeRGKDGPpVtlhOekRyce3nRF+znH3fSXcJ6PqtNg7Thz9H8l0TJs5QIbWWIiv+b7zBae3IRejg8aAwL88BbW/4quNDmu9oA0+ctAkSCn6dMl8AmgSH4FDjLGPiVccPQlQBH6YeJQauk0KdTWTYbk1PMNYhAtk4V7IMq52Ugp7KsKPuzDMyOZ21pMgfschC8FaQX2O6ak8SjsqwKoYOGYQjEKIfmhiSV3bS0+CF1P5iqWAYCnhnxn91oqjFesXC+k9MgVfS3cwGrzaqXnyPn59i4kvonT1YeLf20pgEixHSPoH+xS/j0wStwmx471XO6F8C2EwTzXz8LPLpyig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by MN0PR11MB6304.namprd11.prod.outlook.com (2603:10b6:208:3c0::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.25; Tue, 27 Aug
 2024 14:09:28 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7875.019; Tue, 27 Aug 2024
 14:09:28 +0000
Message-ID: <a16c0444-a289-4a84-b6eb-b06b4a3ef1f9@intel.com>
Date: Tue, 27 Aug 2024 16:09:21 +0200
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Christophe JAILLET
 <christophe.jaillet@wanadoo.fr>
References: <fa4f19064be084d5e740e625dcf05805c0d71ad0.1724394169.git.christophe.jaillet@wanadoo.fr>
 <c786a345-9ec4-4e41-8e69-506239db291c@stanley.mountain>
 <2896a4b2-2297-44cd-b4c7-a4d320298740@intel.com>
 <bbe06f51-459a-4973-9322-56b3d27427f1@wanadoo.fr>
 <dafcfb71-52b5-4bf7-8145-aae2dfc06e10@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <dafcfb71-52b5-4bf7-8145-aae2dfc06e10@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: ZR2P278CA0017.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:46::11) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|MN0PR11MB6304:EE_
X-MS-Office365-Filtering-Correlation-Id: bcd9b683-9566-47f1-65b9-08dcc6a1dd29
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OEV5UktUZTR5S1FqZk9xV01DVkIvSFdHcElvSWluclhsSzhzZFlZY1VpZ0Uy?=
 =?utf-8?B?ZFY3SEgwRmpKeXpkNHp6TEtWazBTSU9GM3hjMFJ2aXVVRVBzUWJ1Y2pzalk2?=
 =?utf-8?B?ejdVVUdJMmFJTTl2WkxkR2JwQlhZOEgyV3grTTNmUHVObEs5U2p3eVZQeUty?=
 =?utf-8?B?b3Mwc1NDekRyL3FBdy9vcUMzMzRoaTFjK2ErL0ZKdDFGWVpIL2t0a2xUblRT?=
 =?utf-8?B?cTM1UDNQQ0FmR1dBM2Z2dGU5c1ZGQithcnZHZTlCSzBxVGpLVmNyTGt5NTVk?=
 =?utf-8?B?TXJOcG9WM3R4aHR2bFRKREpScUw4S04yU1hQNVRJY2NEU0pRRW5YYTF2QkVo?=
 =?utf-8?B?YitnSEQvdVRzV3hJb3RDeWZWSVd5LzlrQ2RSVm5EZ1kyTElSa1JXSjRCeHRX?=
 =?utf-8?B?Uy9DdnNyL2pXZEtwMjJZbStDeHRvdDFhcEgxMFJUaTVRWWZla1RENEZlb2x4?=
 =?utf-8?B?TjNHNUFtT1YxdG1LV2tZdmpHZXY1anZ0bCtpREwxNlZ4VWl4UmkrYVVjeko4?=
 =?utf-8?B?eHlEdW51eFQ5K0pKQjFqSTZYZ1NOYnk0WTFwdEdheDBBYUxPN0ZtaFVxdEhI?=
 =?utf-8?B?WGhvYTQ1OTROcDZSQUhkYjlFSXhHaVVQano0SWJUcnhaOG0yUlpQOXB4d1V4?=
 =?utf-8?B?QjZyYUJoTVhtNC9ha0IyN25Rczd3NGRhem10QkQ0VU8wc3k2dzlvSURSV0tI?=
 =?utf-8?B?WjlIKytINEFZTlhxVUxIU0RET0ZldWt1SjB1d0VXMVVRQTBJS1lQSmZYcEhJ?=
 =?utf-8?B?OHJPOCtPNUFqM0RHNXR1NzF4QUM3bDV3S0hjQnBXKzArMmJHczJyaThMZnRB?=
 =?utf-8?B?MU81V3VQaHVJUmZwTUk1OHdaWjhmMkhHcWN4NTlWYzhpTTVrRVoyRjVkaGc2?=
 =?utf-8?B?djRuY1B0WEM5N25xZWFjS1pWcnd3aDVnK3V3WkNmSXhuYmhtMmcxRDBUa2pl?=
 =?utf-8?B?di84YUpicUhRVW9FTUI3UHE2eWFPUWRYTUp0QnpVbWJ5UGhKSUJTdGQ4clg3?=
 =?utf-8?B?Z1k5UmQ3anpiMGZ3bDRmSXVEeXBuSzdzeG1YLzlSTjRYQVhyais1empHbFla?=
 =?utf-8?B?ejRmZVFOUjIxWkQ4a2xGaE5UYlQ2N0lOMUhRV3RXVHFId2VIWWhPMFJyemNm?=
 =?utf-8?B?MExvWnJYN0xyRXRGdmE1QnRnSEtUZkU0Z2FBcy9jdHhwV1VvVHJrRDBzdHZ2?=
 =?utf-8?B?RVZnV3F2SXdSTGtZZTVIVElNQkkvbmc1WWRCV3ZreDQxaFBoZmN2NWFaZGNL?=
 =?utf-8?B?N0lOZzZaSkpqZXVFWTd2Nms3Qlo0RTVUZjYzeUJ3RGV2OUV3L1dOeXE5SVFu?=
 =?utf-8?B?cHFkdUc5VUkyUDJ2ZG8veUZhNm9uMzdsVDlWNXJTRlVsMXU4aFQwbHE2Z3or?=
 =?utf-8?B?MlpSQVd5d3RNSm1NOU1sTnRmQlFROFBUaE5NUGFIaEFxTENPdlp5MDhCeVhP?=
 =?utf-8?B?cGpiSzhIUnFPVmV2eE9HS3VveTQyMlhWT0xCK0RIbE1WbHU0c3YxNVhQbENS?=
 =?utf-8?B?ZzdBUUNKSHNmMStSTlk5YWRxK3dCRVRZRmVHOGhpdFFhN1lKeEdMNWo4bTNi?=
 =?utf-8?B?V05FSXlOWHlidS9HTU40MmRLdXVyT0N3UGlKN0ZvdzNoUEkya0Y2WHdjU0V4?=
 =?utf-8?B?NGU5WmlXMVozVGkyaVdMT1RNTmduS1hSUCtSUUs2VE5helRJWGdBYk5DRGtD?=
 =?utf-8?B?djBDUjZLK1RWSzBRNjVZRFFNTkJ0ejBBNEVXcElwMG1TUWF1Nmw1Q3E4UVRt?=
 =?utf-8?B?T3hjeUVPTHdJUkxEaFBEZmlVa1JlSmp5bzZvNUwwWXpXTEl3K2cwb1JSV3Vn?=
 =?utf-8?B?b2ZBZis3azh0dWFRclExdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UDhSUWdvRFgwazRqWDZNRFpkRFdZczluSGJtbHg2NTNGWkFvYWVnZHVBQWRh?=
 =?utf-8?B?eGN3aFFnbFdyVmpVc1FyTUJEcWg4QmgwTTNmSTVOdTUwQklhTkJ6dDB3bkts?=
 =?utf-8?B?QjJSb3N5Vi9Dc1dBdEp3OG4zeEpvZ0ZSVEw4V3Q3WUlsZlZUUlNYTmpiTFAv?=
 =?utf-8?B?SjFWTVFLOFBVd0Z4ejcxMjh2bU1hNE1tRys3OWxtMHJNdU50ZXN5VlRxY1pI?=
 =?utf-8?B?aFU1dEZXamplOWcyUEZlZ0FNQWUxVmo2SDBrbCtoOHprRlRZQURHTlk4Mm1m?=
 =?utf-8?B?Y0xtUThnd20ya0o4OXRPZVhqck5CVFJDcHVsUWJpUjFkTmNOOGxPZlhGUTYz?=
 =?utf-8?B?NTQwaThtYTAyNXNkZXZuUEJYL3NUaWxUd0FyZnZUVHdRVzlUWGVkbnhyTUll?=
 =?utf-8?B?Ri8vY3hrTXVVZVRYSFB4V0NsM3dLN2p3NU4vWVd0YWtxMVhta2dDV3JSOGR6?=
 =?utf-8?B?WmVieWkwSjlOSlhUVnI1WDBJYVBrSkNnaG52MVVORXB3RXo0SCtuV1Vsem9C?=
 =?utf-8?B?eXF4TGhRcndkV2ZpRDQwTXpONEsweGcyVzBhZ1N0eXNZeGdyeDBiNEl4MjVG?=
 =?utf-8?B?K29lalJYeUFkQWFEanlSMzcvaGlxa1pveElwUUlUcFN4b1cwcGhBdkRzUUFn?=
 =?utf-8?B?MWhkYWZsK2dUSi90OUVkK2lQUVBFeU44VGNTNEgzbCtsbTNnNFdnNzJXNTcz?=
 =?utf-8?B?bHBZV2dXb1FKSms3UUdtT0xzM3p4WCtrdXE5ZGlCWjN1QXVDVkUzTUpYbXAz?=
 =?utf-8?B?WC9paGt1TTRoTk56NFBHMkZ4a1BhUGttVEs0NjNwdUZSVXM3bVNlcTNvYVhx?=
 =?utf-8?B?V2hwbWR1QjFvcDExT0J0VmhYbzlwK3ltYW1ZMWx3K1VXeXkrS2tkMEh6Vnpz?=
 =?utf-8?B?VitkODhyTDlSRzg4WjFSa2dLM0pDQjFvaFJzdFRjc3lwUytmMjB5OWZEVldO?=
 =?utf-8?B?UGJCUEVhSi9CL1p3TGZmQ2dvdGVNWHpiamhjb1NYWnI1L3hIWTB5UlBnSVpI?=
 =?utf-8?B?VHVqT3lqQXFLeGtMVXVEWml0R2wzeUpENjdyd0UwK0tJbXI0YzhZelRyWE9Z?=
 =?utf-8?B?YkpqaEJhU3pCSG5HRWxkcWpKa1A3WmhBUDF2VG1KVU9XWkJkZ3BldDRsNjky?=
 =?utf-8?B?MzYwRTE3NkwzVmtXcXoyU0xUKzRYUlFNc3BuS0I0RkpYaHN0TTFNN0t0WjN4?=
 =?utf-8?B?Y1RXQ0ErcFArMCtXS1BIZGRNR2lDc3U4Q0ZadWdDM3p4ZVl6VEg4QVV3TU1x?=
 =?utf-8?B?UEE5bXh4c0ZFSG0xRVFtVEpzK2pZTlFud1Uxcm5Ya1ZNQ3Znc21Ua3NzUUxG?=
 =?utf-8?B?eHN6OHNIbXBFVjJEL1FNRXBtSWJwalh2eThGMXQwSHdZZmtIVVN2V29VZUsy?=
 =?utf-8?B?ZzJ5TDRWZDB1ejg3L2xQS3NDcjFHNXdKZFdYY09CLzh2S0Jqa0FsUXZWNVpp?=
 =?utf-8?B?RW1ZbVRCRHJLbndwZUdkeXJEaWVDancreGhCOXlKdHlXZHhGdzVqSEZsVmx3?=
 =?utf-8?B?RU9zWU9mSkpEeUdOQi9ydk5WblJKekwra1lESkcwRXBVQTF6VnJNSUYvcDlM?=
 =?utf-8?B?UzRKLytzSjRoalZVREdsVGpidFM1MktOSHZqczMzMUdBTit4NDZKeFN1aWJ3?=
 =?utf-8?B?VGdyU2w4ZkZ4dlVEc2ZyVFYwckRLUnJQWHpNSVBVL3pDNVc4aE9LQjU2ckV2?=
 =?utf-8?B?Y2NEUmFEVE9heW9TVkl3K3BDYkhLcjN2bjkrZmpJMkRXZjJ5Y29kaUdTbXdW?=
 =?utf-8?B?NXd6cjRiblk4OUNweUtYMVNFOXMwK25qbE5PSktwN3d2RWt2SW4yU25vVU95?=
 =?utf-8?B?V2F5ZTN3NTdtYVZXOXVhUEJXVWFiWFpqVWVvcHRsbTdnZ2VIZnNiakZQNm1X?=
 =?utf-8?B?RVplWVE2RkNzL3h1YmMxRklsUWJSM29vaXE4dURnQkFLVVRFQTN1NGxFQmRh?=
 =?utf-8?B?c1lvNDdINGpwcG1raWk3SWdMV1hOQy9JaUliZ3ZqeFdaR0hmbDBVOFU3Q2JJ?=
 =?utf-8?B?clZGNEFGTEhnUU5oLys0R3ZXYWhFaitkd3o3ZlpsdnZEOHZBVk5CdTJwdEVX?=
 =?utf-8?B?aUZjbStuV1E1cEk3ZjNXVHlqMWpvV3lqaWloOFBQdjF5aHJMSkdjRGZxNVg0?=
 =?utf-8?B?aGRiVFNnMWNZZzJpQ0tTU3NFajdYSnFVRW9NaG9zT3pBNXJnVnVBdWlNcHBI?=
 =?utf-8?B?YUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bcd9b683-9566-47f1-65b9-08dcc6a1dd29
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2024 14:09:28.5022 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: frxW5NbyAQyPAR2rl6TlVpQnl3rYAg+saFtJGSix+Ds3gi/nXzyFLQlgNksEC2gmfMnnkzUgatNCvh2m3yyZXsOtrNd932gfqO6l+eGzIy4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6304
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724767775; x=1756303775;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XlTH/Pii3h42Pg1r4E27UG5y1MmTzmbhAN8tw2Wylb8=;
 b=gtwfGuySlC2hQN37KDwdU4VZ+IX+6k063rrFwJQK3pVqXT0GzsQHxe1x
 hlqOhNjVbKiQIZNDHsiax8SwVTuXYl8c4I2GqGx4DrpphbeQYRNXv7uRh
 f7yZboVDMYjkoEe2r/ngoFlFMyrHgYQbRTJ9h1sQs1t/1XAPLSI1FUHcp
 wUdsuUU+TPPpF9HBtN/kxkRLakYmXfSdqiBpnDohDO1B256imNGQm5WsO
 s5336tdUSanpMD4hmE4+RmyjzPh2ipp6tuiKZbiv8dO7Hd/aiCuI+Awsr
 JcrFsVmFXzPbyxUetEVaCln5nUYzJ4JackJ6vfoa41AFLlrQOsqIfNTNn
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gtwfGuyS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] idpf: Slightly simplify
 memory management in idpf_add_del_mac_filters()
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
Cc: intel-wired-lan@lists.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>, Pavan Kumar
 Linga <pavan.kumar.linga@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@linaro.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Tue, 27 Aug 2024 08:58:33 +0200

> On 8/26/24 19:14, Christophe JAILLET wrote:
>> Le 26/08/2024 à 11:15, Przemek Kitszel a écrit :
>>> On 8/23/24 11:10, Dan Carpenter wrote:
>>>> On Fri, Aug 23, 2024 at 08:23:29AM +0200, Christophe JAILLET wrote:
> 
>>>> It would be even nicer to move the ma_list allocation outside the loop:
>>>>
>>>>          buf_size = struct_size(ma_list, mac_addr_list,
>>>> IDPF_NUM_FILTERS_PER_MSG);
>>>>          ma_list = kmalloc(buf_size, GFP_ATOMIC);

[...]

>> So, I'm not sure to understand what you propose, or the code in
>> idpf_add_del_mac_filters() and co.
>>
>>>
>>> CCing author; CCing Olek to ask if there are already some refactors that
>>> would conflict with this.

I'm not aware of any MAC filter code refactors.

>>
>> I'll way a few days for these feedbacks and send a v2.
> 
> Would be good to have simple memory cleanup first, and later (if at all)
> to untangle our locks a bit.

Thanks,
Olek
