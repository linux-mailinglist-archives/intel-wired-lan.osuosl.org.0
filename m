Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GpwEB2W2L2rtEwUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 10:23:01 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 629876847E9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 10:23:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="iP0O/+aS";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 165E740ECC;
	Mon, 15 Jun 2026 08:22:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qp5ofa_Nv9GE; Mon, 15 Jun 2026 08:22:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7433240EAB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781511778;
	bh=HY+Oz7gaIYTqTWHwTtnzCnbbHz4E1zd6Nt8xXK2qDCY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iP0O/+aSU2Psz30yJ0PZFbkNAihjR5m1vVswAB8oe5RF3TOZv9Qxa+H6M7HcRHonJ
	 16mGsYM/UhYjU9eBs6VMQqIjvE3h9tb9pV8bGTrylWFrdiWNjyTpNrB6D7lzvJ+dH3
	 6i/eNgUngeoN4reQ2VAg51jE1Y5/WQVJ7beuhBxOJLuvyh1rQPbLVjgjmapKjPXeKR
	 JZ9ajl9dSX1fCL5obVeLg/zVwjb7n4dXI6Fc2pzRzDzhf4YWU7/qRe9efoW45XL9XZ
	 SAmswKAEvvPF7i9LbCzcRJIRBpacEDnT7rZqv2nJPgJPeOLrAe2lXtZ3DdivLhDa57
	 ejY7oPWdc2VxA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7433240EAB;
	Mon, 15 Jun 2026 08:22:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 78458169
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 08:22:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6A05640E8B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 08:22:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g4iH0AN2My2N for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jun 2026 08:22:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E13D640E81
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E13D640E81
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E13D640E81
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 08:22:54 +0000 (UTC)
X-CSE-ConnectionGUID: WMHDEyE5RBKtVq0uYb6r5w==
X-CSE-MsgGUID: z6N78nx5S+6+naPywoWTDQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="82093614"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="82093614"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 01:22:52 -0700
X-CSE-ConnectionGUID: EaUuYLWrRxWDIDbFG8HJxg==
X-CSE-MsgGUID: ofpOSB29SiuqSb+gTojm0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="243254510"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 01:22:52 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 01:22:51 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 15 Jun 2026 01:22:51 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.21) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 01:22:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gR7OT4+Pjm2F8eCn5wdl/amtmZ20eFoX2SxsA4qL6BEQGWiBfyFz1MG3I4PvKeggJsQ/Tz3wKUHsnULx6hd2tOfc/IOoNnzSj41vIR1U3qO7RTuMgTHTuFtI3GgnsPngJyA7DmD2WD2ScA15pGv0HnH4gonw/zr4V4oyUbAvt1fpufsKVSJNrRcd5DOqQAF8GMoU0nd+fiB1gGRGfHj5nNgrZuS2MMKYw4P3wol2Ciqgzgq/Po+97NH2d+bBSQ8by9U2NHyUvwcH3Sh/jTfHHG6d/Ce3nDLHtRXAosSlB2YBBKagWzuxum0odySqEZt78qSS6LwynG1KrPav2sAp+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HY+Oz7gaIYTqTWHwTtnzCnbbHz4E1zd6Nt8xXK2qDCY=;
 b=S0DqvkpRokttFNcR9++e53LSb6q1EtQu6Gyn47/fCI3IV6LkvxJN4dy4CIjiQ3FaIYB0dLt2qiFlNdcp+f3fSMBxJf5msaEOJ4ooiqluhkY6b5vRSGqv39fbGiOeZTK/rJJOhCdG0iGw3s0RrCjubyh0/zEvh9ydalgTl2oSfJ51+4VnEJM+uSjz/I8p3a4lxlkkYmxOYSapItzYA4pwlWjAX5JThy6Ho3unbAKPTC0C9cXutt+tpXzA6GJth9A7cKLPoQLXcYP29sULQEbsslDF3ZtkzSSHttNPwa/P366arr5hbhe2BBrtSrxFXCAixcCMTJzfFUAb+pW1vo0Lvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5983.namprd11.prod.outlook.com (2603:10b6:510:1e2::13)
 by SA1PR11MB6848.namprd11.prod.outlook.com (2603:10b6:806:29c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 08:22:49 +0000
Received: from PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240]) by PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240%3]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 08:22:49 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: KhaiWenTan <khai.wen.tan@linux.intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Abdul Rahim,
 Faizal" <faizal.abdul.rahim@intel.com>, "Looi, Hong Aun"
 <hong.aun.looi@intel.com>, "Blanco Alcaine, Hector"
 <hector.blanco.alcaine@intel.com>, "Tan, Khai Wen" <khai.wen.tan@intel.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 1/4] igc: remove unused
 autoneg_failed field
