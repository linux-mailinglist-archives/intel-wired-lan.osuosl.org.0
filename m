Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yD2tENBm12myNggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 10:44:00 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 771FE3C7DE5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 10:43:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AEFE54103A;
	Thu,  9 Apr 2026 08:43:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EV7rK069AH_m; Thu,  9 Apr 2026 08:43:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 263F74108E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775724236;
	bh=PkK1pU7nm4lDHTg0+xyknVdOxUdt3S3fsq1vLpiFI/s=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AjFL9zApthNn/oCApUBW2jwQo5Gb/SmjrsqOC8bAaPjBLN8BbP6ph5ugbpoF9Mk/s
	 YDbZHXyjFQvJVbY50NxHeErEvxNS79JKf+fR6eR1xoeRnsozFeA+ckyZBdBcvOc0GH
	 ZC7LFGsXcjVq8aaQLIWW15ulkHU+25UcoyRyev5c7hlbn5/KIxBjvTvkkZiCTaB5Oo
	 /YFHzYbPk4OFE79n5xdKFNtYTSmYzFI2s9ERMz6T59/ZEgB2QoIzObHwhkkHQ/aHvp
	 8FYG9BML0pUEliTl5LQQJ9s7jc4NzQZDGV7PQLwhI7vT2wQOs7Bd4ZXflvoZd9KQaQ
	 N2ojRkmSl+pfA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 263F74108E;
	Thu,  9 Apr 2026 08:43:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 172FF1F6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 08:43:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F0C5B4039D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 08:43:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aZXYSZNMDew1 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Apr 2026 08:43:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0F9884039B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F9884039B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0F9884039B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 08:43:52 +0000 (UTC)
X-CSE-ConnectionGUID: g/m+i/z6RTOUbnnmYIz5Sg==
X-CSE-MsgGUID: XFKYNwTPQNW8kboutos88w==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="80583757"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="80583757"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 01:43:53 -0700
X-CSE-ConnectionGUID: TUjLCxJdQhGV4P519st2cQ==
X-CSE-MsgGUID: M3HZuE0rRO25m5vg5kXyfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="232754354"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 01:43:53 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 01:43:51 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 01:43:51 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.6) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 01:43:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Cp667BgwmJgki/NsTcUsusQ4+cb43HoQhRKyoWEadqabOI4Fk/sHphlvchQ3l7U9+NVe1564+UGiJBF+QDkK5HBv5UKRlDPy0CskmcmzeplYTA2szVRJUKwu5nQM1KSancdRU3PRZ2Akxi/nN7Hmg5pTsCamPGAxgsnWuTp71r+6dfl/7GiPDk90+Zqlb8FbO+pfCq0mrG0qgLQcVEhDoRLlo5EGUarsCBWMTEAmUadVwwEVGKvxAanz3fBJg3T7BUc7BZ/5Xnjsbzhj8DJ96oe/h8x+4+STbuHEmGuBqy26YSNxS2y0ON3CvStE9gKpvKJ4BcGJ++f69t1btWYYig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PkK1pU7nm4lDHTg0+xyknVdOxUdt3S3fsq1vLpiFI/s=;
 b=bnSxoxC8hTLC+u239UDCOjtPO6TOGNQ2HNQmiSyot8+C7aUk8BjM0A4x5mj30uLNCf27lk2ZJNrDGmhuTXtxAtBpnn7uKbIep++8pAXri9SPKG/7TZGPnrjMQ8u5Gc0fK+RdyUxv2nIiWwINaN1s9nuIIdmQ2qfWnvExWwKe9BpvMswqTxmY57C9PbUVKs7u/ko1SSGQW08qqM6NH87Yea2ht9m5+N0rwx60jnZ/Sv9hfpxz8jYSJLwIrPBWhpCuIQbNsgFp9w2tOZMU3YwBT+gNJFbGZ5Il7T0C3GYeIuszEIIvt62TNrfKA3jgoEZTfZUNQbhxzCuJs5Bf5Bi7dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB6944.namprd11.prod.outlook.com (2603:10b6:806:2bb::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.19; Thu, 9 Apr
 2026 08:43:43 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Thu, 9 Apr 2026
 08:43:43 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Matt Vollrath <tactii@gmail.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] e1000e: Use
 __napi_schedule_irqoff()
