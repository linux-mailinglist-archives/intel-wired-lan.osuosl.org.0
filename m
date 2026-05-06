Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJaJDvaL+2mWcQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 20:44:06 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 791BC4DF7B6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 20:44:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8C1581D2D;
	Wed,  6 May 2026 18:44:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j_x1GbIA7Rkp; Wed,  6 May 2026 18:44:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3846081C21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778093043;
	bh=8PtooEPl4bG0EsPXqMGIC1JYIXjGFrqXv9Ib5nnjCpE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=y7E3QV6ls9RM2YLDLJzxf9sMvGP1aJ0MYN7q/7YFpor7nUXlKR4VhyHgbHeJGSjIQ
	 9jntK185DMuHMaHfxZTdiotoZTW0KloXaVy2WmV2aNUtE+P6zvyh2XEmqrZtZWh7uQ
	 QO6mC+ONtNpOjKoWjqKHCXyEwnJZbT2Esup8B6XUBZKdEOgOZ3yxOvUIP8uArAHFsg
	 1+HaIfC33GYR2AmpR2jw0EvIFJ8l+CVG2MQmABAhNscX9bm/OcqvMHQaE/uQn1AgCl
	 WF5Q9slEwwpGTJJfZjAVhWYC2AU37wxS3oR3Nrx6MADY5Dp7lIjI33l3jTmNnP7wuG
	 XIHXkpRyk9NqQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3846081C21;
	Wed,  6 May 2026 18:44:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DA4F9317
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 18:44:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C031281BB2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 18:44:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9dnz0_kqixdy for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 May 2026 18:43:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C99B4818C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C99B4818C9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C99B4818C9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 18:43:59 +0000 (UTC)
X-CSE-ConnectionGUID: gvByDDRwQPGRC9oHL9zteA==
X-CSE-MsgGUID: LG7X/BC/TxCSNu830+SlFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="66566027"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="66566027"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 11:43:56 -0700
X-CSE-ConnectionGUID: DLkOyXFFRPeVcMnbD8nhQA==
X-CSE-MsgGUID: zhqPQyhJT+Gt/tZngF/syQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="231849384"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 11:43:56 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 11:43:55 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 6 May 2026 11:43:55 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.50)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 11:43:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BOXlCD5oT54hctt6yEdPQZAZ0EiNCVK1zdeIDPjbHhgunD+wHNh2icE7z7b2t2lEKoloWbS7GB08xpxSiadqVL0L+rIsh52Z667I70X0/UWhKC5STPUwu/PcjeDhQAt/flHpnBhhkKEJxyD8SUDA+ckd6ayzrps0mAgF6n23hnRw2G/AgUQVQzUcKi1aNOAfmQ/cHrMwDJ2nLi01gj4IVh88IT8xjy68VZyzcgPTTm8ICkIAvkJx3miZeGPnJ2idExPQjVP5s0dxyj9A8pAxRdrt3anCqLhfxfI03+EyyZk9Bwj0Tvn2wZlYXd40mlzUGTU3EKAoyzb75bjMRInreA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8PtooEPl4bG0EsPXqMGIC1JYIXjGFrqXv9Ib5nnjCpE=;
 b=TsjWTqEFMeV6XXQBLcsQM5K4ce8pBYr+EOgyrwJ5HqnTejxyAMkznMRQ6htKEv02M2BdezztL5AR/aeTdMXZo8FYTgLVCdVowdQjdNuGAY8tiy1FmvyaOpXgUkSubKR4UZuiUO97zeFUAJBLOg6wPWMdpvB4/a6fenp41HKj/x1RRnnO8aOSCFQiRZsAuKodVnAmQ4Tuifj8ntRl3Qr9SUMtiecEhvgKUY+tW2spfb+3VCbM3291y8COA0TyJ8rty2ceFp4ibxIfWolbFUCwkBhLA7BwfeMlv7mFtAcAVNS8/NccG0qMOSBhoeXSELQRvjVF9N8CltcZK1LYiUSbtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by MN2PR11MB4677.namprd11.prod.outlook.com (2603:10b6:208:24e::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Wed, 6 May
 2026 18:43:45 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%5]) with mapi id 15.20.9870.023; Wed, 6 May 2026
 18:43:45 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Penigalapati, Sandeep"
 <sandeep.penigalapati@intel.com>, "S, Ananth" <ananth.s@intel.com>,
 "alexander.duyck@gmail.com" <alexander.duyck@gmail.com>, "Czapnik, Lukasz"
 <lukasz.czapnik@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 10/10] ice: use ACL for
 ntuple rules that conflict with FDir
