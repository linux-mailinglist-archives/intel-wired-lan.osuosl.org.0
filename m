Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCFBBF0900
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Oct 2025 12:34:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CECBE41952;
	Mon, 20 Oct 2025 10:34:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3IYi1Zn2Qnnt; Mon, 20 Oct 2025 10:34:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 028334195A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760956496;
	bh=SudeWWE/nLW3ckOu9tNP8VTMZjIwsSCu5/Xr/YwFrDc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=h+OV4bZQJyMCXkgGK8BwQEDJ3E5pl3RhgI4kc7GpjzVzTBf0JC/irj5r+56Q78GKr
	 3uj7AtvkeV+QUm+UYvBjXzSydzsK15j8X+wTFz2Ixrl0NsLQOWbn99xp4HKSclvroa
	 4kDa5nDUein16BfUhpq1vGND5Nm0x+rjAR/G9HXjTXncRTPPm8JfqumXeXtKTKAPcu
	 Gvldi2Pnj+J3CNdWPWsxEPebNGBlm6jIQ7rEsNFBg9vNeuwNbR1L0FeU9jW+uAU5Sq
	 Sv9qsVqt/mx+8UM6mACPmQ8bS4C4sY6+hBIuKI5hTUWxZVL3nmWUC8PDUeQGw2VIs5
	 TEMB0B0qcE30Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 028334195A;
	Mon, 20 Oct 2025 10:34:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5EDC41CD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Oct 2025 10:34:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4E754409B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Oct 2025 10:34:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k_gFJoIZK-xF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Oct 2025 10:34:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CCF574094A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CCF574094A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CCF574094A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Oct 2025 10:34:52 +0000 (UTC)
X-CSE-ConnectionGUID: 8/NEndHMTZSQLC433bK4ZA==
X-CSE-MsgGUID: 9SrhKU+ZSDqQjCT9zdAF8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="66902896"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="66902896"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 03:34:52 -0700
X-CSE-ConnectionGUID: yH+F5jhBScqq6jHOWjN8PQ==
X-CSE-MsgGUID: Iq+bpN8PRWaRoyzawm66Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,242,1754982000"; d="scan'208";a="187711084"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 03:34:51 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 20 Oct 2025 03:34:50 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 20 Oct 2025 03:34:50 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.39) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 20 Oct 2025 03:34:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RqT0FgVFa4/Bt78Ij57gFqM4SzFTOTvVs6OIu//VslBcYmhK6IVhIbN31SlvRXVftUcgr0SZv22BpfPJSV5A5GLvfwDXn0In8eIUHXRiUxp82UEv8q6NPDipjB+YuTu+zFQuwhX0TbiJy7T+vN0pVomYZsqN4ASN4s64WzFYommIxuodcHfgcdcedj9ysgmNmxq/dIbydwP/lq4Q2ENqd4WlE69ttBhONLYohZfpWxOEYDx+lsIjosc5MGbabf2mJVa3fCzctP/hEogQCx1cLu2Xu00EA7sNO3+tcrxMojZhAFW011Drl6g44+S8oZUgzatnTMoOCBxfLNKpohjuiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SudeWWE/nLW3ckOu9tNP8VTMZjIwsSCu5/Xr/YwFrDc=;
 b=QN+29w8xgcn/J92icmVzf1AnrbYqDdHSWc9oAk/rNut1ZXfP1OlmRBleppir9znnKDOa0QaP/1sDi7W6YQ/nkQ7Wz+niAAuhl3X8j3qgC8qOeSP5ae8of7FS3vyMu3R7NWuLRdqpsDaQKi4mvrps3bPi4qJq0bYZKgGAJU+9MoA+uXI/gvrGRKlRZM32avTae9omyS/bNPVwekvK/i7oBe354O7zwFvK1Pkh6oxgv0GUg8fsgLNsGreNL+PYF1x8yoExG8jVTqdEtzqka+q1YWFq4loR4t7tSlvEN0rhpnZ7rJwLzjBrKWFZzbzVIHykx9yoOSc3GTa76/L2mMi1FQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM4PR11MB6214.namprd11.prod.outlook.com (2603:10b6:8:ac::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9228.14; Mon, 20 Oct 2025 10:34:47 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9228.014; Mon, 20 Oct 2025
 10:34:47 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Guenter Roeck <linux@roeck-us.net>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] libie: depend on DEBUG_FS
 when building LIBIE_FWLOG
