Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GWHPEOu7ImqgcwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Jun 2026 14:07:07 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 851ED647F20
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Jun 2026 14:07:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=8cRhurba;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3583F81AAB;
	Fri,  5 Jun 2026 12:07:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zikTFzhEjsD3; Fri,  5 Jun 2026 12:07:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7794481DE9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780661223;
	bh=3T+xilYqgM618FmWXVSfrp1o9CWDJ3b+9ci8Wp0qyBA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8cRhurbavSde1nlxlKFMdU57YqJkWfeDHpDkmgn22PJ0HErKuVNTJs4n2pTwp7WTq
	 T9kONP97/wxxb48/7lx0/hb4XmkLnonoLuvIsDCNtuwqwy/a8HPl+w2Z5Q2FfwV/Xm
	 Z/D+YZXsgFFI1kaOiIIc6qA1hpuBbNCMbMoIlUgq+Vm3xNgklx6fOW9sZigAwbZBLV
	 pKYO9p+WYrUNo7dHnQwZcx4Z4C3wo0cxzBbNcP8aX36q9tbCwpESwGBsW+DODHMaaB
	 k2Sqm+bGpdLx237vKMakEuEHdIpjLnyU7DilSxFRgKhD0+OKqx8guLp8ZA+i0ZMeY3
	 wdM5pYJjeQUuw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7794481DE9;
	Fri,  5 Jun 2026 12:07:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5A32426A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2026 12:07:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4BE4C40368
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2026 12:07:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hmM9SL6tIXLO for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Jun 2026 12:07:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 20AB340334
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 20AB340334
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 20AB340334
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2026 12:07:00 +0000 (UTC)
X-CSE-ConnectionGUID: MflcwjgMTVaCp96Z+KzeDA==
X-CSE-MsgGUID: figX1R9DSxGNbk7FGUjSFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="81493964"
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="81493964"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 05:07:00 -0700
X-CSE-ConnectionGUID: 5tf4XtC0TN2mYVgazfUCYw==
X-CSE-MsgGUID: bzXtUq3kT9SDkL8Mnk+9dQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="242352133"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 05:07:00 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 05:06:59 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 5 Jun 2026 05:06:59 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.32) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 05:06:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rf3jQthsHwSSwe9ImVtFUb+Ruuw0vZRtNEcu5nyJp8iiAiJI65SyCjH4Hk2B4XPjXA9/zRCLMfWeZb+PqlijiOahwneVTpYlLqs5iPp0+3TSFRdkkY/cpkVxG+MdcJdiciRlOzqq8HRtZ2Jim7s7EoBx+FgjmTzDFJFVnEWsoUQ5zeJRnN+Gr98dr/T9++wsgNIhp9wyQ9+iAqnwlr21uql06N+suEN74IHIpll/AFTFFTiQLtKhp0ZR6VHA29czhapwbHKNURQClQhoWiaUski04oyVLdYChLUnKJ14Q3pAu/zLVeH3hNnBVuiegpI1hbFl0yQ6oTn2CFr5aypCiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3T+xilYqgM618FmWXVSfrp1o9CWDJ3b+9ci8Wp0qyBA=;
 b=WVffqhRXK0xPIyx02HFLaoaXtWi4tbJHCpTtVUL7nMzD+qEekUbBSKEZFFAU9pMTkByaZVw6ggslCCjijKmjs0g08LyLB8HP5hq/8mProyu5G2kx2PI8YMQVWzqg1bTUhXuEB6GiNWp3MUVxXUWChNogRraG4s51a48ylA6YqicMQLHgHyQVoZaEWOiIKzk8VXrwqQQp4ZKd2aeXfNZQiojvQ2f5EIynLi0K/+vQPD/0XQsgRTiH6pn/jRiW06elTbzjQ8+rZAeiaxy8R6V9dLBjG0jyTqKL7h7632QhSdt9Uszop3EOZAm7T8uVh8E95so2uiMuD72EBdBZAMqYeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4904.namprd11.prod.outlook.com (2603:10b6:510:40::10)
 by LVUPR11MB9858.namprd11.prod.outlook.com (2603:10b6:408:38b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.8; Fri, 5 Jun 2026
 12:06:39 +0000
Received: from PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::ff04:50e9:d186:6305]) by PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::ff04:50e9:d186:6305%7]) with mapi id 15.21.0092.007; Fri, 5 Jun 2026
 12:06:39 +0000
