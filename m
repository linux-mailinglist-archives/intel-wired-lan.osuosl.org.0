Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0016A471396
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Dec 2021 12:25:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9311F857F9;
	Sat, 11 Dec 2021 11:25:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id toE5O4m7DOHZ; Sat, 11 Dec 2021 11:25:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 90E25857FC;
	Sat, 11 Dec 2021 11:25:51 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 52A641BF2BD
 for <intel-wired-lan@osuosl.org>; Sat, 11 Dec 2021 11:25:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3F42861B3D
 for <intel-wired-lan@osuosl.org>; Sat, 11 Dec 2021 11:25:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com header.b="kfsklRDF";
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
 header.b="yFOu6ywi"
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XZrTCujUmg_6 for <intel-wired-lan@osuosl.org>;
 Sat, 11 Dec 2021 11:25:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9C60061377
 for <intel-wired-lan@osuosl.org>; Sat, 11 Dec 2021 11:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639221945; x=1670757945;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=OlhK/+4OVUZzUM4xcBdK/g05Se/qcOJb5ewaKcDrB5Y=;
 b=kfsklRDFGlQ7IApAGiaI/0DMPu+HmmaofgBcnHLHmobfav6E2Chssow7
 +D/QQHl238A03MeyRnAyVpfFWQWGguhTLdQgxg7B65wlg6UNCjZx8Elbn
 QGIcWBoaLJu3O9CdXGtcqQ76G+WA3KHnkCP811+9ElQEl/CVAaXG8uIwn
 rfKtedzaoTbWuRcJ4mjw2YUj99mRenaUE8Hif4oVBc08e+V7vElZe28jJ
 Hu4a4MtcTCTFknHEbIQkypB1IwRLoBXeiSWRTVSDdvCjXA+bd9fbhMy1z
 HHg6nrkqrhMebPYbp7mZ4jRQTtp7ZyWDc16JneOTAV4Cd8IKiv1lbwwTd g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10194"; a="301913249"
X-IronPort-AV: E=Sophos;i="5.88,198,1635231600"; d="scan'208";a="301913249"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2021 03:25:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,198,1635231600"; d="scan'208";a="462849286"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 11 Dec 2021 03:25:44 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Sat, 11 Dec 2021 03:25:44 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Sat, 11 Dec 2021 03:25:44 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Sat, 11 Dec 2021 03:25:44 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Sat, 11 Dec 2021 03:25:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lg19D1Atm0+Y4Asw3Hpp3XTRMpxXiHpthUyWtg1PfsNpdAGeC2V8AoETi2P+yLQqElbxsUqe96ILyJxokHbj4W9Vf7pCAOmF3yre5neCHAZeSBGcBuJiUO5J9XptUgFSgoLKBV67CCVxPZp2vY3v1O0fUmFrD4fPyB+65xmjJ6lSuozA7Bx6AqH4BcaZcHO+5JgvH/fEV89MFMq0FMR52kI+KJ2PdXdKPSm3D1IyR3PidfaDIwJi1HRj9HhmZRyeHBPwGsn3CpRUpoWwm/Lg5X1XbDRvOX46mHfveDF2FyIo6InHWAf5PtzxhcfgG5kCdTAY98nKM1M6BIHenHqjHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JAKau1SMg4JodTVP2ZUz0XQ49ms5ctwS4tEfJoMS9is=;
 b=Ho2ippClQy2Yt3L+KWwH4l8GCxk3B835aBnE+dSeWirJEUsehtxOzz5/yI9jRdE5EPmrxB2FchEDrT+ifgxIbbuq0gqwXCL+MhUhIbNK+fwIHUkKkbpZ2GrBw8dGS6x8ISowVQ7X7Rejg8QKovU8RUCiZ9LIV/z3pHSrTmMl3p8WOaSQx22cs5ce2WSi07M0kviz/P5KMEiATTTQ/B/4Ihz9NsS/VLKA3JmEZB7yrS2atmmo/p8puCzCXdlpJ25GzL6U5pDxVGIWAzsuC1x/aVlidQsuxcNVDIHohSwAzf+qu+mIdLKbWZV8SMqb6TPRjEbwUDWPy3aaTF0emaaJJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JAKau1SMg4JodTVP2ZUz0XQ49ms5ctwS4tEfJoMS9is=;
 b=yFOu6ywiqSh5TBNFiffTbUfnr2Uz6xOW0ecIYsBhBsEHR/geNaiSZSAvUWqbBDaPOuF6EQ05FcB3CKnj7eADI20E/rg1lFG/yyvqUyLv8SBw+N2EfpeNcj4l7gXIlH8cSVPjmgI3LZuyo4Oou+ozCrOvbTmEMHjnmRaaGVQVRgw=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4755.21; Sat, 11 Dec 2021 11:25:42 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a%4]) with mapi id 15.20.4778.012; Sat, 11 Dec 2021
 11:25:42 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: Ken Cox <jkc@redhat.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch 2/2] iavf: Prevent reset from being
 scheduled while adapter is being removed
