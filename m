Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFGfM9qx6mlqCgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2026 01:57:14 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCB6458787
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2026 01:57:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF3C98408F;
	Thu, 23 Apr 2026 23:57:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RTY-QAuoU9SL; Thu, 23 Apr 2026 23:57:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3912684089
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776988631;
	bh=+okCoVX975svVxKp0ytHNb6U2BjInLQcpexD7tsm32E=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oRhmH7VeNPDQatExN5xoVlfyTQftlDP9WJlUxlZmcTGXhimzH1B2F9Lc/aTqOAG3D
	 XYdLR8imYd6ZyiCx9fH+2/Achig7X+axAZRi6WKDaeBoNZf6zN3orUBlshRiJRGlij
	 0Ote4ZMxAwIJHnlo61i8kxJVQm0Q+l+6gwAmVa7fy8RjKyYILSziXe/Q2/pc+TfM3h
	 KeJLZVGGx36MtMZL9aEtMJuY6Yk0+QblYOdEUljL+hgliLGMWujA9YqYbmgDcMak5l
	 6sgoCWwB++7LwK4qiFASxl/qdt/0kzYd9aOxJQsrm5a9iONlA2nOPjzQdpvtAgFhL2
	 8Mqp6yUK8n6xg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3912684089;
	Thu, 23 Apr 2026 23:57:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1C96A231
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 23:57:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0E45184085
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 23:57:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sLbjRBZc8-mq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Apr 2026 23:57:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 24B4484084
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 24B4484084
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 24B4484084
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 23:57:07 +0000 (UTC)
X-CSE-ConnectionGUID: 5hBF/cmOSlyGYQHiyBMTqA==
X-CSE-MsgGUID: 1CisizBkR36ABM7+17qGKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="78084082"
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="78084082"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 16:57:07 -0700
X-CSE-ConnectionGUID: wOVw9XySRJCunbpmhVq7Yg==
X-CSE-MsgGUID: bJ2sVLWIQKqtKYv1Q+ceoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="226264197"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 16:57:06 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 16:57:06 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 23 Apr 2026 16:57:06 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.14) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 16:57:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N9BJUNO4kWw5kAWVuwLZGumZItZu0enpV7klQecYLoEVE7/i1q32+xfNswZRuyXmx3qBXOAtal4HCrn40MHHP7ErJNwNN54Lh15mZYkzP/TTcwqc6khRxhp9btJMAuaR5/X1/rOrDzP4nGthJ8PKFjuQwLS/CszD7HJ495atIZTNJMRQldARDo12dynM4AZFX3+Yfeond4DB4u6uINGECiPHzBmr3N5iAyX9cFqw6rPXWGs0zs6d+ndWo1WMIMKc2/eEc0IRDUe8epXCDzSanS7M6S9geJOYYWeORAH+6oEIMRo2q/8VAYLK5vYGq+xQirD5kdnV4SQR9SuKAXYxiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+okCoVX975svVxKp0ytHNb6U2BjInLQcpexD7tsm32E=;
 b=XHvaFhPVEKji/sUWhh7Epalpeb0KdB4RlxvQlTqmGok1Xuk2scBfq7ZcXGauM+p/lat323Alu27cPcwymgstu8p/uVMST3pIs8cvrdBptBd0EP+QIDTyKmBAY/TPH1oyQiI1zpyFWkyxegUvDnhtaD2xdA3MRjC2+IPSdzFO0GN/w+xnqSdN8faoKvRnf2hAVYXQ/2GeqF3DD97APIC13gvHqiI5KspTQOld3lJw9vugu1utopoWBlCkp5JwK4JN3HLb2Cw+VC7pIPCWnrNjIrh2+te63EAK0SIvFFkkgXcUW5j3t0rw1rrFEGt7cT4v497xzdu7D8O0NB3wQaGhcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by LV3PR11MB8603.namprd11.prod.outlook.com (2603:10b6:408:1b6::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.22; Thu, 23 Apr
 2026 23:57:03 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%5]) with mapi id 15.20.9846.011; Thu, 23 Apr 2026
 23:57:03 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Greenwalt, Paul"
 <paul.greenwalt@intel.com>, Daniel Zahka <daniel.zahka@gmail.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, Nikolay Aleksandrov
 <razor@blackwall.org>, Eric Dumazet <edumazet@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Ertman, David M" <david.m.ertman@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix infinite recursion in
 ice_cfg_tx_topo via ice_init_dev_hw
