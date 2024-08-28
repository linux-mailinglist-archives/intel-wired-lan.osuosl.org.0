Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16537962F97
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Aug 2024 20:16:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8966940DDD;
	Wed, 28 Aug 2024 18:16:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sMPrR7bQIBht; Wed, 28 Aug 2024 18:16:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 04B6040DDE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724868980;
	bh=Ofn91sEclL+vPjbV7jI6ZFspzw0AznEx3Ga1ZBFGXQM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f989cI/7hVv4B5fUC2cbyCBxWf+4B5K/o16J4xRa7FlrvHRT24kv2SnOS5lMW437N
	 B7LG5rR9j7FGcRvC27cZ3MJrrxjABWAIzTPR6V8CR3Y0JHLc384eR8ezjVCVa5nsZG
	 2hw3DXzjQV/S02vrEGRfZNQDZud1ZbU6W5DSmxJb5qjhujc9ClHNoEIFOdQ9Fw3Tb5
	 lbwEZTKL7UnSH1jvzDRTP3xai5GErV6UfOtjkGYp9Aakn6owxd2+8ClptXFtWLgs14
	 fZdDqTh2bY7Hxe4iO3obCLlSa5FLKSM1SmlMysmRGozJEKq3byXysYWWDJwlvqA8wC
	 Fr5tZw/lmUw9Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 04B6040DDE;
	Wed, 28 Aug 2024 18:16:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 947AE1BF425
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 18:16:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8D7A740C3B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 18:16:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yHnFQl1KUvJ5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Aug 2024 18:16:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B51D740102
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B51D740102
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B51D740102
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 18:16:14 +0000 (UTC)
X-CSE-ConnectionGUID: DW/SHwN9RXicqgclW/5zLg==
X-CSE-MsgGUID: BO39Cet9T2K7NDMrzVDIsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="27189299"
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="27189299"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 11:16:14 -0700
X-CSE-ConnectionGUID: JywCz+zlRMGJrjPVASvH7g==
X-CSE-MsgGUID: 8t2WV6SLTC+mEf0ux/VbIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="67672175"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Aug 2024 11:16:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 11:16:11 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 28 Aug 2024 11:16:11 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 28 Aug 2024 11:16:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nNK45m+7bYNqOtzynhL8U3gjfi2tWse2BK/dOIosYTyaG1RLRmHM2OkRFDEaCfXiQKAcLR2CNIoETILCqEZebsIigH3hgXTE89ksH2KY1fx4xcFoeCO8EOrNXkoVcFoF4lTLafDVHf/eXjcovNdpxUgkLXdPX4J3Fwaa8wHaiWX3pF+zeWdWdLEimDitDdcJAMHaBxxD18e/mwhPtqiZJW6asPrNcm3/+kQRGmA/aREnIFZmHre25L7Bk362xI5YSZnBbjlEN/Pp1AmAzMUwxYF52c4Akv4iIV9zZPK3C3r40QtQWofSEwx4dZPpCUnKxALqFAh/Q9hvrMZuqCRMtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ofn91sEclL+vPjbV7jI6ZFspzw0AznEx3Ga1ZBFGXQM=;
 b=pwDKdTBLW3etSX9o3+VhkR8LQ7ENKlt+gjNm2M10yX+gWF3F8YnIAYdtQHod/t3WlIbI1m3KuMIImVUN7Yqg/UY0mQ7G49lP1rsp1re34jiApv0UWdI9vrbXYu/HDkBBMk7+rwhqK9o3da9UeHZLOEf402EpBwi4VcWEj3Tj564Cc48iRYFXQoEuvuWxLNoVZtiuEwEZdlT2Sp2xM8Z/Rsyo1Qb7F9V+jc+pegJY3PkT/fLlVr2N+OsNsLuCxvKOGQd47izAwwhswGtZPta2qWOnDoVxLGj+ud2WVlwtKv8Q5LL8NZ0BGw4JghWcPF/BdIRRjxOetM834EPFxqie5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH7PR11MB6331.namprd11.prod.outlook.com (2603:10b6:510:1fd::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.25; Wed, 28 Aug
 2024 18:16:05 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%2]) with mapi id 15.20.7897.021; Wed, 28 Aug 2024
 18:16:05 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [PATCH iwl-next 13/13] ice: cleanup Rx queue context programming
 functions
