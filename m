Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +N/HAPsdF2rw5AcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2026 18:38:19 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 396BC5E7DF5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2026 18:38:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3AB9B4215E;
	Wed, 27 May 2026 16:38:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JjNU4IYZD70h; Wed, 27 May 2026 16:38:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A58BF42163
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779899895;
	bh=hdfMY3vSP8uf3FJLtsoCdfEBop4R25vr1Q4s9SZNlxM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ipxVu5fgW8n/v25Mn8lkTqwZNghTU2vz+yf1NhTlUMhXD+gnF1p8xxJ3SVxfjV4PJ
	 +3h5gpCRTiYf16z7vvgJqPprF5Z+Tlqjw4XxXo5GyDHDcHHH83f3B+1pRMHakww7J0
	 Kp1glnm7g7CcgoAzJpK0MMOQ6txvxVJiJaaMVOeaWMz0ocRyKlwyxrRuBLKaTTIATu
	 2GLq55joaaqMbnhPb6GBn/N5w2mNh+1/TJVfVBs4ww7x6l//YXlrdGdBNlfzyY8knJ
	 uY1Ut5A5I3PztHOsJ29B9zuhHeDxI9swRW+0Al4HLIeZc6VEc9O/y4AreNgCEyjsVe
	 cBulUh1JwiaAg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A58BF42163;
	Wed, 27 May 2026 16:38:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8D763344
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 16:38:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6E20F841F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 16:38:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WVPuAMWY2toS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 May 2026 16:38:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BC116841EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC116841EE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BC116841EE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 May 2026 16:38:12 +0000 (UTC)
X-CSE-ConnectionGUID: VWyKFXEOTLiz4JuQzkDwOA==
X-CSE-MsgGUID: KSjmXu44S3ehU5CAaj2Rpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="84626103"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="84626103"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 09:38:12 -0700
X-CSE-ConnectionGUID: 881rBAbrQzObKs2n626jIg==
X-CSE-MsgGUID: YQoL+GHRSPqWN1xZmBiFdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="242139947"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 09:38:12 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 09:38:11 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 27 May 2026 09:38:11 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.8) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 09:38:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pgGrI71HeJ7Q0S62u141pK3Z2ew4K3n4TYdOQYtakwntTmTIk03bv7oSMcqMmB0rHZGe66CrXbN4+87Ie32T90kO1mHOHuntkm4M26S2MmsfeXcTueW6tiISZEjBf4OlNMq9hQFuQCVg2lA9ZOrMktvvm7BYFIGz4VCRkxG4SI3h88J/iQ1AZ1OvySj7TJaSov4HWiAEsx1XvLc5nP3lfb9WSZ4jBhPIC2mqhILiAQi1MF91M12Bu9GIJUUzkKAC4HopMVBKgkxwpSuS75O0ib3jXEf/ylNoOTp/+yXJbx7fLG27hT6PP2uZYqfPukzOuu5o5y70OETDdP6l3RzlkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hdfMY3vSP8uf3FJLtsoCdfEBop4R25vr1Q4s9SZNlxM=;
 b=pUNMDZnL1vfM7fUimh99+b1fQzBDQUMohdEGbrjNvuYD8c7Ip4wJW1yMxoiLzO1K2jmUjlJgkd8XfLLSxSe7dSbES7MfdUsW4N1x67FJGYpTZzgDczRxPqTQ73gZE0uIxOv59B+QShT6eo753A4MySL93ZHUm4szimIcfnktD99mHeQsDb1PuCk3txT3E4wkbWjsO0iJdU9hNchBwiZVWmUYoyxzN6IwGwT07a3uSe4SkdlMfBu7WaZkLIMpR12UV8Np1iBeCz5V4ff7ugVuiOHZQ28eeGlSs0FG4ecmJcUgFrR8qlaIm+cs1KD5FWdOG1Eqs+KaW02ukSqU4WOfiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by SA2PR11MB5100.namprd11.prod.outlook.com (2603:10b6:806:119::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.12; Wed, 27 May
 2026 16:38:07 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%4]) with mapi id 15.21.0071.010; Wed, 27 May 2026
 16:38:07 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 4/8] ixgbe: add
 IXGBE_ITR_ADAPTIVE_MASK_USECS constant
