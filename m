Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A078D20FB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 18:00:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B285C4155F;
	Tue, 28 May 2024 16:00:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4bCepmZhihHC; Tue, 28 May 2024 16:00:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED0A541557
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716912049;
	bh=3+NoHKfSo2XYP6Kono4d2qoU+WHK3EWJSciR6ug4hek=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=THjwauE2WN6eYnT2qqotRLgpKKncPSsK/9n6jvjze6SNyzQQk0v+Yi7dkJAkbxydo
	 dnKGqLqWyqvrJcYTOxH6yjZEV/0/3oA2JDWc6u3zQiiZsGf304ZNefMBRuZkdLBz33
	 1MDV+blJZzQxF8oZPlT690xSxRb0nyl19FcXBpMX/mOiicOsh9fczu426R2AZ3BrI6
	 wxSgC4pak7v6WB1n6LOG9lQQXghO+rt6RzfesDRGjMx5TciwD3BnpqozHbmFZCkXpx
	 CCGMOsJMr+TNTxSkCkGcL4hQMYGdLga2O8+R1scm06HrZTCGX5jJSjT0DLH5PH1thC
	 jBN6MnufCK3uw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ED0A541557;
	Tue, 28 May 2024 16:00:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 43E591D29FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 16:00:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3C41041524
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 16:00:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Im_2YFfv9Cwm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 16:00:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 730BE4151A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 730BE4151A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 730BE4151A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 16:00:46 +0000 (UTC)
X-CSE-ConnectionGUID: AZs+z3IsSmWnoU2HfeOzNA==
X-CSE-MsgGUID: E5GJw0pNQL+NYsbphmZ0Iw==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="23875176"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="23875176"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 09:00:35 -0700
X-CSE-ConnectionGUID: pRJQUNxaT1ezw8hXieu7cQ==
X-CSE-MsgGUID: bAAAR+9nS+O4msBZ/otwKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39974707"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 09:00:35 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 09:00:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 09:00:34 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 09:00:34 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 09:00:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L3hhlnB5Swr+QV1OBu1ztRo+N/fGr2k2ayRuJ/ARHg3BtwdrhofZa2TL0pTOfpLJlgcR5HflWYXzx1dBGu2RKLMjv+xSAVWpREnzJG+VMzESIpxFeErwo7LAJR4gwC9ydUhQDTbzO0dpSv1qYMVYzFlR+FnAwPLK0sZMZUbEz3ONHTmvW/wr8naIaFwBWhFoYlz0MvTIQEbTh97Usd37SGurlnrj7H/Sc+9VJFv6wGrVrBr1NzyyTu+HUghiq1UnVtd/AQS/KmiziPBBc/IKgjkXifCgnbC25LuBisttg8Azb6pQpDhdiBJZzpKKDXVpvO4eqMRgFA/vOxGCTXpwEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3+NoHKfSo2XYP6Kono4d2qoU+WHK3EWJSciR6ug4hek=;
 b=SOtD9XwrjgzYCQGM2Lqe3906JgSWcadyp4X3ekbe2NJA5Ho473uSX2Y8JCXyyFGK+9HCRRggQj3eTwfWRyWg6Rlfzpl8VV/yK9b+SS3jpRf0nQUe02R0mr2/YkAhfdLBquKWzLwe3mYtOEiQS4wMpnwLdBeVLmv92/XsZ5/2Bnl6EcJ1VbmfOE0M/llV+AriLo6fQs2X862UtORuLwhRcIh13qRr9XllPXnWXnnUBguFcbwd9HZYlow2/B4BbuahWO41PZ3ckB1/19QDcsS0s/fwGyv8hEGSlqlKe+FLW2axb089uxRBURPpFT+Ih4wDkAGADxJdLA/lrVPXQ4/mrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SJ0PR11MB7701.namprd11.prod.outlook.com (2603:10b6:a03:4e4::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.17; Tue, 28 May
 2024 16:00:32 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.7611.016; Tue, 28 May 2024
 16:00:32 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: implement AQ download
 pkg retry
Thread-Index: AQHaqqH9HqFpIOG/7EWzmpCcVSTvJrGs18AA
Date: Tue, 28 May 2024 16:00:31 +0000
Message-ID: <CYYPR11MB84297C9796767AB06730127CBDF12@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240520103700.81122-1-wojciech.drewek@intel.com>
In-Reply-To: <20240520103700.81122-1-wojciech.drewek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SJ0PR11MB7701:EE_
x-ms-office365-filtering-correlation-id: d45cbc1c-65ca-4623-c86a-08dc7f2f4d75
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?u92X+38WvvMAKANb18FIgkcPn8PrsH8AFMYVNL8AnlZOlf7fojd8jixgyuo0?=
 =?us-ascii?Q?qt+9uBZjemV/sBwj/cgPAzJRcz+mzKyXyK3txAx5LVEvR2cQlc/rmEm5sJ3Y?=
 =?us-ascii?Q?E+rGMyW+f4AMFVpoeOU5I2+bmFRSYqoMofN+xR2DRUHHZtDJMwED6Mc9L74C?=
 =?us-ascii?Q?BmTuhFFGs84j5Q5FPUO4EUmZq8SSamtc+80LdFXrawazb3z6iqG68MKdaRBa?=
 =?us-ascii?Q?7GvjxBjAkgRV5ziu5rSqCGRTFG6cM7BlCX58vHc6+h/5Ka4/lb48thnltlyA?=
 =?us-ascii?Q?AmE8XbkUWLcbjBrxInFyz5CzKYNYtyX/LzrxXc/MXRTfnoasHUGgFkzMUGNg?=
 =?us-ascii?Q?fXIN6IIwDv8pm8wMORFXzQqoJCXByW7WJPvAkFN5aCJ9J/8PNc8cTjxS5pST?=
 =?us-ascii?Q?KFoY/NvYzyZqqSpVOVS3LcV1wuWBxsRGH2qUthi5XC+kPDjO1ofKL92WdgKm?=
 =?us-ascii?Q?WJ8v83A0YeJ/TOU7nH6+mW/FPJ0FPqUqDKMtidbIHETKvEMqtWCNWfsd7/ow?=
 =?us-ascii?Q?oeGJB+mBvJPvCyI8zfaHYE3eGqugq+vvkZavE+xpcGc5spzty9EVrqZW+t50?=
 =?us-ascii?Q?UzfiL7I+SPA5C4ks9Z2fltRMyfcdNDuWW9EM0Yqs6BXxhQ48Nd3/9NOcvMqE?=
 =?us-ascii?Q?88qi+tbfGOqkiwNaKxzsJo+pKnf/mxlzJYbxQJQZ/fiuqqoT/POqAwWXsi3Y?=
 =?us-ascii?Q?kTUBmaQQ+0hqZsKMLefxUTpYjdmj0hJe+y6nMuocuL67u66BKl21CPZz7TDr?=
 =?us-ascii?Q?hGMvTtmtkWR/45FukAADVSlz5xOOipXKZFaQHRihTc4gjC+S1R9NJLFZZVzN?=
 =?us-ascii?Q?K84gg+AVEzOit5pnqtZsJmSHWS0+XfYbxkjRl63Nwegm8U8Z1a9N3lKkzh08?=
 =?us-ascii?Q?gbyObuMQ14AXqS2yJsje7C0o60pZP1H0gwefEJ2eW/PAaAswQBqdXddKMdAl?=
 =?us-ascii?Q?dWT1GdHezHDXUr3kiCrOmuFizeAJFmHqArbqyn+DYAVkCUORvXqpB742BT8e?=
 =?us-ascii?Q?tpH3c4rPL6LSCXRQk+Dt8I8spNNmSwXOD8A5p504JxpFzovBRptGZ31Jv2Gj?=
 =?us-ascii?Q?brZd7rkIEEqOpCI4NXrYpzJ+WaT/1aL0lrF8AC0yKl+d4MZc83gA4cPJ/0Ga?=
 =?us-ascii?Q?ZsXFn2aSJLrJtRX4c3CN4fKLYRXjh5Pk3kzJsR084t78r3xUGxvSJU+BBf/w?=
 =?us-ascii?Q?QPfqn8iVQCAN2Fn0lRDKl4wSTCn+BXsXBkJnV886j3DnborsYmuiyu/Di2Uz?=
 =?us-ascii?Q?UgnhLHpMfg+Cnlb+yEuTgcL/J5IzARlM956F2vMeOczDLOhxtL20cJZVgFrB?=
 =?us-ascii?Q?xg8onpiOWrXWeBgbHQuKqRqZ/4XLgYasdAPWkOs79mDugw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sLyKCHHSTD9uyJf3PYUwSG4qsXgi26adlxwFQ3YPLd4wHqk/ZcUuAT+aRClI?=
 =?us-ascii?Q?8ebeAxSxQHaFMjEy5sDWERiEpWonXEMKdVmvZsZgcKpEOkaN4AikrcG6e0Hf?=
 =?us-ascii?Q?ADJiF6d95fq25jRILAcINOhG9jm+B+jSstNTvPyy4nOozwR5LI61KcoMtcOJ?=
 =?us-ascii?Q?BS/Yp8WbOb64eb/kNl7XrJauZpKWB42+mBEqUPTQT4yUgws+jgtarN7Qz1HO?=
 =?us-ascii?Q?vEJXRKrk5U749rO7FkVAFEpUMKq+wFkTCcKWc/kyzb6SMZYeQun0kOGiCrF4?=
 =?us-ascii?Q?aABJisJCH/M8r9LWd7FyZHWd/NmMLCFn8iLBX6OB7r6MIg2EjCHjtV7AqTia?=
 =?us-ascii?Q?yrYI8eILsCxbBGNNqUQqR710tNLxB1O4xjMT6DI6+pfRaL2YuYUbDoTlbLXO?=
 =?us-ascii?Q?UVoZ7iLT63N2P4YkCuIgHTTk7yGaa6WGpfSDLqhxA+CK9djKbusKkx5OXJzf?=
 =?us-ascii?Q?ZebKCvwpWBeBerEHSIb+jtgsCeKuRHzC29glpq8TAkgBeE1yp0BdQtnewwfH?=
 =?us-ascii?Q?8cxpgQEUiWWnYvR2gUoDfbRjTVQO6PH88o/TGvRliA35OjgcIWPrhr8JjJOI?=
 =?us-ascii?Q?ExWzzgVEITmMBmItUUq/Tgz7VS0+7xWprsozggXbsjFR9R2/IMho4gABmBL5?=
 =?us-ascii?Q?PNHNlR965DIvg2FgMrWakp3HOZ9v8Cg37HkG7v2ULa97tPzWNxZM6UHAy4lf?=
 =?us-ascii?Q?KEame9R59ivyIfHGcjl6M9ESollKTgP6vufqJIPfnxg6alS8oW2tvaVw4PO5?=
 =?us-ascii?Q?+LG0Oj7BnVN8/5AImCbokjf7Pu144I4i3mYdFTP0KM3S4rzjcMZf3iRC8ItO?=
 =?us-ascii?Q?r7kks4wm1tXCriKSBddAMWu8kcuJ6n4W4Kk12ok9E6Bt91BalNrkDeuwPis4?=
 =?us-ascii?Q?8BaCzct9mOBkR5bZxKFMfnTMyk1080peuMtaaZ5vy039ap9ujavPDENDd7pl?=
 =?us-ascii?Q?VBUUCmKd0GAQb/s8fFBxiLUxuXq9kkZDMqLjPrZl9cX2Dtnk0EonCVG2YaN3?=
 =?us-ascii?Q?8Fkie5W7qFzlh0aYsOU2oUK7CC28wZkXwIrXOH3RWyFjx3MoK7Z2XuCwLaDx?=
 =?us-ascii?Q?yoHdVj4U55YTVeU1dWQ6KXsLbEabmfXdRE4TEMhwYYB4PCPKTz3LsXxPv41J?=
 =?us-ascii?Q?ewNhYVfazbp4hve8Xkdxd8f9LYcC9qz5GUpRtFDc9DYKn5nzGAOm9bTbkDh/?=
 =?us-ascii?Q?HXziGcNfepuoygnpnBnJzx9BrOtU63DTxSinRWj/+qCJJLKQW4Z2mjeVR5mC?=
 =?us-ascii?Q?wTMrl+LSTWpEXe+lnkVIYgETJ8HcQwNIlzr99ft242eK+gylAN5Gyxn4hhsp?=
 =?us-ascii?Q?xIh/hpmO0C3NKhx+XdzcfuaNON7GfgP/DKK/KWCauy375rMucqC3GYQRgFSL?=
 =?us-ascii?Q?RQ/p0dVtxog7y0BOU3HNKHP4u8tXSNOLd9T5LcIlWY2WqBlwnEiSEKBLXYys?=
 =?us-ascii?Q?kEWd5Uv3sZFcZD6BkLqmpq6tJrpDtC3m8WOHWJF+KWbiDSZx1p5pkKgk4tuM?=
 =?us-ascii?Q?zeyMPVjpFoIrwh+C1lcNjQRm9agyni+2kABWeSNGyH7b8AGMIUB0R+Qz4REt?=
 =?us-ascii?Q?aXEEdZmOvfC2U4K233tskvCWZ9L7xT89GTlKRozq1CUVvfzEKKEziis3wjb7?=
 =?us-ascii?Q?bQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d45cbc1c-65ca-4623-c86a-08dc7f2f4d75
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2024 16:00:31.9336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kbbB8CU+bG2HcnX5pNPG4LZ0KOxhwuqvVj0qlZ7GV+5Icx57yaS4wLM10gG2EnET1tqg+4+7+Bc4uYP/SpqAggicvAk8ClCgzsE5mF495tLU147Zqsa9vdyA243LUjyj
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB7701
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716912046; x=1748448046;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2U/g4TZeIcEYMeRwwC5DPxQt1X1/CI+tFKPlbJGDEYM=;
 b=bZhL1o92pZOtXF5oUR8urL2v4kqK61QekPcVRydHHH9rAEoyDBypWBIi
 etXAIibEpH/jMRERhIjXeo2WMmYia0bwfmbOQp8PitVxWik2gIylX/jfC
 TXtgsjiQqv1DN8emofKjf47U27c1Vj3+7fCW7WZghos5vVvCpgByJKPl4
 QDYRKnVPd+T2SOTlqneH7fAtbfDbglrp9/HRgdvFV1j6jKCICmQtXqSwf
 HFvsjnn2G1MTpa4LGlQ+cgrwBV94y+lhJ5KAvpD0zIBWxEW3xUOCzJAA7
 9l9rWAl1VceaEhOeHKOvDctPibw5/jfO9SK6WzBAh6JSbG82A5WcyDadJ
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bZhL1o92
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: implement AQ download
 pkg retry
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "naveenm@marvell.com" <naveenm@marvell.com>,
 "bcreeley@amd.com" <bcreeley@amd.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of W=
ojciech Drewek
> Sent: Monday, May 20, 2024 4:07 PM
> To: netdev@vger.kernel.org
> Cc: bcreeley@amd.com; naveenm@marvell.com; intel-wired-lan@lists.osuosl.o=
rg; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: implement AQ download =
pkg retry
>
> ice_aqc_opc_download_pkg (0x0C40) AQ sporadically returns error due to FW=
 issue. Fix this by retrying five times before moving to Safe Mode.
>
> Fixes: c76488109616 ("ice: Implement Dynamic Device Personalization (DDP)=
 download")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> v2: remove "failure" from log message
> ---
>  drivers/net/ethernet/intel/ice/ice_ddp.c | 19 +++++++++++++++++--
>  1 file changed, 17 insertions(+), 2 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

