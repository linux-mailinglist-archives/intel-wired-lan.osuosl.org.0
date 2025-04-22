Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9C2A96201
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Apr 2025 10:39:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6EB0260D65;
	Tue, 22 Apr 2025 08:39:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AXUFNA-W9fnl; Tue, 22 Apr 2025 08:39:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9BEF360D57
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745311195;
	bh=kib67K77GetNgplu4VECzB94wN3twOYSYH3EZ/eOezY=;
	h=To:CC:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QmdWx23IzJ+s5/HU8ALiGYcWqX4btrEMJa6GHd0eKRBXc3EyLeFy/z1IZnpLAscAb
	 O8kK6b2KQprvHLqO9TzQHPLX4FMUv9s5IK6WMWcFNDFMqZf9ckwrFS8FN1Kfh4W4Fu
	 hM9qRF9mMlouYSoIw29x1rv7eY+iKH2cBJXtKZaHt8MSClgzAhbfluXZnFbhQ/MJoT
	 h5SjsnXZL2TM79G+0CgJ8ev9s4WvReDRCncdtMDl+2QN6HTxG6SYf7x9E98xWtQj8R
	 E1rAWAcx6rrEaQ0nakPjCwb3pwUiUBbKunOeGOZ5DDLULy3VouMMlRoz0cDkAg3Mls
	 3j91kEw1XIxBQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9BEF360D57;
	Tue, 22 Apr 2025 08:39:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8461C1BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 08:39:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7227140FB8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 08:39:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9V0X8TNSow35 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Apr 2025 08:39:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 49D2E40FB7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49D2E40FB7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 49D2E40FB7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 08:39:52 +0000 (UTC)
