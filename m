Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJ2JNJpNzWl6bgYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Apr 2026 18:53:46 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1DD37E38B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Apr 2026 18:53:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AAFA44126F;
	Wed,  1 Apr 2026 16:53:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h7ibfSGpl0bT; Wed,  1 Apr 2026 16:53:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2339941242
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775062424;
	bh=x8H/IYu0pqfXCIyJRl9WcA1jpMxVdYeKgeJvlo4a1Bo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eL7Eu2UnRF/7I0JmnM+F6irA4g179HGL3zANRqo3J+B9QBSbEMb+0aKKQ2rJQLnEr
	 77SsLX1u2d+zeRurIEQMt8VmgOoLwrfY6S0pQk4oGgiI40syjHGWUaQ+5DrdASw+5U
	 hPM7PsYIQWTXkE8wGLYAX6HLdY3pI/uK9JYLNHNobqlw/VTeJczHX8eviorKY2lfcn
	 ULlgIw79U4RA0Y2hCPhsrVdTi4l/QIxZM3dReERG/ISrXLvWQEbCNLhou35yyMeHCo
	 iGcfmsefh0jsjod+2hBkhO9/TOMa3JhT7kX0B+YYKPg1oQNxm8lh6Qtz3Y4N7GeIvA
	 xOjM2fW5M5+Mw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2339941242;
	Wed,  1 Apr 2026 16:53:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B117B2A2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 16:53:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A43EA606A3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 16:53:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QTVdQYIf8ahy for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Apr 2026 16:53:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0A791611E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A791611E9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0A791611E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Apr 2026 16:53:40 +0000 (UTC)
X-CSE-ConnectionGUID: UQt6VstFSNm+7JlnomIHGQ==
X-CSE-MsgGUID: QekCcl+TQbe/wYfiFwTr2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="63657916"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="63657916"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 09:53:41 -0700
X-CSE-ConnectionGUID: hU05ubPoRX+qzaIH0mbNEA==
X-CSE-MsgGUID: C1/5FNsRQuy4J1nlapKyFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="249937578"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 09:53:40 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 09:53:39 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 1 Apr 2026 09:53:39 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.10) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 09:53:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A81lmj0iFS7DCLvQ7bFjBZhDH7R3jcbdmEZODFchX6U9dRtRBiLK7A8yVNoArajPytLMS2eairIHdoPDlD6EBTBh9607ThXgxepfTxCLVANx8kaJIqOTlMGSJnUmZJbCzLp1OHxXNgPHfVDEu9FgFwWXOFuOu4C+LbOz1Mn1bQLVELWJM5pv01PdrRRXLnzQ49kzwYcfRd0COGEqd7tUg/JkKjUzfCdduClYKDoCUNIwmRIyOQianQXAY4oImx6fa3SFKJeWvJbbJGzXK4v51HANVVuoYnwfDdEOEg3YuwqMSHRBkDcin4J4+dOnxv69vx5Ad0Se86ooQRQsYC30CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x8H/IYu0pqfXCIyJRl9WcA1jpMxVdYeKgeJvlo4a1Bo=;
 b=oJ35i4WO2Q5uN0SJMPBhFAtHEtH0fpYvPY70IDj9jJf6Lkw4klR1eGh0/OuT6q4Sm/4xEMkEnIGtRLnnNkKEp8T9tTwcaCqkJ3a/Sjo16sMw0qOrbg29KxQmtVZoIJuvGrxNUHmC1jp/nzUkvaNBRe5hI4Ek3VW8CMo3tg44SnmvG+P5BR2khYlNLFgZuOpaVB8s3Lt4WGU9pXBciS5cQd/6QtEb52rr2C2kin48mQSWIdLi+VmzmVnZBogzkOmYHUIdm9yyxKy5R2sl2ohS7e5dHGUZLpGit5ePxdialqcsmT5C/Wxo+UF6MDGjIPEjYNtRoXVqpAQ0IXqWn8MrKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SJ0PR11MB5792.namprd11.prod.outlook.com (2603:10b6:a03:425::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.18; Wed, 1 Apr
 2026 16:53:34 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9769.016; Wed, 1 Apr 2026
 16:53:34 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Natalia Wochtman <natalia.wochtman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Wochtman, Natalia"
 <natalia.wochtman@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1] ice: remove redundant
 checks from PTP init
