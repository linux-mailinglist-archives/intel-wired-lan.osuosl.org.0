Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJw/NCOkGWptyAgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 16:35:15 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2793A603AAC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 16:35:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF303613EB;
	Fri, 29 May 2026 14:35:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w3r5E0hZCtkj; Fri, 29 May 2026 14:35:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 15CDF6144B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780065313;
	bh=Hfc3Q4cRBEp421w2Ub3TgTylbFSBPLaNT8jQnKdB7cE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=s+1+b8w8IV+s9T7G7EibXhHUvehx9DFVUuxtIkWkIM4KWSvdCpRken7+1EdlDj8WU
	 AAku9ys2g4pKYx6TFwUJN2j2O3p+aZn9hnxEvuFQTbF8/0/s+J7aNAob2M/lZYj+g1
	 gAe1tEL+3p/qvOSRZcnrdvi2ko+2znoBO/XpDRKYb1ouR0mK6M6un/cWEnPLzJLrKL
	 D4RmCtxIcmkvs4kLmykg6mJE6iIoZfcnDl8KYahGFIjgaUyNttGTPU30toZShIO9ux
	 F10cSvI65UipNM54qZFJsCKAdhyvol/HBJOSX8mudu1CvU0rktf9qBTISSIPSvFgzj
	 E+XdaDJPhajUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 15CDF6144B;
	Fri, 29 May 2026 14:35:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2FAB2F4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 14:35:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2AFDF80EF7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 14:35:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pvPLX-bzBIXA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 May 2026 14:35:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 438EA809EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 438EA809EE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 438EA809EE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 14:35:10 +0000 (UTC)
X-CSE-ConnectionGUID: TxxlvcTKRxyVRnAqpjt3Cw==
X-CSE-MsgGUID: 3oO9SvXWRW+FZ3oOctxXHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="91601540"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="91601540"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 07:35:09 -0700
X-CSE-ConnectionGUID: 8fgE1cyOSFm9mJ/slSmiGQ==
X-CSE-MsgGUID: lm4FPK+FTvS8jJf42tIqTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="244692661"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 07:35:09 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 07:35:08 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 29 May 2026 07:35:08 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.26) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 07:35:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=smgHzmlmgMJYx3clOQuESerVq6UNZOrnNSWbw9i8K4DwYebJjuWGRuxO+Wzp07cNENh3N6MNonycwoAgW3/trONAM2ppg0V0u2W3i6S7Xg2TXSrPiEMkRdYgvfRBXSh24QcxYHhiQsRHYDPL/8By9CEAMZwnxhcmP3TN5EC9fFV+JjDiNYr43/PKJNESr2Ha5JttzrfST/wVVbNu92Z8it5EtkgdTspKMYlv8avoIt9Q2hO2Gt7M+YsAWEEdD+68846QiIOERTq5BKbnw5MspjUHZX5ioo3NzuS9t1la1qCzDnENyoBNgkHgNfSE3VhbvG+GcdD8rqUjcAikIFcwcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hfc3Q4cRBEp421w2Ub3TgTylbFSBPLaNT8jQnKdB7cE=;
 b=RScH6Vqe5lO+Estt+50nxeC9i8VQymv8oI0bsZqWWFiiooqs/YLmGNbwK3qnJA/RGtdMHHkGPriTCfG2Ru/K+ecz8SvFOxu2AZlb52Jb1T7nycXWWTUXUmcqVjwP4E8MtPHE6bqK3yGA5ydB0mO0FbAR2QNAAMGn1zS99BowT69+ALCndSMTd+kan355BB+rNtbCkBQ95EmTGqhWGXOjYuVsl7AK0zYTpv6EKJj30ULXtLINLKmxsU8JpQnouSHffUnew2jWZzszGXUuQXJJZMIT/coS4n0rNXEx2+SZ7O8CDeKe9PCLYdH2Ua9LnJ2Gb0Zcii6qj3C7R92pjMOT5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by IA1PR11MB7199.namprd11.prod.outlook.com (2603:10b6:208:418::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.12; Fri, 29 May
 2026 14:35:04 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%5]) with mapi id 15.21.0048.016; Fri, 29 May 2026
 14:35:03 +0000
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
Thread-Topic: [Intel-wired-lan] [PATCH v11 net-next 6/8] ice: implement CPI
 support for E825C
