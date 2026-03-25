Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OGdbMogCxGm0vQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 16:43:04 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D802328472
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 16:43:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B997B40B0A;
	Wed, 25 Mar 2026 15:43:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 58X0jvZfYaM9; Wed, 25 Mar 2026 15:43:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 341E840AFE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774453382;
	bh=i5TmTvhXw0u8g5thej8GsYr23Vb1DxIqenndELcsZXo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=me1vjpsa5Wf9CDtmmidrSfBx099Cf7leLaib+Wx0+tMnWltAT4IQgzBivSRiP2c8J
	 giqoqbldUpNjlDzub4YBzUW1Jls46EH6oRRTenW4z5snm6/t0ogBhnJxVlIKE5/l0G
	 9ESZzYteFYhUit64Pibx0rEBX86NSgceGTuDZ8T0Ls5VGw8U52b767xLaU3dMnmdZA
	 GkNKNqQxLY2UIX5gN3iBFcLxdCLj0XA29TZXrp/TTnkJxPPZhTZ3q3XLe7OcQeOp1P
	 Q460bmYIwkApHme9HjV4fH7r0viQ/clfdE6eJ4N1KDZZqoHJxcvrY/6BUgyfoCSF4U
	 tqs5iugGDogbg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 341E840AFE;
	Wed, 25 Mar 2026 15:43:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3CE4F1D3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 15:43:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F3E6281469
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 15:43:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7gaZn8wEVfPc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2026 15:43:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 476FD81467
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 476FD81467
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 476FD81467
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 15:43:00 +0000 (UTC)
X-CSE-ConnectionGUID: fCKQgK6xQ8yBl5GA4Ivvuw==
X-CSE-MsgGUID: HXADbtkGQCef7VI5bNwJmw==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75610789"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="75610789"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 08:42:59 -0700
X-CSE-ConnectionGUID: Ik+K4f4RQeW0HOPpyPxoig==
X-CSE-MsgGUID: WCAWHiz/TLSgymha5HUXgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="218138106"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 08:42:59 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 08:42:58 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 08:42:58 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.29) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 08:42:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mnafRFnKv2T8/Fnc/m5C3LX8Dl6GGi5zcPO9irhNdsYjaCMYeKNfe8X+1vVdSWsVMZXwfF43Hf+jOoHwbxfXuPBjXFjcfn0QOmISo95OntUdAHMAGTpKEAG/AfjEQtkJqPH4YRBG4ty9ULLH9qw0GvChUl57rdiWLO90vIxHFJrcdCVXqFz6LzjO0soYXgu9AVMDOC1sg17nGy0+w6szPBZrap8PPNu/T0dUYxGah9Dsq4mEMga6iNFLyGJA5o5qWoBvaB0QXV+tIyHNgOKJJ5QNaDowDMZ9GTZlIS/Me2Iq2/gDrtWFnDjHSH1JIevqf3JoZt5nm9AYjSC3iPe3xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i5TmTvhXw0u8g5thej8GsYr23Vb1DxIqenndELcsZXo=;
 b=etqnmfexeUuz7f1bjmIH0a3CjY9OjhuaDfwbzmFb2jZ7Ln0tBr/MaC04rbmvrUxTzRXsFe4NYOcijQL6+pxJBTqI+pjynJdia/M+INtV65kjc6qF7TWLjD32EEs+hGw/vJubki4EdbuDiA1rLc9bYhz0zX9QByb8DKObWPx7itzbVWzuHpkiOfJiUsEHZXGJ/f17qXiKa3Il5ZKvTcerhDE2lJbmR+vHAd0hJUraGWaHB1mzsNvFjJxjMfRo9mJks6sTl76TH5WtxBBzWf+20E3jZ7/SbSFfmyUtLeAd/2zwLDgx1bYMZR7gOQtMCT0NBFBMsndGwsYK2v6q9IlHMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM6PR11MB4562.namprd11.prod.outlook.com (2603:10b6:5:2a8::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Wed, 25 Mar
 2026 15:42:56 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Wed, 25 Mar 2026
 15:42:56 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Agalakov Daniil <ade@amicon.ru>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "lvc-project@linuxtesting.org"
 <lvc-project@linuxtesting.org>, Daniil Iskhakov <dish@amicon.ru>, Roman Razov
 <rrv@amicon.ru>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] e1000: check return value of
 e1000_read_eeprom
