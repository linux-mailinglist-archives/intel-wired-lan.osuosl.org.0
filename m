Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGQ5Nrayt2nUUQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 08:35:18 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F21295B1A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 08:35:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CBAC940C96;
	Mon, 16 Mar 2026 07:35:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YnqRSU9oEggX; Mon, 16 Mar 2026 07:35:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F1B640C88
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773646516;
	bh=f+gRbNaDQDdoU3f5e0as6mHhlX+lY/qf3bYR6y4poks=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZhSb0MaTcA7Mg9jB2IZNZrP3quR1/tMTtVFtqoGJgd/qwddpvLCEMc1qpNO3l38qz
	 5q3PX2QmxWiI9uJb1CpkuxFDUyROC8IfogIia/mAnlz9uFB6Bc34X/FocysUz/Y1RF
	 mXR7oKfOvI3vnaF0pmtDSZWkFoorgnXjLtTrB+BlnXvvv1D5nSKEbs5Sve8NsWxRfH
	 /vQtdhaFZfXcOP3/BzXwqTLl+k7Ks1ZIaw/FjQ7m+z9X+E0SOzEEPgEwl8xtfuMX6d
	 56Uq174uJBbVfURdTZTEud+TO5GxSIPS4RWaB12XUb95hIH7+fyFVRgGGE5I7MKs6y
	 AAytsIEebuunQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F1B640C88;
	Mon, 16 Mar 2026 07:35:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9143E3BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 07:35:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 828D640B8B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 07:35:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W8NRMjT0-W9n for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2026 07:35:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 776C140B82
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 776C140B82
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 776C140B82
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 07:35:13 +0000 (UTC)
X-CSE-ConnectionGUID: GMs0RsTkQbmGHKo2RZdQyQ==
X-CSE-MsgGUID: e3aLcA7HQvWauOb/xz/k0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="92040058"
X-IronPort-AV: E=Sophos;i="6.23,123,1770624000"; d="scan'208";a="92040058"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 00:35:11 -0700
X-CSE-ConnectionGUID: rAQCrQ7kSSOIAzeVlL6Xrw==
X-CSE-MsgGUID: fwPKMS7MSfCTeADrUI2HcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,123,1770624000"; d="scan'208";a="226498901"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 00:35:10 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 00:35:08 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 16 Mar 2026 00:35:08 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.65) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 00:35:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TyliqU8vWDWpt3EnTbUGE0Pc/5cEUPpuxRRudACDa5X9jA2bOAa1gL2SSHo/3JURmVf5lEb0gDp5i57wK07byAnnMY+I5Fbda8kDAiuZ7VXJtGcnE8j1hqYTRhQl8axHWTZ9l6uJ+oOCSSK6R+rEwtNQbQYeBF9ZLVACk/773nFhPpmm/LV15y6nziQXRX+OHKDryLqXrLh3nBKJ7QxAjgVL3VH9bOKdnmZeKU2Yf+wfPozY8p4eN/DRm6TK3qkbSakvbX2McEz5VnXJABXIMAp+emd/+6r7YMG836zfsLk26BlC75CYO9stjlhpC9Sz++XtX8k41l8nVBCQqajAEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f+gRbNaDQDdoU3f5e0as6mHhlX+lY/qf3bYR6y4poks=;
 b=W/olT7y3ddFl+mOf6SaZnuP2HaZ2xq/mXiM0ntF/O/KhmYhLKUxozSW/MGA9k1T+9kxkz4xecXPe6EjAccnR+W830QSnkZWwf8zA59LZlSTq1O7lv22cfYslN5VvUFqFoWs5Nk7dZ/WmrK+HVSy80ojUJX9xuHt3yavneoeePBPQOtjGRKg0F+VWlZMrOR7eOJOaADj5A5Oo7hvmwgf2PiEb4XoSWy/UAhx40jwTOSIC77qASl9gMlgpXV1Nxl6Nh2/xldkHzkgwWL28V539lmKcWvE3tB258hfLPVomb57pJNp0xwUktB1honi02L+H3Nrh3XwJek4NzL7emRJpFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ5PPF263E38237.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::81a) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.16; Mon, 16 Mar
 2026 07:35:06 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Mon, 16 Mar 2026
 07:35:05 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: I Viswanath <viswanathiyyappan@gmail.com>, "stfomichev@gmail.com"
 <stfomichev@gmail.com>, "horms@kernel.org" <horms@kernel.org>,
 "edumazet@google.com" <edumazet@google.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "kuba@kernel.org" <kuba@kernel.org>, "davem@davemloft.net"
 <davem@davemloft.net>, "eperezma@redhat.com" <eperezma@redhat.com>,
 "xuanzhuo@linux.alibaba.com" <xuanzhuo@linux.alibaba.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>, "mst@redhat.com"
 <mst@redhat.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "ronak.doshi@broadcom.com"
 <ronak.doshi@broadcom.com>, "pcnet32@frontier.com" <pcnet32@frontier.com>