Thread-Index: AQHc7POfM1WvnTYofUG5EKOJV2+kGbYjX/KAgAG2oqA=
Date: Fri, 29 May 2026 14:35:03 +0000
Message-ID: <IA1PR11MB621981919BBAA64E2877942C92162@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20260526093419.639220-1-grzegorz.nitka@intel.com>
 <20260526093419.639220-7-grzegorz.nitka@intel.com>
 <IA3PR11MB8986E5975D2800EAC6132E92E5092@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB8986E5975D2800EAC6132E92E5092@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|IA1PR11MB7199:EE_
x-ms-office365-filtering-correlation-id: bccec424-c37d-4622-a7b9-08debd8f78c2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|6133799003|3023799007|4143699003|18002099003|22082099003|11063799006|56012099006|38070700021;
x-microsoft-antispam-message-info: ovEKILZrB4BYYwQrNY5HgYEshnCRJwlGzfyW6pqBfKSk7wNJCMJ8nDvKXKoeDCiHyZH2tzq4h9PKzVxD3AVBz4PkRjGajpbVmCn2FUTcHOftM6i2G6MaUjxbpUSeJaO5e0RwTanHM2ms1puUBPL0cL1E2XbYI6h2JzkIEyER9UgCSx/ux/sg5FJlpMr7z17WANWFCUCicyMlo8nAiVjbyQpka/pDLDTSXw1u3BZJp8ICgNHoNEL2yTUP138ALYKx9E03/RK+QvHc6XMGRTQd91M1SImA5xO3ZqozhVdadiUVidvriwAvb2AI2q7ivno24hxz3tHvXO8yqn3Lex+Zc1x/2QCzZtOR1BMh4YqFNIWIiSa0y7NmT9n2TqCcowp4OITFmp/vYBd/E8aT6OK3+VeeuExcziqRkC+Ru10qsAYUrW3CeH474qNoWNrlILHEddeic4WkvqeCj4e9wYHvJlxb6ysRo0sI6J+xZcbpb/FhuwsMSOtF0KtLynCasZE8Mt6kWm4shR1acSHcMWyw1woYam/Wlbxs6Y8V/Nh8+NX0NDq9ksVB2tqbE4wL6VmJHS/JqWLMvTnZXjzefVxxig47wvVvY1owOE+0MHK8Q/oHcQ/h3iYl2sELpESGqsQgqTMUuitClPsRvkb/MiHJzeYrqDJyu6uJSKBpB5Pmup6bwE13eoxQ9wGibpZz1xgQYBOh91UfUbVWEvanj1UCfYf39O6JreK2SnqGxXsISExjLGmOGj4r2kVCuDNMC/G1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(6133799003)(3023799007)(4143699003)(18002099003)(22082099003)(11063799006)(56012099006)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qRUHHLPBy1WmyJKChT/j36emqep8ija9T39KfolNuZmshbgzpKhrrfJL5EHC?=
 =?us-ascii?Q?Q9UQ15nUEexo6wr2+ub9jMWXjlhNYjEdKFnSlEk5M6H0g991qdO91dS+ACWi?=
 =?us-ascii?Q?wnPiyI3d0kwDIFkmHQMYiX0CAlNbTtbv1uJRT1GbQEXRTbhsH7CjWQ2q5+4j?=
 =?us-ascii?Q?FjppXGGAiNR7ubq08lL9eEvaf05IYv0S8h6fCT/mhgEErx7CIQJvSCJvgnpr?=
 =?us-ascii?Q?JJpGl+8PcPWh0M41+liBMuu7bAikPIm+liH5+sqF2z6srT8riZcIPW8ExTjI?=
 =?us-ascii?Q?YbrhBOaHZGWd69j/urVEAAYuf+UZjb76iSNRwmH4kXFoKMiWLKWY13+bPHat?=
 =?us-ascii?Q?TX+uhXlQ6xvgU6TbQCa0iQcHTymr9F/CTm8WkQ7PqdpvTsuQHqVfS/nF/k+M?=
 =?us-ascii?Q?gQ10wQAkEWgUPth51g65nPtArqDfVMTX/lkZW4BKk+LuDd9eb6cGxNZfhJcN?=
 =?us-ascii?Q?HArzhK5DMhUt0UKyf34K/f+SSGmlqXueJpYMBbNOiNctEPDlv7MCFl9oVBOg?=
 =?us-ascii?Q?PkFghnvEsFKuy+F9TSqRxGwJ3yQ7dXhe4C+nyZKbpSTuV/xyXmxld4Z7qH/8?=
 =?us-ascii?Q?YU3U+lLGCFK5JAYTD7zb3eMyIoojPxx3A8tW+0Npti/a3cDfFbsUW0w1z1L0?=
 =?us-ascii?Q?DiSZdkN+OCyDBHnzmTLfg7L80sIp6+QknuqwP4haZrnmjBlWX+wiAiOZablm?=
 =?us-ascii?Q?nLokF5u4Ijy0SuJ3yXu1uAyriI1USEnnuqG7dNR0LbYcj+i2LSA8GkqpN2kP?=
 =?us-ascii?Q?+Hn80ZwTMTpSebcf+i4yIpMHkBVkMfpqpR2AxbZeak9iloHNnw5i/dgoxeIS?=
 =?us-ascii?Q?60YC6c9rpsUAKQ/cQYq3jTqVW3FZL8I9KCFKoxDANDIhzcGFAar/IMDxpOf2?=
 =?us-ascii?Q?W5Itu/vOF4zRtMhUDm9SaC74jEC8s0qx+0NgsDdtMwaRYU0+MplZkb0yrxay?=
 =?us-ascii?Q?hmU3BkXTBdQwh+NA+RYjLdXqmPdvrQWBp0w5DgJda2jvxsjJHpJrnN6aBtG5?=
 =?us-ascii?Q?7w1Qqelz9zESggPklJBR3nQQhQp95JdseMma/TF5euAkRA0Ge0aCpDdcyBJs?=
 =?us-ascii?Q?4RIjZH0wIq4mVd8OYkByalJNTB9F6RuKtumYbcvoWHDZYISbvJ80uFo9ntZC?=
 =?us-ascii?Q?Kdt2fiYIghSD0nCP1HuNzbbCsaC0NafAdzrW29SiIvdDzQJCqX5NwiCjYgoJ?=
 =?us-ascii?Q?AEdHz9f5M0oL5ZoTuyyQ2cXC8YDoQG2tPBbtED4WalxFQkgsDEX2lAVTFD/K?=
 =?us-ascii?Q?TMKc4HD9l3bdv5E2W7FtNBAXCP6Jj/6HcRyH/bkUW8QEaEI5an8UbareTpEQ?=
 =?us-ascii?Q?Ek3sKRb+nMMTW9f2ydO73oGRXN7IzMJd64kFnd65C1F0eLnVmjZWwQFxSWJU?=
 =?us-ascii?Q?8nztOBFSdYCzUkPvwIkNeSCzS/kk8gF40D28T/6uzq1NTuBUo+I+/weB4arJ?=
 =?us-ascii?Q?l99MSapndN/yxOScsfb6cWEarwPA93TXwy5NMA7uQ2G6ZBDwQI8AswdqvHgn?=
 =?us-ascii?Q?QTilylsqrMdItbntCN7MkRM9IiKXaVXRj3bJyuPc6wmbEab7ypadNpDbq3xr?=
 =?us-ascii?Q?b8+YlDBx8ZIkUHa8CMW2E+X0jnisyT+6/dbuh/vSIzaQTJOG0hI3+cREXf4s?=
 =?us-ascii?Q?f9qNVsKEGqRY3oNOkMvxDNRvm+gK58bWpkENpFIuHKXJpArsV+NqqNGVM6WG?=
 =?us-ascii?Q?BdRwMB9NyK3EgNanju1MZAxaMR27XDNeoVAsOsnxHa1lVVZKb4vLXXDjAMiS?=
 =?us-ascii?Q?Sy/XSN1TTg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: YpDChJcai4yKy2DwYnMneZtLq0GgFcmbTTP4nEldahXNtnT2F2A4ryEQbqgWpztzv8w5Yvc9wl02zw2lDSMPzF6bsOlLHZEc9x5hZsljZSI05X1k63PLq7Nw/bOhEsGIEUnOnaBbWXC8FvCaHGjiicgZB68yv5+KCGD9DyhbPrcdX5A51PbqsaIcvEKhQGzt8659qZkMoHEh1jF5ncdf8zjXkMYwp+oIPKCBZbJhz0i8rVhrqQ1jV0eg7O7BiY8dNuWmqPL1cTm/JqLes94vofNt/52AeOpmdHGp/0R3M6GT33nzG4idJ3tY31Y+WJRGpF30czF8iJcYld3C10e3Pg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bccec424-c37d-4622-a7b9-08debd8f78c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2026 14:35:03.6652 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ybhhOlrTyGDuKQRsZIQ0VL4l6UWrOoci3Lf4Kjo7EZ8bzXzEmh9L4Vhp4BirO11cK5h+4p6Yl/uTS8DKOt9xdsKcrFI/l4suxnlHm/QqObI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7199
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780065311; x=1811601311;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ms0hq3XHW1ekO+0yozoCUTht0dXxR2ijBt2wEfm5rek=;
 b=TexTgn8CZK4eduiPiFsWczYaIZljmx2V2mSSmnMd2CPaM15asTBRHU77
 MF2BlAVz3locDz9b61cpPpajsC9S5Rq5UqJoMaROWWX/OXM83I88fGJP1
 +wYWlCx7+daZDep5PxpDpPXQ28NvODkzHVhafCjic4kuDGHWNAV46Bzl3
 LjvuxxWAfp7sYMlkBP9SCy4Omt/2wAgtkPNvXiezzvqpZfcUgdoNYtc+a
 s+9zro0uUpPHtu9zZxmsqNnRO6u4JhOg0pX+z7LJ8BSPGccOyioiIRuxx
 zvKFVevNPtYMpNVEc9TuGOEQ/1aRgOk0x7FF/LtzwKBzh6DbBOdkrV0i1
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TexTgn8C
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v11 net-next 6/8] ice: implement CPI
 support for E825C
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo]
X-Rspamd-Queue-Id: 2793A603AAC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Sent: Thursday, May 28, 2026 2:24 PM
> To: Nitka, Grzegorz <grzegorz.nitka@intel.com>; netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> donald.hunter@gmail.com; linux-kernel@vger.kernel.org; Kubalewski,
> Arkadiusz <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch;
> intel-wired-lan@lists.osuosl.org; horms@kernel.org;
> Prathosh.Satish@microchip.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; pabeni@redhat.com; davem@davemloft.net
> Subject: RE: [Intel-wired-lan] [PATCH v11 net-next 6/8] ice: implement CP=
I
> support for E825C
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Grzegorz Nitka
> > Sent: Tuesday, May 26, 2026 11:34 AM
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
> > Subject: [Intel-wired-lan] [PATCH v11 net-next 6/8] ice: implement CPI
> > support for E825C
> >
> > Add full CPI (Converged PHY Interface) command handling required for
> > E825C devices. The CPI interface allows the driver to interact with
> > PHY-side control logic through the LM/PHY command registers, including
> > enabling/disabling/selection of PHY reference clock.
> >
> > This patch introduces:
> >  - a new CPI subsystem (ice_cpi.c / ice_cpi.h) implementing the CPI
> >    request/acknowledge state machine, including REQ/ACK protocol,
> >    command execution, and response handling
> >  - helper functions for reading/writing PHY registers over Sideband
> >    Queue
> >  - CPI command execution API (ice_cpi_exec) and a helper for enabling
> > or
> >    disabling Tx reference clocks (CPI 0xF1 opcode 'Config PHY
> > clocking')
> >  - assurance of CPI transaction serialization into the CPI core.
> >    CPI REQ/ACK is a multi-step handshake    and must be executed
> >    atomically per PHY. Centralize the lock in ice_cpi_exec() and
> >    use adapter-scoped per-PHY mutexes, which match the hardware
> > sharing
> >    model across PFs.
> >  - addition of the non-posted write opcode (wr_np) to SBQ
> >  - Makefile integration to build CPI support together with the PTP
> > stack
> >
> > This provides the infrastructure necessary to support PHY-side
> > configuration flows on E825C and is required for advanced link control
> > and Tx reference clock management.
> >
> > Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> > Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/Makefile      |   2 +-
> >  drivers/net/ethernet/intel/ice/ice_adapter.c |   4 +
> >  drivers/net/ethernet/intel/ice/ice_adapter.h |   7 +
> >  drivers/net/ethernet/intel/ice/ice_cpi.c     | 362
> > +++++++++++++++++++
> >  drivers/net/ethernet/intel/ice/ice_cpi.h     |  58 +++
> >  drivers/net/ethernet/intel/ice/ice_sbq_cmd.h |   5 +-
> >  drivers/net/ethernet/intel/ice/ice_type.h    |   2 +
> >  7 files changed, 437 insertions(+), 3 deletions(-)  create mode
> > 100644 drivers/net/ethernet/intel/ice/ice_cpi.c
> >  create mode 100644 drivers/net/ethernet/intel/ice/ice_cpi.h
> >
> > diff --git a/drivers/net/ethernet/intel/ice/Makefile
> > b/drivers/net/ethernet/intel/ice/Makefile
> > index 5b2c666496e7..38db476ab2ec 100644
> > --- a/drivers/net/ethernet/intel/ice/Makefile
> > +++ b/drivers/net/ethernet/intel/ice/Makefile
> > @@ -54,7 +54,7 @@ ice-$(CONFIG_PCI_IOV) +=3D	\
> >  	ice_vf_mbx.o		\
> >  	ice_vf_vsi_vlan_ops.o	\
> >  	ice_vf_lib.o
>=20
> ...
>=20
> > +/**
> > + * ice_cpi_ena_dis_clk_ref - enables/disables Tx reference clock on
> > +port
> > + * @hw: pointer to the HW struct
> > + * @phy: phy index of port for which Tx reference clock is
> > +enabled/disabled
> > + * @clk: Tx reference clock to enable or disable
> > + * @enable: bool value to enable or disable Tx reference clock
> > + *
> > + * This function executes CPI request to enable or disable specific
> > + * Tx reference clock on given PHY.
> > + *
> > + * Return: 0 on success, negative error code on failure.
> > + */
> > +int ice_cpi_ena_dis_clk_ref(struct ice_hw *hw, u8 phy,
> Parameter named "port" in .h but "phy" in .c.
>=20
> Everything else looks fine for me.
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>=20
V12 was needed anyway. Fixed it there.
Thanks!

>=20
> > +			    enum ice_e825c_ref_clk clk, bool enable) {
> > +	u16 val;
> > +
> > +	val =3D FIELD_PREP(CPI_OPCODE_PHY_CLK_PHY_SEL_M, phy) |
> > +	      FIELD_PREP(CPI_OPCODE_PHY_CLK_REF_CTRL_M,
> > +			 enable ? CPI_OPCODE_PHY_CLK_ENABLE :
> > +			 CPI_OPCODE_PHY_CLK_DISABLE) |
> > +	      FIELD_PREP(CPI_OPCODE_PHY_CLK_REF_SEL_M, clk);
> > +
> > +	return ice_cpi_set_cmd(hw, CPI_OPCODE_PHY_CLK, phy, 0, val); }
> > +
> > diff --git a/drivers/net/ethernet/intel/ice/ice_cpi.h
> > b/drivers/net/ethernet/intel/ice/ice_cpi.h
> > new file mode 100644
> > index 000000000000..f73329237a7f
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/ice/ice_cpi.h
> > @@ -0,0 +1,58 @@
>=20
> ...
>=20
> >  /* Port hardware description */
> >  struct ice_hw {
> >  	u8 __iomem *hw_addr;
> > --
> > 2.39.3

