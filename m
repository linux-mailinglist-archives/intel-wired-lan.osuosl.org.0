Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YA9EGpqxt2nDUQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 08:30:34 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FA32959FA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 08:30:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 74EC840C8A;
	Mon, 16 Mar 2026 07:30:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id godxg2-nPQK8; Mon, 16 Mar 2026 07:30:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF5E440C81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773646231;
	bh=m4MEukFqXNOu2kOaoGaEsEd48iKXaPelNIUbrMSvVho=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SxmDYP5Scm8zNtzWzeQEckxbia5Gth5CvXfu5Z+lehnAQl8tsRmY94XBY+y3CgOBB
	 2fAkZOHsQnuieVG6kkCe5z7u2M0bNR749PoRv51BRA3gRHHpWL4Hf4lRmj22ZfYu/I
	 uYM9W4ag+LPaw89PejEIUSRvuiHvQcJgQGbDtpGMNhAW8FYl6hj2h89mlZ+hbcxypa
	 fRyaO9Yf5ObJTdrScLIRwkasYJkc3429nY82ZFkRlK0FdiEVRnE9CNbgsU6c8V55dy
	 hMPnzz2lEA3yGAyU/cuPrrvgby7lOMtVmByMWgdgcMXT9nD34n1Tl2PKt5SMhYZk55
	 maO2DoVuB4nXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF5E440C81;
	Mon, 16 Mar 2026 07:30:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 76F20D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 07:30:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6894940784
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 07:30:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LA8pIFl1ldge for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2026 07:30:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BA7E34064F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA7E34064F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BA7E34064F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 07:30:29 +0000 (UTC)
X-CSE-ConnectionGUID: GhQs/dz2RB6K3ciS7Zy08Q==
X-CSE-MsgGUID: 7YM3HgpiSfOITtmWnYHvdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="92039419"
X-IronPort-AV: E=Sophos;i="6.23,123,1770624000"; d="scan'208";a="92039419"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 00:30:28 -0700
X-CSE-ConnectionGUID: OZqKjtewQu+PUuhHc/osTw==
X-CSE-MsgGUID: cd/FORNjT6+dGhss0FS8ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,123,1770624000"; d="scan'208";a="259728854"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 00:30:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 00:30:21 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 16 Mar 2026 00:30:21 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.34) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 00:30:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UuecZU//WC99rYcBiSc6RvYLYh8XF2QdIcfJpvxjubLtTE2bv/eAXGxISPicW/vXFEaErXgbvjFHbcJh2dLw80XVM67AqLU1BgrYiY6sNK1cjBfQWre+ye78k9bIADwkEawVP1ZUoGkhw+TI/cJoN/UAtzugxeOsSC3XGLJydm/aX9NbANmWY7k/HyaH2PjxOgm4FTIch/uElRCMF39kACpIfKAAdQY4omZlwxcctLVgnwHvMbmd+0I5RlOx627pvl6sZJa/r/5ZEmDgSDc5tSmY/ugEAeswRB+OOxM6q0RGqWPMBPU4HL2YCuHumWkIqGNE/aT/AWrwhkBLMDWHLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m4MEukFqXNOu2kOaoGaEsEd48iKXaPelNIUbrMSvVho=;
 b=ghfDexpRDWnLgYsdxRMeAFrc6ohqvr2SO9aE/wG0Te5v4HdYgigSs4BoDLEQLWLwxbxkBZ0KoooXhtTsz4zPe6c2+yo8Z2kHCMY28Wla0Y6I4BYVF4NA49teLsnILNpevjjgDnFkTANnpMyx/JBioOGCJV4a1DVrptspd/itSiS/gcaXFOzncxZLYrB3dsi5S1F0wilCm8RuFtMGCtkJRddrY4CrYae0xNX0q1bFvmVic3vlk1iT9QYFq13ucGUJpUno5KXsbRwkRcpIHgAkAITRwoKBST0pjRbYIBVehfr/dWtEvbfQbjZA1QtpyQ2SYPmc1JRhnlm0bkOvnZPxLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by LV8PR11MB8560.namprd11.prod.outlook.com (2603:10b6:408:1e7::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.13; Mon, 16 Mar
 2026 07:30:13 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Mon, 16 Mar 2026
 07:30:13 +0000
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
Thread-Topic: [Intel-wired-lan] [PATCH net-next v9 3/7] virtio-net: Implement
 ndo_set_rx_mode_async callback
Thread-Index: AQHcs+B/oQoJCPx1skOVugBJykPqQLWwxZ0w
Date: Mon, 16 Mar 2026 07:30:13 +0000
Message-ID: <IA3PR11MB8986B6D7E32B5477FCC51E9FE540A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260314182809.362808-1-viswanathiyyappan@gmail.com>
 <20260314182809.362808-4-viswanathiyyappan@gmail.com>
In-Reply-To: <20260314182809.362808-4-viswanathiyyappan@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|LV8PR11MB8560:EE_
x-ms-office365-filtering-correlation-id: 7f1525d9-9c07-4df3-78ba-08de832ddcf9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|921020|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: dzY90ZIA0ou/4/l/YTfda0ltNjfnJxcF4LriEtdce4ZPgBbanLCnUNJ7SSonD0men8CMEZ++3yj+33Y0CM+nsrBQCbsV62jAud7RHUgPCrfFWPWt8up3BILdcxSi4ZED5LQdL7RxxB4yCieBYJlhtC8kjBl88ze2m0DIpojhW9qWOMdzZcwg4bncAdnFO2Zt333SpKaFnXlihrXzI98utQ2gUco9Opr8+bqQV2eqYbQf9nBhgcws9BX2wNi+sq64I68iFhonKDJ/GIL2UeEJafpj0qt3rfXhYyWrsiGFJVfVoSRTHrcxydwQH3wPc2p2eI5wfpiZxaEkfv92+iKxjYPEGDRDYJ93+GNB/+SSsecwdjoPwrzVPYfDbSXKgu8NLDq6K2d6Bz8tTyBzfPol6mDC291MUch56v4kERtMEAK5ZjRW45k6/JPf2O9atCGXSan6yscVUIxwxiqFXLS7FU+q5Htxj/O1Vx90CM5VDEEz1QLc1ag3Peuydqo1HMosfK4dxuGhpaqX+KFVnEyZhbADmUlqbl+Y5kAqoPsTky2qqqU1mJ8wL3GTS+QUadeiGZQJvruEWkMAQReEfK4TX6EKtCASlZNLjEl2x2Ogk6+gbczAxNCsvcMWRLVws3LFRzczugCOP4H3leZ/b4L6C2QC7IKLUJg335AEoZB42pRVuznMiikPWJN7XHsuL+vPNxPFkpATW3kOrFr0uNEtIVhB2P8sAVAuWDJy4EsLOBNlVcGrmb7lju9IDt8Ihr/WFLwcYPBkpjXAJBwhSFCXbP1O88SRAM1AfuHrlLD11XvULVm76G04ouo+6d60jtYf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(921020)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1TgtwwkM1IA+zAoaL7qz7W2EG8pBjuWoKwvpy9M7GE6dZ1X31bRGAiOb8oLK?=
 =?us-ascii?Q?mL4RlcUmzlPpySWgrDrFXUjmvVcGs0eJWtSwYMWW9oTm5GEuM0vyTnk5i3xW?=
 =?us-ascii?Q?0EdyulDFFEj7M96gE/U+vm4QcOFVrdBDitoK7NtxjffXXfAdZe7WdBG1NP43?=
 =?us-ascii?Q?xjvFQWmBfiJjkiOySnoIpCUmDsEq6++kh059Nu73jsyahGYRM3tD+qzR5m1N?=
 =?us-ascii?Q?nrITUMZ0RINqSwcmkRLfKUW6h6kCpue64Iprx6m1h/lPCewCZV4rEowweihU?=
 =?us-ascii?Q?418y/ysnXzf9hicUZIBBhDjjwRDrFK4iN+Kwg8Lxt63ri0c1JWZram7NeFJe?=
 =?us-ascii?Q?ToCxaodToWuGpXOQ0JTskppqIKJMmqfr5nkbsoi/vOW/meYttnRsL2BlfY9/?=
 =?us-ascii?Q?ZFu1hPD17MP5MouY4XBgjyy+8RDSAjmJsRGpBYvrSCq2aqH/XdD25qtZa0y3?=
 =?us-ascii?Q?uloRpxokU6MuLiJE62SZHI/SAtL9AY2Jmf1MYTbQ61U5m050sm6j1qfFoXdw?=
 =?us-ascii?Q?QCJE+cFNfno5wkx2Q5DznOym7An4GybaAVwllvNsvOgrijjvcfVdrhrj18CE?=
 =?us-ascii?Q?V7DJwPqTOraed10CniCzz3QzfEZUlQTmieTdmlvs7VePVhWjo7OpiVCSjMod?=
 =?us-ascii?Q?ygwvRn+tju5lINUnWfh7v9tzp9WndVVfFz1o2JP9zrkGlMeb1nS6Z5bOHAic?=
 =?us-ascii?Q?sal60SDy1wYw9InpOopVHSj4lYi1V3gy450+hWrDO49zhA7gH85fzN35GuCB?=
 =?us-ascii?Q?7S8aCs8XL9uPCE/q+sJu/MapYjTeekuIPtnsRm1P2Sm6V0/MBaXDcCQXajHn?=
 =?us-ascii?Q?ysQtv3/zlA+odiDMPU1ECthTG/PSaG3KkKURL5M/sBlBQuqy6uwnWamsy3Xz?=
 =?us-ascii?Q?jGx1xD833tzKx7J3kBXbwiyAaQQSTUA0zklhM6aXzPk3iHhjPDNPH8KjVrTc?=
 =?us-ascii?Q?QWDJN8RJC4guG20LlIVbKmwORRl5p58WnOmchTf1nl5iy3wd/wKJUGgxuM1I?=
 =?us-ascii?Q?B+Do+VRVJMcw7JVGq0+j2WsbmyuGpscx8aHhW2+9HW0ilgTGV/HW+EpS/vIm?=
 =?us-ascii?Q?61H0YCFgKJw2lQdOTsTjQ7eSUcpDf6aYbBnejNd9jt10OoiUKUg0jDGsv1OJ?=
 =?us-ascii?Q?HOcICtwaLL5tBPyWbFTLlvuYLZbaTtDkDzqQqtDGOgJ/P7fMj93znPuoSbZU?=
 =?us-ascii?Q?XR5QT0yrynEmwiqdCJiq1AC+koP0n0hUrZLVNihHr8j9Kxv2UmnfHInqeIqq?=
 =?us-ascii?Q?BzujVQ7UPdN3CWgsN4e6bT5O8WONjKkT+9ysOhO3hPceweLFrME6CTZKclug?=
 =?us-ascii?Q?o4DlJobRTKBhvov2UIXFhjgFQNz3K13m7prrSIdT7Yt/73RDW4CntvZsoprH?=
 =?us-ascii?Q?5jCRhnuJ4oxURQlmctivaoD1QTbpSsOtI5NpNZlhTkXCW5wi7wdJroIwirBu?=
 =?us-ascii?Q?DaA/uQukDTZfZZP/1fkMfnkZgIWBsHYCO1d8hJ4nxTUr/anitViDmzDsf5mE?=
 =?us-ascii?Q?SW10+UfxY2ztsHIujHmej0is1kmn7MfM7NM0w2nKlA94KnYRe02lN1c54G/L?=
 =?us-ascii?Q?AgnTK/IdbA6XRvsKvMkCeLstKw+DU2hvROr5pQmsCG3fO9H2l+DoP2oI+DIP?=
 =?us-ascii?Q?Rl7KE03YujhYZGmNsrcNX3pWXXZbd674hmT49ifr4Ku091Q7yuL+0BYktoHm?=
 =?us-ascii?Q?5WJAycKXM3fwZp9gF/wpSEKVUQq58TpXn3kvPNFRXcXFzx11wkyDcjrQ3XM9?=
 =?us-ascii?Q?wYPmRNhmbXtLwxz8qOxat5Dq/piZvAU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: JDJM1B2B7x2AXiJfhM/Un8TY5eYngmH7naxgHBWBfmy0uC/c2/1+RRMIopRHiU5TIuOe9yh4/bqU7wzyRxUIrGDXxJY6fp9fNKkCyJX5RGd4FZ/xV3AERssfNmK0UzmNnLu33fb6M6AUHKKSbqHPddE72qmEvAhWGbmb35JiOH6MgtPSa59OOs3tcrUJhUg7Ac0JaYq8PeTKudqCbfw3gdMR9QTyjtPaC1hFKXsbx6ZSD0tO8UA6POhsDlMzomCKzztLqv0myYGm3pCxs6T7uD/I2Q7JydIQ4sxyDadYTSXI5D/HfP2dVSDGrfVqh5eDvR+2MUiWNp/wkDAa9TcVPw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f1525d9-9c07-4df3-78ba-08de832ddcf9
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2026 07:30:13.6817 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OcBD8CXUcr7kbWdnP9UcVT6K+uZBHslnpqhl+dXMCf3hMXWYjf9Ts3if2cXbFtfG3ZMGoeqydjiHobsziAYqDnUKxqfKzu7tQQXV0D6v0lw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8560
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773646230; x=1805182230;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KhPUIBOKy4q3Z37LX4G2JOnhjo442K9XvKHaAVtrrAk=;
 b=BJGAzS2XD9qU+SaYRS7AuBVsYTSm+MMp+S3Se4cUIFzc96lLwYuyPUeM
 AF/cpD9jh8v/V/1x6hBrwy7oalHPs3orrxAVjDNSowDUnb3bOKt76TGSR
 DHgsjpdKPgC+6e0HONArgCXYuJ2J90yWSpOfAsWJuRFOrkur03yLFIed8
 eNScs6wjq++y5Et0vG15INfrj8cNh4hOGQznc9LsRJKRHzZVtU6+50Vcs
 5kaOFT5V4KKi9Azod38bg7K+ShlEnjAlOsXA3INk9YYBB4H5vaUZDGqoD
 wehCyeZwygVz1BsuZQY2ibrWAz/DIkS93jkglXMGHLgAPdffUkCvISk45
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BJGAzS2X
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 3/7] virtio-net: Implement
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
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: C0FA32959FA
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
> Subject: [Intel-wired-lan] [PATCH net-next v9 3/7] virtio-net:
> Implement ndo_set_rx_mode_async callback
>=20
> Implement the ndo_set_rx_mode_async callback and update the driver to
> use the snapshot/commit model for RX mode update.
>=20
> Signed-off-by: I Viswanath <viswanathiyyappan@gmail.com>
> ---
>=20
>   There are no calls to netif_set_rx_mode in virtio-net
>=20
>  drivers/net/virtio_net.c | 85 ++++++++++++---------------------------
> -
>  1 file changed, 25 insertions(+), 60 deletions(-)
>=20
> diff --git a/drivers/net/virtio_net.c b/drivers/net/virtio_net.c index
> 811b90da15a9..70255d09401c 100644
> --- a/drivers/net/virtio_net.c
> +++ b/drivers/net/virtio_net.c
> @@ -448,12 +448,6 @@ struct virtnet_info {
>  	/* Work struct for config space updates */
>  	struct work_struct config_work;
>=20

...

>  	}
>=20
> --
> 2.47.3


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
