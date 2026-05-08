Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uFxNJa4C/mlYmAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 17:35:10 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F14584F8C4D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 17:35:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E70284407;
	Fri,  8 May 2026 15:35:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zHGX226zNy8d; Fri,  8 May 2026 15:35:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A66C84433
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778254507;
	bh=XE3i/9ha7va3WnCxX6W4pfJ52QJS9rKc1F+6fDRcITI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Jayu1fW93WCjecyI22SvCF8iiC8NR5zTttg28E1UYqW4TbNcsXmd/YYepAYgm3qb4
	 OtBgv9M7z2MQJpaPH5ZXMQ5031pJzfPqYnAcyRO05ZLR523BtL6GHQoAV8YHvMjCoy
	 NGX7kCUTH+Aq+lwj6Oj2ZWylLkLRLrG06Jg2yXGDqcYUwf8a4HCzsPsM1tPvmMMZce
	 9/tHk0KM1Bs2ZXB0vZOAAwreApIG2erlqeCJEuoK2NijwaNEjQehbGzDiWSUDfvQ/O
	 2N3mL27R9/UFthczYn1xv6R1F8rZ6YDUFqhiTA5tohBZqLQ9Vir+1LEKBvTWURQ3ee
	 pZDi3h9QCE4Kw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A66C84433;
	Fri,  8 May 2026 15:35:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5053A317
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:35:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 41E1040F1F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:35:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UzjARxa6GZZT for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 15:35:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E60964059B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E60964059B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E60964059B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:35:03 +0000 (UTC)
X-CSE-ConnectionGUID: eyCMunQ1S+ilvhvsNBXKig==
X-CSE-MsgGUID: lMhB4X41T/2pWFgzH96O6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="81791105"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="81791105"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 08:35:03 -0700
X-CSE-ConnectionGUID: P1Glkz/tQmaUgnE+olrB2A==
X-CSE-MsgGUID: jAMsJUdnQKyWfXhaeTLDOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="260527950"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 08:35:03 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 08:35:02 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 08:35:02 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.32)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 08:35:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CCASg7vhNBBrtQPvubpq0QZYorNG2AWSuwZB9QetE2DAqAMGb+Gg+oB3qMrWN+KrocOk2aQFAY3U2pMPLDKyCaEXOEleIvDvN8sNcaMmO+iMzCFsJv6GhSNk5Dz5xscimuebYXmacxcnKb6rGOdilUmDpR3KS/JBd1hyrVbIa6TTAOUkTIya+PGskdkiYHP2rrKd/1k+9OfFE3fiDMFgxIeZ9hEfmJoRmi8mnV49g3h1PuxSsTvsukzph3fdYU6BG8INE84TnsiVYDNl6FoYHJP8xmxXzSLNCtmKoZH7jenu7FMA6UAw/TcwJuokRhHBolas0WI+rTmDFgYVC9XyBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XE3i/9ha7va3WnCxX6W4pfJ52QJS9rKc1F+6fDRcITI=;
 b=KE5p1rZW1eWM8UNBYVxxCQzkxUw7DO/R5MADMHnPQHe6kFEk61D6yl539zcT8wwbNyhFutzleXewyLfoZrj0iX40Z1gmIj5lA6xQ+Ffuehhs0viJgV+cn/5rwgciCMoyNtFZcaZ0lwiP+GM+1azc79FzGphFKAZkON1G7pRQOecu6iovyD0tSS1qoU/reI6KHWE5Q0gUZS/SZGWUX16V/XuIaHi2vlrzMPS7nWPMlDgU4XNaMd9zT1kl3kJ9nzlS33pHdHqeFWFqg7p1h5IxyP6BUUeVBmBflO6peynj3chFHeB019gXU+5FkqS9LZgWUus+0CB4n0Qeo4I6ZusQzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by DS0PR11MB6544.namprd11.prod.outlook.com (2603:10b6:8:d0::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9891.19; Fri, 8 May 2026 15:34:57 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%4]) with mapi id 15.20.9891.016; Fri, 8 May 2026
 15:34:57 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 5/10] ice: improve Add/Update
 VSI error messages in ice_vsi_init()
Thread-Index: AQHcyL6lPDuetExkPEK1/2IddLeLuLYEbtcg
Date: Fri, 8 May 2026 15:34:57 +0000
Message-ID: <LV1PR11MB87903D7899563615F8FAA930903D2@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
 <20260410074921.1254213-6-aleksandr.loktionov@intel.com>