Thread-Index: AQHcPnMeTqpNALSE5ECPJL7Z+YBnlLTK3UTg
Date: Mon, 20 Oct 2025 10:34:47 +0000
Message-ID: <IA3PR11MB8986B8F8C2526B89F3E8FD79E5F5A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251016072940.1661485-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20251016072940.1661485-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM4PR11MB6214:EE_
x-ms-office365-filtering-correlation-id: 409d5cb1-92f8-4cdb-98cf-08de0fc44ad8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?AWm8/HoXyhkPx08LaO8q2OaY9l/rXzcchK8V9Q3wcZbI4I7mzg+DJXXB2XSF?=
 =?us-ascii?Q?OqI3h+SEsPXIHQQLxIbWFlemtoWx7PIYwobkMbrjSO+x7BGMYAJ6YXqfv0cD?=
 =?us-ascii?Q?H4uC+LoNTAc1C1XZSY7ZZ3DO+/nzqFPcyhFG0igwYvVdANppEul9UoQmHEkx?=
 =?us-ascii?Q?NTmTi4wwjHJMcR6hlftmEPPK2DGW8FnWJtNiWNYRgMBI68caugZlL5dLISWJ?=
 =?us-ascii?Q?jFgH0tgN7AWp71wWkgIVRzr85KlRNZvQzfqMNBXz3MWuVA4LgnFN8ljQHMWv?=
 =?us-ascii?Q?lylwFGQ7KliXnVh0LREPfpxod0xslY8XcNtpbkebs0cPiPZm8YBfP9sfOoyM?=
 =?us-ascii?Q?kt80/zuTdmTRKvejrPZ9dMrIbdUpMX1hCiv3C/BU7CUdfM0Doi75LfCKzfOo?=
 =?us-ascii?Q?C0RgVXZbC5psUN4M5XAH+4lAvyNvniTOYg9dnmYYgNA9F45aS8+/QMpUyp/9?=
 =?us-ascii?Q?yagObwIlUJDjKonOh9Tw9nM/p4bpXFWWvEHMb+ADuVjas9+bXeLFve3RY7i6?=
 =?us-ascii?Q?HzyKulFSsNhjvZhEMK4ZBYQbSKwpJ30QxB2U6exWlWzT/hPBupiwW4OOOFqy?=
 =?us-ascii?Q?cn7MCBPEpCwmfg3Cj5LZju6DYx8OAmntilgJgi+9Wk5cEXeMmyXVpGALtvNx?=
 =?us-ascii?Q?p4ZOs094yNGzalsOmkjItQl01Abf2UsXIAk5pNKncx7IW3Rki5MSITCZfhaZ?=
 =?us-ascii?Q?ht+JPq87jBogHrWpIa5HHPeioSINT/EE9FkbyTpm9YZDcp2edDTyK2wZvX0X?=
 =?us-ascii?Q?3MPqVk6WD+tU8DjWBsIphz5YloiMgg5wrS6IYFwFWRaRoiDR+hEgpF+ztzFu?=
 =?us-ascii?Q?eaiUeKSVOg9IuR3MqimCqNQcXCdHRvczPqUt6FHqRBANCSd3OFwHoG9mKssP?=
 =?us-ascii?Q?Gfzy8Hreu4wvKVvHU25i5e1/L2cogfyUANRYltg0ogQfAmtKw1tzOSgsG8fK?=
 =?us-ascii?Q?tfeJ1nr1Rucg5TLNnqKLVQYfcedWLP6GPwGCLvePPfj5NRtd/b3HON/OL7AE?=
 =?us-ascii?Q?YhN0dFPLcO9lhduCZ7kHYWBMysqgPor29Pa+3xBrcwRCd8gsL2klFfREYyqu?=
 =?us-ascii?Q?SoobJiX2RhefMn8hcLGJW4KGGLvW++PmfRs1Qz3L9DNaneLfTK/qj9pK+V0L?=
 =?us-ascii?Q?ECMb3ftN6Gq8VlFXd4tyQBuaKr5aXj7D/l2u5cEPz8vgyTWkiBhWLHbcLZbX?=
 =?us-ascii?Q?bC+Sw0sSmM6wOXaTgtd15CaIRNmg1pRB4fCjeGPvceRpuSQuOXrGobN/Xe/h?=
 =?us-ascii?Q?3XOZIq86ekAvyjHf7Slx0hYoVHq9ZILikmUU/0NKKcnDvo9CrR9XwgwKk+2m?=
 =?us-ascii?Q?yX+K7BpOh62YVa5PHLXiRW0Swg93VGFsdJ9H/H0Dl9CjfX7RCx/YZW7hDFAt?=
 =?us-ascii?Q?I5c1nFsU26D5Wfs0jxJ85z6ZgzJYigCc4wvQAOt8nmd7kdLmuXZm5Z3unbiS?=
 =?us-ascii?Q?BTwCxp83IdzSeFWemahtI2S0vfZ/3EF4bNqjbE/UoY+TzUYVK92PoG6GGLzN?=
 =?us-ascii?Q?UqKoEi9DpJmzfCZBuU/HpnH4ztnIQSoFHPa9doVT5s1rPGu5P7JrEJ9xtQ?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aDg13qBMnZ1VAS7oAsoZpAO6Y/OKOGXuWG1udhMYrfDt+ImQ/Dle2ubPbnhz?=
 =?us-ascii?Q?J/P1L4VGH/vOZdzCW3/D+T/q7vOBdfQ2+Ls0mCQZ2WKkJ9/ik8q5XXY2P4e9?=
 =?us-ascii?Q?zNeyYkmAN0D0siLTJJbGEss87axgV1L2en/Hw81AQ1YR3zp6rFkSUrd92SUQ?=
 =?us-ascii?Q?Ci4CYwpJcG2XwveW0RHip6zs5zupNBBMbOr6KUXeVKnThVVIerogiI9HPTIF?=
 =?us-ascii?Q?VOEWKGtJgyDL3iAYU6PeVpPGMK/mLOKQ7PxmocKU3xLwQFVMwtQnNVn0luLm?=
 =?us-ascii?Q?qDj4f9/UygnT5p1vMSt851HLt4ud5gYdbPm15KgQB4W3dBwobM76dcFbqz8O?=
 =?us-ascii?Q?UK8E69ITvKWk9CVabCV908S6jyjbAFYtOJK7gxGWUD59NR+dgRsXZlcdCLQd?=
 =?us-ascii?Q?pY/4/1gblt4iy6PrGue8xX35kDofNQ07D2UZwQChdfVkM3dwxYr1owXYUeM3?=
 =?us-ascii?Q?dass3cVVxrr7B7mGTj5VD2sPpvx5h6G5nN2RKktD4ATwR1nQEqSK64y1K7fZ?=
 =?us-ascii?Q?U6e9OGabYieyzqeyZEaJNyAG2OzEndPSI+jNOfeGSznx1vkcGWm4UtBnfVgo?=
 =?us-ascii?Q?OqLzKbZ4yODFyNmca4ziRYVHQHnYekoQgN5+v6xi7VJhjT4GsZS3ikive+3R?=
 =?us-ascii?Q?wn/F0Pj3EWYx59wLzej0OvfzPaEJzWtM2bGcVB8sLma9P/5g/BC9mURaI6dD?=
 =?us-ascii?Q?pjemSclwsoiypwKgMl2sd1DnzvfCHM4/hhBBTh2Vlh6S9nbS1RcOGVSKaj4/?=
 =?us-ascii?Q?r57ikgGoORLjyMoU/VQr+cD7j88/XqIuYR5F3p0Yiv3iGt7WSlnqEprdZTYi?=
 =?us-ascii?Q?dHFcbGTu++dnoqtETHGJlD9VmDoDtawAvZsadR/DEx4BnnoAcOkZeUUq5B/5?=
 =?us-ascii?Q?RUrqpyYoEibhLSh3hrEW39Dc272ASsA4L4e81lM3qkZUbT8mEjt52mLy+i14?=
 =?us-ascii?Q?3KHaHlphp80TH8icHG74w8gohEG/R5+QBDstCnv2EkZ7jvtzMzBU4E/Gp6rT?=
 =?us-ascii?Q?Mq1hYnp8osBrWfd32R7ljeyFnu9ZHH2FLqbp9SutaSap3CqKFJWS5S+RrnUL?=
 =?us-ascii?Q?lTUYjJ8VrczOZt3NI1HF99Vm0AQ02FBFE5MKgZPzK4lJNoYt1r5DKtZFvpKL?=
 =?us-ascii?Q?YDq2u7sIsOdb6R4szZqhyU6LhMrr/qZ63BX8E+Ke1fHpCUsAHrl4d56fq8Yo?=
 =?us-ascii?Q?gIyQGcUaR1Jh7vrvtJcus+5/DrDFcnyif7W3bA1uFh5EXeB8bWb2jOndUzWf?=
 =?us-ascii?Q?g8EANSWLAlx9JFdtKDJmZYER9gJd8sdeO1BOPLYakj4jvOtW8QkFOSgQiKzy?=
 =?us-ascii?Q?t9J+NALnpYrU85SJ89Hp38c7cDoV+2RCwFG/k0IBAmkPl7ARXFg7RH0htfng?=
 =?us-ascii?Q?08xWnOTt1lq1rrSOVArb+b0qYNRkkRjPDUXw9vX7fd24A01AtuqxlY8ecGW8?=
 =?us-ascii?Q?B+beNU+Fz7tUkEUGcZG7NiWBet/asYIj6dpi5R+uqweOMbuOphrJo3zc371M?=
 =?us-ascii?Q?yLI9WRRC5K8Dw5x/Fcsia9hWd2vvg2umYRIBG/NTgTCWGlq9zupob+lpzGkU?=
 =?us-ascii?Q?N1+XLQSRoCWVJ/wGiiaGFZAi5+SL8fPQsgZFX8wv1uC32utPB82Q3/YAnInF?=
 =?us-ascii?Q?WA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 409d5cb1-92f8-4cdb-98cf-08de0fc44ad8
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2025 10:34:47.6499 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 50YYEpomybjDs6ZXAod1UE11UxJIL2X+g8u1AoH8FlYj+1+Ioa3Vshwb/1j5ec2teRM7KqwI6WwkBWbXbLC9HNTQ6hMbBI45Zxdfndfjm+g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6214
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760956493; x=1792492493;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=daYHjL0vo1ByigxA8Kc9hm/4nW4BPrf65iu8TwKr/z8=;
 b=UJ1F2IExq6hHjA2M5i8kO47lFTiMiBknrmaWdvIDQQVbzcV7wAa+d9CC
 6SKSCriQ7AB9jPVo7g4H7WiEJya3G7yqwSxUdWfx1tnUg0b7jYnvfmVuJ
 45oAj8WDPuzAi3vCz3ln36y4E/yGFhat8aVX5MPvGv6/VkNH13D3TtDlh
 AQk3aRyJWzTFDLPcbtm1hgIXrgoqnQaiE1uoxN9qN8jTWoO19bZJbP/kk
 JQPIaU5Y//vELnDJL2Avv3g5FXTWqFDYnn+pCm4WEec57cJHAct+HdKNK
 zYCoDsgLCCCQIpqAobSX+ynf4Y66EcNSlItm5lc9orY2sYBK3Cv+esl+T
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UJ1F2IEx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] libie: depend on DEBUG_FS
 when building LIBIE_FWLOG
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Michal Swiatkowski
> Sent: Thursday, October 16, 2025 9:30 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Keller, Jacob E
> <jacob.e.keller@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Guenter Roeck <linux@roeck-
> us.net>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] libie: depend on
> DEBUG_FS when building LIBIE_FWLOG
>=20
> LIBIE_FWLOG is unusable without DEBUG_FS. Mark it in Kconfig.
>=20
> Fix build error on ixgbe when DEBUG_FS is not set. To not add another
> layer of #if IS_ENABLED(LIBIE_FWLOG) in ixgbe fwlog code define
> debugfs dentry even when DEBUG_FS isn't enabled. In this case the
> dummy functions of LIBIE_FWLOG will be used, so not initialized dentry
> isn't a problem.
>=20
> Fixes: 641585bc978e ("ixgbe: fwlog support for e610")
> Reported-by: Guenter Roeck <linux@roeck-us.net>
> Closes: https://lore.kernel.org/lkml/f594c621-f9e1-49f2-af31-
> 23fbcb176058@roeck-us.net/
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> v1 --> v2 [1]:
>  * add DEBUG_FS dependency in LIBIE_FWLOG
>=20
> [1] https://lore.kernel.org/netdev/20251014141110.751104-1-
> michal.swiatkowski@linux.intel.com/
> ---
>  drivers/net/ethernet/intel/Kconfig       |  4 ++--
>  drivers/net/ethernet/intel/ixgbe/ixgbe.h |  2 --
>  include/linux/net/intel/libie/fwlog.h    | 12 ++++++++++++
>  3 files changed, 14 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/Kconfig
> b/drivers/net/ethernet/intel/Kconfig
> index a563a94e2780..122ee23497e6 100644
> --- a/drivers/net/ethernet/intel/Kconfig
> +++ b/drivers/net/ethernet/intel/Kconfig
> @@ -146,7 +146,7 @@ config IXGBE
>  	tristate "Intel(R) 10GbE PCI Express adapters support"
>  	depends on PCI
>  	depends on PTP_1588_CLOCK_OPTIONAL
> -	select LIBIE_FWLOG
> +	select LIBIE_FWLOG if DEBUG_FS
>  	select MDIO
>  	select NET_DEVLINK
>  	select PLDMFW
> @@ -298,7 +298,7 @@ config ICE
>  	select DIMLIB
>  	select LIBIE
>  	select LIBIE_ADMINQ
> -	select LIBIE_FWLOG
> +	select LIBIE_FWLOG if DEBUG_FS
>  	select NET_DEVLINK
>  	select PACKING
>  	select PLDMFW
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> index 14d275270123..dce4936708eb 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> @@ -821,9 +821,7 @@ struct ixgbe_adapter {  #ifdef CONFIG_IXGBE_HWMON
>  	struct hwmon_buff *ixgbe_hwmon_buff;
>  #endif /* CONFIG_IXGBE_HWMON */
> -#ifdef CONFIG_DEBUG_FS
>  	struct dentry *ixgbe_dbg_adapter;
> -#endif /*CONFIG_DEBUG_FS*/
>=20
>  	u8 default_up;
>  	/* Bitmask indicating in use pools */
> diff --git a/include/linux/net/intel/libie/fwlog.h
> b/include/linux/net/intel/libie/fwlog.h
> index 36b13fabca9e..7273c78c826b 100644
> --- a/include/linux/net/intel/libie/fwlog.h
> +++ b/include/linux/net/intel/libie/fwlog.h
> @@ -78,8 +78,20 @@ struct libie_fwlog {
>  	);
>  };
>=20
> +#if IS_ENABLED(CONFIG_LIBIE_FWLOG)
>  int libie_fwlog_init(struct libie_fwlog *fwlog, struct
> libie_fwlog_api *api);  void libie_fwlog_deinit(struct libie_fwlog
> *fwlog);  void libie_fwlog_reregister(struct libie_fwlog *fwlog);
> void libie_get_fwlog_data(struct libie_fwlog *fwlog, u8 *buf, u16
> len);
> +#else
> +static inline int libie_fwlog_init(struct libie_fwlog *fwlog,
> +				   struct libie_fwlog_api *api)
> +{
> +	return -EOPNOTSUPP;
> +}
> +static inline void libie_fwlog_deinit(struct libie_fwlog *fwlog) { }
> +static inline void libie_fwlog_reregister(struct libie_fwlog *fwlog)
> {
> +} static inline void libie_get_fwlog_data(struct libie_fwlog *fwlog,
> u8 *buf,
> +					u16 len) { }
> +#endif /* CONFIG_LIBIE_FWLOG */
>  #endif /* _LIBIE_FWLOG_H_ */
> --
> 2.49.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

