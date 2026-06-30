Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Bzm9LKI7Q2q1VwoAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jun 2026 05:44:34 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E816E0227
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jun 2026 05:44:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=r5oPIZLq;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A7D2608C2;
	Tue, 30 Jun 2026 03:44:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TFrkf3t_FXe2; Tue, 30 Jun 2026 03:44:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03A57608D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782791072;
	bh=wk/HdwV7XLjnYwYfAzi35SWsecUob7hElr0UYoi8W6I=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=r5oPIZLqptEUWDYr+ZstSePgkWET0z0dHBCKO+U6rrbfHECVkO22dTh6yOdQWx4NJ
	 tFEmhzAM8Xmcd2O8dF8HSWkkkGL/OXu6EUli20seqATdzDSmvTahC7TUjInkdCn/BH
	 0asjnzQdhlRwJFrbNI/kLJIFe8kGzjsubQp8M/iHOhs7kr4XkqPjuL915txNH5g4B0
	 W2RBKAOPya53ofAz7XjizpiOyDyf/GnD+QdIngli/Vor+hYxblCVn6cI/PgBQb3PQc
	 fixe4nVhWrSVh2T09/WnMs57TYFfYGjyMK80AQ1gNNYPpFC5th6IOmnQgr+1EvNW+g
	 Vgg+Qyyed/agg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03A57608D0;
	Tue, 30 Jun 2026 03:44:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C189C1338
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 03:44:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BEB09608C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 03:44:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R93CwKozes-T for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jun 2026 03:44:29 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C7715608BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C7715608BB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C7715608BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 03:44:27 +0000 (UTC)
X-CSE-ConnectionGUID: 5w2+nN3tShihX1JGA2GXRw==
X-CSE-MsgGUID: +lD8s+DMSY2u+P66MjFeVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="71019702"
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="71019702"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2026 20:44:27 -0700
X-CSE-ConnectionGUID: pbNs4EW8RKCvhBc4Y7P1Jw==
X-CSE-MsgGUID: ELA7+t/wTvSZfZ0CF1HcHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="249503568"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2026 20:44:27 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 29 Jun 2026 20:44:26 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 29 Jun 2026 20:44:26 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.71) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 29 Jun 2026 20:44:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zAlYmmjXbonwTphayH4PW4ADPHeQJyjmjSAwXYCxJyXaEZB6fHRakNJcUdPZY3JVwZGcosTwzez4oC7H3Byht/lP7SoJh1E4dlXExu4EUap4UNRX8JvUKUUYD20MaRkPGv/qHGGTo8w6HRmVYMyj86Si0+NbDXaUh1tdzjP1qRmlhP3/qxVprUSm4MB2DMjvnmL25jvVOpekKc54sjd+CiHZ0xsKekfRwt3lIJHpw8nWDqUJAhGSKZWeWrU8LsVTHwlFt9+oFHwx2Z0mLzQYTo8DIecYszsQODe+XwRzcfiMWaeDIABOo+WFvtcjoPOeZxfAAY24ldf9ucef/PUuow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wk/HdwV7XLjnYwYfAzi35SWsecUob7hElr0UYoi8W6I=;
 b=RD6GYQMYq6XGWtlm3iQ66hOoH4PUDszFNKxEHSZXbaroJuRfYG/AeTgDYXsmR6eXKut/pp3SRZYJKjFK6TvHoWgYzzYTaaQb00Zwl7fUiMkH0l4VSpDK5eDKXwz8yDzsQ0ONOnJrDB4w9vGt/d54V3WBy/CmRa3qPJEuLfr+eHpHPb9SDHF6bIav5WjI6/LywgSnN6A/GcWAlWVb7IJDC7CtojSJ8yAT78Wo1I6PKYI+MTRTTK2o/f9SDzsXMAIUonvjO4HUXw1V5uICjC7KGUfWyQrhe20mXOgDoLEOCarwT+46Wwb4XQk6GoggzGUZehioOWftltPOVPi5JRJhig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8496.namprd11.prod.outlook.com (2603:10b6:610:1ba::22)
 by SA3PR11MB7626.namprd11.prod.outlook.com (2603:10b6:806:307::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.17; Tue, 30 Jun
 2026 03:44:15 +0000
Received: from CH3PR11MB8496.namprd11.prod.outlook.com
 ([fe80::5627:e3a5:cb26:b555]) by CH3PR11MB8496.namprd11.prod.outlook.com
 ([fe80::5627:e3a5:cb26:b555%4]) with mapi id 15.21.0159.018; Tue, 30 Jun 2026
 03:44:15 +0000
Message-ID: <263433ed-bd6d-4adc-9c8d-5ab77312993d@intel.com>
Date: Tue, 30 Jun 2026 05:43:49 +0200
User-Agent: Mozilla Thunderbird
To: Rongguang Wei <clementwei90@163.com>, <intel-wired-lan@lists.osuosl.org>
CC: <anthony.l.nguyen@intel.com>, <andrew+netdev@lunn.ch>,
 <netdev@vger.kernel.org>, Rongguang Wei <weirongguang@kylinos.cn>
References: <20260630032537.42605-1-clementwei90@163.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260630032537.42605-1-clementwei90@163.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0096.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bb::19) To LV3PR11MB8508.namprd11.prod.outlook.com
 (2603:10b6:408:1b4::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8496:EE_|SA3PR11MB7626:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c422489-9689-49a7-b660-08ded659d0e7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|23010399003|22082099003|18002099003|5023799004|56012099006|11063799006|6133799003;
X-Microsoft-Antispam-Message-Info: KX4s6RmbutdbbMVLYm8Qc9NOFUKcYnY5KbvDHk61IWcfdCLzNDKKzBA2de+6vrgJsV8nL55U+xnCzBbP/8aWxMgu4iRU/xh2XRyzquzfkvtvJRNGecWdKt29T7CGgu/aZ7epDBzpkn3E5FFd1ZA3jAH0HhInPbbSRHg0VJPwCz5wEgyfxZ0i3u8IdNZs+3NBhBcn5AyT0MFWdLz960N8j61t2j4uUpLUpq63MY47yyWnlkOx59Q1BNaC7v/d3V2/jLu2t18W8FRIpj4KJDB+7QfF2pqq+HEJUAGBXSsrvrHyFmvSqMVf63LKPj/GUz5OWyDgqXSdOfXMOnvieUcLZUUDFxWqWGD55SmufQAkfcK6Z4+4HR6DIldh3AOP9hHZ5H+zI01Ch/oxLpuufkEmFRUCC+bkY5Ni+tIOVwgqj8lYI1d6JIPHBhDIiPq3D4gvuN50mzMZsiOLk76ys6ciZZixbtHAkQdT7PWNKXuZOfeMBrFKbWKIskhJuuclWPBzsE5Aci6qfnj7ldH2Ei9dJXQbiA9AmG7ks5cnacmchlfFe7uxk5v41I4hxsLydvHrsDv/thAjy7JM6Zs/yc5k7X5GCCAv04xG5ELkVNyJ6cZkWedZOI2qmEBICNYyt3YKwsEnjPlfjzu+h7c6bmzyPkDrCknJYiDPZOF2yhGnXEI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8496.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(23010399003)(22082099003)(18002099003)(5023799004)(56012099006)(11063799006)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QmxKU0RvcFJ5eVFLbG03VUx5SmFyZFdNUGcvbmdyd2VpVkorY2NBbHBnT2Rr?=
 =?utf-8?B?bm5abmUvZVN0QjJldG9jMUhLbWdMaGdKMmlQeHh6b3M0R0Fpd3N6MGhJZkJX?=
 =?utf-8?B?dW9LTUlZOERoKzhHMFBqY3Y4eWlEMThVNGNuSnNjTGVQMFI1cm9PYWlrcWM0?=
 =?utf-8?B?aU5PZGZNMjRBWVVldnIzemJsdS9lRjd5MzNWZmI4Y1NzY3lVMWE5VGV6OGJr?=
 =?utf-8?B?M1lGYjA0UEQzc1lacGh0bitVYmtVSk9BVzFFMGJmOEgyWjR2ZjRtVFp3SGM2?=
 =?utf-8?B?MjR1ZE5Ockc3dVhtZW12Z2twUFdoYlQwb1JzUGlQM05UWGNicElzaEw0NWtB?=
 =?utf-8?B?WElhZ0RPbTU0ZnFqbXFZZWprdGVNOW4vcDBhenlNSXlKcWprMXZVbHBWT2xY?=
 =?utf-8?B?WEtCalUzUytZTFVjb3NuLzBia1QwV2FjMkZKdWZJQ2I5dlFFLytvczg4bmxx?=
 =?utf-8?B?Yy82V3NzbFY5UDRZd2RkTktjOW5oS3ltS3JRUjRlbUllS0JxVEdjTUVoem9v?=
 =?utf-8?B?SUlRMlpWL1hjQkgrTDBFUWF0NDM5STZzWkJRYnUxeXNmM2N5ZDVjcU02cjQy?=
 =?utf-8?B?Tk1ZOHYzeUNNdENjbEkwQTNzblNTOUtPUSt6NDBCYUxHWXVpMTRudDRsNjJL?=
 =?utf-8?B?YXFiSFFXRDZkQ1pteEptZEFtRURkVUhXaTZwZzJHNy9LMExPTUJYMUhCanZj?=
 =?utf-8?B?WDlLOUxvYUhZYUY5ZGk2VHNEWWZkU0syZFh5ME9yeVd6RHgwUWF2ZUErU2NT?=
 =?utf-8?B?TE5MeDd3MU9lN1NyRzFjUTR6NlROTi9rbHZ0Y3h5aFpIQ1M5OXVDOHloWFRQ?=
 =?utf-8?B?aEU4ak5vNDlNaGtmRS8xMjJETWlTNzlpM2dUUGdKUnFxbGZSc0V2WEpPL2Ex?=
 =?utf-8?B?TEdNdldyM3psenNZK2RXMmp3Z3ZnNVA3N0JZUUhZMTIyT1BkaXNZajVjT1dr?=
 =?utf-8?B?QzlCSUV3S3UycUN1OVZiRDRFeUc1aEdsUkxSdWU1a1VhWXByakhoVzZFbE9B?=
 =?utf-8?B?SFBuN3VZRzJwUHRQcG90SHpvSUpJM0JVM1pDNWNNRDNnemY5RTRZOXk1QjFl?=
 =?utf-8?B?UTRiV3NPcXV4bEg1cXlSOWtWUkVXQXhFVGVCZnJUU2FsRmYzMENXRmQvZ1hI?=
 =?utf-8?B?VDAwWUJkRk0vcnEydVdwaGtTSlFvY3oxNlNjUmNkbGdQc3AxVi9NSHgrTmlm?=
 =?utf-8?B?bENRZWdSZENwMFdLMXQrTnA3MU9acER0MnVDdkFxMngzbDljbExRaUhlNGZi?=
 =?utf-8?B?L1BQNUxKTDBVU3dMZ1RnMjlNeElVaklTc3R3KzBQUkM5ZUVwOHhIQ1FSTnNs?=
 =?utf-8?B?dFRyOGJUd3dydWhsSlVhbXdQQU5Jb1Z5RHhubEtwUFJWckRndmVuU0hieTh5?=
 =?utf-8?B?NHNDZFlwR1l5c09KTm9KOTRHanI0eHluR1pNcDNUQlpvWFUyeFQrUUE2eUhL?=
 =?utf-8?B?M1ZHNTV3MDFURVhhcUUrTFBxeDl2cmt1TVgrbElEaC9OTkRkM0hPRmoyQUZW?=
 =?utf-8?B?dDJUUXhrdDZYaW11MGNnQXB1TjE2Q3hITkV5Z3JHcGlCTlk5TjBGenhHaDdD?=
 =?utf-8?B?QlFNd3FSL3VvWWFnNUpSQVAvMEVlNXBGbUlXVjhFb3J4bDc0MzllVE95a2tv?=
 =?utf-8?B?NnR4YlowckoxNVM0ZytFS1hDRGZxUDlMRHFCR3lFT2FMY0pqOWRrdFdIYk9z?=
 =?utf-8?B?WCtYTmhDSW5QblFsRDN5cGRJaWM3Y1JuS2pHdE4yV010VFdndzgvUG9hNDEr?=
 =?utf-8?B?bnRma0x6NGpBUTk4d1VtM2FkZ0RoOEdjQTF6OHdDSEpMSEdValp4ekZoQ04r?=
 =?utf-8?B?ZEUyd2hxWGtJUkt2NzB0ZURaN0RaMUtyUjI1cnNTNEt2L1duQ2JHYjkvenlF?=
 =?utf-8?B?d1JVUmRROWd0WDZFWWExbjQyNjhVcDVwSVMvOHZrcEtVWitkQTZLRUlHazU1?=
 =?utf-8?B?VlZsNmNhdUtZZzBKbk1ZZDNtOFdwVUhKbmRrUUUwNDJ1V3o0a0FjZWxCQVFl?=
 =?utf-8?B?TVA2c0ZHc3BCU0pSSXBOL3VlZmtjZy9TRUcxUThsaXBoQWd5eGduc1RYZTFV?=
 =?utf-8?B?eTduZ1VpaHhDZjBlUis4TG55Vm5pdFpuYVhteGpFWDgxYVNZcWhCdHdEdmxN?=
 =?utf-8?B?NnhwNjYycGduT1VyRUVlSjFKM04wSGtZQzFQaHZCSmFYRU1WWXR1b2NwNmxT?=
 =?utf-8?B?QTIvTjdjaWQrMjRBR3doVStOc2pBcWVQdFpnSUJCRkFmSWJPOGYycW9pRVEv?=
 =?utf-8?B?MG5teWRraUJwYWljT21WZlUvS2d2NTZpYlVrd0swaGg0VTFhajZ1eUxMRHFi?=
 =?utf-8?B?R21oOFJIajdHelpHRmlZREFmRk9UUGhzK1RpT0FOaS85eVVzdERsVGdCUEVO?=
 =?utf-8?Q?fGrvXReUamrol0E4=3D?=
X-Exchange-RoutingPolicyChecked: aZtZY+xmZbwwteNhXFQfo5ZcsHvdCA2VAeSC7FbJCGcz9wWZwlC/RqCwbjZJwNQ27Lvi1WicDGrbBYf1ziD1/s41dSGr+LFzTzleq6Pz0xgfsZXJPxSwir7jDL3Hn14wDkn317Pi7GHp5Binwfb2aBwDoqoJBA2C5gRdBFFPHjNtF1+OXLFxkMAfqv7BE0u+I/T5vEyKChaU6171qLYxrvnK+vZDi/Muh7BgvaJpegXbh7yLSSl0mKktzDd7pC1wUNq4j4JEAdsLp6jkUS21zBJyeG4WKh+CZsWgGKHntlqWMz71ONuAHeswlVRTnOhjpb5UfxyoIcRSitLUDNSSPg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c422489-9689-49a7-b660-08ded659d0e7
X-MS-Exchange-CrossTenant-AuthSource: LV3PR11MB8508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2026 03:44:15.6219 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nAC7npIAqCtap1PKzuwBny8x1adaPkJYs+kUXYqW2i0WP4VW8aFrB7HPulY2EZHAS8e/fXozOHN5+Sf02fvMq2fFKqldl8uRfz3djbljFpQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7626
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782791069; x=1814327069;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YIx4erVzuVBi3DpLICYRmyqx6YAtIGBrgyXQ7beGI48=;
 b=MjPS8uu+LWUXddPnrnj+qylq5fIcqwA/vuJipi2Duxgwq0s+yFgbrbJX
 5/ux5Fb/7u+Y+K8OvfwAvhX5tBgQa01F6eC4RcFGV8fMVU90/vUKulgdG
 ZUEdRN9wrhchfnQIABGsKuuS+gNpu+GKrgG0y2qi9up2ECILNqy70Ehmk
 yL2OnxOUZQbV81z5Tk8fGaFfvVErPjmwHzBEWtyWzQdsEvyF+AjQKUSHO
 EbjAxahpTDlk5BTNBVytX+jZAciPzLQU34D76eSJE5Bc1cpaT939THtOA
 3m11/VviXmyWTXsK8IN6Ri6zdFDHZJI8JJAf96nvJoPxdh/BfFWshnR/R
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MjPS8uu+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] ice: use dev_err_probe in
 all appropriate places in ice_probe()
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:clementwei90@163.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:weirongguang@kylinos.cn,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[163.com,lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:from_mime,osuosl.org:dkim,osuosl.org:from_smtp,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 03E816E0227

On 6/30/26 05:25, Rongguang Wei wrote:
> From: Rongguang Wei <weirongguang@kylinos.cn>
> 
> Use dev_err_probe() can conveniently combines printing

s/combines/combine/
you could also wrap at 75 chars, to have better formatting.

> an error message with returning the errno and also
> simplify the code.
> 
> Signed-off-by: Rongguang Wei <weirongguang@kylinos.cn>

thank you,
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

> ---
>   drivers/net/ethernet/intel/ice/ice_main.c | 24 ++++++++---------------
>   1 file changed, 8 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index e2fbe111f849..81959eaec708 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5167,10 +5167,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>   	struct ice_hw *hw;
>   	int err;
>   
> -	if (pdev->is_virtfn) {
> -		dev_err(dev, "can't probe a virtual function\n");
> -		return -EINVAL;
> -	}
> +	if (pdev->is_virtfn)
> +		return dev_err_probe(dev, -EINVAL, "can't probe a virtual function\n");
>   
>   	/* when under a kdump kernel initiate a reset before enabling the
>   	 * device in order to clear out any pending DMA transactions. These
> @@ -5194,10 +5192,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>   		return err;
>   
>   	err = pcim_iomap_regions(pdev, BIT(ICE_BAR0), dev_driver_string(dev));
> -	if (err) {
> -		dev_err(dev, "BAR0 I/O map error %d\n", err);
> -		return err;
> -	}
> +	if (err)
> +		return dev_err_probe(dev, err, "BAR0 I/O map error %d\n", err);
>   
>   	pf = ice_allocate_pf(dev);
>   	if (!pf)
> @@ -5208,10 +5204,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>   
>   	/* set up for high or low DMA */
>   	err = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
> -	if (err) {
> -		dev_err(dev, "DMA configuration failed: 0x%x\n", err);
> -		return err;
> -	}
> +	if (err)
> +		return dev_err_probe(dev, err, "DMA configuration failed: 0x%x\n", err);
>   
>   	pci_set_master(pdev);
>   	pf->pdev = pdev;
> @@ -5246,10 +5240,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>   		return ice_probe_recovery_mode(pf);
>   
>   	err = ice_init_hw(hw);
> -	if (err) {
> -		dev_err(dev, "ice_init_hw failed: %d\n", err);
> -		return err;
> -	}
> +	if (err)
> +		return dev_err_probe(dev, err, "ice_init_hw failed: %d\n", err);
>   
>   	ice_init_dev_hw(pf);
>   