In-Reply-To: <20260410074921.1254213-6-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|DS0PR11MB6544:EE_
x-ms-office365-filtering-correlation-id: f96467fd-d874-4780-dfd2-08dead175c30
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|38070700021|56012099003|22082099003|3023799003;
x-microsoft-antispam-message-info: TNVyJ4oC6Hz/d9D367n4ABXkCEyUvxiLQriN7uNFtlb6AgcYzKGl7r1LG6NBY1EhbAgBNu7qeU8+6TK4s28KgAGohtjfjKt1Gd7r+8+4zxSUjqSxXs3UWHjfMpsGmIiiBJJq1srQAoOnr2qL78D3nOsAK+J5dfqtId1hQz7xnZzpm3DTDO/S/zcMC2EpdWProN3q1abEMp06cN0ZwiwcmW1S3QnsthFNdTLwXol+BLz/lD6hNndJSsc7qArp7YH+TiS/PoeGkuRC/9FZ2U1QO4ddYAVpDtpciUlj8IoC0oMj79FVEE1stmUSK6dYGo15f4h8UN39LkwaAJ5GLPR2XnZDYhdMcJzLkgggE6N/7t0HQj2NqszXETjo7bWFxHjpUnlm9IEkLN0XMQtTWbZQB3unzfjdhECQb5aL/NX5TrEitU6rCMzz+iVfcPeTXwFjy52gChqPBkWG6YL+HLg2nEgm4kjsicV4OPVlR9ZiyN6jnoK27FzeDAqqZGlymRhu6153EddiV/mh8wuyKeUg1D7JnxXom240XYzlPsXcaiGX6R8nr68EBrmwa+m4aIPIow/8ZcPcbapciUnU+swDmaCrZLhB4O9aOibG9WB0Ew745Sr/Ydo2is2/HSsqMwL6Ei1wvc5GGJ6reYA6QlHZ96c2JSCxOmRApOe2ykw/UsqAfMEMS3L9sdCuxxaVVJEGhSz+RgrICAgFLGGY1yfmHh6GvCS++vU/cu8/lcaxo0uL/ynsN4L0Vgu+uSxzKKID
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(38070700021)(56012099003)(22082099003)(3023799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jZ+1diefXJJQ2SWD6cjr88rIVSX3pbQLrQ+F1LHMto7TQOWpCIJFjTVTPapW?=
 =?us-ascii?Q?tO9bGGLKv5mT8A3r9sVYIfvgAx0xHZtljZTaVDJtcGWq/s0VKLSjHaGZ+eAA?=
 =?us-ascii?Q?0bwUDgml5mn9M3wZyjZR26v4kLpxd5vmgbyTwmsTTzAcVDSqoij6TGgQ2t9k?=
 =?us-ascii?Q?L0rYesG7ZtIKrmBydDg/jaM4z1jZw4jIynC0vRkPloo/sPsdswGMZqolvxCo?=
 =?us-ascii?Q?xw0e/8ZxNuxfx9boEJx0BTckts+DhzOGPwJhV6yPPow2/SRBQcxKMra3rOwN?=
 =?us-ascii?Q?s/eVLw5uCVOE7HwG0esPnPMqYSHlBqpctdKQpVNwdzOVMcc2BJLlzcqXJuZC?=
 =?us-ascii?Q?czAuhAPuCJVoytYIGk/dW6AwTZak7kBNU16JQJ1Cjx3Dm6uh0kQdnH2OfpXL?=
 =?us-ascii?Q?pJF06bPbBswfVy7c7A337fv6r5OvftlgnrRRK63OZlCqZeafcP88tq+rqvwv?=
 =?us-ascii?Q?YGO2AwSvgLlbP2CnvRG4Sfbp/KQPRgDJx1t4xl6oJseRuP4eeRO3lJDe3ma7?=
 =?us-ascii?Q?8nnzWMoHR7kJwFzX0LQC+HUdWf1OrXaUl3ZtDUFuYmBKlTheUOWJrf7/uMOW?=
 =?us-ascii?Q?GZvKbAib5PTS9sQHChYO1PB5G88qf4Q+GrCAks61GmVInpyaW1Xf34ED6UJT?=
 =?us-ascii?Q?KHMxhTWcsieuB1fq11nMfKnpgVaWtdqR4Ce5YTAuXImq3ZSkh28fU7ECqsnb?=
 =?us-ascii?Q?iNYp1HsQt4kAUpKnHa7XjDpBpD2OwWBhqdY0kiLr18zKjYNxejolXqtKv9+5?=
 =?us-ascii?Q?p71N1qwxsBGMDGS8NM9LLXsb9n29lhayWtxD7W0CUAXB5MnoAj1JAN5NJxLi?=
 =?us-ascii?Q?I0bNJP4d2V8m24sI7eAFjjojt3snO8Spdn//H7EHilT546MFJFqvNbodAXg7?=
 =?us-ascii?Q?FteMdlgU2nHISYxzaB2j+YBIImPYxNarglZBiBozkj0EtFwYvasn3dz+JUuh?=
 =?us-ascii?Q?yjC/Fmc1U1J/rFZUZiL2M54HrRLelvj58WbUw41icxLUVgCOyEFqH16QDTOC?=
 =?us-ascii?Q?FzGWHlFR/D2oHjXT5IomLjaOFvU1+DzKPf0jJUD61+VAJn0vUB9riWiiCvn0?=
 =?us-ascii?Q?4gES2593s6XfYWMWi6ZaA4uVo6gZda0V14l0YQqczPW8v9ftqkbxlLnlYz4J?=
 =?us-ascii?Q?58bGDM8RCnJNRDLamAAHe2q5/whhvBoIBAn/oLRROrFoYqMMLFLqw9F7j4Cm?=
 =?us-ascii?Q?nUbmjU+HBBSEeP9KJ2MI1qB4E5MlYD1X8PQgaIC2Avk0nO7ps1LuQVEirqtv?=
 =?us-ascii?Q?etr1u5QmwmCX6zAeDlRMTyeUGQNoaNSLDkHz8w1H14+84FnXfqlGDCWMgmVM?=
 =?us-ascii?Q?oPVT9WPP0i+inX7SvwNWtvFpP1c3RjpgK7jU49p75h742sIwZ3KlztLrBBGT?=
 =?us-ascii?Q?xxLwOUyUhssXEzOWP/ntMIPVChs9ovnHapsprPOdfbC38YiLVh8Y0MP0Lm9N?=
 =?us-ascii?Q?/bsT4JCdHvAVyLQOGuoKxLUeJT4oxDhqjmFqYumpNQJ/oNg4hn2bdz65V0Ok?=
 =?us-ascii?Q?rtNygIpwRi2xGGNSwc6YKDK8z3PF1rhK6ukzB0loZdOUdOThWc+Pr6q9CD69?=
 =?us-ascii?Q?OxwLoxrrSA4pomo9Rr5z+zZtb6br7Gl3GSc9dGqzWWABliKDvJjBYVN8mxkN?=
 =?us-ascii?Q?8eY/XNVFDjfV+2ixsrEqAFg6kAjUMr80pzdSQPmTl17VD69j9T1Uexh2nh/L?=
 =?us-ascii?Q?HOk7ETHUxFCggpqfUL3OQRx4GcXf1arudfuw+Ma7mpJlhnokodKN6ubomT75?=
 =?us-ascii?Q?Q3uMBxEMjA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: HVyrUzdmpiAf8Xbl6TQYRKWL3ea78N+EeVLW8Q+JI357JxamvahqpvhGkLlTGUISBy+fsfMfaQeNtb2cU2KdttuRrUyPMMnhl0MM7T+a7P6d+phLQ2JA2c0cMzdFnvrMqj91/MrLl4usXxrPLuDDzyQNvcfkdLyooVdLIipQCfs5CZ8duZbxPVlnipw+oHacUAEcHiREh9+mP7P9MSmZvuUgYikPvUkB1ylDFmusXimLwTwbn+HPorUpoTLrBDOo0BzPjP6+7TpZfdD2bkFWjS0aTUY7sjhRsGtGp2sqLPLFl57/uIqSu6Ohd6IaBxppZzkKBPoMCMwjsL0UZBtkcw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f96467fd-d874-4780-dfd2-08dead175c30
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2026 15:34:57.5109 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pQCwKzZRZZT2gU8Y8lf43o2qgDbjtzmMCBJ1XtB54yL0lDyvauLcKKk8RTrQuDgFs87l3XtTR6tZMgjI4ypIt8jtdS62lUMVjyNkWXMG7PE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6544
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778254504; x=1809790504;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GNKtywnWCSXJXBOjmt5bTTcVeOKc+kRLZ4ifCNJtZy4=;
 b=Z6oyhxTq9B3QIFnxdSfAzbZ0SSORo+gPY8miUm/17U1HjgV8wDw9a7Ib
 Zsek7P8UCIIDf87kpgorib4D6CDRHjvheAV82JUnDJ+uPqqi5ttM0nku5
 iR4mj+hb0+a+Zdlp1fJhJPkcI0bPt/FGzlOrCpdmKlReUK4pkbt+I8Itr
 siIDLfWiRmAc8kvx1vRsn/CdKmTHLzEcXhVGt/tdBXmcYioaQXu9jeqTt
 p2QIt8sMwufJhHwq1mqB6Ov1o3SdiuEVmo88/Z5ogCIGqwHoe/OGLm8+j
 lzazMggdEcWAmbdG88kUFVndsziHnUB6AgMme/hzUtbJnHt+oF67MoWwK
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Z6oyhxTq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 5/10] ice: improve Add/Update
 VSI error messages in ice_vsi_init()
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
X-Rspamd-Queue-Id: F14584F8C4D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:email,LV1PR11MB8790.namprd11.prod.outlook.com:mid,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: Friday, April 10, 2026 12:49 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next 5/10] ice: improve Add/Update =
VSI error messages in ice_vsi_init()
>=20
> The error messages emitted when Add VSI or Update VSI Admin Queue command=
s fail are missing the VSI index and the last AQ error code. Add both to ma=
tch the pattern used elsewhere in the driver for AQ-
> command failures, which helps narrow down firmware issues without requiri=
ng debug logs.
>=20
> Signed-off-by: Eric Joyner <eric.joyner@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
