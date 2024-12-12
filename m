Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 92AEA9EFE02
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Dec 2024 22:11:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3D5BD61416;
	Thu, 12 Dec 2024 21:11:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ohC6h-LrODOS; Thu, 12 Dec 2024 21:11:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E3736140B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734037892;
	bh=d1xamrCsaYGjuRuWFhS1p+zx0/yBZ0nrK6UBPxmklhc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MnvXrgBH5JaZX62GvjHv9javn0RtJ3G4ZtU3dwnclRzoD4Pgt4dPeipm+ik2Bc4NE
	 +dnlF2PJxVN9sPixJg5ZyZJbSENIAoaJK73zXagbqmxDhkfEcs9EA7rySBX4T5HtD7
	 HHIMY/B5VjeG9Voe1K7knO1xwAKeRuro/XAj+UEoJWUbEEHi0cRxjWnyBRcpB4PzuS
	 7NA1vWbO+KuWXs1ZKJ47xc+QSLJgFMuKOtWMhRYDQFdvfrqFfQ1jTxfM4+tWDrcouz
	 oybadZVDgJIP6J+33qD3DyCtN0qhW9g8ko3KgO8+Mo0/To+QM8YaNqUSYj8kta78iX
	 wcn5wj0xte5/w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E3736140B;
	Thu, 12 Dec 2024 21:11:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 18ADB75
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 21:11:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E9B42845B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 21:11:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DS1W3Kn9H2tG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2024 21:11:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 26864845CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 26864845CC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 26864845CC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 21:11:28 +0000 (UTC)
X-CSE-ConnectionGUID: DcQCLndCSpe2+nEAXyqaDA==
X-CSE-MsgGUID: RYhl5zzSS8O/Jb+GAvpv9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="45490964"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="45490964"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 13:11:19 -0800
X-CSE-ConnectionGUID: 21XVNgXQTh2KB0PLKBpZeA==
X-CSE-MsgGUID: WyejJlKSR3u5IvnzgSDrrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="100505657"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Dec 2024 13:11:19 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 12 Dec 2024 13:11:12 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 12 Dec 2024 13:11:12 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Dec 2024 13:11:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qk0fbbdZ8PctzNuv7JbypA0VMJ9CyxQtj4960ilNnWlnF2h+b75EA6svwmRog2Ce9bm5Sa3ZMOd42rCWvLJMIXLpIhttxafWI+WIiCpQyCYA0BUJMWDJSFj+Qn4Si+T20LD8UnMAbK3B0bW3H0lUYIw4rXP5rneUT9JxG+X7Z9B5C/KdCM6o1sFCIMFS3napH/A1NDdxcE1iHSLQoJ9b4myeszitWKpwkJM2r1NtzEQmkX8DYvgGW+f0KhbV9+pCuf2gqfIAnnFTGyEtX00J95r1v0JALD6v9xCemidgUrN+Up0IGjqn3OmPJNPKpv4r1xPC3a/sQvlZtsFRNt+Mpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d1xamrCsaYGjuRuWFhS1p+zx0/yBZ0nrK6UBPxmklhc=;
 b=CpfoKB3vG0fwBADt35ltyZTrCuObvAgDzv71WH/+mhzWt5VtQP8XwO8TaOa+poxh593HsPjSJb+rhplHDrOc6F4IZ+QfdKzwjyne/4y5M4ioKAAKOyTSHvMYd6w09pbi7d+aurM3XizLVmvINThocrhKtKQBLK6RF4v1XIesCg9c06KVQ5ZKTQBKpNo+m5khIAnuNXCUnC6L26H7D650yzHWZRccjw02U68RUziTXqNvDS+O0TFUESTn7BVI1U1t/YuFcv/MeCNGEYdp4SUWzn2Ukl5qABbgNJ80VzFREn1Xz/JFcDNHOGm/hALtdInWtRX/k9H7D+2l6R4xTt+ulQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.18; Thu, 12 Dec
 2024 21:11:08 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2%6]) with mapi id 15.20.8251.015; Thu, 12 Dec 2024
 21:11:08 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Hay, Joshua A"
 <joshua.a.hay@intel.com>
