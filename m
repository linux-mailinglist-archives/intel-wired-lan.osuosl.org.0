Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OIEXDEZy72n6BQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 16:27:18 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFCD474576
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 16:27:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2131161CED;
	Mon, 27 Apr 2026 14:27:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i-dMBiwMfh86; Mon, 27 Apr 2026 14:27:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 22AEB61CF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777300034;
	bh=lRBmpxPEC42T5m0YVgIXyuO0Xn/1gjxZ5zii3QmNOuM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M6UHDw/6ZbgMFEErjtsCcnLih0syJwSgP0W0CvEJwPb2E5TDoPMhjIlchpM2f0ohH
	 FU3ByhI5nB8sA1CHMM7jbBiDdWCAQG1voSpEAhZQc9z6od1y1U+SNxxGO/eAW1fjbp
	 JZMh3y4EG4iEVHrHLZSBopT1CDXCkQ/O2uEJBEGMwZq/bv5FiUgdtVp5e/Y2NxZ2/e
	 pr384aBgAhMdq0x0+xx9iLFBSHqe/rX3Ok0wJlp3UpI98uhQgytMoHbrnYSRolnr2/
	 82+og0Y9J6cEubsPNHXgW6uOpPic5vpOdQXCjjkfg/cWrKmR/NW6oMFvoiIZkKWC/u
	 0EMcNPyvTuHgg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 22AEB61CF4;
	Mon, 27 Apr 2026 14:27:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DE2501B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 14:27:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CFD1642540
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 14:27:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VZDTga864rYB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Apr 2026 14:27:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2C21542F1E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C21542F1E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2C21542F1E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 14:27:11 +0000 (UTC)
X-CSE-ConnectionGUID: 6x7RnTMgTe6pR8oTZXr9/Q==
X-CSE-MsgGUID: pTugQtbWTqmmSF67XtH/mA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="77215516"
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="77215516"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 07:27:11 -0700
X-CSE-ConnectionGUID: LEfUB/cuSnCKzIDYnfo0pA==
X-CSE-MsgGUID: sOPZ87LhSgOjEXbZkeC4Rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="231015726"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 07:27:11 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 07:27:10 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 27 Apr 2026 07:27:10 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.51) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 07:27:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PZkJn/gbTJYAtXx+lJwXLguWtgpZYyVHiH9FKf2dyrjXIwhzYnoVjh11C5ovy7Z7n+HqZZPqkP8i1AhixYI0RwZNKOH2Lu9z6hxLowA19xxmPAiUINae4ftCNXOjjcXH4qk8n04/eQgFg9SvPi+dImgqeXtiVda13gsUfkW1KSjCVHxkjT01NcgF0tF1vkkF6Zm+QGKhOJX48McF7nVrNqLlCXKux8bC3eHQaej+4FN7Z81VLnPNOO6qxhtDNnCSdyAarm++dpNERLZdwIeTRZBGYMCUfqm++R69JgYLFtGGtzICVG0emW8XCwJH1sQaKywNgILwa3ijGGHYvRut5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lRBmpxPEC42T5m0YVgIXyuO0Xn/1gjxZ5zii3QmNOuM=;
 b=hNsm48af0qm9D8VN/hnY5XSQPdRFGOfPfEEkIyaWDgqRQa4pUc/WqyY7kBj4hc0y9tO4EhbOB34FkPmMrM/0wEOy7u7USd06VWBkQ2z5TID49Pqa999M689OMGVEzb9bcKqmX6XdHLDbwcAHZsdeG8wkByizaSrg8AFB4SCxhiDg/AWXZbJXpM2NRc5mjbUw2Yx2WEwvsz6lltwkMe2dTy0UwEn1YwIIqOBhzTOohiKhwafNkhKOwGK4Injzj8PvV/j+QYaqllhckYtTqdkCL3SU/UVgQF6ualZWywbSBixTXgMu2xkGfCHyqT/4YdwbVdcWmi1HcmWDqEoVJlpfmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7378.namprd11.prod.outlook.com (2603:10b6:208:432::8)
 by DM3PPF4AE904FD9.namprd11.prod.outlook.com (2603:10b6:f:fc00::f1d)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.25; Mon, 27 Apr
 2026 14:27:07 +0000
Received: from IA0PR11MB7378.namprd11.prod.outlook.com
 ([fe80::7b0c:7df:21b8:dbbf]) by IA0PR11MB7378.namprd11.prod.outlook.com
 ([fe80::7b0c:7df:21b8:dbbf%3]) with mapi id 15.20.9870.013; Mon, 27 Apr 2026
 14:27:06 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-net v7 1/3] dpll: export __dpll_pin_change_ntf() for
 use under dpll_lock