Thread-Index: AQHcvGnIDpjIccoPn0qvPk9IABorEbW/YvXQ
Date: Wed, 25 Mar 2026 15:42:56 +0000
Message-ID: <IA3PR11MB8986EF7C2F5216B603BF0289E549A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <a70a49a0-43f8-4908-993a-50999bf0dfa8@intel.com>
 <20260325151132.1399812-1-ade@amicon.ru>
In-Reply-To: <20260325151132.1399812-1-ade@amicon.ru>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM6PR11MB4562:EE_
x-ms-office365-filtering-correlation-id: dfc54820-823a-4917-ef04-08de8a852f34
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7416014|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: pgrYNMN7h1veaEB5OrBp+S3jeDQrA1BdUN88f2bukEEXY60c+n0SILsKQosggzfoT+Q/z5QDKz4l3Qk3+MPfnTaKUul2WwdN8T1u/2t5J6oOu4xbV1gpi+MKQbRKMt2Yce5YMarCPd5Xrh8dQ4z3Aw1A4L2nPixDIHU45oQ/X3vYhXhUJBgd6C7lc2m6oXqoXHNtXeZcWgvFqbNGbWBIz+1DoGzvpwHU+q0QxQSMMflW4nDXQzqVZ6xp8xyHPLWIys26TH3hwnI7B3L6yQTkAJ05qGSXCRtfUI5dxK7o/JdgC5/WbxmH51VFShj6Em//QECjoQCz5QekHqWy3TsoTUi2GD2JfAtDZYc/Icr1mF51Ok7DIFHtmUwisXDBezb25TYVz6y4xiRaTSTZWcb7eAdBwmSDUS/vUqW+M+DV4VV5n9CnbR2vdN7jL3wkeAcdwb27c3MDFZVcpNJnzTuCSRk62rirKsfZGPlQKTJokCd1s+q/0EGWxjd5l1e+YUT0qf6eqceQlIp2hu0XpksPV9/GZxnMxRCHpzptRmtEwroCd3qTMGDi6rhhbhwOJkV/jGLw09+XCwFGWX/TmoKtsaM97dTSlYa9CuU2Rd280RcE8oPRzOUroD5Ti8IRgMzRHOUHIHpVAtG/0eN5J8eiozBCkRI4+a8ORw9v55/Ccf4IfJsjh0+MtjprAoeTqv4R84+oEv39Yb+eS7qElZy0KvX+mvDoFqs3GSfnH+AnuCKIivuTlUphC5bgAe1qwrzH5ZMylN9hCWVfbLzRI7lpp3jn7Rv1hWDRaSxeTggBoTs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7416014)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ICwoMuQzzHSKQemsivd4FhZ/h2d5M9L/kj52UawxnkgpauhyE9QI/JEUILVp?=
 =?us-ascii?Q?KCH7Mn3dENGD0EKQg8WSlrf5Wf668jLzqacaP8/YEbPhHB6Cf+gSTZdwd/9N?=
 =?us-ascii?Q?2mfhDAAaN/8z86CbFw80axyTWMxiBCxNBzudRc/jaq8mFCLFDyjDBSzf8v2Y?=
 =?us-ascii?Q?VIdJ/94fd8dhQ7F/Br0G8SVYszDLrnmEpUZV5aXqyPw14AkP0ENniCUvw8B2?=
 =?us-ascii?Q?ZEHkRdIZI3mSB8G8CvoqFGSjEz9aCvOxckO4ehkMW3MCxtRrrYQQT174TYUO?=
 =?us-ascii?Q?EL4a50kxteia6PBesYKxyGtEWYMJtWsRNiRcDwfRM9DXIvX2pY+bFLWweJZV?=
 =?us-ascii?Q?osXE9Z+yWlY0W+94pGRwN8kfr/bgrjbWb5Pk4dkcmxcjtLpbTHfhsxnBCFre?=
 =?us-ascii?Q?+Rklz8jbNW2dDB/91J721aE0A68iiia4QE3EdzYFnshs0MyAkE0uPXUpViUv?=
 =?us-ascii?Q?kP9ufsMc2gy+BiBsOUqlfseYdS7IVJ2gUNBhbL2cZJRynUNadocNQ75veAQ7?=
 =?us-ascii?Q?XJdh08tNK73t7mRY3Xw4XvS31aXHlF3pPHb1s5eclIaEyt8Wg/h8c3tDLSV8?=
 =?us-ascii?Q?8R5U4s6gYcYB5gPY5fmllV3oFR3D1QUgGPLVaSjVXhM6ygZvS+0RVC6nn6XQ?=
 =?us-ascii?Q?XzVwDE8EF9qJ1ZTB6tE9s9/OswWzOCEjGuTR5KeAuojsoGUB+V7RKWUuMCJJ?=
 =?us-ascii?Q?5IPhJR6e++NLvP7nbuf5pHukXNhBC99sK77YpFuQGjMU1+Do5nBzyAN3mlfC?=
 =?us-ascii?Q?3rfmITlCe6Okq4ngbUlLskkIwVvMCG/sad4KMd0skQtXEpLcqLULEQTdd3b6?=
 =?us-ascii?Q?eOnYnJuyU1u6n16DaCqmG+3M/AR0A8TyiuSiWCF3bzxJs1Sd09X2ugDIqKtu?=
 =?us-ascii?Q?h1jl3xXQyn5X804y46hqwVr+L+w5w3z0R4a8xj77ssoEHG+gfGdLeyyakZsq?=
 =?us-ascii?Q?iuKqYkjIaoSsw+rDS/C6s62Rr3bKJL7OV5P39f+XXJfMd8YR6RN8auAIU51l?=
 =?us-ascii?Q?zCN4SiHAJN+GxP56+mQAmc1xvuCCAE4NehkwAX4zSULhWaBkwXvo4cj9XtzL?=
 =?us-ascii?Q?KxNdEwgJ2s3ipzdzXfe682PRVM3r1smx/Coak1V5gcYO9sPcnK5uKeUTVeM8?=
 =?us-ascii?Q?yBIpQEWNRMoXHf4M90Q4vvaheeh/d1ZKFPKxI7NVhIwKrw8vdJaLIptL/qpG?=
 =?us-ascii?Q?adbPQPB7+BnWo9QYXbCksbwhmc2K6Jt+pmABG6A3uCcgeQQ3xwxvcEGFO8Ya?=
 =?us-ascii?Q?QeQlcEXGlZjt40SubCtdF0G0CkYNl9gNuT75IbKPwWkjhpFq0StAHiVOysuH?=
 =?us-ascii?Q?iOobWptFT0tMLYDHw/Mj4j6jtkzbViLWR52kBZlMmRCH29dHx2ZkXkkOOFv4?=
 =?us-ascii?Q?HnWXRe02Omr99xCqciL37EiruaEvY//Xu3NOhY8UnbRdmEquR1H89VPW5oOY?=
 =?us-ascii?Q?76QImnPdhSDEQJHrTV/H73PI5iV3koSiPE2V9ewu2NS2SK8oIgKFEvRqYz0n?=
 =?us-ascii?Q?6yDByfvJFOm+pduhPd6oH/xkB0XYBYIr1oQmtO8iTPukenKiEAl7tktPs2jA?=
 =?us-ascii?Q?puJOFXsLIV1k6AkvYQ3pp4V1onvYhNdwCTIRv2clF3I6M38iAXTGgqbX0PME?=
 =?us-ascii?Q?WCJVvkUy4oYwzw2qp0yhKKjeVVbK9Bxr4MW5CUixF8qi9n3LCJOz2ZWfuAa5?=
 =?us-ascii?Q?CEzGbZaSwGGRxIobEG/TzcvsTXPyTia6dYtncNamQZNGPtosD/GfLjUT5FtA?=
 =?us-ascii?Q?/XUhVish0i16cNuUz0nm6Wbx/oHUUmI=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Oi52dzmbvMVn9eyFyP5jTsbyjfp1p4r5yVkx62vYF8sWbBU8wRqPILnnj5v8PwnjhTe2xfrWGBmDjHLwMNfRAoFAOIMIfEdO5gnwEssT1M/Yf7BKFdCdJDEHhz6H7Cw93AtF4EnE+aa0VuOraRs2vkl7+N5dIkpOCzevZ2cSOQWFdrIQ/dbM7Ol4Vw/7V6RzcVBXUt+CoWySnvG4Xzkc2Pk1ZUr23b5gOCwCfGGhQGGGo40/2LNzy77zxCD6XB/mfH5fcCXGz+EIf0rlt2e0FR4aYDy19eyi+ZVOyRN0mGl+xB5C41p8pmqRsfEJMj3I5U6fHSLvMh/xaK8QSlShNw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfc54820-823a-4917-ef04-08de8a852f34
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2026 15:42:56.0293 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ci51enLmyzpZz7Kdw6HbKPaucvuuor7kRAYAOaQsb23sJ+ojjrYV1Lq5JWmd5cCAHpIq0sRN0lijdH5COXCWBylkKLndBSa3emY8j7yFuD4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4562
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774453380; x=1805989380;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=461slvTsm58NkivmbJpwsgYYs/+4W4ppim4fywVVEMg=;
 b=jUL4KGlj7TOOE1JkBM8ZgeDqnLukjcUOzeDo/NCxImq/aRWHRfdk7QmX
 FIuPDcSZh2b6hr+3HHRMuGXuPxp2slKQd1te+OFALxh3ITQfsE/xEfKAp
 VExMPd68K7PhBMphRgvKVVscSfEcstBYHE2U3hbj7YhuzqnoI9pIiX6HE
 rKYS5soH7e0BJREEfvRbWrLhNI/4ihAh1gZjlX7wPrv8DtP2VS2cd7eUS
 grBPOvNYlfBFTFrOBIU096iqN8R7vUOBZJFxJMh/gjN+XBdhIlGxaK1X7
 pE8h7Oguft0Q606G28jnybDdgokvPYUqVkizHSoD2Aa2B23DkV/1OQGnA
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jUL4KGlj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] e1000: check return value of
 e1000_read_eeprom
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:ade@amicon.ru,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:lvc-project@linuxtesting.org,m:dish@amicon.ru,m:rrv@amicon.ru,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 1D802328472
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Agalakov Daniil
> Sent: Wednesday, March 25, 2026 4:02 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Agalakov Daniil <ade@amicon.ru>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org; lvc-
> project@linuxtesting.org; Daniil Iskhakov <dish@amicon.ru>; Roman
> Razov <rrv@amicon.ru>
> Subject: [Intel-wired-lan] [PATCH net v2] e1000: check return value of
> e1000_read_eeprom
>=20
> [Why]
> e1000_set_eeprom() performs a read-modify-write operation when the
> write range is not word-aligned. This requires reading the first and
> last words of the range from the EEPROM to preserve the unmodified
> bytes.
>=20
> However, the code does not check the return value of
> e1000_read_eeprom().
> If the read fails, the operation continues using uninitialized data
> from eeprom_buff. This results in corrupted data being written back to
> the EEPROM for the boundary words.
>=20
> Add the missing error checks and abort the operation if reading fails.
>=20
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
>=20
> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> Co-developed-by: Iskhakov Daniil <dish@amicon.ru>
> Signed-off-by: Iskhakov Daniil <dish@amicon.ru>
> Signed-off-by: Agalakov Daniil <ade@amicon.ru>
> ---
> v2:
>  - Split from original series.
>  - Updated the error checking logic to be consistent with the
>    implementation in the e1000e driver.
>=20
>  drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> index ab232b3fbbd0..a9c56505adcb 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> @@ -506,6 +506,10 @@ static int e1000_set_eeprom(struct net_device
> *netdev,
>  					    &eeprom_buff[last_word -
> first_word]);
>  	}
>=20
> +	if (ret_val)
> +		goto out;
> +
> +=20
Extra blank line.
Otherwise looks good for me

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

>  	/* Device's eeprom is always little-endian, word addressable */
>  	for (i =3D 0; i < last_word - first_word + 1; i++)
>  		le16_to_cpus(&eeprom_buff[i]);
> @@ -522,6 +526,7 @@ static int e1000_set_eeprom(struct net_device
> *netdev,
>  	if ((ret_val =3D=3D 0) && (first_word <=3D EEPROM_CHECKSUM_REG))
>  		e1000_update_eeprom_checksum(hw);
>=20
> +out:
>  	kfree(eeprom_buff);
>  	return ret_val;
>  }
> --
> 2.51.0

