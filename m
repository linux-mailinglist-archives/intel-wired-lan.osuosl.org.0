Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B1D9F665C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 14:02:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5CA29608E4;
	Wed, 18 Dec 2024 13:02:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tZO_6P1hpHqu; Wed, 18 Dec 2024 13:02:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A7F661091
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734526931;
	bh=chsWLkttBunFTqrIaC8sdtVn8Fsh+h4Sp64OidrBf2I=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=N4oZYk5QH/Rx48b2XjERH2HN0R/6KzqkeKmTBqgbmSm70F6fmOOpO4gTy1fP+XOBA
	 b8/ddoJ2JKCSWabRwEX74atsHZNEofJRMc0IZUDnf6OJjP185oaHltmXTvV3PhHLQA
	 7Go+2D0J3ADTONt4p5MYogxlJkKAmyPim+r+O01fkl/3mMJFZqmzoix14K+Hj+k6L3
	 yLh1xzfgsLrVDcpfVOjkRrCOShZSlju3/kV1LZcZI/H1T1YbOD2U4O6H2slsdd0LBI
	 qLKQxDckwfvTrpT7VN2iXJZt8njuQjupkFONzkKhuVhB7uZk85XGr3CweNBYgXyI0P
	 iUG10gWx2hkOQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A7F661091;
	Wed, 18 Dec 2024 13:02:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8A1BFCE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:02:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A47A24132B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:02:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jm6nQIJS6wgj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 13:02:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B0A4841576
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0A4841576
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B0A4841576
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:02:07 +0000 (UTC)
X-CSE-ConnectionGUID: HJudWLizRkeOe/ovxBesEA==
X-CSE-MsgGUID: ngi3y0J4QZeTcLew4edDqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="34282934"
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="34282934"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 05:02:07 -0800
X-CSE-ConnectionGUID: I6i5MolAS+SJxVOnd/pJfQ==
X-CSE-MsgGUID: k/G0/G1lRKqU5twN6/wgdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="98087201"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2024 05:02:06 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 18 Dec 2024 05:02:06 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 18 Dec 2024 05:02:06 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 18 Dec 2024 05:02:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HJ0OeGZfMCTMkyVKhy55kz/5akLkjvVr4c74JxhAMaOo2q8egWXoduQ95ZrpBffe9alX74B045T0rBo35d9XcHXE2BRv4V51k0Mvjwz3w14k6Q1qWnIWD4r+bQNlcBlgjLFb3rbbRLuvqws0oChmjcE60r1wznUbw4Qp7ag80nUhXnQfU9h6GL7KztKqoCrQ75y8jDYePx+JBpyvirNhbCASSM38sCpTSspW9ej25pdSYrehzgSx6WWdJWitrOYvVw2O3yZKqKsPX26L2BzrxhxIR0Z6dHoUSr792489k9z1mwADd+gZaEEnrsxqE+qsvZTFpa/UM4nVoVt0h9l/Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=chsWLkttBunFTqrIaC8sdtVn8Fsh+h4Sp64OidrBf2I=;
 b=EJiLfsS/qtIgPCERp1jLdbL3UdMTo1l780hfnalAtR9OPJyDXDWR6+PecWiZyH8fmtJZBLOp+WmRPRlaMUcelRyAZUY3HK7MmuDCufATkpSYf2xnyv2gVlx0rH+xSm24wwhdASc/sIMNqo9IVuv4b1FZdbNsQMML5TwORQ/GCDXKmRxZinAw51XIYo2GRxylwQNTVKHvhVolY142tghfCChPFWwRp+nu28VGeAHeUz/OETNZ2WH3xCkCm7ItHtzWBkxeeIetPvmPuJLJUl7SxdJEP1Tl2cY1v5Qt625xs9TkGbFp8qBV3KJuMSIcddHl2qCvU4JdyY2Jn2w1tLnFxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by IA1PR11MB7941.namprd11.prod.outlook.com (2603:10b6:208:3ff::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Wed, 18 Dec
 2024 13:02:01 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%3]) with mapi id 15.20.8251.015; Wed, 18 Dec 2024
 13:02:01 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Wegrzyn, Stefan" <stefan.wegrzyn@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v12 5/8] ixgbe: Add support
 for EEPROM dump in E610 device
