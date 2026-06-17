Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uuseDqlRMmo5ygUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 09:50:01 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 738B369747F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 09:50:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=pAR5Xy0o;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 014DA4EDD8;
	Wed, 17 Jun 2026 07:49:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cheyGC93o1DB; Wed, 17 Jun 2026 07:49:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E7574EDD5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781682598;
	bh=iFGsNFEmd1Ny8Ncft3nPJYRLzOoJSb+MUp/9xElMSuA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pAR5Xy0o+HH8gjUUnma/sG8F43ZmCQHvLbuJzy1h/hhTFXxqOadvMD2hWieMw/TRk
	 +tzG98Fx+HqwHlujAC32aKUEEIu++sEfjU9NpE/BT/gdsHaymUtYGoLJRWHtFTH/H9
	 vP1CXB/toqe1oTS+ilLforbkNmc0Huh8NcNF8+1rZz9fl6TYab5LvQOQviCVYcqxoS
	 N/QYW/yKFTGImC/mEeLdOop23b4psz6nB66z5VKMRshz9ew3Ke8FXzMov7+HQjqOAC
	 VkuvKh7zUGFfYrYNEb3xZ8Xui8bogkHWnWn+WgIy15QaJKS4OIkHmMNj7ngckuv5uI
	 qeGChhu53bv+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E7574EDD5;
	Wed, 17 Jun 2026 07:49:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2072A33C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 07:49:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1DF056F84A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 07:49:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ru6H7h5oeVtZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Jun 2026 07:49:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 22DEF6F848
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 22DEF6F848
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 22DEF6F848
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 07:49:54 +0000 (UTC)
X-CSE-ConnectionGUID: 2/Zd3dafSVi3TZGPJAXv9A==
X-CSE-MsgGUID: KcyNQ0VxTLS3BETj1R8mxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="92821287"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="92821287"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 00:49:54 -0700
X-CSE-ConnectionGUID: 41OEJBhwTgqmchFCVOR9fg==
X-CSE-MsgGUID: mazasq6oRf2tgNSeoj9Klg==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 00:49:54 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 00:49:53 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 00:49:53 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.0) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 00:49:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rqo49guC9BM7I5C6ZxwgzJoQV90guVebC27zwJrxBtPtWZcotRAcFQ+lVzJEYKQBQZio4mc2F5F0htGSQ/rcBNy/Z7fgBoy2XV2+PXUQiHU/eqOptK9pxPff3Qvk4HtedDYE7R3TLiQqHE9MBmsysp+oMlq0lllUKGcmHfA/qsMUmuRdU/Lyg6Yhr+WKu4C/CbloARxqXuvKKBje802vk26HyvcGGtNi/Qaq9l0rPtoEDm7s/Uq6IAktv3KoDkbuyAb0wMW6BGGyIYwd7geir67GQnisUJ+p+mZng8HDphUztol/QmogOwm48duXrQScgoIgUJpQx7kBj2/pGGylvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iFGsNFEmd1Ny8Ncft3nPJYRLzOoJSb+MUp/9xElMSuA=;
 b=Ul/wsfnlxAsa62U6PI2lx+1zzA2ir69WUsH9boocLr6NPAJY7nIClB5fXVnaK377RP4GLAyU0zwTacjIaWJpIzLKVoZmGaYrCX56dW4ZQIQdE/WVTxm/E4utqptjLUeqy7MoZaj4JrT1Jm5UxY306/1S6j9iBXrCGLfNyNaOa+Q2pIEl4D70GdH2ewcwrXWqEungp8GEjP/ZVOiFrEreN6c5eK12Ezdnz2VN33ceUD9qzKLbpOi7AnoMXeiOEd4DH19IRdYQs1V9/Q3CJ57zFA6QXfBfjbk7qieL5offtktYI+6GPJJlS0/n1Et3exXzoZ2ldQKh0R3Emv7s6GujTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by PH0PR11MB7588.namprd11.prod.outlook.com (2603:10b6:510:28b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Wed, 17 Jun
 2026 07:49:50 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%6]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 07:49:50 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, Junrui Luo <moonafterrain@outlook.com>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Mitch Williams
 <mitch.a.williams@intel.com>, Greg Rose <gregory.v.rose@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Yuhao Jiang
 <danisjiang@gmail.com>, "stable@vger.kernel.org" <stable@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] iavf: validate num_vsis in
 VIRTCHNL_OP_GET_VF_RESOURCES response
