Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 27847CB43B7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 00:22:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD3C4611A0;
	Wed, 10 Dec 2025 23:22:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dy7Zpy0lf82o; Wed, 10 Dec 2025 23:22:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4961F61C34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765408931;
	bh=wRR4vlAmLResuWMctyJeiUkyAfXoLKujTrngz3RlOME=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=m+NePwwUfpvnYvTJe0gYKiIB+EDR2OJYpvCfGnVhuX/+IIbkCSahS7P1B4BWbunzR
	 I56tOYv80ts/+OS0sCS+Mi5AKeq497ZynznI4zyYMs2FHfd+pt9WGaF9SKcvmeqf2c
	 k52STC5/QGQRAwqcbkZ0ZA0CvzC3rx8BH0AA78XcNkX58mU5Inl9Vwa3QA5Xk6l/F3
	 9ea2IKiBystatCmHF62EDQDMKPbIgokg4KVsyVnrXlP45ewaxG6Wks7gJ/9NfGvA+Z
	 3Yb3ZBZFA3/c92ziN8FLO7G4aGSosNc+rFDQ3iFhK6W5s12GfPai6dYI0Q/XrbbiSP
	 yzshXLsTJQhLQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4961F61C34;
	Wed, 10 Dec 2025 23:22:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 253FC2C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 23:22:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1767A40F05
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 23:22:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w319AXr6GviV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Dec 2025 23:22:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 20B8840F0E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 20B8840F0E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 20B8840F0E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 23:22:08 +0000 (UTC)
X-CSE-ConnectionGUID: DVoSlx/LTpO/gajXIbqOFA==
X-CSE-MsgGUID: WNcsEcn+RRK6GBQcWm2MOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="78088374"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="78088374"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 15:22:07 -0800
X-CSE-ConnectionGUID: lNK0KjJBR2+anfwYic07xg==
X-CSE-MsgGUID: Aq2Mlun0Qa+I8McRTsUNKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="197129148"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 15:22:07 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 15:22:07 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 15:22:07 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.18) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 15:22:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oD87mM9rAHGJ5Oa90rwCr3dQpEgTwqDNXkTdEqIeXjETMIm/hxR6IkmwkdaEszALkocnv6wlxgjDjXZgeHYP4BLqSr2Gv+SlA9IC+Mm8/bA6a1fhKB65EL4ao62H0wY/M9nveCXxq+GrUTrvb+CwJZaVLGfudqaFz+YI1zwskCoD+9yMPZI3K3Pp5EcLYhtGLK6Jb6A0bMVY2k02oefoXMDfa/7ln0+3pZBTr1TM3M+XCooqTH5j1juPUW7uYT0tPB5PsBccdQFQG9H1nPa6HGv/WLYH3SEm+DMvZdXw+77j8hSu0ecsdoDXBJh9C2DLCJfbjtWJw97vh54+TkXYEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wRR4vlAmLResuWMctyJeiUkyAfXoLKujTrngz3RlOME=;
 b=mcy9P6gZn6rdyV02tsBp6o1SZfgCC2I8eLr5hdMdiQjj1x2awc2NlpixpDpKexTx2gX7+FLwSsqjoa0+rmxOlqiANoAiUSemdz3/LQPWPyPpzumOlQzdlZKDd73hZ2mfBEQ84b6+jmaLOvNY1TqM6Ukp/0zOuGSPlRs+y3Ym8EvY71JsUKbcjoaH0XJ1ZXoQObfdNBl7AaK+vIX3BLtv5Gj53srk6Yzs0i0c9nKGnbYx5bQh94HTLw0icMZSXlIg4kzzknGEvL8Fr19xM+5IkJnV8m0XBORAMRdgYgsp+5wL/ZaJc0ZZj8I3dC9WOR5twcj9rG7MGTojpM1KsePHiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SJ2PR11MB8451.namprd11.prod.outlook.com (2603:10b6:a03:56e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.6; Wed, 10 Dec
 2025 23:22:04 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 23:22:04 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Hay, Joshua A"
 <joshua.a.hay@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v10 05/10] idpf: reshuffle
 idpf_vport struct members to avoid holes