Thread-Index: AQHa+RzZpcfLfFSYIUulioWUQ9V907I8+lgw
Date: Wed, 28 Aug 2024 18:16:05 +0000
Message-ID: <CO1PR11MB5089B70E7139C2A296439743D6952@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-0-0442e2e42d32@intel.com>
 <20240827-e810-live-migration-jk-prep-ctx-functions-v1-13-0442e2e42d32@intel.com>
 <e14de2e8-3e24-4984-b923-812102e6df1a@intel.com>
In-Reply-To: <e14de2e8-3e24-4984-b923-812102e6df1a@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|PH7PR11MB6331:EE_
x-ms-office365-filtering-correlation-id: 1d05ce9e-3e40-4646-7c6f-08dcc78d7bab
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?cENuL3hHR09RN09IbHo4NTBEcDBneFF2SW54RTRzMG9pMHRuRFYzMVRqTVlH?=
 =?utf-8?B?QXhibG9TZ2FOeXpsQi9HWjVtSWR6R1cwNzVSenllb0Z0M0ZuVHAyMHRVenh5?=
 =?utf-8?B?OXkwcEYyWDNqblRKOVlMVUltUDZITlQ3NEFwekJzamo5OHV0REM4ZlBiQlRY?=
 =?utf-8?B?NTZXTzl4U2xvVFpkeG9OUEgvbnI4aVJEU1ZXaGgrdmxBMFNtSzgyY3lOOHRm?=
 =?utf-8?B?Y2dDbVZFaFlwN2N4V2gwWDNGVVlKV3NoaGx5WmtuTU5rSmZISzFjeWNUajFu?=
 =?utf-8?B?WXNyYkRlZEtDbk5rdmFFVjJqbnEyVmg2V0dDdGcvSGNWL3o4VmZNSWx3UDBD?=
 =?utf-8?B?Ym00S1lpNVNObTBZb2ZEcW8rdC9iUndHS3FGTjhGc0Y4TXlMeGp3RFNDMXI5?=
 =?utf-8?B?WE5WVVF4Y3FTbEp2OWg1N0xrc0pxN3M1Q050aE1NbEw2OGFaeGkrNGtRVUdk?=
 =?utf-8?B?RGkxSGNLT0dMYk5uVGpsVDJYeXhwd3VOTUdQR2pNaGFQTS8zaVVNUDRnL1pL?=
 =?utf-8?B?aHhNOXZwS2ZjK2JLamxlQ3RwMXFGRDR4N3NJOHI4RjJaR0YxNk5iaEx1RWZR?=
 =?utf-8?B?K2lTcm1EWTUyV2dOMEN6R0x6bFQyRWhsblFlK09IOUNZTm5pZDJxQzJUemdk?=
 =?utf-8?B?cWs1MDVpcFdrOUJ2U3ZBazBucnJEUytobUZTcDErK2ZYWWNyeUk1d3hxN210?=
 =?utf-8?B?c3REbVVRaXNnbHFCQ2xTVzhuQm1tTGRLa0FheUl1NFlmVXU3WVdFR1hYNWVO?=
 =?utf-8?B?MUxsUlpTYVRhWmxyb1NoSVM5SFliUkdqN3c2SWtzZmIrWFpiaUlHa3FhVHM4?=
 =?utf-8?B?YmtEVHdvWHBVK21aZzdRSExtbjlidmZFNWJUOU9KMVhLMmhLZE1vQ0gyRU1F?=
 =?utf-8?B?SFNPUk9xMWY0amVaenFUM1Jqd01HRmtkRXpOczVFOERneTdVNWtLT21PMkIw?=
 =?utf-8?B?emhSZUlZelZSeC9BTFVTV0NDc1gwQnNWa1dqZUJ3V3BQT1lVWmNJQlJGam96?=
 =?utf-8?B?T2MydzNCNWcrbk9QOFh6T2ppY1FmcFRKVmhuaXpVWnptalpNemV2Mm9NOUpr?=
 =?utf-8?B?cEpaWjBtb0hkQUF5NGVpV2RFSkxFR1dWUHZnQzBFSnFHNFRGcnVxREJwa3hC?=
 =?utf-8?B?akcrWEZpYVV1RFRmNDQ5anZWRDZHanpPa1dpVTI2a0I5YklQY0VNaGd4c01l?=
 =?utf-8?B?MWNLemNxaEtDRFNMZFV3QWxzdTAzUUFzTlVKUUp6c3IrL1VqVVdXRVFXa3ZV?=
 =?utf-8?B?elBxUDcyY2xOemd6Ym1uVCtqVHRrWXAxMHNES0xJdUhCT0dJNERFL2w4U1py?=
 =?utf-8?B?NEp5RXpLYzBoL0lXWEtqZDdKWTNjakRHcklWVFRMSEV5ZzFzcy9MRGJDT1BV?=
 =?utf-8?B?Uno4NUlkTktMbXI3bFdGclJ3SEt5MXkxT241YktKd1Rmb1gwQUhUbUhvcEsv?=
 =?utf-8?B?MmhhSjVQbDh6b1NDb2ZmZTJhYm9jbVFheS81T0F4cnpvaDg5cDhtWXdGUTk4?=
 =?utf-8?B?dEFlRVJ0TkJMZzE3dFpwUUFPQ2RWZWF6VEVIT29BZ2NFMjU2WXhOaUhXVnpo?=
 =?utf-8?B?YVNPWVF3QjhsNkFiM284TDFzV3ZBM1lwMVgrcXc2RkxPSThENFN5MU40Y0Ey?=
 =?utf-8?B?SVdqREpJVGVRR0E1QzV2TzdXYzZFbE1yYUVBY292U3RLVGhjZSsrUldvc0J3?=
 =?utf-8?B?UVpmTDdrQUtLR2wzZXNBYXZ4Umt6aWNIL2NnK1UyTUtoN0RvSmhBTnZTa29q?=
 =?utf-8?B?Q0Y4aSs4d01iZG9wQ05Wa0kxN1NHTHVjbU5FMHVXeXRxc2ZoVnJmL3l6OTZy?=
 =?utf-8?B?ZzZQaXI5OFAvdFdYU0xRSks3MmFoWjBSZktCeGw5NUhoSWtEUFhnamxQTmlw?=
 =?utf-8?B?Ris1bjR4dTdjWTE3U20yMlMyandoWWFVZWFiaVNYb0x1bXc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RVFNaytGbGI0WEtPdzJYZXJJN2pUL0VzcGk1RWhrZk54NEYrV2pTUFd2OWlS?=
 =?utf-8?B?MFo2N3NYbDBkanhYTTMyTUNUUlJsU3VjdXNsZWxkbS9oQ3VkeXVIUFFZVEUr?=
 =?utf-8?B?L1F0TXV0bFZnQkg5UDZnc1lreHdTWFZUVXN3c0E4WWRlWVk4eHZOMDVodEpn?=
 =?utf-8?B?Ym9ObjloNHpFa3lMZyttK0d3djNEVzBIMUpoL08yZEFkRllLWHhtM3BueGl0?=
 =?utf-8?B?dlVsUWQyLzFUcWxTNnFQQ1BFbDJab3VNV2pxRGx5T0xsaVpvY3V6aitpTld2?=
 =?utf-8?B?TjExQlV2MzJaSlhET2dGL3BpNTdkQ2FkQkxNVGhidHI0NUR1ZDNvaXAyaDND?=
 =?utf-8?B?T0o2L0VqWThicXI1bS8wenRVbVFhaVZ3WTI2d2FQbUNzT3NZOVlxRE9sV1U5?=
 =?utf-8?B?bHhKZWlrb0dNUUMxZS9GZDh1MFdoQkFZSzVDblE4aFRDSFJ5OHEvaE1XN3RV?=
 =?utf-8?B?TklwYXkzSHZDTDF3cjViM3RnMXJpZ25pZVpEc3JXWXFiRTVJTUVENCtiRlZt?=
 =?utf-8?B?Q0ZuVndMazh3MXZLR1VrSE5hTjhScDYzdVhmTHFYVXJGN1U3SHc5MDJpQnpx?=
 =?utf-8?B?bUJIYjdRK1B4R0ZFc1EwNlgyeXh4QnRmNzFxQVNldzFUa2FpaE5PWG5BZnli?=
 =?utf-8?B?NUQ2d2k2ZkpCMURoaDR0TnlqUzZRSUVJVlgvWkhHN29PdElBbU9JT1psY2E2?=
 =?utf-8?B?Zzg2V3lydm4rUmpqR0orbzBRbDREbGMvSWM0c3pnclRlYVdRSlkyMWU1alA1?=
 =?utf-8?B?TE9jSm9QSUl6RzZpTUVtaWVsNlhWK2xwZ21tOFJXdE5tZmJKODlueVBTMFlS?=
 =?utf-8?B?ZGtndWpzYWNvaVY1YkdJMXFHa3NxT3FGamdSS3lmZ2t2NGVjOUswSEJsY1pt?=
 =?utf-8?B?Rm8zb0JLeldINmVKblVBT3RGZ0YrWHBNNUVTamhhSno2RFFsbWdSaFFaK2Rt?=
 =?utf-8?B?aCtlVTl1YW9tWUw0dk01aXhnZERxczhDeWh2TUdHRmVHcVFmZUtpZUdNWmVw?=
 =?utf-8?B?MDU0Y1JzYzh4VURIRHRHbzBOcm5PaGw1ZUJoWjU4Tk80cFZVU1FUblNYNEpo?=
 =?utf-8?B?M3NFSmFra1ovc25rWWVSNWIrM0YwenNjYXJDeDVxK3hJQnRSWjJCNTlKeVF0?=
 =?utf-8?B?cnJIRm44a2N3WCtDajZtV1EyRURYUHkvZi82ckphZEJZYVFmY1REd0g5am03?=
 =?utf-8?B?eEJJOUg3Y0xjeS8waW1zd2Z5WnNrS1UwRkJpcFJ4dTFacURVbWhXRW9vNEFu?=
 =?utf-8?B?MGZHOGRDRlZGaHdTbTQ5TGowbGEyYjBSb1l1SjBxRnRMY2w5QjNqNkRNRkky?=
 =?utf-8?B?T0VuVENVbmRXeVlrVzA4S09SMDNnMWtwOHNXcG9GWEVDakw1amFwZnNrZ1hw?=
 =?utf-8?B?SzQrMU5LQkJuSlpRZjZVWmk1Q1RubWJVWnVYbWNIYzdrTWdiNVE2b3YvODhI?=
 =?utf-8?B?dVhFYTVkOExIZHZpTEhtZThwRGlSYllJV295bWxBczRDR2V0QmlyR3I4MGVy?=
 =?utf-8?B?Y3l5WjNKQVQ0K3VvS1dXUFkyQ3dWRU5IOXRaUHVxS0hKMERJUjBZeHhqNlZj?=
 =?utf-8?B?cTk5bUIxT3F2eUUrUUhZNURjMTlyTG0rRXgvQ0xLVjBnV0ZoRVhoZjhVbWJp?=
 =?utf-8?B?UkFuTmd4UkY0UEkrMytuMEVVekxnc2NObjRHbzlHQVAvN2xiQ0x0aC9XSTI0?=
 =?utf-8?B?Undvb2ZtWkh3ZXFMOGVMbWgxaHN1ZlV3T2dCNTI4RFNtc3BJTGphSTFqdjN3?=
 =?utf-8?B?ZEhEZGRVSUM2UEFkcjNjdUdSSGFETlE1ZUVYOTFEM3JUUjN3UmRCRDJ4ejBZ?=
 =?utf-8?B?V1lKaGNvdFlBRHVLRVhzbi9OMmgvblg1S1JuN2hCNDlTdTJnZ0xZSFY2cEZa?=
 =?utf-8?B?USt2a1IyMGtOdXhGVW1lanpEdE9mTFVIaUxmeUhpYm5taUh5U2EwYTFvam5z?=
 =?utf-8?B?RkdJMy9aK2xTalFiaG02cStqVlJ4akhSL0ZxdUF1Unh2bUI4U0VoSlBiVXVB?=
 =?utf-8?B?Sno1K2p1ZkFXRWI2cEFhVS9YZlk0TXh6N3AvU1oyZ0RkdkdOdnBYSC9tOE11?=
 =?utf-8?B?RG9VU25YZWs3dTdobktFZlU2YUVsSW45ZEVZdEtaTnMya3Mwc1Vrbm5xUWRJ?=
 =?utf-8?Q?H1An7/5qgEKYe4WHyHYmu4AB1?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d05ce9e-3e40-4646-7c6f-08dcc78d7bab
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2024 18:16:05.8361 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hl/pwc2oH0MqQ18Iq9TFQGmK0DW2UofprLJI5Sg5kbxjjUp00s+AIhWKXC73h4sLeIGnpGlbmCKgLBLp/DUEx+bo5/zvWLdDhBVJQTP89Gs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6331
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724868976; x=1756404976;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ofn91sEclL+vPjbV7jI6ZFspzw0AznEx3Ga1ZBFGXQM=;
 b=fhQ6C4lr+fDCfhC5H0RVoOg/F5nHZ7d4v8DOs5f5LNxf79fJxzV48XmC
 JZ9n7Ga2miOwxyWSPBLlTURUZXOulTrme9F2RYtuioKfzQzsOKmDd56iA
 V88EJvAyHJNkawAivtvNYo7prYMH2Y7XV34ggSPTPCNUTQQ91Fo13FmiX
 +Q/o4KzdTtcoEJXr4OHb/RW7IgMFb6SsrxzpcCkHdOFnUXRf632NV7EgU
 //7hBUfjRSjDfUUs5/FQqeZ81JIA/fFIDpLKqdy/ANhZPlM1tCEgmsBJF
 gr0TjmIBFWhIiAdWr2iwYlFwm655eCBu07cWvB2f2qZhrjJWoiYV56Eqw
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fhQ6C4lr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 13/13] ice: cleanup Rx queue
 context programming functions
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2l0c3plbCwgUHJ6ZW15
c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBB
dWd1c3QgMjgsIDIwMjQgMTI6MzUgQU0NCj4gVG86IEtlbGxlciwgSmFjb2IgRSA8amFjb2IuZS5r
ZWxsZXJAaW50ZWwuY29tPg0KPiBDYzogSW50ZWwgV2lyZWQgTEFOIDxpbnRlbC13aXJlZC1sYW5A
bGlzdHMub3N1b3NsLm9yZz47IFZsYWRpbWlyIE9sdGVhbg0KPiA8b2x0ZWFudkBnbWFpbC5jb20+
OyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+DQo+IFN1Ympl
Y3Q6IFJlOiBbUEFUQ0ggaXdsLW5leHQgMTMvMTNdIGljZTogY2xlYW51cCBSeCBxdWV1ZSBjb250
ZXh0IHByb2dyYW1taW5nDQo+IGZ1bmN0aW9ucw0KPiANCj4gT24gOC8yNy8yNCAyMzo1MiwgSmFj
b2IgS2VsbGVyIHdyb3RlOg0KPiA+IFRoZSBpY2VfY29weV9yeHFfY3R4X3RvX2h3KCkgYW5kIGlj
ZV93cml0ZV9yeHFfY3R4KCkgZnVuY3Rpb25zIHBlcmZvcm0gc29tZQ0KPiA+IGRlZmVuc2l2ZSBj
aGVja3Mgd2hpY2ggYXJlIHR5cGljYWxseSBmcm93bmVkIHVwb24gYnkga2VybmVsIHN0eWxlDQo+
ID4gZ3VpZGVsaW5lcy4NCj4gPg0KPiA+IEluIHBhcnRpY3VsYXIsIHRoZXkgcGVyZm9ybSBOVUxM
IGNoZWNrcyBvbiBidWZmZXJzIHdoaWNoIGFyZSBuZXZlciBleHBlY3RlZA0KPiA+IHRvIGJlIE5V
TEwuIEJvdGggZnVuY3Rpb25zIGFyZSBvbmx5IGNhbGxlZCBvbmNlIGFuZCBhbHdheXMgaGF2ZSB2
YWxpZA0KPiA+IGJ1ZmZlcnMgcG9pbnRpbmcgdG8gc3RhY2sgbWVtb3J5LiBUaGVzZSBjaGVja3Mg
b25seSBzZXJ2ZSB0byBoaWRlIHBvdGVudGlhbA0KPiA+IHByb2dyYW1taW5nIGVycm9yLCBhcyB3
ZSB3aWxsIG5vdCBwcm9kdWNlIHRoZSBub3JtYWwgY3Jhc2ggZHVtcCBvbiBhIE5VTEwNCj4gPiBh
Y2Nlc3MuDQo+ID4NCj4gPiBJbiBhZGRpdGlvbiwgaWNlX2NvcHlfcnhxX2N0eF90b19odygpIGNh
bm5vdCBmYWlsIGluIGFub3RoZXIgd2F5LCBzbyBjb3VsZA0KPiA+IGJlIG1hZGUgdm9pZC4NCj4g
Pg0KPiA+IEZ1dHVyZSBzdXBwb3J0IGZvciBWRiBMaXZlIE1pZ3JhdGlvbiB3aWxsIG5lZWQgdG8g
aW50cm9kdWNlIGFuIGludmVyc2UNCj4gPiBmdW5jdGlvbiBmb3IgcmVhZGluZyBSeCBxdWV1ZSBj
b250ZXh0IGZyb20gSFcgcmVnaXN0ZXJzIHRvIHVucGFjayBpdCwgYXMNCj4gPiB3ZWxsIGFzIGZ1
bmN0aW9ucyB0byBwYWNrIGFuZCB1bnBhY2sgVHggcXVldWUgY29udGV4dCBmcm9tIEhXLg0KPiA+
DQo+ID4gUmF0aGVyIHRoYW4gY29weWluZyB0aGVzZSBzdHlsZSBpc3N1ZXMgaW50byB0aGUgbmV3
IGZ1bmN0aW9ucywgbGV0cyBmaXJzdA0KPiA+IGNsZWFudXAgdGhlIGV4aXN0aW5nIGNvZGUuDQo+
ID4NCj4gPiBGb3IgdGhlIGljZV9jb3B5X3J4cV9jdHhfdG9faHcoKSBmdW5jdGlvbjoNCj4gPg0K
PiA+ICAgKiBSZW1vdmUgdGhlIE5VTEwgcGFyYW1ldGVyIGNoZWNrLg0KPiA+ICAgKiBNb3ZlIHRo
ZSBSeCBxdWV1ZSBpbmRleCBjaGVjayBvdXQgb2YgdGhpcyBmdW5jdGlvbi4NCj4gPiAgICogQ29u
dmVydCB0aGUgZnVuY3Rpb24gdG8gYSB2b2lkIHJldHVybi4NCj4gPiAgICogVXNlIGEgc2ltcGxl
IGludCB2YXJpYWJsZSBpbnN0ZWFkIG9mIGEgdTggZm9yIHRoZSBmb3IgbG9vcCBpbmRleC4NCj4g
PiAgICogVXNlIGEgbG9jYWwgdmFyaWFibGUgYW5kIGFycmF5IHN5bnRheCB0byBhY2Nlc3MgdGhl
IHJ4cV9jdHguDQo+ID4gICAqIFVwZGF0ZSB0aGUgZnVuY3Rpb24gZGVzY3JpcHRpb24gdG8gYmV0
dGVyIGFsaWduIHdpdGgga2VybmVsIGRvYyBzdHlsZS4NCj4gPg0KPiA+IEZvciB0aGUgaWNlX3dy
aXRlX3J4cV9jdHgoKSBmdW5jdGlvbjoNCj4gPg0KPiA+ICAgKiBVc2UgdGhlIG1vcmUgY29tbW9u
ICc9IHt9JyBzeW50YXggZm9yIGluaXRpYWxpemluZyB0aGUgY29udGV4dCBidWZmZXIuDQo+ID4g
ICAqIE1vdmUgdGhlIFJ4IHF1ZXVlIGluZGV4IGNoZWNrIGludG8gdGhpcyBmdW5jdGlvbi4NCj4g
PiAgICogVXBkYXRlIHRoZSBmdW5jdGlvbiBkZXNjcmlwdGlvbiB3aXRoIGEgUmV0dXJuczogdG8g
YWxpZ24gd2l0aCBrZXJuZWwgZG9jDQo+ID4gICAgIHN0eWxlLg0KPiA+DQo+ID4gVGhlc2UgY2hh
bmdlcyBhbGlnbiB0aGUgZXhpc3Rpbmcgd3JpdGUgZnVuY3Rpb25zIHRvIGN1cnJlbnQga2VybmVs
DQo+ID4gc3R5bGUsIGFuZCB3aWxsIGFsaWduIHdpdGggdGhlIHN0eWxlIG9mIHRoZSBuZXcgZnVu
Y3Rpb25zIGFkZGVkIHdoZW4gd2UNCj4gPiBpbXBsZW1lbnQgbGl2ZSBtaWdyYXRpb24gaW4gYSBm
dXR1cmUgc2VyaWVzLg0KPiA+DQo+IA0KPiBSZXZpZXdlZC1ieTogUHJ6ZW1layBLaXRzemVsIDxw
cnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0KPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBKYWNv
YiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmMgfCA0MiArKysrKysrKysrKyst
LS0tLS0tLS0tLS0tLS0tLQ0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyks
IDI1IGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX2NvbW1vbi5jDQo+ID4gaW5kZXggNjcyNzNlNGFmN2ZmLi4zNDgwYTE2ZDY0NTIg
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21t
b24uYw0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9u
LmMNCj4gPiBAQCAtMTM1NywzNCArMTM1NywyMiBAQCBpbnQgaWNlX3Jlc2V0KHN0cnVjdCBpY2Vf
aHcgKmh3LCBlbnVtIGljZV9yZXNldF9yZXENCj4gcmVxKQ0KPiA+ICAgfQ0KPiA+DQo+ID4gICAv
KioNCj4gPiAtICogaWNlX2NvcHlfcnhxX2N0eF90b19odw0KPiA+ICsgKiBpY2VfY29weV9yeHFf
Y3R4X3RvX2h3IC0gQ29weSBwYWNrZWQgUnggcXVldWUgY29udGV4dCB0byBIVyByZWdpc3RlcnMN
Cj4gPiAgICAqIEBodzogcG9pbnRlciB0byB0aGUgaGFyZHdhcmUgc3RydWN0dXJlDQo+ID4gLSAq
IEBpY2VfcnhxX2N0eDogcG9pbnRlciB0byB0aGUgcnhxIGNvbnRleHQNCj4gDQo+ICJpY2UiIHBy
ZWZpeCBmb3IgcGFyYW1zLCB5ZWFoIDpEDQo+IA0KDQpZZWEsIHRoYXQgc2VlbWVkIHVubmVjZXNz
YXJ5IQ0KDQo+ID4gKyAqIEByeHFfY3R4OiBwb2ludGVyIHRvIHRoZSBwYWNrZWQgUnggcXVldWUg
Y29udGV4dA0KPiA+ICAgICogQHJ4cV9pbmRleDogdGhlIGluZGV4IG9mIHRoZSBSeCBxdWV1ZQ0K
PiA+IC0gKg0KPiA+IC0gKiBDb3BpZXMgcnhxIGNvbnRleHQgZnJvbSBkZW5zZSBzdHJ1Y3R1cmUg
dG8gSFcgcmVnaXN0ZXIgc3BhY2UNCj4gPiAgICAqLw0KPiA+IC1zdGF0aWMgaW50DQo+ID4gLWlj
ZV9jb3B5X3J4cV9jdHhfdG9faHcoc3RydWN0IGljZV9odyAqaHcsIHU4ICppY2VfcnhxX2N0eCwg
dTMyIHJ4cV9pbmRleCkNCj4gPiArc3RhdGljIHZvaWQgaWNlX2NvcHlfcnhxX2N0eF90b19odyhz
dHJ1Y3QgaWNlX2h3ICpodywgdTggKnJ4cV9jdHgsDQo+ID4gKwkJCQkgICB1MzIgcnhxX2luZGV4
KQ0KPiA+ICAgew0KPiA+IC0JdTggaTsNCj4gPiAtDQo+ID4gLQlpZiAoIWljZV9yeHFfY3R4KQ0K
PiA+IC0JCXJldHVybiAtRUlOVkFMOw0KPiA+IC0NCj4gPiAtCWlmIChyeHFfaW5kZXggPiBRUlhf
Q1RSTF9NQVhfSU5ERVgpDQo+ID4gLQkJcmV0dXJuIC1FSU5WQUw7DQo+ID4gLQ0KPiA+ICAgCS8q
IENvcHkgZWFjaCBkd29yZCBzZXBhcmF0ZWx5IHRvIEhXICovDQo+ID4gLQlmb3IgKGkgPSAwOyBp
IDwgSUNFX1JYUV9DVFhfU0laRV9EV09SRFM7IGkrKykgew0KPiA+IC0JCXdyMzIoaHcsIFFSWF9D
T05URVhUKGksIHJ4cV9pbmRleCksDQo+ID4gLQkJICAgICAqKCh1MzIgKikoaWNlX3J4cV9jdHgg
KyAoaSAqIHNpemVvZih1MzIpKSkpKTsNCj4gPiArCWZvciAoaW50IGkgPSAwOyBpIDwgSUNFX1JY
UV9DVFhfU0laRV9EV09SRFM7IGkrKykgew0KPiA+ICsJCXUzMiBjdHggPSAoKHUzMiAqKXJ4cV9j
dHgpW2ldOw0KPiA+DQo+ID4gLQkJaWNlX2RlYnVnKGh3LCBJQ0VfREJHX1FDVFgsICJxcnhkYXRh
WyVkXTogJTA4WFxuIiwgaSwNCj4gPiAtCQkJICAqKCh1MzIgKikoaWNlX3J4cV9jdHggKyAoaSAq
IHNpemVvZih1MzIpKSkpKTsNCj4gPiArCQl3cjMyKGh3LCBRUlhfQ09OVEVYVChpLCByeHFfaW5k
ZXgpLCBjdHgpOw0KPiA+ICsNCj4gPiArCQlpY2VfZGVidWcoaHcsIElDRV9EQkdfUUNUWCwgInFy
eGRhdGFbJWRdOiAlMDhYXG4iLCBpLCBjdHgpOw0KPiA+ICAgCX0NCj4gPiAtDQo+ID4gLQlyZXR1
cm4gMDsNCj4gPiAgIH0NCj4gPg0KPiA+ICAgLyoqDQo+ID4gQEAgLTE0OTcsMjMgKzE0ODUsMjcg
QEAgY29uc3Qgc3RydWN0IGljZV9jdHhfZWxlIGljZV9ybGFuX2N0eF9pbmZvW10gPSB7DQo+ID4g
ICAvKioNCj4gPiAgICAqIGljZV93cml0ZV9yeHFfY3R4IC0gV3JpdGUgUnggUXVldWUgY29udGV4
dCB0byBoYXJkd2FyZQ0KPiA+ICAgICogQGh3OiBwb2ludGVyIHRvIHRoZSBoYXJkd2FyZSBzdHJ1
Y3R1cmUNCj4gPiAtICogQHJsYW5fY3R4OiBwb2ludGVyIHRvIHRoZSByeHEgY29udGV4dA0KPiA+
ICsgKiBAcmxhbl9jdHg6IHBvaW50ZXIgdG8gdGhlIHBhY2tlZCBSeCBxdWV1ZSBjb250ZXh0DQo+
ID4gICAgKiBAcnhxX2luZGV4OiB0aGUgaW5kZXggb2YgdGhlIFJ4IHF1ZXVlDQo+ID4gICAgKg0K
PiA+ICAgICogUGFjayB0aGUgc3BhcnNlIFJ4IFF1ZXVlIGNvbnRleHQgaW50byBkZW5zZSBoYXJk
d2FyZSBmb3JtYXQgYW5kIHdyaXRlIGl0DQo+ID4gICAgKiBpbnRvIHRoZSBIVyByZWdpc3RlciBz
cGFjZS4NCj4gPiArICoNCj4gPiArICogUmV0dXJuczogMCBvbiBzdWNjZXNzLCBvciAtRUlOVkFM
IGlmIHRoZSBSeCBxdWV1ZSBpbmRleCBpcyBpbnZhbGlkLg0KPiANCj4gSSByZW1lbWJlciBzb21l
IGJvdCBjb21wbGFpbmluZyBvbiBwbHVyYWwgUmV0dXJuczosIGJ1dCBJIGhhdmUganVzdA0KPiBj
aGVja2VkIHRoZSBrZXJuZWwtZG9jIHNjcmlwdCBhbmQgaXQgaXMgYWxsb3dlZCA6KQ0KPiANCg0K
SXQgaXMgc3RyaWN0bHkgYWxsb3dlZCwgYnV0IEkgd2lsbCBmaXguIEkgd2FudCB0byBiZSBjb25z
aXN0ZW50Lg0KDQo+ID4gICAgKi8NCj4gPiAgIGludCBpY2Vfd3JpdGVfcnhxX2N0eChzdHJ1Y3Qg
aWNlX2h3ICpodywgc3RydWN0IGljZV9ybGFuX2N0eCAqcmxhbl9jdHgsDQo+ID4gICAJCSAgICAg
IHUzMiByeHFfaW5kZXgpDQo+ID4gICB7DQo+ID4gLQl1OCBjdHhfYnVmW0lDRV9SWFFfQ1RYX1Na
XSA9IHsgMCB9Ow0KPiA+ICsJdTggY3R4X2J1ZltJQ0VfUlhRX0NUWF9TWl0gPSB7fTsNCj4gPg0K
PiA+IC0JaWYgKCFybGFuX2N0eCkNCj4gPiArCWlmIChyeHFfaW5kZXggPiBRUlhfQ1RSTF9NQVhf
SU5ERVgpDQo+ID4gICAJCXJldHVybiAtRUlOVkFMOw0KPiA+DQo+ID4gICAJaWNlX3BhY2tfcnhx
X2N0eChybGFuX2N0eCwgY3R4X2J1Zik7DQo+ID4NCj4gPiAtCXJldHVybiBpY2VfY29weV9yeHFf
Y3R4X3RvX2h3KGh3LCBjdHhfYnVmLCByeHFfaW5kZXgpOw0KPiA+ICsJaWNlX2NvcHlfcnhxX2N0
eF90b19odyhodywgY3R4X2J1ZiwgcnhxX2luZGV4KTsNCj4gPiArDQo+ID4gKwlyZXR1cm4gMDsN
Cj4gPiAgIH0NCj4gPg0KPiA+ICAgLyogTEFOIFR4IFF1ZXVlIENvbnRleHQgKi8NCj4gPg0KDQo=
