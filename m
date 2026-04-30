Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uBXeNbtB82kGywEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 13:49:15 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7DE4A257E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 13:49:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BAED484A5E;
	Thu, 30 Apr 2026 11:49:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8fJQ_-gvlLT3; Thu, 30 Apr 2026 11:49:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2672F849BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777549752;
	bh=MuoY+OrA+tn/ngEMI1QUD/khwuh/xt/P/o1kN4mbGWA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J+CjfxV45+/XKN9U+mX0nFnaPN06ftu3ByPj2yQbheU+T4vjfDklQ5hDE1d0MSDpz
	 AEJhTIN+ZaEtbEFucSyvEpB14yjUSBGS5KxmcEHNmfAjyRpPbKRKm2y+urPs3YN5Et
	 ET2Oj52jOg8RPJcWjTJpoubM3xr5siwL9EPg4bpUpaq0r2Pofpo7yV7MIxoqNQg/Sq
	 gYGFE0XIyS8dYBJu+JJTQXG1205U8lt9HBIN6UG715PuSwgHzs/FSKiHzN6m5xcjzu
	 6UeVPxqykDyza9RVxUp+aVI04J/6fblP7ohtnLmxgEzenw4PRftUclcRlA2R9G8fr+
	 ItBLQq6blmx6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2672F849BF;
	Thu, 30 Apr 2026 11:49:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1D17218F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 11:49:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0EC85429A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 11:49:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sLBuaDK76gAd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 11:49:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 02288428D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02288428D4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 02288428D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 11:49:08 +0000 (UTC)