Thread-Index: AQHcznrQNjPiXpXsHk+M7alWwvoiw7XzBhPQ
Date: Mon, 27 Apr 2026 14:27:06 +0000
Message-ID: <IA0PR11MB737836335E02893D26AFC52C9B362@IA0PR11MB7378.namprd11.prod.outlook.com>
References: <20260417145907.696307-1-poros@redhat.com>
 <20260417145907.696307-2-poros@redhat.com>
In-Reply-To: <20260417145907.696307-2-poros@redhat.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7378:EE_|DM3PPF4AE904FD9:EE_
x-ms-office365-filtering-correlation-id: 4577fe17-f84f-4ab5-44c4-08dea4690f2c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: xne2dgVnKHlKrZXPCZgjTcILry9JLBZr6tmNfCdZTeOZJuxA0p1rZEbOXuBBURcIIrsd0kg1Txr9a6h4To5dH4Jg6RmXzel5h+YuYNIaDQEztCKEXFAYoUzO1VB9Nw/MKwsSJFytPXuvLCfsuHnnkx/j5HUQOJyJG7vKzFV3gsz0n26BKPDuQJISAu0Z0RFgOB/sRf57xO0xYwE5MPIKeGnPE7+xcY86LYcDW+3UDKgz6ZljQY3GifsaQgQM5u07X3MZ2CNYf/KKFfqYZ2OIyJ/75ydKZzEYuJ3VrTMmUL83nCIHXFtgU2ecgJb1puUSx6WYONFtFta5rJiddw+sKv+v1yDZ8svqkAqeiNPxjsbIKq0yjS0Xl5ZIFXzp/fI2onag81s3kprvBiskgBTqFoUdMB2BShE3HPrA2rEW8XsIq2aXQTpO/JwbNzhohAzQqJXwhA/tDMgEyOhzYm/VMevBZTg2sfnCUNk55X1j98tJ1OgDvlogUp2tIAPiSJH/WAWdhjyUM+AGDK5H5L1HrF9hoDUO/bVad9t9vzw6gMzgx1nkQgzd2zvIhReppT1n8rhN3wtHdg1KtXoWh5IVOdjcPQsXzcqAonXDEnspeep0vKyujZxVtovspKYdaQFCDUi/STcOyxTOpvMQcbTrKO+UFQUGHWGBFSPGbivOQsmBsw6scVae2wuhTZZ45WEnPvnEPcrzEMsEaXKXFe7HrF4Yx1eBlHEea9f5zOSo/Dp8knUnuXgTxF0vXpxpAqVXe0Vq3hi4yhMNXoLn6ICh9BF1qnbZG+EIMTIKXnKUSSM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7378.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HkyeUUuePxyt1tcMTeYYj8g8p0gE8jCKZ1IBSrIenbn/rPSIqKHPwpk5hAxP?=
 =?us-ascii?Q?r/82aSR+krDJHyXnkR9bn9AfCFJ23NrivMqO0EaS1LkMUZ4UyK0KX3abfvaq?=
 =?us-ascii?Q?fx3Kb1g4JmcDBcng18obGnkATOsaczqcuHPZB9VuIWpHkDjxMEda4MRYmMZN?=
 =?us-ascii?Q?UCLOfgowR99kGU0EzaYpB+3wpz4w/9xFhorTDe7ss07CxQsExrosDqu9PQTY?=
 =?us-ascii?Q?6Q2ClLry/H/1r+yFt+NgSCWmh/zyczhglyOnxSYJ0A081JYDX1JkXA9OxUnf?=
 =?us-ascii?Q?Z7MxoIx4t6BwTDcZ5+5LxPXdptW+OnKoosceK+Qa2EM5jyE1R1cGyCNCngWK?=
 =?us-ascii?Q?eDB54zSMCU5+aJJPjTvx6uRgBakGHcufHkTWMn9x+VhPC7e3SQm8PFEH3maN?=
 =?us-ascii?Q?sNgFapwo12uWm5/7Etwp+61E3Qs/1drR/kBLCywhHrQmqkB5OC3KIeKjxzKC?=
 =?us-ascii?Q?4nXs5nu9ruBWeuOifcwl8MCjX/XCQLQBbZFZF09HyN1i0AsZGYxSPyaiuYzQ?=
 =?us-ascii?Q?a3T1TOKTF+mFFncmVOo0HjQmpDMloFr6WK0tS0dskOuFRRXV8tBjUhgv4IqE?=
 =?us-ascii?Q?+yiSDPLIZZIbekzl36Qxp1jyZa8czsVEhw8Z298HM6wiXGaYGP92fqsD3U2k?=
 =?us-ascii?Q?/rjSfPjnC5fpkmxj4HouvbfOueDBS1L1Ckjj6L1zuIwuTBVElOz9pFvmkVF/?=
 =?us-ascii?Q?7VGQn2neTPo/y3v1NpXrhOZWrqgGK26TNQJgfsglSdL2JybH2rphNAWTU1z6?=
 =?us-ascii?Q?bkztS4NzFxfG4Gd+e2+es8ld2j1RlMRrRr3K9rIVLIujeCCSjAb8jIVj0xic?=
 =?us-ascii?Q?izHLC7HS1s2UpyeRUpFfeJC6kgNsqHNgICYJ0iIydtfFkNG5l3VBr4wDraXX?=
 =?us-ascii?Q?WAKdyoU/zOOabZ4rjnEdBRNRCrYiqPF2+dkUi2SjlVdpTsoyBJFA892iMGpf?=
 =?us-ascii?Q?COsLPIQ2I7n0HgGo7/U+Ym9ouqXIKq69olGsqrUOFZNJp3bIFtLGCm9CLAgG?=
 =?us-ascii?Q?0XsX1OelJS0cDoE4HJUjERzcfnaNaiV67a5aQfd90c/yRO4rnyOQie1N6MiG?=
 =?us-ascii?Q?Ci1ebNabTthhD1kvYNHnlUPQal/ZzhXOoOo4p87UuZOT4BJZCoWv7zlaTlXW?=
 =?us-ascii?Q?nPlYAhGlFPK0WGZziD+7dp2Q21lCIUbPxaKtQXvsUdvFgg1sJnKwZ8Ml/eTs?=
 =?us-ascii?Q?v0C8VERW6q0ohUVOHdUbg/tAw/meU2UFlwHhAGWS9MniyZdjMUn7RYq8ZoTC?=
 =?us-ascii?Q?2STWYdadjspNWR6gFTQSRlh9smXJpJ5GvkKqIyu7YltsvYPAo4jmbRtb6LNU?=
 =?us-ascii?Q?pNXoUjrrwLNi7k3NTs/tnBeiEv5jFlvpWz7d3yjFt7V4r9l5dfhDbAiT0eYG?=
 =?us-ascii?Q?T0JMUoyXF5j/Ib2V0XIrEKxxvOKCmGfqtKhN2xTIm24qir2GC5tcjQaCAPhf?=
 =?us-ascii?Q?a6QPCvJ8nsdRCHXjZz09puzweahSu7lik6vBt0eKtdF584HOlOHOupBNxvlC?=
 =?us-ascii?Q?8Y1nHnUzPma8v9f0MYU5tWnEfT9YLGXmUvYdV3nCARF8KVFYWpy2DkZsMx6s?=
 =?us-ascii?Q?nZ7fZ10K9eY1wJDgskOzkXa8mGMk7kSq8eN0UWCMGv1Wd17b+1JDwEOav44e?=
 =?us-ascii?Q?xkKR9yQpgGr05jfQZ18TwEJ7McK6TaEwum779qYJlbSsqSb/KEXZUQESIZUj?=
 =?us-ascii?Q?NZqnnX1vhsVamHahGwrRMuoAIaqtWG6QQseT49JAsRBQ4HvCa8lgcRfA3iiX?=
 =?us-ascii?Q?K0gJ5ytam/9W4VHtUoL3cSYJY2Lfsno=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: vAAaqp1cwUJsxcwHWfXDzf7EGd1Qo4I9XZpzWRTm2V7rhTewl6J8NktKg1UgOiDna2rsR9OE1kLjOtp5WpzDT6ukCJwpzsXh9wnutb+939fSlaAERXARLrNaWuNm+4ievV6Mdcw1qzc9oyTJJAJI/SyPvYmNX2lQePBUF5VlzSCVSxnVlHGrzpPmAMWPJoxVDfaITBtRq/GIMuCtCucn56N8hZkCRzSmEy3V/ylEmRXl7epZLBFjh6Fk3pc3P3Ncneg9WA3LMyhoLaZC1GsbvNCEBAHNF616gcqVVTai4UafYk2LdTLmpSfK+1kdUxVK5wt2/rip2036fUZAWRv2dA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7378.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4577fe17-f84f-4ab5-44c4-08dea4690f2c
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2026 14:27:06.5895 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AyDcG70txtyoYSGAo4TOBKiyUGBHHSzHobuBO1HcEG+bXQXRQvDcn5ADgQ1yL0w5O2pz2dxzyd6csgAxxo0vCTuSgGOAx89Lb7gACtwH6VY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF4AE904FD9
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777300032; x=1808836032;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wKHWWcV2d6xZB1YwptSdfDjWcaW2y8+xxgN/RvfIeBM=;
 b=KKMMiq7LVV2dunsnvYpCh/E48DVCQnx3Tuqlz69ZqjM0QFUHszDPgi1A
 tDKk/V5rTmkxC98pT78fQ5AuLCCPik1e5i/cn5RxYnjkRxZbTwUGBG0Qi
 NDo/qH7J+EyZraOUlBbqt1F9YAskvCaa8F+lXVidoTBfJN7uPE4RPn8Lv
 TcpOv2K29juLhSIW9jQwVwqtOaa/lsVjGvjCCfKLKI4D762zSTPx9FgvA
 BJJeGvHEoVUA4h/8y0aM+9bt+N7vZxBCc8/zvI8/9TnrAOv+lZFLl+8Qr
 l3a2dPY5a6qFuRR/3diCfnDAcYi/HbKhO5RpG0qODdXX7a8xZYGQYbpLN
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KKMMiq7L
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v7 1/3] dpll: export
 __dpll_pin_change_ntf() for use under dpll_lock
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
Cc: "Vecera, Ivan" <ivecera@redhat.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, "Rinitha,
 SX" <sx.rinitha@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, Jiri Pirko <jiri@resnulli.us>,
 Eric Dumazet <edumazet@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "Nguyen, 
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David
 S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 7DFCD474576
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:sx.rinitha@intel.com,m:przemyslaw.kitszel@intel.com,m:jiri@resnulli.us,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,IA0PR11MB7378.namprd11.prod.outlook.com:mid,linux.dev:email,intel.com:email]

