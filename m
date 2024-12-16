Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BE59F3411
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 16:09:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04A3160C17;
	Mon, 16 Dec 2024 15:09:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o7oM6VlmcgBr; Mon, 16 Dec 2024 15:09:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF68260676
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734361766;
	bh=K3K51Smkx0599KPX0kdGoCtnAzTULT+FFecAdVPlTus=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U1X6MDLJwSGodjXHLCfuGB0E9z+imnl3UtODsbNGOLPwYEPPNuMMGJ0fSR9gDIMA6
	 4PxsY934gPcC42aIgOrm9bvGiGQDOuGKMXwyiMqPZgycg0Ep8DHdvF8dZ0pQN3dsZc
	 SCCPJmX3Yr7TH3p7iaSFty4ML/C9y+cbLJFMLnL1dSG/PLE0LuzsLgnBeYK38v7j74
	 MHGQG6q9i4F3W1JtVuOl2sYV3D0W9seb+vvV/zTl4Bx41eJ+3SGo+8JNixvcYL4Nfb
	 eBEaAi6N139IBL8JLngqCDUvLly3W8PL/MjoCQ2Y5eDRk6+2DH3N3ysJA1rTAwb4c5
	 fdc+RLoCLSoOQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF68260676;
	Mon, 16 Dec 2024 15:09:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E6E6FCE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 15:09:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BF0F98408B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 15:09:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mhepC9H0Hle2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 15:09:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 90ED084080
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 90ED084080
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 90ED084080
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 15:09:23 +0000 (UTC)
X-CSE-ConnectionGUID: UZ2Q7RfXSluRi3xSyBmPfA==
X-CSE-MsgGUID: idjK3QFEQ5+w1ddpdsMybw==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="38524103"
X-IronPort-AV: E=Sophos;i="6.12,238,1728975600"; d="scan'208";a="38524103"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 07:09:22 -0800
X-CSE-ConnectionGUID: RXN9l+7VRsiNFhYMzGUpOQ==
X-CSE-MsgGUID: 82TOYSNPR2K6n4nmVfgDIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="101816457"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Dec 2024 07:09:22 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 16 Dec 2024 07:09:21 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 16 Dec 2024 07:09:21 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 16 Dec 2024 07:09:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Uv6ZjKL/D53WArCF+3cbMf9WHEw2tMwyW9GA/r7VP+dqBJEEQt7KqbmLsLjisadrOXOrZuzc5Hvn+B43hKEdQ/nIGq+li97gHP+d8Pf8YWFspZP8Cu3/igKEU6zvseJFTF4GPXE0VKGeOjN9zvgQYJNZ9ksnp3bFfM4GNjbihkkwhP3WB6gQlbmdrN/YkCU9TTkUtnEvYzo8KstfgF0wDflN55X53KD8DXhmZfU4pTKo4eMLW3C7fXdq/ISAGicKDGezBg+JtY6g8hlHYe3B3Vl6VBbfxvl9KsiwAGzfTF8cmaBnjhMGhfqp9E3lqprtu/atso9SThi+50cBH2F8Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K3K51Smkx0599KPX0kdGoCtnAzTULT+FFecAdVPlTus=;
 b=pNAR7meiDxUFaL9PMLk9G0/ZYajOZZWcCdMX/c1Kv9+f6VQPyplJ/QoWBIAlemt1rRKOApuKE1v1T9ZTZbCGtE8E/vACxjebNUks7VR1x6LWA1Id9rIsQVuKyi++d51Mf5yhCbalcCrvap5vsY/rv5V6DTkKmsvzteYEsRGwhAwbso8Vim2YMqxyKlCHyCjaFjCLDOGNcvJcAUcKxnrWW+XXEs3O97+WwiexrTt7mP1S2v1mDRdQW1pvwtduUXaycdZ6pZ1AUR3tI98lRwqieQciG0gnUMmd484rkWEBFD4b1ueUhbRcI0qZ5eoPyH+2wQVacDCn7x3XK0c4CTQgyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by BL1PR11MB5956.namprd11.prod.outlook.com (2603:10b6:208:387::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.21; Mon, 16 Dec
 2024 15:09:19 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%4]) with mapi id 15.20.8251.015; Mon, 16 Dec 2024
 15:09:19 +0000
