Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MFTuN386B2ottwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2026 17:23:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1800552178
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2026 17:23:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0926384085;
	Fri, 15 May 2026 15:23:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Srs1dktEvaw2; Fri, 15 May 2026 15:23:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68E588407E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778858620;
	bh=jW7RN9ssJDYpso6nLxhDLWgQHdAd7l1o5p8+lDHZeBg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HIqXCBZqj8uUqHvitWYb0Wjei5geo2dEhv50zJlt2MChDmklleD+f9wvLWXioTpgY
	 39l+UPujRWocZ0omfpuDZx+qgRuRjxh9PsroRDqL8gVpJmOhhoXlzRqwGNjAON4/oj
	 3Flij+uxT+Elb8kq7Mb4xWoT9ebqHsiXp3/g8J1kUbkLWkSj6auqw2KGJViL6fEAB9
	 vo6sfDsmOMk/0mYkcOnJUxn2fzfYRs5tZiBtJlh66t5XGk/09iZ9nwNCPzb+yo0JO1
	 /XzFmeR2OtswrKbvH/V21SnKtOSEUICMl7hs97vz9cAzl4FJwHkIuubTHEB20WAeBl
	 cTuyt0PHL5awg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68E588407E;
	Fri, 15 May 2026 15:23:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id BD7E1E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 15:23:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9868984076
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 15:23:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bLpyMkSpOX1S for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2026 15:23:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EAF6884073
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EAF6884073
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EAF6884073
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 15:23:35 +0000 (UTC)
X-CSE-ConnectionGUID: 98repsbyRN6KHHExYFAC0g==
X-CSE-MsgGUID: c7X8/NVRRSCiel1G6rO0dw==
X-IronPort-AV: E=McAfee;i="6800,10657,11787"; a="97244484"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="97244484"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 08:23:30 -0700
X-CSE-ConnectionGUID: +fBg0psGQWGxrH8pTNbg1A==
X-CSE-MsgGUID: fSkiX7DSSOSPjS7vYKxP7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="238971783"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 08:23:30 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 15 May 2026 08:23:29 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 15 May 2026 08:23:29 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.14) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 15 May 2026 08:23:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MOw9VMw8Ew2kMzpJYDvQMo2VTFNSmzZ8KCyvGcUs0DNsHx1Z5pnh6uljzG6YevpXvy9j9xagh75ATeQywM9LHnQp9FR6EEDAtF47rBw7LDdIVcPtgXPpBJ8qB+B0jvaWLaDMqxsSsJU1/VAwGxUjsu85ydW4PgzVfLH8BfcK6jXRtU2pelxUnuTffid5kbR1RmqCiyTGxDRj39aVlGA+sIMpOFessGsqq/JNDEe/pCR/yyNym/JEcpOiOTsoKOG7AYzdvoTM2c8VVyGR+9iYZlU9xT1Gc2u0qRPL8iNtz6rU4nd49tf1F9gQr+Cv4IQ9Vep1VvWfjqu4ICI7feO6tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jW7RN9ssJDYpso6nLxhDLWgQHdAd7l1o5p8+lDHZeBg=;
 b=cnLZleem5WEDycNJgKczDhuQxJ6wOtjHaa5eMeAv9nLYWWgJjxiXWFBEpW1PMwzkhDF+wJUoBFFuAO2bn6/FOe8CaXfxJYuJ+hX6tPwadOULJuS+8yPPikvCsJWJuKoSQYKcvdb97T8dRXD78JR13R88Nn1pWm7n5a9cYgAg13G2EjjNSlGhKpixvdlqtg9+PH7EQfZ9K6FlWc0Kh0G0X9eOOr+LvPFchlu8DQuA7lJb/mdg5q4dEoxacLdod4ZK4Nibw+Synwt2/RHNpK9/fvX9OYFYtgWqYGNffVxC6FfbO2pa5sHZJMvF8s8Ml9QC0ZQFtmjiP707/gmPz3uWZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by PH0PR11MB4917.namprd11.prod.outlook.com (2603:10b6:510:32::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.12; Fri, 15 May
 2026 15:23:15 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%5]) with mapi id 15.20.9913.009; Fri, 15 May 2026
 15:23:15 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "kuba@kernel.org" <kuba@kernel.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "edumazet@google.com"
 <edumazet@google.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH v9 net-next 0/8] dpll/ice: Add generic
 DPLL type and full TX reference clock control for E825
