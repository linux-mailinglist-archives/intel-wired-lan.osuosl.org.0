Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4620096B2B7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 09:21:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0ECC140293;
	Wed,  4 Sep 2024 07:21:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wwxWMIvfhrSU; Wed,  4 Sep 2024 07:21:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B3E264018C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725434512;
	bh=9Bbon+7lsXPbJj9mKuCxAynbIy/zy9VYzz2sYAavyJA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8A2MPap4ecA0/c2FUvLeict5fjj/24KmXQEAKjV/EcIU7IqB0xzJQlTInt4hpUONA
	 dChiPf1R5KMEDSJ4qcHlga9czDeWubWO4epDF6TsDKsEDtbDVneMkx20DKHv54FVb4
	 hDwB2hu+iWAdw7P1lWppAUzQTPkYcGQrisvOwPRFr2TwX2hpWOWdBdXymzADhj9r/e
	 PIRrKhGVU4ylR72rBDAL2ZkEhLjYOkzAstqDwxkRP3v1qxrtG7hOp3ls8K8Zy9DLB3
	 HHSCfvf6pM+CH2G7praeSr1bRdLG4q0wY6DR0tdmbuXyRe8lfVmv/zREVhTiIT0aJp
	 Maz+BfxQX0cQA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B3E264018C;
	Wed,  4 Sep 2024 07:21:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 381841BF356
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 07:21:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 24947605D8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 07:21:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3qPQjgyRxXRW for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 07:21:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D20A7605C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D20A7605C6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D20A7605C6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 07:21:47 +0000 (UTC)
X-CSE-ConnectionGUID: Ia+98IGtThmT8G/gtuHLXw==
X-CSE-MsgGUID: m34qyt1IRvSl3dsIJTTFPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="24263150"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="24263150"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 00:21:47 -0700
X-CSE-ConnectionGUID: i3YjKxczT0ON+rLQZ2t8BQ==
X-CSE-MsgGUID: veEPWoO/RPCRVc3wC3LG1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="88420144"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 00:21:46 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 00:21:46 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 00:21:46 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 00:21:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o10XrfDcXfai2IjB1M08CPyoXvvPZZkgYBHuLjDIAcj+gr5aD94yVPEEK/We89Tcbb5f0Nsy/fczoVwsO0k/8x5KhyNN+ydCSEaqJAKgst0/LusuG9/RunPqNv3ZJTtfkM+cg8DjHCKtDPhv/tjri9sPFJE3Mtg1WR7VABICSwkChkhMW2A+a7gPPQQcr95GPToMsipbTj9byT5HZ6rsXKk0OK9Ee0yOzL91aAuXHvU3YwAqBXZ7RFkrgG8xQnj0hy0M/9CI76hPyelBDYpP26AC4RGAikVoA7nbq/Q1R4cnJQyixLWC6JicooVFjygkJm2Z/2FN7y/1gTlykRWQVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9Bbon+7lsXPbJj9mKuCxAynbIy/zy9VYzz2sYAavyJA=;
 b=v8RAxLQjzAnpikAiJp7a7WPBPSNOsKbRCbhZcZWx1fMF1VePEUlnZAqmcdaYscSSOdOsHCxksNRrPcrCk8oUXQsiJHFd8b/Icc4c/Od1SX6+THI2fEncgFg36OtSBZUWVMeXNvw+qpsXC8hGTkDefQj2WhZyklCEpwnJzoKjdXvGWH70e6+dcajMOZ6FwNWC/cddhIlklWaKJJykR5tRb9EC9buJYTZ+DJ1WM3jXFrCuL88WZoMu/fOTs+a51dzqYmdNgrNvxR9AtAbqxllyLifOxKKYf6GMK8tI6a2NRFkiix5fMYmTwuVreFUB6CGOSG3g/AWpmVJTKoiMbJDtmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by CY5PR11MB6257.namprd11.prod.outlook.com (2603:10b6:930:26::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Wed, 4 Sep
 2024 07:21:26 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%3]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 07:21:26 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kamal Heib <kheib@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix trying to free
 already-freed IRQ
