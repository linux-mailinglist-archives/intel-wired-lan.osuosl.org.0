Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4FB9C00EA
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Nov 2024 10:14:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3DB3560BE5;
	Thu,  7 Nov 2024 09:14:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ikoaMw6BLZxV; Thu,  7 Nov 2024 09:14:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57C7560BD7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730970876;
	bh=sxJawpQr4jnzl3vkEhRZ1jzlfUI19TTRsmrzk+xQK7Y=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WoznlWtM2Nw+AJx49e0QcBs7t2ig1c1dtJw+OkjZKJD+1X828qpbodzxprdTP6J3R
	 zp0T/M+uJG7IOTrli8QvKC+KRXvXCgsTE1/F6aVCEI+DeLBjE1cJGgM306z3iNgWz9
	 AhzMFgr7SLTGxGBuI/3x063WXmEWPvGBzKh6RNVYbfV68lSO6ZsEPSdNfEGreYmhnB
	 hrJiKRtAbAD041wRcIdQDHSFwSY8KcTQRoy5BLs0cBrjFySjG64RTWxb8jqPQgEKS9
	 E4cQ0uZ66gykWy9NApCjD4310i6/LLWy7NCP8wDEtz8oG60crlFc+mCLgCBnAvkSFR
	 JxFeuqHRSfWMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57C7560BD7;
	Thu,  7 Nov 2024 09:14:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6A4753B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 09:14:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4BA1F80A58
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 09:14:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rkzteZEODr7p for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Nov 2024 09:14:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5020780A5D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5020780A5D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5020780A5D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2024 09:14:33 +0000 (UTC)
X-CSE-ConnectionGUID: LDLTcLZWTfe4C9QXGEvkrg==
X-CSE-MsgGUID: XN+wuDpcQ3CNWEjnY+0HSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="18425889"
X-IronPort-AV: E=Sophos;i="6.11,265,1725346800"; d="scan'208";a="18425889"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 01:14:15 -0800
X-CSE-ConnectionGUID: JuiWTXjmS4eGxYrlJM+e2Q==
X-CSE-MsgGUID: pBKDdAHOQyWtp7yxoLuhGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,265,1725346800"; d="scan'208";a="85414601"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Nov 2024 01:14:10 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 7 Nov 2024 01:14:09 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 7 Nov 2024 01:14:09 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 7 Nov 2024 01:14:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a1rcwRIw22wTVd6cJxih6bD6CtGv2XZnRwEuU7K3QNYvfs+i5WApQeZ8CMtotLedsvJnYMIrvBCwB42Q095XI+7GSOWn+777RdKctcaIaYzLe/wL6DIzxIwQfBC++d+nj6sODEuy4/yz/1mlUa7jWtNtjnl89dcaqkdza+w+wUgmjF8sM5hENmHwrvPGMFXJyk1Z4s/SaFvVLcenC+mpJ7kwGLDJ+JzdlPT4cX5C5JbGIEe/QoV0xamM+4e1K6YQoubYQoN6oZdLDyKuu0gSCpPquGCt9icKmicAwXdNZwDDBOnlc4NJ+yXa9iuAXN7mV6OWk898M2y/YHl9imdbKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sxJawpQr4jnzl3vkEhRZ1jzlfUI19TTRsmrzk+xQK7Y=;
 b=SX7Kct6mn5VaCJEekFXyxSmSwf8GMP/bgcoXzEaI7dFXtlxcevV86jaOsCJKL71TA8U/vA7ejQo6rDIMCx3WsZG7bnDbOAYWKA1lR7pboXJApqpJs+0NA3uaLAkU/7wBPGjU/dBrbL3jAqJQH8Sab9o1HcsIxMgVmxjg86eaizZHSQXkaeTFql5UeDPdhKz64dKT7lsb2+lPJAAPwfGSgcJJxcqrl9T4yEH9iKJLKnkdpWpwD+u2sqIu6WytrhWZVcrPxLHU8zGM/GWbWek6T9xn/CX0ELAL+ZdmfV2DCLWao7+ExKNKllA+IENA2/5qjXdFJaQkloX1B29M5ux/EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB4664.namprd11.prod.outlook.com (2603:10b6:208:26e::24)
 by LV2PR11MB6046.namprd11.prod.outlook.com (2603:10b6:408:17a::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.19; Thu, 7 Nov
 2024 09:14:06 +0000
Received: from MN2PR11MB4664.namprd11.prod.outlook.com
 ([fe80::85d0:c2bd:72cd:dcb7]) by MN2PR11MB4664.namprd11.prod.outlook.com
 ([fe80::85d0:c2bd:72cd:dcb7%6]) with mapi id 15.20.8137.018; Thu, 7 Nov 2024
 09:14:06 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Andrew Lunn <andrew@lunn.ch>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 1/2] ptp: add control over
 HW timestamp latch point
