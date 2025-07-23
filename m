Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 08093B0EF61
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 12:10:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0DC1660EDA;
	Wed, 23 Jul 2025 10:10:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qeoNXxHsZTz5; Wed, 23 Jul 2025 10:10:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 58F6860D94
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753265404;
	bh=NLU2GJCbK9Xl6DlRqFutjumX8DEN8SaumAfPX7Q5njo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fSG1VCWv/ace52t84d8aW/bfwoP9CvJxn7A13khTj82EzcWHhR0sxJRNOfSjSh+7j
	 WtrKehMHZ8RMnQorru7HKqMrP982g5pequ9RyU/QU8fl/svK/ZICrey5tm9KLg95NU
	 H2P9yapRcERUvjGXJMTQNdHTwy1/HNN5G0JuG2EVMsUEnaSfCAdyglup3q9TQYDOhd
	 WByPFvLT7j0qty7wrgHM+tV8plEaHJyoSNb+/Qjpma1BXNxPf0uav5jzLPWKTaOjiA
	 geQmbYrvidiiMKPOePNaDUeeCQ3XflMz9R+VHt9PRXoaWxMUacE2IJm4aFmqgUW62I
	 2xRLGI4ta5qvQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58F6860D94;
	Wed, 23 Jul 2025 10:10:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 19780CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 10:10:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 16B3860ECA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 10:10:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tRPfUmxLq6lk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 10:10:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 731B460D94
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 731B460D94
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 731B460D94
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 10:10:02 +0000 (UTC)
X-CSE-ConnectionGUID: ISlLXwyWS+OBPwDR6g5XpQ==
X-CSE-MsgGUID: oPV4HSimTGiKJSNRCcOe1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="55642742"
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="55642742"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 03:10:02 -0700
X-CSE-ConnectionGUID: 3NL1xc/+RzaDfxuzJWqDNw==
X-CSE-MsgGUID: ohIN0/2GThqwEGXqx1Te8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="163644774"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 03:10:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 03:10:01 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 23 Jul 2025 03:10:01 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.86)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 23 Jul 2025 03:10:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ifzvm83024xrTztSA5Yl9nwDCt569yccXCNEZvAneAn+2y3+/xuHWc49mOq8bV8bmCFj6lQ6/0DXNPC3re7tAFZScBgw8nV0tcYB+3u0xG82++OlfxgqK7h/QichdmK6x23TCbw3jy4EuXgFhxradkNXpB6NxNLUpA3zdVyMxTz8J9C9MhFtAIxvfCMekKB2zz0LpmNd0/JKKlKFciXSsTUJmqgkP5DC0wxAG9cfRkoRmntUQcKyAv5x+mYOM9C3cqTYx6e4ZzSU/SLP5dx6OtE4dKtjj50rL/xcGzH2FGDqUcttjVGCM331S4NJ5Gx9aqAKPj/O6kZhn2eES1rWeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NLU2GJCbK9Xl6DlRqFutjumX8DEN8SaumAfPX7Q5njo=;
 b=jbkqxc4oT8KavujoZA/S7UY1W1LiFbqknYDRxB92Tu7lg1AA4w8OnDRft/kCmt6KkkxHk+J+b/CAB1/lxacoPIvdMAEs+7xdI9g9CSdtubjM3srgzFwFyo5If5IIwryPyyQ7WvflBftW5YK3XEAfOqyOw0y2AvX5W9Q8XWrxQVr7XTI78JvXBl+ZAU9wCVjk6jvBOBDR9JW8fTjeFjZgz838ZAfQUoj0wqpq0KzTcqsbn3ccPGpwHpPQkxXxkmd5tklXVHnv6aHejcLfFzv8gm/3kNOkm3Ajz/bPFvo652XE6i/j16gI9/nXfMA8alMczpNVy5+77pwehNcl/MqFfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS4PPF409BB8CE8.namprd11.prod.outlook.com (2603:10b6:f:fc02::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Wed, 23 Jul
 2025 10:09:59 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.8922.037; Wed, 23 Jul 2025
 10:09:59 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Jacek Kowalski <jacek@jacekk.info>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 4/5] igc: drop unnecessary
 constant casts to u16