Thread-Index: AQHa/i7RxdH0urwtMk+HoNwXIeffrbJHONPg
Date: Wed, 4 Sep 2024 07:21:26 +0000
Message-ID: <SJ0PR11MB58661B0C2D668E528D0290E5E59C2@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20240903182555.1253466-1-kheib@redhat.com>
In-Reply-To: <20240903182555.1253466-1-kheib@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|CY5PR11MB6257:EE_
x-ms-office365-filtering-correlation-id: aad1a54f-9d87-46a8-bbdf-08dcccb23021
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?L0753354BbZcpPhGR04owWgylaoq+k6bjkWosQAWE6NITZlzhY0aNJiOx9fw?=
 =?us-ascii?Q?52QYKfJPVr/Tz1l93oUQPrsJOUh2IXwb2idbvDsbgkt82V2aFpbIRXRB2/I5?=
 =?us-ascii?Q?cs4wVj8JmnIclPZWnDt/MReh5J0WB6D9m+XuUwL4wLuLOHr5Kr/+NYvrPiPE?=
 =?us-ascii?Q?qqRSylFfH79uaJMwmfNNs0fUT/zpsSxaUbICeYheUbznw1Zblt0gu1qCGYq8?=
 =?us-ascii?Q?jHHsd2dvU+XYdMew37KieHm6kD4h5PODh5nJJilsxK29gNhGHfJP1SF2dtUn?=
 =?us-ascii?Q?Sz1Vu6zUyN2K2v1yi3mlDLGLpHNxR7qtQM5Eaa3SLVAPpmD9Cxx0eS6unwNy?=
 =?us-ascii?Q?Cy90FDJ9D5IRtwFNuz04r+5Qro+xTdnM+vGtcPgLNBonREqWDCg1yO9eUv8S?=
 =?us-ascii?Q?NXDqFlHHREx4fG61w+p3EDuK+50tJXCfLJWADzwElfBaxGUJmmTNTuIVD+cx?=
 =?us-ascii?Q?USId6ZLz2zMq0FJikXqJ1d+6z+GW9LPpaO8yzTWwW0vVK9cpUjfgLTF9iva6?=
 =?us-ascii?Q?XrvVXoe2/vdEIFCVnxvc+wKYy9IYFx4szcK7QXcuGuZGhza4rogVuP9GTGia?=
 =?us-ascii?Q?AoPJIQ2fGdrM2jIb7g1OmLclcskw+EylnmCmPkzC+GuxWSj8O3spihges8/l?=
 =?us-ascii?Q?617xPTF9YsBdJycBLV5tbKk99D2kGgrXlhaXSqNK062bMlVp4qMpPSG2Xlkt?=
 =?us-ascii?Q?hdnI50RYBcGjCCdkkmhK+1O1Otcv7x/NFxz5jotyQwnLesWWGYFlIzWkz24W?=
 =?us-ascii?Q?nO3JSHhmLK1zanEZ43i+YpghZ0WsxSLCuTIcH+AcEgsGiBFHeb1qz/AJ70yE?=
 =?us-ascii?Q?wsvga/nbeJeAiS6uq1E+yYz4hs56zLKVLC7m4Gf8GXi94qIRybuqQPhMqv9f?=
 =?us-ascii?Q?mhxWvoZJ70Coo546X5pSlJhpEa1u55t8HdZlIhxyImgEhVN7XpDgez7D1Z6C?=
 =?us-ascii?Q?gKJi2SIkyj8hLK618NCtnXC3slU6SGcFBhcE+KUH5d3xBZayNr+eBj8xzJY9?=
 =?us-ascii?Q?6WjrzuaVrRzksYf5JK+J3wpSltPMwfiB66V0OuJ1QJWh0slZr9UNkp1F05is?=
 =?us-ascii?Q?+ZFf2HtgMjZBf6i5w69Z5NNyvAjEY1RBxqQ9Bv27rner8ZPsGI/J8yQCEyUT?=
 =?us-ascii?Q?ySDBrX7quFjaWWXRSunscAQCytA57F5dpMR0FsGEu4OfvGTMgpSfqHnYdPMq?=
 =?us-ascii?Q?1NpgOGhaPBfv+cxTI4lb+qlX6QuNXXbLyg6kBpADb1OhifmDRGHfd4XVWfKG?=
 =?us-ascii?Q?cwcWobJO19m9kPzSf+fd6I6pAzG0faa5Wk/0rcH4R3HDWL7kX8EmQuqgljFX?=
 =?us-ascii?Q?TSDurVxJ/Mn9MMKoad7BK75heRV7/AVmZj4KIBqUY9Sxh2psYqNnqcXw8wsk?=
 =?us-ascii?Q?V+Yf937Xl2MvKB2t5+N/gEbiJh6Rg/Q+uwVfxdDxClIrUwrrcg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qdaalVPIAbK41ktPsD46HJPXZKjEHU67kEfYGEjqVtbUTcaP4tx+1x583eW+?=
 =?us-ascii?Q?hRpU7+3UFkgzP1wBFvMnySoc+7l+N2yaGIu+D062iAfueTXkPJUrISxYZdoD?=
 =?us-ascii?Q?iCDQmbrolnJridgEPxKrKGaUd3IuD4jO3hoMY0FLWa4X685Yyu/TNcDHN/+D?=
 =?us-ascii?Q?NtRMePGEBLmCf9As1mcOJu30d6uVvKC5DQDCN20csqGbsHtPm9y33nr8MGad?=
 =?us-ascii?Q?AMPEHi5ygg/aKSPuw75J97EplQgfWSpj4nYOT0STb3MSYyRHNugb+wVduNeW?=
 =?us-ascii?Q?OgpB5vJ+5SzTWfTxakSA4wyW40PR1KFmd91XGHOq8Hv0DAZjVrx2cMcZ/f2p?=
 =?us-ascii?Q?KdWTSkbj9l0uBJczErCUEXNaoYCOB+/5Ey4ZCgcaK9oIBlbgPAjSs31R/nAP?=
 =?us-ascii?Q?qsVSgjVKqdjPFuRU4kjv1ecQaQvp1kB/z8JZ7aFqV2eOvjC7LBNYHlF0eqQl?=
 =?us-ascii?Q?LeRTxifo8gjwHYRXM6wen1FighS2cbaHVqNXp2sdLHe1fGr0eZcbrEg5s9Zm?=
 =?us-ascii?Q?t5cUOKEeQU/P3wD7rZgV7jbnZUfs89Crx9wc1D/qu7NR2hYq7rFLDMM+ElNr?=
 =?us-ascii?Q?bn3oG4oOI001ryckzWyEHG8yx+51SkidgaICBV8LcDPc2hNYndpbCQzDNabG?=
 =?us-ascii?Q?AFe8oYZ9VHZX/QjBxVGhoJKJjHJVFZnIINe0zhsOMAOKm1718e+uYdvmVdeI?=
 =?us-ascii?Q?C4882op3bxu3DwTTOmJQJhC9b8J+keoYHTKQBlkeFCgsbf89tqGHIZIepnfI?=
 =?us-ascii?Q?nnKMphdWF9pqzBD4X6hLXyJHfWCjJ/bZrZD28j0eD8H3YolWx0ojgm06hqH4?=
 =?us-ascii?Q?gXkm7g8zB1z84yy7DEuJ/XVYXCjIVvRAXfme496YqwD2K737rCJmg+JYKug1?=
 =?us-ascii?Q?mG7Z3TuozQ4vqoyUYbp1qPoxMAJRxN/1yhX3R+XtJajbDO1aCxtfEs+67L30?=
 =?us-ascii?Q?MQr7EW85iYLbmFeNDNRyOnWaVYmX7EW8bqqqoDFWYPGTU3gfjrNR6q/xmnKx?=
 =?us-ascii?Q?lCxsyDT/++wW5z7wzUn6WPNFJWt1dPE5dX0vzE0yuJUb6kHYD8vCVSzm4ogV?=
 =?us-ascii?Q?q1uMxy1hIzsBv9MXIHUDlGS97phn4mjcwBDmtDL9b9y+u/eJybGo/FOKsgio?=
 =?us-ascii?Q?kcBQIAwW0ibPjv62KU66qDbaCHzTlKbuovdgVonv+86a2goW9ywyIFXBmoAp?=
 =?us-ascii?Q?vH8j1GRC2x49j77vAlU2T9KLdD/LVt/YCFgXA3jW0eE/TjtunmkI8RiFh1u1?=
 =?us-ascii?Q?fCY56OM7Sg5B+3+rf4c7K4CjchB2Yi8fDEEI1WoI2VCmgdxM6lltaBLa55kT?=
 =?us-ascii?Q?wnWTVsE1cU7lJKu87gH09pO1c3sPqT5tngKjKx2v+MXuRpnqd0S8ydv2W3cL?=
 =?us-ascii?Q?4LH+Vy1uAnVdkkerQJ6ONdq/wFLvOlxjGvhV1HiyZ7WWilXDNJ5bQj/Pe8jb?=
 =?us-ascii?Q?jb3AYoS0cs/J3pXDUbI9bWlRWU/LuMcTpYxZoGkl9HjBFI7KnKojo2N2TKAj?=
 =?us-ascii?Q?Pq6ExN1VQrgW0AkKnh9HVw/NuK+O25BDF3ZqC9LHh3vXjt33oQvsvCIzu9E3?=
 =?us-ascii?Q?rk34w12aeP18KEi1BDuWQ4BmvFj+lvnVaVe9EML6mnf6t9yuPsdm8LC8l/iz?=
 =?us-ascii?Q?eA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aad1a54f-9d87-46a8-bbdf-08dcccb23021
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2024 07:21:26.3003 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TMoRyacGg+/yAVdy6bV0Rs2lXhbGeLYz+lxsIsthqiAC6Sn2E9dgUZ2hhvolUsjqFPOUZFryKmw+9fieaGKAL13JEn0UYacIQuuRocfYEVY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6257
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725434508; x=1756970508;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4iO5W8i0Z23E6tc2CRjbs4MWfCwrGuKyZ+7yxBlX6Rc=;
 b=cSakLsuNr9n5dKmVnEYHsVDOuUE5pyy7PxHi1lFf/cFtc/OeJlgaZaci
 vLC5DCsQFuW3DCn27vps9n0qkpndBU4N+TG+4q1ks4qrqjUUITYJWt5p2
 DDGy7/c4who1e8b/KRDh7bkl2erqEU/roerxRTnHzVtTJtGLBnDOukjoN
 JdZ9x/4ezrMxujcSPSY3+fGVmQgglMBvNCQY2NRePWAOBZespYb+npUPE
 aAR69W2nkFwULCUIRe9WaWwdUzPdNggqM+bH+RYFpnuFerBUyPDBxtxrs
 K76RKEo4ZN50RkBUW86ZBvHaBW4lR/2xyBodg14EgRZS5fPW0jphn+MDP
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cSakLsuN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix trying to free
 already-freed IRQ
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: ivecera <ivecera@redhat.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 YangHang Liu <yanghliu@redhat.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Kamal Heib
> Sent: Tuesday, September 3, 2024 8:26 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: ivecera <ivecera@redhat.com>; YangHang Liu <yanghliu@redhat.com>;
> netdev@vger.kernel.org; Kamal Heib <kheib@redhat.com>; Nguyen, Anthony
> L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Jakub Kicinski <kuba@kernel.org>;
> Paolo Abeni <pabeni@redhat.com>; David S . Miller
> <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix trying to free
> already-freed IRQ
>=20
> Avoid the following warning when trying to free an already freed IRQ,
> The issue happens when trying to call i40e_remove() twice from two
> different contexts which will lead to calling i40e_vsi_free_irq()
> twice, Fix the issue by using a flag to mark that the IRQ has already
> been freed.
>=20
> i40e 0000:07:00.0: i40e_ptp_stop: removed PHC on enp7s0 ------------[
> cut here ]------------ Trying to free already-free IRQ 0
> WARNING: CPU: 2 PID: 12 at kernel/irq/manage.c:1868
> __free_irq+0x1e3/0x350 Modules linked in: nft_fib_inet nft_fib_ipv4
> nft_fib_ipv6 nft_fib nft_reject_inet nf_reject_ipv4 nf_reject_ipv6
> nft_reject nft_ct nft_chain_nat nf_nat nf_conntrack nf_defrag_ipv6
> nf_defrag_ipv4 rfkill ip_set nf_tables nfnetlink vfat fat
> intel_rapl_msr intel_rapl_common kvm_amd ccp iTCO_wdt
> iTCO_vendor_support kvm i2c_i801 pcspkr i40e lpc_ich virtio_gpu
> i2c_smbus virtio_dma_buf drm_shmem_helper drm_kms_helper
> virtio_balloon joydev drm fuse xfs libcrc32c ahci crct10dif_pclmul
> libahci crc32_pclmul crc32c_intel virtio_net libata virtio_blk
> ghash_clmulni_intel net_failover virtio_console failover serio_raw
> dm_mirror dm_region_hash dm_log dm_mod
> CPU: 2 PID: 12 Comm: kworker/u16:1 Kdump: loaded Not tainted 5.14.0-
> 478.el9.x86_64 #1 Hardware name: Red Hat KVM/RHEL, BIOS edk2-20240524-
> 1.el9 05/24/2024
> Workqueue: kacpi_hotplug acpi_hotplug_work_fn
> RIP: 0010:__free_irq+0x1e3/0x350
> Code: 00 00 48 8b bb a8 01 00 00 e8 09 74 02 00 49 8b 7c 24 30 e8 8f
> 7c 1d 00 eb 35 8b 74 24 04 48 c7 c7 50 a3 61 92 e8 cd 99 f6 ff <0f> 0b
> 4c 89 fe 48 89 ef e8 30 aa b3 00 48 8b 43 40 48 8b 40 78 48
> RSP: 0018:ffffb971c0077ac8 EFLAGS: 00010086
> RAX: 0000000000000000 RBX: ffff8b594193ee00 RCX: 0000000000000027
> RDX: 0000000000000027 RSI: 00000000ffff7fff RDI: ffff8b59bcf208c8
> RBP: ffff8b594193eec4 R08: 0000000000000000 R09: ffffb971c0077970
> R10: ffffb971c0077968 R11: ffffffff931e7c28 R12: ffff8b5944946000
> R13: ffff8b594193ef80 R14: ffff8b5944946000 R15: 0000000000000246
> FS:  0000000000000000(0000) GS:ffff8b59bcf00000(0000)
> knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 00007f11eb064000 CR3: 000000000ad40004 CR4: 0000000000770ef0
> PKRU: 55555554
> Call Trace:
>  <TASK>
>  ? srso_alias_return_thunk+0x5/0xfbef5
>  ? show_trace_log_lvl+0x26e/0x2df
>  ? show_trace_log_lvl+0x26e/0x2df
>  ? free_irq+0x33/0x70
>  ? __free_irq+0x1e3/0x350
>  ? __warn+0x7e/0xd0
>  ? __free_irq+0x1e3/0x350
>  ? report_bug+0x100/0x140
>  ? srso_alias_return_thunk+0x5/0xfbef5
>  ? handle_bug+0x3c/0x70
>  ? exc_invalid_op+0x14/0x70
>  ? asm_exc_invalid_op+0x16/0x20
>  ? __free_irq+0x1e3/0x350
>  ? __free_irq+0x1e3/0x350
>  free_irq+0x33/0x70
>  i40e_vsi_free_irq+0x19e/0x220 [i40e]
>  i40e_vsi_close+0x2b/0xc0 [i40e]
>  i40e_close+0x11/0x20 [i40e]
>  __dev_close_many+0x9e/0x110
>  dev_close_many+0x8b/0x140
>  ? srso_alias_return_thunk+0x5/0xfbef5
>  ? free_pcppages_bulk+0xee/0x290
>  unregister_netdevice_many_notify+0x162/0x690
>  ? srso_alias_return_thunk+0x5/0xfbef5
>  ? free_unref_page_commit+0x19a/0x310
>  unregister_netdevice_queue+0xd3/0x110
>  unregister_netdev+0x18/0x20
>  i40e_vsi_release+0x84/0x2e0 [i40e]
>  ? srso_alias_return_thunk+0x5/0xfbef5
>  i40e_remove+0x15c/0x430 [i40e]
>  pci_device_remove+0x3e/0xb0
>  device_release_driver_internal+0x193/0x200
>  pci_stop_bus_device+0x6c/0x90
>  pci_stop_and_remove_bus_device+0xe/0x20
>  disable_slot+0x49/0x90
>  acpiphp_disable_and_eject_slot+0x15/0x90
>  hotplug_event+0xea/0x210
>  ? __pfx_acpiphp_hotplug_notify+0x10/0x10
>  acpiphp_hotplug_notify+0x22/0x80
>  ? __pfx_acpiphp_hotplug_notify+0x10/0x10
>  acpi_device_hotplug+0xb8/0x210
>  acpi_hotplug_work_fn+0x1a/0x30
>  process_one_work+0x197/0x380
>  worker_thread+0x2fe/0x410
>  ? __pfx_worker_thread+0x10/0x10
>  kthread+0xe0/0x100
>  ? __pfx_kthread+0x10/0x10
>  ret_from_fork+0x2c/0x50
>  </TASK>
> ---[ end trace 0000000000000000 ]---
>=20
> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Tested-by: YangHang Liu <yanghliu@redhat.com>
> Signed-off-by: Kamal Heib <kheib@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h      | 1 +
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 8 ++++++++
>  2 files changed, 9 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
> b/drivers/net/ethernet/intel/i40e/i40e.h
> index d546567e0286..910415116995 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -865,6 +865,7 @@ struct i40e_vsi {
>  	int num_q_vectors;
>  	int base_vector;
>  	bool irqs_ready;
> +	bool legacy_msi_irq_ready;
I'm against it.
Why to create additional entity at all? Especially plain bool whis is race =
condition prone?
Why not use test and clear existing (I40E_FLAG_MSIX_ENA, pf->flags)?

>=20
>  	u16 seid;		/* HW index of this VSI (absolute index) */
>  	u16 id;			/* VSI number */
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index cbcfada7b357..b39004a42df2 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -4630,6 +4630,9 @@ static int i40e_vsi_request_irq(struct i40e_vsi
> *vsi, char *basename)
>  	if (err)
>  		dev_info(&pf->pdev->dev, "request_irq failed, Error %d\n",
> err);
>=20
> +	if (!test_bit(I40E_FLAG_MSIX_ENA, pf->flags) && !err)
> +		vsi->legacy_msi_irq_ready =3D true;
> +
>  	return err;
>  }
>=20
> @@ -5061,6 +5064,10 @@ static void i40e_vsi_free_irq(struct i40e_vsi
> *vsi)
>  			}
>  		}
>  	} else {
> +		if (!vsi->legacy_msi_irq_ready)
> +			return;
It's a race!

> +
> +		vsi->legacy_msi_irq_ready =3D false;
>  		free_irq(pf->pdev->irq, pf);
>=20
>  		val =3D rd32(hw, I40E_PFINT_LNKLST0);
> @@ -11519,6 +11526,7 @@ static int i40e_vsi_mem_alloc(struct i40e_pf
> *pf, enum i40e_vsi_type type)
>  	vsi->work_limit =3D I40E_DEFAULT_IRQ_WORK;
>  	hash_init(vsi->mac_filter_hash);
>  	vsi->irqs_ready =3D false;
> +	vsi->legacy_msi_irq_ready =3D false;
It's a race!

>=20
>  	if (type =3D=3D I40E_VSI_MAIN) {
>  		vsi->af_xdp_zc_qps =3D bitmap_zalloc(pf->num_lan_qps,
> GFP_KERNEL);
> --
> 2.46.0