Thread-Index: AQHbL+kBdxMULec3CUCOhZKxJSm9MrKqh3cAgAEAEJA=
Date: Thu, 7 Nov 2024 09:14:06 +0000
Message-ID: <MN2PR11MB466499CCAF0540D25A5DF7689B5C2@MN2PR11MB4664.namprd11.prod.outlook.com>
References: <20241106010756.1588973-1-arkadiusz.kubalewski@intel.com>
 <20241106010756.1588973-2-arkadiusz.kubalewski@intel.com>
 <d20d8265-4263-4408-8448-4338a268d537@lunn.ch>
In-Reply-To: <d20d8265-4263-4408-8448-4338a268d537@lunn.ch>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB4664:EE_|LV2PR11MB6046:EE_
x-ms-office365-filtering-correlation-id: 8ffce732-46a5-446f-9937-08dcff0c87d6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?xqikkd26hjjqz94HEZQ0SDEZTSEpcPfu88LfpRFy7gpfMN70SczRjyhPoVfo?=
 =?us-ascii?Q?2Ksc8MDGfBsktYC64vyhiePSBV8lNG0s4exntU1rhi+XvR0wzvJK7/TNxm4y?=
 =?us-ascii?Q?DBOUqeb6pXRckyqUgI7RmAMCH2N/f7EOwCeJM0vfarI9A2iIxST2ynQUe5yz?=
 =?us-ascii?Q?+4T8gONNXnPsLI1p3fYUghbqKlZUsQZybsym2BHclVzyTpeaenrg5IXBd9pT?=
 =?us-ascii?Q?hU67XV/EsTvUBYRv6HF2mLIxLr9kcIiaAKTiTObGKYXfkjf7sSayW1COQo3/?=
 =?us-ascii?Q?i/obk865+O+XTXJWic2eZpO1krRUrM8b6L8zI2dit7zJX8cjPICBj29gYXbK?=
 =?us-ascii?Q?JgxNUJPeno2iUlMz7Ydv2kRGfLvPr2kRkP8KmloqWyuC85ypeclRexaupWZn?=
 =?us-ascii?Q?elKOqHM9x8eKI7lRH2a71FBFN8pJ8Q9UvzRz9JKC/P1rjGXbGliTEEGhSEl0?=
 =?us-ascii?Q?JAU9Qd9Y16tdZ4PvqsjmNMikxCSa01t8yTRi2WBr6kcERhBUqvfz84VQJ3EY?=
 =?us-ascii?Q?lGOjgMQ6Vjo8uqc5sfasq0TvqIgxfCZQmqlPybS5n4ZmGLCIntzeP8XbL5pC?=
 =?us-ascii?Q?G85BZpnVYf+PATs4hFrF2WmwBjRoBKOr8CImVlZ112zlx32ZkcRaHPCFDrcU?=
 =?us-ascii?Q?9bVIsG69Nc9jrKWYImE8YVIZ6sfq+dIIjSYVBvV5YFFTPuDFH3q/Ly25l2Ra?=
 =?us-ascii?Q?oTon8ulb0/OHFL7q2tT10ZiTxlStsEIrNNbMiG+qFkr5B1mx5UWvOLvZpa1w?=
 =?us-ascii?Q?Gx/cP/f0+hElWuNK5tCtSW/7kYd0Gd4/vZ3U+qPXk4o2QUWEwNMddIUwLqCA?=
 =?us-ascii?Q?Khfciwzi/4yIJAIQnBqSb+E4r2clLIefDepKkTYGbg3jur4ZE4e3aK+VaywS?=
 =?us-ascii?Q?eGCkofJUYH4z3hLAYKBKuC8Dss/6DI0rL06N97W/Jk/jTPpXsLgJO+h+fEBd?=
 =?us-ascii?Q?wKvRASDYOl4AtI2uBSCB/Dr1EWpzDy+X1zT9RRFrSzBoftdjV5cjut8dgSR3?=
 =?us-ascii?Q?hANctet7o8WbC0pze0D/CTsLiCkRJTSa+yiGJY7WHhmxdRKZc8guEJ6PksCw?=
 =?us-ascii?Q?RqCTrsGlrNDbreQzylTUKpV4azonPhIF+exsirdyD/OdhZZSEMCwWIx67iOi?=
 =?us-ascii?Q?EwDYmeAkp1ZB4hyXyNLLMpuaIJcUv2HORDU32/1rMqrTre5GsmhK7VAUo8lt?=
 =?us-ascii?Q?TW/05vieuLv6vSWlZQQRXzfHCW1uOGP9v8VHY8Z1bkaGBLGLWh/dkAHxFsJa?=
 =?us-ascii?Q?gaRbJmSvoJuvP983uK/0eTYa6iCeVZXeBTxdeNgvaJliXbK3BWIECPM16rpS?=
 =?us-ascii?Q?FQjySp20T+zBTc2HsmxMsQnevnlObsMuu4lJ/CEUtO0uhx8KgdpSak+/tF3o?=
 =?us-ascii?Q?ILLkxFY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4664.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TWnIWKijPOOsbn0iLgCLC/ZefQH4RtEGaSzqFqCuo0MZCzUdkH5Gxc3i4sic?=
 =?us-ascii?Q?VOLOER1XmvOuI0NtO7kl4yLy+X/rj67b8wVWbnDcXJUUI4IllzvxTocEvWko?=
 =?us-ascii?Q?CfVy4vqk8koHkhBuKsxBzz8LMrpkQP6zG/LvZTss0XjlpGmXCZjY0xwGMbiE?=
 =?us-ascii?Q?99Wr/JVzE0oBxl1NR2dTT8NwBPYnv7h91i2Ko5ZpaMLL9OSQMFZtSrzM0Q4/?=
 =?us-ascii?Q?kKQtjeyBa314Gd833tLZRrALJWbferaucVTWMelbpmiVpgdyMkbOceAConio?=
 =?us-ascii?Q?pGR7dJDoV5azKscSDv8Z2/YaP8/dGdcnkm4phcyrkASf5KS9BXoBqp4c5fqp?=
 =?us-ascii?Q?6FFreqTt9wIYtgljV57RAWCgY7Ad3LzUfsdieKb0Z2eeYxix7Px74zDg0gu1?=
 =?us-ascii?Q?aI0cRLSJKm6/Fs625721pfGz6fvqpiZ+E85kTjhGbkFJOrkyJqsZqTQl8SY9?=
 =?us-ascii?Q?GUjd9DZkfGrxvvUw8RS2mSBAijXY8rkN//fwLu0yT9yQR5n0d7RmyHKdUZ00?=
 =?us-ascii?Q?Rp12aoACztlzfPvJU234I55A2PALTZ5xsTYDc0Rup9DLW1xtMmlTsdIyCNNG?=
 =?us-ascii?Q?lfmykAMtLN3UMX0mVozoZ7O996mtprssBlbbPxiCjHRfcFB50An36MuOwTEW?=
 =?us-ascii?Q?pEPm0ZlIq0yoIIgKnuaWuSI2mZGwS4tV9slC7/kPBXmp/WkZvG2EKyg4bcoj?=
 =?us-ascii?Q?OtbU/F1xxKQ6Zf4pzoYSzGibfK7kcLFZPTZEkD6hOg9MHrS4BjBNgTK0mCwB?=
 =?us-ascii?Q?T5+vUOrC6xDB5uZ44ZrOjY3+l6xE1icpLH16P5Z+WknLHgtf3jKpm29DDTGO?=
 =?us-ascii?Q?RgKFX/WGuTMEFjw5kC5EHJuXdvYGBCKi2ci787HCa7xwz53bcJ1oyBR7MYdV?=
 =?us-ascii?Q?PMvr3qs0ySzmcrzocHcAXiGsiYXj7mjYPyaxk2GTPMPwlwoOc+iaOBrjFMNY?=
 =?us-ascii?Q?ppZigCr+HoDfoTbVot0I35kKDkkTzg70FvJl1ERZz2WmtoS8zsuW+dKhFAQP?=
 =?us-ascii?Q?jCxmsoaV/8Jz1b4Y3Wiiebrv63dR6pB7GEsX5H8L0cIxZpjgVsJy7ekxEvCv?=
 =?us-ascii?Q?F7Vf/gsZDiXWl/417eJ6i0PJtZYRBGaF/WqVIxIAAiAF9W+iP72CGOx8Q13N?=
 =?us-ascii?Q?UfePI6OBjkfHGi6WazRBU78ZgGHQ6OolK6CKuLdSbFMxAGz+pMaQgwfpZEO+?=
 =?us-ascii?Q?KBoG687sNZAg7WV160T1bVIjPtuPetNT1rHapDI3irj/kC8ludIpyw1M6q3/?=
 =?us-ascii?Q?0fnBo5t2b/cTPjhAfGE4ZplNdZfQ6dDDToALsKUnolWfMfv3xb9rfDIJEex9?=
 =?us-ascii?Q?37SU+ZVeIMj//sKUaXP6NbzsQHlO6U8tKtWcog2UTl2TrMcig50yelpoT0iW?=
 =?us-ascii?Q?9ujHpmVfvM8KKF7UdzyrIl7pp0ogr5bO6MQq25MElAHTbtz25nl2aMR5loI9?=
 =?us-ascii?Q?u+HhzIGXMBMIyRrFBtU5X/gjJO0ao+kLGgw+0yh0NVmPRwFuJ/k3pGx0J+gl?=
 =?us-ascii?Q?S0ViwqX6JaVIgbAfTvBtxe9QhgEzpzlgU2DLLlw1+miAJPJFFLerDxKivbQs?=
 =?us-ascii?Q?UTqXKzowACFWUyf0P28Qb5yVz2Vturtah72sqfI00n5+k0s04fco3xg4T4M8?=
 =?us-ascii?Q?BA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4664.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ffce732-46a5-446f-9937-08dcff0c87d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2024 09:14:06.2931 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eVpuFEIXS5QdxN8R4bAA0MpfxmF36U/rLWx9iZjUm/ARSr7NhKDF2aMd8SQXXTE6mYnQh3moPvVzEdKYRHz7/f0awK1lnByppDRLOVqsNVE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6046
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730970873; x=1762506873;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n7oS6BXYl70xJ6Eyas9znhpifI8kaBw4enTy9ErpmkY=;
 b=PeNrwX4Su9cWJRIdkTqNCh28UTdPx3Pw7hOPGpDy+s8F3jp/qU0Is7Tk
 Ov0baPiQM069/BN5kEkra/efKhofZf/pM2+EHECgg/KleBnj21J9KqCie
 VLRxachlL1bJGR6C/Fgl4yPouky7V2WobOEydtgs3s1tR6OnoIvH8ZjG9
 G2+1Bvc8h+qi37sr10O14Ejz4u1GdWEq0hCAXB6Lg37uNHVzhVQCcWkp/
 Coyd524SeJ/LiWnR+g8CbNJibz1qQp+T5UCRZB237dBS4Wjya36jlNpiI
 sGx8nm1EYaNin+HNoXtoPp5d3XmhlN6M4d4DrgD8bjcgLcVHIgjDyNO/f
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PeNrwX4S
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/2] ptp: add control over
 HW timestamp latch point
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

