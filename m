Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aLbCFFjfxGnz4gQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 08:25:12 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EF6330645
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 08:25:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F5E6608AE;
	Thu, 26 Mar 2026 07:25:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E-Il9KFEG5m1; Thu, 26 Mar 2026 07:25:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7620E60853
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774509909;
	bh=nHT2UjYf6kEKozf5oxEu6cDy5kANAj+6W7s2+qzw0fA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=f5CfalhnXk+Nc9evbkstks81iH1T6ZC8VGAsuKp8eTVqRjZOYV9ehUtHqiXoNQcL0
	 hENYA4kCTQ9kELF3Vs0vPJAUxdPjhwrndWmSioaeKAR7IAMl6h8C9ud57aEG0H5WC/
	 c0FL/fD3uf73st5ZI36YQkdH1l316vwIJQ1WBmJi2VUi3dgkLdA+a4Fk4fu6GnBLko
	 le+9ABGyWr9LzxNbkPjr6gh5cM8ThZMHFPFPATkJ6B/3acxaNRnRYYCinK60FIo1Lj
	 tJGo80qMqSwb8WBM7zxSqmpRMlSf7XKp3g7xxYTO3L54Lqos50yAAB80cjDETqOGHI
	 0OixI9NA8ZEjg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7620E60853;
	Thu, 26 Mar 2026 07:25:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 86FA0353
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 07:25:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6C835813DC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 07:25:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ggR2b0SNzN1P for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2026 07:25:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3F5D3813DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F5D3813DB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3F5D3813DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 07:25:07 +0000 (UTC)
X-CSE-ConnectionGUID: XouABPMjQ62kk8EPjquNwQ==
X-CSE-MsgGUID: DUUjHO6VS5irYVcv8DtxPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="85866023"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="85866023"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 00:25:07 -0700
X-CSE-ConnectionGUID: B+Y6GFx5TG6druXXygDX8Q==
X-CSE-MsgGUID: 1PIq5VsTQ7Ke4QybzMftEg==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 00:25:06 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 00:25:05 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 26 Mar 2026 00:25:05 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.29) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 00:25:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D7dXYP/2U5zY2QagjdV21Tuo0f0IVcdmM7drULys7QpJC8wRW4YOxairRqhsSuXJ2APFHx8nFzexMdRWA1wlTEyLRw4Jn+gv4D682R8SiAce6s/QEh8xsc7DWiQNT/JnKByW2CZ8mgYvYvg3iDF98fdy9FshCZarLXXe1gY6uG55S5Ezxj6520ID0uw16kQxE+KSJB9+nuLM1YtN92Qr5S7dKtTjpnX2oUKL2/Qas6F0ailsRqpZAmXVjjDFjqbcAdUMMgCJFz+FQq3KLW7RhBjiUeeDTFbVVSEHCAO0wQCiZXE0qeCDXAWr1iEYRpZF1CQt3vDUOuQes7LyS395HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nHT2UjYf6kEKozf5oxEu6cDy5kANAj+6W7s2+qzw0fA=;
 b=eexb2yy5Y34lg9hZvFBOlOXUMGBEIr/TsV5534PVAaaWUXryJDip5LitdugI1WIc94yylQiiHDMVPt2s47yIJWXmq5wvIZmgpK8d1ogqeNcTUEw+rh472GvxfKUmxMlGTLTWrAAZo1+N0ibkSQd/lAbc+ah7nkFuWnIh5dgalsJRG9JtIiql93yWcM4tzb1yIkX46wO1McNgR4dzY17NXyfLY/zPyDQGEtPM7RrxQkphdKF545b7StU+5ovozb8Yf2kYPo1HMWZJ/pm9zq9vq4V/+b23X3TxPhyf5dNEP9TZGttRKyjCazWk/FKbrk2tjzNUBofQjV/9y5NO0lotOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM3PPF341F90799.namprd11.prod.outlook.com (2603:10b6:f:fc00::f19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Thu, 26 Mar
 2026 07:24:57 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Thu, 26 Mar 2026
 07:24:57 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Bart Van Assche <bvanassche@acm.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH] iwl-net: ice: fix locking in ice_dcb_rebuild()
