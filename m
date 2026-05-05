Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CEqDGzFi+mm3OAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 23:33:37 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA6B4D3EF9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 23:33:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A620160B8B;
	Tue,  5 May 2026 21:33:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ggp_Oukhgv99; Tue,  5 May 2026 21:33:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E5EC560B8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778016812;
	bh=JHK1MNuQOV3E20tX4KroA1lkWUoypkMt0beMR/quMXo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QaFTqAxO+DJ26qB4fs8b4OhhIsCJ6lTxJ+Kf7nUR+sHHSXhXGGoKcG6kGBGRBu8T3
	 nYhVCpafW/CiP8qrOdHBHZrjW5KDygqKWBA4PoxPKwNuGuDBbiizSQgB1gJAAMRLPy
	 RAf3e4mTjgNhuxKbUT0L/XawAv+McBPgC59/Lky70bvmE2rNtFnj3Yo5e7XbGpHwpy
	 fyPfZg+PegcTn5EtSKGMr/0XfxW1g0dJ5Z0U44aZrjHn1BpUxAfIHEVHUgFAbj0Wrb
	 aMowJsl225BreQlQtmjnMSDUR8gfuVyZpX7ySNbyGkh7qsuRcEQA2RMUzqUuVHMy4U
	 q3PB2AkYRpqyA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5EC560B8E;
	Tue,  5 May 2026 21:33:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B27B280
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 21:33:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7CB4781959
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 21:33:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5pJCMONHNHTd for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 May 2026 21:33:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2238881100
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2238881100
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2238881100
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 21:33:24 +0000 (UTC)
X-CSE-ConnectionGUID: vMO48RYWRn+/5REbrfntaA==
X-CSE-MsgGUID: nl0k69TER9WCSGH10Gpn1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11777"; a="78613971"
X-IronPort-AV: E=Sophos;i="6.23,218,1770624000"; d="scan'208";a="78613971"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 14:33:24 -0700
X-CSE-ConnectionGUID: Z+/6OlAhQxKCH7q7k7DaPw==
X-CSE-MsgGUID: HxPhyo1IS8aw9WdpY3JRwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,218,1770624000"; d="scan'208";a="237707205"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 14:33:21 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 5 May 2026 14:33:21 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 5 May 2026 14:33:21 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.46) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 5 May 2026 14:33:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FfVQN31zQk13JFdcfVmMaoQ0MBNMzi9dcFPbFjp1gChTJFGA1G8WcGKkJ1VowAMkOftv746eP+d+8inHPQZFlAxBsUmsIf6HAldzV0vMBD4Q3Hr89aDShipQE7bHwwHIDtMnCkpiqY8Vt8Mrlnec46Y6lvkfhu9mUR06hn1I1ZxelbJhi8c7jTU73e2u7UkeI8kRX6nfQ0a0zk94GmNJ5SmMRsBIBGC72dTwGF/Lkvsefag5Zzo4UVnmlET2cUYKnIoG1mXh24T7+LeoAm8eyMHF+603xrt52vqsSocwCrE+jkdiS4xSDVG3XizdShJQCaHjJW1xnENYI9q/oaD2cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JHK1MNuQOV3E20tX4KroA1lkWUoypkMt0beMR/quMXo=;
 b=MmkA/hzvJOsa4G8bOVOcl5IO9uSNj8IJfKbrNMlcHPYLRAhsNfSJA2bWWW+605qWeQzLj5VdcP+g0CgbF2j9o3n8GetPGn48O1WWJHyydlqTuORZFRkueIxfgra3nDei9SOHiShHr1vw3JVhSLn8lq/r6ONDSEy8gtjhldGxYSUjBFzxNzuUqBd/l0qeGiavuSg5v5IuJNCgrCdLPopMJ8/tYHz5AD0oISwXb0r3ebw0+ftPQ9Q14XarIJnSQdRPDHYkj4l+aek92Fyrl5caI3g0M87DDcP9LfaFkM6Z7dvcJ/LDJo2ejXwksSkqrn+NyRzDOC7tHDSiKYnfPZv9lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by IA1PR11MB6323.namprd11.prod.outlook.com (2603:10b6:208:389::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.27; Tue, 5 May
 2026 21:33:17 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%5]) with mapi id 15.20.9870.023; Tue, 5 May 2026
 21:33:16 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Vecera, Ivan"
 <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "edumazet@google.com" <edumazet@google.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "richardcochran@gmail.com"
 <richardcochran@gmail.com>, "donald.hunter@gmail.com"
 <donald.hunter@gmail.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [PATCH v7 net-next 5/8] ice: introduce TXC DPLL device and TX
 ref clock pin framework for E825