X-CSE-ConnectionGUID: MGYVQAqHQrmA+27UX2Vbbw==
X-CSE-MsgGUID: 2hitXuQcRainZO5iEyz/zA==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="95916906"
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="95916906"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 04:49:09 -0700
X-CSE-ConnectionGUID: abR2O0eVS46nS15Vs2AoNw==
X-CSE-MsgGUID: rZw1CaoPRcGfs2662lM6ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="238877213"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 04:49:09 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 04:49:07 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 30 Apr 2026 04:49:07 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.5) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 04:49:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gsjLsHsfRaCfq3U6l8Dhy3jpKGZSDSsL5LeulZPTjNGYc+X3sygpm8Vu9J+RXvYfl8/BJobbAGgIR3NvhrFGWCWvRjG37ZglU48nrMk2R947D6SsLaOgIiwJ5FbAxgKlSd27IdV4K9efMetthBwfEF1VdsGpuUf9HOrlzN1NxqOieorFaEHUgk+jp5eV4H4PQ8SQuqxiSyXmvhsTBf85YKMe4hxyRkUNSS5x8o3oh7jwhUm/VOLLHVul2ntk8UhNu6Xr1Tjj8D6IgVI2sUjOTtHAK21KNEVmnL86jDtxICHy4HMKLfpd8eXflYWByWiOtugf4l1oEU0TjpVTLtiQfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MuoY+OrA+tn/ngEMI1QUD/khwuh/xt/P/o1kN4mbGWA=;
 b=K3uJhMw9yPs6dyoSYJwQYuqNryoUxTFPdAKDHJ+UdBNoWmVFLcJyKkgJl1IBTR54ZZ2icuVYYhO10h8e7QCXiUcVpIp9263AuRJ0NVveMcEf3kcnFTIyzT9Y+Mtpq8eN7qXGnTbHH7Os4CtB8FOVCAg1naVPntx/bvjLgDsbPf4YcUjK/V845dX8HOxR+cFNasUKwuiYcIxJEY9AefhI/E5Wz600wadTny8cYE85tMBj88XWb7CVWbHey0zmVuf8mZftvKcmhZfeQnDtCZxCVhQghBNbLCxz6LTeHezCLg7bw9uagUpi5OjEiCJT/xsim2bkR/2e3OqQIhIv7Jee0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CH3PR11MB7323.namprd11.prod.outlook.com (2603:10b6:610:152::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Thu, 30 Apr
 2026 11:49:02 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.020; Thu, 30 Apr 2026
 11:49:02 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
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
Thread-Topic: [Intel-wired-lan] [PATCH v7 net-next 1/8] dpll: add generic DPLL
 type
Thread-Index: AQHc2IZVM1AVZhCx0k6beR8/zr23D7X3fUjw
Date: Thu, 30 Apr 2026 11:49:01 +0000
Message-ID: <IA3PR11MB89864B070906C21C67EF0886E5352@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260430094238.987976-1-grzegorz.nitka@intel.com>
 <20260430094238.987976-2-grzegorz.nitka@intel.com>
In-Reply-To: <20260430094238.987976-2-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CH3PR11MB7323:EE_
x-ms-office365-filtering-correlation-id: 57f0ac2d-be55-4326-b8cf-08dea6ae7921
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: VyDB53wEgaCAQWF96GSkm4w0vzkjjLxafabubwZBH1Cp1qS/jRfeMieDX4Wgn9PnqT0pqSpc6Uzf7buqmX2hQEEiB3oxIHR+GyPNqri8IwdV79BBwn6BpwfRvzZURZ2LIuRGigOONbaCpBM1v4N21eo3nhmFhJivFZ0Ih8vCLn0ojTl9ArVHfgsNKKjl4d3Jg5hI9ml4hHWgI37azpPLsbMVOLRl7ZdA6/ju26BUP2tF6p2Pjp+2AfquKSaK2UKlOT22pDIIP1B7frP0iroudMwLeVfmOCvPxXdaNBOQaPp+XWSqblCOuuEy/5TMLy68y59i2TQtC806vLiocvGV5su9uj9rQv6zQ6KMgh198Zl0AGKwrwg7PeloWnciC1mmrVB4DYjZ7H944yrZrHgAGdyj9inFGAXFqrhEDN7+O0RzgGqWtTWTTRnp443nI3IGkaW4hmZUvb2vzPkqVU/6+ar/P7fhpKX7zuu91H0lXFzYX2AF8iQg0l8J8JAr8Hgdw4Hq7nth2WltJW05PgGLMCECTbkPKFvLH7u7frIzQzkATL86V+i/knNTM6tL2bZoK2xOIEfa7UvLtmy9HCpxuefoHWFxyuVR+qz+qZu2ziOd7KUCH3ppL+OJGOCToYC2b9eMCJ6RVoh6ZJEYsRtKRpRScwIm3D7viH77llvjkjAXvrORdzKV5plTURnLxO17Z4LuTJ+b1tc/dqh+/JiKp8dviysla8dAK3KJHoi8GyqzEpbKFLVLdAR0gVDU4CE1vPorJZF0ehkZVtyEyL/sDAyjAhkFgNZBp2igQ1G5z+s=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KMD2IsAO2+SL3Ke6XnkH9us5dLda2A+1uPQz8mXgJr3yOI9IJpDPA1Ml11wB?=
 =?us-ascii?Q?CRuI5JQpa6Qr0P9zOclTBhhauEv7e0cZPoYMBHhTIKFJ/nmrzR/KEZn0XObJ?=
 =?us-ascii?Q?2x45uHYBPYBxA/7diIAQHAT9TtfgD6v3o9dVhvAGDD/MrZ1v7A4c9L3pCrAE?=
 =?us-ascii?Q?63OuF+VXumkfUbGB9AXBGh3f3wnHsJbxuM7Whr/wweiWvWEOMHgnznPkiQ5p?=
 =?us-ascii?Q?+BNTTZbZU4IIe/lRwO7BL7vC2geYpMfSVmr4hF2VzHXWxsbJl7QE2uQa3Bif?=
 =?us-ascii?Q?O2brHBjVW8KTIb1hI7tYlHzCOCYMsO55wvj3A6q5fQVxEBIGgQHDE4ITzOVh?=
 =?us-ascii?Q?4RDjrXcd3ETuvcRGYDzf87/wTHb/p8N1ZuCRLaJo4ERhWD5YZsifmR+iV3nv?=
 =?us-ascii?Q?RJ5iM/2WQlG1vcyoRUBaLAoO8Rsb36NW7dQrZCJ7lCeD5jKSXhXkSNC9WBpk?=
 =?us-ascii?Q?Qb0RkL5a6kwSQbsEIpivaQ2xTybFx16ieJWgDdZgr9iieM2AISSPGbYbIAAB?=
 =?us-ascii?Q?j/VmLCvSv/timE0yj9f+8XJA+vQtCrbmf8FS4bcZNWFwUmPaNpWA9h/U6lvW?=
 =?us-ascii?Q?9g0LSu3KXyhF/kfhRWPz2xPkCEu9dSugZl5hKVw6h+4nwpE0GycSHbZRTFNF?=
 =?us-ascii?Q?ZsHlv3byE4qy0eR+YaRlBYgeO7gmLIy6dvtroz7sL2pf9T48Buf6OORDD1/k?=
 =?us-ascii?Q?6bJVf5zqVh5lT4Ix9ioC1YQVUFAr3+18/0Bdi038nSY/8g0A4ckm58Jtc837?=
 =?us-ascii?Q?BF1c76CBITJCBmZNhbUFkZ1CM/HRc3TJZfOpog5Lx1muGoTWNVXoCtdyLeN0?=
 =?us-ascii?Q?P2u5Xv4C7ldpu1xYtX1QkOD6EDnF7cLIwJJYjw3ZFxef2HBILnFI8TThkE2l?=
 =?us-ascii?Q?41YG/vbB24AiEP+7r5bxh3/8nepO0AZDDYgBcZh+NBNhinpf+o8EoZdGagRj?=
 =?us-ascii?Q?jHgOafI00YTsJJ8F2eekSu28MrMe11390r94dtIpH5DFm3FF2zyIjoy16SSz?=
 =?us-ascii?Q?8q1BZ256PxWPxVmkA3wk6DCxozFaa3xlZpY5MU0vG74qzHbEfP9BFM/67rmE?=
 =?us-ascii?Q?EiLhY+PM2RcO/H+X4ZVQq8H+lVJsH8Y82N4Rckw8scHe8/kV8d8h6WkvLkS+?=
 =?us-ascii?Q?3Ie9j9GnP1Qx3FT5pnv+cuFmO0725l5L0MpZDMw2wr1QHuzZdwxPsZr0hv5/?=
 =?us-ascii?Q?5zTNTbis9kIRqv2pmSyGdeeixLodK6XnRZKrmnouxUYS5491phgHZUEL8qaK?=
 =?us-ascii?Q?B1Notrm54LwF76ws6wAOtlqL1czFuE1gwhEMbijkodMTKPIAFbkv6ZaULnyc?=
 =?us-ascii?Q?/viFxKApiW+NWmHDhM/plzGKoOl+mjiyoazPRRCe0p+bwor0VXljge2FUu7l?=
 =?us-ascii?Q?1s/+7SgAdIhkAgqnss3swr7GpjgoDqIIXOUnWk0MfLB8Df0frdsYc31ymc/2?=
 =?us-ascii?Q?hS2idM2lzOKjQrBn2aw7fvb3/MyEuNtcgF4J8l82o1T1l0IRKUvG7AZDcnZl?=
 =?us-ascii?Q?in+aJN/fOdpzIKdwq14eayrWdNEHKwyIi6VKyWGRm+CRFR3xSI1hhMtoFJD+?=
 =?us-ascii?Q?Mpn/7qkbpSElbMY4iPN7iLLLvqbJHgHOUGyAKXpu7cOmSDPeMGBn+CgCmAwz?=
 =?us-ascii?Q?Fxp6W47HF3oiC5gxwyTvqEu6pgdmg+HWe2aSwy5Ym3q2NqhYwoiKD3z4lAdf?=
 =?us-ascii?Q?/ubIWk95if005Muo8ybGPqsgMmw/ngWaItKJ6WFOckubnI1YhAjv+47JDhhj?=
 =?us-ascii?Q?ymID/3IJl3412vnSCFDCnpvGGGy82/M=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: F2DTk65YZFSAeg4D9xA7f1mVMLTFoq+oupjapujvtfszEls1aCEwD5j8SMXVo9CwZl4RuSVB+wpOjzHh1MEsqkgqzUbIm4JhezN6VxY+36qxe2pMd9CFYepyuM4O223ZY9BjnZDU/4hkmnKfInXUZy5U/c63USFEk4XvjYrnyF5L4rOyTCNHelNUo3oB/0x8hGTzf21GibMIY3ex29e76JEV2rAcRFqhZqzYM0wBzp6i5EWvAvahnSliX/fZL0Xf/lakdywdtBkxSq1rnyzRZ8AtnLs/5bAMolTIEHAhqWi+FXIOY+igSKDdpr00UhHJs0MoaSL40UchIThLzImSJg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57f0ac2d-be55-4326-b8cf-08dea6ae7921
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2026 11:49:01.9379 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Pt7C8JZ4UL3lHZQpLYam36nebYXo/ahdMrecu2/r5dluecyXWcSM73QLDfJJnvCxZHXtuVdBe1fLuE+I5VAH7IL1Ss9VrGUoz91UZTUgSYQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7323
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777549749; x=1809085749;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ySgs0LTgP8A1Bvx1kssqL/V3+qt1bR50zT0tyS2Y8TM=;
 b=hGvI3yMIxjrH9ptDsN4FQ5Jj8E3yH5nsIA2XCcWL3kFH13kKQx/TASku
 mBNXP2KIRKO04xnOYZT81n5MrqQHIOfuM07AurkqkxCoN/196t40BGwsi
 rTTmsYJ9+AP9+Z7R5owAyjEDEWA5vhTYcNgznS53shd4nyyTZ6e+KOtZU
 3oGs1XNC36qYMWS8nlHIT7TxGBV9pW8JvJ2vQx8eqqgE76BAkd0srFF88
 2Mb5cj5LmrqPUopa1JlJlRQthmr0Le1Jz4NwIrKC31aW5zsFWn6pFUeYz
 yhsmS/5RTVHJLkzBdrq/xpeVLpyAI2HFfY+YqjftpKJvihmAsIIuCfVj0
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hGvI3yMI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v7 net-next 1/8] dpll: add generic
 DPLL type
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
X-Rspamd-Queue-Id: 1B7DE4A257E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Grzegorz Nitka
> Sent: Thursday, April 30, 2026 11:43 AM
> To: netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> donald.hunter@gmail.com; linux-kernel@vger.kernel.org; Kubalewski,
> Arkadiusz <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch;
> intel-wired-lan@lists.osuosl.org; horms@kernel.org;
> Prathosh.Satish@microchip.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; pabeni@redhat.com; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH v7 net-next 1/8] dpll: add generic
> DPLL type
>=20
> Add DPLL_TYPE_GENERIC to represent DPLL devices which do not fit the
> existing PPS or EEC classes.
>=20
> The UAPI type is intentionally generic. During netdev discussion,
> maintainers pointed out that introducing identifiers tied to a
> specific placement or single design does not scale across ASICs and
> vendors.
> The role of a DPLL is already inferable from the spawning driver, bus
> device, and pin topology, without encoding additional purpose-specific
> taxonomy in the type name.
>=20
> Using a generic type keeps the UAPI extensible and avoids premature
> naming that may become incorrect as new hardware topologies are
> exposed through the DPLL subsystem.
>=20
> Expose the new type through UAPI and netlink specification as
> "generic".
>=20
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
>  Documentation/netlink/specs/dpll.yaml | 3 +++
>  drivers/dpll/dpll_nl.c                | 2 +-
>  include/uapi/linux/dpll.h             | 2 ++
>  3 files changed, 6 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/netlink/specs/dpll.yaml
> b/Documentation/netlink/specs/dpll.yaml
> index 40465a3d7fc2..572cf7ae5f36 100644
> --- a/Documentation/netlink/specs/dpll.yaml
> +++ b/Documentation/netlink/specs/dpll.yaml
> @@ -138,6 +138,9 @@ definitions:
>        -
>          name: eec
>          doc: dpll drives the Ethernet Equipment Clock
> +      -
> +        name: generic
> +        doc: generic dpll type for devices outside PPS/EEC classes
>      render-max: true
>    -
>      type: enum
> diff --git a/drivers/dpll/dpll_nl.c b/drivers/dpll/dpll_nl.c index
> 1e652340a5d7..9a3b70ea3ae0 100644
> --- a/drivers/dpll/dpll_nl.c
> +++ b/drivers/dpll/dpll_nl.c
> @@ -34,7 +34,7 @@ const struct nla_policy
> dpll_reference_sync_nl_policy[DPLL_A_PIN_STATE + 1] =3D {  static const
> struct nla_policy dpll_device_id_get_nl_policy[DPLL_A_TYPE + 1] =3D {
>  	[DPLL_A_MODULE_NAME] =3D { .type =3D NLA_NUL_STRING, },
>  	[DPLL_A_CLOCK_ID] =3D { .type =3D NLA_U64, },
> -	[DPLL_A_TYPE] =3D NLA_POLICY_RANGE(NLA_U32, 1, 2),
> +	[DPLL_A_TYPE] =3D NLA_POLICY_RANGE(NLA_U32, 1, 3),

I think you need especial note if you manually edit "do not edit directly" =
file.
Isn't it ?

>  };
>=20
>  /* DPLL_CMD_DEVICE_GET - do */
> diff --git a/include/uapi/linux/dpll.h b/include/uapi/linux/dpll.h
> index 871685f7c353..648553053cd8 100644
> --- a/include/uapi/linux/dpll.h
> +++ b/include/uapi/linux/dpll.h
> @@ -109,10 +109,12 @@ enum dpll_clock_quality_level {
>   * enum dpll_type - type of dpll, valid values for DPLL_A_TYPE
> attribute
>   * @DPLL_TYPE_PPS: dpll produces Pulse-Per-Second signal
>   * @DPLL_TYPE_EEC: dpll drives the Ethernet Equipment Clock
> + * @DPLL_TYPE_GENERIC: generic dpll type for devices outside PPS/EEC
> + classes
>   */
>  enum dpll_type {
>  	DPLL_TYPE_PPS =3D 1,
>  	DPLL_TYPE_EEC,
> +	DPLL_TYPE_GENERIC,
>=20
>  	/* private: */
>  	__DPLL_TYPE_MAX,
> --
> 2.39.3