Thread-Index: AQHcuIOto6quf8pB/E6x1dQ7W66DIbXAchVg
Date: Thu, 26 Mar 2026 07:24:57 +0000
Message-ID: <IA3PR11MB89868ED5711F7AA788E5858FE556A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260320160707.3047815-1-bvanassche@acm.org>
In-Reply-To: <20260320160707.3047815-1-bvanassche@acm.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM3PPF341F90799:EE_
x-ms-office365-filtering-correlation-id: bf915984-a0bd-4e99-2bc2-08de8b08c874
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|38070700021|22082099003|18002099003;
x-microsoft-antispam-message-info: TBTA4QhEDyz2ODucBOw4w6mAXwSX8/mgbpE9Rszg2PEd/Ve+MSCGtps45R6JzW82AUqPkIACrRWK4LXVx9HUtTDFWe6G30klFyx6JxB5GgRceaOmu04HcZDE3CIMOg5IZkf98X/99f0x2iJODuIfAxwpzmmIiO+2qY/wxJn57v+kius9hG84OWATVfpyiB+tDw2Rc4h2trpLNP3DAobOGHdxfaHuTyxTEfeqJwVhfSED8QrU6+eIPbsNUwgE/EdJhcK+IiudOMIXpBdUWBVLVL6ZJxzOVGWz+zCSsf59vd6UTPHvFVmnX/K17pUvmgR1gya75H16BagOPSPuMSygncqPRGbOXdRcsh/NWs1zy/PEgSqItpUlNcsEhj6XuXibcW3UmB0ZErWMQISm6y0K77BoglZqIeQsD2OsAOcFHt78L+XInKG/NfqT55PTvNyrlcoNMWK7/LSSlRMoo5mUXJwt6wHKhHifUJRvLjmy5BIX29oKIf5usTTj+u3PkKbBCR0icGRBkWLcEYsD1d6U4fK0V6m4a+TNB8wcmjeGP1V1Gd92IiiCUmwYnhIICoAmdqMuj+qiicmklvNR9MqY9d5JJo8RBQqvV/Ki1TaEmnEWpieixgs9vUQ8bquVZU++8Tx8vTLY3uwdEBSY9POvwKO463fkbZmd+++IQQ6Qr2P/8qEqYQB56ceyVbOW+7eMwxvOVpgedLAb81AHFobGfm2++VyoSgDJL4VYhRqo7dqHN8wv8WI7N2RBbdvyFxbi5upVQQFK7GP+Fpf+nLURLEXjVqY7ReIRfu0/A12wF9Q=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(38070700021)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?e2LjWx5ZFqNpUFuiPstOC1x5e0sPj6qp1JYnAPTNmvQRObMe1FD14ZBstlHL?=
 =?us-ascii?Q?Opr5AUzkIN24DC5MtvbX0+TRWpyEh6m86ofW4HkjQSEncTy0ejjov1deGQVX?=
 =?us-ascii?Q?5EeWZwkZLfEkyS2cbkfv7Vsy/d9fP4iT2NjWg4EbQVStW9V7TKsq/xfcTUFF?=
 =?us-ascii?Q?OorRAddnjo7YwOlyD69/y2iB37+LaUJe1ouKHG3cEFXb1CnlN7RP3dsqPqGs?=
 =?us-ascii?Q?9kuc0o2zOIz1o0/y/vTmbWOt37n8Va+cSRyuk2baxcDygx0ntP/vR3FqiqRG?=
 =?us-ascii?Q?A4PhUYICq5AmlIjsmoE7wOtRH8CSryoc7arVxNptFsS6iTc9Ti36MFiTnnmb?=
 =?us-ascii?Q?hPDi6pr4954670OPWTn8qRBg9ckoKh+Ri77PB6ldBf1+eNEHQwyW6UVJCmJr?=
 =?us-ascii?Q?2EK5G/XPHFd2gwWEHu0l5Xw41oIr1Gjzrba7rhrLCJzC3F7Up+UAB7kiWnu6?=
 =?us-ascii?Q?UvkkhtkQqua/2s3SanCcw4G8eSDxjIUmjE2W1Ic60hFT0679tlELwnzjetvC?=
 =?us-ascii?Q?f7lQGxafWb2xyQfAzrZ7wFjnA0T4T/2hezYmpIt0w0yej/HSqGiVdsRx8zLG?=
 =?us-ascii?Q?0X3vRJAcb6vB0mw6HCO2sFOBolnYJdXzV7nY7JaWU5t/0+XDF/Dg9+8E80Lk?=
 =?us-ascii?Q?NgNceQ7efwRRMZcmlU4t+kTipLaP4JOS0my7qS0FFU4sR+fd9o+OkkXoCZiw?=
 =?us-ascii?Q?8ZGUtHYEP/juBYPZPJE1CCiigpBcD3GY4O3SKtWTo+GpBr4jkWZ+nKvxbzc3?=
 =?us-ascii?Q?OfIxHz4z9ksss8uAIcZAJC+a1SJWcz25KqWVA0ZyqIFd7e1IAetzL0OFbKDB?=
 =?us-ascii?Q?viy23VDX1CwWl/2QUPNYFyQ0E5siPVvajerI7pwtn/JHi7/NmgJfXaFrZQqu?=
 =?us-ascii?Q?g2swmUVupXYeqIxFaRHV1VKfpOT/Mzt9i0TBmbUmRdeTrABq+xE/Alo+oop2?=
 =?us-ascii?Q?4y5BjzprU75ZRqEQbLflyRPihKDd0/OyKGqnBQRNCQFOIvRNgMwcP6TmewYD?=
 =?us-ascii?Q?htWaQk2C1Vn2HJptbS7De6NPXHhom0QvNXaW7dLZ8SelFEQQDITzZEHkf6SH?=
 =?us-ascii?Q?R1UVz/p7AJlPMMZZ02TBkI/Arp104Slz0wS2TrS7Sk70aS+KCto+vCX3zKif?=
 =?us-ascii?Q?nqEXt4AlFz3awsYnsoMZqL6bWNhuhR199CyX2Rg6Cn8fEKLFHHfcUCK5BllN?=
 =?us-ascii?Q?PqwUTBUyUHhZIAV7Oe5LVOy+vA2udbt9P/sW9QoJ1OeOYgV3DxAhSYPQuvNX?=
 =?us-ascii?Q?AZARlSHftbF1L8uiziG8ENiPe29wVigpJ7+/Ny1wMkgqGd+/kCd4E9qBbv9g?=
 =?us-ascii?Q?c08xMASjeTR6EyIZuxe2pCKmuMgApkx6MelRebcPxHSpq3t74VEoCF3mOhEG?=
 =?us-ascii?Q?XQr1V0h4rUtDZ/A0YsB+PhqpV5UugUQ5GTm5a5lm3c6tjZ0FFMLSArBCpWt6?=
 =?us-ascii?Q?omsKMFew6ql0KcuzMGvsL39a2VapbhSBWSE8c2LPIuBfW6t5n5eyjE7f75SS?=
 =?us-ascii?Q?Q9fK6T+vI+QDfKuk4tJkU0bDzvE6VYTpVmqnX4l9NN+yL6332smrsfGvupFa?=
 =?us-ascii?Q?uL5Zavxc6eZ1gmjDWYph5vQeEdTacFkrSWWowNCnRfN85fWL+Qpu1uL+UfsO?=
 =?us-ascii?Q?nYYK2KCht9lGqUtKB1f3aQwRuIzeyofPJsDVtMwnlREEbOF2Ls+SuxxHGfyW?=
 =?us-ascii?Q?jIiRxlFS2EOZh+rxYQNrTejMm8N9mysuL0+xm8JCbHQFRZfctIgrxjixUzsJ?=
 =?us-ascii?Q?WHYBj3utt9CS07WlLu+pGHWO/tNmltU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: LKETIeeSGku4ILOV1AbAjIZRzBPt6Mr2NE1IDVbJ0cvKbDDx8F4MJqOaisyorivI1fYWc/NE/n9exZcAX0mtQgaVLPAnSFT0lqta1Y3z39PuDYFL0I70SLzEcSY24w8Kf6ICjssBLcQQKgPvBjoFcSNu0W2BqTRrWgPdpAcmWibQlUXxzt+nLv8PFshP7GyMCY12NU/nFocDOjRToqJMgmietSCLUMzZJvmOmddJ0MJTQfBo4UoEgbCj3tN/A4CgJOMCGfiGVXBT1RxoKRrC+rwofHLIaPVXRYQLwYdZpN2X2NnTEQf4gs6efyVahccPQXBDLmRK0O9izEGWpIDcFw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf915984-a0bd-4e99-2bc2-08de8b08c874
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2026 07:24:57.1950 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jfz8+tstTcsppVAEdRo+xUqHxnNEeCZe8sNyjsOVQ1onD0lto7xDzaKrVANMt33kCEfV2KDGT0FMO7IlhrlZPkI9MJH4jRWgk1nYN0cMPvE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF341F90799
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774509908; x=1806045908;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cGIy25AYFGlJ+9t6oUDBTUiPGpRrmorxIFrmeOer0OY=;
 b=gZJKPi39feW3097XZgG1dozZuwHm0qUp1Mt9HhUe1fYuQePQ2dljZ/Pl
 8hpW+NXw5gFlHKA9s1ZgmQS5rW19ZUAOVss5VhqvEyawYaK9xc5uwCCoJ
 IHqbXqkToAKcQD7i6QmfHW7E2eyfaaQBn9iQRb0Uqo9bvct0hNL1Dx37J
 xVUaWtVeftUpZmpH0acHFXrOdK0LM/bKM/BHkXHM8ZYfUJrGT6nJZjvzm
 st1P/vasidNT6GeSNuLsiH1QwwQRLdczUSMwc8Zd1qdykAS6FMdP5HXD2
 M4DvXEqyaJDTosTF6J/GBhbVP9DoJxFc6WhxPY1IaYMh9nyxy7xiKYTOh
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gZJKPi39
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] iwl-net: ice: fix locking in
 ice_dcb_rebuild()
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
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bvanassche@acm.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim,osuosl.org:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 68EF6330645
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Bart Van Assche <bvanassche@acm.org>
> Sent: Friday, March 20, 2026 5:07 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; intel-wired-
> lan@lists.osuosl.org; Bart Van Assche <bvanassche@acm.org>; Loktionov,
> Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [PATCH] iwl-net: ice: fix locking in ice_dcb_rebuild()
>=20
> Move the mutex_lock() call up to prevent that DCB settings change
> after the first ice_query_port_ets() call. The second
> ice_query_port_ets() call in ice_dcb_rebuild() is already protected by
> pf->tc_mutex.
>=20
> This also fixes a bug in an error path, as before taking the first
> "goto dcb_error" in the function jumped over mutex_lock() to
> mutex_unlock().
>=20
> This bug has been detected by the clang thread-safety analyzer.
>=20
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Fixes: 242b5e068b25 ("ice: Fix DCB rebuild after reset")
> Signed-off-by: Bart Van Assche <bvanassche@acm.org>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> index bd77f1c001ee..78ded6876581 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> @@ -537,14 +537,14 @@ void ice_dcb_rebuild(struct ice_pf *pf)
>  	struct ice_dcbx_cfg *err_cfg;
>  	int ret;
>=20
> +	mutex_lock(&pf->tc_mutex);
> +
>  	ret =3D ice_query_port_ets(pf->hw.port_info, &buf, sizeof(buf),
> NULL);
>  	if (ret) {
>  		dev_err(dev, "Query Port ETS failed\n");
>  		goto dcb_error;
>  	}
>=20
> -	mutex_lock(&pf->tc_mutex);
> -
>  	if (!pf->hw.port_info->qos_cfg.is_sw_lldp)
>  		ice_cfg_etsrec_defaults(pf->hw.port_info);
>=20

I'd recommend to add Cc: stable@vger.kernel.org

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