Message-ID: <30e3c7e7-c621-40b9-844c-d218fb3e9f2c@intel.com>
Date: Mon, 16 Dec 2024 16:09:12 +0100
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>, "Szapar-Mudlaw, Martyna"
 <martyna.szapar-mudlaw@linux.intel.com>, <andrew+netdev@lunn.ch>
CC: <netdev@vger.kernel.org>, <horms@kernel.org>, <jiri@resnulli.us>,
 <stephen@networkplumber.org>, <anthony.l.nguyen@intel.com>,
 <jacob.e.keller@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20241209131450.137317-2-martyna.szapar-mudlaw@linux.intel.com>
 <20241209153600.27bd07e1@kernel.org>
 <b3b23f47-96d0-4cdc-a6fd-f7dd58a5d3c6@linux.intel.com>
 <20241211181147.09b4f8f3@kernel.org>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20241211181147.09b4f8f3@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR07CA0253.eurprd07.prod.outlook.com
 (2603:10a6:803:b4::20) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|BL1PR11MB5956:EE_
X-MS-Office365-Filtering-Correlation-Id: 4e7adc3d-3684-4ff8-4822-08dd1de39d3b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|3613699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cWRjSGZWbWVqbkhuTmNwK0RiY2ZXdzl1ZGpMWktyWTNPbTFkaHNyai8vNWpS?=
 =?utf-8?B?VFFuYnplOXNaM0NkSUh2UXlnVFlucGFwNmNzWVlxWXp1Vy9XUzZ1Y1FUZGhv?=
 =?utf-8?B?eVIveFpnS3lIK3J5R3UzQ2ZuVGxydGs1R0tzT05jeHlKWStKdGt1bnBadFd5?=
 =?utf-8?B?VTZ1Qk5DVjJxRHpSak95cEhSYW1jR0VJV2lIaXZKeHhOTUh0SzJvM2UzSmdk?=
 =?utf-8?B?aHdnMlBQbzJtemVORmFxZFBaTHJkWkFxK3hrNGMrRWhQTW1tMFB0RjVvODky?=
 =?utf-8?B?eTc2bUVieDYrNWNVYmt0bGcrTURxdHpTRS9vMWlKenB2ZjdycFFudTU0UVpm?=
 =?utf-8?B?aTF1bHJ1U0MyNFhab1NHZVcvaWtvcU5oQTZFczlKWUs5Qzd3eWpGTGVCWVJr?=
 =?utf-8?B?UDhCdDl2Z0d3TGZmSHdGek94bFdHQ2RFNW93c3VMZEpzQXpSS09zQzBUMFB6?=
 =?utf-8?B?cVA4VkU5MHRuKys1M3JJa3pFTllZQjIyblkrUEVWRkhvNkIrMlNEdDcrcWpz?=
 =?utf-8?B?UC9QT0hNL0N5TzdBN3Yxc2NTbnE1NkdBM2dDWWFmSVRXdUQ0SEFtQVhNUVls?=
 =?utf-8?B?RWRaMXdVbFR0eEQ4MHJIcDg3RXM0bDU1NWl6Kzd3UFFyV2IwYTJ4akI4aWYy?=
 =?utf-8?B?a215V3l1TjErM1VMeFpYeCtTNitVd0gzV3ZubDFWdnVyeEhaMmhka3dCUVZv?=
 =?utf-8?B?ZzdHRkpISXQzaVZpcXVqVDRLMkx6ejZRWlExMnJBU0tjNVFDV2t2V3FnWWhu?=
 =?utf-8?B?MlQ3WE9DemJPR2M2dk1DSXkxRTFnRE44TVFJeXpBUnJTNEE2NjZHZ09pUHZF?=
 =?utf-8?B?VW4vcEZxSStBeGhPdWR1OWhkNGE3VnFGMTY1K0NxdE04SkJYSzFma3k4cXl2?=
 =?utf-8?B?SmN5U0F0aHA5bmVWeTlPd2xlV3NWa2JkK0hmOTlGckhlckp3bFJGTFJucGxn?=
 =?utf-8?B?Nzg2VHRBRVNySXNKdG0zbENvR0VrUlgxclpyMmlaT3hZUGpCU1Z4MlZrNkd5?=
 =?utf-8?B?UERmNk5zRUU1dkl2Zzl4TklWcStnVCswblhVNm56c2l3R2VlU0h4VzQyY3lV?=
 =?utf-8?B?MVJCdTdvbHlNZGlhNTBWTCtOYXk5Y2JSMG0vMW1PYzF1ZktPZjBiTWZ3OW9z?=
 =?utf-8?B?S0t1dVVnei85TnRuSUt5SG9BZHZGNERRODVlVldpV1ZTNGhXeGJyS2F3aUNK?=
 =?utf-8?B?bVpiY1JqRnFRa1VaYnFwaWF4TFBHS1puOHNkSGlwcHh1VXJzUWtCT3Z5RUhz?=
 =?utf-8?B?b0YyV1FUMjJFVWltNmh3Mld6WWQwek10ZHhndjZKV2FSTWhSL2ExUWhQdUhx?=
 =?utf-8?B?RnJiaittSm5Edk4zd0E3QkcvK0V3N0pzaFdBTDFJZExDay9PaXcyYnpqOThz?=
 =?utf-8?B?YWUzbW5YUmdCQjdMY1AzMS9ZblNBVURvUVBJOU53TUVSa2ZGOTkvQlM2MmdU?=
 =?utf-8?B?K0s2d0VVdmVuTU5TR3o0NWxzY3l3SDZ1WjI2N3pZdDRUcG1vc2VqK2VNNURj?=
 =?utf-8?B?OE9sT2N1dnBEZkVOL3RLYlp6SjI1d1FOR1hGZTBIMFJuS1RFdWNOSFNvTG5v?=
 =?utf-8?B?bFE5UUIxNGViaTBLWkw5NFQ0S3l0RUlxS3lHazU3V1VFaWovT3ZVVFBQQ1Ns?=
 =?utf-8?B?dEo5TWJWRlpMejJFSk1JNCtPTi9RMjRFcTh2dzRNWnUwMVUxYjlMY0JWSCsw?=
 =?utf-8?B?UzlOZVBTT3JvY2tlOGlBcWhMVWJ0c1ptQ2M3dzVsaDRERkpzNStxSC80OEww?=
 =?utf-8?B?TFM5WE1QNEJaUFlMTC9RMXhtaEY0dHZwMFh0YzVDWHdCKzY2ZnkvMy9OOXNm?=
 =?utf-8?B?eitwcU4yRno1VUNCcGN3eGNjRUhYcVh1STV2VjI5dkVuY0tVTTJ2QmR3eFRw?=
 =?utf-8?B?cVZiWTVtV3E1UjZndUY4cmQ3WHFxcWxXQUh1UW1vQzVPT2JLYUhRUUg4Y3dq?=
 =?utf-8?Q?xFeHvtYU2VJoR4+9NyA3O1jhFEJsMfzU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(3613699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WnVSVGFwRlJ0NzlNZXcra2dtRnhGZld2bUpBdkNxWnBBTUV5SVFnMEFGcmNz?=
 =?utf-8?B?NGp3TVJ4Qm00bm5vdGJzaEVSd3d4cEFaYW9SQXhYU1JlaEMvclJSay91YU5n?=
 =?utf-8?B?R0x1V1VCbHVDQmRsemJDdUJOYnI2dTVtUFEzb1U5STVBN3pvN2puNXJzMlhT?=
 =?utf-8?B?QUhGYi9LRUxOaTY2aDdHQ0FoVW1aZnMxZVBpQmdOTTB5M25hMXBuNXl4bWtV?=
 =?utf-8?B?bFN5cWJLWVE1angyb2cxSzg0dFM1UElFVFFtRVpRemd5QmVYazZtczBCYnIy?=
 =?utf-8?B?ekhQVUZnZ3pEQmQ1bWdHbnNlUmNsM0ljRUlOVmN6Z0xRbXV2RWtJMURsR0FG?=
 =?utf-8?B?VG5IVjRialpjaWFCbkpqZFdKaXkrTjdqZ0ZSam1zMy9HN3poZHBqYnBZdWJw?=
 =?utf-8?B?b01VUEsvK09lOWZYL053YlRYTEo3am15bk1iZkQwYm1sVDE1TEZGVWJhdXZN?=
 =?utf-8?B?STdrR2NNWFR5ZHpDakg4TjhUQ2N4ekdBcUpvd3ZlUUxrS1I1ZEFYVjBSSkMz?=
 =?utf-8?B?cXRReDFRRTR0cjFDbGZmNjVXRmhwcXhIQ1l3bVBnc2JDWGxYV045Umg0QWEy?=
 =?utf-8?B?QStiUWp4TFZnUnMreVB1ZG5ESVVOWHJ6bTVXclBnQWpjaTREeHJvSFc1VU41?=
 =?utf-8?B?U1ZNYjdVbnJuWis5WUg3aE9ab0xRUWFTVXhPOHgvTzY3dmFuYk54UzJ5bi93?=
 =?utf-8?B?ZU54cU9CeXZpWTlWSHRydkpUVitYMjFNbFp1R0crMmI0ZXFSWmVPWXJqYWxk?=
 =?utf-8?B?cFNzM2ZMQVB1cWFRVlVvWUpmVGdYNlhOZmxrY1BQejF4a1JiTkluS0EvN2lQ?=
 =?utf-8?B?SlZxRFNUTkZYcmFOVEsxL0dmRXZzTkF6UHZFeXNqRDVmT3haSDlIVVdWN0Y4?=
 =?utf-8?B?a1duYXV6K2hYaEIwUVRDMXp5VkplbUw1MVZHRzlNakVhNENxWm1vbFZOallP?=
 =?utf-8?B?dnJMY1Q5Z1V1bk55NTZYUjEyRFpVTy9QajFIZEUrTHJLbGwwY29GejRZNUpl?=
 =?utf-8?B?a3lQWUEyMEErZ04wcU5uZW4vLzlia2VoSkh0NERhUzhmMUJaYkllb2dhMklw?=
 =?utf-8?B?cXQ0Q0dYdVdMVG1wa1hDamJZYlZxazB6VitidE01UGhoeW5sWEZ2elk3U2RV?=
 =?utf-8?B?dHNRWWhkdDh0YzUrRFJ4OVE4a0szcnF2c0svMU01RHk4Q0FTenFDZU5mb0xF?=
 =?utf-8?B?MjV6V3BIV3NQZFB1SkpqSi94TFcyNWdMSDRVQjl1ZnoyYUJ4dGs1T3BIRzN5?=
 =?utf-8?B?M1BUY2hBa3Q4cUFKcitDZTh1dWhPUGpBVzNSdXJub0ExNDFCQWdGR05YYnpC?=
 =?utf-8?B?SmFQK2FKblZ3S0s5ZjkxYUVMbWpmRUJ1ZDgwM3VZZXVpdHZManRkaGl3bC9K?=
 =?utf-8?B?RkJTU3J0WGNpZElXWkpueURRT0lSdlBORjl0N2t0bG5MTVFwTXJ1Z3dUb253?=
 =?utf-8?B?TVdvdzhCdEdBUGJsOUNtMHBxODZDeW5nY1JnZlU3QkJMNUV5VHplRGJHa09o?=
 =?utf-8?B?K2N2ZlVoWDRhSURlQjUwVTFKaGV3QXdma0xsM2YrbW1HSCtaVjEyd1g3Y3FB?=
 =?utf-8?B?UE16OStRdjhqT1o3TGxMOVE0V2JSdVZjSm8wTlFZT3dZeXVPVEZvanB6bkxj?=
 =?utf-8?B?eGNDeDNOZUdBYVh0L1ptUnNRdjJDZ1RxaHZURUN2YzhYTWs4S2hEajZqY1hG?=
 =?utf-8?B?VFZZZk9YbWVVWmUwcU5lRjNHdUdhcm1JWXZiL01odlUvcE56WDhKOEVTWjV6?=
 =?utf-8?B?R01HWHM2OVRzTFZpQlZNMTVxdDlnTGQxelNwdmxKMEd5L0c3YkdaSjBpdHI1?=
 =?utf-8?B?enl2VW9aL3dxYVEwMFFCdkd5azM0aHp5Qm1hbFhjSWtHb0xrbDNadHZhaVky?=
 =?utf-8?B?cTJVTWdoL0JOMklPMjlBY0FoSUlGaGsxZEJHRDRRWHZ1ZmlvNmZDYmw2dlM2?=
 =?utf-8?B?SmUycEIrTjluNDd3dHJVT3B6U090RUdmcW81MmFzdUpHeWd4SGNZU1NjWml6?=
 =?utf-8?B?ZWNCTzVSeHN6MW1OMFNXaE01eE5QekZSd0ZZN1VmMFBZSDd4M1RvTTRqTFFN?=
 =?utf-8?B?UDdSYU9LSGpTUFk4dlVVQWtBTm05T2ZZMmx4cWxCWWFFUDJjWmlHTmJjNkN0?=
 =?utf-8?B?cFpLZDRyY0tHcldicG9Gbkh2UEpPTTdHUXpkMGpLejVXQ2xHeE1oRkNJNG1j?=
 =?utf-8?B?K3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e7adc3d-3684-4ff8-4822-08dd1de39d3b
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2024 15:09:19.1015 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xUkjEvaFmA6zNX6jF0k+1hkTjYwJKmvltShMexJrjeaN56RX42kxdEqCMjMQvombcJV33KAsbGmaZeuAs1mApmPZSPXNtraqILaILVoGPt8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5956
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734361763; x=1765897763;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WKfiCW22ugXT3G9fZtt5B21FHeWKP0Gc0UhNYNEwy9U=;
 b=HJwtlutCavL0yRJjKrvbIO4jg2cEiSujHl0T2Hu0QJDVWh5qUu8xbv+n
 icIOg80RGAtOeXshtLJZx3V1YFoa38xnfQEPQuetzSlk7u58/6XrxFIvs
 BZeqV+0xcDqkPtZUZbFevsFEmbhcRsQK6vG7IEYeCxR6dDJCUgZ+NQTIx
 YU5Wl8QYSIiIayu9qYl2nfste0xi0bz2jkIt3v3YSi4mVzLBhbvmXpdfb
 rZdzyCVAP2AcrPWz1AFOZs8Y/m90Lw66UnT1z4iPoEkLKYH1idew4XXle
 0F6BJLKCYvuq7Lrgq7y99kRoy+gSrDdJFilbDSRQWHIlyVYJ7YduD+oIN
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HJwtlutC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC 0/1] Proposal for new devlink command to
 enforce firmware security
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