Thread-Index: AQHcpjd6K0dGonlIeU+H+0Gp1lq747XKozWg
Date: Wed, 1 Apr 2026 16:53:34 +0000
Message-ID: <IA1PR11MB624160AE2D9D3735DB592C418B50A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260225090236.187255-1-natalia.wochtman@intel.com>
In-Reply-To: <20260225090236.187255-1-natalia.wochtman@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SJ0PR11MB5792:EE_
x-ms-office365-filtering-correlation-id: 0d66525e-af25-4f12-2972-08de900f3697
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: 5Vm9n7gQjo+jb1ompI5javTSCOgtdK9q2aXytudXKPYvfz07n1yTkE05OiNBOCwxWTU9OpmXW/c4VnI0LA2OZzDwjD7nx1GRcfQPzJHSriY5Igl9wGsFYlXonat8vPY+yP0B1BsCXNgIqr44XEGYxIREGmjsJQdZA1MrcTr5ntjRcC01T3hRIzaJX7D+T4rfbDsdh4H8temA28w1SjrZisUAt1dlK4KtJSeH8WvnCKY6M3MQYuNS6zUsEbAauS7UEs8aIuxkVXDJu1FsiP1Lwx4d0BZC67AfIzPw3RvEsCHht0qA5CG5Qt8Rb7n00mcGLSgliWp/+RuDB9MdRDiOxVtF2+zvOYcqHW/JGKkEFmcPDUloGMaGy98SWw0/EFXA3tRuuIXXth3Xod+0vhTmeICeD7iA0KE/IkDVIM/gJngTmsQsZqZPbM6JSz7PTRMihCi4W/0fLnEHM/Lo4ERmIm+H9sI+s9oBrjbLGn/Ymk4yV3eZMwT+/yKu4Y8CscDDU4uTPxjsp8caQEPOeixXaYrcttRiDs+CloBcf9j23mkplcPqd36r0aA058IAupwK0c2s6JckgaQ2mQcd748VQxc6NT9a6ETsRL9P2Dh+DXYqLwlRXdQ/c6GraUS4WYloyXcYcuUE9BgWdTsjwH7QbPMfzr69T0XWtg+GJv1fZGasvQJiuf/A51JkLCx0crHlfLlzk7PDoKHgL/EExdL0KdxxgQUdwO+j2unRi/BrpjJqSwrtfUSxQ9IaLAT16dzEtprFvwm3GN3t7ixW9ln8bEwWZPZzA3LLyNi+pvXSk3Y=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8H0/ZHybzrOG5Ak5FLInk6cXEti8NsSDgDR2UuRiUyZkJcyv/GIn0ORVvKiI?=
 =?us-ascii?Q?DvFqg03ozYuStAtpP0PKt2IleYATwH0GqSaa5JKM9UNK4DQkcgRoJRxwljy2?=
 =?us-ascii?Q?9Wd4QGpOc8Jy8E0DO8NW5mMsm2DyO7D/Jl8jEiR3jxfLBReE4Q+AjqKWefI6?=
 =?us-ascii?Q?0hhTF3TplWWf54+FTS/CocN6iUc8D5xb/WI8nYuVvmEYJ6CxBZc2Xow7ndmL?=
 =?us-ascii?Q?OmMTT1zZ/S43Dx1Eh4fZL+B/fbm7U8Nq65l+310b7lru1noE8ad9QnjXHJ45?=
 =?us-ascii?Q?rdqBrsG9UxYsMoBVMXmrz7a1k3AmreLWWq5XQ4DixCsfKqRFkl/rYZM6DJHw?=
 =?us-ascii?Q?Wp6MqF9klaLN7g7Jz4/k76q4qmbjroIUTE8o0V3PmqOktn9UcNfIJIkKXrJL?=
 =?us-ascii?Q?XD/V+YfnjOC+jplFeWUpk81FRKwB4SQws5dIKyEtKkgMQTnQ/+lpUqYbTauC?=
 =?us-ascii?Q?xfX+cWoXCg/nxnvvO+IDURrWO0la7xwj90si24y64w/LLCerhvQxjQVAeun+?=
 =?us-ascii?Q?wbOG0sJ6+CdTXfjGTxf/kck3BgCdeq1Hm8klcqjkd+SYg/wPI/T9f2l259Of?=
 =?us-ascii?Q?UNeERDsxS+0cSnOSE5vxfkBhWK754LCzZ2y/bLofeXInYZQhsB+xCZqyae6R?=
 =?us-ascii?Q?zD4de8NuUefg+u3AtMHFw/jNNo49ZrBKiIL4mbQNzqxa1UDQvIXEqzwBmMvu?=
 =?us-ascii?Q?JWBOTm3ziFclOTw2NM/Bx/ykJkWtLNV6X3phWK0H7zRXCLADwNam5LzAlCWY?=
 =?us-ascii?Q?eiYoeZZho6Le9TvMSJVvKlV5hK6La5mLhYYTgjMa4zfKQbwxqdR0qJ/bwYP6?=
 =?us-ascii?Q?wXUGA67oRh7/Y2OgZzLYKg1NqMH4KtBXLX4MuvmDkqkQD4A7zui8Il/pupat?=
 =?us-ascii?Q?aSxbCCFKZ1udY0Ofnce8wrvANDNjynvWwZlByWVGMt6esZp+2tdAWAXykEJA?=
 =?us-ascii?Q?gooyFB/LdqDbPSy2QAY1/74XV88gK+uFxlKr9ttncRSEkDhvW3gdlvwUTDXA?=
 =?us-ascii?Q?gCrUOrJefRLMOWzpqVMzytxQIyMB3DQumIuEeoNrRXDLW6k/QXae8+MGDEjD?=
 =?us-ascii?Q?E1WAMvdUrYErCE1APonTVje+g81TKU5SJKaGnzGgyeNKOBXvLGU32Co8hx8l?=
 =?us-ascii?Q?3J9f1r0LRp8/RSNFN1IFf3nTH7SgdV8pW4ieCwZb2Cu6nr++vdVG6TX6tB/x?=
 =?us-ascii?Q?q4rlIpnTFzak0IvMjWxcb4mHaHe9lGyfmVkPozfRqbbMU3rFOnwZ7sfkrSNJ?=
 =?us-ascii?Q?aDuRmy7dIKQBIukaUwc7XExU7KUtwS6wf1F0P3UCWjcyKqLsRmEf4KNCH+tH?=
 =?us-ascii?Q?ub+t+w1NdV12AkTutuNkSfEZRUtNX3G2fZyDq5wAIzWgRtoo3ghJkpK3UvH2?=
 =?us-ascii?Q?UbJhB1xLFGfjn4ymKng8Y+jfcfU+9x3Z3HT2/lOnVzcDCMa5jTYGNWmNzDZ1?=
 =?us-ascii?Q?htNagvnnYJMFz3unPqKm70J+M6BvD3cAaT1F9WIJvrSBgLueSWFBv0o00eJd?=
 =?us-ascii?Q?zuMtrnDTMvvnHkP2Oa6LMJ/v76zRxK380VGxIO1vWlEKYq0wzuGyB4oPBTgC?=
 =?us-ascii?Q?t7J+QBPD/gxbc9aLGtPe5crBk3v1wvktWsBHFwSNm+zrFeAnGy0l+TgXcgKj?=
 =?us-ascii?Q?SFACNI9lNeL8yLmWEst2ISVHFFtwctunrA093czdu54uCy1kyJsIJDG9Fje0?=
 =?us-ascii?Q?ODiyXviRsSW0TWLKcJ8Us1hFeZm3XLGD2Ygk5y4pTtN6O2u3agNSClDwaCVG?=
 =?us-ascii?Q?/K2/hB+kPg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: dR0C2NtcxTR7/uJLA/TGG4HqaeRGBkvA0yZayCU08lg1z/ldDkeuTibi2poP9exIJtoulgri8mcvAyu97bhT9XoAJ1xQ2oLv0i7h5VGeL/lYZoT9Z7cq82T3cvaqtwX0ZBSjesvDkN+qWcloB/4aZ5MmvUnRyG9gHksBIs0GS4epTx+6L13yESVTPtGaptExB7ofmT5VXSTXECcJn6YMaMnT6RN3cDsY59hzH161iwz/FuO8U1aFQBGgfc0idx9yUHSwcjMpZgr9YJhmtVWP51ATz9aSZ48K/dY05XY8txwEvHV3J4FU8WD/L5RTWI/Set1vpWaOcrnB8haN9kJFYQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d66525e-af25-4f12-2972-08de900f3697
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2026 16:53:34.7489 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IHiLVKj5WCflyaFyszlL7BVZ5n4Yebt9suaI14RiXM0i/oZQdCrPbDjK0D2GUpMZ+LFmalPx81BKI5hszJGB/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5792
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775062421; x=1806598421;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=x8H/IYu0pqfXCIyJRl9WcA1jpMxVdYeKgeJvlo4a1Bo=;
 b=Eop9L7/Befh2O6i3gGE/pycL6Iz5gqtMd1TiyLsCWVjqUvp+5FU0HmQH
 MQNC2Jm2grlr2H3J1WPHTPX3DEdJvLj+1IkDfrNBe2M/Xwc6+WBS620hX
 +fELXxojvj727ntM6lXsXsLsx8aow6zRN5Hsa3lL9u72bJJmB4YG6SLhR
 byK5pFSk4KAA0J8RNiTDVULgut7KRgQVvHW5rcLZGz9KfICaYivaPhY/+
 XswSKvBgqRndOlYKsj/fKkTSEoh89NwluXZjOlUnO/HX9DQW7dYIjMJTJ
 cHFqs9BOiRHqvY0f6K//zmtuCTc4XZhJwGHOi6aJPZ1YcGN6eJ8wbB6IM
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Eop9L7/B
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: remove redundant
 checks from PTP init
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:natalia.wochtman@intel.com,m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Queue-Id: 2E1DD37E38B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of N=
atalia Wochtman
> Sent: 25 February 2026 14:33
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; netdev@vger.ker=
nel.org; Wochtman, Natalia <natalia.wochtman@intel.com>; Kitszel, Przemysla=
w <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1] ice: remove redundant chec=
ks from PTP init
>
> Remove unnecessary condition checks in
> ice_ptp_setup_adapter() and ice_ptp_init().
> They are duplicated in ice_pf_src_tmr_owned().
>
> Change ice_ptp_setup_adapter() to return void.
>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Natalia Wochtman <natalia.wochtman@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_ptp.c | 14 ++++----------
> 1 file changed, 4 insertions(+), 10 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