Thread-Index: AQHcx1llPJ0FyBAS506QjHEgrNYgCbYiX4aw
Date: Wed, 27 May 2026 16:38:07 +0000
Message-ID: <LV1PR11MB879054F145ECA0D80A08FC1490082@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260408131216.2662245-1-aleksandr.loktionov@intel.com>
 <20260408131216.2662245-5-aleksandr.loktionov@intel.com>
In-Reply-To: <20260408131216.2662245-5-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|SA2PR11MB5100:EE_
x-ms-office365-filtering-correlation-id: fca34f60-0d1c-4301-60f4-08debc0e5517
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|11063799006|4143699003|18002099003|22082099003|56012099006;
x-microsoft-antispam-message-info: /+ZeHkERM4DI3jfbyFtlkakv07gA1o/OeZMxABafezf35Ha2UkUSXvVWT08SzIs1nix7/NsfpqnbQ0eLbvteVjE+lWEtC91XOX1SuQaSmB6or11+IpkN3QmDC2AO9bYycGj2NlaigkrtJi2oR0BzGmM53iDtwG0oTAZl6DblaSUkE+aVstj+tMlBg+bTxPn3JCJCVLR1g5M2xbTo51xgGYDdJ6r2OEJKfSDnGsN9m9vVdXfyA3mv2OuytX0oM9LPEbDB4Q126i52+1/2cWlDN2uB9LF5Aat6izCX1lvXNxAERt6w/HGP68G6D8VF7RDljG22dEuJSMyOCFtWcy465ZYufJBIuchrbLZLXd9GmoSnCQT8VlVHPDlhwSA2WeRbuhIrxXJbSqeJW4UlcfItcjYrFYiRZjJesUosbOQuo1C5wxHR9Ow938Qd1QEq5YSEGJ3X7QI+RGwa8BeJt+N2DGO1WMUAmO8krhn86Fiq5nCljgWyqhrA1Rrl/xoGi7YSNY6KjDEHUW9v5UhZnmoh71AkluJImF2Pt0o3P/6K5mDYYzgibUHcQgXp9MteJsbUZ/VKQ+9AzuSajW2eTfIdHs+WWHL0c9ndgL/tS8R5gKBivOgB8EDoMrDXNol/kIWv87IRRqy5NB+tAkX2ZNnhbhxKFnnDjTbnCXmeEalSwPqpaFG6qj5UWbWZFbOHoCR1WDVnhr7qud3Qv1Y7lA79cXYhLDpqx68g29T7u4JFhlKpsISTebkT2DTS8pY+oS5J
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(11063799006)(4143699003)(18002099003)(22082099003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?o64m7kTGyGLwIug8k2g12BLkXfPiL85M8kE/kdYYLwc0oOcx5Vd3pxEYx+C4?=
 =?us-ascii?Q?wkSVPO6xs7wXGjfG50BdSbCgX9GqgVdv44cqdNQ0WJscM+BikBn5FAyqfsPu?=
 =?us-ascii?Q?da28tV8qk8KlvM8I9M2sb6p+APGCuDML+bfF2y7kQH6tTnC6G6jSdX7opcj4?=
 =?us-ascii?Q?ESIVJTYs8vMzdh6mPdeOo6IMCR8lkYqNgNLO2d7CQtvxCIea/zId15Zopsvl?=
 =?us-ascii?Q?QbROeX5WzjdIaaX1cmNl2oINOJv91vcPIbdPELECwkuvV9MNIt3XGeWkDrfB?=
 =?us-ascii?Q?cpkp/OCFW12Ih4PvhfHNv8TGOnmo2yfWigszo4s9cd+0/m7DQizKVsEP/Jwd?=
 =?us-ascii?Q?yuaCVO/lIOyHSQ7THbEDvmXYG0NuQ22BGrqnJ3CU4z7PRN+Mj/7eK9TlG/r+?=
 =?us-ascii?Q?57uxF1M2QDkzfpgMbSIlvILJZwuSRxEAgJXnqV0KYVnX/LjwmuuaJ+2qoqXB?=
 =?us-ascii?Q?LtL+Q6Yabeljb3EZjs6VNsRcqA01m7ZwKnfFwSTFmfHPh9/IccpBFvw7fY7v?=
 =?us-ascii?Q?YsKUdCoQuVnCVDaTIxe0/DMsKfNfgnyqY2RAoE4ZLpiwPGk+7RsUltHCABp2?=
 =?us-ascii?Q?9Nz6dWhSIUMZ0CtmaSR1yvncExpa785WcINLYaJjxihsoKFsKFVrFE/2uyTO?=
 =?us-ascii?Q?KLpivntWizrrujU5tA8GbhrcgLPSlhIaw8/GSeYlIoD+e3dlspy7ApXSgnAp?=
 =?us-ascii?Q?4EL4cBY5zfgz+rZrwoTv1beR4NG/yriwEa2hkMdF4SFF+JSvUUWNCGbRPhz1?=
 =?us-ascii?Q?olR+/EKX6yDdV7vFB7XHZe/YL6qLvv3WGrO7kMFrY04aP5kQEpp89c9sadcf?=
 =?us-ascii?Q?YBowfSPSeHixzSKlamgnmZaj9YLyiQ3FHvm7mLPetABqSa96b3o8PGn22aL6?=
 =?us-ascii?Q?I/sh9REIHxk/1Pm+0SGwND5P0rriydvspLe3v/dGtKUXPNXP5ZrCAsDsSuwB?=
 =?us-ascii?Q?DdZkuNyrffn6BappBxodyHoKJM3ntxIM8x1J/gHNCfXfW4Gk+FClj35I8Yzo?=
 =?us-ascii?Q?nIyMtC6Xn9irIz/dZCfT8NYasR2lD4+4ieie1SF21v/VjN28MzHDXohu8vf1?=
 =?us-ascii?Q?o1w1G0hRwjIaMYLpUIabVfJNni9Re94yhNv6+CnCVnJ4gN//XctvNQ7IJG/U?=
 =?us-ascii?Q?kWoMY61iK7DaIq6mcH6U1dBaLeoWFNPg6DtBv8TMhmwaChuqcEx9NVeJ1rai?=
 =?us-ascii?Q?EsOF53dHKmk5VtVBM43Zymyf61MGvuk4svF/nLqiHQ4vPyZjl2R3AsPfO4fH?=
 =?us-ascii?Q?BLyWe9CbtlW6sEURXTHDsf3RGSs55AqJz7m2Di2HDgIK0q+rE7ZWdIj3xPO3?=
 =?us-ascii?Q?7ws77sOOuvJC/n/6I1jbwqjQg+AJ8ZS9H3OBs6r+LXpn+IwrHPz1ZmI1bRJm?=
 =?us-ascii?Q?0CUAv/sLCgNAmCSounZqixpZE+qds+W7jbY2y048nWOApwOv6EQrGZ3CFkFF?=
 =?us-ascii?Q?i1eowqELHBklWuK3mdxSFfzs9uz4z2cc+kSCKSfqAIY6iTynPmNQ+TipQNGN?=
 =?us-ascii?Q?KSplxt4oQIwXXgdSdflCQs/RJQiK1dGD5ZsMPTbpR6U3GpcGP7bf8dFoADVu?=
 =?us-ascii?Q?wMVWjKr3+Gf5ifceVEjh7P5aFaO6y6/4jK1ejP7BKGiuZZg6Ebdy/W+EsQsp?=
 =?us-ascii?Q?ETyedtG57veO+raY0q0i3mEPzk1SzoKs7oDy3ejwe744566BPLff0k2dwA0G?=
 =?us-ascii?Q?52DfjOsTgbaanVel+MdsYMes92ugaeh3tXuN673e1VKJvpZ8tWYQI1eChM2C?=
 =?us-ascii?Q?5E6+ZD1aTw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: acWHTU6/wbJiIfE7EGFTX8PS1hmciggNMK4YTdKj46XjmhF3YBOvJpLm43kFn7QOSkPmpobe9mFJHgv/lxyI6KYDS9WpdY36TMGJD/7Gfz/2b6BISvNW96XO/bDF+udcMme+vdBn4/vgbOB0/q95womcFmCR7FaYviYmOHHSNhyVQ0vwf9Qz7ebrgDIPmWkFSBKPI+fQGIUuVA5omHCBtgIB5JOX2wPAzuWmkRztlbqYNL58RLaEng2xGHAMPf3TVr7jZyE0sNCk5oLf0BaaBqGke41EjEGr+/2QWZ3WjxsAnQcMRfQJ0o6Y2tM7UogKvlzvpxHwN/RNWE1Z39ql1Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fca34f60-0d1c-4301-60f4-08debc0e5517
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2026 16:38:07.5576 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C15hCPQx7NJSbgajHw5Qi5MsdnZj5PuUXUfXd29LU0xzANg6OkvqhOKkgKn2Kx01gwNjA6OFJxI8YCZibbqgQdibR8MT4GgQx5a/o0xTIe0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5100
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779899893; x=1811435893;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LqqiXJylD3Bd3InxNCJB2NO7RjjVzeaOKxxjrZSkCeI=;
 b=LhRgDdUeSrpC2Tc2v+yiUm+jdJlbJFtSUbo4l2DMiOfXPhH9LJtbUc6P
 55gnaqLFVvZUZAGuj+cLY4oUTfULKNfAEy8Q9tk3StRRM0G7Mzm8diwNc
 h3qF/lcx8yWtHgH51dH330STSEnBL+Uaocfh1pEjBKZWolh78/+DoHM1Q
 TZSHnvPwxowMRYTWcli2ebc0bjIZO5hjNoJmz0af8flUJDFHwcK9bdGp1
 GyWPxNo6YTmdBl4zD7nE9zK5z3kWtnizJqVGYSdkqq9gGq8EIAMRudmGt
 1XUMpc/qAv/Dl4e93lGORheBCK2/Wy7C5nC4SdlThi4yFOvqkHtnW+XgR
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LhRgDdUe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 4/8] ixgbe: add
 IXGBE_ITR_ADAPTIVE_MASK_USECS constant
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:email,osuosl.org:dkim,LV1PR11MB8790.namprd11.prod.outlook.com:mid,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Queue-Id: 396BC5E7DF5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: Wednesday, April 8, 2026 6:12 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/8] ixgbe: add IXGBE_ITR_A=
DAPTIVE_MASK_USECS constant
>=20
> From: Alexander Duyck <alexander.h.duyck@intel.com>
>=20
> ixgbe_set_itr() clears the mode flag (IXGBE_ITR_ADAPTIVE_LATENCY, bit 7) =
with the open-coded complement expression ~IXGBE_ITR_ADAPTIVE_LATENCY.
> This is equivalent to keeping only bits [6:0], i.e. the usecs sub-field.
>=20
> Add IXGBE_ITR_ADAPTIVE_MASK_USECS =3D IXGBE_ITR_ADAPTIVE_LATENCY - 1 =3D =
0x7F to name this mask explicitly and replace the open-coded AND-NOT operat=
ion with the cleaner AND form.  The two=20
> expressions are arithmetically identical; the change improves readability=
.
>=20
> Signed-off-by: Alexander Duyck <alexander.h.duyck@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1 -> v2:
>  - Split from monolithic ITR cleanup; this patch only adds the
>    IXGBE_ITR_ADAPTIVE_MASK_USECS constant and updates ixgbe_set_itr().
>=20
>  drivers/net/ethernet/intel/ixgbe/ixgbe.h      | 1 +
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
>  2 files changed, 2 insertions(+), 1 deletion(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
