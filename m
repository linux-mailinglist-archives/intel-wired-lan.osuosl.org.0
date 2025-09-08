Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14103B48A7E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Sep 2025 12:46:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB9C66175B;
	Mon,  8 Sep 2025 10:46:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id umGRde7ROKOV; Mon,  8 Sep 2025 10:46:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 31210615A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757328414;
	bh=EbgFu+ovmnPU5HfeLVA9/RNKrrv4WixFDi+tzdcdB/g=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MoSwu/fo3GHvA3YDLGPNA/2yy+ULsd+yWWuaClzi1hryp7y9HTqND3Em40KnAkDQH
	 zKzfcATZ7nuANGSIBBGMywTmmLQrxQPN6I/Y4kJzX3Y6rhq4BdKbwfV72JUHCjT7pm
	 feP0xXKW9v3yeyVaNHI3qdXyRVZB0ZKZGONqxQdUYLbNWEHqAz1itf99oX88U52aAQ
	 Od+1OGPZzRh/1e+a6fwOJVZ0Nnlc49g1L0gJzE9ovS4B+bi3osgemGvAA4KYMB07Tu
	 hqFJkoMHGQFORcq/txv8UEdlYEAUo5pknTAR6fzfiokLMjuUuKVhD/Tvys8ub7va/d
	 ovADEi4LTLrjg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 31210615A5;
	Mon,  8 Sep 2025 10:46:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2F23B1D9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 10:46:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 20C81414BD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 10:46:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6HUDtOhwa7R5 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Sep 2025 10:46:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 504FF41516
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 504FF41516
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 504FF41516
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 10:46:52 +0000 (UTC)
X-CSE-ConnectionGUID: dHtjtLqyRxuN0SaceJQWtg==
X-CSE-MsgGUID: 9F4tBp2vTmaOHrEk7uKrmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="59728339"
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="59728339"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 03:46:51 -0700
X-CSE-ConnectionGUID: vgvEHxyWQc2Zf/CqZ/yutA==
X-CSE-MsgGUID: v2k34kv5Rhy4z76K4WSZKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="209917128"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 03:46:51 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 03:46:51 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 03:46:51 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.88)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 03:46:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J1W6vt7G81V/klLs7l9tq5RKkaX0wznMD84l7kKHLdxlpccDkYdalmYSFDTcXUZMPHWZJfUZ1RtpY+C1iA11pGxqfWpnAVI2hqv/DTRL4DXupfpxD96p8Y6szOvUJY4JcsYk28xsLYqOe5c/v2OgpScaWuZdhKqTofIFC8D1uzTJFnm2MF20Oz67bBr8URnKzPRYrVi3Rz2go/xl1RHdsqS/E0VgcVmVZErFtDYmrHG0Ol7o+LSkoQaBO4eSe07di/dhf9mBTcuJTzZf15oAvD6y5DLtU6tMmJUIITWUodBBO/xX2HgF9rq2h68PcNGeB0UMp0lh4kpP3fe+PyE1XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EbgFu+ovmnPU5HfeLVA9/RNKrrv4WixFDi+tzdcdB/g=;
 b=sYLbmM+PkKyGs1gPD+HpfqQYpx00fuHd1hAtXRENeLSkAMVuNVJxOQ0Y8UgW6CIWgps+xnPLg2ax2Uc+BtHvhLHT8GPJZQz6E7/OLAZdCTo8nczok5ehFTXMKTycnztSz9OFjdqOxNkZ9Qdohq81S1mrFJdGsYo7+EbewDgoMyJnioN49jQrzOa10hc/4z03/BlhYmDook0IgGeS4gGAzhSLb6nGIr5Y1wLE/Zlj2M52kY/2i4akTd67i4vxwhtkUOdpninGR81bhhJyUpXk/+OO35RbLzAzr5vcr1ZqQ0qanlqjQrQfvtfgr0aycob8KL7eDD3yRR34xkezIGyd3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB6796.namprd11.prod.outlook.com (2603:10b6:510:1ba::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Mon, 8 Sep
 2025 10:46:48 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9094.018; Mon, 8 Sep 2025
 10:46:48 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Simon Horman <horms@kernel.org>
CC: Alok Tiwari <alok.a.tiwari@oracle.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ixgbe: fix typo in function
 comment for ixgbe_get_num_per_func()
Thread-Index: AQHcHoL2/smGuXvoPUmYb9tmcEVxG7SFABYQgAQXboCAAAcPMA==
Date: Mon, 8 Sep 2025 10:46:48 +0000
Message-ID: <IA3PR11MB89866A5206C9EB4669B52C31E50CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250905163353.3031910-1-alok.a.tiwari@oracle.com>
 <IA3PR11MB8986397B4B9F900B6EA39A8FE503A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <20250908102059.GD2015@horms.kernel.org>
In-Reply-To: <20250908102059.GD2015@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB6796:EE_
x-ms-office365-filtering-correlation-id: f2bbd857-bd84-4f24-a45a-08ddeec5032d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?VhxWVNUW3mv2Wp7KQ79d1Q0Rv836MswvPdMMaoWJgA5X9KpIJG4sYxHaRlBl?=
 =?us-ascii?Q?1zdYCUgvsMALtccmn6n9zaz+j+u8yfJTdKu2qP8rTGjb7KrlkC44ZMOrFEg3?=
 =?us-ascii?Q?MK+IdCoO6c+Lmeqo+kE0VA03g3xAKsD35RqW03WH0qKRRncdQyMqXtrvmCwo?=
 =?us-ascii?Q?naDVaNRmlD1bvNJgXeA434m9TDrOShBgMf1oIC60ExRJvUgncadatGw41kZh?=
 =?us-ascii?Q?jNj/Ipk0KHudQchGQ+9mYKr42SXYwPW+PljYnwUu9COFVl2VetzSWFzNmlMv?=
 =?us-ascii?Q?6BfJMIh8dLeH9XGQt5snq3b2k9vJzz+dPLmYmKq8KsdYDRM/ZWvvgD6V+Ot2?=
 =?us-ascii?Q?Jqps3JmMiI6LmPozZ8S6e541A+KcmmxDx1wr1Ldmiyn/HqXAbMXGTOugr0r8?=
 =?us-ascii?Q?EqXZz8MlQ/WzOvtMonVoXlnU/tFc68wh7iGpPV6csQUuAKvrpspJTquS5Oqo?=
 =?us-ascii?Q?x6GbKx2ePfU4lvhM9HaRAEkAW45BAjH6jmKsq0XfZhky4pCb3DIMtQ1J5euw?=
 =?us-ascii?Q?Gs7XEWqa9NkqFILLRARHkfU/bcGeYJ95Nnbfg7wC30ZwfF+0Q6C16cdqWXLR?=
 =?us-ascii?Q?UCgonVTymWvcCcWnV89zUyZVIBKViwtQVvHh4jIiLLNJiTxZBt77azvFD5Hk?=
 =?us-ascii?Q?6gVNqEE1RcvSXx5ADJ8HBU0FnXmmmYRr9KESe8pGymfaJ+5xKDBe8vylr0bh?=
 =?us-ascii?Q?Hcwh5hJGoNQGUqpNjEaDxmkpNwZrN5lm3FKyKpo2oYKvjEaO1vbdlH3dQnP/?=
 =?us-ascii?Q?c8pvcuVxlblzPq6YEX6Ks8+ycSrKB3ujxfe1TA34MLFeD2aLiZUO+wUxHGUI?=
 =?us-ascii?Q?l4TveIhPFIQQ2Ra4dM9rXIHnUTPvGjjUmEcIw3VM2B7WSzVKtWvUqfuSJqAN?=
 =?us-ascii?Q?zC6aukASHyhK9UUOVvzatJlsJRTVBMPCxtbcFPzIY1va8Vtsrf3EFLnbE9mi?=
 =?us-ascii?Q?xXkpu9fJBg/kl+JertKq3SoYZ8fcblA+OB/0mRkWAdm2KQTQ9SCuSpbFaqtf?=
 =?us-ascii?Q?StfFOgcljoROLbUh0MQHaegBqs3ixC60vgHbz2QOtFIvN5xc0ilKgkSOWzRz?=
 =?us-ascii?Q?zF2blHTCJWVssYV7Wf+lrKWC6gItEOQHZRaN29vRmpZqGlhK4LX/BV3H/f7p?=
 =?us-ascii?Q?U5IXZa/4WP4MAaCbdO3pVhcglC4Ez/pbfl3f4XeVi+6m+tMbKd2BQM+RNrFe?=
 =?us-ascii?Q?wxxObyhkSJoaBQTeW8orqteQGcacIoJkgoXbaO1YVi1d3K15mlLMKMR6ontJ?=
 =?us-ascii?Q?bG5rJ0xPKWLs+pg66mAF1eb9SInEvSimDTPjTusYtl7H6lZt7N7IU2Tpj7MD?=
 =?us-ascii?Q?wajyRUCGN9UbiAiEyYy3MrNvduJZr/6QZd+r3D19Wo69qvcXuA87MsoQiL2F?=
 =?us-ascii?Q?lyKiru0aTWmE/bBLxaGysCrNczsc62+o7b6Sw3vZBeRVdB/1tI2QYgFT7wKn?=
 =?us-ascii?Q?4YaUP8HZ3uaqN12Hgd1C0xciFIMs0Yh+bG8BA/yx+UGK3Urir0utdg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?B61fvXIMqHVEvfns+674wqBVM6mzCwLQjVd2yfwjK82/O/3HLGCDMynuhqU6?=
 =?us-ascii?Q?0GWPDOeJTHt/eUH1PxMMt36WcKVOUPNmHcz5x4axAJPvPf0Y5AFluhXQXivu?=
 =?us-ascii?Q?5x49AHf3FxR/ZRh/Z5NsJG10fbhRxZLfQ56waAJwn1O1U5JMBFA3ytxmIVDM?=
 =?us-ascii?Q?GMvAs72oCIPtkfv/P+nLy4iLdCSLj94KDn8x+iFOqeugijvLL+Wqj4etXfCq?=
 =?us-ascii?Q?ymIlDTz8VnPXugD2dhbuGnv1hDKkmP5Q2k0AkXFjH7SSLnYMZH8kIMHzJc01?=
 =?us-ascii?Q?fwIwm7vft9YMjdzAd1tMobl1i2N8RmZREBBRek0pAranmhYwMkSP6/+Hbb4P?=
 =?us-ascii?Q?PKTlh4ubmArWITlnnqKZa1CaWxisZjrXPI/iMnR/TvwW186XESQKMwr+kuZ9?=
 =?us-ascii?Q?RPjzoYLilgg1/P3KWmMinBUjnrQ3dUc/aSy6yRyxeOkwuYvi/ZoHUpw49uYR?=
 =?us-ascii?Q?cebljlF8/a5hTb62GLDvNurenYc7V5zLtnkaleI4aSSs29JmYGrxqBwqpi0U?=
 =?us-ascii?Q?pLrEf5e8gRWxIQXPBbICcBPGfFHS2K2bc1zaBxvNven44k2OxRT9uVL4X5sr?=
 =?us-ascii?Q?UA0RKjCv1gr95X0OVlJysvavVT0zFTSbOXr5fnqWk9psyif7EgKWzcfXWbJG?=
 =?us-ascii?Q?KKm1atKoWtIU37BFthwKO18PfbAOvmhwRHpxmIWBfE3Y9lOdlmecMhV85sE3?=
 =?us-ascii?Q?wOIuis8x1fd7v8P1EPfAWyOj0f0Vr5yjDLWgQkg3lmss2Pg/E0geVN8kqQaj?=
 =?us-ascii?Q?A+WTAQ/I6RTGyxBpo/RltcYF1cr09WihY48ZaQMADc/mxjs/9gVsPTxKUP0F?=
 =?us-ascii?Q?181UpMpvbkmPl2U3J385NvAF/KA8jYyc3K6Uk+Nfr6aM2IzwALQV42zcV7Xq?=
 =?us-ascii?Q?92FQtuuZf7Eb5dLO+zBYFiXoF0nXXFEagklbt21HRAgwHYGsecjRuLLwFLAu?=
 =?us-ascii?Q?3ufNkfW/YuEtnODl8jvyp2vgD1PaFfCm+HbVVgnSQHWg5xQt/gpfPg6JtoNK?=
 =?us-ascii?Q?BUEti9Q8rmbCEcANJpFe4N33tAG11dM5FIcZy/BxFke2X79GaF3v0wqewsMs?=
 =?us-ascii?Q?p5M7p1FoMnQNLYE4J6rps4F4iifJh54nIQtiqQKjP92b6wSV/SJGyHQcVpTC?=
 =?us-ascii?Q?IyHbxFnwYCh853qm91gJvnEjV0tB+/HuQ2d09e6b4GUJ/vC7mDeUOcE3MDq5?=
 =?us-ascii?Q?NCSDnd4fJzZWWgRmbzta6aiuwPG8LlfhxmLdaISD0u/hEltUpT8glQnVUjS9?=
 =?us-ascii?Q?gLDC9fMQOgfZe+Ji263nG6a5NJEHb9czry21YVjveH3lwP7HJJ0VRxtfpLNo?=
 =?us-ascii?Q?yPorJxAjA9z0x+a9fpzGzGc8gv0ImFc2Bzv0Se+heHWR04AK45QwD4UtcvUp?=
 =?us-ascii?Q?tdz6NOvJ8YolHpQVh6HMfi553g8eoyOhmRNoPxAt1dYqwhUMAI7FODsi7Jl9?=
 =?us-ascii?Q?y0q08w0zmi3lx/ldKJQxU+0KhA23MVvZDdtdyPVmXJy9Gu/U4OlCDsuyJWNt?=
 =?us-ascii?Q?mpcBt7FgcM22Wi8KJeiTjNcqnZxhocOtmSNaGVRHE3dHXOwuep8M/52JMzS2?=
 =?us-ascii?Q?Zs1pd9CSn43g3qD84yxz1Y2bFsabQPGETCKC3Zyp9DtXAm6haPE/YhuXOAPd?=
 =?us-ascii?Q?bQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2bbd857-bd84-4f24-a45a-08ddeec5032d
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2025 10:46:48.5188 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ImEr77qnvm5mF7eepUyMtUbloBCCptS3g6fRMatttCKRDaePnZJJ5tdX4yl+KYHw5suTzaG29HPnsHvBi7k038T6LTYeiDk4N4FnHzqQ6Tk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6796
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757328412; x=1788864412;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EbgFu+ovmnPU5HfeLVA9/RNKrrv4WixFDi+tzdcdB/g=;
 b=FNAikf3EeccT115aTAUccjq6emafCQs9JLUTdGiHho7ph7xsLpc7b6RB
 aHcBai2FSPCVcnNuigOStRd+bUitzR0zIHmMabXmHVqt7KBoI+GnjN1S9
 LdWoftKwbJK4+AD4ccibyzELggKgq0pfjkp0GABKwhKhMPmQGzlHBIUAd
 DGbgW2BLmjkG+kuG/1z5i2yg6TxUzv/2jZaPr3XWd7be0cYXglDQSx1Cz
 ytfN1AGgvgN/YLMvljSZClbiIwTzZL5qVGSkhy/ICi5+W/Alq8iNORVaf
 LFmqigLKJr9hYwMpEcdVFUjbFMvdtNGL00H954/eR55pRNNBc8YiafRdF
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FNAikf3E
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: fix typo in function
 comment for ixgbe_get_num_per_func()
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
> From: Simon Horman <horms@kernel.org>
> Sent: Monday, September 8, 2025 12:21 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: Alok Tiwari <alok.a.tiwari@oracle.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org
> Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: fix typo in
> function comment for ixgbe_get_num_per_func()
>=20
> On Fri, Sep 05, 2025 at 07:52:13PM +0000, Loktionov, Aleksandr wrote:
> >
> >
> > > -----Original Message-----
> > > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On
> Behalf
> > > Of Alok Tiwari
> > > Sent: Friday, September 5, 2025 6:34 PM
> > > To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> > > Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> > > davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> > > pabeni@redhat.com; horms@kernel.org;
> > > intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> > > Cc: alok.a.tiwari@oracle.com
> > > Subject: [Intel-wired-lan] [PATCH net-next] ixgbe: fix typo in
> > > function comment for ixgbe_get_num_per_func()
> > >
> > > Correct a typo in the comment where "PH" was used instead of "PF".
> > > The function returns the number of resources per PF or 0 if no PFs
> > > are available.
> > >
> > > Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
>=20
> Hi Aleksandr,
>=20
> Perhaps I need more coffee.
> But it's unclear to me why you responded to the above with the patch
> below.
>=20

My mistake, wrong copy-paste.
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
