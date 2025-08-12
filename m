Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 233B7B22E4A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 18:52:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E17A761B2E;
	Tue, 12 Aug 2025 16:52:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d_EcLjMtTcQp; Tue, 12 Aug 2025 16:52:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 167A161B19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755017564;
	bh=L8Q9rQJwrrMcn0K1l2PaC5O5R0gjxBALaYhtM2KA0Rg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Yn4jdjb9LURGE8UnbI2/1aB0Fk9qBgaB9Wz/8eYSk58BJQHrQwCgqr5py9PQCyMEf
	 jeKOSCSoyLh414hjXRY5NTrqhzPNBH5CY+EexpusE13k+N01eQqN6ecNfj366j2jye
	 xH0fm8RKWCbzvr0ZG+Oll6Z2V1bsIK7NmggE6FCtNjKCoqXwe/ywuci/H8Kd4pO2bl
	 lSqw1t94YrjsoLIVGA/1WJZ7ha6GxbTRGQBF2BKh5nzyJ+allbJuv06RMtwjFKiu6A
	 8E2lE5PjyEs/lXFtrTS/dee4OI60wP/TdGEy0xCzqTFs1YpUMyMV7UsW9frFVf8SLw
	 PMxMoEWZg3Cog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 167A161B19;
	Tue, 12 Aug 2025 16:52:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C4B4E183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:52:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AB369400B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:52:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fOGYlForzyT0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 16:52:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B363A40451
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B363A40451
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B363A40451
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:52:41 +0000 (UTC)
X-CSE-ConnectionGUID: QTr0VS3VR+61SEqw7FuuRw==
X-CSE-MsgGUID: ErRU86l1S/WCrlpbi9psgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="59918763"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="59918763"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 09:45:34 -0700
X-CSE-ConnectionGUID: YLM85e0YRn+j0nhsWNI0BQ==
X-CSE-MsgGUID: nKafykR1TzeFddRL21RNzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="197240926"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 09:45:33 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 12 Aug 2025 09:45:33 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 12 Aug 2025 09:45:33 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.40) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 09:45:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j7yLTNh7CC6tiCgf3WI6GJ9fyttJPSPCbqnDiDB43tgzYdk83/0GGemyT3iHcrck1gkLIQzQtmTuM1+WWRTNEh6Cfex766DhOTjpNi27qnrmRa7SDR8rRv0DcLU9TZ6jYuBeXYQ0gXbpW1tQoZa1cjZkhGV4ZtZPI7MW6Ao9vn5SGxabXGFcjvdwfFB+zF9n1k5CF4oGnhDym5Pi/bkHdL00cp2nZEnn+Ai/75o1exqCA51gA86FF5DWA4jp9fwo+MkVoteQeLtXKCDfySp9inSpMeJvNQsxbnbFpNteXts9Pn8d09IVu1j/+fgv2Ixtd+7Cibm5kH/0x6dQ6ZCSGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L8Q9rQJwrrMcn0K1l2PaC5O5R0gjxBALaYhtM2KA0Rg=;
 b=T/BAlMgZ9+EVBLwszQgml750NJUy9nbxBGK0zEzcHyuuef8Uo1Swls4JZ/u8lwXWukpVtowTirdilZ33QJOrp2k+tg/CUPEJvKJbzKEKgAGcvPiz7z4wl2x8vOLL/UAhWXYvfSKn5DbmOeeOdG0+L/nbiz0zHYDd62grLg4iwCcxpT+gFs2b/0wJB3QsUSU3PLmQbzY7WjhXXsIcuuaVwsDEIcP5H0NMaYY9CSedL2ZZasQN09FDWhOWN7X+Lyza0hKkzgs5fPe8jbYjrzYl/PVaIaWhAAaxMLJ1Uy1XYf6zNC/ATkWJRhvEChjMNjSIWX0E8G9jSmFClJpG2D/eqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by CY8PR11MB7083.namprd11.prod.outlook.com (2603:10b6:930:51::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.22; Tue, 12 Aug
 2025 16:45:30 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9009.017; Tue, 12 Aug 2025
 16:45:30 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Hay, Joshua A"
 <joshua.a.hay@intel.com>, Luigi Rizzo <lrizzo@google.com>, Brian Vazquez
 <brianvv@google.com>, "Chittim, Madhu" <madhu.chittim@intel.com>, "Loktionov, 
 Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3 4/6] idpf: replace flow
 scheduling buffer ring with buffer pool
Thread-Index: AQHb/ZLrZDVP82YpcEanIX3J6peUF7RfUecg
Date: Tue, 12 Aug 2025 16:45:30 +0000
Message-ID: <SJ1PR11MB629738204A166F965040C0D59B2BA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250725184223.4084821-1-joshua.a.hay@intel.com>
 <20250725184223.4084821-5-joshua.a.hay@intel.com>
