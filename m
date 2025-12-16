Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 822B5CC4C0F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Dec 2025 18:55:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6485360F12;
	Tue, 16 Dec 2025 17:55:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lOCcATSTJJge; Tue, 16 Dec 2025 17:55:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5EA3C60F31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765907733;
	bh=IgTFvs2dAOXOBc/RTCEzs+Uus3srt/rRXez4KL+S1R4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9w5gCCEI6yu4+3yPCWwfCrm3AxOcNbG0+InD4/aZxupiD+gXHmtBQacKIyEWoEzXG
	 Mh4r96K8ddC+zBx3wQNcddwBZtOJfJJKdJNaonCbhlSrogOp19vX3TJHy2yaRvwRPJ
	 AQPeLuo0yhazDy0BJAgWSEtcBQC9Nqnt7fpYf+6/ckg/nSsf+zI94CUDMXiNfV6/GC
	 Jaij9viI5WvDlcMiwAzx23PXrTPqUle8kt6Wn+NsFimpcxiJnuCOo+bYmeDvun6kTm
	 OzYrkS1Eebnz1dcVjMDopzRVCHk851YFfvD5X3zQuHvcN4DVTiMBFRSGbFfNdFCIZc
	 O2PtRuaPxW1Dg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5EA3C60F31;
	Tue, 16 Dec 2025 17:55:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D483F364
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Dec 2025 17:55:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D2893408E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Dec 2025 17:55:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZyiJ1qP85Guv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Dec 2025 17:55:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8AE1240802
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8AE1240802
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8AE1240802
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Dec 2025 17:55:29 +0000 (UTC)
X-CSE-ConnectionGUID: +IqxikdIShm/XNU+S0SYCw==
X-CSE-MsgGUID: su02Gd43TGSWkxqSfZ3lTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="67587862"
X-IronPort-AV: E=Sophos;i="6.21,153,1763452800"; d="scan'208";a="67587862"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 09:55:29 -0800
X-CSE-ConnectionGUID: Mpofq0EARRaFURrRYdfydw==
X-CSE-MsgGUID: 9eS5GAWSSb6hvmLKkT/zaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,153,1763452800"; d="scan'208";a="198326595"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 09:55:28 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 09:55:28 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 16 Dec 2025 09:55:28 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.27) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 09:55:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZeXa5V4VJTp9EQSx5VtzBMztdGgZLaMuojdAle3Qt7hs3l38rNAY1gArDYkB2Jt4O4B2qnx7LXq+yvxn/8iAjEF/a7DrgqDo4tml0uedToFOEVVQwLV7CEs6U+ZWh5uw43RAmm+dkfNTwHth0XGEgEdpSW+0Fv2NFUTzXqIQMgqNFQQyeMLgkK8miAI2cRWKa8sc8S7SMaM2kENkFMx+PrrzwR9vgR3sPgzEKuxHHkzNlmjG8WMnpMmOkzy0jkj0d+sC2DYsLyDojVaIGkWGdZmhxaJ8zLJellNstsybb1n+j3reGDe3tmo8cxj5B3cEw6LtggkC9NfgERg4VGUf8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IgTFvs2dAOXOBc/RTCEzs+Uus3srt/rRXez4KL+S1R4=;
 b=IZEHdmRErLfFs3wbdopTA5HGYF8Op+QFeWcwhvDzkdCshPTOrHgFT8I/92Y6wmb+2n7XYkNDPdjvs/SnXwg/n5mF4+WanHg9qj99QksJSkmpdECdS1NPuKbkbJzNjU88trbM1lv0uw8YeyZsgMmS0qHzSR7/afWhgJoxHAptol0FBfE0jmgRzWEbn/1X3u1h2GRW0PB5PhAZoOr28BMiYp438fEIWtI3pFLDbVUOxuZboNd67kuJD+VcTzD/k0CvRCZ06RccU8l87gqu4YehqP5zXWH29Re6T8olb/ZuqIuiDzZzN5J8JpiHPEBYBEfvMb/gaFYZb2oJZLZcLhrbng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5983.namprd11.prod.outlook.com (2603:10b6:510:1e2::13)
 by DM3PR11MB8733.namprd11.prod.outlook.com (2603:10b6:0:40::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9434.6; Tue, 16 Dec 2025 17:55:24 +0000
Received: from PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240]) by PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240%5]) with mapi id 15.20.9412.011; Tue, 16 Dec 2025
 17:55:24 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: "Behera, Vivek" <vivek.behera@siemens.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>, "Behera, Vivek"
 <vivek.behera@siemens.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v8] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