Thread-Index: AQHc4/X8hGVqzkhfN0ye4z8vc9MzjbYPAKaAgAA0ouA=
Date: Fri, 15 May 2026 15:23:14 +0000
Message-ID: <IA1PR11MB621932CA3109B582813D336892042@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20260514225946.2885623-1-grzegorz.nitka@intel.com>
 <IA3PR11MB8986B93163E2FEC79BAB36EDE5042@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB8986B93163E2FEC79BAB36EDE5042@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|PH0PR11MB4917:EE_
x-ms-office365-filtering-correlation-id: f7d00db3-b8cf-4343-20a9-08deb295e24a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|38070700021|11063799003|4143699003|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: +TUTnktPXRxIlIC4FMgAFvwKiGfz6YjdRuJF6UH4pAGSWAIXb9za+JzEQT6j85K0VWa/z41w6mb/znDegi52mbRWJjYUUq4Lxf0nYkMQc+1PPxXZGkAfgsENVfX+RBhQFMJZ8Ury/B65SFFTmq7mCxqQ4ExoJISopov93gq/UHM/iWbsUMmsahHnkuJV11kUxyDzeyOAhM3bwH+8fPq87nX96GSNMYpiuH5O1oHsg6Dmu94e+wz/nxpLg6iJUkemRaOi+tjk/u0A8zdCKthVvbV6yvQyZMRTFdUsS5TubUYeyal6/3iHDAGnAMXYbutUqOE6brvECGHq8qrKVvCrlUJFtWFVVopwzA/i740AI57rmo6mwASgWRSZt6C6yMbWBcrr28K/mToMqgPSxg0nam+xniWO93PhF76yxCM77bO9pLCn7VHAXTsart6kdufyKRWiPUswc6ouUikKQumRNVS3xxFQb8NaRK+VLg4zyk2OI1EC9Sv09kZW1bv+DKVXGTdaf8+owDpUgnqtd/kXHBbMiyHOM9PLkHl2tnEhJpDYAdA3viGxGouufKUBlikZj3oK8hx0d/WqFWoHgecd1Xnh9Tvw2dfEZ5CNuQRD6RXB9uVJceOjNjGZVJthsJsByWXvPsCDVuctob9s/xQY+D/HRLTF4UqdwqbxY6k26qj3gbgRqK+3AW6EaXdyfBoh4S0uBiEQlqgh2K1romHPodAWryoaFzySGcuOTeJGaYve4SfHqHRMkEehDlupPLgW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700021)(11063799003)(4143699003)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GQ9Npph1dhyCLE669MKmbm5E4xS41FF/ruRC8IojmkzruhnS/jP+1HdbRbQF?=
 =?us-ascii?Q?gpYqluQLnlB27anzxQOkuW3hLqR1aT4tP7HEKcrLxLMjEmhHA3szTmV08RAC?=
 =?us-ascii?Q?GwbbXqQDXzTqZIQBje5cwjNE+/Eqv/kFYydYYdt9g4DVO65ap/76h2hAuYkS?=
 =?us-ascii?Q?U6JO16Wbcm9HnhwlEZad5DtEPVyu29azksdyowXi87m6RrDh/eaOfGCdWHqG?=
 =?us-ascii?Q?KhCzuFZBRxXawDKzNo/2Y373sPXbizf/8O/6koZzcTHzWAEeqZFNPz92fdjO?=
 =?us-ascii?Q?Ci7V6DHzkWV/1Mp2L36MeDyw3QKESxGNhAH54K9zAD4rd+ozOUAOE6/LVxY2?=
 =?us-ascii?Q?/+QPcgt5ymcZC99UHfWrwKH8TC4vDNzZZyHmxQgeDB+6s5qKY0zPl3NJlF+R?=
 =?us-ascii?Q?BGhxk8t32UgPNH0l4KobEoTofp058JZGu4gMu1p0gHbgmiCAFO6kKOhIEiLk?=
 =?us-ascii?Q?dATNuBHVsUaItR6OPJSNU/EO4jWRLrEHL936I9y03QsOavDSEZNBQcMw7Dri?=
 =?us-ascii?Q?xDHsGUcMQgg9BOaOSTOzOQgWagIvMiybAhxr7FmovNHJDq088zIUP61gsQat?=
 =?us-ascii?Q?JQLHEVm32T26CWPL//Ijinawk/bffB2JjiAKLzohLxBbt6nvFGAecO3zXa6H?=
 =?us-ascii?Q?Hs53p+K4L+K55YIb61vRij0M8ZePEkDNJPSlzwFo79lAbYhQ+4aUVh9/CVQH?=
 =?us-ascii?Q?2w0l2AzXgrKle8uZfB5n5s33g0vEiXKEmHF/YeywdPa+BBsiKjd66AhP8OX3?=
 =?us-ascii?Q?OyU2+yepfZ0MQm+zMAJf1jxH8F4FqtJOnFJI/jAC5ZLiMTDJtgsUEC1TuG5S?=
 =?us-ascii?Q?Upqhf/dy8btvnRo+3DlWL/WiCOSuckn2qvvMjapqtN0XCew6t8ahKAHj/7Bk?=
 =?us-ascii?Q?x9Jsz0fFI+ynFBAPd4lrWNypYMWVLuuHwUKojNOYMr1wr1A8PdymQiThXbfo?=
 =?us-ascii?Q?rTxc1KIGA8g/x2SgSZ6l6WSE+ZfxEF6Muhp7Mr2wF9mvIbueOuqHJ4MtV6Um?=
 =?us-ascii?Q?uzvcVTDNDNrgApkzVZUrSuyrVgrJxqwhxMyVuWbbcwERLt5V7ZFufORay4au?=
 =?us-ascii?Q?Xh7cwsJSbNni23+/DupyVDAC1JUivtjdiHh/0zRmlutJP+hPHRb1+7EGPGz7?=
 =?us-ascii?Q?wN6B5JTSKZytoQBxA9j9io+hs8WqiWUWm8h5X6MgAJtWOl2N87vEDAZSsd7/?=
 =?us-ascii?Q?zup2j664XeWOPwUScWTA0o3qabvJjFwxPZzkbE57T+TbrHm4Ax9QsHhHSbs8?=
 =?us-ascii?Q?WJHaifvQavg1wyvWjbhyCbWGysxlyYZsyIXkFLGo7IR2t6Pc84AWHHfFOa1O?=
 =?us-ascii?Q?pLxjb4FJA3c374A6o+Gt+qnxOKyGiaWWPTgMyWVV0BCDs3gu5xgCQ2v/GMAy?=
 =?us-ascii?Q?oCtkWUoj48nm4cqBY5DMZUi3FvgCmbKTDiaLL4ZPEbewf4sqPOdtAA/uNLG7?=
 =?us-ascii?Q?hnFkYTfjCQY3WMN01kGVL9o2rNJhLnHzsEuynfngguRxbCfFG5VBBHyJjBLN?=
 =?us-ascii?Q?42z1WNLpJHqi+8fXXXSSRI1hNowkfaNut4ZvSPyXl6uB6T1ta2MhhkX136m2?=
 =?us-ascii?Q?evgqVMAu20/RAnL2J4GZc5/MFAihbVP4Ci4ya6od7hmnvBD6n8+XDQeEudJo?=
 =?us-ascii?Q?fRwYBWwBQVIilxWH92icBH50EWsAwzAbv/d3Ds/2XSBWfrZqN2btJhAMcy5y?=
 =?us-ascii?Q?3DGoCsMKAxGZK/yM1o7hFRWicyPXKfJTs4zjq2yzobdu7QbNfdPcVJxLq01t?=
 =?us-ascii?Q?S/NLNaw0cQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: GAogyaeL7llR8HDCiH95P7dzqMtbzbG/YfsY3YYGqsn5qrg1ZRPrLLO0wJrpvz2QmjHmqMS/Bt09dnoaG3U22/H8qurUd9uJ5O7ayvjoaYnOzHpMzescB/bu2rEamgLdDTBl7ZTzCRqrZvyKWIfMKQjAxknq7/9hztJm+DUCWWrGghl3CHJkjaFS1L//ViJt6G6vnJEGNatL83wEtlKTwOplmTfyl8JjgyCIXdYT95pEtl12PPotfM7ILn0jaVl7XyrXaveYauzKwvKY5RTLIqEW4M2haZT0/K1JJssq519wbKxaY2QzZ6wRX/+3suScY784Upsoi65GTbekIp90oQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7d00db3-b8cf-4343-20a9-08deb295e24a
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2026 15:23:14.9419 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5cqUGN8ekw7yrz5fuV5r2rppLp31I5FBDJXqj/zw59xc3jNpPFHnbmPlc7BEwKucCjJZ8W20KQVyvBeZ25lKoFetDNxFZfB9gnjzjKay3Xg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4917
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778858617; x=1810394617;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4gyY6kgBuvMcAnNWd4ejZes6pVXd8nvwGRms74hYqm0=;
 b=OxK/qTZn/dBDHOeaLglAktmYbfkSLgmxhM1uZMEpQBwQvi0DZnYjdm5w
 VrwDF8hbwz1lGNrVkKM0o2Hiyv0NFx3lX7F9qUB8W5ykj2J06r3q1kCzN
 4Ybp41o92p0zIimVEcvFvUQKvomOjiW5Fqni+Fcs+VjvAT99hxTYD6533
 C7gTqjMuzZdz8cDwCJ+8a4+Gleyd1VFqZUXZy9I/TfG0bvgVSSOTpRiMh
 sYlHgSaXDmQfSWbvUiqBUsGKqZAkrm8Br2q92GcZiLxrsJHAconoxFr7o
 2MK0GBHpMJkEHsqmrJkdNVG9zS9A76nx7I66CYUc8Ug06QvRIVytOr6+C
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OxK/qTZn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v9 net-next 0/8] dpll/ice: Add generic
 DPLL type and full TX reference clock control for E825
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
X-Rspamd-Queue-Id: B1800552178
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Action: no action