In-Reply-To: <20250725184223.4084821-5-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|CY8PR11MB7083:EE_
x-ms-office365-filtering-correlation-id: 4a7ab949-f309-422e-2b12-08ddd9bfa649
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Z+7NfW6SBdvsezztYJ1cg07nOEeoo6Emp5fYA/ZHbKEjPoCHPqpAvHivybuO?=
 =?us-ascii?Q?B+qXLgf5HlXoxj6mAegBL9uQ0t9AZe8M/0hjEz3+K0e7tnzE8ahy5ZqTSwR6?=
 =?us-ascii?Q?mokuRklTDEOhq6m2nETKCLolHRuMRoVuPinur0qEleFgAdpIsd9QxMMiOQvJ?=
 =?us-ascii?Q?6TnehKj5w87N7lJyEiH8NNmil7DtR92H+IiBCUyfHGJGOQ9YCKI4Mu1oFV1s?=
 =?us-ascii?Q?JuN8QSGqpuHWrQGg4o0cOdqrxxDMNOijVyN38Gq9U8rFR0LmtBjfuZAHm647?=
 =?us-ascii?Q?3DSHGozxqeXb7eJdu9a5ZBCTyY09VxFgEByusPuRJsYeoupzTd/rt9ztRz+b?=
 =?us-ascii?Q?Myh41XthIq1s57Ek+80YuDcA/lYdoFLpIa8EcLL52EgkP+CCFsqvPAQhtdc/?=
 =?us-ascii?Q?rA5gqUGAZZQUAhuznxE/1ILIol/0+nXZ1/kKWZqANExWMnp+5sSCXuUbMxCd?=
 =?us-ascii?Q?b62r6ei3BjFWTPiqoTglnQy39ZQhC+e9GgNNBZdH6n7939LuZydseZgs/T37?=
 =?us-ascii?Q?fWIqElRbBVkesyM6yOcFTv29qSsBfZI689DyLwjTTxTPkjl+sOTJ0nGia6qu?=
 =?us-ascii?Q?n/tPc3Ndy0NUk6g0qSvTsN/HDvjhwiTk/o/sW0TPvLYvujXdD188gd181xwV?=
 =?us-ascii?Q?GewYYxeu3v5ZS2cCTR0o6gbYbpzJHQIdXlGqvmqgBoGEB1Ppp5YQHIkgIRry?=
 =?us-ascii?Q?X2HDDIsC1zpfOWJhZstCrMKY5Vc/dPe8JFsS5cXBKHIPRrGEpEkuvFb0an0T?=
 =?us-ascii?Q?9nswHFVPnMCJhmxMN4/czap9I/CwTyjx8hrpwyQCM6UrbHc38SyAOMYcOVT7?=
 =?us-ascii?Q?hTOy9j29KPAXL7uExm6xT6Z7GVMEjZ9Fi6fAwlWLhvW9lYiEKrRoa9go5Ge6?=
 =?us-ascii?Q?mgV8zrKUwVGHpL0tzE5iyJ/hffK1doJPP/i4KDxl/oopNF90jI9/KsjNRtHi?=
 =?us-ascii?Q?Dvzb4zEVC7qpHfsIqQVe9opjHunV43HIFohhZw01X2sttgsJ+HBKzoTa4q2P?=
 =?us-ascii?Q?xR9hdKVfWfCRPLn4ZNwY3fGpWhj1hSt68TbFE7V+Scn3VtK9PGcyYRgjo4ns?=
 =?us-ascii?Q?gBtCIadQ3BY269fCFGc1wH+8qIwcYVwMom7fhjCezIiH8lVUy7/U9UGKnl5e?=
 =?us-ascii?Q?MZrnoGm/9QNcS74z1NYvs27Qgio0saWENUpUr19qRQLEmU6K8j2E00cYFJDm?=
 =?us-ascii?Q?Zth4fHYAp/TkaPLP/dIwV5Um5oen4sfV5skMh+xaVGUkHzGWxyrcUI5XgTlf?=
 =?us-ascii?Q?IkmkEOZ+DtaMmjmPEIyqiNTyBkktGfPlcidfEZ6LuNPQUUu2a5evdbs8NwB6?=
 =?us-ascii?Q?TOvJH/onItlhPocYyl0wa4n8qUQwpn6XGIAwp0NyK7f5XmLuUIn6BlsaR+W8?=
 =?us-ascii?Q?H535oYVm2Fs7l5Fth5au56Kht2q8jzwxkMxQbtyerh5Wh6lugFftKMAUFSCI?=
 =?us-ascii?Q?yq5ezyCtI7l+BnWAj+sB8bn8xkLOCYWpRZ3parhalgFtx47qTAqrKV1SRnaH?=
 =?us-ascii?Q?LmzqsQ/0Mcqi9zo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?msAJqkBzsrV5D/eqaH/rNLxw4zfHOQooEDwpySPCMJVrT2Y3EoXCBNJ0DnXN?=
 =?us-ascii?Q?ALT2rsE1sHZK7xaluOv/Q20JX7opm8dqiQ+ErL1axG31l1ahRsMqdc8az/te?=
 =?us-ascii?Q?wY/Ek/WyT/KHdfzLBv25ZK/dVClRJCyoR7mtYmdo56QXozQVHrvJRkFJAtE3?=
 =?us-ascii?Q?cc/QGpB9KyC8EvU5UjaVNoxzq7T7DohSCiFZ7XuhVivBXpcIxCKumh5jwx+l?=
 =?us-ascii?Q?+zaF98lCWtvzTDNmq4bZDI8ntfKGM/T9ZQJ/noJkgvgvMCfTR5PVN6wNCUiL?=
 =?us-ascii?Q?AdMemXWg+a6xEuns+vvPeJMflpwXFpaqXqO+xtGt8DQ6j0smqQtKZJF8bfOm?=
 =?us-ascii?Q?KaJPc9KvWrKkb1RfgWLtxoNCr94jFVmtb4ZdTaUKtS19gZjeEa8Ey0OGWiZR?=
 =?us-ascii?Q?MhDP7QT49o+/Xd6DZiKrC13J5HLJkuYb97gY9GIDYmJOhCy1y4TiQk81xZ/C?=
 =?us-ascii?Q?26VWxHHLyfDkpGKB56Q4beKC/4U73v6Uud/MnohduK9PAAQvihMP0LgPNJCd?=
 =?us-ascii?Q?9ODYbq8C00hy+tmWaBtFgdssHgGpm5FHAC9i9B2eZl7JRI3lgrR7a+XSHXff?=
 =?us-ascii?Q?WPkgHT5TkrwZXDM9uP9vx/ijx1RBA2S7cR98+OspYr6n+glwxs9tUkzsjzY6?=
 =?us-ascii?Q?uXK7sy7kudQIcVU3bEZNkya9vZwyoaPQ9z27O8GANu8AwCoo+S4WhFLdb+mY?=
 =?us-ascii?Q?EJn4iF9rVfjaR8Du/KKIMmGeJKOdrc+U+bwFSbfZIUwHTdza51mNyzk6ys1x?=
 =?us-ascii?Q?Tf8dce3MvHYlvVfJpddqO98+bnAYpfA10s2/FhpPDxCZirSqjJb5Ppy4Rc4h?=
 =?us-ascii?Q?xCGNbQN+mXX12ZZrbMWKOLkWXPRZ1f9U2IuI0F0osMdtJyNh/SiqJ2FiJEUB?=
 =?us-ascii?Q?ZfTLvFU3X7ouu7S8HEosXsywLzbgY2euJ5h3M45/ZsWd+xZ3QSjXb2iUTyYC?=
 =?us-ascii?Q?DOmUQ8oNThqXhr7O6/xoYDhNRhqb72vSB12yTeqfWktd4nFzKEi6Mma+LXWU?=
 =?us-ascii?Q?NxLijMXPFrlk3ecgOm+Uem4kOAZAiul1wHgRxxRut13HfLZwoAT/d9cOA958?=
 =?us-ascii?Q?rRbfcZ3IBrz5iz82QYy1buYGPuOALLNH3JpmXKmmRXeY+bXmNpYMlQ9Ds6Fx?=
 =?us-ascii?Q?vKv5qoizpPXFbW2nN8GAS+pi1RX71tP7KA3vdOHR/k6lzJPSe/NuTao1d4TL?=
 =?us-ascii?Q?Gq9aSKhWnT7hPrZ8+boY5HXEMLQIO/MBc6rxQtK05nc1Qa+UoSDZVGOGMjvO?=
 =?us-ascii?Q?HqX568RMJICv3A2uQIVg1Fuy7yDyyUaxLnBQNzUxCc3Z0648fFw3HD2eowEW?=
 =?us-ascii?Q?0RPbf2GzUyM6tsqOqE7FUTPhY2VvbfdlUPc/CR2URTFysiiDGzFkCKKUOobI?=
 =?us-ascii?Q?IRhun/NYZTqR4pdSwTdMM/sYfr+3h6MT6WduPqMdN87WDLrpLogIh+GipfFj?=
 =?us-ascii?Q?mvuCC4hXi3Z76uNRCKEQ6GChiMgA1ysZHBOhaieYpiG4M5zxmPoBcyXMGxv+?=
 =?us-ascii?Q?SXmGXLMFyesYp94pPu5ytTorByou6a+1cZT09mRcASOQeqfyuM1yrHgNsqct?=
 =?us-ascii?Q?PIZHjQbqeDSa5lT/dwE+H/slgQzK3Q2l5oc3w1p0?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a7ab949-f309-422e-2b12-08ddd9bfa649
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2025 16:45:30.7682 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fgwyyBkhrv0F5/1lgk8P3BPm4BQDocQWGmSY6s/RO049vasONzrFDMZbuEg1hf75Sa+NZXkndScvio4dgHE0wg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7083
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755017562; x=1786553562;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KkGdZ/jzZkOMzCGi6UAOby0VdS0F6ETna5KhrjiMf/c=;
 b=FxGwpntCaSEBsx3/rw5UUVoSLMfBW3sodgxYTXtSYiL9M/rfvno5hZ5g
 y3Y842oe6HhZlmyofwKT3tixX2bSkFWmnwkoKThzVwipzqga50LXOv2/x
 TYeMwn97OiGnEm8xMpZJrd3oMyQ//Ziwc33bbFwmt6igTKSK41uD1DA4H
 VgmUIv2YGeUipRyL10c+zDqtVMr8q/YydmdBuGMU+eRqi3zsMmuzNFaaK
 /M1Scy07vZqm99SarbSmKpADTQ/vEpEuSxAnPN1AvOU0tbq2pYHf86Wam
 6gENNocCsMdh2dGFxRGBqWPYOOnlLCpj0MmgchnJL68U4ks+/txMHE8AC
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FxGwpntC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 4/6] idpf: replace flow
 scheduling buffer ring with buffer pool
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
> Joshua Hay
> Sent: Friday, July 25, 2025 11:42 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Hay, Joshua A <joshua.a.hay@intel.com>; Luigi
> Rizzo <lrizzo@google.com>; Brian Vazquez <brianvv@google.com>; Chittim,
> Madhu <madhu.chittim@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v3 4/6] idpf: replace flow sche=
duling
> buffer ring with buffer pool
>=20
> Replace the TxQ buffer ring with one large pool/array of buffers (only fo=
r flow
> scheduling). This eliminates the tag generation and makes it impossible f=
or a
> tag to be associated with more than one packet.
>=20
> The completion tag passed to HW through the descriptor is the index into =
the
> array. That same completion tag is posted back to the driver in the compl=
etion
> descriptor, and used to index into the array to quickly retrieve the buff=
er
> during cleaning.  In this way, the tags are treated as a fix sized resour=
ce. If all
> tags are in use, no more packets can be sent on that particular queue (un=
til
> some are freed up). The tag pool size is 64K since the completion tag wid=
th is
> 16 bits.
>=20
> For each packet, the driver pulls a free tag from the refillq to get the =
next free
> buffer index. When cleaning is complete, the tag is posted back to the re=
fillq. A
> multi-frag packet spans multiple buffers in the driver, therefore it uses=
 multiple
