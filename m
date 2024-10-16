Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC78F9A0FC4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Oct 2024 18:32:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ECE22811A5;
	Wed, 16 Oct 2024 16:32:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AC82wCQoePMG; Wed, 16 Oct 2024 16:32:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8188881165
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729096352;
	bh=dfST1WIlZC8BdkfF7npnXOmOu5/xWAYWlLfTjevG7VA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6iTywerIqjRqWS1U4QTvmtuAV5xdJp79qyqkqSysGNBjzW4hR0swNofbZQePyXRWb
	 OEoS5R22jo+k67f5tEQEDUoxOxPZGOGPX/Rgca9cqeJ4vcA2Tq6zgDXiMi9iNhziFa
	 J1MiBg822zIHu5ZV0rlqyviV3Qo/Z63V7q5RwlzRl9p9J2DXe6eYs75Y2un8JSg0yT
	 EgEiCBufHoh7mdk+jzr5tEMF68snCPT7nSWi+bMXIxA3GyFAfJn3JCGpVZwJyLYkN7
	 S0+sZdSkI4ubb55iOdIkgIQWHjGb1s/emmAaRUyDuzifptFvAfZVjNl8tUKPz3UHYb
	 513R2z37cnacw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8188881165;
	Wed, 16 Oct 2024 16:32:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3CE2827F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 16:32:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E991860708
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 16:32:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QgB1wIfuX4w8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Oct 2024 16:32:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F027F6068A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F027F6068A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F027F6068A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 16:32:28 +0000 (UTC)
X-CSE-ConnectionGUID: UA7dCZEhRHO7PfoArq/UxA==
X-CSE-MsgGUID: MuZQ7RWqSfaAzd9lVlDAnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11226"; a="27991307"
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="27991307"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 09:32:28 -0700
X-CSE-ConnectionGUID: Ft7V6BGxTbqjGluE+nrd6A==
X-CSE-MsgGUID: PrFAuxWkSfavu8SV0eG2rA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="79109085"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2024 09:32:28 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 09:32:27 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 16 Oct 2024 09:32:27 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 16 Oct 2024 09:32:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TjbOpVALTGrjUEdNeu24ZleS+/H2Wmt3bgmaGeOXjvL3oAHviRNpVGWQIPxDsyY5aNFDWGqd7wFAbnQuEN0US35VU7D9ZcvP/rm6HrPXxqh8RqPlrH0vAdq9/039uX49eJXV2sOiUIFMsqudXjjJPlqlDZMAoUmmLnlzB4InR/gNJZ76nCMjMrVykgpyms98qOccGIv/z+bNT3dr3Feu7hYke86mvX5n1vwIZrLMHDBKauDyHVcBEtf+EKDkvjR5GCdvfP48KQAj4PSGf2J/s1n6yKPtTPAdXrw2meCO4x0HMjwOvw7G/GpYFfFA3N04vV9B3ZFFPQxAlcQ0vAM5Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dfST1WIlZC8BdkfF7npnXOmOu5/xWAYWlLfTjevG7VA=;
 b=hXDdl9xjx49YhvgK14ejDcB6hkVEFPyChOfDyXMZWVAvlG4vC19KaQgpQzYEuaZRUjN7B2iD8kq66GVongdhDU4NJclt7pvjYXfpVNoAf5fm3J8SZWPeb9n7/FkmxIiSkAKof+EpJq1Lmf8qlm3XXYAqDLVXLiQsp82xxp8ntF1tlyAX+ZjqA3nM8qSfV0kT/l0cnpjSaz1OLoCSCnMW2zQRUKxwIZrfrwwa6X3l2l2hqfG4EHb1kSP2D6Yh5EdbA8v+YmPsGXo8xAZwdsIMWWuUMVv0doFTxboNqL5Fd6UlwsvbSp688VSapZ3qz9EaNCmFBKQYDGnWfl8ku5Ys0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by BL4PR11MB8871.namprd11.prod.outlook.com (2603:10b6:208:5a8::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.27; Wed, 16 Oct
 2024 16:32:24 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.8048.018; Wed, 16 Oct 2024
 16:32:24 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 2/2] ice: extend dump serdes
 equalizer values feature