Thread-Index: AQHcVDTegYO+JTEUsECGRogTaUxgHrTwLwyAgCt+nUA=
Date: Wed, 10 Dec 2025 23:22:04 +0000
Message-ID: <SJ1PR11MB6297245099634A18E77770B39BA0A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251113004143.2924761-1-joshua.a.hay@intel.com>
 <20251113004143.2924761-6-joshua.a.hay@intel.com>
 <IA3PR11MB89869DF357B3E046C9AE0BCCE5CDA@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB89869DF357B3E046C9AE0BCCE5CDA@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SJ2PR11MB8451:EE_
x-ms-office365-filtering-correlation-id: 0bd95ad8-c119-4c1a-902c-08de3842ee23
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?NXqvkFFnSpOnAoMKcqnMj8bqvVNMjG7DppF16QXTbsriUH2edFrTVOX2Yn+j?=
 =?us-ascii?Q?Uaewbqpu4K9WILnhmO1RAcZUMk1tBdI0Sp/Iw9ZDWNNx9sODw7DNaQ0lUOhU?=
 =?us-ascii?Q?bIoXYVvrUtvK+eRRMz93NNWctnHlYSyTblLBt0YpzYmQodZB3G1hRIarb2vi?=
 =?us-ascii?Q?mDaU5N/TwH4k5+PFRY7ufwG5IaIlcnAwxwj3lIhyHOiWO+lAumlKueV9XM9s?=
 =?us-ascii?Q?vgoHzjzDDzSwlWHZAeY1GdKNqNGowAoB/FKrBWcPM0m8mMP0y8lTVlTCSbqz?=
 =?us-ascii?Q?ilu7JW4XsEARsRk5ijt8OdX1MglNd5urh+ILe+Sqd7tl72SNuIs9+LjS9wDX?=
 =?us-ascii?Q?5M5cjLru2eX8wc+OsKkPFNiJVrxMa3MlhCe6UlYrJajnP54E2R9fzDcDzSlt?=
 =?us-ascii?Q?kS+J5ZM9vmrRQ5sFhxOQbVzPmQoxp/S/amc0ndZU2wRQY5HB17T68ikyZKqh?=
 =?us-ascii?Q?FJ4jIxLBzryWLjtMVpkUxBFYX+/0yrGDSVBpmq9+IRNuPZkrtszgtuEt+Kxt?=
 =?us-ascii?Q?3dzxJFUdWbwiIBT6N7AVOOBlqVPG/Z17DdvtNV+vIe51ox46gHAsrYjTrJUE?=
 =?us-ascii?Q?I77DRfyzRThxZl9vTrbPfMtI2BG3QXz98xd1X1OZOpWESjELwoEEDf/RoDtf?=
 =?us-ascii?Q?KFgUZUceT5DZK62W8pjs4S0lKIgo6Ibt9Y6wG2GNTYC3I4ONKiY+fyjIEkya?=
 =?us-ascii?Q?LmNtrnFEsRkM8LyHn45WgI+1n+LLtLnNGbm9jR5/j2wbeHoQIZCGhraBd/Mc?=
 =?us-ascii?Q?PQgRgO8Z/vk15NfLzPy95TWFZ/voRM81BR6+g1O4I+iXuMdmdq+G+fIC9co+?=
 =?us-ascii?Q?K9srJlXS8Y/kF2Fpr/7iNYr+820pq86EmLMOKiQtyzjzugudrNm0jeMv1FPQ?=
 =?us-ascii?Q?S7l7+MQ2Wtl8hMSCj7hgNCnKnoArcqBmU/hCr7nY1+MCJrzR5F+sOD1Np9kh?=
 =?us-ascii?Q?Kj276Euz4zY1oKOZx5GmBiSgclXGPfC/QjSl8SivQIdoskQVUSDCLk6enR2B?=
 =?us-ascii?Q?kvWXVlupRo4rv/AZsLRyDe9QujzOPpx/ASPLsPLw6/18+fyg6o08UfIdWIoK?=
 =?us-ascii?Q?FoHrB1QCZiX5ABpc+nV2zbPL6UTh9vCmQ/zjC2Sp89dILtMvwGCkmxkM8oY4?=
 =?us-ascii?Q?vLu1jsD/qkIHoWnHqol4F6tdeLH/HS/0tTQ5fnkAcy+RtJUjxINI/q98FER7?=
 =?us-ascii?Q?V5JFjY6dquZJltl8lUHhE0uuITROQK/Ye1tlTgVg3NMZ6FoEKsApTFQ61h5Q?=
 =?us-ascii?Q?ux4C5UmSxMIm1/IXkUYWVDcMxCYWYHxc3rW/bJyhAQsg7CI/pauxEyOgjIOm?=
 =?us-ascii?Q?Lj4KWvFQTJyBA+g5nJbDzClTq9FmsMh16CXxgbu3xciPVs+TgY+ONdum7oR3?=
 =?us-ascii?Q?DJNXtg1t96YuGj7adjP1dvJcF01KjA7V0PKc9WbKGKZrp17uWauhFsYggBgl?=
 =?us-ascii?Q?ycmLmHx7ZRJ89lIvZH2kpNQ+zDl7NciWf+hzAdpKWqp+3l6lOf/rSUp/GVvz?=
 =?us-ascii?Q?rJZOW7mYptQ1OPVNJh+JaXoTCQSw9ZdyXk6H?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/vYvgdqEqM6f5BlvmQllT8bg27mOpwFgRNvwry33OhGxglBezx0Pxngk+eqw?=
 =?us-ascii?Q?DVR11X0hVKd+vFhLj75fcgZENSqUcGV2seOeteXCHKvbQ4F/G/BIGrEboMp2?=
 =?us-ascii?Q?qKEac4k4kltH9ZDDWdd33hA1wnFIDtgX9k7xmmDVHAZxHJRwxgnmQs44WU/w?=
 =?us-ascii?Q?EU456wocZ82FihNPZHM/LhB3szDLCe5mpA4y9oVGFCKWHBJp4GKIrnjkBweV?=
 =?us-ascii?Q?YkosHfgNgM472WtLAh99HsZlNd2MXNtDZkBNZyWF27JmcTnvPa05bl/5WRPP?=
 =?us-ascii?Q?jYsvHzrRhoZHA+YNSZHz8SPOtOKPEFJePNo4Eh/xG9t66mQ0hDFQFFr77ZfX?=
 =?us-ascii?Q?3McvLVXCWU7++mjWDjMscpQoIvzvGsRz3KTc0Dfrgd1Mzd3FAKFbjfK8K6vp?=
 =?us-ascii?Q?p3IqHJuGkZIIdBFIj/QR79Ufurdoe3WiPpthxCnLu5cSPtd6RS5RsnqCvvR7?=
 =?us-ascii?Q?RauNyB+mU3q2KlxrM81/NihBImxs2UUo0yAB8dmVlRPy/sGLLQrkhQPVftKE?=
 =?us-ascii?Q?5xXkUWXvW35CoO0G0IFm3qDyUrqDDNZ5VHdch4bvLVDjp/AuH3Bl4vEYIAkt?=
 =?us-ascii?Q?zfMU55LAgzU0iCLiucn/YToFixRHo+qSJQeKF5apa2oFNUZGaFFo2tG3Ivyb?=
 =?us-ascii?Q?uT8Ezz4dz0cC220wIxwQ7VzAwPjN6Y70nLPtG1we6/lX8O6RiH43/EQ6FWTM?=
 =?us-ascii?Q?owisYQ6scSBxRw1jLZlsNikdvbpfrOnJQ0eCIy5mkFBYveVz9kJIOBM06xM5?=
 =?us-ascii?Q?CNLhTeyXxbLOp8nZpf9XykuFY9jpsXZbYcVKLtsuSYqG4eBWmqo/tL5M5vsr?=
 =?us-ascii?Q?03NGbiYj54cigOz8UtjpyHIBaZwT8bKokyyqYn6tff98T4+UFx3g8mm/2hnK?=
 =?us-ascii?Q?AxNVeUbnX2C/PZcATrmhPKiyw9ifSl9XeL7jOccqBZ/Oj+YEBjW7MexeFqNZ?=
 =?us-ascii?Q?UK4uGvL0cUOyqpKvmJE/fId/mSFvQPZYRnvWp0Sjst6SJomwuvTQsA+r19Wj?=
 =?us-ascii?Q?GfSL+wRXNmwRotpaujfTmZbzOhTMXOmQXzmuSn8sDmT1UcNlKpwCJopD/tnU?=
 =?us-ascii?Q?CTLvqmygecRjXC1AiWLF9lBB4PrMmOBQVez2CL07IF7gSdxcAloTPxSs9fRP?=
 =?us-ascii?Q?Ua1J78zasZGslTIN1RM51kdTEi8vT7g1zyeorSZ5LKUy1xNTHxtbFC0EWcmd?=
 =?us-ascii?Q?HanBZN5IpY+VDuSJBLTeAi29/0fb+Sj3/FzAPyaofkaZAGK4/PLMdlaCQZoz?=
 =?us-ascii?Q?zyoe+Vv/sX9FAtyldKs3u3ebsclYka9EIeXAhGD0Ho8vp3pkI2NC6+YJ0n2j?=
 =?us-ascii?Q?UsBBfCb8O9qTA4fNK3aT09lx305j6hE2sG9XwOMMUg6TOJl73YBdgb+YffkB?=
 =?us-ascii?Q?qHjZo8EP/GNPnEDecxQrrOgyvZWQ5u8LaaFR+eaIv0HZxg23jYY5EJsTt2NV?=
 =?us-ascii?Q?QN7vK295X54UpsB7TaVXmwpsvwDgUyM4+Uls5coPKHl3A2aaeYb7jtiWLdsm?=
 =?us-ascii?Q?QOVolyzknaXxF80+IzRPXwkAumddoIPpDOjcXVsJBEgd9YfNNuenknU+m2RJ?=
 =?us-ascii?Q?6K+DX8ai8miK8QAACdmQ/suA1hLMlbFBeGsOe5FX?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bd95ad8-c119-4c1a-902c-08de3842ee23
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2025 23:22:04.6907 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1pjNBmwJQBAlOeL8rhRn3kAd/MIxIN4FlE0+mlxVbRxgLctLBV2MBNB9lzFbySbusIl1vTEraXFHTAmP8YFp6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8451
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765408928; x=1796944928;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wRR4vlAmLResuWMctyJeiUkyAfXoLKujTrngz3RlOME=;
 b=GgfyyuT0E+bsrdObkEh3QcIY2U69abOikmPvQCpBar5oD1miftTgPmFT
 U+YyBweZPU0wbQzUvDdIdLM2h+VHul7TEEppHopeC4bS2UbpgyKcWxoru
 n8tXuuT+K/ucvZJAJpa80kHfqR7m3CAKEgkDJO4PcmV48eewavXJbzYYd
 WijNTuB5FTDbkGE/MSQkf2HfnB/F2IIqxmRg/hBOkIcnyhQMrzUBvC7Nk
 ChQdIQvbCX/tlBAkVOvtIGOqzAplHzSoxXfL27KTuqTZEEZ6f17v9FHCz
 LXhoLdid70B+LfKPs76kGRaM0e/5Lhpvs1uv7GyoHhniK+r6CnLDgOJ91
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GgfyyuT0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 05/10] idpf: reshuffle
 idpf_vport struct members to avoid holes
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Loktionov, Aleksandr
> Sent: Wednesday, November 12, 2025 11:04 PM
> To: Hay, Joshua A <joshua.a.hay@intel.com>; intel-wired-lan@lists.osuosl.=
org
> Cc: netdev@vger.kernel.org
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 05/10] idpf: reshuffle
> idpf_vport struct members to avoid holes
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Joshua Hay
> > Sent: Thursday, November 13, 2025 1:42 AM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: netdev@vger.kernel.org
> > Subject: [Intel-wired-lan] [PATCH iwl-next v10 05/10] idpf: reshuffle
> > idpf_vport struct members to avoid holes
> >
> > From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> >
> > The previous refactor of moving queue and vector resources out of the
> > idpf_vport structure, created few holes. Reshuffle the existing
> > members to avoid holes as much as possible.
> >
> > Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > ---
> > v8: rebase on AF_XDP series
> > ---
>=20
> ...
>=20
> > --
> > 2.39.2
>=20
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Tested-by: Samuel Salin <Samuel.salin@intel.com>
