Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C184B3B2EB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Aug 2025 08:04:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D578D81E05;
	Fri, 29 Aug 2025 06:04:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fSQGPXbULOFP; Fri, 29 Aug 2025 06:04:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4A2681D70
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756447490;
	bh=kuNNmKrPtXinskfGP6nncIgsq/nW9a4/gPnJ7vy90bQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1hRFzlqptYpWSITpA2toFPABTsvh6hkSiuxiLxp+SyW1lPudIlMVSri6yDynZ853O
	 Hmw9KjuQMA1ghTeaXIfcvYPlA0WSWsBAoy7pO0vQIOlDN10pWizo6+FFpjlXZTonpa
	 B6FTpAHNn9g22LkCWolliMCTbYCKD0d2o5L7oTkyzSRuPH9vmm5imdfZRQaCmpdIgp
	 NjMD504JoED1ZOL8j2N8kzTdbidxs1Fi9VXn2fOv+/4ozoN6HE+3uZM7iGbsxMPZKK
	 H4nxOYj/9yjqQTrOe0+L0+TuByRIx3gCVoUJ2RoPuJ8ergVIKbS5YWwY9WRzRehOAa
	 SkfxmCXNLFOGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4A2681D70;
	Fri, 29 Aug 2025 06:04:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BA59C69
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 06:04:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9FA2041431
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 06:04:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lf2nfoZlA7SA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Aug 2025 06:04:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BA0D541408
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA0D541408
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BA0D541408
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 06:04:47 +0000 (UTC)
X-CSE-ConnectionGUID: /u5tbSNwSgCDGjW1Q+tMJQ==
X-CSE-MsgGUID: VjMI0PdhTkOrx3rFpiLURA==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="69438973"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="69438973"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 23:04:48 -0700
X-CSE-ConnectionGUID: DIX6X2wETQCCIdEuA4vl8w==
X-CSE-MsgGUID: kkhOYCERRSKX7IE2T8YM1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="169830537"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 23:04:47 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 23:04:46 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 28 Aug 2025 23:04:46 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.49) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 23:04:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kgzMUkCIXi45j2HMbpTIMiew9AGAMUK2VL1jyZrWT56TrO6R8hNd5jHkHfh/fOea44mflQniaO3JwWJBPfFZ2eX8TTvRzWdpD2w9Ru/PHaJ2dV4358WFM3ts0kuwUO2KsiTAM+psChqwX1fCA6exntmOtsCTixm0vDQ8GxGHRT+N+dtKaeg2z/vSRQp6cxFTefTD6AU7w6KpLut8u+oe0w5mNkNkWvTTxeN6Jc9uXjga52cYijGsdJPjIzDIAbsy57mZHIRTN6ZIFwDxzEd8MY6N/5OvIEnwUESe+0khegDIU3ZTZ3a53aJEJN70RfJhjsQyX2v1Wwe+TtqwUwemQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kuNNmKrPtXinskfGP6nncIgsq/nW9a4/gPnJ7vy90bQ=;
 b=d+hTtewTNEAMSdQ8TfIco0GEy7EVTaC9zjgDlL7J+4lr/J4QETV8B2FWdVepGvt8jVCuemB7SXz7tmsVJFuHMUjU2fJzgraIGFXcvAHM/oSZN+DKeRI56T8hhFF6Tm3xLpElbsUpbn4NnwK03hvL6ouylwtnzNrLB6BnMh+3s9v+ZllbJXN+bHV1qeS6jFr0LGZBp9lXNlxjpbilQHpVQ6xK8t/j8iLejTIHCHq24sLpzJIw5oN4VhJlBXBFODfiPjX7LeiEKDf3h+EVnsVJJ8SOEX8InXS3kWy9M0gqYGTKqgQMY6sEtYkE4X1X8LkxYZsShiuKHUf8rnjGVOb/ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SA2PR11MB4794.namprd11.prod.outlook.com (2603:10b6:806:f9::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.13; Fri, 29 Aug
 2025 06:04:35 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9052.019; Fri, 29 Aug 2025
 06:04:35 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: fix NULL access of
 tx->in_use in ice_ll_ts_intr
Thread-Index: AQHcB8G9UNPiON+5EU+MWGQqipJz0bR5RZYA
Date: Fri, 29 Aug 2025 06:04:35 +0000
Message-ID: <IA1PR11MB624109541477057443D8CCFE8B3AA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250807-jk-ice-fix-tx-tstamp-race-v1-0-730fe20bec11@intel.com>
 <20250807-jk-ice-fix-tx-tstamp-race-v1-2-730fe20bec11@intel.com>
In-Reply-To: <20250807-jk-ice-fix-tx-tstamp-race-v1-2-730fe20bec11@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SA2PR11MB4794:EE_
x-ms-office365-filtering-correlation-id: 6b058eb3-09ec-47f6-3566-08dde6c1ee2a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?V2pLUWhpQk1Wb09UeDVlbllCUUIrWVNsS24vcHNnODVMN3V4Q21iMk5FYkpl?=
 =?utf-8?B?YVdnUzJma1YzZ1M2OHM4eS9RN3lDMWZ0R2tpTWJyakUrOG1CV0dvaE1EdlFL?=
 =?utf-8?B?NkJ2aGozSFBsTE9TcVhoemp3cmg4Y0pkcU41WURveWkzcDRtdFFWU2xxSXZr?=
 =?utf-8?B?UHdjbW05MitzaDgrOFkxZUtvSjV6d293WEdiazYxZCtsRlJpNWJVOG5FOWhN?=
 =?utf-8?B?RWVWN2lpNjZGRDRaVUk5dlpDWXdYbXM3eG10bXB6dFJJSE9iOUczUVJrTVFy?=
 =?utf-8?B?V2hGbzhyMmNnY1o1UGw4aUltQVNOcWRZOTFoNzRZY0U0TGpBTE80RjVGK01x?=
 =?utf-8?B?SDliUzlJUEJ0VFQwN1VzQ2hITzlZMllsV0p4T0M1R3B4ck1OamJwNnFNNDM5?=
 =?utf-8?B?RUFQdXFvcjVzYThTWTVqdWx0TGhKbTRVTnNzRnlQa05BT0dJUGlHblYzdUJS?=
 =?utf-8?B?SXBqVDlKSUJtdXFlNGNZellSU1pqSXpHaFliSkpEanRHQ3NFckxaSkVQRks5?=
 =?utf-8?B?Zk1hWG5VbVcxbHBZeGU4aldCRmFQeENhcHowL1NTT3VRUkx3TjB5bnkraDlW?=
 =?utf-8?B?NnlpQ0c2cThYMGQ3RUtyWDV5V2Zkc1NjVHdtVWEwZXNwQVhOblY0TFpIQm5i?=
 =?utf-8?B?TndKZGw2aHppcTI0T3ZQTFVVSE96L2VOS0Z4MXNtVlVkVmR0UlBZdHF1d0pz?=
 =?utf-8?B?dFQrQm5senVUNDUvbmZnNTVGK0V5dHc2R3FoR1cyeXdSODFoYW52M3ZiMVhT?=
 =?utf-8?B?cy9XM090QkdCcitJcWVXZWJKajJGTk1idjZKblZldFVORnM3WVptZ1BtL0Zn?=
 =?utf-8?B?Ris3N2RVZFMrOXNlS1hVNTZOMDNmbHJCTC9yQVdVM3YyNHRqeElaQ0VPWlox?=
 =?utf-8?B?b0NRRFpkOTJEbWtVWUY1WDVCd3pISmo3QU56R25xeFVBeXppUmN6YmNRM3JQ?=
 =?utf-8?B?UDlTUVNuNXNjUkZDMk1oZkNnSmFmRnpzZERuaHpsQXFPMnpnNjFhUFNLRVpv?=
 =?utf-8?B?UUIvem5rMURyTURwTnNMMzVhSkk1NDRhSXJ3M1J2RzZmK0hvZ1dzdHhvenJ5?=
 =?utf-8?B?bDlEWDdSOGsyMHJYVEVBb0lvMFQrY1BCbU5INkN6TFozY1NhVnBoZ2VXTk9k?=
 =?utf-8?B?Mi9ZR1l2NnpvQlZHUEU5bmZhZ2ZhVDhCK1puSmZuT1BOR2lGMGFsU3BkSE4v?=
 =?utf-8?B?TVBPSDBIZGp0S3FuUTN2UXZFMXNUWFZhMElFV2Vja2hCQ0czTEZvS1VPelNK?=
 =?utf-8?B?MWtNbFZ3YUVyajRoM01wR3NNNUxIelpVR29FUlZlK3BLcjBYL0J6QUtsUFZ1?=
 =?utf-8?B?WUk4V1hMRUNYTG42S0lrUnBsUTdIcGYvdjVaVWx3disvMU9seGhVdlBYS0tV?=
 =?utf-8?B?dE9IaXNEc2xjZnNXMVl4Umc5dG5zd0hHNTA3eDE2VFlnMEx5Q0c1Nnc5UlYr?=
 =?utf-8?B?dWU3RDFCUTcxcytxWWxNd0wrVkhoSDA1Y0JvZ08xNldEWjJSSEFoNG14K1FQ?=
 =?utf-8?B?UnZlWnAybmZRclFySTFVdmo0QVYxOFV1dTNJRmhNZ2NoSEFiOVd3UUFSVGpP?=
 =?utf-8?B?SGNUYzIwQVlGM1N3UHVDY0orK3pIeVREbWdCL21tQ1R4dGdmM2hlb1lsRXFX?=
 =?utf-8?B?SjcxNjR4UEJXUjczc0M3ekUzaEZDU0doeWkvVlFIaUlIQ2RCbGgxeVRSaWt3?=
 =?utf-8?B?V0xYU3puS3MvMW8xVFU0cHpRS0txV0ZPUmdFeHF6aDNIOU5ERGdiU0YwQlZH?=
 =?utf-8?B?WkFOTEhZM2hmc2JDN0FDV2NRYmUvYk42R0ozZGwyeTZRZmN0dkF1SlBidFZI?=
 =?utf-8?B?YVJ4ZEFTcWpYTG5PNXFDN3VlaTFPa25DRjNiaFJwQkIvNnBieXlkc2VXYXh0?=
 =?utf-8?B?TjRpZXVmNFJYSHFCZi9wSHV5bVJ6UUNYdFl0ZzRYVWhFZkV0Q0szWUNYbWJp?=
 =?utf-8?B?VXd0STdMYk1jWGd2NUZIMFBnRnhaNnYvckV5UFowQmxYc0RoZ05vR3dyMWxF?=
 =?utf-8?B?ZzFIUnFZTkhRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VjBTUUZPTnBnY3UvUVlUVTMvZnd0VXV5ZG9yNjdQWkw1N3ptMytWTFBXa3du?=
 =?utf-8?B?eFJCcGM5ZnB0Z3pPNXpJbnFaVCsyaGFIeDZBSzdZMmRRT3dhN2drUkJSVkxH?=
 =?utf-8?B?cWl6elYwcXBvYk1JcDhSZDdIWjBVeWlDNFpFcGJncDFDK1ZpeXJ3eHRqQ2h5?=
 =?utf-8?B?ZHEvbGFud3hXZmhMRDBFd3dCR1FjdzBXYXdueXdLUERaejB0NDBpYnBlMjNB?=
 =?utf-8?B?RXg2SkhoU2xvanFvejgyUmJlOWZPWHFIbVVJcEpIV3R0eGhTaThjbDNNTHR6?=
 =?utf-8?B?NmRqSU5hWG13Q2d0MUJ4ZHVnVFZQQ2RWc0swSWNRUmVpWUkrRXJicFcvVlZV?=
 =?utf-8?B?d3d2MW94bXJBQWVUUS9PZlc0bXZwZGtZeEtrOStLV2g0TXJCdG0wODJibWFk?=
 =?utf-8?B?Vlg1ZDVKWWo3UmwxbUlGY2xCMHg0cUR5V3hpRVZZQTdEdDBIUERXWGhOcFh2?=
 =?utf-8?B?YWxGY3lORWZjM3FyUXdraWIwWkorRmcrcFRWSlI3M3Bha0lHVjFkcG5WYzVM?=
 =?utf-8?B?K01IOHJxOFNOVmUwbkFXMmpsT29neU00cFUrbUZVYVh3VkhndnlSRVlOZkxi?=
 =?utf-8?B?Y0lPMGsxV3JZNGdUamRVd2Z4WWZOQ05TdGt3dzlON2ZYNzBVZHJZaHZxZzNj?=
 =?utf-8?B?L0h2NmNacGlLcmdIdkZ1am9hTHNwNHNXR0dwckdFaDlYRmVpRnRWL0xNUzlr?=
 =?utf-8?B?ejdYWUtjckFwL2pBL1cxaThyL0JYbTZjaG04RE9GOUdMa1BFUEdOWjdFMDNR?=
 =?utf-8?B?djBIMndKaGxDQU9YRTJBcE5QOUFwK1hUUW83b3RaTTN6bjlDSVJjMUFPNCs1?=
 =?utf-8?B?dnVaZ1lyZ1RMNFVOVzVaSm5MR2dqU2htY3NJZnFFcFdWRW9HWllNS3JJUnhx?=
 =?utf-8?B?ZEkzazZFd3FMemhqZ1NsREZYWUY3Z3NSRFJoOWNGUWhnK05Zd293S3BpbGMw?=
 =?utf-8?B?U3BuUTZaOUZIaVFISHhjMG5yVTRHVUhXVTkvRXdYbWV0cThHTmh0bnVaZUZa?=
 =?utf-8?B?bXpKWlZLUjNXQmtDUGt1QVExa0NWMHBPd1F2a1l1THU1dnVlZ1pLbWRtTlAx?=
 =?utf-8?B?Q0F2Q2dZVHNzbEQwOGtvYStwem1TMlpsVS9MSDJlbXQ2RENkS0dRTkNqcDg3?=
 =?utf-8?B?dlZySnBEa29FVDJ2dDJIUFRsYUFvci9GODhSL0N6dzFSTTgzTXZFdXlIcU52?=
 =?utf-8?B?TmU5NktCWmN4RWZsU1QxbWlITzBpZHNFSGtLWkVoTC8zQXIycFN5aXYzVWdx?=
 =?utf-8?B?NEVTTmtMR05jNEtmUkprZVpqdzJmdjBrMUNIaTFIY1k2NTZDSGRMTVlCOXA2?=
 =?utf-8?B?VE5sSDd1SW02OVM5bS9VUUt2RUNRY1NrcVFzVEhLajk2bWhmVjIwZVFndHlZ?=
 =?utf-8?B?WEVRblp6YWdoZU5ZZmVwcmtzMXAyTVRWNS84YTZoRU1JN0cvUy9FaTJKbHVW?=
 =?utf-8?B?Tm5lRmMzZ2hKbDQxZzBSQi9LWXNsWmg0ZFZBUC9DbDhubnBSRFNFZHRMWDE2?=
 =?utf-8?B?dFhNT0dKK1QzNUJJSmZqNXJRaUtwTVIzRi82ejVRQ2ZLZjhZakpueXZhTERY?=
 =?utf-8?B?U25mNHlQTmpDTVFNL2JVWnRRVDF0NXdzWFBUMVk0aDV3dkV5R1NwR1haS0Fn?=
 =?utf-8?B?bkR4anpkZHpmdVIzSzlpaHRiTE9OOUFla0NoYTdSRVArNTROZ1M3Nk9YR0pR?=
 =?utf-8?B?UFplVytIRml6cjBZUDVFRnVJYUNBZWxCMlB3aUIydnlNU2wxMEJWT0dTOXRz?=
 =?utf-8?B?L0NrVzI2cFZJZ0VWekdUWlFIUlBPMzdkSGVlcHZGSnJsYTlOeFI2clp2emhG?=
 =?utf-8?B?NU1LMVczQlphL3htaWhveWlJNFdPV2ZwTlVUaUJKTTJoQ25KMUhXVEsrSXow?=
 =?utf-8?B?c0NhMEFRMmY3REp3NWZTcGdqMGE5cGZOcE11SVRyYkZJbkM3WWoyU0RCZGFU?=
 =?utf-8?B?RUQ2WkpyUm9uNUtWNW9LdXhNTjMrYnJoRHpvNzRzSlJudjBuZ1JRdjdjN2ky?=
 =?utf-8?B?b2FqTldXUjJjYVhISU56Qk5Jd3lrblRVUmVVZ2F5T1RXdjlYM1YySUtCUXJ6?=
 =?utf-8?B?N3JTblhEU0FZQ0NIWWUvV2p0cTNtWjB6YkRpNkIveDJrSi9WazFKT2lPOXhU?=
 =?utf-8?Q?yJJvgbVM7k4FwbEmP9/Tw/9R5?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b058eb3-09ec-47f6-3566-08dde6c1ee2a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2025 06:04:35.4888 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N4ilppLoyFYnAu/S0roA+Ig+amD9rAB5a/uOd0cquXub+R6udZkO2wUDUd0tBdDoEJQN8TNox55/vqYBVR8Qng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4794
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756447488; x=1787983488;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kuNNmKrPtXinskfGP6nncIgsq/nW9a4/gPnJ7vy90bQ=;
 b=QqsFquEltdkUvdxUeZj1UnC8Go9WUrnrQcBBQ49kyyTjK6APrW5oZoDZ
 +vmRn3O701C3OhlRrKNSOmx7S2mrbW9TactFSQpR5ifPoWpEw4xPkPPeB
 tvOzS2/YkE6dpWEj9BKLmUlw7GoIZHgvkXerCS5p9oac05dAGwtkJv20T
 irHpDWM6tIK+kFtYOFHZf/S/UPoxmqi2USauVHuR1lWUdA3XdeBThBWUx
 vV17NmVyda6htsenhPIKCQLv8k53bQ3oL88Pb/oOBbesiDFGxUMhZ01R5
 1L76ySYy8/zkrIaAGOJDXxURg0uIQk/DIhPQq2FOHRCbdqHZScYh8ARTC
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QqsFquEl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: fix NULL access of
 tx->in_use in ice_ll_ts_intr
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMDcgQXVndXN0IDIwMjUgMjM6MDUNCj4gVG86IEtpdHN6ZWwsIFByemVteXNs
YXcgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBJbnRlbCBXaXJlZCBMQU4gPGludGVs
LXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnPjsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZw0KPiBD
YzogS2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6
IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV0IDIvMl0gaWNlOiBmaXggTlVMTCBhY2Nl
c3Mgb2YgdHgtPmluX3VzZSBpbiBpY2VfbGxfdHNfaW50cg0KPg0KPiBSZWNlbnQgdmVyc2lvbnMg
b2YgdGhlIEU4MTAgZmlybXdhcmUgaGF2ZSBzdXBwb3J0IGZvciBhbiBleHRyYSBpbnRlcnJ1cHQg
dG8gaGFuZGxlIHJlcG9ydCBvZiB0aGUgImxvdyBsYXRlbmN5IiBUeCB0aW1lc3RhbXBzIGNvbWlu
ZyBmcm9tIHRoZSBzcGVjaWFsaXplZCBsb3cgbGF0ZW5jeSBmaXJtd2FyZSBpbnRlcmZhY2UuIElu
c3RlYWQgb2YgcG9sbGluZyB0aGUgcmVnaXN0ZXJzLCBzb2Z0d2FyZSBjYW4gd2FpdCB1bnRpbCB0
aGUgbG93IGxhdGVuY3kgaW50ZXJydXB0IGlzIGZpcmVkLg0KPg0KPiBUaGlzIGxvZ2ljIG1ha2Vz
IHVzZSBvZiB0aGUgVHggdGltZXN0YW1wIHRyYWNraW5nIHN0cnVjdHVyZSwgaWNlX3B0cF90eCwg
YXMgaXQgdXNlcyB0aGUgc2FtZSAicmVhZHkiIGJpdG1hcCB0byB0cmFjayB3aGljaCBUeCB0aW1l
c3RhbXBzLg0KPg0KPiBVbmZvcnR1bmF0ZWx5LCB0aGUgaWNlX2xsX3RzX2ludHIoKSBmdW5jdGlv
biBkb2VzIG5vdCBjaGVjayBpZiB0aGUgdHJhY2tlciBpcyBpbml0aWFsaXplZCBiZWZvcmUgaXRz
IGZpcnN0IGFjY2Vzcy4gVGhpcyByZXN1bHRzIGluIE5VTEwgZGVyZWZlcmVuY2Ugb3IgdXNlLWFm
dGVyLWZyZWUgYnVncyBzaW1pbGFyIHRvIHRoZSBpc3N1ZXMgZml4ZWQgaW4gdGhlDQo+IGljZV9w
dHBfdHNfaXJxKCkgZnVuY3Rpb24uDQo+DQo+IEZpeCB0aGlzIGJ5IG9ubHkgY2hlY2tpbmcgdGhl
IGluX3VzZSBiaXRtYXAgKGFuZCBvdGhlciBmaWVsZHMpIGlmIHRoZSB0cmFja2VyIGlzIG1hcmtl
ZCBhcyBpbml0aWFsaXplZC4gVGhlIHJlc2V0IGZsb3cgd2lsbCBjbGVhciB0aGUgaW5pdCBmaWVs
ZCB1bmRlciBsb2NrIGJlZm9yZSBpdCB0ZWFycyB0aGUgdHJhY2tlciBkb3duLCB0aHVzIHByZXZl
bnRpbmcgYW55IHVzZS1hZnRlci1mcmVlIG9yIE5VTEwgYWNjZXNzLg0KPg0KPiBGaXhlczogODJl
NzFiMjI2ZTBlICgiaWNlOiBFbmFibGUgU1cgaW50ZXJydXB0IGZyb20gRlcgZm9yIExMIFRTIikN
Cj4gU2lnbmVkLW9mZi1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+
DQo+IC0tLQ0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYyB8IDEy
ICsrKysrKystLS0tLQ0KPiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA1IGRlbGV0
aW9ucygtKQ0KPg0KDQpUZXN0ZWQtYnk6IFJpbml0aGEgUyA8c3gucmluaXRoYUBpbnRlbC5jb20+
IChBIENvbnRpbmdlbnQgd29ya2VyIGF0IEludGVsKQ0K