X-CSE-ConnectionGUID: +la6NdeJRlel65rPdUlueQ==
X-CSE-MsgGUID: RMi6AoNFTjeGXlmwV1HYGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="58223088"
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="58223088"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 01:39:52 -0700
X-CSE-ConnectionGUID: KgcEeoxdSIudz79cC5o8Dw==
X-CSE-MsgGUID: K89aO5jBT0msKifIilgnaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="169151577"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 01:39:52 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 22 Apr 2025 01:39:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 22 Apr 2025 01:39:51 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 22 Apr 2025 01:39:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vZzWBWk7j/zr4pEZpHnak2iDezCKrjqH4Eqdhz8E24Ie6ZvaXdgT5Fh60uqU12MVn/Xz+s8iOjo3M1mCWN6cFqUn74DqOoa7zAzvlDCeaUlcZkAekifMwG7FQmvTm0W0hYHVUty9ujw30Jg3qw+9/JQDpG8ZtSbONMfyE/DI1ARC8qrbd50aQlOibPoPg3ynEJDf8yQcXG/8+AMtMZR8+krNoMb2z/XpScQ2d6L5uXUOi2zNmLhXN2HnxPxLvNjiacw0BppE9YRCaDGScJrGYcFdOdTxPd6sl8CIZ3YtBU4NlZrco0FB8DHtuasss3OQPampCt4U4qlBYAKTwAFXEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kib67K77GetNgplu4VECzB94wN3twOYSYH3EZ/eOezY=;
 b=S26jiLCnttJvGcvj1QanUkl+Pwqwbvj1DtdhvY1mT/7sn1Szn6n3+bnvWXERNrr8zU5JJ9pgtDencGBYW7eWbMud+cO5feANLslO5BciRikiSJPMAVkKpKHitD5wE6RgiePUN7tt3CjR79xP+w3mvHFFZyLKSEOEN6CLtsXNhx893COXU8cvn/vL9IUTZlSsfg70M/PrnQ+3hLEUwX5sZqxBW1yE1SuCFBKEPVqcDmuXnQ5GPEYsgRsG7+ppm+qe05ZBYI/ZSg+ZkhPUbDNqoGidvHgYw8uhvnqDoLFABE/yUSbyLOQ0t+f1CwdKfE8iK6g/a+kpbV5SchO64MRrHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5934.namprd11.prod.outlook.com (2603:10b6:303:189::7)
 by SJ2PR11MB8539.namprd11.prod.outlook.com (2603:10b6:a03:56e::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Tue, 22 Apr
 2025 08:39:47 +0000
Received: from MW4PR11MB5934.namprd11.prod.outlook.com
 ([fe80::96ae:ce0:2a38:7408]) by MW4PR11MB5934.namprd11.prod.outlook.com
 ([fe80::96ae:ce0:2a38:7408%5]) with mapi id 15.20.8655.033; Tue, 22 Apr 2025
 08:39:46 +0000
To: Jacek Kowalski <jacek@jacekk.info>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <5555d3bd-44f6-45c1-9413-c29fe28e79eb@jacekk.info>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <9d8301b3-c9f2-b2aa-2af9-db6906990087@intel.com>
Date: Tue, 22 Apr 2025 11:39:35 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <5555d3bd-44f6-45c1-9413-c29fe28e79eb@jacekk.info>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL0P290CA0008.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::19) To MW4PR11MB5934.namprd11.prod.outlook.com
 (2603:10b6:303:189::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5934:EE_|SJ2PR11MB8539:EE_
X-MS-Office365-Filtering-Correlation-Id: a38b493a-62f6-46e7-0ae6-08dd81793cd1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SzZLQ21BUVpDa0FBbmpWR0NFVkUzTFB5TzRTRWh6aDJhMU1nOHloOXJHK2JM?=
 =?utf-8?B?TktqanA4cGloeGNLUE92ZFlRZVoxYSszUjlhT3JJaGlxeDFGVXNKelNRamRH?=
 =?utf-8?B?eE9mRXc1a2liYlQ4bFBzdzJkZ3NRMlRIaXR0OGx3cHVZSlVKZU9hVENWRlgy?=
 =?utf-8?B?d1hDdk5USTdFMWJ3eXdWRDdnaHoyaUltM0MxY1V3NC8yK3ZGb1FDaEdGOUhz?=
 =?utf-8?B?NXgyeGZHVTZhNUdoRWlFTjFIOFpaKytRL0RuN29WV1dKSGhZS3dWR1hrb0k3?=
 =?utf-8?B?VW5EQzg1di93STBxMlpRaTR2SXBpQ1VhVnN0OXBoZjJuVlZpWmVFT2tidDNT?=
 =?utf-8?B?RXJSNHlQK01oNlp6ZndZTjcvNEtIK0FSa0hKWVVVSitRaEtMNG4wWTl2VVl5?=
 =?utf-8?B?MHVVNW1RRTBWSklWamZkS29WZmRGRXJ3QmtDTkVkQmNGUEJEOVBtRlRPSGI2?=
 =?utf-8?B?MXg4SVptUXREejBXOERDRzVwaE5zZWJWWW4zY2FtSHU0NWt4REhKUjJUUUtM?=
 =?utf-8?B?eEdmSnRDYXcwR1ZqRXh2OXRIU2ZYVmZXd2RLQzlBaTFGV1M1ODhHQVVaTUFN?=
 =?utf-8?B?V2VOcDBMemh1RU1sTjdLYW1WRFNMYmF5THRNUEpsbU82T1JLTkpNYzI0VTRL?=
 =?utf-8?B?eUFQeFdyQktYMlNiOFU4UGVuNmtENUdwZTMrYjJZdTF5TSt3WTNpeHB3SDgx?=
 =?utf-8?B?ZnRFVytjd1ZlYS95c010Nyt3b1hLVFE4SzJlakJsa1FmSENHcDVCLzhZZHNu?=
 =?utf-8?B?Z2Q2Q1hyV09ENHoxUWI0dmtSVTVlRkw4Z1lKUktFV0MzYjg3M3VqRkJFMnVT?=
 =?utf-8?B?bEdubkZsdExCb2VoNTZ5MUx0M3I5SSszVGFDMDVqM0h1RkNjaWlaN3ZKZHdw?=
 =?utf-8?B?US91UHp3LytEWXFRSjZLWjVpK2VNanNOVnB3VVAwamRQdmNyWGd5a3UvYktT?=
 =?utf-8?B?UmE2NjhJRzl1VzRQc05jVDVvUDNXeENZUEs4TFFwbERpY2xJOXZ3dnJXMGVi?=
 =?utf-8?B?RmJWZWdxQ1lXaVFrRWo3c2ZxZVRabDZkOC9PMFpsU2JLV0x1RG5SSjlHY0pi?=
 =?utf-8?B?dzNEUUczTzdoMUVuVnlWM0xpWEpaa3kxU2ZKbEh6Uis1enpyZ1FKaWgwblYw?=
 =?utf-8?B?VWQ5eHpxbWVabjRPMXlUQ3k0ZWcwbTVXTFovMkVWZEJEclMzR3VvOG9Gckg3?=
 =?utf-8?B?dTg1ZzI4a0lEREpJWGlOWHdOdXRhWG5wbklicEZGbzNCZk1rcWJOejV5YU5U?=
 =?utf-8?B?SE0rSjF6czkwOFEvMG5GNjNVY3Bkc0JKQmZsZ2plb0tRNU1iTjNjSUF6Q3pM?=
 =?utf-8?B?R1RiV1EySk5zemNGNlJtMXloRmk4NVN5M1RQYXkvdlhtQXFCVXgwRHoxYTAx?=
 =?utf-8?B?SjNLcWtzcjZYcXhzR3cvSGxIemtycDJyOGJ0dWplT2pDaDl5Mk4vTnhJUk8v?=
 =?utf-8?B?aWM1NGpvNlRPekhCUjJjMG9oRXdBbmxUUEVieVJXdG9LbjlMYTVBQmZLWXVn?=
 =?utf-8?B?dXpyNU5uUTFEYlNnTEFTZXZoWDhHQVE2NHBFbVlOTXZJelJHalBwelFhVVM5?=
 =?utf-8?B?YVJBemhwSEpkV05vWEkxWVpmZnlIemRpdC9kcVphdEVMbjFLMFhObkZldG82?=
 =?utf-8?B?NWd6bnRJL0loRFA4anlGZjUzZ0RYN295UUNKY3BHM09uSkFxc2F5cVB1eHJP?=
 =?utf-8?B?T0pSWStiRVM2UDN6S1pPcW5LbVFpT1hsZ2I4T1J3ZzVSR2hUQUF1bmR2MmRI?=
 =?utf-8?B?SG51Vyt5R28wbzQ5ZGZOMDVjS0pVR25Sdi9JRDVjWmZaVmpXWXh6cUxJZ0dG?=
 =?utf-8?B?bjRNMkt1bUcwOE84ZkVOQ29zY3diTmJGU21Rcy9lUUplVGNuQ0ZmVi9IY1R6?=
 =?utf-8?B?bHAvbE9rN1VQR1FaZVBkOTZnNGpLMnllYkp4SkhYS2RiSUYrUCtLN3lyODRQ?=
 =?utf-8?Q?36If7MFDfvg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5934.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MDI4RTRqdUdPT29ZeXFJNWRkSTRoa0JMYnpTVVp2QW1CSmJoR3V4YnNhbS9Z?=
 =?utf-8?B?clFYVlZVbHIxR0pGeFllQkpBMEZEZ1NNYklIT2d5Ry9xSldLSFBUR2hnam53?=
 =?utf-8?B?a1NEemJjTndVVWM3aU12S2o3azRaZTFzSEl0YXNIYmVQdjhSUTROTGUzVzZL?=
 =?utf-8?B?aVdwc0picFpOcWRESnluQStZS2NFVm9BUUp4TWZZWDhMNTVHMWhheHFUMGpo?=
 =?utf-8?B?aEZlUVZoaHgycjgwRi9DV2QxQkZURHNMejlwQnpmODF5SE5zQzRudE9qdjFN?=
 =?utf-8?B?RnpQOXNjUjd5WHcyOVk4UFA4YlVxRU5LcmI4ZklsOVl0dVRFNHA4WnhmYzVk?=
 =?utf-8?B?Qk1qRldjVGljbW54OUhteXVEOTBCdHhtUTVkaTd4UVJVK3pqTnNaMDBBMXdp?=
 =?utf-8?B?ckJLa1orUnM5WUxRcE5UV2s3UEtzMkl4T21ZMWcybEhnTC80SVBEYmI0ZGQ5?=
 =?utf-8?B?T2lXUDJZdTBqTC84L2h1Zlc5SHV2ajhsd21qNlY1bldEKzI1YllhNXphWjFN?=
 =?utf-8?B?N1I2cnYveG1HWlR2MzZReTV1TTEyR0RCNDdwdmpHQkhxMkQzUU1na3B0VnFh?=
 =?utf-8?B?TlM4enQ2eGNjOVhlNmpTSTN4OGZ6MTEzbGZuMWxzbXdkaWZrWHFYdzcrQzBS?=
 =?utf-8?B?c0pBajZCUjVpSkhxZkVVVTMxZ3cxbHdUVGdTOEh4TWVuY3ZrSG5uUHZBcUg3?=
 =?utf-8?B?YS9kWlVlT0JkNmh0bGFMTmJaaDB6dnFXNEVPd1hqVmFCZFFNRHlyL1E0L2NI?=
 =?utf-8?B?Q1dqSGI1VW4rL01kUjJjcUp2Z2RsNE5wenlUbjM4VHNhRkFTckRHUGdSaHlr?=
 =?utf-8?B?aCtnd3RYM044dHQ4MGRqUVVraEVoMk5FT0lpazRvb0tLNjhxTEJSNGNvY05V?=
 =?utf-8?B?WWs4b0JEY0orcGk1VWhNYW55TWVwRGJVOXVPaFliY25EUW54L1dacHFLeWtP?=
 =?utf-8?B?c0JwQWprRVNiTVFhNkxsTmVrYWphcWFKbktDWEpwQjJDb1lENnZPQUxKQjVu?=
 =?utf-8?B?Y3dWTTBVQkgvbHpOUUZVMUVxVkY4VlJsZ00zd0phWDdnZG5ZcG5QbUNjQUdS?=
 =?utf-8?B?U2txTy9Ba0ZGdC9lUE52YlNaZC91L3plOHdyM0FENS96amYyYUl6czNiNlBK?=
 =?utf-8?B?YzJwejBYSUNuOUkreTlGWHEyN1Z4MTFSaldNa0JWOHF0NnZiQW92SGdIR2V5?=
 =?utf-8?B?UEJlLysxTHYyTSsrZ1FyU1gzdkIyRkRkVnc1M3I2NlAxMUc4djVzdjg1SGtX?=
 =?utf-8?B?UmpNR21XVWFqUlEzOWZ0aTVBTTQ0MUhFSVQwQ0dzMFZzd1J0V2dTOTVqTDlH?=
 =?utf-8?B?MjdPK2s0S2JtYy9CTE10TEIwMUc2NE9PaitlRjMrcDJuOEY0cmJhQlRuL2xr?=
 =?utf-8?B?VFVBZHljdWdyMDRicUZabW5tTEZDSkxZRmwrRlZKK2JIWHJvb1JSRWd6c3Nx?=
 =?utf-8?B?THRyNjNnMGgzeGhnRTV5ODNDZVh6eUMybkVmNWV3N2haKzJqRnJLcmZSQ1Uz?=
 =?utf-8?B?NXgvZWZCWVlkL2MxVUw1bncvUTFWSURjVVNhZXpyS1JFb3JhNVllNnN0eVp1?=
 =?utf-8?B?MXY3N2dSNlZHekUvbHhjRXhIMGxWcnlLV1dRMDlyQnM4VFo3VmxtWkNIa1dZ?=
 =?utf-8?B?VkNicFpyY1RjK2Jza2FXSStNRnlLcWlVQUxEUnd5N0ozbEx5cUlWWmROZVpY?=
 =?utf-8?B?R3NFbEwzYkl2OW9wSW1OQlJmbmN3b1A1V3BzbTN4eTl6VTBWTkpQUXhUN3BB?=
 =?utf-8?B?L29xRnhsTnVUT1NFcnJMV0tsUWM2QmQxSE5YbERMNUlBblBYenZjVVB4VnhH?=
 =?utf-8?B?eGhiVk8vZjhtZ1F3cGpjTFN0YVlqK1pRN0hkTitrSU5zRFlCdEM2Vi9pSjJx?=
 =?utf-8?B?T3paYkdmaldGcDdYcStFVzNvNkEwSWdVNG5FUllFaDkrcGhFZ2pxRkNPU1hy?=
 =?utf-8?B?RWFaUXZPYnc1OGN1K0pDa0dUclgxSElUM1E1M251K3p5Y2UxRWlKUmVDRU5y?=
 =?utf-8?B?OUpQdWxyTVI1WktYM2xEVUk1bmEzNk11Z1plZGx1SE9LcmR1TFVIcWJSWW4z?=
 =?utf-8?B?Z003N3dtNERneVJVcHRYNUt3R1BUY21HbjlXdUxSUDVlVlVicVBLd0RQMUFS?=
 =?utf-8?B?WW5UNHFyY0doV3pzell6Ym8rcWdDaG0xSE9neUR6ZlJmVDg3SElzM2ZzYnVr?=
 =?utf-8?B?Q0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a38b493a-62f6-46e7-0ae6-08dd81793cd1
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5934.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2025 08:39:46.9154 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eSifC7HovF/E2X8NDZjKp2TOESKhkJxbHrcc8I26xS7Xp1uziiXL4jz9LSCkz0wvAHuKMngT0sIS5JtIZFiRWTbSU4Xshj1dSk16sfygJZ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8539
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745311193; x=1776847193;
 h=subject:to:cc:references:from:message-id:date:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=v05j2tA06BGxs8AsxU5T5FA6Ed+QfTafpMNhLHabUfo=;
 b=FCsVYXmQJqhn36PBlKzj55KOHvV9KBqxZoMdWO1J6T4Aa0ZT/V71HcOu
 zsjISGtb7bY5vSnr3/aAPP765sjRgU7SnZ3hr95JmCBlErGIxxXvQxsfa
 edLjYulNQJHMByNVpxS4ssZ2TYcdz5/2b3Vtv/G2eWP/ETM7U7q3m92ZH
 BYqU0kk9vHtwPBz+fB1RFB3Htranvjdo0qUKtuNreYEImfCAC7nLaqjMg
 iTEN2PZAQf8a1zdshZAmSKQW1IToya9BlmsAB2ooA/+JFkQ8FLZcF+hKy
 IjPBIRL282A6LCTn6eGnhVdbS6VXbXEARIP+MinKdyXjDhJf0cWcz5II6
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FCsVYXmQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: disregard NVM checksum on tgp
 when valid checksum mask is not set
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



On 4/22/2025 10:43 AM, Jacek Kowalski wrote:
> Some Dell Tiger Lake systems have incorrect NVM checksum. These also
> have a bitmask that indicates correct checksum set to "invalid".
> 
> Because it is impossible to determine whether the NVM write would finish
> correctly or hang (see https://bugzilla.kernel.org/show_bug.cgi?id=213667)
> it makes sense to skip the validation completely under these conditions.
> 
> Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
> Fixes: 4051f68318ca9 ("e1000e: Do not take care about recovery NVM 
> checksum")
> Cc: stable@vger.kernel.org
> ---
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c 
> b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index 364378133526..df4e7d781cb1 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -4274,6 +4274,8 @@ static s32 
> e1000_validate_nvm_checksum_ich8lan(struct e1000_hw *hw)
>               ret_val = e1000e_update_nvm_checksum(hw);
>               if (ret_val)
>                   return ret_val;
> +        } else if (hw->mac.type == e1000_pch_tgp) {
> +            return 0;
>           }
>       }
> 

Thanks, looks good to me.


Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