Thread-Index: AQHb+6+RaEYTi865Ik2eSr4SE5ybGLQ/fFvw
Date: Wed, 23 Jul 2025 10:09:58 +0000
Message-ID: <IA3PR11MB898606A4FBD9EFDB923414B1E55FA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <2f87d6e9-9eb6-4532-8a1d-c88e91aac563@jacekk.info>
 <8ae30b40-04e5-4400-92fb-86101b5c667d@jacekk.info>
In-Reply-To: <8ae30b40-04e5-4400-92fb-86101b5c667d@jacekk.info>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS4PPF409BB8CE8:EE_
x-ms-office365-filtering-correlation-id: 26a81653-3b42-48dc-bf0f-08ddc9d114ba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|921020|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?eENwSHZmM3VldUJaaXJhZVJqczIwZjBib2YzNzRzbkl4QmlucXRBYW94NlI5?=
 =?utf-8?B?YnpCNy9BVnFWZ2RZZEE1T2pteklyZi93TFR3VSsweGJUUUNoeUtMV2VNbjU3?=
 =?utf-8?B?UUllUTFkWXB1cGJoTUF4cDQxYWhuUlBHeTZqSTJZVkVIN1NId2NkdXZXbC8w?=
 =?utf-8?B?YWhnV1psMjJVNkxlU2grcENFak1qZ0RuNm0zMjV0OG45czVjRlNSRmNYcmN5?=
 =?utf-8?B?OVE0QmhtUTRPQ2RVWS9jRExScjFLQnpSQUErL21Peld0amRjc3I0SmxpY1c1?=
 =?utf-8?B?SlZjSldwM3R6dlhoYkpidW9uZ3kwbzdxQTBPaVVva1ZmdVNNZlhVSlpiMU01?=
 =?utf-8?B?WmdJZ0R5OWtyS2M2eng1b0hqaGpvbEQxV1drNmFwbWs4Y3NLVFdZTE5GWDhV?=
 =?utf-8?B?SUZ6TkdYb0o0QmFJbGM4WWFGUnpHRWEzL3h6YVNPNjNqQW9UREd3b2oxZ3dq?=
 =?utf-8?B?ajFHY2YvRmhzTkdUbEVQcktackZGOGNRdG5jUCtOK2dwQWk4UVFDb21KSE4x?=
 =?utf-8?B?NjlZMjRWSWZzclNUajd6azF4OWJBYUVEdDAwdEY5Nkk4QmthTVdPSW8xRTBY?=
 =?utf-8?B?Nzd1Z25icXdsbm52M1pXWkxqM1VhenQ2R2hJbGxGMHpucnVIdUpQTjAxeEpL?=
 =?utf-8?B?T3Z2OEoycUNmTWlrdjZjOTVoTlJEbkRkUVYvdHhYTEF2Q2pJNTY0czh0OHM0?=
 =?utf-8?B?Nkl5MktaN01DTEN6cFBwS2NTTm5CZUgzV3FScnB6UnN5Nmp3Tlo0MXFvVWFE?=
 =?utf-8?B?c0ZteDBQeHA1eWNEWExwQkVybm1WaGhiNUEwck1PWEtVaUZkbDhhb3pnNEtE?=
 =?utf-8?B?WndJRzBubXEvOFpPUncrbXpyZzNTYWMyV21zNTBLU2k0WGVBWG8ydHM0cldR?=
 =?utf-8?B?Nzd6VjVTQkxFdVE3Wis4VkFLZ1BROTZHMEJOTEdDbThxME5uUk8yMGhqK2JN?=
 =?utf-8?B?M1E3aW5hMllwMEJJNzBpWjFrZllxOENBb0ZSUGIvb2E0V3ZuMTZ5TEVOTWp3?=
 =?utf-8?B?aXdNc25VTHE1ckR1UUlZejNjZUs3TmtwNEkzNlpaMXhIUldvRHNvd0dWc3Fy?=
 =?utf-8?B?Z1JpcVVJc3FFZmNhQi96VlJwaHlTY1h1aUlPL0VxUmM4N0NxQzU3UUt2bjh4?=
 =?utf-8?B?V3gyQnlsemoyUVcwc0xibUlTbGdwTk4yZVpoN3hScjNlNFczZHN4WTd5dG50?=
 =?utf-8?B?TmdhMzJmMTM4ZmE2MXhqUHZqdTE1b2oxSW51V3VxbFdjeDRod0hHOEF0cGxx?=
 =?utf-8?B?bUk3cjFXN09JR05FcTljZW8wMWxYaTVRVVZ2UEc1Qnh6dW9TWFRBL1pVajVK?=
 =?utf-8?B?TzgzZWh3am54WE9HaHhHYmVlOWR6YTIzcW9qVjU2N3NTd0RXOUI2Q2xCMDhL?=
 =?utf-8?B?bHFLN2cyVVQvYlRiUkI5cHRPeTRzRkdFTm5rWjhjdHlxZVlNUzBWTDZ0RjBD?=
 =?utf-8?B?RUZ6MytXWmpoMzdlajF0SGZwdWs4dHNSdVJRbElRcE54UW5tQlZQYm82TmlP?=
 =?utf-8?B?d0VKeDhPenhCSmtoRDlYaVZScUZqTzZENVNkekxoZmlLeFhZeStFMi84NElT?=
 =?utf-8?B?MHU1QndDWHVyMHZHUEx2b1VTcGNZMUwwRzFvNWVPdldqRlJoZ1hHYTlaTTFx?=
 =?utf-8?B?STdPaDRuMUY4TjAxRnA4UG1RS1BTS0lINDJXVnlLZTNnY3R6MkJXQ29NS0JT?=
 =?utf-8?B?c0lIejdjMlRUTFZhampXRFRibEcwT01mdUlOREVsOUxjNU1KM0FkR3J4d29U?=
 =?utf-8?B?bVMzSWxERnN3VkVIRUtRbGFSN2FReEJnaUVUTFRsWXIzUzJZV04zdW1PQXYx?=
 =?utf-8?B?b2dDMC9MbTZYNmlrVGVmelhHWWc3M2dyR0dMdzU1M1pVc1BDbU0xeERYaFRR?=
 =?utf-8?B?LzlMbUI1NjNmQ0ExUVFUclZHSkF5YnlReTVNckEwcXM2SUc0MzZGWkxpZGVw?=
 =?utf-8?B?TC9IYVZnRUFIYTMrMFcyUG5Cb1ZtMW9mYjJQVDdxY245S200ZTNjdHBKbjhC?=
 =?utf-8?Q?WdfJcF6TWWW2N44zrQNc0nOcXeZYdY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(921020)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cnRtRjhPUEtGcFBXcS91RFk5SXJDRVpTWmlRekNDNHRFaGtzNmVDbE1vcVVt?=
 =?utf-8?B?V2NZUmFkRWFiVEJkMzFYUDhIUDhLV2NhZTZWekVMazVNQThUNHBmMEZJU29D?=
 =?utf-8?B?ZzVQVnZiMURpYlAzSDVCR3JVTGUxY0pHWXd0cTd5TkV5dVVubE5VTmN3bnJr?=
 =?utf-8?B?MlVlVHZycTljYXZNaGxKTC9rTzd6UW9wbjNZTFpGaFd1RkRTL1FJcDl1U3VV?=
 =?utf-8?B?Z0ZkK2wwdzlKM1I3WTNISnNvNTkwbW9qblJHU0JsMW9xOFVVTG13b1d0bHFO?=
 =?utf-8?B?OE5CTUY0a0RMNlMwNlFZSzlEdEVQak9wMkFZWjFjUWxtL0tjWDVZMWV4N0Fh?=
 =?utf-8?B?ZENmTFJGQ0RKV05aVFRlOUF1N2FEZmpZbHRDZjFabVRUMUxlK0N4L21oMlg2?=
 =?utf-8?B?UlNIOW80S1lpRzl5alVDbkNWd0tzUDl4SjJyTXY5eWtpZU5VQzlacWpGNURM?=
 =?utf-8?B?RFFZN1FkbjNpVHBNNjZTWjN6bnRrWEc4bm85OGpIVXpiWm95K0EyY1BqQU1O?=
 =?utf-8?B?OWVUTUVQdVdGL1hZbTVVaTVaTVljL29PQzVMQkJ5Qjc2MzVXUXNJWVAwK21Q?=
 =?utf-8?B?OHlJamRJQk1kSE95dzM1elpPUW0xWklXdytrVUJkZk04T25LWjdLSWJEZVVB?=
 =?utf-8?B?ZHg4S0lQUUg2Z3ovYjVVUXptZkpneXBIWmZ0a3hMQlNGSU5TWUM2TW5sZ05o?=
 =?utf-8?B?a09qWHg4NTlOODRhWlNsNEgxYXlJbTZWUXZhQXhsenNVM1d4UWE5Z0pnaGNZ?=
 =?utf-8?B?UzVDY1ZoVmdjREpjVG9YSitGa1RYdFZVVStVSDU5Qk1NaUJ2QjRBTlprdUc1?=
 =?utf-8?B?M2kzQ2dEMVNFbDRmbGlGdS9ia3k5dEF1RXhhOGxMZlFTQU5lYW9rWGRPZm5i?=
 =?utf-8?B?Ump6ZEEweU5sdVRWTmFNaEw2eTc3b3dQdU1QbWJzejJrVmp1QjVIWVUvMitT?=
 =?utf-8?B?SzBDeVVoSUMwZnMzY1IzRG8zaVU3N2xvTkNCQjF4S2RKZEwrNWViZnBmZHJp?=
 =?utf-8?B?WnBkb1pqWGYvUkorNDdVNitoWExVd1NBOFBKTE83aEtJSnM5STFqR2lYTEdk?=
 =?utf-8?B?ZFQ3cE9kYi95eFNrcFZCeGhHSDcvMEVlVWlCa2xNWFUxdE1kSWlRWmVMZzM5?=
 =?utf-8?B?Qk5OMFJIclpqQXFzWTRSa3lSVGZ2eUNMZUhGZGpHdzR5R0V3Q21aVFZMdy9T?=
 =?utf-8?B?ckI1K1NQRUsyNnBqNmdraHlTVkVXSTVueElKZGxtL1h6NUpEbUordG1XREFm?=
 =?utf-8?B?NXI4aXUyaFRkUmZkZlM3MFE2MnBkazJQc1MvR0lNL2YxY05rY1EvWVNzMGl5?=
 =?utf-8?B?T1BxQTFhck0zMU9HTnBnUnBQdXkwZmJRbmM2UStvUDF5SE9Td1ZSck5ieEt4?=
 =?utf-8?B?UnhGRzRKUmtZRHpsUWk0U1BCelE3ZzZWc0NLeWJzcFdhdk1DdXBXc1ZMNiti?=
 =?utf-8?B?SWF3VHJublRpaDdBNXc3L3l6VzFzZCtXUW9wb2pkUzMxRGNqUXZwVGU5RUtL?=
 =?utf-8?B?R1VxYzFZRXFCQU16dGxaN3I5ZjJTdG9nNVNFNmsremtvTERBbFVhSEJXQVZm?=
 =?utf-8?B?M3Q4ZGNGMHB3S01HWVU1KzZ0T2laNERvc3ZmMEJFZHd4Tk1ySUMzUDRaU0d6?=
 =?utf-8?B?SXh4NlJLK2xGMGFpblg3MlhDQVNWbkdEdmxDcXlOeGJpZmZvV0dOZUVCL3JE?=
 =?utf-8?B?MnpPV0YzOVhQMVBMUnBuRFpsRjVrWjRERHdnVHJaVEVFaTRVVGFvM0VGSHpj?=
 =?utf-8?B?WFlhaHRwOTRrZ0l6b0gvbWRxWDVWSlY5eFMxUkZxNVlJWk9jSDdMejAwTDJ2?=
 =?utf-8?B?TEFXcnU5SWY1YkNGa0tQQ1JkYkVBOExic0VQK0tYR1dvMnc3bzNPSzMzRHBX?=
 =?utf-8?B?SkIyMUhIVXhpOURwNzYrWjFCa3Nnd1JINGtMdlhWK0NFa1NBMnlWNTJIeXky?=
 =?utf-8?B?b2ZlNkJzWE52eWRWa0M2M2RkT0h4TnZlQlJrWEF0TWxvVDZ6Q0FNajA5VXJU?=
 =?utf-8?B?NjlJR2RuYXBPWm4yRDJUelhsVFE1c3Y3YkgrVHdUL1I0WnJkc2xSZS90ckp2?=
 =?utf-8?B?MUtrb0NYWTRqWFNLTnZSR3QxVDlWamo1ZWRDOG55ckFBZ21OTHFNVlhONmtl?=
 =?utf-8?B?Y3dscjZqbTExRG40b2c5YXFwbXk3cnUyUVMzN21NOXF0Q1dRelprdzIySUg2?=
 =?utf-8?B?WEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26a81653-3b42-48dc-bf0f-08ddc9d114ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2025 10:09:58.9156 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ii3bTf2kWKw4cGylqp8Q6IapedJ4rQG6p2QL4lU5nh0gQXPhUzC5NENrvb+u7upTzhhxh+09R1nSYXg0Hpnv33zHrB4aymDpb5sRk9HRud0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF409BB8CE8
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753265402; x=1784801402;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NLU2GJCbK9Xl6DlRqFutjumX8DEN8SaumAfPX7Q5njo=;
 b=jpHLsuht9QwxEgqkZN2v1PEdbEfd/2tOhdas1lBvI8FawGLpVfPxig2h
 yq5zhhlDF8c5bxKOASYwLLL+VlRTKaGki//wZA3WsqTgqS1G1rlfalrCe
 ULI5xd4C8oKifzVyekVbNBzQTbe2KJ9OHXLbrwvmKlHAeumHCp11HTfah
 8N5G+hugcd+Anad16SHB3oYhAW/7wDznovgtppUPOHNRgGPRehzOBR63z
 TnrDMBVg3Yx5022iif7y+m3tpOFY5mqr3OiIgGx/2nY1VRSDvNTmWOicN
 HUZDEhwiRMiDn8jkNDA6lx/F+LcmS5NllmyE5zn3IYK9BfzqEUNOCKI1Z
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jpHLsuht
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 4/5] igc: drop unnecessary
 constant casts to u16
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgSmFj
ZWsgS293YWxza2kNCj4gU2VudDogV2VkbmVzZGF5LCBKdWx5IDIzLCAyMDI1IDEwOjU1IEFNDQo+
IFRvOiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBLaXRz
emVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgQW5kcmV3
IEx1bm4NCj4gPGFuZHJldytuZXRkZXZAbHVubi5jaD47IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1A
ZGF2ZW1sb2Z0Lm5ldD47IEVyaWMNCj4gRHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47IEph
a3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBQYW9sbw0KPiBBYmVuaSA8cGFiZW5pQHJl
ZGhhdC5jb20+OyBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+DQo+IENjOiBpbnRlbC13
aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZw0KPiBTdWJq
ZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5leHQgdjMgNC81XSBpZ2M6IGRyb3AN
Cj4gdW5uZWNlc3NhcnkgY29uc3RhbnQgY2FzdHMgdG8gdTE2DQo+IA0KPiBSZW1vdmUgdW5uZWNl
c3NhcnkgY2FzdHMgb2YgY29uc3RhbnQgdmFsdWVzIHRvIHUxNi4NCj4gQydzIGludGVnZXIgcHJv
bW90aW9uIHJ1bGVzIG1ha2UgdGhlbSBpbnRzIG5vIG1hdHRlciB3aGF0Lg0KPiANCj4gU2lnbmVk
LW9mZi1ieTogSmFjZWsgS293YWxza2kgPGphY2VrQGphY2Vray5pbmZvPg0KPiBTdWdnZXN0ZWQt
Ynk6IFNpbW9uIEhvcm1hbiA8aG9ybXNAa2VybmVsLm9yZz4NClJldmlld2VkLWJ5OiBBbGVrc2Fu
ZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCg0KPiAtLS0NCj4g
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfaTIyNS5jIHwgMiArLQ0KPiBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX252bS5jICB8IDQgKystLQ0KPiAgMiBmaWxl
cyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19pMjI1LmMNCj4gYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX2kyMjUuYw0KPiBpbmRleCAwZGQ2MTcxOWYx
ZWQuLjUyMjZkMTBjYzk1YiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWdjL2lnY19pMjI1LmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdj
L2lnY19pMjI1LmMNCj4gQEAgLTQzNSw3ICs0MzUsNyBAQCBzdGF0aWMgczMyIGlnY191cGRhdGVf
bnZtX2NoZWNrc3VtX2kyMjUoc3RydWN0DQo+IGlnY19odyAqaHcpDQo+ICAJCX0NCj4gIAkJY2hl
Y2tzdW0gKz0gbnZtX2RhdGE7DQo+ICAJfQ0KPiAtCWNoZWNrc3VtID0gKHUxNilOVk1fU1VNIC0g
Y2hlY2tzdW07DQo+ICsJY2hlY2tzdW0gPSBOVk1fU1VNIC0gY2hlY2tzdW07DQo+ICAJcmV0X3Zh
bCA9IGlnY193cml0ZV9udm1fc3J3cihodywgTlZNX0NIRUNLU1VNX1JFRywgMSwNCj4gIAkJCQkg
ICAgICZjaGVja3N1bSk7DQo+ICAJaWYgKHJldF92YWwpIHsNCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbnZtLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pZ2MvaWdjX252bS5jDQo+IGluZGV4IGVmZDEyMWMwMzk2Ny4uYTQ3YjhkMzky
MzhjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX252
bS5jDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbnZtLmMNCj4g
QEAgLTEyMyw3ICsxMjMsNyBAQCBzMzIgaWdjX3ZhbGlkYXRlX252bV9jaGVja3N1bShzdHJ1Y3Qg
aWdjX2h3ICpodykNCj4gIAkJY2hlY2tzdW0gKz0gbnZtX2RhdGE7DQo+ICAJfQ0KPiANCj4gLQlp
ZiAoY2hlY2tzdW0gIT0gKHUxNilOVk1fU1VNKSB7DQo+ICsJaWYgKGNoZWNrc3VtICE9IE5WTV9T
VU0pIHsNCj4gIAkJaHdfZGJnKCJOVk0gQ2hlY2tzdW0gSW52YWxpZFxuIik7DQo+ICAJCXJldF92
YWwgPSAtSUdDX0VSUl9OVk07DQo+ICAJCWdvdG8gb3V0Ow0KPiBAQCAtMTU1LDcgKzE1NSw3IEBA
IHMzMiBpZ2NfdXBkYXRlX252bV9jaGVja3N1bShzdHJ1Y3QgaWdjX2h3ICpodykNCj4gIAkJfQ0K
PiAgCQljaGVja3N1bSArPSBudm1fZGF0YTsNCj4gIAl9DQo+IC0JY2hlY2tzdW0gPSAodTE2KU5W
TV9TVU0gLSBjaGVja3N1bTsNCj4gKwljaGVja3N1bSA9IE5WTV9TVU0gLSBjaGVja3N1bTsNCj4g
IAlyZXRfdmFsID0gaHctPm52bS5vcHMud3JpdGUoaHcsIE5WTV9DSEVDS1NVTV9SRUcsIDEsDQo+
ICZjaGVja3N1bSk7DQo+ICAJaWYgKHJldF92YWwpDQo+ICAJCWh3X2RiZygiTlZNIFdyaXRlIEVy
cm9yIHdoaWxlIHVwZGF0aW5nIGNoZWNrc3VtLlxuIik7DQo+IC0tDQo+IDIuNDcuMg0KDQo=