On 12/12/24 03:11, Jakub Kicinski wrote:
> On Wed, 11 Dec 2024 13:15:06 +0100 Szapar-Mudlaw, Martyna wrote:
>> This patch does not aim to introduce a new security mechanism, rather,
> 
> What I was referring to when I said "devlink doesn't have a suitable
> security model" is that we have no definition of what security guarantees
> we provide. Nothing in devlink is authenticated at all.
> 
> Anti-rollback is fundamentally about preventing FW compromise.
> How do you know that the FW is not compromised with devlink?

our FW (on-card little CPU) will reject a spooky FW image, only images
signed by Intel's priv key are accepted

> 
>> it enables users to utilize the controller's existing functionality.
>> This feature is to provide users with a devlink interface to inform the
>> device that the currently loaded firmware can become the new minimal
>> version for the card. Users have specifically requested the ability to
>> make this step an independent part of their firmware update process.
> 
> I know, I've heard it for my internal users too. Vendors put some
> "device is secure" checkbox and some SREs without security training
> think that this is enough and should be supported by devlink.
> 
>> Leaving in-tree users without this capability exposes them to the risk
>> of downgrades to older, released by Intel, but potentially compromised
>> fw versions, and prevents the intended security protections of the
>> device from being utilized.
>> On the other hand always enforcing this mechanism during firmware
>> update, could lead to poor customer experiences due to unintended
>> firmware behavior in specific workflows and is not accepted by Intel
>> customers.
> 
> Please point me to relevant standard that supports locking in security
> revision as an action separate from FW update, and over an insecure
> channel.
> 
> If you can't find one, please let's not revisit this conversation.

It's not standard, just the design for our e810 (e82x?) FW, but we could 
achieve the goal in one step, while preserving the opt-out mechanism for
those unwilling customers. I think that this will allow at least some
customers to prevent possibility of running a known-to-be-bad FW
(prior to opening given server to the world).

We could simply add DEVLINK_FLASH_OVERWRITE_MIN_VERSION (*) flag for the
single-step flash update [1], and do the update AND bump our "minsrev"
in one step.
The worst that could happen, is that customer will get some newer
version of the firmware (but a one released by Intel).
We preserve the simplicity of one .bin file with that too.

We will prepare a proper v2 of the RFC, reaching broader community,
but will check locally to see if there is a similar scheme in some
other intel (non eth) device first.
But please stop us if you believe that this idea is also
a phantasmagoria.

[1] https://docs.kernel.org/networking/devlink/devlink-flash.html
(*) name suggestions, as always, much welcomed