Thread-Topic: [Intel-wired-lan][PATCH iwl-net 1/2] idpf: add support for SW
 triggered interrupts
Thread-Index: AQHbP5URyAE2kBIoB02PYltefykSt7LjM0tA
Date: Thu, 12 Dec 2024 21:11:08 +0000
Message-ID: <MW4PR11MB59119B127978DF2D89145996BA3F2@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20241125235855.64850-1-joshua.a.hay@intel.com>
 <20241125235855.64850-2-joshua.a.hay@intel.com>
In-Reply-To: <20241125235855.64850-2-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|SJ0PR11MB5866:EE_
x-ms-office365-filtering-correlation-id: 1419515a-005a-47bd-c6a4-08dd1af17f87
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?hKOLkoXyaPQz7mXgde00RKHzywnbuVsdVhEFDpEsEXYlLIYZ2bTAWKgMdLM1?=
 =?us-ascii?Q?yZtDaMKQRefSmtGjd+SJ4jFFwkWFBxH82HLpuOdiCZpFEt75JjOJ8M4NXuoB?=
 =?us-ascii?Q?Qg/G5LrS+IXgI6rquTEuDE04tu6n7AXxkjFA3xcH18Iiuz2q0zETZHJOmTl8?=
 =?us-ascii?Q?ojBMU9uOzw6hPrjcA3G/3UYksB5fZvmHvgGYA0KyUkVOqbzD3Z3c2rQIeFBr?=
 =?us-ascii?Q?TUHWF+dqGluoyO0EF2E5zK9rCuxpYRQ05WmMeHM4qWrX5EKqciJtUOMbV4Zk?=
 =?us-ascii?Q?QJX/reEvrj5U4GFbcBMNmcY1TVMZlALPuschx/8mJUrdq3fksj6g49nWCPce?=
 =?us-ascii?Q?tg6BIUHTDaRVw5+Byqss/Hd5R6Y5+EY7exhwgeneAuH/4On+/k18JBWdZKuk?=
 =?us-ascii?Q?o0+K3wn0URhFL8/LtmdQa+lVj0ZozsdDf/o19B18yzPdKR5YHhfFB4qp7Ms9?=
 =?us-ascii?Q?W7iH7696zPXmq1zEw2gMCJjOgCRFojPqRhoqaH0rkF/9RtizsWNoTah2XOOI?=
 =?us-ascii?Q?pqRv+Off1jSxH8HN7N7q6Zb51UeAXEax0MUxzM91yHTsk3bF/ls/KCbrFEQt?=
 =?us-ascii?Q?OETb5oGHsB8Em6MzGmWlkkbzcrkY7GGGWGjQ4cpsNh/R/iwmqtf1bX/aRrdo?=
 =?us-ascii?Q?VG9G6jh470a9wCT3+aW1vc6GmQ4TvwxTBFkGfYQy58lhU0HQQF1K8k+qqH2M?=
 =?us-ascii?Q?x4m3/2xSMlkuPrtc9DvPS3Y2XeS10Fc0pGdBziAAvyJEzMEabyl5FPuDDJsG?=
 =?us-ascii?Q?RzOspKXshexbK7XU4QaauV5yqa47oMZTZ2FjZ7t0Vw3KrLye3OVxpuymWI9q?=
 =?us-ascii?Q?k6/TaihDv+qvo769MCbaYlBZj27dTw2CKEXFY18DVxv+/Kg3/qwVzb4bv9ay?=
 =?us-ascii?Q?6PmMLDLOtdRzfHxy0ys4x9SVZVnc6cz+ZuvTk6AQ5kkdTZnBBHKdc3Ka+dX0?=
 =?us-ascii?Q?IKiHAthdEgpicKMYOvjlTEblAJ2gnbWHBsXrEwMQ5F2o6rpJH3ADfdXjk/Cm?=
 =?us-ascii?Q?1vNIQoFiCYwpomtEqD6hZ4Az/vBssG0cQcj/VVbkTMoA226QMNQYMUYuqj5i?=
 =?us-ascii?Q?pXLU2ER8S9zxqkl4dHaUvoZAJMlYMXeiIEnGKE9KGX6ggeKtC1VjZaLt0e0M?=
 =?us-ascii?Q?vZO7DBBjPKuLiVRCcTO7OaqvokPrEjsn+aXsiWg1rIzVrwrGHa5TFOL8YJ98?=
 =?us-ascii?Q?1ETqjYeTS+C3f4iHKB6xhS1pvg5g9wzcqGL5e0Ddn7eS1lM8K7oixZGB3gQH?=
 =?us-ascii?Q?tbmtwPWk6DoPqNGZoc9pDbyLbhIeg0xJHUj6V2tIsHcclVizqGnu9wqkDgLR?=
 =?us-ascii?Q?bqzRJzzVZMTx/kriJZI9LuBE0XHc3+7wdx7mJQxVjZh5Ak9chqFZzz56jOVM?=
 =?us-ascii?Q?/zmu48F7NNYOleENghcx/7v7W3nI/RG/RBNVHEDcbivTymJCPw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zsTRA5No4RhbSDoJfIt2uhOSul0SkMsLWoXo7ju//HU9s8Y45KJ2F2erIBRa?=
 =?us-ascii?Q?iiBK4OJbKHbjrdci7urNRnNv1SjALYOiVERApWiYit+Voex1tWc3oo5MuxLw?=
 =?us-ascii?Q?aO6KaqZPZMNrzC6Wi9aKNAu5Nns40HxyXwQi9FoCi9cGty/EFJTJGqJK7P3O?=
 =?us-ascii?Q?lKrs/frT2InVeWK3OXUbwI7cUf54RHmaKvb3ae1uFuQQ5y0d1lSSf149i9St?=
 =?us-ascii?Q?6yRGOrAnhfyqVGD4q1ULSyFFB+GFz7qlXiAyhkfbPRaA+7bCEC0ul5odB3JW?=
 =?us-ascii?Q?QaZilCwznUY+3wiV9J2XF4IneYqV1bkwvTYiOIEHvAYxqu0ppoSsIa+ULqA2?=
 =?us-ascii?Q?0rhI2SDaLOwFXCNUhC787xLI2kxPbcdqSU4nfhvpwGE0FMeW2eRahY8wqQeT?=
 =?us-ascii?Q?Jssa9A1Vi3vWC7lrNpdPx3s0eu6pAKyxiBv/LOqeuq9x00Pzj5cL7K4vw72N?=
 =?us-ascii?Q?QD2YXK0bNrSf+SZ/Kn5h20HZHNIU3OSuscLru2lTY0yP5flbl1x6r5czYF15?=
 =?us-ascii?Q?uOkmrwjWXN1GBbPl+MAknSV2bfJP+gnoNaRzuD9qdoxDX98J8kx74VZwiW+9?=
 =?us-ascii?Q?e/wTt5IqTnYhpr7awLBS29JcRzA2XiFIxcfOnaf6TsTA3cmWU85Cm2UACAtS?=
 =?us-ascii?Q?BrVhp1MXtQypJ0SHMwu5eFv/S1S0WGQKkRGo0oHfuUP3GE0YqqPyJ1C4vKa0?=
 =?us-ascii?Q?+cjjhpd+9gQVVyMVCRTVdtJ0JiXv3WHvExxP06iE/7aQa/qrY1BxFi2BYvjD?=
 =?us-ascii?Q?ZuPXltm4F6ZRcUQ6hVBH8mVjyJ42iFXUrvKf6Hcl/r1GGUE+v98SuLQHra1a?=
 =?us-ascii?Q?h2ww3uCeCrhKTxQLqz8FOIx8Sbyy0zyiavg/uScjCQbhu08cJGX/G42ZgkZT?=
 =?us-ascii?Q?qRuidOECAnV3uP1EH2NwgMAWP9Dw55+OrYNbxCBcE6WAs8ad+hFdqyykMe01?=
 =?us-ascii?Q?Wm+pdJ32rddrwOYSEEgpp7kPXPfrx1CxUFVBQ2wfHV+24yflPCs1s0Evve1X?=
 =?us-ascii?Q?E1w6XpRx9GVCViFCXiUS7Ez9Lch6NQAK1Fku3BznZnoTa1IqvNpluhWlLtBh?=
 =?us-ascii?Q?dJzQrhAX0FUXnhYYY+DtU5to28Qsnyec4mRS3FLKHT2mFB5qxHO3wg1XZ39d?=
 =?us-ascii?Q?B1B9HsiwYRfpe/NeJO/fBCxq3F3mLl/Sh6Qp9bgM/QYy2w9fU3jUU72iU1rs?=
 =?us-ascii?Q?gONrkRIIFZF0ebpupyF7K96N0sgvMX3qIvQUfxtRYkH4+LLY6mc5F1gSToEG?=
 =?us-ascii?Q?KHUojKowjr78gwaGcl8DR9udfSu5BaZnZwmRBXC4tfoMQrGd0yc3NVz7yZn+?=
 =?us-ascii?Q?IYKzZicPT//T/FZdSP1Izv3p4dDzdEZWKn7w0xgblKwdo+dJX8vwOJlmYO7H?=
 =?us-ascii?Q?M7y1JUnk6sAUSBT0n9Oc/n91lcqx+PX+pufwtQu41ewhfc5uMIDGboxwiYr0?=
 =?us-ascii?Q?95HZpkEDS0gQytvmZNTB55s/qA4wvVg7JmQg7sLtZAaYpAdmacTXZ6NZw1jU?=
 =?us-ascii?Q?4+r0M0iLzP0RAJpfWtfHU+vgRsiQXBMOeQ+OzoTizqd+vwFApZ29EkyZrKCA?=
 =?us-ascii?Q?32jtAmwBUdq8e0oStaMKDMMgakLZ5ON5M8PVUHii?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1419515a-005a-47bd-c6a4-08dd1af17f87
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2024 21:11:08.5176 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nfx70iQlrdIq7rKIozw0bzvujB874MBBMkXxznJjVrMC+uhsTeXcnxtQdlx/lqGVXqWSzhDjUerG7u+vFrNfuiZDBVmFyNPL4fbadmSIxtA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5866
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734037889; x=1765573889;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cHhd4gEqrrxTbthVldmUjiFpSE8WIG3liiSHIwI+mDo=;
 b=DqvIe4seeF2LYtpEMTDoa9QEOAj6eFhJnqVupIKj5SLNkaUK/44ctllB
 Yy7HMIBEYHQ23ckUJJZFm03AxtawAG/4v47m/EHu1qLgMy8FYNI+FBSlc
 ImwrHxxOGS82spE4A4773pGQOAW66v5cRFPW4asWsJ+m9PIWcn+2UVIhP
 1A3gx3+1HuwA//+448xj4mbrM3I5jcyNn9Kx/61lOd6wwGnKPGh/9nxk1
 odCoreymV+oANd+tYjL9N+9nCsxOy5M5kiqlP1KIzgz981g21wysXw34x
 aIZ/g5Itok63bn/R8wnqBHbO8byR34NlPv7R4cKIaDtaeEek4ZC5MqV6L
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DqvIe4se
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] idpf: add support for SW
 triggered interrupts
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
> From: Joshua Hay <joshua.a.hay@intel.com>
> Sent: Monday, November 25, 2024 3:59 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Kubiak, Michal
> <michal.kubiak@intel.com>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Chittim, Madhu
> <madhu.chittim@intel.com>; netdev@vger.kernel.org; Hay, Joshua A
> <joshua.a.hay@intel.com>
> Subject: [Intel-wired-lan][PATCH iwl-net 1/2] idpf: add support for SW
> triggered interrupts
>=20
> SW triggered interrupts are guaranteed to fire after their timer
> expires, unlike Tx and Rx interrupts which will only fire after the
> timer expires _and_ a descriptor write back is available to be processed
> by the driver.
>=20
> Add the necessary fields, defines, and initializations to enable a SW
> triggered interrupt in the vector's dyn_ctl register.
>=20
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_dev.c    | 3 +++
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 8 +++++++-
>  drivers/net/ethernet/intel/idpf/idpf_vf_dev.c | 3 +++
>  3 files changed, 13 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_dev.c
> b/drivers/net/ethernet/intel/idpf/idpf_dev.c
> index 6c913a703df6..41e4bd49402a 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_dev.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_dev.c

Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>
