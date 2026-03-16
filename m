Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0DSPG5Xrt2mzWwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 12:37:57 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D062A298CB3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 12:37:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8642782C3E;
	Mon, 16 Mar 2026 11:37:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mwyLLUobPlWK; Mon, 16 Mar 2026 11:37:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE9C482B5E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773661074;
	bh=E1rj+uDUOZ4HnWQO2o+3CQl+aTjeubVbdoaW8IrcYDM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZvqCDjQLUMOXKtcQW+TpKqBdtnNA59FYWmSYamPRy5mSs0hBKs9kQTLXtWpkvR7Df
	 27QX8o8h82JwmKF/pvHNAEiY8JsfC1OSirGS3GfrgHFkw+z5v6RgRKLNc2wKehZvwC
	 eMFfc7/BK0fGFi+PLJIziS87znAkpx5T+ZivLzDN5EZEWlA05j5SiA5jdATwO8mkiI
	 uEBdlMCJdZ3OBe3haskVMdE1ws2HhVyAjwHI7OaK5jrk5zWbt8UQFoEH8zKNa/8G8E
	 rauSQQJPJM+JLWpgxI6fpBGQzRN3IDuvsOBQ0JnLFb+0IPFtZ8CY0Co//HAy5GXdAb
	 w5SJ+8qHW4lig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE9C482B5E;
	Mon, 16 Mar 2026 11:37:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3E28B3BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 11:37:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2F79540414
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 11:37:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x-D3feu3snrD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2026 11:37:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 426B140366
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 426B140366
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 426B140366
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 11:37:51 +0000 (UTC)
X-CSE-ConnectionGUID: aLLPOVeoQ0K9vB9v41h14A==
X-CSE-MsgGUID: SzQ7GTNjRYKAcpefCk7+uQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="92056534"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="92056534"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 04:37:52 -0700
X-CSE-ConnectionGUID: 8Vc6a4/ZTAO+B5LzaLpNNA==
X-CSE-MsgGUID: 1HPHminrSIqfloI+YHrEug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="226348739"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 04:37:51 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 04:37:50 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 16 Mar 2026 04:37:50 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.17) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 04:37:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CChZoxdl0FHNh3x+SYrE0HxqRc8igSC42z4Q1+Hs+QKOX2iqrPmOXAp/kA3SaACzQyctIPA6S1P9BFvEIMI851cA9YO3GUgLJjlspsfx9mfyV5OHfheqNR5OQDZltdEYD1Duoh1PP8aC4saKxQr3dtPb+y0e39eOd4C0pNnQknt19MgFhXMPPMjxc39klczHjDR/To+KngWB55Vga8cclNpyB+xJS6hNZHE1BNgM8D24BAfg4YG/nmNEo5MHpLTV4v5kbAzA3DR11gXcTIxMP5yp6YoPaVkWgDj9u8AMLYr7WwGBrF6zjnWAriZaCx6o/RjvjdaLSLUK/N+tEMn5eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E1rj+uDUOZ4HnWQO2o+3CQl+aTjeubVbdoaW8IrcYDM=;
 b=aYIkW3Ec990Le+NqyWvKVeMAmKrcP8/aC997fTZNwBw95nFsBkrYdTVwAWfKzen/OSzfmDLA57vTGEys2QgEGuTAUV5Ohp3fY7GNzuXtEKweNh/E5IgzepsyuO0z3TcZYvuGMi5KZYsrwysZwF8MB6BYpMRuQFveqosqpGSagll9Z7/r/Y+Ehm4sZyVw47vWtkXdNbzeOXYm90udqrSfIP0E+DLwiT3fo7DaMGfcEiMoINkn/EIW++3+XuMZQwPk7xuXgmlxKfpiw613Sjk1BO5i78TFCHguwaW3yuRQ6jvJJdTY5ocqzfz1GvXYwpIzBD4FVLvHp+wXiGWUcdGOuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB8352.namprd11.prod.outlook.com (2603:10b6:806:377::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.16; Mon, 16 Mar
 2026 11:37:39 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Mon, 16 Mar 2026
 11:37:38 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Eric Dumazet
 <edumazet@google.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "Nguyen, 
 Anthony L" <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 4/4] iavf: harden VLAN filter
 state machine race handling
Thread-Index: AQHctTGrXfoByy9hzkqvbSrmcyPpk7WxCCgA
Date: Mon, 16 Mar 2026 11:37:38 +0000
Message-ID: <IA3PR11MB8986FA7536046A7AE5C98D96E540A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260316104209.1285962-1-poros@redhat.com>
 <20260316104209.1285962-5-poros@redhat.com>
In-Reply-To: <20260316104209.1285962-5-poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB8352:EE_
x-ms-office365-filtering-correlation-id: 9fa0b45d-3aaa-4f52-baaa-08de83506d66
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: sENonxSIFieZNIgtS13cQ+jN9zuNfPwF6HnA9vouyOurIw6TFeeMMFp9N3nYzcMTaW6rUFCXrqWNlzEhy6ayJkDuosN9gPQ2C4S2ANFxM/+VyxOwAaSojs4VkRgNsdUq+aHntOSKl4dFovWL4MpUp6Si+u4czpPYUtiT0VLzXmci9myhmexv3ku3kK0wHeEJ6uZxakUG87UoCtymEVP4e5E+FyHLMhx0ueJWt/u7qGVjzvfSU8GkXqpgZI7dthEBJ83IyITxX1+pxmOEsZOv+nt3ZWIjfKrSnsl9onfLmpzSuTh8K07Q/t5Opd0EWiUWWsnqs5rBOv2CHGxS6yUBXVpvL01NF1eGJBLENpFrV5hjso+RHAWRCcvtPmA3pZMOPbTaCaWix/Lp4ffbK69RpINGwI2VOiuxQPBJq8t0Wf9Gv9rCobzW0qAvIzfXotmyjeamhcBXgOa/7BBBf9d41jVFQkoxT1WrB+FsnRrWMo5SoiV/SnlhSV1xdNludYVh98fs3CIpRcJXz6/yQecVTJBU3dXw5NzAcCFAfWIvmLMKlP+w9dJ4QFRL3xYRGnUrroYQmtfbnA3mphV4jStfQDw4/EAgPgXp/GdBCNcQ2y63j5Wfh7IJ5quPesoAtum5P174MA1g+SXQWCXoGyknKcMxryXsgEUqdvn3w322neVSoZ/yk1V+o4nBFV7jN4o07miBSsQ+GPLEL+f6+MYjqTtwe+5vNQfwpgW8kxMTOrcfV7d+ouZ7BQa0vA6R3tLVkwvKfvEESM1GCaIihY9XdCutNFAfA+njWsaJGV7M9OE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6u0/RxRW4TYk7Y8yu/Rf0ngRfmeYaluFoxYe7+lLNGXlQIHqWwQQdlTzmY0u?=
 =?us-ascii?Q?2/TcyE4ZWGqrOmIvcs79eRMobPZ5rI0cJDrFFH+hC4vxFuvpwCyoeM75aPch?=
 =?us-ascii?Q?wfGGyryCU64un43GpP88vvL5AV+/s/vacWdwLTu7UaWOwfs5F4by+U6xuwxK?=
 =?us-ascii?Q?J9tLGBy05V0IEljLOG+ZxfyyiWIDvU9gVAA8O6fENxsLK8dzF4eCn/9FUz/b?=
 =?us-ascii?Q?ehbT3zmx2jF6/cbdpuF2zit1MkFTXJJMBZNBlpD4bZcdT3QOxnnFDF2h9Y/Z?=
 =?us-ascii?Q?HY0i4HuVF4+HArLH1GudDxb3glQMHrJssf0qW7DG6SLECUYHqvMSksLtMpXZ?=
 =?us-ascii?Q?fiWgJjBeM/AbqrvaWTZWMRn4H0nzTZewy5V6wk/q0/wP1w72D/9OCabZKmjl?=
 =?us-ascii?Q?7qvmkQzK/ATaNnUJx8Rfor2EPK2o8+fifqgezloOx8ZiQnmM3X6B3NUvfPlM?=
 =?us-ascii?Q?YzuOwphGB1Ep8Eio2IAHrwoXuP7b5y3VsBMG2xXTd5YEBVKz58dLFd/SYSdI?=
 =?us-ascii?Q?j5KpUZn1uJh40BNzxLWQ3y7Eq2wf4mYzCSJuYGGBNXOfQR/m97xQJmT1VdLq?=
 =?us-ascii?Q?HhD8UXqfMMRepCDOKGmRN8ADa8Dvol1JD4eB2aTZgxTuyV8Uc4Iu4YZbq1NT?=
 =?us-ascii?Q?L5isQTU4zI65+TBEJndNVsxT2LD4U0bmy0D6Uzak+Q85fug1/XLhobBUICBR?=
 =?us-ascii?Q?6JAm3R3xYWFS4E/qtOdYzGDi0FDOJ8vWJYkkuI9V69ZGTtmYo1FeVC0cRdHA?=
 =?us-ascii?Q?OApEJiGTsyxuxtxrthy45trzZbGS/UziN64IZr4j8pM5WyWd/3xhjYL9JGSl?=
 =?us-ascii?Q?nNwMk2PAJWXSY3IvStoaMB7NJDwyB5ZwlL5L8AWe+28iC7XIBj3JoNnU2IdS?=
 =?us-ascii?Q?ReW+tTHK/OmCpQK2l8QyuLBdZ8IfsglJI26v1p+UgQS+uWlikeAzWkoQjpW8?=
 =?us-ascii?Q?1MIq48BeHIMItDGFjlqdOv250jnC/P/HwqG+DK3QkH0P7IMYzpNM+Ee6cdq4?=
 =?us-ascii?Q?OtC2nvZC7eUSPoGqyxZgQGlDTSxqh2mkoVwiDHIou+4yUE/rqQq+daGsKi4L?=
 =?us-ascii?Q?g/uZH+UvBsZaBE4xnJNvh2eBK/mTzeKGwTH/ohPC7EhrISSYClEdJu8xBuHd?=
 =?us-ascii?Q?t3p8ACE4LB3FS1mkgUzyV7khkKea8vLWyCIH2DQg+Ack37pRVT00ROJnMGWt?=
 =?us-ascii?Q?AUTYCfOZaggHykNh6Eok33oqikChvFbqXn1tJcsuD8MDlBJAwCuWXYl4XhzU?=
 =?us-ascii?Q?KrgYGlAadrPRFJ8ImAirFRi+ecLtPckzWuG8cW5Q02+DehzxPvTVQr+yNz2U?=
 =?us-ascii?Q?RMIaiSI0rS79/R3hLKfFs9tBZfKkcWL/Pm7rZctnFuFLNWhjluDneBE/AWxZ?=
 =?us-ascii?Q?ATqMBrwTLL3lzakUz8iwurW9kqRlyK9EYnidfgnMYjgRTJss1K5+g9OUZXnQ?=
 =?us-ascii?Q?6KD5OmYAzYypr0BwrZ8rQhiNzqF/XgjBALMBy7BPeIZYv+F/8bNotNJw28Li?=
 =?us-ascii?Q?Sw3666MlgKtMAIMgByRqYt3tCg+s47ifAUHrv+cJNJ/v5Xp0ikf1DUJywJSz?=
 =?us-ascii?Q?yi/ZlhdYPT3o9fWTEDga0AZrkhaL5zhgyFq2IyKZJLBFBqMnfiTjBnceHdB+?=
 =?us-ascii?Q?cNuS7f9iQQV5n+rWH1dhsgRmtUbv6A4ERow3l/27FwVg4pJ9ZDpcA43GOf2D?=
 =?us-ascii?Q?tBJflsRlGNFM4PFg5bzxB9FigHbW4UV1c/KyX5Tr6vNG2TQvVBHKuZVBlffO?=
 =?us-ascii?Q?Ub5a9Lul/gWpiZ/+C5B3v+HLD4WzXKw=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: vJpStBa8DQfWz7DxBHfp59PVLROMMcDMXojewL/MlyAKJeRTnZBCtLnGz8vO/AOHQQ4ndLQXxW312YxFhqmXuBVC7KagqJpSXFY7L10uWCTvP9xi0wZ2tYwmgJa/YkZ7TVOdRGXBWMm4gpT1CXn3qOE6aVmdzwvB5xgqdhOF4ECQhOfp1yRq2NX3GZQn2EFiloGSolRE4CAvL1bGyuOsM4cdmWOrGF6McwDyLD70bz8EFsIKw+KzzGUggXzAgcbf1e9veHo41ookKuJGR6KDhKwaFKETycN2HpEsU8jPCtqE7HaQmuZmP9IzXk4uDxCIuunpuXS+vbT17Ycv/6QfpA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fa0b45d-3aaa-4f52-baaa-08de83506d66
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2026 11:37:38.8669 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N8RgQRKNEVoE15ncXpbPaG/VRavYReV4jsGkHBouEGPzxVCrfxXMRxBI1RF5FuSDNWCeX4re64hgMfF1D6TDYsCMJSpcQc0zzCbN4QfqsK0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8352
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773661073; x=1805197073;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=90fYtbzVq/cBlTU0RBGY49MhV6P/FtLIMK+ias974e0=;
 b=ILcEnqhFAzK+d/jDSwbu01O/jtD1gu3Y4PkBgnOGW2r7LmOtKhXQq1pL
 0+GwaY1LbZAnaaGNmw6W52g20SPe1mJqKk5qLJgRetl/9Y6m+Rif2nbV1
 zaXFmhXfzI55xJqrNX0VxWjVDkuvbWLsm3eRhDV3W3cDmL95gfA8IW7HK
 UOhrMXqMZVa7Xgdlon+ROFWSkdGo5vQzyv/Vf7FsYBOFuZLJkw5Kb6JSc
 ACHwi1dy6HQf4oX2O7ZnFFGqdb6+ydU4tyGC/eQNX3D3OWxGwWrRmUqGO
 o1EnNh8pn/JH7LqsNlaXdc5cuoEUKGVfWN3ZkynPEyXYD0v8gjHpcO5wT
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ILcEnqhF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/4] iavf: harden VLAN filter
 state machine race handling
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
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[davemloft.net:email,intel.com:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,lunn.ch:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim,osuosl.org:email]
X-Rspamd-Queue-Id: D062A298CB3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Petr Oros
> Sent: Monday, March 16, 2026 11:42 AM
> To: netdev@vger.kernel.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Eric Dumazet
> <edumazet@google.com>; linux-kernel@vger.kernel.org; Andrew Lunn
> <andrew+netdev@lunn.ch>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; intel-wired-lan@lists.osuosl.org;
> Keller, Jacob E <jacob.e.keller@intel.com>; Jakub Kicinski
> <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller
> <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH iwl-next 4/4] iavf: harden VLAN
> filter state machine race handling
>=20
> Address remaining race windows in the VLAN filter state machine that
> were identified during cross-state analysis of ADD and DEL paths.
>=20
> 1. Add VIRTCHNL_OP_ADD_VLAN to the success completion handler.
>=20
>    The V1 ADD_VLAN opcode had no success handler -- filters sent via
> V1
>    stayed in ADDING state permanently.  Add a fallthrough case so V1
>    filters also transition ADDING -> ACTIVE on PF confirmation.
>=20
>    Critically, add an `if (v_retval) break` guard: the error switch
>    in iavf_virtchnl_completion() does NOT return after handling
> errors,
>    it falls through to the success switch.  Without this guard, a
>    PF-rejected ADD would incorrectly mark ADDING filters as ACTIVE,
>    creating a driver/HW mismatch where the driver believes the filter
>    is installed but the PF never accepted it.
>=20
>    For V2, this is harmless: iavf_vlan_add_reject() in the error
>    block already kfree'd all ADDING filters, so the success handler
>    finds nothing to transition.
>=20
> 2. Skip DEL on filters already in REMOVING state.
>=20
>    In iavf_del_vlan(), if a filter is in IAVF_VLAN_REMOVING (DEL
>    already sent to PF, waiting for response), do not overwrite to
>    REMOVE and schedule a redundant DEL.  The pending DEL's
>    completion handler will either kfree the filter (PF confirms)
>    or revert to ACTIVE (PF rejects).
>=20
>    Without this, the sequence DEL(pending) -> user-del -> second DEL
>    could result in PF returning an error for the second DEL (filter
>    already gone), causing the completion handler to incorrectly revert
>    a deleted filter back to ACTIVE.
>=20
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c     | 5 ++++-
>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 4 ++++
>  2 files changed, 8 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 89e5aae20d5573..1ffc0ce3f35602 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -816,11 +816,14 @@ static void iavf_del_vlan(struct iavf_adapter
> *adapter, struct iavf_vlan vlan)
>  			list_del(&f->list);
>  			kfree(f);
>  			adapter->num_vlan_filters--;
> -		} else {
> +		} else if (f->state !=3D IAVF_VLAN_REMOVING) {
>  			f->state =3D IAVF_VLAN_REMOVE;
>  			iavf_schedule_aq_request(adapter,
>=20
> IAVF_FLAG_AQ_DEL_VLAN_FILTER);
>  		}
> +		/* If REMOVING, DEL is already sent to PF; completion
> +		 * handler will free the filter when PF confirms.
> +		 */
>  	}
>=20
>  	spin_unlock_bh(&adapter->mac_vlan_list_lock);
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index d0b7b810679399..147adb76f64141 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -2877,9 +2877,13 @@ void iavf_virtchnl_completion(struct
> iavf_adapter *adapter,
>  		spin_unlock_bh(&adapter->adv_rss_lock);
>  		}
>  		break;
> +	case VIRTCHNL_OP_ADD_VLAN:
>  	case VIRTCHNL_OP_ADD_VLAN_V2: {
>  		struct iavf_vlan_filter *f;
>=20
> +		if (v_retval)
> +			break;
> +
>  		spin_lock_bh(&adapter->mac_vlan_list_lock);
>  		list_for_each_entry(f, &adapter->vlan_filter_list, list)
> {
>  			if (f->state =3D=3D IAVF_VLAN_ADDING)
> --
> 2.52.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