> -----Original Message-----
> From: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Sent: Friday, May 15, 2026 2:14 PM
> To: Nitka, Grzegorz <grzegorz.nitka@intel.com>; netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> donald.hunter@gmail.com; linux-kernel@vger.kernel.org; Kubalewski,
> Arkadiusz <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch;
> intel-wired-lan@lists.osuosl.org; horms@kernel.org;
> Prathosh.Satish@microchip.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; pabeni@redhat.com; davem@davemloft.net
> Subject: RE: [Intel-wired-lan] [PATCH v9 net-next 0/8] dpll/ice: Add gene=
ric
> DPLL type and full TX reference clock control for E825
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Grzegorz Nitka
> > Sent: Friday, May 15, 2026 1:00 AM
> > To: netdev@vger.kernel.org
> > Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> > kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> > donald.hunter@gmail.com; linux-kernel@vger.kernel.org; Kubalewski,
> > Arkadiusz <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch;
> > intel-wired-lan@lists.osuosl.org; horms@kernel.org;
> > Prathosh.Satish@microchip.com; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; pabeni@redhat.com;
> davem@davemloft.net
> > Subject: [Intel-wired-lan] [PATCH v9 net-next 0/8] dpll/ice: Add
> > generic DPLL type and full TX reference clock control for E825
> >
> > NOTE: This series is intentionally submitted on net-next (not
> > intel-wired-lan) as early feedback of DPLL subsystem changes is
> > welcomed. In the past possible approaches were discussed in [1].
> >
> > This series adds TX reference clock support for E825 devices and
> > exposes TX clock selection and synchronization status via the Linux
> > DPLL subsystem.
> >
> > Here is the high-level connection diagram for E825 device:
>=20
> ...
>=20
> > ice_dpll_deinit_txclk_pins and
> >   ice_dpll_pin_notify_work() that is about to register the SYNCE pin
> >   (patch 5/8)
> > - resolved potential path deadlock during driver probe and error
> > path
> >   (patch 5/8)
> > - relaxed kernel-doc regarding cpi mutex usage (patch 6/8)
> > - fixed ice_cpi.c header (patch 6/8)
> > - fix retry mechanism in ice_cpi_wait_req0_ack0 (patch 6/8)
> > - fix potrntial leaving LM.REQ stuck asserted on the hardware (patch
> > 6/8)
> > - fix kernel-doc for ice_cpi_ena_dis_clk_ref
> > - removed unused CPI definitions (patch 6/8)
> > - fix header inclusion (patch 6/8)
> > - addressed Sashiko issues for patch (8/8)
> >
> > Changes in v7:
> > - rebased
> > - replace TXC-specific DPLL type with DPLL_TYPE_GENERIC (patch 1/8)
> > - update TXC framework to use DPLL_TYPE_GENERIC instead of
> > DPLL_TYPE_GENERIC
> DPLL_TYPE_GENERIC instead of DPLL_TYPE_GENERIC
> Something is wrong
>=20

Correct! Typo ...  the correct statement should be:
DPLL_TYPE_GENERIC instead of DPLL_TYPE_TXC

Thanks

Grzegorz
> ...
>=20
> > --
> > 2.39.3