Thread-Index: AQHcy3nXcql7iZkcaE+pcQ3qZQ19orXtYa3A
Date: Thu, 23 Apr 2026 23:57:02 +0000
Message-ID: <LV1PR11MB87901A00E2BF508A97772277902A2@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260413191420.3524013-1-poros@redhat.com>
In-Reply-To: <20260413191420.3524013-1-poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|LV3PR11MB8603:EE_
x-ms-office365-filtering-correlation-id: b5245865-7ed0-4d1c-2796-08dea1940431
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: Yq/Ngrz9pVGnq9ZikbEtltRJT+wA5svqXhQqxLSHdDNTXP9HoFV0omtDVG4+wcl02Gb9kL0ZZhZLx0mzOo9F0RoYUpFRn6Va6haILc1y+M0Ff8s+Z3trywxdp4DArvwoorgT6cCdfogjDv1EyBmVfNl1+dOHUMc9o3S/Rxy5u73bedRD4KURwqnUnzwZ/FYKEn8AULkdFC4/u8u41mUVHtQPY7tdoa3F789n01rcnw8TVOX9lriaxNN4oyndq1Wab3tBu5/yBEHizXl2WCT4dwzOGdCQ6e7qbNTvQhv3zNMzqiuwGDf9eyRAXM6jS/jycEgLKS6Nc0Kp2acE9fejUvOWsobct7VBlQFpShVhNh5O6q6GxYmynFQb5rL3Ba2mRiJOyWWzT0sVSEiAUr/n671dY5x00iwUyhUez3IVLqoXk3RLYNxCNcgyy1A6/f/2GMj1fPsj2tZjNhNAgvjRHzF68ChjxQwaWCGI9x7K0Je01cvsM7MbfXOqux74Rt9QqlbxwXlned3v9OEAqFcvf5HKRSuBiPR7HBt+ohmeX8MEOpO5DdPHLx0awD6AhylcLTjj0WMFZ4c+SdSrBnwoFBtiJ4nUl0DnmXICzCuZMFoVxXDjs2w4x2m6vbKpdakDpeZJoZO9qwMbIc2269PK8jXFFRtIBiSVSumQ/2FYxsDgYVkTyx4g8Mogm9+e1ULeyyPrLdPyF9XwUEg0UwceewmsrXxgchd905vclH7YbLUZo9AJTtjeRO1zSYxaX7c/Ah9RimwNAkSvQSWLyoJje7dawFcyQr/Fwm15hI+XQlA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?anKRWARrDtLOkRlcuNnHQPfvZLxkMKvnZPdPAKPfnNP2hyb6peTxrNdmtlwC?=
 =?us-ascii?Q?q0ZTvMZa1rZaJGVjuEMRMO8BgZO4TuctXy9fMGxE8OVd/LyIWoJYxekfs72/?=
 =?us-ascii?Q?HJ62Rj7qpB8DTDMJoxdjslgvuoeBRjFQPnWamMx5WkCEsXXyNna33A5y5FLX?=
 =?us-ascii?Q?+3YiaLY3LczCDu3cFv+bGRuzi+w7g35o6+4tyypkSmV1oGUvKJoxyqXfSpa6?=
 =?us-ascii?Q?vrZj1a4n+xTka3hiawMOyoq2qiXENFQJqNtMyh9akho7mjhPlxK3ttBayM+w?=
 =?us-ascii?Q?KmUmyvAXekCwv12vB6WKfubpf8yQu0gCLXFgAMjO2E0rrlPrpYiYzhYunwCp?=
 =?us-ascii?Q?Ryu8T8IMl2HlzFEAUyratDHJyX8sBHwl4F/vTgUyO9ivYdvMxEQdIyElfjIu?=
 =?us-ascii?Q?M82Su9Mo5yHXWvJkK1zUkjNHECLQ+uUend8Uo2WJg0V2Snj2vk8uXulNwdLg?=
 =?us-ascii?Q?GWXXyrArvQjrzGKgyyAop/3x11EScOhjZjOcowxrPSQ6w9DdByQXRAs7YGTO?=
 =?us-ascii?Q?kYJl1Yk253CgWsFZGp86s3NvuXEd32h+NcCl4Vm4v3IdynrcV8OEOoOI5Zb2?=
 =?us-ascii?Q?frtrfjQlvdfo//8kZL28BSZRH2vPkW/BoLNZvzcwjFPdLGib9m/qiRuVVCqc?=
 =?us-ascii?Q?1wNVGRwVysyYKpZt9AR5R5POlJOhlZuLpTm9ofOz2+IwIQFLsSoFGZudN6WT?=
 =?us-ascii?Q?HUoCfm1IaZy7fSnKyyo3KZ5FxuBPhy31WELwi75YV03ptOQuohyRiVr7EVSf?=
 =?us-ascii?Q?XKzR2nTws5dSuAAL9l/pWaPz9Qw/ojXkgSyJrStDpMzgIvzwCsiD34SOFtrL?=
 =?us-ascii?Q?XcCfShO/UzzkHocE84AdvZVlx3bwwVAS1WHmX/fxmvWAwyF1YD5GVeeWPhKm?=
 =?us-ascii?Q?EWk3DNdfYTXqeAT5FReMJ+uFYnX1iVOgmRsQNh97SXh/FHZlzPCsXfgDqUAL?=
 =?us-ascii?Q?njB4dWbeDj+gs3GseiKJds0e1AEzsofEDOdJcgacGjlMTVNNkh34r4lHt9gk?=
 =?us-ascii?Q?cvMQWCyUS5EKf8NZ2nQQeO9IdhqpE54xXj1KvEWYdvo1jgB1Y3hBStYVNOvc?=
 =?us-ascii?Q?/fQDvSSbBU5KGLKlbZujcHbYNLAC1b6LbVALv2lmE6b/EMBb27XWZIxtZ+l/?=
 =?us-ascii?Q?fQbX8Y7jeKqDlaOPkyiR15QdEud1pKo1K7VvI5aggDJ4PwQPblWmOOhwA2X6?=
 =?us-ascii?Q?dUGbRcQ1AhU3f/a5SPOI9vqnZQErJXlDavy17kbqCF/8Vvmy6cY6L9vFsA6z?=
 =?us-ascii?Q?Eo1TuzRk/3cJAdykIXWi0C0Z1IF2QYYmk6nT3xGuucooQqfQ7mKw0thZENdn?=
 =?us-ascii?Q?D8kTX2XeJEkErZgjf+y4rH0ep+PyHBfZgeqcYET3xjCtD19KIB537UlmK27/?=
 =?us-ascii?Q?DHD9hjFmRHHLEk+YI4IEDGXs9cdnRQk8B/gEOhjIJgRZXTxLO4I0yPYHVdmo?=
 =?us-ascii?Q?JOP8XD/b0kwZ0jZxipMCO6M+VChg0nNM8EqD6vgeyOe5sQaPTE9TlKrtSW+W?=
 =?us-ascii?Q?1Zl41YufvOKwk/jrq13Hpb/kcPKTgmoKLcVmusoJvASCHwa6s2EpzbhuRVQ1?=
 =?us-ascii?Q?ueFENr1BP7AnUmoQG51J7VsP9NOZxsr/TrJpif2VITALjBJIZYUfruGSEgPJ?=
 =?us-ascii?Q?PwNZUPhPBfta+W6cbmX7PbirQOLvPadadH8kmpIOIGps5v3uMC8ViGji7nhF?=
 =?us-ascii?Q?j0c9YE/LzxKrMukoZpwxLcKMHU5ceOkLoPPYJdlukm9TyZmPgC9Ftbq8AOlW?=
 =?us-ascii?Q?FZlPam/8Lw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Ewx4b6mfG4kL5fL4kM11bLtxau/ZBXTnz0Y6UIuKOrMZ1oXXWOS/ACuupUptw9pnDTnzOjPgBPBqm4kQwQz4utE1vHYiWTJG8MHHTGqr8/PDiWGndF7XaN/i+0V5m1/qe5M8w9UZZVpwm2kyDaMUoW7WQ51mFbUNF4SkOZIACIYDi8e41wpdKcMcIfKel1UXdSRXqK13BdEdhQ6TVGyuhobJDhztJbzQ7T4z4RHzjIosnKAdH3oqLjPDlbsZzvVFFXrWyj2IRcW1+J4z0KBv+QcU6Tb0rA3CzAgK+XNo8fV8EOZhIbr5MdMc+7zEsphRGzGADEM8fhcjG8a8/4DQIA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5245865-7ed0-4d1c-2796-08dea1940431
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2026 23:57:03.0501 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P0+vRlkICUQtzh2pj/hlCeeXHUAGxjsAFv7p2IJ2PM3NwaGdhlTtkE9WJQNa48vCuF0g+ciQrey7rSUUWkp11bnKFnSIkyrTU16pqg1xKKQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8603
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776988628; x=1808524628;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xdg7tbOOnsTlLeGlAEftZvASN20dzT/Gxrj0gnb1ir8=;
 b=Zoh9NtyHkAcf1/VT33PbpycfGBrizVkgj/I7LvSFnm70IqE1Bb4le0A6
 kAtOCcexN1MqZf1WdctzUZm93HWejn+EnYTde9n1BYlX+oSkQoZ7bd2Hh
 1NOVp9/rASfDjnE+xQuT6zslZho9p+nBIIht4Kut0IdIucy+ClJf/FixT
 IQiYuxeBgsfJAKvVKUcUl4ZzvqKQ45jTjbyik6fl4Zu0ZtnnIB90Nh5iF
 I0UMl2FY80R89/RLEDBsvZSN4P4cAfbGY9sQLVdbT/0cfMkouoSZYjrtG
 cZULn9ZBo9J0LoriZV5I1GdGUEnDg+T9EnR5ROH/ODR0WlmU9CrHdWtO4
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Zoh9NtyH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix infinite recursion
 in ice_cfg_tx_topo via ice_init_dev_hw
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
X-Rspamd-Queue-Id: 8DCB6458787
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:michal.swiatkowski@linux.intel.com,m:paul.greenwalt@intel.com,m:daniel.zahka@gmail.com,m:przemyslaw.kitszel@intel.com,m:razor@blackwall.org,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:david.m.ertman@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:danielzahka@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[linux.intel.com,intel.com,gmail.com,blackwall.org,google.com,vger.kernel.org,lunn.ch,kernel.org,redhat.com,davemloft.net,lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
etr Oros
> Sent: Monday, April 13, 2026 12:14 PM
> To: netdev@vger.kernel.org
> Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Greenwalt, P=
aul <paul.greenwalt@intel.com>; Daniel Zahka <daniel.zahka@gmail.com>; Kits=
zel, Przemyslaw <przemyslaw.kitszel@intel.com>; Nikolay Aleksandrov <razor@=
blackwall.org>; Eric Dumazet <edumazet@google.com>; linux-
> kernel@vger.kernel.org; Loktionov, Aleksandr <aleksandr.loktionov@intel.c=
om>; Andrew Lunn <andrew+netdev@lunn.ch>; Nguyen, Anthony L <anthony.l.nguy=
en@intel.com>; Ertman, David M <david.m.ertman@intel.com>; Keller, Jacob E =
<jacob.e.keller@intel.com>; Jakub Kicinski <kuba@kernel.org>; Paolo=20
> Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>; intel-w=
ired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix infinite recursion in=
 ice_cfg_tx_topo via ice_init_dev_hw
>=20
> On certain E810 configurations where firmware supports Tx scheduler topol=
ogy switching (tx_sched_topo_comp_mode_en), ice_cfg_tx_topo() may need to a=
pply a new 5-layer or 9-layer topology from the DDP package. If the AQ comm=
and to set the topology fails (e.g. due to invalid DDP data or firmware=20
> limitations), the global configuration lock must still be cleared via a C=
ORER reset.
>=20
> Commit 86aae43f21cf ("ice: don't leave device non-functional if Tx schedu=
ler config fails") correctly fixed this by refactoring
> ice_cfg_tx_topo() to always trigger CORER after acquiring the global lock=
 and re-initialize hardware via ice_init_hw() afterwards.
>=20
> However, commit 8a37f9e2ff40 ("ice: move ice_deinit_dev() to the end of d=
einit paths") later moved ice_init_dev_hw() into ice_init_hw(), breaking th=
e reinit path introduced by 86aae43f21cf. This creates an infinite recursiv=
e call chain:
>=20
>   ice_init_hw()
>     ice_init_dev_hw()
>       ice_cfg_tx_topo()         # topology change needed
>         ice_deinit_hw()
>         ice_init_hw()           # reinit after CORER
>           ice_init_dev_hw()     # recurse
>             ice_cfg_tx_topo()
>               ...               # stack overflow
>=20
> Fix by moving ice_init_dev_hw() back out of ice_init_hw() and calling it =
explicitly from ice_probe() and ice_devlink_reinit_up(). The third caller, =
ice_cfg_tx_topo(), intentionally does not need ice_init_dev_hw() during its=
 reinit, it only needs the core HW reinitialization. This breaks the recurs=
ion cleanly without=20
> adding flags or guards.
>=20
> The deinit ordering changes from commit 8a37f9e2ff40 ("ice: move
> ice_deinit_dev() to the end of deinit paths") which fixed slow rmmod are =
preserved, only the init-side placement of ice_init_dev_hw() is reverted.

> Fixes: 8a37f9e2ff40 ("ice: move ice_deinit_dev() to the end of deinit pat=
hs")
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/devlink/devlink.c | 2 ++
>  drivers/net/ethernet/intel/ice/ice_common.c      | 2 --
>  drivers/net/ethernet/intel/ice/ice_main.c        | 2 ++
>  3 files changed, 4 insertions(+), 2 deletions(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