Thread-Index: AQHcbb4YaoA0dL0BNkOMVmlKDHMbP7UkjZdg
Date: Tue, 16 Dec 2025 17:55:24 +0000
Message-ID: <PH7PR11MB5983787A7ACBB87D70DD6327F3AAA@PH7PR11MB5983.namprd11.prod.outlook.com>
References: <20251215122052.412327-1-vivek.behera@siemens.com>
In-Reply-To: <20251215122052.412327-1-vivek.behera@siemens.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5983:EE_|DM3PR11MB8733:EE_
x-ms-office365-filtering-correlation-id: fdd70c60-6a95-4ff5-6015-08de3ccc49c0
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?4vlFOnfDmO1b12HMlvdfKvX+IPKdTPaFozEI/ZsWFoF01pmirLhInRRoMJku?=
 =?us-ascii?Q?i94/gReHmw7u5qPmU9erL+DHXsMZQ6XZqxCOJptixKUfLZQcwQMEDqdkGKRc?=
 =?us-ascii?Q?hIHFa6v9pJ/KduwAm6ywo93lJrEbXX0VHWk/TukuQj885bKtMc4+FPsjL27M?=
 =?us-ascii?Q?l9/TxdDeW4d+d+l0BQeYq2haCcZSNvDou7NLmG5/pz77OB8X9aDIa6KGIDKX?=
 =?us-ascii?Q?U6XrLeE3IicUy1tcG5VynmriKX6FZ1O9npl7EelxNXg1RebH5ng8KrDKsT+x?=
 =?us-ascii?Q?BQeMZiUdCVsExc0Ne9rG5VwQrgGAaf7xoFHl6a9Jkr4rWpaf4LUgC2tGrmyQ?=
 =?us-ascii?Q?52RWk3LhTPhUmRErQ0fzkhq1fjuLfuojZionxSoJes0RgIShOPq454yLgvmU?=
 =?us-ascii?Q?rX6SeOWyW01q3BJVQzV37/0wGFftu2J7CAxPIiK6xcCRY9xP+viwwTPdb0Nk?=
 =?us-ascii?Q?oH8Ikvq3k0W/IFX6lRGISQ2BNvrsB371XPNUuAiSaBQBTl0RJfPsywVLivBL?=
 =?us-ascii?Q?SGJ8fXr1KKMd1wzG4YRIbnQYIpbcZNW34eb+70MzxU1dEWstJqeHYLMremrs?=
 =?us-ascii?Q?j7B8lQw0ipjpfxXopXBD/hyxHDia3m2lTcqundnWbVj6hGOFcy4N0U6UYaSA?=
 =?us-ascii?Q?tRv6i4rkdsVdcuTT/X0yY/FccohohJLMNCjceVhKaK2pYIVZthSDBuOvl0Rq?=
 =?us-ascii?Q?OGCWEXdDedGIb8VRHCwBDf71jTgxmfIyH0GYHjEkYiUjvHO6ioC7warnOWMA?=
 =?us-ascii?Q?LvFiU0e2LMnvJSz9ZpzGRiFoF19HLI/ViVDbUPBzADZCUZypHvZX5pD9Gyde?=
 =?us-ascii?Q?DhxoMmSK1DVOf/ZoLm/tYJEddAJaeMgNzi5sq6uf1kMxgcn5r1eLuR8S2MF5?=
 =?us-ascii?Q?LqqwQ+mdrH9p7v3KlhKGluuAfroy13LEW7Zk6s7ZmkYt3tGD0Wq0e6gFXAbs?=
 =?us-ascii?Q?aL5QnImm3hCUyuU+X74YMtdE8VIBFZ6FYIPnLthv2rjcEoFpBaT6AVaSaiYx?=
 =?us-ascii?Q?s7Pzm/ITvWBaa0/3BWvyaRgdztdGRITIF+mjNnOSOL8ybES7wzsnf4M8vGjL?=
 =?us-ascii?Q?/fEizV4B4Loyhm6eDkgwnxN1/m98rQXxajz0hf11Op+APz0/TL3TOrRbn6t/?=
 =?us-ascii?Q?tuUd4eTvlwA3n2Z9oGEhi9+2QuDIVQgrbd4YA0wghweoj1LjZJjktdRcCExJ?=
 =?us-ascii?Q?OKbOjXhoQklVF10Sk6F+kytv+4e05xHMkhIw0zzdL+RS5tRg8Lm0oYMj63ke?=
 =?us-ascii?Q?u2uhFoR6GIo+ubrXPiqOj0IN9hR9hA3xpeD3alJ6EmFbsG/bfD58U7Dd+9Dw?=
 =?us-ascii?Q?xCldYWLQR4ZlCbOXMY9iNIqaKGHaV0zZiyH/rDNR0dUTO4SljY79rTqNY7vc?=
 =?us-ascii?Q?lfTB4vX903S9Jb8VvpIH/eTM4VNwHiJCDq/qtleQH6Z6iruqkqzbdd7gxEpV?=
 =?us-ascii?Q?MoiPzLB5P53Ogcd+QgdtFo1v6wpPPLet4wUtI4rKiwsqIJdJ9y2esccZ9DYU?=
 =?us-ascii?Q?avQV4s9MIzHz8vl7L6lM7LOgEvkTwlrOaPaLHNAv7qJMjImChcPbCYYRSDRH?=
 =?us-ascii?Q?CyFTIrJwMf1uEVlg0ww=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5983.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NEpL+26rqOMR5SHQxR1yWmo5J6YuIQgi9YFgPQU/yv6AsTeUU3s8wojEt4+8?=
 =?us-ascii?Q?poy/tJZqLN8ZujBlnNlI7r3euF8x7n7gDBqO/VA29Kq2e+xB587bqvZfJl8t?=
 =?us-ascii?Q?SmmPiSrho1DrxFoguVfSr4BCKeph/uCrnCfTNq/npZiARgDsCECpTFU7XqnD?=
 =?us-ascii?Q?GekLkKXjCmfO+8J5NIY/4EJuF7OnU+Ecn08dZHKzEjOvrVpBt++uLRQuf1bJ?=
 =?us-ascii?Q?etzjJ6uMo8qchE56EpGMHUFNuicNUfhmikJYhJ2PsFzgeBp8ToJ4eGDuG7pl?=
 =?us-ascii?Q?PALtocSQugb012smj5lkdl/tAKw+DgwZ/Vvllxrdi0IkxFoApCQwyKvHyXw7?=
 =?us-ascii?Q?dTf6YjDFHYpr3Gh8x1Y24JoW6+KjIhtXwAreq6Jf+AKvdbRTUtP6ho81ow8j?=
 =?us-ascii?Q?SKEoq1bv1jwMiVDhb4vrcjsB7M2brGRNKp0kooj/eHXyKK1gYFjjbJny1bfp?=
 =?us-ascii?Q?L1f5/XkbdnnjNNMZ2qgfGCjGray+S15q40AmgRmeVzmZj6i0t0v3tsDLRY+i?=
 =?us-ascii?Q?QH7V6YrP3+aPQduHFq8eF2x7Zq2ff1LgXpfNQTrE4aLkms6TMCZfnPxodYz3?=
 =?us-ascii?Q?I9E/KBy96lXBk9ZL12JbbOk9CjI0zTrFWJWonl++vrIbjCamyxkn4ktq8bpX?=
 =?us-ascii?Q?Gnquk9e2EKJxUwiAa/3gTJBt1+2a+ZE7BSMxI7Y4kmzQKjMPDeXqJwRqIuPl?=
 =?us-ascii?Q?qNvMt90LiiqNTcLKlXfWeAmSIYM+xG2yE+bwH9HVrStwUqPmcRr5YhN9V6fL?=
 =?us-ascii?Q?e+vOEIXcHuXzTlenzrgvamkvm7p255BK5nbmy3M0Tx7bSmC5rEBwQ8zqU0Eo?=
 =?us-ascii?Q?54YE/AqVcRqa/7ai8RJ856/PzoQEIaOrWDXf3nqLE5AqvAVy/3qLFu6Indsh?=
 =?us-ascii?Q?8YEI+IQ4YLPeVCsyiBfy+0gc1Fpz7Hce3WVUl/vZbiF1D26eVFeNhEa+fsCm?=
 =?us-ascii?Q?P2DE+XCBoJ3NxQHHW3fdt2sM25s1BkWEw/MIKHYO6v/2scPoWFIRfo3tUj6o?=
 =?us-ascii?Q?U99PmCAe8eA+7yVBAUihz4T+YakkOc9qCQo9uuOTH6/wZjJ0+YFcMxZc98TJ?=
 =?us-ascii?Q?9Ii6FEfImBH8y6uyJryvlsr6Jszwjg/3Tzzz+ynmARWJBf4N0c9ZAezxIA6j?=
 =?us-ascii?Q?2pn8VxM/jmKDOhxoW3FrZSVM/rrbLulaNp1kyl0mmh1MsHq0aznlDzZ0V00p?=
 =?us-ascii?Q?ZEukYEt8MWEvKBR5jPXtZYZvC0hlWEyIEaRaZrqgbenicuGuWaULoeWAQEOp?=
 =?us-ascii?Q?RldkBTP6RNwaa22hmhgFl13Qiv8AGA9iwvFxT3SQmLpd7ImxfrO+qY6xcJ9h?=
 =?us-ascii?Q?G+AjRrq+JWaSISmh7fyQ2jH2GLPDGvlgrHAZPywuPtuzOP5/U8Z0apC5rQ9Z?=
 =?us-ascii?Q?jygu3G7lHltViFl8D0MfryV1igKG2HhQCFrWxN5yxT1aqO/SMGHlWhbjp5z2?=
 =?us-ascii?Q?qHOACs7smocR5rgfQnzLjisgl+Yqvp43OnyAMp4WAf81lfa4/nOwtaP3pXyi?=
 =?us-ascii?Q?WNaxxTKmBzueZKZ1/DyR9x2rLGg526lk9Wl8TH9lW5cApmIOgUPP1E7pukEv?=
 =?us-ascii?Q?hkopIV9zRawnJdjw8PLmSqTlLVUyeZJ9mUTqpn/G?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5983.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fdd70c60-6a95-4ff5-6015-08de3ccc49c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2025 17:55:24.1219 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zesy9nc86o7KBFgIl2oB5gu6M+pMZ294Zxm7ov0qk7/ht+3HGIXhuUVHjchZcPDYFW2xnQGJn6NGCahO5WYR0wrrY/slRtBbcrB1T8tQJYA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8733
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765907731; x=1797443731;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tnq1JIB3sMvJPmDDUppZMCLOCFnFo40+3s3XBCgK3OI=;
 b=TKMw8WXKccr92JW3G47uCySypa3ljwxlrXG6f08NLbsM57ZdXBTVoUen
 DAht7zlJYSNbVFFJj13vF6ZiJUsrYS31Wc8XSARgwd/YxlvMW4nzzym1Z
 qjPZsgYfF+x9Eo7XJCfhgM3VBThLFlPixsvs9gW7o5JUXN8vliLemWk4I
 Vfc7uEqf1e8wCbKWhRcnPNB3JXwe6pJlrguYokb7CjHObEUspBr9A1DUC
 tMTqQM5S7di+QVXbOBjVL5jo/J9d+z/eHCopDCGgiIUFpOYicmPmAjDvR
 P/zY+Z9ap/GnCA1Hf4g+JyPk1NVsP7IcigtY5ttICVOgolZcoeAMSjwN4
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TKMw8WXK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v8] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Vi=
vek Behera
>Sent: Monday, December 15, 2025 1:21 PM
>To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller, Jacob E =
<jacob.e.keller@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;=
 Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