> buffer indexes/tags from the pool.
> Each frag pulls from the refillq to get the next free buffer index.
> These are tracked in a next_buf field that replaces the completion tag fi=
eld in
> the buffer struct. This chains the buffers together so that the packet ca=
n be
> cleaned from the starting completion tag taken from the completion
> descriptor, then from the next_buf field for each subsequent buffer.
>=20
> In case of a dma_mapping_error occurs or the refillq runs out of free buf=
_ids,
> the packet will execute the rollback error path. This unmaps any buffers
> previously mapped for the packet. Since several free buf_ids could have
> already been pulled from the refillq, we need to restore its original sta=
te as
> well. Otherwise, the buf_ids/tags will be leaked and not used again until=
 the
> queue is reallocated.
>=20
> Descriptor completions only advance the descriptor ring index to "clean"
> the descriptors. The packet completions only clean the buffers associated=
 with
> the given packet completion tag and do not update the descriptor ring ind=
ex.
>=20
> When operating in queue based scheduling mode, the array still acts as a =
ring
> and will only have TxQ descriptor count entries. The tx_bufs are still as=
sociated
> 1:1 with the descriptor ring entries and we can use the conventional inde=
xing
> mechanisms.
>=20
> Fixes: c2d548cad150 ("idpf: add TX splitq napi poll support")
> Signed-off-by: Luigi Rizzo <lrizzo@google.com>
> Signed-off-by: Brian Vazquez <brianvv@google.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v3:
> - remove unreachable code
>=20
> v2:
> - removed unused buf_size
> - miscellaneous cleanup based on changes to prior patches and addition
>   of packet rollback changes patch
> - refactor packet rollback logic to iterate through chained bufs
> - add refillq state restore if rollback occurs
> ---
> 2.39.2

Tested-by: Samuel Salin <Samuel.salin@intel.com>