Thread-Index: AQHcx6V7APiMLLaF/UGOLaRk1dtJsrXWapPQ
Date: Thu, 9 Apr 2026 08:43:43 +0000
Message-ID: <IA3PR11MB8986E397C069ED13BDBCE263E5582@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260408221633.73854-1-tactii@gmail.com>
In-Reply-To: <20260408221633.73854-1-tactii@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB6944:EE_
x-ms-office365-filtering-correlation-id: 6300c5cf-b9bf-430f-acfa-08de96141b1c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: I/tmwZtk+JNrmGLrNifkXi9c4ynwHT6oBVmO2mnbw7vAZjJDjADOoUnogc1CwSCM9EzP23oa45bb7C1h3/uQn0td57I2N9elJm35OWdmqBxecuipaDW/nKtxXLunAr7gXFh7gNmgxDicoz949vIjEqYURgiW5vA0MCwXqIdMDW3Sk/lO4dc3Beur60ldBg0i2p/VaBaXsEN9nCAc54m3g4TP/OeIpX1tRkVCWblACwTtFuJxnfSPoi6HOWuwf1+zLtcOuOyyn6uwI8/1o7ZmUWsKofHeF46bYAkQGlop4Agb8COXQVVdATpEde6fHVbsELuA3/E/EqT2vR/R7hEpgo3BZpuw5qX2GJh7Xhu02wUQtzQmbChhR83JpI5JndIPTjqm1NfQAFROXmeW9mjp91bQuPeOuwTaBm4X5GAUylewZw2reXYtxUS2qBgcUd24M+wOtb/MgVxrOZDSsMATSn4SreBpuJJOQy86QRlYGuSbvRLUc26iHMEe89RjQ6521aR+yHrBtF7g/RvQAWItMoS+4J16Y7f2vAXXdAoR34mFcWNwv7JqmzSc0iHgyv5SAl5jJb8CtnqJ4OvedV0YkbKBxAEqv20mKvz2D7k6Go0OGXf7lvyW+us2Jr6SpQ1IRSLp0XYaVIcLyw5mYU73fvYTyGfOoLHn2oKrj89GKhSpJe1/NdCIwwwfvu6ef2xy+yHuKsfHqF9bgx11SdGQMcQalpH1mMCWxeLoAg8f9pIJvRw0UAVgQF8PwTo/puj72Wf4pmPZVoxkjyHwrTxT4+/e9Sk1S2H0b6G+5mgFsCA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?l/XQS4Bm1Paz+N6lps6kDCaBORjf+8U/ERis9XXdBryH6eBzuNZdK6X0mFYp?=
 =?us-ascii?Q?EgEMQCcjTgyD7PObfoDLsgGS48LU3DFklkjkFsli2kddeoZ2+VPKZkAWhJeL?=
 =?us-ascii?Q?bVNwFwoF7tzg8RlqRfDPZeQc94C6yFtF4n7Jqu5DeV4CVkWdknGqzCWYJLBu?=
 =?us-ascii?Q?cO81CYjoOOrjD0jYmi5kuhwPpkBHm9k00DbM3kKY7GaTAI1xEPDjYqqY7J+a?=
 =?us-ascii?Q?wWGejdzLDUz75r+CVJjjXNPfNabU9Dun4xwJReST23ichduKRrUjdFXJESr0?=
 =?us-ascii?Q?BOXVR7J3ne+1zvwBWZMGFWimJq4D7Xj5uU5y10ORc/3qyovhRFuObNcqfIfk?=
 =?us-ascii?Q?PpB6rReEpMg6laJBtn0VERAzuRPMALryLdryw6RFy75An/JP2dtAYNiY1DxV?=
 =?us-ascii?Q?TKBMSSTyHB9YgSj5XrCkeBLpoTgkyJJijMQUL9GPtTaaemj0mIXd364MVwQL?=
 =?us-ascii?Q?Pkk/wG8hJqZ/QFVclkJL8q0pBtQmHWAnCnAHSH5xFssAFlhPcfD0dBeYFRe+?=
 =?us-ascii?Q?O3XadE60E3WXpI1nHCcjlJkJK8Q7tP2pHrxkWcxDEil4kLOxO2HQ66u0Efq+?=
 =?us-ascii?Q?8RhGiDPD3lxSZjD3KQMHxzNOxW7ludLrbxt3KKHVbHTd4ejGuR7lKDoa6jhL?=
 =?us-ascii?Q?s5Fged0vJznVuSGuuoLX3z9ZSCRSAWQGc07EGmi2pjEVWghauKzuoCw27yXi?=
 =?us-ascii?Q?1hk6J+h57o0MFm5ALW6OgRfJehPeffUo7igsnhIaiQe2CgBzr0+u/9w6gMBI?=
 =?us-ascii?Q?zz44QlobwRAHzVvNij5AMHpQak2jJmrRWJ2e+pgqtltPhNvYkd8biZV6qbJj?=
 =?us-ascii?Q?7ywT18NNcNxwHxYv7C6HCffCr8MVdDQZz3Uv4a/ZGX7TdoGudYgSkaJYjKsW?=
 =?us-ascii?Q?GirflgC2Ca4+EcfkSY0x1F6j/T516DIDGPwdpyDnWV4QsGwPVJqevGfawBY/?=
 =?us-ascii?Q?eWi1G4y66TB4MbkDWwhwusXf99z8+qBnoyQyiY/wbOV0OlwN9U8MmJr1A6JT?=
 =?us-ascii?Q?a4adBLt7aZt7o8379RInDqNmwaeheXz8Q7vF9tg4dH3tbgAQKxXLYQ4JoBID?=
 =?us-ascii?Q?Aho6bg2zJxYgkvCLjG/6PAhgNXTF6/v95861SeotzuiMqhUzt+nlNWodlWK6?=
 =?us-ascii?Q?LCDnJWz14Hz+BDmnLh+jYhMd15xzwNH8lF2QxOsbX9EmsPIV/FuigYcxA8Y5?=
 =?us-ascii?Q?/suurUgE7wHBcsT1iKVVR+B3SFtGyreGkQHQ5U99IJtW8EZ/WmzAEh4Z08dD?=
 =?us-ascii?Q?3XX5yGPAxGpPf7DKeiQ6oGoukCAPpyxpUi2AYOQeUCRj81bIjNuOKR6wkq87?=
 =?us-ascii?Q?/H0Igq2aXrb+NhzByMpBTUQk2oJvLigBXWsjRNqPSa4cFbDwaJ0Dg1C2EuUY?=
 =?us-ascii?Q?6dptYGtNMhNfQsxB1xDPfoI51SaXnPH9ErF9bn5FRa7eesk24ExYf2QJ+G42?=
 =?us-ascii?Q?g2GkiBekAz98OBg1bKQXpecdAo7YrXuIffWuFJ0HyKesUvaz3ujsdvKbmO1X?=
 =?us-ascii?Q?l/D0CfnOC5stMxaFB8ef1xgTqD8KRpwxPbQbwFyYRZyu9Oaih7mpuu7DHnNQ?=
 =?us-ascii?Q?ljx5QxjQ0xvGG9ZghltaT7KmIckL0Qv9mIEOGjqo0/Bgigp6SVDS0likQr1S?=
 =?us-ascii?Q?9jTybgT8LkARKpPNcGZia6AAyZcIEWwt9MMncHxP6djupMFnZ8HTPkfc0IAV?=
 =?us-ascii?Q?pg+GtLVllgYhWaqEmlAOhZHrv2keBt2+wkuH4zm4glx0hF+2Nuvp8lVHqNYk?=
 =?us-ascii?Q?Oc+r4/slvjHSI13HbKuQzTYH6etNf8s=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: aI0Rw6ODA/1V1E+vh+AMH0Fu1eHikV+f7IMKhodKxWu/LIogwOZQ3S/+fO2c1OpmOrqAYL0cwV+tsKe34j5dWddSSdj/RHuOCxKE02KEcOx5X/Fkq/VsqLDXgSEUR2w5JyFrxiPr+p6GM1ExjCF3cmyQ1Ksr68Jnj8jFObtKm2zSHqTPhHAyUq7+/dsBc0Pd3EtI34iowDm6llWcSvk8cnMlYuFItTW3fpPckzkSfcq/m35G8Z4meNU7TDP7w9w6c1ZcfRyyduFNMBfkbITfeWPGmEqHKNJvtgIZsh4rcHGxvrCGPN0WNAI6EywywSyfmroY7xH0Lx2oy7/Pf9hLuQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6300c5cf-b9bf-430f-acfa-08de96141b1c
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2026 08:43:43.1226 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hZR+H/Kg4y3PFiLP4HnX5Ht+9tOq0K3TDOmGXF0tNrzLDJamLue89iA9vh/6ZO3uot/T8iq6bsYvEwf9xIhd0dD5DMuF6tvQa3yNyunnMnw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6944
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775724233; x=1807260233;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/ZtO8jfzD2FymyR3XZ//GpRNtp6Yo5UyTw5nSamXMto=;
 b=D9KmWvpdgN0xmgRH18J7Vo5Ujv4cGUiPba8c5rxDEVHV6P0fUOyaI1cB
 x9Y7WK8VQiyhnIaSVMNPdW+GtyxP/j2JxZ0Ksg1MAJNmMBYttsyJj81cc
 LWAns1oc16i0wpZEnOTaylEmwDr9gbFTE7g7pduhysw3OHBwhOKAFZ0gZ
 Bm49J1j9p+fg3yK6TpyQlvpnwr9qW6DdrmpYIyGbGuRNF2BXxJrlI0TZz
 KOLyC101RfFCcQKGNPuKtpyVaWdAj50xkSNS6CKdnj2PwnAH5nAQQENMG
 ann0nyYaXd5yzv+AXAiBhnsFUfKZA9mjqGBsFcrw5ZLUWI2XXp1LgeOop
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=D9KmWvpd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] e1000e: Use
 __napi_schedule_irqoff()
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tactii@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email,osuosl.org:dkim,osuosl.org:email]
X-Rspamd-Queue-Id: 771FE3C7DE5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Matt Vollrath
> Sent: Thursday, April 9, 2026 12:17 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Matt Vollrath <tactii@gmail.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] e1000e: Use
> __napi_schedule_irqoff()
>=20
> The __napi_schedule_irqoff() macro is intended to bypass saving and
> restoring IRQ state when scheduling is requested from an IRQ handler,
> where hard interrupts are already disabled. Use this macro in all
> three interrupt handlers.
>=20
> This was tested on a system with an I218-V and MSI interrupts. Because
> this is an optimization, I was interested in measuring the impact, so
> I added ktime_get() time measurement to e1000_intr_msi and a print of
> the last sample in the watchdog task. For each test case I ran a bi-
> directional iperf3 to saturate the line. With some help from awk, here
> are the statistics.
>=20
> 49 samples each, all units ns
> previous: min 678 max 1265 mean 879.429 median 806 stddev 137.188
> noirq:    min 707 max 1165 mean 811.857 median 790 stddev  89.486
>=20
> According to this informal comparison, the mean time to handle an
> interrupt from start to finish is improved by about 8% under load.
>=20
> Signed-off-by: Matt Vollrath <tactii@gmail.com>
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c
> b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 9befdacd6730..3ba108bc3036 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -1803,7 +1803,7 @@ static irqreturn_t e1000_intr_msi(int
> __always_unused irq, void *data)
>  		adapter->total_tx_packets =3D 0;
>  		adapter->total_rx_bytes =3D 0;
>  		adapter->total_rx_packets =3D 0;
> -		__napi_schedule(&adapter->napi);
> +		__napi_schedule_irqoff(&adapter->napi);
>  	}
>=20
>  	return IRQ_HANDLED;
> @@ -1882,7 +1882,7 @@ static irqreturn_t e1000_intr(int
> __always_unused irq, void *data)
>  		adapter->total_tx_packets =3D 0;
>  		adapter->total_rx_bytes =3D 0;
>  		adapter->total_rx_packets =3D 0;
> -		__napi_schedule(&adapter->napi);
> +		__napi_schedule_irqoff(&adapter->napi);
>  	}
>=20
>  	return IRQ_HANDLED;
> @@ -1951,7 +1951,7 @@ static irqreturn_t e1000_intr_msix_rx(int
> __always_unused irq, void *data)
>  	if (napi_schedule_prep(&adapter->napi)) {
>  		adapter->total_rx_bytes =3D 0;
>  		adapter->total_rx_packets =3D 0;
> -		__napi_schedule(&adapter->napi);
> +		__napi_schedule_irqoff(&adapter->napi);
>  	}
>  	return IRQ_HANDLED;
>  }
> --
> 2.43.0


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