Thread-Index: AQHcyCD6milewvUOAEyRkZ1/QWBtpLYBgBQQ
Date: Wed, 6 May 2026 18:43:45 +0000
Message-ID: <LV1PR11MB8790F48ED5F1D04B0227D3E9903F2@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260409120003.2719-1-marcin.szycik@linux.intel.com>
 <20260409120003.2719-11-marcin.szycik@linux.intel.com>
In-Reply-To: <20260409120003.2719-11-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|MN2PR11MB4677:EE_
x-ms-office365-filtering-correlation-id: 4244dc29-6c74-4416-e711-08deab9f6788
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: nrd7lTHUiCehGALZwLnQsOrG3DcfazFCYM5mk09LchLONj9eEFON6MmYrziTCU38R/p+Fs9liSqfnh8gipelLa9DxGev9qcGvyPCX4/YmO5KQmt98guR4Zrf4DINIfqY5xv+FPaGwAHv6Ein7O976Pca0+m1GhHXEQ2hQqSMFqB4CSXGK5lHa7G1QU8XAXiC9wOG9l+yibk5xv3IxY3eP/oB5UfuAB9KtLcNMSzv7kO4W75pR66JgUPL8KW54ka+WZzyjZmY+5/27keF0qCp70nBqiOGKeUrirHhH/bMD2soJzkOymfe5yjKCxmEkQ52Mpvb+WuIroTVFECz74jV4gsoz9KTp+6rm61EmE2zlnHLp98aKhwHS8a/LUQqD1JWxpJsGrsVenUSeA2xPtxtei02Gv1CRbv8sP6GjoxMI1Z/MsgAuzYCcML9KYBaK+IcQQWFoor2UufEQrM1H+wpPglos4mWxEVYJxUBlwuC86yWyJMrw70hR7BiQ6VF4tA4M/bRY766dVKhAHWGCVzGA32wU6gVsB3I0SMNhNRsSUgdviHwCH4p8s0GC9ZCj7OXbNnvX05d3IU/tNeOU68p8wdEOtUfxRogRTZ1GV4NVBCdsKGTMP67ZEBnxoroDK/tYeFd/vPMXxqG2JmUIk0oqK0ceZ+g04uT6hcGFcIktUbfHcbakISLtKJery+yLFnHq7Oq0sIAgMFq40eeH0s59w2eoVmcsdvXJSlpSlfULFd7F/Y5BtDQ4+1QRhc5xsHw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4fRyx1snLJqEeT88oWO7Wl41EoJCn6YHTV21OUVlPKTjDe2ay4aW1Frm6FKD?=
 =?us-ascii?Q?Je9GucYwvmQndF1cv5ic7N1L2T66f3BgzOkaU1gNt8RFhxdJ4TrXk4Cm6Kgu?=
 =?us-ascii?Q?mLOluzKWoPlbY9IdA67aMSOA1gDHskLBy9zg96HwemCENiokq9Q7eBh+GZfl?=
 =?us-ascii?Q?KemnLTg2VWO0nl/LJ8iu180oBvBqmO11QOHmKUch7ssj3dtC8Y3XFytiNt1l?=
 =?us-ascii?Q?QIbfLtJ2knqKtYrZ7nyRhbG+M3la2u7I48iPlz0ek7/CTTT+rwiRaJ5bkT3o?=
 =?us-ascii?Q?PNnULSjtMTiN5IrdoNWPzvYyaTrRu8Hnzzcw0VTyou3AmONilH4mtLw6hhxS?=
 =?us-ascii?Q?JvnmX3dLFrNY0cLbRmbECUFkLgeSn381i6Qsh/RGA9RGfJC09tFwXPtzJkVP?=
 =?us-ascii?Q?y/I/3TvYnBdphJJ7o+uYBvXWTYHybKT45GfDkjRMuvPLyeqNZVXZuW6WQVMq?=
 =?us-ascii?Q?BvKU/O+3miwP+EP7lGYyl6I+Ny5I2R5bGlZF/viBdmaPYe9HFgcxUn2Rd2FE?=
 =?us-ascii?Q?mpg3hbmbeLwA+VciBK9QGeZCSvr8ZyPh6oJubyj+0kS/O6lIelLj19TN+3pp?=
 =?us-ascii?Q?pToD5lC5wj6tuz/JZE6BWO8xZMx4/6aaPALzzasNxtz3+vG7SYVkE58xIrl1?=
 =?us-ascii?Q?IhIEmDFlSlOJRHfnsIrLbg8R4aRoZYjy4G5vxBlrudQab3CGzNTo23nWYDST?=
 =?us-ascii?Q?gyg8Xr7/OpqU7Fr7wNi1/WdNOwiSQj5MzJwCZ/Kyx5+i5i+ScTI7BbEG9IKi?=
 =?us-ascii?Q?B+H+BAPJXTNgNvkD9r91PmnepuXzm+UIRkE93KkQhtRcyQVPPpAxKad1UrB4?=
 =?us-ascii?Q?Lj5uJlkjLGuMMZuwfPVe7ewnaR0HxsoAPODwjwzvsWxeSU4Z2x3LMVXC/d0d?=
 =?us-ascii?Q?GW+uEn30mbRbPcwCJ/X3kbIMfGaz6ijL/BP6zBiPugsBGg7mUoMu3CC3OKX4?=
 =?us-ascii?Q?nME0cgR7n2+Emm7+hwxMpUfJ6Oc4ni+EA8dI1E1iOWB+o8IIzCAELq7q7M2e?=
 =?us-ascii?Q?JGYzypgY69+VSNA9eUB9EQlnZJVcHCpr78NcIjR9JfxPwISgfSsoPs7G++mP?=
 =?us-ascii?Q?XR+y0YSPPuMb8Dtwtn43qV7MuUA6u1da8rwQjLGElszSuFEdCQFpurWRD41z?=
 =?us-ascii?Q?wW7sClsGdDfF6jTjBjmPkZNZSWkWLVeOXjt/E3XF79Ty1NysPaDdMBj4sr7A?=
 =?us-ascii?Q?Msqrc0s/sTypQ2eM5ZkbxXfQ5BW6OA75xD5PCIIUE/APre8va18ct0l6Yeac?=
 =?us-ascii?Q?Xrac1OHalSV2CtSYyCPcFggYlVV/HV6OcNNW4lpKfu6+o3ybe8pe0/UxQ498?=
 =?us-ascii?Q?MhDM/FvUTfBiEzxW9pyz4vV7RcoktV9bzinWeYoYYbUJsuaMaOTqP59vediL?=
 =?us-ascii?Q?q4TZH6WTVbCJrgl8IJjgN5kCcHfmR4caT+LtsgFjHegbd0bzveuzxEpp7R+5?=
 =?us-ascii?Q?H0lXIp5ie1jExam9+Oz2RwwArq5DYrwGrXIl1LMl7jqVgp+v/MmGYc9jDZ0J?=
 =?us-ascii?Q?Clh4l2hWBeTbfH2Uegbh06H6Mb/VH4vgZs9IO+eLmTyMdSNpNlIRewZzGoRE?=
 =?us-ascii?Q?gZ8qLg3rlhSMdl091c++lSoWAo6HPEP71JiSWtcMPIVa1uGahz28CTa6Msfr?=
 =?us-ascii?Q?1d650JNl6k6B5z1iTRNN7tRCnLmNWkEPK7IRB4pLSoHMQeJFytdffI1fJs9I?=
 =?us-ascii?Q?ZBkL26eOnQQWKCFm8em6plzQ/Dn9DnasK/XVQL7kYE7hRGvexBc7gz1XFISP?=
 =?us-ascii?Q?A3rlujmXQQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: KvVBer0LfZOOHSdqh8H3WrB/9kmg29IUdoxFEfP0vj/cmuNHW2FCzsdz6nZXkk3dWknkHT7ZrWL0lNGc0t6dpdsBmTNqTf8u72xF/RIIeeqle1nd8p7eDCfRJhxRYzBmliwgWsVwtTB6/HNf3pOqtC57ZBY3cf3NoPUdp5U73kWUcBrhC1EZXeSeXajj9PlAOT1Hd8MbbR9fVi1efuQRN/xoxwMFi7qB943CCdyCO+AUF07mt0lxGTqopOGIwfmPOInm1VsZ7IcshGdeHkBOdFcSp0PdrXG1/fzBHiGrk6XSF3luvZk9712xXx0hOJiMMY1o4QO/S0c1tRgLn0ONZA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4244dc29-6c74-4416-e711-08deab9f6788
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2026 18:43:45.7834 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0/rYcYhqZx4Nto8JjRcuI5UtMIVApPAty4yBoS+cyBhGIZS6VAFJIT75l4NJN9m5dquxlxd1iHwfOLdc1TARPjOn7/rwchYNoVNpSq4UDLQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4677
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778093040; x=1809629040;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IeNr1YLQByGNkz14rezW/xa2hfuN4+clTf8su9x/uHg=;
 b=hW0kQaotMCBr0qBfDbxNH6PjQZZX5JATofvjGChZA/GVrQu3/P35S1sR
 tjEvwvO/o8xG75iSu5yC0d+j3z3OO9uR02nivr+TMQRpLs/CNR56a+ZHu
 tkNKxTYxU8f3xIYtWpSiQSDo4I1AEdBwdKG8AR68NWRwbq+Zwdo0o8c0s
 ayj4EdryBHmcPdgBs8ajVQF7vwQuNnalwI//ILC7FC1xvokoaLbtOLHxZ
 B7pnWU3KLJtwN9pyNwpEKt0DDkYaEN7KdEjy+NItALKJyP2qOLblZsQOY
 RUjDPMwUzrErNltaxV0++zI2pQIQc1QrA0Aa4Dlct5143mSvcGmnUxq27
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hW0kQaot
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 10/10] ice: use ACL for
 ntuple rules that conflict with FDir
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
X-Rspamd-Queue-Id: 791BC4DF7B6
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [9.79 / 15.00];
	URIBL_BLACK(7.50)[osuosl.org:dkim,osuosl.org:email];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:netdev@vger.kernel.org,m:sandeep.penigalapati@intel.com,m:ananth.s@intel.com,m:alexander.duyck@gmail.com,m:lukasz.czapnik@intel.com,m:aleksandr.loktionov@intel.com,m:alexanderduyck@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.324];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	MISSING_XM_UA(0.00)[];
	R_SPF_ALLOW(0.00)[+mx];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Spam: Yes

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
arcin Szycik
> Sent: Thursday, April 9, 2026 5:00 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Penigalapati, Sandeep <sandeep.penigalapati@i=
ntel.com>; S, Ananth <ananth.s@intel.com>; alexander.duyck@gmail.com; Marci=
n Szycik <marcin.szycik@linux.intel.com>; Czapnik, > Lukasz <lukasz.czapnik=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 10/10] ice: use ACL for ntu=
ple rules that conflict with FDir
>=20
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
>=20
> Flow Director can keep only one input set per flow type. After ACL suppor=
t was added for ethtool ntuple rules, the driver still only selected ACL fo=
r rules with partial masks.
>=20
> That leaves a gap for rules with full masks that still require a differen=
t input set than the one already programmed for Flow Director.
> Such rules go through the FDir path, build a different extraction sequenc=
e and then fail because the existing FDir profile cannot be reused.
>=20
> Detect this case before programming the rule. Build the candidate IP flow=
 segment, compare it with the active non-tunneled FDir profile and, when th=
e input sets differ, offload the rule through ACL if ACL is available.
>=20
> Refactor the IP flow segment setup into a helper so the same logic can be=
 used both by the extraction-sequence configuration path and by the conflic=
t check.
>=20
> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v2:
> * Add this patch
> ---
>  .../ethernet/intel/ice/ice_ethtool_ntuple.c   | 154 ++++++++++++------
>  1 file changed, 107 insertions(+), 47 deletions(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