>Cc: intel-wired-lan@lists.osuosl.org; horms@kernel.org; Behera, Vivek <viv=
ek.behera@siemens.com>
>Subject: [Intel-wired-lan] [PATCH iwl-net v8] igc: Fix trigger of incorrec=
t irq in igc_xsk_wakeup function
>
>This patch addresses the issue where the igc_xsk_wakeup function was trigg=
ering an incorrect IRQ for tx-0 when the i226 is configured with only 2 com=
bined queues or in an environment with 2 active CPU cores.
>This prevented XDP Zero-copy send functionality in such split IRQ configur=
ations.
>
>The fix implements the correct logic for extracting q_vectors saved during=
 rx and tx ring allocation and utilizes flags provided by the ndo_xsk_wakeu=
p API to trigger the appropriate IRQ.
>
>Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
>Fixes: 15fd021bc427 ("igc: Add Tx hardware timestamp request for AF_XDP ze=
ro-copy packet")
>Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
>Reviewed-by: Jacob Keller <jacob.keller@intel.com>
>Reviewed-by: Aleksandr loktinov <aleksandr.loktionov@intel.com>
>Reviewed-by: Przemyslaw Kitszel <przemyslaw.kitszel@intel.com>
>Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
>---
>v1: https://lore.kernel.org/intel-wired-lan/AS1PR10MB5392B7268416DB8A1624F=
DB88FA7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM/
>v2: https://lore.kernel.org/intel-wired-lan/AS1PR10MB539280B1427DA0ABE9D65=
E628FA5A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM/
>v3: https://lore.kernel.org/intel-wired-lan/IA3PR11MB8986E4ACB7F264CF2DD1D=
750E5A0A@IA3PR11MB8986.namprd11.prod.outlook.com/
>v4: https://lore.kernel.org/intel-wired-lan/AS1PR10MB53926CB955FBD4F9F4A01=
8818FA0A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM/
>v5: https://lore.kernel.org/intel-wired-lan/AS1PR10MB5392FCA415A38B9DD7BB5=
F218FA0A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM/
>v6: https://lore.kernel.org/intel-wired-lan/20251211173916.23951-1-vivek.b=
ehera@siemens.com/
>v7: https://lore.kernel.org/intel-wired-lan/20251212163208.137164-1-vivek.=
behera@siemens.com/
>
>changelog:
>v1
>- Inital description of the Bug and steps to reproduce with RTC Testbench
>- Test results after applying the patch
>v1 -> v2
>- Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ configura=
tion
>- Removal of igc_trigger_rxtxq_interrupt (now redundant)
>- Added flag to igc_xsk_wakeup function call in igc_ptp_free_tx_buffer
>v2 -> v3
>- Added 'Fixes:' tags for the relevant commits.
>- Added reviewer
>v3 -> v4
>- Added reviewer
>v4 -> v5
>- Updated comment style from multi-star to standard linux convention
>v5 -> v6
>- Resolve formatting issues highlighted by reviewers
>- Try to include version histroy as defined in netdev guidelines
>- Included review suggestions from Przemyslaw
>- Added reviewers
>v6 -> v7
>- Included review suggestions from Przemyslaw missed in v6
>v7 -> v8
>- Modified sequence to complete all error checks for rx and tx
>  before updating napi states and triggering irq
>---
> drivers/net/ethernet/intel/igc/igc_main.c | 90 ++++++++++++++++++-----  d=
rivers/net/ethernet/intel/igc/igc_ptp.c  |  2 +-
> 2 files changed, 73 insertions(+), 19 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ether=
net/intel/igc/igc_main.c
>index 7aafa60ba0c8..76e4790bd3c0 100644
>--- a/drivers/net/ethernet/intel/igc/igc_main.c
>+++ b/drivers/net/ethernet/intel/igc/igc_main.c
>@@ -6908,21 +6908,13 @@ static int igc_xdp_xmit(struct net_device *dev, in=
t num_frames,
> 	return nxmit;
> }
>=20
>-static void igc_trigger_rxtxq_interrupt(struct igc_adapter *adapter,
>-					struct igc_q_vector *q_vector)
>-{
>-	struct igc_hw *hw =3D &adapter->hw;
>-	u32 eics =3D 0;
>-
>-	eics |=3D q_vector->eims_value;
>-	wr32(IGC_EICS, eics);
>-}
>-
> int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)  {
> 	struct igc_adapter *adapter =3D netdev_priv(dev);
>+	struct igc_hw *hw =3D &adapter->hw;
> 	struct igc_q_vector *q_vector;
> 	struct igc_ring *ring;
>+	u32 eics =3D 0;
>=20
> 	if (test_bit(__IGC_DOWN, &adapter->state))
> 		return -ENETDOWN;
>@@ -6930,18 +6922,80 @@ int igc_xsk_wakeup(struct net_device *dev, u32 que=
ue_id, u32 flags)
> 	if (!igc_xdp_is_enabled(adapter))
> 		return -ENXIO;
>=20
>-	if (queue_id >=3D adapter->num_rx_queues)
>+	if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
>+		/* If both TX and RX need to be woken up */
>+		/* check if queue pairs are active. */
>+		if ((adapter->flags & IGC_FLAG_QUEUE_PAIRS)) {
>+			/* Just get the ring params from Rx */
>+			if (queue_id >=3D adapter->num_rx_queues)
>+				return -EINVAL;
>+			ring =3D adapter->rx_ring[queue_id];
>+		} else {
>+			/* Two irqs for Rx AND Tx need to be triggered */
>+			u32 eics_tx =3D 0;
>+			u32 eics_rx =3D 0;
>+			struct napi_struct *rx_napi;
>+			struct napi_struct *tx_napi;
>+
>+			if (queue_id >=3D adapter->num_rx_queues)
>+				return -EINVAL;
>+
>+			if (queue_id >=3D adapter->num_tx_queues)
>+				return -EINVAL;
>+
>+			/* IRQ trigger preparation for Rx */
>+			ring =3D adapter->rx_ring[queue_id];
>+			if (!ring->xsk_pool)
>+				return -ENXIO;
>+			q_vector =3D ring->q_vector;
>+			rx_napi =3D &q_vector->napi;
>+			/* Extend the BIT mask for eics */
>+			eics_rx |=3D ring->q_vector->eims_value;
>+
>+			/* IRQ trigger preparation for Tx */
>+			ring =3D adapter->tx_ring[queue_id];
>+			if (!ring->xsk_pool)
>+				return -ENXIO;
>+			q_vector =3D ring->q_vector;
>+			tx_napi =3D &q_vector->napi;
>+			/* Extend the BIT mask for eics */
>+			eics_tx |=3D ring->q_vector->eims_value;
>+
>+			/* Check and update napi states for rx and tx */
>+			if (!napi_if_scheduled_mark_missed(rx_napi))
>+				eics |=3D eics_rx;
>+			if (!napi_if_scheduled_mark_missed(tx_napi))
>+				eics |=3D eics_tx;
>+
>+			/* Now we trigger the required irqs for Rx and Tx */
>+			if (eics)
>+				wr32(IGC_EICS, eics);
>+
>+			return 0;
>+		}
>+	} else if (flags & XDP_WAKEUP_TX) {
>+		if (queue_id >=3D adapter->num_tx_queues)
>+			return -EINVAL;
>+		/* Get the ring params from Tx */
>+		ring =3D adapter->tx_ring[queue_id];
>+	} else if (flags & XDP_WAKEUP_RX) {
>+		if (queue_id >=3D adapter->num_rx_queues)
>+			return -EINVAL;
>+		/* Get the ring params from Rx */
>+		ring =3D adapter->rx_ring[queue_id];
>+	} else {
>+		/* Invalid Flags */
> 		return -EINVAL;
>-
>-	ring =3D adapter->rx_ring[queue_id];
>-
>+	}
>+	/* Prepare to trigger single irq */
> 	if (!ring->xsk_pool)
> 		return -ENXIO;
>=20
>-	q_vector =3D adapter->q_vector[queue_id];
>-	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
>-		igc_trigger_rxtxq_interrupt(adapter, q_vector);
>-
>+	q_vector =3D ring->q_vector;
>+	if (!napi_if_scheduled_mark_missed(&q_vector->napi)) {
>+		eics |=3D q_vector->eims_value;
>+		wr32(IGC_EICS, eics);
>+	}
> 	return 0;
> }
>=20
>diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethern=
et/intel/igc/igc_ptp.c
>index b7b46d863bee..6d8c2d639cd7 100644
>--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
>+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
>@@ -550,7 +550,7 @@ static void igc_ptp_free_tx_buffer(struct igc_adapter =
*adapter,
> 		tstamp->buffer_type =3D 0;
>=20
> 		/* Trigger txrx interrupt for transmit completion */
>-		igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index, 0);
>+		igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index,=20
>+XDP_WAKEUP_TX);
>=20
> 		return;
> 	}
>--
>2.34.1

Reviewed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