From: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>
Thread-Topic: [PATCH iwl-net v2] ice: fall back to SBQ when LL PHY timer
 interface times out
Thread-Index: AQHc806r/vmlH/1pSE6hWaCka69ZYLYv4Lvg
Date: Fri, 5 Jun 2026 12:06:39 +0000
Message-ID: <PH0PR11MB4904E79B141C012D58A2016994112@PH0PR11MB4904.namprd11.prod.outlook.com>
References: <20260603114904.1297713-1-przemyslaw.korba@intel.com>
In-Reply-To: <20260603114904.1297713-1-przemyslaw.korba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB4904:EE_|LVUPR11MB9858:EE_
x-ms-office365-filtering-correlation-id: bfda0af0-bf40-4816-4f1a-08dec2fae662
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|3023799007|38070700021|11063799006|56012099006|18002099003|22082099003;
x-microsoft-antispam-message-info: cyQZhr0cIdjN9Vwhy1KCwwac28ON1uHZh6Cj50OQS1RbR2d19sOS7pkywNpNcu5MuH4skaNrU9v6HG4KTmQxnkuCGyiNEX9YI4nN6Ns83izhNh5VmEjAB6aMHXznF2GL0eLjGQuAi37PKyCqcIPTwCOmlfQJbo8uPlh0fzewvyaDHbxawGrfT6IPImiMwRWXoVX6Xbw17osBNey5wHZsG/xm7OPrE90pGa3cdRcD4LM0K5Os2nQYjb8CarT5/prm0NaUqgEb21wPn8+0IwuRHYlb/r7Ky8etqOZpct1Sw+7PSCTWEerzjS6tyCF9EGTpnFfZxBXJ+DPkZ7Hd2uiVVXfeqWGUZHTjL7WVF8Dy6pS2i8ih0RYzufDF7dRo0XAMEVNx/dF8+aON4qsV/j6JYFWAlcxS/nZOeY7oaOyt9KK/6GQBxuSLircNVpLZfIN/+PAoDDvDJUvQCVy389cc0Ha9m73OzUV+G2R2lhx5Z3tvnD/u0kwKKzRxbvq02SMaMv4lAF+hG9Pn437ZUkVWKx5MH3AQu1p4Ka+RxgSSGit7kIXruSBwGlUjx20sN6GMOCbtytOkJrZ1Jt2VoKtyV8M0GDlwycfHoTiz7kjPZeBkREg1+10fMmHC/SJ8E2hlkMBTR0AGGxD+n5VlhkSLT8XcncSMTH6huzaA2g6FSu/82FH2aEev5G+h7yq7lU36d8zUM8akbM/SNPE52yQHIUq6eTFYsLpkHCE4rUb2Z2eTiJSIXCjyjgucI+7HVhwL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4904.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(3023799007)(38070700021)(11063799006)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+0YAzuagExxKYksvxaNJEYYtCLo6HlL2q8vsbZHCTDv+l7k/BnvGWBGS1NG1?=
 =?us-ascii?Q?LLG0sPpXXMh2VjqoyCrEcfDT8Bv8QczEInCDVaASbaqAiG9LMjiabTTAOHmL?=
 =?us-ascii?Q?bNPhDESnh2i7KzS4JxjSWa7Rsr7xd6UEKof+5CnGw5xPKSRFh6WP25XsenJN?=
 =?us-ascii?Q?Ls6xm1aiF2gG60XISpSr8sWDX7Fc41Ln70QQd70hwA0cBg0JiovWBIdzs2Z1?=
 =?us-ascii?Q?2zbpqeIxp/UUtkY0la+w7qP16OXVre9AMs3FbXl0C+xcS2gkKAxT66ICWE/N?=
 =?us-ascii?Q?lJS8bd+naqVPrr93k3q86zNF0/sbHzFMXrTo3NSwVNSa/RDxZiw9UaNhXvEX?=
 =?us-ascii?Q?oy3hXrrUrRw8kKKwtPGcincNZfb75auGaSt30Fuz4a4PFFjopkDLD60sv+RB?=
 =?us-ascii?Q?iRasNhDUpq2vlVVJrmt9sQMmKkaLgNqyVBGaOC2vCZAEyAoloMfRHapZBSoV?=
 =?us-ascii?Q?LjZu7L9fRqDsVsxpYwtMcESdGtfNzfptaX+ADJu44kduMJO7WIw20lvS2mDQ?=
 =?us-ascii?Q?BYLrYlo3c2B8umAyim3Byi1Qm8u//D6EvObEDG1a+dSxk4l9hoVM4eevxI9i?=
 =?us-ascii?Q?qhgcF6v8GKk4ITSmqg9iCFkPHC/ygCpnHBlCqwAHhE8sVChqhGWyjP5nz1YY?=
 =?us-ascii?Q?9XRg2sG1aS6iatmyGC2xalg2cL86aerqQZYvZMYqsc0u8MaLnhvydwpq8pX0?=
 =?us-ascii?Q?cV5RHy4U8ueyBALzkN/0WzxoUwb7IhPemYvKQxlyGFxxiuJxz4GvWImaO4aA?=
 =?us-ascii?Q?6WhrIzAY/vNF26B0oVBHS9JcQu2OdCJhTNQwT6osyz2xZUmii8s/e8Jg7eSz?=
 =?us-ascii?Q?UzRzz5LsWQ5OtrAsVf2KXJbj9HTM/8dCVFk4/CSmQ26J6levIvsbzRnBZWfm?=
 =?us-ascii?Q?toQx1NmIF8Gqais20KLF3sEVgTA+MfKPiO7tJw5gjHG3C5P0QMyKGIvuYot9?=
 =?us-ascii?Q?CDFcRApU9U7UeL5cX1KzzEHIMSlVGXPgNxinZ/FAddQCI5E4YVRFOGrW2t4V?=
 =?us-ascii?Q?XZN/Uss2i2HFh7qEfqfO4kHzqHuUiRdE+lkzh0kgXryUTjznN0kuq8DKJFfK?=
 =?us-ascii?Q?lyRhmCGBRNKX/KNF5ABJfUyhp/J0XK0hEsDHU5yTQIidUwjUfV72v/y4vLyW?=
 =?us-ascii?Q?1RF9rm8+NsXDF58l9xB+P9kceGqHbt3vt/VYElvsb4dRj84EMV8W1Fass7U3?=
 =?us-ascii?Q?VnmHtGgsB8JsD4gL7G5siBjUvt0MMrDeBQmddjLe0QqZ50xrqgSIdwUsqkVW?=
 =?us-ascii?Q?QsAuANwBhfbQj5sfqdEkTdQF67QrkEU7lB1b3R0VYe96nMsadM/ZqBpBnkT8?=
 =?us-ascii?Q?4/OpnyukoiCr9cGViAIl/TAgLF9yAwWMVU/9KClZXxahQez+cQtE2d8r2P/U?=
 =?us-ascii?Q?DcIw3mFb92Ga7FiQHXVyPfL5rjmQFHIRpV4+jigJvejmQ4w1cP5v71Nby3Fn?=
 =?us-ascii?Q?331+IGOJSjLfyhu1Ai9kkY7/7FWogII10w8lmqLZhj4H+uDQNvh10385NDfJ?=
 =?us-ascii?Q?SMJBgP7eCbHEpQjzifAQlrlBKMbHFsyPFyoguB2Q1HwBBmnCacnU8OCZC8RI?=
 =?us-ascii?Q?KV3qxdZ80MO9wo/BOd0pNaGImFsgF8bKIMhbgGfbyTmNgXQa4xFuFNUf6uep?=
 =?us-ascii?Q?btMfGoVULn4EAlD5RJp0Jf/LON3Ig2tOUOinkI7uXmCOZivI4AnYqixsy1XV?=
 =?us-ascii?Q?fWOsP6kx/KACNHapTLF3IOFf0JxBjYhjs+3QKUfOLdsUHYI0Ph5jppxYJ4Tq?=
 =?us-ascii?Q?ivKvNpxamQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: g0lpZtqCIaIKX3vPiP55fe7CPh9ZFsf5aWVt7Ij98fGx809G+PWV7ZzySM3vv1xVRRAXGouR8xvIFVuWJ+185eHN/NPFaeBn8Tzy4AFaeJ4rwtuCUUEAcxKpFK9WCKChG3xrQiLFjvZ0Ow5VMPQ+YzTxtaR3+BdGP5uRrKIdbMJuLB5kvp6vwKgwI0VZiaipXXPaLnc99rqE3pS7XX0siqzHvtNSfiQrNszMPQflmsvpi8rf4nayOTd/KsBCPzFlzdwh0R1VjR2vIdF6eWoh9EiGbcfQT/xjJ7Q8BiyDbjNXpnUmuOg9KoxAFbOOL4LerLS5EJTIFtzFjHBpqLosww==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4904.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfda0af0-bf40-4816-4f1a-08dec2fae662
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2026 12:06:39.5425 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o3pCDqCzi1kG7Iu2Q10yAWdpgAYmIEA0BkSP44r4yDPtoGgPrYltwtDiADXB22ggCcmIKXqqKaY0zHQODnrOs7L6vFOucrlDZVpXKH/9tTo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LVUPR11MB9858
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780661221; x=1812197221;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CA5E+RKvb4HSzZYNtySZIEk8ZC9tguPZ70qoK6WrCa0=;
 b=X0yKW3kyDnC2fCkRau0MctD0QQ7g011j5xCQ2di+Bn403yREiY5awc3o
 l0JjnW6hi6qU4XS/IWvrFEtmSlt3C6oDORUhiAzNjbzz2FA2wIIvqT5hq
 ahPNQ2FUPslH7kGaJPspc9IQ4H43gaYLyGmc9qxB9vEh1BLXhvUN0lh1J
 QR6Gd1zHX6faXdYyhELZWPNM8ZLA0v8zDwhIvFS7YT9Rh02Qk+yszT1Db
 4JYLHFMMhr28JhgMOiDsjyuaBUeiMdr7CwuLPrvGHL+W92UPohNZbA/Jq
 qaiUj+L6COuAq1G6juTCvxSSDtmar7/cyIBVeXIDkz8js3C8xczu1RBcn
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=X0yKW3ky
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fall back to SBQ when
 LL PHY timer interface times out
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 851ED647F20