Thread-Index: AQHc2IZaFwqh9v0iyk+UQevY0KxUqLX7AnGAgAT5QJA=
Date: Tue, 5 May 2026 21:33:16 +0000
Message-ID: <IA1PR11MB6219AC7EBC66AA5C69C03D90923E2@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20260430094238.987976-6-grzegorz.nitka@intel.com>
 <20260502173312.3849706-1-kuba@kernel.org>
In-Reply-To: <20260502173312.3849706-1-kuba@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|IA1PR11MB6323:EE_
x-ms-office365-filtering-correlation-id: 74d2b7c5-bb0a-4c69-e8f6-08deaaedeb82
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|366016|376014|1800799024|18002099003|22082099003|56012099003|38070700021;
x-microsoft-antispam-message-info: 4p6mEczGyuscRe2P8zszmET4GJ9RAoisy/dsHfn6NfPBV4SZ71kOqs2XBBEuZqVOllUszeFB30h2mH9KP9ayKH/Z3yrdsmut183jv0RSteFDaoJeOYZbICuD9gLPkkSvqNW8LDds6PfJZhWLYk3ZPsvwg7P1hrf/jjCSBqnhAmFA7WBL5RFKcGUUhZhN12Kvpi+4u9K/VoMP/FjDLMr56OGBuAamb5je/Q59k/Y/UXZz+50Yo23O3Wy0+IQuCusm2ZUzTqZFY+I2cD0zlpR0exaU069q+IxFRJUb0Zif3IItI9MiuQggqYZvZbIOpxGhcdhHYKkVrmC9irhmXqBY744kba3JNpqPGx0pgWcDxLGweZI2jb1+V7dLs+aLvGgqxZr4GZVTJKNFXy/D1lfEdJwzWv1QYSoY0d8e8toahDLay8orsSd4mM3JHvoNX5guBFa+qqDCiXIId7XJRBqrDmOxkbP2NzLSbX1tJG7jKxcLlEayMjbHH2rxW3uUK5s7arXTWRXUK6GQfdI6b8dPSX/O+zYGOFc6udxrzjlVjV4KTHiIZ8OfM9TapvyE5j29mgPBMfmFnfnAlJ145KbGWWMSiu2e6Yu/eoz0MnUPlgRSIm4eZydwQAsvturE92cPLorNNdBCnffB4slcr33quTtZOlfGQJa40UfLHhAxPH2kZ/+XIV7BBQm17IkwvZb62ztdpgmto0ST7yAIT087WiU9ro/XnB1L35DA4Yc6lBiaO5Bt8s82UddnhgJh+Hfx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NprCZ184HRb8UXJcD0aR9TCoaskeOF3Qq+QjicDcFcBsNllgQxuaE4sf28cN?=
 =?us-ascii?Q?DAwoIgSN6XFNeg7tg6pa8m5EhDSx57ZJg/3SV0JhzauPBMoBlBsyGLSAI4ZV?=
 =?us-ascii?Q?WmUGC/n/rF9d1GJYsqvh/1Y1KyT3AqQOWj1ESLAkDpVGpNqgTdyeVMTYvkP8?=
 =?us-ascii?Q?zFwC66me9TQnjD5I+LxmbjHJ4oPm12FEoEpGp1IzDYaZLU668TyhdU1o7Joc?=
 =?us-ascii?Q?gqUG9ep9ZajPBtC6SLjziG3xUVtZY7nEhOaneZyJCEQN6Zitd6Ewc6BXbwS2?=
 =?us-ascii?Q?cCFVes5aj1mu2zt2/orIeKkSdIMuaBHkDZYIG7VfnMxhR855PsESYFdH2meG?=
 =?us-ascii?Q?hWTQUwsAzM6Thhd1OGndJ3icI1wewbJqy+iYpJ1jh64GHQavvbECKM0yJUHi?=
 =?us-ascii?Q?0sambbvhqQPehKez9ym8z6vM0YDob92FqquhfN/dI3NGeDvXXuZiweMXmkil?=
 =?us-ascii?Q?m30xb0ajf9NiOGVZ7Nfmrnccg4KFc42nLjHWzSpReBoxK+9XPxwMpSe6UizI?=
 =?us-ascii?Q?Fc2d6ZV2HrIh5vDiCX+wvL/QplOwSAOT2IyhKa2iwCCDq3m2y46Ve0qf3JYT?=
 =?us-ascii?Q?dTmP2DOuLwEC9xrcoeTHzjd8i+3d2bxP4RkplQwxsxQD0phUovOlhr1Tt5aG?=
 =?us-ascii?Q?tUE93nu/Eq+QXtNnovzxakkX+sXK6vv5vV2j3v2dJmYQSQtJJABCSWnO3C2x?=
 =?us-ascii?Q?KQK2ahxkfjYIlKWkrJ+3gsmDZ/koI7NOHwWzIzBu+OaYJjTIDRun38E24hAz?=
 =?us-ascii?Q?yMH/hH0/ocILgYKfSjX5tErGf1trNYsFxxc1sMcSy6hw5L9BnNLifFzCcY2+?=
 =?us-ascii?Q?kfKsYXABUNxgcFB2IN4p8yM8AGC9ZWWW5fUtzeZSnDeBNE/uKtbJl+i/Cp6d?=
 =?us-ascii?Q?Y2mpqOajn6mNFDsHjC4UnaKqBSa3fR3K6u16sey2HVuNzninBYgFVTryAE5X?=
 =?us-ascii?Q?8HhGkMyVT2jLWt2dRi3jyYenWO9G7itE8jGUZqApFNEyBzVPg+Nyd+hOr1/0?=
 =?us-ascii?Q?8NYOK40Wv5e6+3iGvXDtQa0LvyPkAzrV5eJHBKNMaCpD4CXRia/vkxXs8RKv?=
 =?us-ascii?Q?n/JSuvW8eXLNEf3O/Ziv8kkg6myuBXtadBhxjOa4TTcXiDcWracICZL+49tY?=
 =?us-ascii?Q?t4eTbKhf9eEPhD/LpmhyjyTA5z8jvyP4WFrAM9oGuXzlAKJeMxPwRgdbVGEb?=
 =?us-ascii?Q?OX0PLASGRhRuP5832xUvQ27SPFM4/KS1Ho6LOxoPQMJ++wWmvheKIZJBODee?=
 =?us-ascii?Q?Mtb4QrPoJTsESaP3CaDlgP0It7/+yt759TX3e5Q4fGkpZ4pTtGWo52dNFdx9?=
 =?us-ascii?Q?s+XGhno/2b+1EIdROSxj8foN98Vvde+hDy7rqb+FNUAh0dC4WHp+uQpIBWwU?=
 =?us-ascii?Q?NsKlX7ovGeuD9V9YLUkJe+gjuu8a9S199eBKEt9amg34WRviSs7jYmYZxBBt?=
 =?us-ascii?Q?ip/FO4yQdRTqkd6g+ijBqZdoAvxQJuCu7aE3YtelPu43djTVdamx8p5LQe77?=
 =?us-ascii?Q?JRJh07vZSRbKhTcRone/zJleoVu13raPWY5ZDX4Q+7QyTgt2H20n0f3/Yp3T?=
 =?us-ascii?Q?DOIi3txTN6kDfDiJLV0DusN77NhjgzgAJWtQyD97QEvFaT/BJzEFZJb5FUw5?=
 =?us-ascii?Q?b4ZcHleVxwLtGJrl0THA5U1Qjy1i0TYEufECAC5mb7PnuT8RHYtYoDsquAeA?=
 =?us-ascii?Q?ihEHVBf24G7WoemBviedL61gEcr6JBjeaUDu6y0nUAcjjLbEI/Et9cJBClYU?=
 =?us-ascii?Q?sCIhZb6MDg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: lom2R+NbFRaLxZtVyGHaV0gdEmM+66LIAhNMlsBISHnPchUFlur5q0u7iI8Nc6L3VNJHhunE+ivpqqTuJ/YSjK3/LoSTP6fcAkvG46rzqWH5Y24mC2PLFc2XGZM3s9qaJ3vBAl3chJXfptDDx3xruXEcz1cCco1j2vxXN6Ttf0pkid723clNzCLE/Hd+/z+bHHM6Srd/dKmjBVZoyHmGFE2I9hpMRtMSFYQ3k+OGh9NFySPj3JlSwSMRYeXorqoyoWu7+wWYpsqW3zxmMq7qF/gxSJqkybcrsmLarjFtkX7TNUKFYqb0lCgn0N0XY+jXy7OPAdKOrvukrsabq32pow==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74d2b7c5-bb0a-4c69-e8f6-08deaaedeb82
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2026 21:33:16.7846 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3Fue/NOgZqz9sCMdglSaWwty1HdknG0/DxXr1S1lE5Ichhtbs4+1fCc45iVhh/VpJqpLEdedhEsFZgga1TxM2AI7c4cw+resvm1Pu774F5k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6323
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778016809; x=1809552809;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=V/1hCF2M8P9imWjW5W1OMSvn89SklrIuiWyQ/KzjO+I=;
 b=Xd2GGYzmCUVjeeZOCQxWcsuieYEjaV0J6jNkDG+viLVTd6P4ZTcD0lMx
 rojVhe6y2OyTvabokEK23BIfml0zNJMctaR79hNTtfg4E4s0HrGne736B
 QAnhkXGfq1LYkYX1rMlbVWC13ZuNcK++C7ip4TWMQ64nj/Hs+p3VOFwzV
 rMVeT8/cux/NBaUCfrwtccT5kV2mq05OPWSusqpukHr2Be9mITen9xjJ+
 vdyig0HskyO0lUWWnJJb+SGZ6dlNUZ2/wstFWYfVFwepDwrX5vxkDleRF
 RLKj3YWkMHvJPgcjGLrtdcD81y5zVdsWo2kwCukUOtda8H4EGiRcwrW+F
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Xd2GGYzm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v7 net-next 5/8] ice: introduce TXC
 DPLL device and TX ref clock pin framework for E825
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
X-Rspamd-Queue-Id: EDA6B4D3EF9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,redhat.com,linux.dev,resnulli.us,google.com,intel.com,gmail.com,lunn.ch,lists.osuosl.org,kernel.org,microchip.com,davemloft.net];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]