CC: "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "virtualization@lists.linux.dev"
 <virtualization@lists.linux.dev>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v9 6/7] vmxnet3: Implement
 ndo_set_rx_mode_async callback
Thread-Index: AQHcs+CQtdGruIsITEyKlND7ItvRsLWwxvoQ
Date: Mon, 16 Mar 2026 07:35:05 +0000
Message-ID: <IA3PR11MB8986030BE816595BED659AE5E540A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260314182809.362808-1-viswanathiyyappan@gmail.com>
 <20260314182809.362808-7-viswanathiyyappan@gmail.com>
In-Reply-To: <20260314182809.362808-7-viswanathiyyappan@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ5PPF263E38237:EE_
x-ms-office365-filtering-correlation-id: 7bef8635-ba15-4a7d-32af-08de832e8b22
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|56012099003|22082099003|18002099003|38070700021|921020;
x-microsoft-antispam-message-info: rkeav2C1TsR8K6EiQphWrOiwM9wtttODB511dJ8/C39BgQyOV2QvTTQvCsy/G3awbR1G3J4VPnUNVx/OrDfD8J6ud/+L7ACM4hJHYc2s2TZON1sZ44LLQIdf8F8quUcfWBHUPK3BzFeFjfEJ7Ukb/L1sHbFl2neAa+MwGNZPbD3haX0NDoIcGblGX3TWLf1i4PLUgTd06LP0P5+pTr0kfSjsPv8feL1JrpgE/y3CeD2hAjAFTd10E9d0Ve7iRGWXDp4J/2a8KM0k+gIW5daLZPzssKhAct6+gZ6zW7X+PqhVAwmOjCkPdaJ2nkwcWGgZ5EZDLJT7ZbP9cZOT+ZiWN9uj2HpBvzEJ2KMWnGNg3B9CkbJvm72rFrxHh8C+Lvj5qyyNHRR0T+A8hVQcnHhFwHPqnW0VLgeX0JlpTMOPx1NqSxYgttcFcBJmTfc1RSNtg4Uf4UqN5/+dOWftwmxQFEXCpOaRHNo2vMzddjkFh4m9z5c+eOpKdUDPqiBLFOIK+sMWt+iWYQM8pPh3inHq966pAv3jyBJ4/HPf0mCfVti0t4AK1DrYxTdkKpxSAqqLgMzmGRavcUb+Of9weNN/5cCaeQs5PnAHYx4B1lFrKBzYFCxAuGQfEVeOfFptT+P/nh/sI5QaSPkrLHDHFeeBP5qtT/JZDC8WLLcEI1yK3qnDizR+Z86z3lK0pWWeTHU1as80XeEKpwhKpakYtCJZ+2IKafxSR4Yg5jLPfl3V9QSSZ/BR6J9YaAfq3q/q31QG37tcH3fJ5cUSUbB0oA5q73+03o0aJbFXp6TZqWGLMnbp7yz9MlfH1NDMUdORKlFJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(56012099003)(22082099003)(18002099003)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?T8lfLHcTx2EiCO5ZKu4vUNgNAydnDRHzmLziuFMbCUv3Vnp51r+gw9YuY8sH?=
 =?us-ascii?Q?GWkP6tT+pGilFb77PXBHm2sJlZZ57d9+VxPcPnnVj8PZV5RCnuBMqodtAZRd?=
 =?us-ascii?Q?plUYesRDi/r1QevAN2eVKSBdAp5i5JGcQOr4Avbn+fDX/nx3YXajF/gh0Uvi?=
 =?us-ascii?Q?9xQKCI3ZofbobwbpAVH5K+yi+5Be72gtvMlJom24PYIwLHuyjNkZjf2hT9BI?=
 =?us-ascii?Q?4JLPQI2kMxy2UFSD32qjPu2aUBCoXThqvWVhsq3pYRAGcBYnmS/D35IewH5n?=
 =?us-ascii?Q?cRkFXb7U/iWqcsbgIblLxNwPQpi+YYm/WkXipXPXKPC7EAS+OgZgeauo9xly?=
 =?us-ascii?Q?kaBq41vMFmxm+2+cqs9rKbFKtZyW5CedNMU8mEH04+aaXL66xiM3gyeRiq0h?=
 =?us-ascii?Q?dnemXtlpA7DG9E2O6dG64kDmEHNzQQzk4ZilSByUgVjoOOBERcBsGSH7jflI?=
 =?us-ascii?Q?kfhVqz7k4cy43l08eRgfSTKVuh21igwiSqEgMNljXbYaNzJyQHyoZn42qRs1?=
 =?us-ascii?Q?b4KSyZ/+pRavi3a8szbCsKeoMIPFSCxmoe5lpRpdqwjE8z0T55247bwwfKU5?=
 =?us-ascii?Q?3osmm1h0mYdwJ/pbVfFIOy49Hg+bt1k+r+Ij5RpRfxYjcfINDVbI3bM9ZyjA?=
 =?us-ascii?Q?gWrjT035FO2gAQ4fWwF3wYW90rN5s6A1RLeA7fDG362A4mCkZ5ax79RomrLL?=
 =?us-ascii?Q?TcLGN/zl/mmSddbs0K4/irMUSjiiC6E71+gE3lAQ2285DcBRuABUQjeIizAM?=
 =?us-ascii?Q?zZWhdL6zAGYrRdhsGG9lb8MqPcgfTjfALSZ9t0Jh6+dA7KX/Zt6TLoA08NfW?=
 =?us-ascii?Q?kEhlat8q2ioh6+1N37+EJd+RseTtw2f0neMCSTaZK/fjOkZGhS6bGVTSFGQi?=
 =?us-ascii?Q?3ftoeOtjjEijEGluHBTmrZV76urlzMxauNXQ6aOci817mW7o78yyQVqQxQar?=
 =?us-ascii?Q?6OATNlaNARLtDFJLe5ggFkuGjqVOrXIc5FjcXbJHAqxVP7HqTU7SNNYZLdQU?=
 =?us-ascii?Q?NY/HG4+bphdwC5pdRGbUAMoV/5uwUxFjYv2VejGuT0MzDHxoKDhZhy9ZXO+S?=
 =?us-ascii?Q?h+ApKgVadHfYeHYMp0/Mh+Y2GsNf6ONxvkensUQSwxSAkTuPXymFv3rhvrtq?=
 =?us-ascii?Q?uhsbNqNU2phM5Q5B0oFMOcuG4LzXfIvzEzYPNyYIQbSDqWJK5EmE6bWchG4q?=
 =?us-ascii?Q?H3ALk5fHyN3kHMB6ZQFM9OCYviMQDLpF1uaeD3/IxGkmJiZETh9dwvD07haS?=
 =?us-ascii?Q?ty2Z/rlakEiUIVrqb3mTQ9NFVhFJX5BnfBD4E7f5oav6x95kBx9jKurm5bJY?=
 =?us-ascii?Q?+02Kq5P7eTn5uGHgVoGyYfd8Wgp/dWWZt/1qCMkuWVNBTXFtQeS8O9BUJX/I?=
 =?us-ascii?Q?OHIxK921HnEXZTmW52JXFsXVlfzgGnQ6K7fHaeZLtUzFrQJZ2atjT3XQxz6P?=
 =?us-ascii?Q?NShxIZMe9G4tGWOrUa6Eshy7D1o67K4zdSOAdf7YNVd0pCI1sDJ2tmiUjvXz?=
 =?us-ascii?Q?gFDqB7JnLGkc7VGgLJgIHntGjymjqSzee3t+1OBTPat8giXQrAWGIV7zC4LG?=
 =?us-ascii?Q?ev13KGpGDHvzK4MGvZOvETbJllGOxot3th+Umfori3TMs8QZ9wZ2cE4QxwNo?=
 =?us-ascii?Q?zXjcRGSfAyIMT9kvknEw2e4nZ2ggIeQH5ZVyXREpPvrO+N6N68IESPnPUjkx?=
 =?us-ascii?Q?UEiwdG61lXgoboZpmD0OIqwAZbhAwpj+Bo4uawHUU3EoyOCMyQ/PZaCCafY7?=
 =?us-ascii?Q?eO5OF+tl+eE2S27o8B1/AuZ3yUwDzRE=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: jFV1FXiMHJ0LDhwAyjoE0JxOieXn7iF3rbqOueYKAgze1NZyhPq057ktyCodcCiPPkTnIFPfv3eyZkubc33hE1PgRawm6wyrB7u+LFbyVybgkuVJLAX1El8fR6VSyGVCB3ioDTAcHlrco88rCGJPyZlgM1LvaYCbFzcCt6xYfDZfQ52novspJU2vVWBy46jIjjoT6XxE+XxeS67l8EQ/RGHl3pMBkgO7p7XQXRFGBjuM0DZMSKm5+X5wqG5X1e/DMuM/p87JKoPc0bhH0S9Vp6E3Op8v08UZCu5/X6nOHAF+z0E7Ybfp4qyoOnl/BNTYTDJI8wZUkpEIA25jYI5ahQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bef8635-ba15-4a7d-32af-08de832e8b22
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2026 07:35:05.9048 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vCUMrIgG1dW2DzsmAhr9SFMTQ2WkBZDpiyyAB2vuGWFDHrgBaHC8vciEyCDt85+WvhBKWcq35hidK2GOzgvcDSF1k3V/f+OJbC2dQI9rmSg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF263E38237
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773646514; x=1805182514;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BadZ/Doa41ykKSNnyHoqkL5dti8rMxs4msfRNsOi36c=;
 b=NGAj4jE2PlA+U/5gPML3tQU0xdrF+gVQVUqVay/qdgs/r7C739P6o2GR
 bFdr3qtGcvbqBehZc1XhgjEhDqu+1cUhzMWhjp4Ht8PBF+3wXKmf+1H8p
 qf0Zy5rXguasunnmzgaCzS14BAr3Jc/qA5mMhQ9NcrehM1kx2wlqh4z8u
 B2Zr+qmWinA9qKogWGEwg88H2LJ0F1P4ZaLxDXf5G1x7aNGS+tMEIYmxY
 kYUjDwqEv0ikAKMS69fq3mNuos0rXIOQSqOmhmk2/kCccWQb9xKnN98JG
 JuWY6/rnXY190PgYvgxRq2hOGYJhlU3Pe0knNf+u/yurae9oimpCNggpo
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NGAj4jE2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 6/7] vmxnet3: Implement
 ndo_set_rx_mode_async callback
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:viswanathiyyappan@gmail.com,m:stfomichev@gmail.com,m:horms@kernel.org,m:edumazet@google.com,m:pabeni@redhat.com,m:andrew+netdev@lunn.ch,m:kuba@kernel.org,m:davem@davemloft.net,m:eperezma@redhat.com,m:xuanzhuo@linux.alibaba.com,m:jasowang@redhat.com,m:mst@redhat.com,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:ronak.doshi@broadcom.com,m:pcnet32@frontier.com,m:bcm-kernel-feedback-list@broadcom.com,m:netdev@vger.kernel.org,m:virtualization@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,google.com,redhat.com,lunn.ch,davemloft.net,linux.alibaba.com,intel.com,broadcom.com,frontier.com];
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
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 39F21295B1A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of I Viswanath
> Sent: Saturday, March 14, 2026 7:28 PM
> To: stfomichev@gmail.com; horms@kernel.org; edumazet@google.com;
> pabeni@redhat.com; andrew+netdev@lunn.ch; kuba@kernel.org;
> davem@davemloft.net; eperezma@redhat.com; xuanzhuo@linux.alibaba.com;
> jasowang@redhat.com; mst@redhat.com; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; ronak.doshi@broadcom.com;
> pcnet32@frontier.com
> Cc: bcm-kernel-feedback-list@broadcom.com; netdev@vger.kernel.org;
> virtualization@lists.linux.dev; intel-wired-lan@lists.osuosl.org;
> linux-kernel@vger.kernel.org; I Viswanath
> <viswanathiyyappan@gmail.com>
> Subject: [Intel-wired-lan] [PATCH net-next v9 6/7] vmxnet3: Implement
> ndo_set_rx_mode_async callback
>=20
> Implement the ndo_set_rx_mode_async callback and update the driver to
> use the snapshot/commit model for RX mode update.
>=20
> Signed-off-by: I Viswanath <viswanathiyyappan@gmail.com>
> ---
>=20
> Call paths involving netif_set_rx_mode in vmxnet3
>=20
> netif_set_rx_mode
> `-- vmxnet3_activate_dev
>     |-- vmxnet3_open (ndo_open, takes lock)
>     |-- vmxnet3_change_mtu (ndo_change_mtu, takes lock)
>     |-- vmxnet3_reset_work (takes lock)
>     |-- vmxnet3_resume (lock added)
>     |-- vmxnet3_set_ringparam (ethtool callback, takes lock)
>     `-- vmxnet3_xdp_set
>         `-- vmxnet3_xdp (ndo_bpf, takes lock)
>=20
>  drivers/net/vmxnet3/vmxnet3_drv.c | 46 +++++++++++++++++++++++-------
> -
>  1 file changed, 35 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/net/vmxnet3/vmxnet3_drv.c
> b/drivers/net/vmxnet3/vmxnet3_drv.c
> index 40522afc0532..350e44286c00 100644
> --- a/drivers/net/vmxnet3/vmxnet3_drv.c
> +++ b/drivers/net/vmxnet3/vmxnet3_drv.c
> @@ -2775,18 +2775,18 @@ static u8 *
>  vmxnet3_copy_mc(struct net_device *netdev)  {
>  	u8 *buf =3D NULL;

...

> err);
> --
> 2.47.3


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