> -----Original Message-----
> From: Korba, Przemyslaw <przemyslaw.korba@intel.com>
> Sent: Wednesday, June 3, 2026 1:48 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com=
>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> Lobakin, Aleksander <aleksander.lobakin@intel.com>; Korba, Przemyslaw <pr=
zemyslaw.korba@intel.com>
> Subject: [PATCH iwl-net v2] ice: fall back to SBQ when LL PHY timer inter=
face times out
>=20
> The low-latency (LL) PHY timer interface relies on a tight, atomic poll
> of the PF_SB_ATQBAL register with a 2ms timeout. After an NVM update /
> EMPR, FW may need significantly longer than 2ms to start responding to
> ATQBAL commands. The first PHY adjust or incval write issued by
> ice_ptp_rebuild_owner() fails with -ETIMEDOUT.
>=20
> Fix this by falling back to the existing SBQ-based PHY register write
> path when LL times out. This makes sure PTP is initialized when FW takes
> longer than expected to come back online.
>=20
> Steps to reproduce:
> ./nvmupdate64e -if devlink -f
> Update E810 card with nvmupdate64e, and observe dmesg errors:
>   Failed to write PHC increment value, status -110
>   PTP reset failed, error: -110 (-ETIMEDOUT)
>=20
> Fixes: ef9a64c07294 ("ice: implement low latency PHY timer updates")
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> ---
> v2:
> * add TIMEDOUT check in ice_prep_phy_adj_e810
> v1:
> https://lore.kernel.org/intel-wired-lan/20260511095830.1095984-1-przemysl=
aw.korba@intel.com/
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 40 +++++++++++----------
>  1 file changed, 22 insertions(+), 18 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/et=
hernet/intel/ice/ice_ptp_hw.c
> index 2c18e16fe053..9cd323bd9739 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -4771,15 +4771,12 @@ static int ice_ptp_prep_phy_adj_ll_e810(struct ic=
e_hw *hw, s32 adj)
>  				       !FIELD_GET(REG_LL_PROXY_H_EXEC, val),
>  				       10, REG_LL_PROXY_H_TIMEOUT_US, false, hw,
>  				       REG_LL_PROXY_H);
> -	if (err) {
> -		ice_debug(hw, ICE_DBG_PTP, "Failed to prepare PHY timer adjustment usi=
ng low latency interface\n");
> -		spin_unlock_irq(&params->atqbal_wq.lock);
> -		return err;
> -	}
> -
>  	spin_unlock_irq(&params->atqbal_wq.lock);
>=20
> -	return 0;
> +	if (err)
> +		ice_debug(hw, ICE_DBG_PTP, "Failed to prepare PHY timer adjustment usi=
ng low latency interface\n");
> +
> +	return err;
>  }
>=20
>  /**
> @@ -4800,8 +4797,13 @@ static int ice_ptp_prep_phy_adj_e810(struct ice_hw=
 *hw, s32 adj)
>  	u8 tmr_idx;
>  	int err;
>=20
> -	if (hw->dev_caps.ts_dev_info.ll_phy_tmr_update)
> -		return ice_ptp_prep_phy_adj_ll_e810(hw, adj);
> +	if (hw->dev_caps.ts_dev_info.ll_phy_tmr_update) {
> +		err =3D ice_ptp_prep_phy_adj_ll_e810(hw, adj);
> +		if (!err)
> +			return 0;
> +		ice_debug(hw, ICE_DBG_PTP, "LL adj failed (%d), falling back to SBQ\n"=
,
> +			  err);
> +	}
>=20
>  	tmr_idx =3D hw->func_caps.ts_func_info.tmr_index_owned;
>=20
> @@ -4864,15 +4866,12 @@ static int ice_ptp_prep_phy_incval_ll_e810(struct=
 ice_hw *hw, u64 incval)
>  				       !FIELD_GET(REG_LL_PROXY_H_EXEC, val),
>  				       10, REG_LL_PROXY_H_TIMEOUT_US, false, hw,
>  				       REG_LL_PROXY_H);
> -	if (err) {
> -		ice_debug(hw, ICE_DBG_PTP, "Failed to prepare PHY timer increment usin=
g low latency interface\n");
> -		spin_unlock_irq(&params->atqbal_wq.lock);
> -		return err;
> -	}
> -
>  	spin_unlock_irq(&params->atqbal_wq.lock);
>=20
> -	return 0;
> +	if (err)
> +		ice_debug(hw, ICE_DBG_PTP, "Failed to prepare PHY timer increment usin=
g low latency interface\n");
> +
> +	return err;
>  }
>=20
>  /**
> @@ -4890,8 +4889,13 @@ static int ice_ptp_prep_phy_incval_e810(struct ice=
_hw *hw, u64 incval)
>  	u8 tmr_idx;
>  	int err;
>=20
> -	if (hw->dev_caps.ts_dev_info.ll_phy_tmr_update)
> -		return ice_ptp_prep_phy_incval_ll_e810(hw, incval);
> +	if (hw->dev_caps.ts_dev_info.ll_phy_tmr_update) {
> +		err =3D ice_ptp_prep_phy_incval_ll_e810(hw, incval);
> +		if (!err)
> +			return 0;
> +		ice_debug(hw, ICE_DBG_PTP, "LL incval failed (%d), falling back to SBQ=
\n",
> +			  err);
> +	}
>=20
>  	tmr_idx =3D hw->func_caps.ts_func_info.tmr_index_owned;
>  	low =3D lower_32_bits(incval);
>=20
> base-commit: 80b47e88f7ead00b0795e9f2833f1d0cafe11d90
> --
> 2.43.0

Sorry, made a mistake ad did not update the code in this version properly! =
Sent v3