>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Andrew Lunn
>Sent: Wednesday, November 6, 2024 6:45 PM
>
>On Wed, Nov 06, 2024 at 02:07:55AM +0100, Arkadiusz Kubalewski wrote:
>> Currently HW support of ptp/timesync solutions in network PHY chips can
>>be
>> implemented with two different approaches, the timestamp maybe latched
>> either at the beginning or after the Start of Frame Delimiter (SFD) [1].
>>
>> Allow ptp device drivers to provide user with control over the HW
>> timestamp latch point with ptp sysfs ABI. Provide a new file under sysfs
>> ptp device (/sys/class/ptp/ptp<N>/ts_point). The file is available for
>>the
>> user, if the device driver implements at least one of newly provided
>> callbacks. If the file is not provided the user shall find a PHY
>>timestamp
>> latch point within the HW vendor specification.
>>
>> The file is designed for root user/group access only, as the read for
>> regular user could impact performance of the ptp device.
>>
>> Usage, examples:
>>
>> ** Obtain current state:
>> $ cat /sys/class/ptp/ptp<N>/ts_point
>> Command returns enum/integer:
>> * 1 - timestamp latched by PHY at the beginning of SFD,
>> * 2 - timestamp latched by PHY after the SFD,
>> * None - callback returns error to the user.
>
>-EOPNOTSUPP would be more conventional, not None.
>

Sure, I can change it if new version is needed (Kuba's other thread on this=
)

>>
>> ** Configure timestamp latch point at the beginning of SFD:
>> $ echo 1 > /sys/class/ptp/ptp<N>/ts_point
>>
>> ** Configure timestamp latch point after the SFD:
>> $ echo 2 > /sys/class/ptp/ptp<N>/ts_point
>
>and i assume these also return -EOPNOTSUPP if it is not supported.
>
>And a dumb question, why should i care where the latch point is? Why
>would i want to change it? Richard always says that you cannot trust
>the kernel to have the same latency from kernel to kernel version
>because driver developers like to tweak the latency, invalidating all
>measurements the user has done when setting up their ptp4l
>daemon. This just seems like yet another way to break my ptp4l
>configuration.
>
>	Andrew

Well, making control knob available to the users.

The explanation/rationale/problem statement is available under provided
Link, and patch allows part of IEEE 802_3cx standard to be controlled.

Thank you!
Arkadiusz