Thread-Index: AQHc4288+ro6RLEjb0ST60lt0iHd7bYUKR2AgC5rs7A=
Date: Wed, 17 Jun 2026 07:49:49 +0000
Message-ID: <IA3PR11MB898548ED18B05119AD80B19A8FE42@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <SYBPR01MB7881AF11C45AEDC0D4CA89C1AF062@SYBPR01MB7881.ausprd01.prod.outlook.com>
 <SYBPR01MB788139F8F31129E4B64E66D4AF072@SYBPR01MB7881.ausprd01.prod.outlook.com>
 <20260518185611.GF98116@horms.kernel.org>
In-Reply-To: <20260518185611.GF98116@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|PH0PR11MB7588:EE_
x-ms-office365-filtering-correlation-id: d20dcb5d-0769-49be-a527-08decc450285
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|366016|1800799024|376014|23010399003|56012099006|11063799006|5023799004|4143699003|38070700021|6133799003|18002099003|22082099003;
x-microsoft-antispam-message-info: SoT+egfjPVIDjY48oGjNzR04NBtUcfQRyF50IZA9OhODKRQGI+hXam1pfgJ5G+e0ZTtRMLcQn1Wua+5LbzBRr3CsZMbHYV74/wYp5dOtDDOPpwEGDmzKURx8wEySQsmQ0POMRE4NB/4Uo6ui4Q93XdrTOO7IEx+K9kc+Qo5dSi28UZ98yuMgyYj8vCoyQNHKMUCY7QQhBWNSBi67AT2tCXZ7DZkiIPqMrQQ1cFkJwLy026VsPvs1BZ7f0gFB+P80Ck4t++V97P+0HgLuxxJ/M9Gc0VX/K4cxGl8WtBBE5GE+1Fx1pZ+0ojU2jPItThOXLVAkSwX2E5N/S/bg0JCX3+9TPI/H6L3NAN+cKRRE9wrxcdrcyoOOJH9qBTl/EEf5ayPyxckXqyCeeBUZbqPgoa+H0hipa4moHTmaN8QB3kQtJYhIQ7BopWP7pQhzQ+nSaYTuoXAjYV3KnAU9DpaAV+I7vrw+totQAllWXfWD3ZoEpXaG4cVqYJbd9TJPUT+HgVX7WphJ7vI6ldRa4FvKnEtHRfySa6iMTH+pLA8uZAgAsrbyB/BD+F9n7un2VAb2VXELZTRjeZqb75Imf6Kk4uqAY0NQzP+qD7ZUXOGQuNdMvQ8utCL2r55czlCufsJ1z0gv3j8YWZJl8gMCxNK3Czu5CYrdTRXSaa+xAasCvfvtMz4fIfdxJW5/xMEZQfhRwm8dBRLeiiUzWBwOM92WfDn3FoqzsJyqmrgRct3jhktivwSwGmdIOQXexw2LHGDS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(1800799024)(376014)(23010399003)(56012099006)(11063799006)(5023799004)(4143699003)(38070700021)(6133799003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wqw6NFrxuOlRs219G1I8IHGyY4iQ7UDJaIFeIz78p3gOkxfKBxA696dcqAit?=
 =?us-ascii?Q?HTeP2FuyiVOl6zAp1vmYr19nIuoQpnQf9+XlbMwTLdTkTy440/rYtb/rtrXC?=
 =?us-ascii?Q?W0qTTOYqOeGCffwSWXUFMpMpv3YfXVvJ0i5sGhB1s0dm+xo/ea4GkNjMZqGA?=
 =?us-ascii?Q?iACXN5vAAQ8519qwkFtqQtK8quh0QcN+k/h66HyehNaxZlnF4dbbPS+5Muf9?=
 =?us-ascii?Q?CSMoIAeeBDDo74JiEjcN37IEb25Dzy8QTgIy64qcTffKsNSmwL+XWW/5NFrs?=
 =?us-ascii?Q?Gp2K3ulHoplLJK3q+CdOV1mlx3FP56tPpQ2xWspgafO9e6iEMsrMlN74ZD1Y?=
 =?us-ascii?Q?iKH1I6QB1Dw1ch0QKE8w1GNRluDqyDhRUpx5jkTU3IyNzD2TODjp8JoFfV5p?=
 =?us-ascii?Q?tS10teoALhKPHtHMEQpnezfKAyxBbG+o5Xo6Zub4iaeAwQg8G8FzuORfuvRT?=
 =?us-ascii?Q?zygYIPT9NDKi+aHp7JIAxXGorkGH1eq2hAV4XzCetIW7ti6GMNeaAU/DDjtu?=
 =?us-ascii?Q?H1FL00SQHWRsruvQgV3FLfd6DFCgqf1ACyPc0oF5e2b1BCcsVAbES/fdobvP?=
 =?us-ascii?Q?g+GEDGVL5oL/Wpwl1lWoaVAbgFuy/V8NT3T0vAiZ6mfjFuJ0EWCYyC/09NLO?=
 =?us-ascii?Q?OTQpCcO0q8jtAeyOvI50vjbyusXkRZk5/+8CrRdglsE0yKJywSILzR0HI5Pf?=
 =?us-ascii?Q?Ebo3YOwqZdNvfj8HXUTIHP7YZCptqxiBgRXFSESZFsp2hXTY86KAZrxESwO1?=
 =?us-ascii?Q?/OwAaxqPOCo82rt8t6zzIAaLFcYIZmdh1DUbkj6kpMTFEtSrT9eWM2flN9qW?=
 =?us-ascii?Q?Cwxz+A7FqRRquscBq+hldYzPa7QJIV0n9m04o+ARJnelOulmzUgYpHdrRcfp?=
 =?us-ascii?Q?MjOH5nQOX5ISGqz6LnTBWml0HNihFROqlCgD7PFYJ68e3TDhBdnlUnHv2SMA?=
 =?us-ascii?Q?haRRLpCNv4wnutGqdwjo4NoeQdGuG5rP7y1NyvL2tfU1S0bKOP6DeipihzfQ?=
 =?us-ascii?Q?su6h7vMphECIkjj2cNVpWbJtzN39TQ4vHjGSV8QBbHab820iYZNqsFvDEZHN?=
 =?us-ascii?Q?x+KHgm3nexNF62ehw5rKyrGLNgKrC/qqEJ+AmGmjOfLmG1dSJdKaBYOv358/?=
 =?us-ascii?Q?+cthBXlvBF9OFyGgUHxRGJTQtcVZTXwZThW4mgFBMGQSgrF5X4lKshCeVC7O?=
 =?us-ascii?Q?/SCk4mGSaHKZQxU6ar2hOR4pZa6gC+lXJPkGfixtkBkVe4S25VQTcZDHFKb5?=
 =?us-ascii?Q?FZvjoBhhNjohrXPwKGOfbO3AW77gjQLY6R+hzUa8Guj2p43by48ia5yaipxC?=
 =?us-ascii?Q?hE29x9KmIgfvUASWM+v3hIQgYbwhJ0kdJK3vP4hhVuUXYZgpdHCCZ6+arJua?=
 =?us-ascii?Q?ivRO1dr8d2tT2vSTNQocXwqgYkYsnemMt/sN6szDONHXtdtaEyCk66rX1MBs?=
 =?us-ascii?Q?xBlwMugaq10LgIUqZilJc9fnDGjzKdExEbm0so9stW/SEwcJan3aSmJri9v0?=
 =?us-ascii?Q?TFzGxMv6LZEsKL4mVrqYufJqSerz3EpQbaVPqyFn26vNbsVaoE4vWOYA2IMU?=
 =?us-ascii?Q?UBcgH0sWFnmF5roMvWVXKOJaXWi7T3jiIY5E7YS2B7HnH3jt/uX1Rb8kVOsp?=
 =?us-ascii?Q?XBw3jJmXLMQwvPzBaZM8vmJw8lT+32b8pmVWm9jTS0irZQCzB7XRB72Pg/81?=
 =?us-ascii?Q?CCI+kV5mT172Bx/EXI2SdguSLg+/4px6KctXe4rzBfh5hmamc2yrvP1DZlvn?=
 =?us-ascii?Q?reIeePaTFg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: V0Dn98kIZkdz3gEPVheE5p04zrr0BSXnal84QtOJtY76qsp0PkNdeI4KazsC5cFb+ojkYKbEtLZ8IcVsywl77VicW8mcr/3q6coLkDHBb7ODRTDv1nrk/8anUShSaDmO8LWZtiNmaPAW1yHXCbAbNERQX60OTuD0Z3LPICE6fDDrIdsd/pWf5Zc2kgFVNYWoozoV9JJGCQDGvLp1cNh6RMIejE3WEZHQfWm1iRS5Id/KRZLY+AsW+TCLJB562LAV68gDMDrIXy88XEbuhe1yFu7e+L4cav8Acbu52XIDF3EIH3aTICEgIWXE8Wlewl2+NGd5XmggqSNYg5qki+a6kg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d20dcb5d-0769-49be-a527-08decc450285
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2026 07:49:50.0214 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZokCbTacFP3c2pUy1BdhMxAAWXb+RR5z73/ov7zYWLOdqQdbjV4kjfVVHaCrgEtoOwIjqoX216a1QFNHJk1icmS6ozZ7JJRq/sPiIm1JjWo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7588
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781682595; x=1813218595;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iFGsNFEmd1Ny8Ncft3nPJYRLzOoJSb+MUp/9xElMSuA=;
 b=fykvJR48bXJac13im/BA+mh10co+GRXdV1HhcxavctFf6FSe8eH2L1r+
 j53vNWSwlM0KwjCrsY9X5UDOdVDfgL62+mcVTMs8rRxtT0gZrhuMya4np
 T7A4sVVxwLbtcgfSAfYDWZSICs3BwvzDHcZVoVASWPfCDrmEOh+Rm40r0
 mulSFkFng4WgzQq/UMao4PZO3dvDrxSc6gmfecJApZFOmmeLnGqhjoFMV
 taKbftvHGG4jcBWMbBXqqOHqDIUHWUtg/f1ITRxfxr9OZQf3h0Jc1nJG2
 QBMTLAkxBx54LkirJrOeicfEmfqMFU/3u/80wFMcxBWg2m5bWdh9aZWcn
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fykvJR48
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: validate num_vsis in
 VIRTCHNL_OP_GET_VF_RESOURCES response
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:moonafterrain@outlook.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:mitch.a.williams@intel.com,m:gregory.v.rose@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:danisjiang@gmail.com,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,outlook.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,lists.osuosl.org,vger.kernel.org,gmail.com];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 738B369747F

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
imon
> Horman
> Sent: Monday, May 18, 2026 8:56 PM
> To: Junrui Luo <moonafterrain@outlook.com>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Mitch Williams <mitch.a.williams@intel.com>; Greg Ro=
se
> <gregory.v.rose@intel.com>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Yuhao Jiang
> <danisjiang@gmail.com>; stable@vger.kernel.org
> Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: validate num_vsis in
> VIRTCHNL_OP_GET_VF_RESOURCES response
>=20
> On Thu, May 14, 2026 at 02:55:04PM +0800, Junrui Luo wrote:
> > The VF allocates a fixed-size buffer for IAVF_MAX_VF_VSI (3) VSI
> > entries when processing a VIRTCHNL_OP_GET_VF_RESOURCES response from
> > the PF. However, num_vsis from the PF response is used unchecked as
> > the loop bound when iterating over vsi_res[] in multiple functions.
> >
> > A PF sending num_vsis greater than IAVF_MAX_VF_VSI, or the received
> > message is shorter than num_vsis claims leads to out-of-bounds
> > accesses on the vsi_res[] array.
> >
> > Clamp num_vsis based on the actual bytes copied from the PF response.
> >
> > Fixes: 5eae00c57f5e ("i40evf: main driver core")
> > Reported-by: Yuhao Jiang <danisjiang@gmail.com>
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Junrui Luo <moonafterrain@outlook.com>
> > ---
> > Changes in v2:
> > - Clamp num_vsis based on actual received message length instead of
> > IAVF_MAX_VF_VSI suggested by Przemek
> > - Link to v1:
> >
> https://lore.kernel.org/r/SYBPR01MB7881AF11C45AEDC0D4CA89C1AF062@SYB
> PR
> > 01MB7881.ausprd01.prod.outlook.com
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>
>=20
> There is an AI-generated review of this patchset available on sashiko.dev=
.
> However, I believe that the issues raised there can be considered in the =
context of
> possible follow-up. I do not believe they should block progress of this p=
atch.


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