Thread-Index: AQHX7B2AGlFtIuJ7hUe11vaIogqgpawtK16A
Date: Sat, 11 Dec 2021 11:25:42 +0000
Message-ID: <DM8PR11MB562113838E512BF4DEFC2F06AB729@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20211208102153.669338-1-jkc@redhat.com>
 <20211208102153.669338-3-jkc@redhat.com>
In-Reply-To: <20211208102153.669338-3-jkc@redhat.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0de04bf5-1844-47ad-52e6-08d9bc98f7d5
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_
x-microsoft-antispam-prvs: <DM8PR11MB5655386247CFC1DC73B730BCAB729@DM8PR11MB5655.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6GmLQLHwUmjizk8EQj5A+MwIYU35h/xp60ZbN03nvjhQE0Vf0cDkVjYWu4Q8EXM7qufNc2ThQWDxSvRJDV95RqW/0v1O2X7iNEZckccCnUhZQCnL5fl1TXDe0RFLuthaxUbcRyELJj1mr0dbfFbRJV6g7sE8u8/kzI78KPWfgxNSB9l2TpS7V3UwOA9F62mORmiRi91EzyfAan9s/h4V7tHFH+atSGs3IdPpvDEQN6TTjyw/yYETMUn0+59Je8vQh+nWtzwZ3Df+ZqKhP4JvNu4gL2/SdP7XLE5lfrV7DPepD2uJqPajbtUf1yEwJu+5FmoINhmp47yAfKbVuBsVCALA3WNuNem/K7fblppI8szkFqeiqK+47FSwgA7UwHbI9ZQklCjXgyxurfTVDMBfFdM4dHC+96fdEWugU9LQim5Qh22EVR9ne/RQcKD04ytztSqYyw+CCKNTkkQ89DMitzYKCJflICEKYTtOn3R2GXp5TtfI1ElFH8NcgQTEOF4sChtZD6wAymaQaCeim6sCuMbImzDjtucXGmwZ/TbxcEV/n4Nr4jpXhi5vex4xtOqLYgFg+92z8SZKqSO3VUlzvEAGwH4YpPao5TkgIpKanlK/FCMg1Yhn/yxuyIGZjCZRb9NqqOultT7S+vmE/VYgDZMGA3/piGlJXdEeg9FvqOf1rhYolr9HC29P2Aoh9TtPGwQQXFURDLdvqQ4rJH9beQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(55016003)(8936002)(66446008)(53546011)(316002)(71200400001)(6506007)(83380400001)(8676002)(110136005)(9686003)(82960400001)(52536014)(66556008)(64756008)(66946007)(76116006)(66476007)(186003)(5660300002)(2906002)(7696005)(86362001)(38100700002)(33656002)(26005)(38070700005)(122000001)(508600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?Nsxn/M/tgFs5j9o6BMT6y067p030IVYwGjktQb+x+rK9kIQiSL+HhbmPto?=
 =?iso-8859-2?Q?eLTsU7mNVtr3t6XrKQecUCDoDixP/3bcnngRg2YwT6o/42acehghe+D/R9?=
 =?iso-8859-2?Q?VFyNnrtk1VNzqDxOhISPQDsqSRo+OUELBKrDrQXrNuTOaqUnVa8dO8m/+f?=
 =?iso-8859-2?Q?XrgmXviTrCuKPsWYp33rz5wpFSeezXaxYWP3ucfiR8nk1E5lNVAAGwrTfh?=
 =?iso-8859-2?Q?1+yiAT5dR85dB7AiRnLRiLZ2k5O5KzHQg7y6c+/h/GOrsKlFHFIkKGhmfz?=
 =?iso-8859-2?Q?0zFOz3Y1R/aPzs6Wk4iaTKAUTlulBq3BtkY5xrlfdgEIao21KUyJbWMW3Y?=
 =?iso-8859-2?Q?BGwN4JFMZj3fQ+rjvOmjuoY0gq0veVWaNRyFsXiT+KFsIs+Etn84hxdVZO?=
 =?iso-8859-2?Q?DdKxAiv81jayrCFzrp/9HOlhVSyd8wG710jgRVP9RiMPvYwJqWyQjPcI8F?=
 =?iso-8859-2?Q?o+PHtDTlsvA8WizfPHidKICmvpJ+HpPSOr67p/kae3qtLxDVdRFrrEYsNf?=
 =?iso-8859-2?Q?gy28jeuihFs68hXad6yOTOnuH8lNPYDV5vme4/8KpH+lHJg9bbGmTUvFPO?=
 =?iso-8859-2?Q?JL4/l36G3RqcFNBgpaI5nHQsEPZfRPo3WUJ9pYiYCfPhAhuRjdeRoRqwZl?=
 =?iso-8859-2?Q?mHTW1Ai6hUbA5ji5mcWgf0fMNEutqLAqsKKqOz/LkoB4r7hCVC1h11596I?=
 =?iso-8859-2?Q?l9RFzOSv+wrhmFO0YeXggG6C8IKMRF3K94tXPI54lEuvVgmfsw45FGjP8U?=
 =?iso-8859-2?Q?SPfUYIl0KF57WnKuE99QFvxfZ49mfASlkcml8X6kJ1IrxicemvWRJeIpJA?=
 =?iso-8859-2?Q?Wa5xquQKSPRRCkHG72OdgqPD/c0L2Ip1ivtntfR5iYDa2LiUjecpj0ivZf?=
 =?iso-8859-2?Q?431c1XBkdOPvavPhjqElebQyVUjxcEw9WGLHsXeWAaNy0vtvMlY/5IVAKm?=
 =?iso-8859-2?Q?3bhgRTFuoCdpOWrLOWOIseGh7v/xJGk7TVIr98W26FpmcM4quEhNa5ui5w?=
 =?iso-8859-2?Q?UKDRkGQUoRjDzv/lfWTkVPG0FomEqmW7xqV/tkdFbmCHw0BXINvoUFgK5/?=
 =?iso-8859-2?Q?UJvL21RMr5nTA39shoY/ZLbTx/CswNclNkhWiTIE0VxED9Wfb5baW19PoB?=
 =?iso-8859-2?Q?2LyC7gBLniQ+ERzJOdsBGeADiVsVWy78IzW9OzynR1N14bi4MImFrsMyzC?=
 =?iso-8859-2?Q?Kspc5zo3fqoOgi+JoKRG4dC+u2j24Qxjcm1p7eV96WT+tfU7mwzbW+4B4A?=
 =?iso-8859-2?Q?Duvwmh+bHj9Q/hx4MA33yl0zJtjQIUWByz7X3Eme7t/R3YgdusgbbGHwV8?=
 =?iso-8859-2?Q?ARpdj5sVibZiF1ZA2eTw2gc8H50CQeW1WwUGq3AtB9t4t9A79BDtnzunw6?=
 =?iso-8859-2?Q?uQhqgtOSKlqGd6vTCfIUPuWhd0BEjyN2fC84Xv+rr1LAd4q0O9tSaQDFJK?=
 =?iso-8859-2?Q?CsqGdIA826p6Xl42JEAGtkw2K+7FdvmxICXAGdylaPMmDFjk4UL4vUb02Q?=
 =?iso-8859-2?Q?KGMHmcKdY8WxceGVWo9TK7HB8nfVjx98BWWgZMdpEmz7/gH9OdWyrYOAoN?=
 =?iso-8859-2?Q?7XkYUWSZby98NycIvlx/cEG5oQHZWt/fjTFvuU6utmbTdfQggwtgXbUJ/r?=
 =?iso-8859-2?Q?ADcMeIpbpTF+o+aDHHD2nmAJYDAB3KsuZ8L7pQH8c2dzxeXsZpuo3c6JWk?=
 =?iso-8859-2?Q?SW2jBHfqIAhpJS8RSkcTi/q+KJtBxiMXaNKUtTvIL8iAg5lKKtkH5iNjG8?=
 =?iso-8859-2?Q?PmuA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0de04bf5-1844-47ad-52e6-08d9bc98f7d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2021 11:25:42.7414 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5NemklQw0OEJiulOMU/zK1CabO4DLHsgHD7K8IHPxBux9dW6i0zvcIxh64stk3UYeJGqZkKRdNPnDg6x9jsHCjZ3FVvDje0cU11IIkaApQE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5655
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch 2/2] iavf: Prevent reset from being
 scheduled while adapter is being removed
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Ken Cox
> Sent: =B6roda, 8 grudnia 2021 11:22
> To: intel-wired-lan@osuosl.org
> Cc: Ken Cox <jkc@redhat.com>
> Subject: [Intel-wired-lan] [Patch 2/2] iavf: Prevent reset from being
> scheduled while adapter is being removed
> =

> If a reset gets scheduled while the adapter is being removed it can cause=
 a
> panic.
> =

> The work_struct for the reset_task is contained in the iavf_adapter
> structure.  iavf_remove() eventually frees the iavf_adapter structure so =
if
> there is active work scheduled it can cause a panic.
> =

> Signed-off-by: Ken Cox <jkc@redhat.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_ethtool.c  |  7 +++++--
>  drivers/net/ethernet/intel/iavf/iavf_main.c     | 15 ++++++++++-----
>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c |  4 +++-
>  3 files changed, 18 insertions(+), 8 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index af43fbd8cb75e..3cf1679153604 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> @@ -519,7 +519,9 @@ static int iavf_set_priv_flags(struct net_device

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