Thread-Index: AQHc3p2eh7Pc5Lu7qU+dsf44r0Z4HbY/fLHQ
Date: Mon, 15 Jun 2026 08:22:49 +0000
Message-ID: <PH7PR11MB5983AC8989441ABEE7A0BCA5F3E62@PH7PR11MB5983.namprd11.prod.outlook.com>
References: <20260507214706.309984-1-khai.wen.tan@linux.intel.com>
 <20260507214706.309984-2-khai.wen.tan@linux.intel.com>
In-Reply-To: <20260507214706.309984-2-khai.wen.tan@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5983:EE_|SA1PR11MB6848:EE_
x-ms-office365-filtering-correlation-id: b023694a-3401-4f18-af29-08decab74970
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|23010399003|1800799024|921020|56012099006|11063799006|4143699003|6133799003|38070700021|18002099003|22082099003;
x-microsoft-antispam-message-info: RKkSI0VXJAnkbMbOSeDmUZ9gARxRrn3RBE0nTYR8XjyzW1VvkD81BREbLR4vXmEw4XdrdPqZZcYQTw5mEN69rwPP2OdB/vSPksmD9AcpHfOhVao/DkFdSyHLyn48z/Uc6OMmJvPGvvnedlPOYIIsVmKMHFgoVA5JbjdgcoAtgncdb91qZZ2+0neWE5X1GSvy35DGIG7HMPqOdhnO/wm0aWLkvTYARDdLyuFGiKaAsndDBMXcWnDgeon/S1L8+D7LHOjLuDFn3vYUuZVS9mqrylimkeFHWd9/NqbOtt6OAG9IHNGh5BBGCXRbbPOxMnm1KeFh3ao/4WBpvge7PjZ+a9L5KPiGHiwdJaoubumtMfxjPCz/FGIpia6M/NpYvUYtwQ8t2Iq+7oG1DECRA3m2ke2LqCCgk8ZU/yoUUTXgWbPShlEyQVJ9MgUD3uPdfABRbrIu/fgcemNrkbZnSiRyFAjy2u1ybUeHtpIuJN5akELnWg6wKsmL2vl+0VcfclqbVqS8UaclT7/gLG+Mj7FaUTaHWf0F2PJ+e6zpwSCPYnTKO4DQGmPCaThKiy1xdlWTbKIM/hn57Li9LTEJ3zDwrvxXOK7lrunt6miD+tjDTtuwpFM6fiL5itmFSrnVqemYsvLaoxBinpe4OwPgMYxlQauXArFhAcQSaO5budjgp3O0RvB/zwUm8AsvHi77+Y7EDZutChxVGdlgJDtxSt/92Q+3DPPBk3Z4rJhlavysGKzPCFNGouFf+716jNildOGb9SCX/APbtTbkHVBmVtyIyA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5983.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(23010399003)(1800799024)(921020)(56012099006)(11063799006)(4143699003)(6133799003)(38070700021)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sS76b3cW6uR0QeIKmxYv17Et5MW1Yxt8JZOUb/lAV7hZkgtKKYYrUIxri5OE?=
 =?us-ascii?Q?SWQgQ/iPv1dFyiVbJCsEP6PZnWuw6swbwVZI4lHB0TuIFC+PO48gw5UgK5ks?=
 =?us-ascii?Q?YccsV91JCger8XOCzeS/QUlDYZhjRd9NA9/YLPDEEVSers9qRXpcNvNd0B43?=
 =?us-ascii?Q?LkIyxVdnJiVvdEjlDe3jrFvzg7OYRaYRqyYKnU9vn/q93Qu30oExCTnWRIBM?=
 =?us-ascii?Q?Sj749A4moZSWze+Q93SGkbM7XPHwfNS61b0SL93W7P+f51+x5uFqjRoC/jFh?=
 =?us-ascii?Q?dJy9yab1PhWSsMIFe5tm0EDyGL0OOROka7+CN/W3nh6GY8i/hVUQMSDD0+ju?=
 =?us-ascii?Q?UzqyfxVNMCjQHWXpEfuMAgoI8Bvpr++DhsqYLIjh+0dFQ7DcT+BN85UM+aqv?=
 =?us-ascii?Q?SOWJazVT7dX3jv8FJX2E6MML52Czmuo/ywF2FsqgEzrQYRqKPS+FKbKsRvlt?=
 =?us-ascii?Q?N37nSqH9k9k0fvIZ/3wy70jRFjd/p+vCvBCPkA8NoIMoEJ4SAT4UnB/zoO0H?=
 =?us-ascii?Q?hxC65Y7J1q1NivDS6C/kn1tCSqdoSHafyokXTbrmBglmXMmbrCsIQA5CbsqC?=
 =?us-ascii?Q?0rVumuJW1ZDpaQhszPrVQNSTXyZy1itACaFgp3DOeaBNtrmgkMOGkotsysTz?=
 =?us-ascii?Q?25pONE0zgXO8vy6/9XG8xHBRlPsWUI2HuaV6hYT0rIDX2WagaH7KumMnKz3a?=
 =?us-ascii?Q?0a4tPBK84f62Kx732dtPCSVJpoVEqWPFPqSBL6tFDwBXlcLZnOxkipU3eixa?=
 =?us-ascii?Q?S5/XrNei2ooFMrhXwxQ6mRtw1dPq4YhOPFdfysSTjpC1bLr8qRd412gRgtJM?=
 =?us-ascii?Q?kVoP3p9bS9xiYySDLa9GCD/J1/t9ya+x/ZUFyjMOr8BcRcy3jbuFSzKp7AYn?=
 =?us-ascii?Q?RYvvz7pOf2cVDHlWMwggaFp5Xzp/ITsyBpobxXQzLhg+OCFceqenXyni5FP8?=
 =?us-ascii?Q?oxsJ1rRcazAOnRcOmOdqCYNrtj8RnfXf23HC3YxFYnmnuWw4s/0+FcOhgZuf?=
 =?us-ascii?Q?tA83MgkS9Du03Npt7TnTOdLGrPlEaPEnKaNt1HSMC32w4+OpKLRYMhwfjJYm?=
 =?us-ascii?Q?HyNXesbifyXrS2YD/dOqe/QHnmP+t5rlTb5luLsx0gatJ+6Xe00YEp7K97g1?=
 =?us-ascii?Q?QfXnJ6u9TjmZ6yQWZ2g07FgLn2rQYYX5YsfXo+sReR6uzpQHH3bePbs929gO?=
 =?us-ascii?Q?vWLbW7iIXjQLaBMb/SMdaxeGefsOhw5GDPYAf8wY46nyx+nE+95shMTKwLg3?=
 =?us-ascii?Q?FbvN0JZey31HOCXd1s7s2XxrdXsKgd2RDTNYHtoy5vRIgFAmQNNakGL7PTeJ?=
 =?us-ascii?Q?ql3e+7wHHLv4f4zaJaqAU7+GSsMblNK93GLkL6dxAAAlVzZoxXqZsc94ITXN?=
 =?us-ascii?Q?nUSy4zPuL/0NRBCjk5WM0StYVf5ImLQ//FMfAEFqHOJusAIdXAEeiRNH/Lag?=
 =?us-ascii?Q?csz7cZ9MffU224WOLtBLZ4YT/2w7qxZifwaZlEeaBoZyuMLAiLnrEbmrvcb3?=
 =?us-ascii?Q?vnCv4w1iXEMYxZs1USxYlsVIMv4RXJRvK1NF94OZJIJBI1S2uZg/lhJxkQeG?=
 =?us-ascii?Q?ZJkF20lE+CXMydytxZwJpaLQ6/n/wu8Y1sp7SWcIgNHBWpUi/UJ6QziHI2i1?=
 =?us-ascii?Q?HFniwEMMmYvuRE6ABbK30kZflQFyvhUyjYBOeWDivJzLKZ9Yjnhsgix9l/L/?=
 =?us-ascii?Q?Ern42MJPKMzMl9WQCSIlBC4u3fT9vbJ2s5nMQwhgELEwlK+pV/a6uKYAontw?=
 =?us-ascii?Q?/ROCtaKxCg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: X+gtVFehDG2qH+L/bSZNVfkLPwC710i687Gvu1wJE+j07aLlRYBZWQYBth4O8ZDHLdBhEQZiGBi9Th6bv561OmuWV76iiouXVzd7QDh9GvpkWI/2k0p1NshPTsdh5HkwojMItSsrnPSSg3YkVoWvZqHuvH2pRWfmE0RqKEqhI741TKPtFgXSNqMCKj7xChf699iipQvJcxK0ffl9Xa7f8vcRpfvDp33IMWsnNMrFEWC8qXYWHMBCaPOJ74zpSvyPamWTlkbiiIciP2fhGSlfmLOjqJGzZQik9+aH5SIS0qO8iAwEQd94tabdsjDX5ZHs6EMF/KR+DFK06q284xGt/A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5983.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b023694a-3401-4f18-af29-08decab74970
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 08:22:49.2731 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 11ysoEEPpTnIw3TW1uXac9BiHMGi4T58zIWP5wdQ6hNCcJT9Ph+CKJ/VSc9bX4ZXEz1Bh8vywwj6J7BK0durfiI13aUymH8rIC1GuZpfnYA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6848
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781511774; x=1813047774;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9oRBCc/EA9gHbna1Q4SlzFAG0IXx0OoehrT0tLK0XuE=;
 b=KWb8fAHL83fmis/BvQesGg3h6TA9i56FFEDtD1ymHhPDWkTvh4XJANtJ
 otovQF5lx1vOncWSxEOylgQFFA2FMtxvhkJ8RTIU88DmTizMW3JbX80mr
 bhcQz9OfCBL9CK/xxC06vDApauZ5f3R7SSCA212TyWDSWabU6iqoaiCvr
 pnCjdFtj85gg3cowEDd86/5tkZ3ZkyWMuiFEnxSWuQEbyzV7MwFj1BOVP
 ejG6rG4oIXUzgoSCWrGm2RJPQGeXDdc8Lr0cGU9XCiW9QCynDS7Hp0qm3
 wevqdtVzNqSUHy86A2sThDq1HNH5uPncKTc39+l6V2+Ke5BaHMY5G6yup
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KWb8fAHL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 1/4] igc: remove unused
 autoneg_failed field
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:khai.wen.tan@linux.intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:faizal.abdul.rahim@intel.com,m:hong.aun.looi@intel.com,m:hector.blanco.alcaine@intel.com,m:khai.wen.tan@intel.com,m:faizal.abdul.rahim@linux.intel.com,m:aleksandr.loktionov@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 629876847E9

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Kh=
aiWenTan
>Sent: Thursday, May 7, 2026 11:47 PM
>To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <p=
rzemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch; davem@davemloft.net; e=
dumazet@google.com; kuba@kernel.org; pabeni@redhat.com
>Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-kernel=
@vger.kernel.org; Abdul Rahim, Faizal <faizal.abdul.rahim@intel.com>; Looi,=
 Hong Aun <hong.aun.looi@intel.com>; Blanco Alcaine, Hector <hector.blanco.=