Thread-Index: AQHbRvIxNb37sortCEyrt5C9gW3nP7LsDAEA
Date: Wed, 18 Dec 2024 13:02:01 +0000
Message-ID: <PH8PR11MB796551EADAB3F66A05CD6CD8F7052@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20241205084450.4651-1-piotr.kwapulinski@intel.com>
 <20241205084450.4651-6-piotr.kwapulinski@intel.com>
In-Reply-To: <20241205084450.4651-6-piotr.kwapulinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|IA1PR11MB7941:EE_
x-ms-office365-filtering-correlation-id: dac2a7af-dfd6-48aa-6b58-08dd1f6429ec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?zRifLAZQPgTvF8q0EqHSl8xAf+LS78GOYM9/ynrAEAnBH1dZ2O1wiQkpP1Fu?=
 =?us-ascii?Q?qx5JBX+Q3ifL/J2aV6aIlUkzIOQ8KJotAc9PBtYvFQs/ZYGZnvxckcDlMJbt?=
 =?us-ascii?Q?E8cVvi4jsCF5b+HfHxcclF+0L+2ys4kJ/CXsIIp5P4T0RnlDCtXE0F/fVXCw?=
 =?us-ascii?Q?b6+3nUduIoJ1Iq69Q+hiBLlGa0KUdoytzD7Gk8RMInVU1A7j2eNCfj107Hn9?=
 =?us-ascii?Q?nJOgkM6GZLKoHHfua0NrAA/Yur/WSucd4RWN9Ovb44LXzZgmx79ui87GRWrZ?=
 =?us-ascii?Q?tLyO7FsVt2x8Fl/lZuyMNGzcGpItXZmDIONGq4sJqplTvTYQHDdIzIdSfcb0?=
 =?us-ascii?Q?tSO5BJTSTzx8gbE9WpzL94lUpV8zHzU0syI8Nu9D6PBHUSrF8nx7hR99Jnpj?=
 =?us-ascii?Q?cync/RBQ7Zaz54z93Ej3u+8qGN0OmyHPO1sn87hqUAVsZ7uenSl1ads3Aayw?=
 =?us-ascii?Q?CK2/7YIuMx7TKaaDfjMgxji/6+JSgQv8yjimo4Tks1HCWuKzCLW4dRk4dqNA?=
 =?us-ascii?Q?/ZqdViKTbvqGYHowaGvnuQDQcZUf5P4Mlgw+G6f3ylZMl+RRW2rSioSSv7Ak?=
 =?us-ascii?Q?MT++Dc9cYVy+D8mALmomd8P+5AF4f63F+i38WyBaPed9AKnItdUGsTGqpI2O?=
 =?us-ascii?Q?aY+ZvjhTZqBfwyIDwy3pUAGzDdqh8vRs5G84nQXm7ZqOhwBGm3xN/0rAG7dL?=
 =?us-ascii?Q?pSU2ClhpbgAMGSVISBb3o3tVXXTTe+Amvpodm14Z//zTAFidc5oMRFEb2Nmg?=
 =?us-ascii?Q?2GUGXR6xSCW/QxnGNRCfbtqFI+nx4epR/y8+5wvwZ6YAb8NSAZ2Q2Dw4b5pc?=
 =?us-ascii?Q?kkHxd589rlTRbAp0cjg0pQ2oV14NgEvQfvlpgPOp1tuukAGW3Fm6Won4waqq?=
 =?us-ascii?Q?FTCmfC1HXCeJWknqa+UUuQFj+N01JOc8fOhW4EwZNWspp6fsCmtWaEVl+QY/?=
 =?us-ascii?Q?oOadDMsvkKvyFpLIYsktlMMLp2WgqxCVvIj2KaFA2OAE+dZd2Sd7BCt80sF0?=
 =?us-ascii?Q?frkBKweuTnoqYSOHHLhjs60j4MqeWGbOq3uafgkyLKOFu3JdQI84S3EVPywL?=
 =?us-ascii?Q?gFq3K71+F7sPsnfra7Cl5OTISCsCmdwvTCqI9WVBOSUzFI70e9E60kLzM8u3?=
 =?us-ascii?Q?WeMNTC4tps/ZWZQxP5DGx/GYmjRdw+dqPK4g4FoJvt8A/seGXhbLZnGQ2fOa?=
 =?us-ascii?Q?HdPFNWlHXQ0sT9ADDzPCzDgitRkaftgDKFHM2L+relXNp+SG6CAwDV3O1iMQ?=
 =?us-ascii?Q?E3UYyP/71SNSokRrJPCnjSsjKtN4OlbgIpU8ODijLuLnwOCtWqGYPSlEwMBs?=
 =?us-ascii?Q?dMTHpETNjz40znQe4nRhV4GIf7VyWKnKuwPssZqRdfUYMK0l16NVsBagCgWa?=
 =?us-ascii?Q?I6+qDbfsmzdpqr/qWUK0G7qh6kVqAB8f3nALcOisODrmH/WWf8/WfjBGTOXW?=
 =?us-ascii?Q?HmprA6P1mw/g8tVsM7R/jLOsgDOyd4PU?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yeBhEFqhwbyFApHGMkRNCJzsJGjHtVfsnal11u6X2AfDm4vTB7Rb4YNOsUJB?=
 =?us-ascii?Q?mjem6l0hem7IP+ey8IKHUxBvN9jx30DqlL2zlf6nyYX3bH/QU+fTXs5+okRD?=
 =?us-ascii?Q?/udoQ0fpGrwTVhQRRDc/ahhTx1DB4kUabKK5KNi6JaQwQxBiT2ZPOEkkQ+kx?=
 =?us-ascii?Q?Y1DI4IdR3wXe5mSbtvnwKzf7megT4OZEyD/p+eXuefwFMXueJeU9B/6QE6rI?=
 =?us-ascii?Q?YzLZnZfvEnwL1BK1HMEQsILxrx4m/5OXE+k2FA94dzi0LlLdfmrOJo0qP0xF?=
 =?us-ascii?Q?MgDHLHHMYj5/LSEzNOIPIKg+oxQAYwP6bn8Q4mK8xKBNeUbLUx5qYRmiVV3w?=
 =?us-ascii?Q?6LlqKYEDSAx8keGjm1Nr+6isz4FlJCDN7z2xVFKV+ki8dTLpqzufk6cJBed8?=
 =?us-ascii?Q?7SyTSVCLNduegkjCWaC7WNv5yZTnei41CScWVvQsXRVLwbV9mwODPrew2Bka?=
 =?us-ascii?Q?LxClgIIVz0HWAaw0rMxJiI17N/VHH6P2lADH9XY+1YriqzkdFCOjVXJUf2Qq?=
 =?us-ascii?Q?cZbPHGkzWfHtXJAl3agcis4YBRW2V+YcmVfppBwGjmsimnMD2kMUJCTZiUjl?=
 =?us-ascii?Q?PrkAyCdXsrkihH+zQKWiEOXFlBP0bon6sppOZ69kZdOXDLRJIT1y7bbPn2Lb?=
 =?us-ascii?Q?eFSmUwtbtg/M8kptnWX72Pb6UIdA55ub6qT//tL0Y3k2z8CxGZuSi6aa/YuZ?=
 =?us-ascii?Q?yiWcnaw0jQ5FYlg7ysFFMDO0TaFJrLcEKcGtPzDZ/xIn6lqlrGOLePAbhFgb?=
 =?us-ascii?Q?rJGdOLuJO8olXmCHGDTAej2vmfncHeuQ/RovOObfSGBl890anf2qVL1P9C2h?=
 =?us-ascii?Q?JTKNltlJeIRuYYV5OXuLISTchu/3m75Y9KIj64V+ehQ7qh+KgOZz0Vj0hZHd?=
 =?us-ascii?Q?o3yqal3OGgO4qI+vPIe9+W5gpkk7sLQmZtbJelS7ZKCDsaVOMtFc+qLveE5B?=
 =?us-ascii?Q?PZHTok6vAwPB4OhUshXxnYJ1iqVzFQsjU52JXt5WNvRi4qmJSp+Fxu+dFcOJ?=
 =?us-ascii?Q?JcO82hTyqY0Oy4Dv+Uq7GPmtRn0YvtwVhrH2byZsUdKUvHMldQlXvxAdXxF1?=
 =?us-ascii?Q?mWeepQvTq/J0Ha14iogklHWqg/AECDw9BN+pFGzXM9O+BUp1HWd27pFibv13?=
 =?us-ascii?Q?i8Y7RLz+ZNzJ/pk40xyzhPLK1V+kt3uPqmHxl39+OLU7smyeHB5h6dWTkair?=
 =?us-ascii?Q?Jkxmsv88xX2Z2Er/zEzBpOnL4d3CDUo22yRJV2tiX5qA2wcnQwLlf+p8k3P9?=
 =?us-ascii?Q?0FNRo23+LbmSbzd0ZXe5BxySm5siYdNLj0GokVm6IY9Gz6RY2GZltEDGVm+0?=
 =?us-ascii?Q?3Se1IIKccse9BfjnYzvbzya3PM5SCdAIJqX7nqUZ36vc856+qzRKc0TlERKL?=
 =?us-ascii?Q?qqxuvpkVnEtGwrIOwd2TJDSr88yaOukw+wHIQl3y9PTW/MXXi88KL3lG5fIR?=
 =?us-ascii?Q?IxePXMi93lQxTrlTHJv2zYw5m3EmoZJ3VxRDXKoWgOl8QVPuX4d3C/TrsoE4?=
 =?us-ascii?Q?0MWBBLdV6FztZr3dMfCxjnCaUdv8UxlsT9tlaDB2ATXQ5/AFu6zRoDMNCEFR?=
 =?us-ascii?Q?uPKQPfMpnYGY+ljKgc9Bsj8bEOXmgOdhtozvPwWK?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dac2a7af-dfd6-48aa-6b58-08dd1f6429ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2024 13:02:01.7005 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U/l9ONV5cfdTsEpU0RdlchADd4wGi4DKiwsWQeoMW0qx8WqVbf+QSYiFWshV5yqBmQYmRwS83YxvGb13FBEX+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7941
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734526928; x=1766062928;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wyUTuZnD0p7lxLU/5XF2pfZi+Ka6eio8uwbKdS/Cvng=;
 b=dLQZTwvwfxPrGXbMpjuEx6lf99To+as84aKJI0desnJXuC8MXqDkV9pj
 zqiZxrQERxe7VqNE2fvMJrJnmlFnE4e3xKXGnrRUJqzEDWu29uDPA/nm9
 FIgG8RXxRnIEGJLP7wFh/I5ovKLOZQQBkLII3Gr67a+eb7222UVtw6gFh
 pHfH5WodkHpyuC0Mwg44POAkg6IB9pIlTb0yQvuSm3k6AjO6Msn1VXOfN
 Xzmqn1jUKMwRcxc8rTiEwP/JOphRNj3EEZZHxjogyzJnrEyXbYFr633pk
 JNxOS9ZxuTMndddjVyuggHnAL9C0e4WbyCo/T3SyCyEoW3aW+INhJc71S
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dLQZTwvw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v12 5/8] ixgbe: Add support
 for EEPROM dump in E610 device
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
> Piotr Kwapulinski
> Sent: Thursday, December 5, 2024 2:15 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>; Wegrzyn, Stefan
> <stefan.wegrzyn@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v12 5/8] ixgbe: Add support fo=
r
> EEPROM dump in E610 device
>=20
> Add low level support for EEPROM dump for the specified network device.
>=20
> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 95 +++++++++++++++++++
> drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  5 +
>  .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |  7 ++
>  3 files changed, 107 insertions(+)
>=20

Tested-by: Bharath R <bharath.r@intel.com>