Thread-Index: AQHbE+8aiPluErmsrUKk59qnRk00PbKIAI4A
Date: Wed, 16 Oct 2024 16:32:24 +0000
Message-ID: <CYYPR11MB8429C979CD391DCB0978D038BD462@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20241001102605.4526-1-mateusz.polchlopek@intel.com>
 <20241001102605.4526-3-mateusz.polchlopek@intel.com>
In-Reply-To: <20241001102605.4526-3-mateusz.polchlopek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|BL4PR11MB8871:EE_
x-ms-office365-filtering-correlation-id: 83e972cb-ab85-4bf0-03c0-08dcee001de1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?hIunhtAvjPEg1mbPbu70NabkmcCBggDQ5vC0IylNrGP7LkuEKwZFq7+hUyQE?=
 =?us-ascii?Q?Ug1q+6L1fpATErwScUeJPIkQ8qSJzvLf6hQmi+eAROjIrC7xmGEvs6cG2zl7?=
 =?us-ascii?Q?y1y5luIW438Plfgcui+CXGvGgQXOwKtBuvi053jFjDae+bRO95n40bUN7cia?=
 =?us-ascii?Q?R3ga6NPUqoTWVoB6qmwRDB2SovFijBvfJcyb2cmTstFsYa5xgIgZrCe4ZKhP?=
 =?us-ascii?Q?ISwFd5VkYpEKt+MPa5BRvzzoZuKs3CxZodsxVnOVbDAFqIaTtT2mjeZk0W8e?=
 =?us-ascii?Q?7AfterGch8aJ5vz+W/wjVpxfFiCm+/fMUE8eN5T6p6h+3Y0o9Nr6YZFmu4+N?=
 =?us-ascii?Q?lMDVau4LRwyAeaDu1x3A7RZZgQYA3VcSIUhxVr/a0WCiTtzTxHCIjoXsJHiV?=
 =?us-ascii?Q?rrxrCy1aV/d2bDbQFge4vIAGIJaMlBxx0HWXWcnqcoXnb/dbjAJ/PLVCwshV?=
 =?us-ascii?Q?OBieQae6tOYENPRbxltuJF/NB+TphYykdkrFHXlmLjgZauxfszHz0SmHsyQ7?=
 =?us-ascii?Q?YeLnPRprGne2dMRMzcD3QvjOALaARXzw3k13/n0D0wo0F57XQbaqoUNRwTgt?=
 =?us-ascii?Q?TYpuiyZwYDQJRbbqTAU1cX4tF/jSXuEnO17YmSN25kDc+qTo25w8dCg4UcsH?=
 =?us-ascii?Q?W6/F3id1wBONuQT2S5unX1cPnzhUjig34do4hxBiFa/fD0gcvcglRqJswEc5?=
 =?us-ascii?Q?oGuOoU4IzPe/2XiErMlXrYUHQXWLZeTZfs5NUGcYIG/6qFVDzLnBXdOT+LCI?=
 =?us-ascii?Q?XBM/75TlFiiwkPF71wupFnuXLenYVX9EmgQ8PEYgfXdYaKsI46ZMPSMKjxHt?=
 =?us-ascii?Q?NmFxIuJPhZWudB2YpVZTZ4219qaVMBtts4LmYUnvZfobdouFemJKc61PA4SW?=
 =?us-ascii?Q?Exbgt5a2jcJ6o21SWVEK8JSdByPqz2oj2CHiv8R1hTEofQyJdIx+N3Foe/OR?=
 =?us-ascii?Q?jkI2AW6hv7hAjbxDTA9yXucklBuI7lIbSyIotPHfR3A6Gp3s4cF1Jlq+iJGh?=
 =?us-ascii?Q?tmAicReA0MSuUzRszQT3S7uRMwJjImbr3uOsZN1cYuecB+kd4sdS0+kitZ9G?=
 =?us-ascii?Q?a8kAbZoU5+IA3ijHLnt+wuvEB73nx4sUDd1PW0o52NC/+iYfCpuESViiYdoD?=
 =?us-ascii?Q?Nlz4WbiKGhcymMFlA1tMY9wlaReBaKRR9rt6mAXsVskp7c8EunKrc51M/pey?=
 =?us-ascii?Q?wfYlJxnsyQppc1KXKJjz18PbFBCyNUHeh3HxEmi7bZuK2uyRrVFmv0KAort6?=
 =?us-ascii?Q?GsRg77mE967YFfEWwZjjynZzlnJZR/mewtvkypHcjKP8crKQdHiYl3HuAYbC?=
 =?us-ascii?Q?ggdGtDIO6lwVJbZ/3So5TX1TfYH4KWbwUoOtExZ+Q05ugw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Rx8mxYoHzG99ej8R7OqhVFTb7iFLuN3gtCCYw/asFS10IG6pIT7gYis5KAvD?=
 =?us-ascii?Q?cc+hxwhcm3Uq9Jjwd3gnNpGx/uJ/1krrn+6sE9LlcCcuPnb5FaDUS+ue9wYs?=
 =?us-ascii?Q?38sCfQS1PiNDssZpkyYv6ydDAq8eIuXYe9deGGeIrLbIV7dliIPwMS/tAzXq?=
 =?us-ascii?Q?buLOHc1TvSqoKwM9k0LCOSMO5Jn/ZCAd13k8QP2cU43KLCHOAxf/XY4g7C96?=
 =?us-ascii?Q?Y4x+4ExVFeA6O4OUJmQPMkH491ByYTVVbtJXQpUaGK5hOVahcVRw1q+7EEiW?=
 =?us-ascii?Q?EBkRmVjvenngAxRQaQGn/eBn0ck5NJIvjKKrZVNMwKZVqiTdh7+81X27SoKe?=
 =?us-ascii?Q?LgVkUa6HLBoukS/mVCR05jg0aWqVYAz4dbCv4bGZUZ48S6bMD8OQvL5KeLJq?=
 =?us-ascii?Q?G2eCdvtSLg0uiyDR7koXH7ivQuoMfyKFtxc49EF1HPQdcRuzfwXGOlpNj031?=
 =?us-ascii?Q?ZWxJ3+yflRBNj7BhX4sl4SnZvvleTt0haE4tKfbQ3hixIs89wXlFTfCXRZvU?=
 =?us-ascii?Q?up06sXZHxuBZTQGWg4prCNjDOuw5ucKwNksIzcvGyCkKyEWNw24C7LaglWSX?=
 =?us-ascii?Q?dlgABiiwEOkizi9GWrwjVT8D0iHYDEzcLYOwx8h7eRNyvUlybnTOOPFxC8Xu?=
 =?us-ascii?Q?EEoV9QA9F18bMsaNMspNqDsbOYhEqik/9dURq611Hn97LDp/0FJGHz5NVmBi?=
 =?us-ascii?Q?ZMZo7RSPJAWgcTtQGom5IYXBg5BAXug6WtlpZL/VGzwvWjDbcZR5v2n8ff+a?=
 =?us-ascii?Q?U8itbLXcUiPjcWNkg5rUCKUelcrR3HHLFAz5pnuE8aDVOQh6emUu+GTeEbr4?=
 =?us-ascii?Q?HMVfxrMoPhttzBAInLWFi43y8wj0iLpfZkKc3YG0H7W5csKqS3AkRNASdvpQ?=
 =?us-ascii?Q?tmCmWYL3C/Otk83dEizWKm8i9hNEsdLT2ob1/WiUGd29RQUX45Wh2hQL26XZ?=
 =?us-ascii?Q?s+kL65bmWmHe4gpQXEO4u4IcW4VrJCwMmKV1mozkZ2P3lSv4CyeNIA8h5Q7Y?=
 =?us-ascii?Q?ChKDCM1sioy6tbQw31oTufM8B7WfEbhzsAYzL/eJI+mLk9/OcVya2r66tdpN?=
 =?us-ascii?Q?x1jcIWL+WOSc2p/A8m4nNIMMv3bk8B4yCDoFmGhmJ8mQMsjzy9k3E/tWGmqr?=
 =?us-ascii?Q?AwhCIUDhbfNKfYXdS4s9S5y7xZmbtg+Me+IRZT4caTeplBDxK++UOz5FEY1D?=
 =?us-ascii?Q?RW+meB10YpnH0OVWhPY6mCwFXmzvZO79vNS4rjs0ZIS4J/0wkujoy3zMgY/+?=
 =?us-ascii?Q?p7fMvwfXtmGVmsxkNq9Jnit+vBJWTTu7U4b62sHibcsSIG9j6RlV+0bYudKJ?=
 =?us-ascii?Q?sZYw8gSxpoeeI2ktJEyTe4BiBX5/tE175SujwdzFbvOVjLRlh2WcvKpxW9nC?=
 =?us-ascii?Q?526S4OOM9d5939MuGheSIt+Tx47PAdvbcOn6n+zzu1umTLD7jGU0Zr3ww0Zv?=
 =?us-ascii?Q?qAx140ha/OMfGcL589jtLQJ7oJwIFnFDRtOfqECdRHWSfK9pw/ytUDV72gGX?=
 =?us-ascii?Q?iT8QKSI9CdMJXl8dWjGunLWYkeQxv2lk9YWWTC51KVUvLb/PziMwA76hHpT0?=
 =?us-ascii?Q?N7lKMEKJC1C7MC/pHeU/QQXuwQdSdePldZbK67Bzktcb1uK2g2G2GjBHuDkN?=
 =?us-ascii?Q?6Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83e972cb-ab85-4bf0-03c0-08dcee001de1
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2024 16:32:24.7948 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QkHu3ViPngwZB8NDnZPegTPsmCW8wfAQq7CfRAECQe7YcizjFItTzunifhWEs8J1HPU7ZA/AGES2fp7z4kktlLvTlh+5p4px8On7yqFur3Szh4VkdZLi3Y9IMiMI92lu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR11MB8871
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729096349; x=1760632349;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TZwU77D58SOJh2yQWPZWtaEpCp02eY8w+Ra+ReE5VQI=;
 b=Lc2ROvZK03QFNeNq1+jaAoxP1gadt0KNG82s6rIKp8t6lUleOM0LtHcs
 sgc80fhfrwy2GlG5il+WY3u5DHZq1eV5t7MXkDUpvVr7OnJ7WQo/5qVwP
 f9kxJ7CHulPQws23/OFvqHDXIF7Nhv4sGzWipWwCSd42igt2etfqhOV0E
 xwBo9687VU4s+iPI7qYhHcuK5j8Z4fbWahlZsjaaBkGy/rjDt8kJyDIYw
 ygkwEy+tpyP3UckIH2CL8vHNIvBVsH9UsTE5MXwlM42kp2xTUWGUvlg+G
 04lOpo67EPUXnAYqaaU0Jgn7TgqhiCOt7P6CohFWqinPgwFv0FBCE4Lxn
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Lc2ROvZK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/2] ice: extend dump serdes
 equalizer values feature
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ateusz Polchlopek
> Sent: Tuesday, October 1, 2024 3:56 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel=
.com>; Polchlopek, Mateusz <mateusz.polchlopek@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 2/2] ice: extend dump serdes e=
qualizer values feature
>
> Extend the work done in commit 70838938e89c ("ice: Implement driver funct=
ionality to dump serdes equalizer values") by adding the new set of Rx regi=
sters that can be read using command:
>   $ ethtool -d interface_name
>
> Rx equalization parameters are E810 PHY registers used by end user to gat=
her information about configuration and status to debug link and connection=
 issues in the field.
>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 17 +++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_ethtool.c    | 17 +++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_ethtool.h    | 17 +++++++++++++++++
>  3 files changed, 51 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)