> -----Original Message-----
> From: Jakub Kicinski <kuba@kernel.org>
> Sent: Saturday, May 2, 2026 7:33 PM
> To: Nitka, Grzegorz <grzegorz.nitka@intel.com>
> Cc: Jakub Kicinski <kuba@kernel.org>; netdev@vger.kernel.org; Vecera, Iva=
n
> <ivecera@redhat.com>; vadim.fedorenko@linux.dev; jiri@resnulli.us;
> edumazet@google.com; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> richardcochran@gmail.com; donald.hunter@gmail.com; linux-
> kernel@vger.kernel.org; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch; intel-wired-
> lan@lists.osuosl.org; horms@kernel.org; Prathosh.Satish@microchip.com;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>; pabeni@redhat.com;
> davem@davemloft.net
> Subject: Re: [PATCH v7 net-next 5/8] ice: introduce TXC DPLL device and T=
X ref
> clock pin framework for E825
>=20
> This is an AI-generated review of your patch. The human sending this
> email has considered the AI review valid, or at least plausible.
> ---
> ice: introduce TXC DPLL device and TX ref clock pin framework for E825
>=20
> This patch adds a new TXC DPLL device of DPLL_TYPE_GENERIC for E825
> devices, together with a TXCLK pin type and two TX reference pins
> (EXT_EREF0 and a fwnode-described SYNCE pin). Pin state callbacks and
> TXC lock status are placeholders at this stage.
>=20
> > diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
> b/drivers/net/ethernet/intel/ice/ice_dpll.c
> > index 62f75701d652..d839b50187ba 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
>=20
> [ ... ]
>=20
> > @@ -3199,19 +3276,40 @@ static bool ice_dpll_is_fwnode_pin(struct
> ice_dpll_pin *pin)
> >  	return !IS_ERR_OR_NULL(pin->fwnode);
> >  }
> >
> > +static bool ice_dpll_fwnode_eq(const struct fwnode_handle *a,
> > +			       const struct fwnode_handle *b)
> > +{
> > +	return a && b && a =3D=3D b;
> > +}
> > +
> >  static void ice_dpll_pin_notify_work(struct work_struct *work)
> >  {
> >  	struct ice_dpll_pin_work *w =3D container_of(work,
> >  						   struct ice_dpll_pin_work,
> >  						   work);
> >  	struct ice_dpll_pin *pin, *parent =3D w->pin;
> > +	bool is_tx_synce_parent =3D false;
> >  	struct ice_pf *pf =3D parent->pf;
> > +	bool is_rclk_parent =3D false;
> >  	int ret;
> >
> >  	wait_for_completion(&pf->dplls.dpll_init);
> >  	if (!test_bit(ICE_FLAG_DPLL, pf->flags))
> >  		goto out; /* DPLL initialization failed */
> >
> > +	/* Decide which parent we are handling, defensively checking FWNs */
>=20
> [ ... ]
>=20
> > +		} else if (is_tx_synce_parent) {
> > +			/* Register TX-CLK SYNCE pin directly to TXC DPLL */
> > +			pin =3D &pf->dplls.txclks[E825_EXT_SYNCE_PIN_IDX];
> > +			ret =3D dpll_pin_register(pf->dplls.txc.dpll, pin->pin,
> > +						&ice_dpll_txclk_ops, pin);
> > +			if (ret) {
> > +				dev_err(ice_pf_to_dev(pf),
> > +					"TX SYNCE pin register failed: %pe\n",
> > +					ERR_PTR(ret));
> > +				goto drop_parent_ref;
> > +			}
> >  		}
> >  		break;
>=20
> [ ... ]
>=20
> > @@ -3401,6 +3524,19 @@ ice_dpll_deinit_fwnode_pins(struct ice_pf *pf,
> struct ice_dpll_pin *pins,
> >  	destroy_workqueue(pf->dplls.wq);
> >  }
> >
> > +static int ice_dpll_deinit_txclk_pins(struct ice_pf *pf)
> > +{
> > +	struct ice_dpll_pin *synce_pin =3D &pf-
> >dplls.txclks[E825_EXT_SYNCE_PIN_IDX];
> > +	struct ice_dpll *dt =3D &pf->dplls.txc;
> > +
> > +	ice_dpll_unregister_pins(dt->dpll, pf->dplls.txclks,
> > +				 &ice_dpll_txclk_ops,
> > +				 ARRAY_SIZE(pf->dplls.txclks));
> > +	ice_dpll_release_pins(&pf->dplls.txclks[E825_EXT_EREF_PIN_IDX], 1);
> > +	ice_dpll_deinit_fwnode_pin(synce_pin);
> > +	return 0;
> > +}
>=20
> Is there a teardown race between this function and a concurrent
> ice_dpll_pin_notify_work() that is about to register the SYNCE pin on
> the TXC DPLL?
>=20
> The work's registration path runs:
>=20
> 	parent->pin =3D fwnode_dpll_pin_find(parent->fwnode,
> 					   &parent->tracker);
> 	...
> 	} else if (is_tx_synce_parent) {
> 		pin =3D &pf->dplls.txclks[E825_EXT_SYNCE_PIN_IDX];
> 		ret =3D dpll_pin_register(pf->dplls.txc.dpll, pin->pin,
> 					&ice_dpll_txclk_ops, pin);
>=20
> while ice_dpll_deinit_txclk_pins() first scans pf->dplls.txclks[] with
> ice_dpll_unregister_pins(), which skips any slot where pins[i].pin is
> still NULL:
>=20
> 	for (i =3D 0; i < count; i++) {
> 		if (pins[i].hidden)
> 			continue;
> 		if (IS_ERR_OR_NULL(pins[i].pin))
> 			continue;
> 		dpll_pin_unregister(dpll, pins[i].pin, ops, &pins[i]);
> 	}
>=20
> Only afterward does it call ice_dpll_deinit_fwnode_pin(synce_pin), which
> unregisters the notifier and flushes pf->dplls.wq.
>=20
> If an external fwnode DPLL provider emits a DPLL_PIN_CREATED for
> clk_ref_synce between the two steps, can this sequence occur?
>=20
>   deinit thread                    notifier work
>   -------------                    -------------
>   ice_dpll_unregister_pins(txclks)
>      sees txclks[1].pin =3D=3D NULL
>      skips SYNCE slot
>                                    parent->pin =3D fwnode_dpll_pin_find()
>                                    dpll_pin_register(txc->dpll,
>                                        pin->pin, &ops, pin)
>                                      -> adds to txc->dpll->pin_refs
>                                         and pin->dpll_refs
>   ice_dpll_release_pins(EREF0, 1)
>   ice_dpll_deinit_fwnode_pin(synce_pin)
>      unregister_dpll_notifier()
>      flush_workqueue()   /* no work pending */
>      dpll_pin_put(synce_pin->pin, ...)
>=20
> After this, dpll_pin_put() only drops the pin refcount; it does not call
> dpll_pin_unregister(). So the TXC dpll's pin_refs still contains the
> SYNCE entry when ice_dpll_deinit_dpll(pf, &pf->dplls.txc, false) later
> runs dpll_device_unregister() and dpll_device_put(). Does this trip
> WARN_ON_ONCE(!xa_empty(&dpll->pin_refs)) in __dpll_device_put() and
> then
> free the dpll_device while pin->dpll_refs still references it, leaving a
> use-after-free on any subsequent walk of pin->dpll_refs?
>=20
> Would it be safer to call ice_dpll_deinit_fwnode_pin(synce_pin) first so
> the notifier is torn down and pf->dplls.wq drained before txclks[] is
> scanned, or to hold pf->dplls.lock across both the deinit scan and the
> work's parent->pin =3D ...; dpll_pin_register(...) sequence?
>=20
> A similar structural race exists for the rclk path via
> dpll_pin_on_pin_register(), but this patch introduces a new instance on
> the direct-on-TXC SYNCE registration. The ordering in
> ice_dpll_deinit_txclk_pins() appears unchanged by later patches in the
> series, so the same race seems to persist beyond this commit.

This is a valid concern and to be fixed in the next iteration.
I'd go with stopping new notifier-driven work and then tear down DPLL
registration and references.

Thanks

Grzegorz