alcaine@intel.com>; Tan, Khai Wen <khai.wen.tan@intel.com>; Faizal Rahim <f=
aizal.abdul.rahim@linux.intel.com>; Loktionov, Aleksandr <aleksandr.loktion=
ov@intel.com>; Khai Wen Tan <khai.wen.tan@linux.intel.com>
>Subject: [Intel-wired-lan] [PATCH iwl-next v5 1/4] igc: remove unused auto=
neg_failed field
>
>From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>
>autoneg_failed in struct igc_mac_info is never set in the igc driver.
>Remove the field and the dead code checking it in igc_config_fc_after_link=
_up().
>
>The field originates from the e1000/e1000e fiber/serdes forced-link path, =
where MAC-level autoneg timeout sets it to signal the flow-control code to =
force pause. igc supports only copper, so it never needs to set this field.
>
>Reviewed-by: Looi Hong Aun <hong.aun.looi@intel.com>
>Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
>Signed-off-by: Khai Wen Tan <khai.wen.tan@linux.intel.com>
>---
> drivers/net/ethernet/intel/igc/igc_hw.h  |  1 -  drivers/net/ethernet/int=
el/igc/igc_mac.c | 16 +---------------
> 2 files changed, 1 insertion(+), 16 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/etherne=
t/intel/igc/igc_hw.h
>index be8a49a86d09..86ab8f566f44 100644
>--- a/drivers/net/ethernet/intel/igc/igc_hw.h
>+++ b/drivers/net/ethernet/intel/igc/igc_hw.h
>@@ -92,7 +92,6 @@ struct igc_mac_info {
> 	bool asf_firmware_present;
> 	bool arc_subsystem_valid;
>=20
>-	bool autoneg_failed;
> 	bool get_link_status;
> };
>=20
>diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethern=
et/intel/igc/igc_mac.c
>index 7ac6637f8db7..142beb9ae557 100644
>--- a/drivers/net/ethernet/intel/igc/igc_mac.c
>+++ b/drivers/net/ethernet/intel/igc/igc_mac.c
>@@ -438,28 +438,14 @@ void igc_config_collision_dist(struct igc_hw *hw)
>  * Checks the status of auto-negotiation after link up to ensure that the
>  * speed and duplex were not forced.  If the link needed to be forced, th=
en
>  * flow control needs to be forced also.  If auto-negotiation is enabled
>- * and did not fail, then we configure flow control based on our link
>- * partner.
>+ * then we configure flow control based on our link partner.
>  */
> s32 igc_config_fc_after_link_up(struct igc_hw *hw)  {
> 	u16 mii_status_reg, mii_nway_adv_reg, mii_nway_lp_ability_reg;
>-	struct igc_mac_info *mac =3D &hw->mac;
> 	u16 speed, duplex;
> 	s32 ret_val =3D 0;
>=20
>-	/* Check for the case where we have fiber media and auto-neg failed
>-	 * so we had to force link.  In this case, we need to force the
>-	 * configuration of the MAC to match the "fc" parameter.
>-	 */
>-	if (mac->autoneg_failed)
>-		ret_val =3D igc_force_mac_fc(hw);
>-
>-	if (ret_val) {
>-		hw_dbg("Error forcing flow control settings\n");
>-		goto out;
>-	}
>-
> 	/* In auto-neg, we need to check and see if Auto-Neg has completed,
> 	 * and if so, how the PHY and link partner has flow control
> 	 * configured.
>--
>2.43.0

Reviewed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