>From: Petr Oros <poros@redhat.com>
>Sent: Friday, April 17, 2026 4:59 PM
>
>From: Ivan Vecera <ivecera@redhat.com>
>
>Export __dpll_pin_change_ntf() so that drivers can send pin change
>notifications from within pin callbacks, which are already called
>under dpll_lock. Using dpll_pin_change_ntf() in that context would
>deadlock.
>
>Add lockdep_assert_held() to catch misuse without the lock held.
>
>Acked-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>Signed-off-by: Ivan Vecera <ivecera@redhat.com>

LGTM,
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

>Signed-off-by: Petr Oros <poros@redhat.com>
>---
> drivers/dpll/dpll_netlink.c | 10 ++++++++++
> drivers/dpll/dpll_netlink.h |  2 --
> include/linux/dpll.h        |  1 +
> 3 files changed, 11 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
>index af7ce62ec55ca8..0ff1658c2dc1ba 100644
>--- a/drivers/dpll/dpll_netlink.c
>+++ b/drivers/dpll/dpll_netlink.c
>@@ -900,11 +900,21 @@ int dpll_pin_delete_ntf(struct dpll_pin *pin)
> 	return dpll_pin_event_send(DPLL_CMD_PIN_DELETE_NTF, pin);
> }
>
>+/**
>+ * __dpll_pin_change_ntf - notify that the pin has been changed
>+ * @pin: registered pin pointer
>+ *
>+ * Context: caller must hold dpll_lock. Suitable for use inside pin
>+ *          callbacks which are already invoked under dpll_lock.
>+ * Return: 0 if succeeds, error code otherwise.
>+ */
> int __dpll_pin_change_ntf(struct dpll_pin *pin)
> {
>+	lockdep_assert_held(&dpll_lock);
> 	dpll_pin_notify(pin, DPLL_PIN_CHANGED);
> 	return dpll_pin_event_send(DPLL_CMD_PIN_CHANGE_NTF, pin);
> }
>+EXPORT_SYMBOL_GPL(__dpll_pin_change_ntf);
>
> /**
>  * dpll_pin_change_ntf - notify that the pin has been changed
>diff --git a/drivers/dpll/dpll_netlink.h b/drivers/dpll/dpll_netlink.h
>index dd28b56d27c56d..a9cfd55f57fc42 100644
>--- a/drivers/dpll/dpll_netlink.h
>+++ b/drivers/dpll/dpll_netlink.h
>@@ -11,5 +11,3 @@ int dpll_device_delete_ntf(struct dpll_device *dpll);
> int dpll_pin_create_ntf(struct dpll_pin *pin);
>
> int dpll_pin_delete_ntf(struct dpll_pin *pin);
>-
>-int __dpll_pin_change_ntf(struct dpll_pin *pin);
>diff --git a/include/linux/dpll.h b/include/linux/dpll.h
>index b7277a8b484d26..f8037f1ab20b60 100644
>--- a/include/linux/dpll.h
>+++ b/include/linux/dpll.h
>@@ -286,6 +286,7 @@ int dpll_pin_ref_sync_pair_add(struct dpll_pin *pin,
>
> int dpll_device_change_ntf(struct dpll_device *dpll);
>
>+int __dpll_pin_change_ntf(struct dpll_pin *pin);
> int dpll_pin_change_ntf(struct dpll_pin *pin);
>
> int register_dpll_notifier(struct notifier_block *nb);
>--
>2.52.0

