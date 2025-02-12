Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD50A32A6F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 16:47:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E5035416A4;
	Wed, 12 Feb 2025 15:47:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xxq1YdrTe9YE; Wed, 12 Feb 2025 15:47:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43296416AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739375276;
	bh=g2/nzlZ/C6zGRamf3dYe7GiaYRsU9+xsdtbsLng4jTM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7CTISSpQLPRB6Y2vckXtKQ48xb0XCvXo9nqeNKdMvZyh7xQeYLaaFzMfNCETnRBdn
	 IyqU3FL4tOIEKxZmj+dRNNgus4x8pVOtyPj+Nr1HzxH969p8a8um0U1HcjVbRzk3Ce
	 IgGEQ5syHCBJblYA+moGk00dINkjlpFe6ACm5Ux6MsDTSSbQHw2LY9auv+qEZPoZEG
	 BmHOv9k7YP+lNIYR0wO8Rb7XR4mooS7Wive9gt4RSkvp49ThEiPKSONpxBMDCq7hCk
	 3d1xIhqMfd+y9l91+BqVh+1cUdi35oB88kLEKDZbwp4UHrUNP4HutjwQACL6LnWt19
	 lrbB438mFfkKg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43296416AB;
	Wed, 12 Feb 2025 15:47:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 61266194
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 15:47:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 45AC561049
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 15:47:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pesfzQoKQEKg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 15:47:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D9F88607D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D9F88607D7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D9F88607D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 15:47:51 +0000 (UTC)
X-CSE-ConnectionGUID: ow3kBaTrTDyAX0X5bBCDEw==
X-CSE-MsgGUID: LJvPXILoTQW5l7YIqh8HYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="39922917"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="39922917"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 07:47:51 -0800
X-CSE-ConnectionGUID: t+jR5tXOSqWF1QRsa6WYOg==
X-CSE-MsgGUID: h01dRipFQIKCmZrH2d60Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="117789986"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 07:47:51 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Wed, 12 Feb 2025 07:47:50 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 12 Feb 2025 07:47:50 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 07:47:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n6htBn0BqbHE8zgXHTZlxRYoogi6e6pqVwoxTzeC4Lvx+iBjlxm4IZ4HsQT7Y/oJae596cn2O7iKQi7vFrmaUpOPdDIZlGkwd+rx1hNcXTwKX49I8x954XFcRVVo/Fp2EIMyoB3CgxKuOCi30fgjMQTWmCu2NKvG8uTbCW1GRObSjcI5mmnB2uyag17UWCn08yPCahMeOXCl5xFFCwqKv/N6u7bT4YhakFEym9+eXzjq/kYXRvAO4XAH6wt47PVRpT3eSTvoxjL1OOeEs3fY8PjyMwF4yYIcrjqI8nC9UPKu7TMU0zpsmedHnVQ/QitYq0mvTziI5inywgWpH/A6vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g2/nzlZ/C6zGRamf3dYe7GiaYRsU9+xsdtbsLng4jTM=;
 b=Fr6p4Xihk/E0DwmITkz5d2fX0ejxQNaFGN1OLcgkhMwnWGBB01fb0LDaXM1g/Rsv+TuoDO7XwXEIYgvbeon+Bt1aaErvDLVrTPMksk/jlJb6P0lfrab7yxtANegSbWAVLyJN5QLk1hM/dlBkOO1MccDMr7iO0PqilSbTLMdcc4UzDAE/w9GnZEt7dYFhFgBuo2w7ACyUBvOD6IIc8vAHdzB6PV0ksoHnkf70ghXHFMgq6mdEbOUr+HmSt3oBLgsDl+Dfdf7h75GxsEBJIARm3GiyVkJwCWWxS7swQGDFwAur2vVVITOY7nb7yvDR+FtH8/GQxvZYD5qUDxcVS6vMsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 BL1PR11MB5977.namprd11.prod.outlook.com (2603:10b6:208:384::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.19; Wed, 12 Feb
 2025 15:47:43 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18%6]) with mapi id 15.20.8445.008; Wed, 12 Feb 2025
 15:47:43 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "horms@kernel.org" <horms@kernel.org>, "Polchlopek, 
 Mateusz" <mateusz.polchlopek@intel.com>
Thread-Topic: [PATCH iwl-next v3 02/14] ixgbe: add initial devlink support
Thread-Index: AQHbfVHxnRg9R1v3qEurn8j/j8wkurNDxYmAgAAIjJA=
Date: Wed, 12 Feb 2025 15:47:42 +0000
Message-ID: <DS0PR11MB7785E7F829BFD1A59AF16048F0FC2@DS0PR11MB7785.namprd11.prod.outlook.com>
References: <20250212131413.91787-1-jedrzej.jagielski@intel.com>
 <20250212131413.91787-3-jedrzej.jagielski@intel.com>
 <cmywoei5shisdjbt7ipv6rmfxx6jgafu2ccb4xr3phq3ealx3n@kxsdwd6u5bgk>
In-Reply-To: <cmywoei5shisdjbt7ipv6rmfxx6jgafu2ccb4xr3phq3ealx3n@kxsdwd6u5bgk>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|BL1PR11MB5977:EE_
x-ms-office365-filtering-correlation-id: 563132f8-1cac-4317-bb80-08dd4b7c9681
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?hsCodac8+d3NpX4Q0XK5aFCZ/ifWXaqqfuFy1NGq7BlQy4MMe1PsQJcPHrjI?=
 =?us-ascii?Q?wdAcW3UOgIx+f/tMICiTzpijtGeI+4HO58rH9gBb8E1YOAR0v7klDiZHZMVS?=
 =?us-ascii?Q?rI2gNsefY8KpRuer1WJF5vKXUWOPOON74xsR7eSeIajDZLAsYEtGcAmS0Eu1?=
 =?us-ascii?Q?WqGtwvYFAkxLzFlM2K0KPNRmDhRN4UqND6ET5t41eNRysw7SPk/R857r8VUW?=
 =?us-ascii?Q?aCodIl2Bu2n1DQYHQnQo1D3S33+oW/kp2pFY0CiadbWumpP+DNu/GKtnn7jA?=
 =?us-ascii?Q?h50NpYW2pM1eCpkB+frZ5ug3suYX6vva2C5u/CUEtF5KDZoRgTUJJareSHQs?=
 =?us-ascii?Q?QxlCGHYfsFJkDKNXj3DEKMqaUA6joE+dj880SaualQSsG3OaFqXb71x72oyy?=
 =?us-ascii?Q?+/0GL7oIAGqk6k94S08LHXHv972sMeqdaO+Wm3HJRk28TlOtvbNzA2rTvTfU?=
 =?us-ascii?Q?jpiEDbwzm5MB2zS1kDr0kGxbPs8mVrj2ZbUImiAGqFL7nwfPIHXb5a2iHhuc?=
 =?us-ascii?Q?Qvq7MqKoQlNJn63JCFZEx7Zos/hmSwzSimh5SDnuA3wfXktgit2D6Q0j5kFZ?=
 =?us-ascii?Q?NKVQHlTH+OupE+cKF2pj2fgbD6axdLdRJ4EqYxkc0cTbVE5I1V23yJ0c3U7g?=
 =?us-ascii?Q?pKIMgUlNDwPEUlP1U7oLw83hb8IpS7Ju4F3006GJa76nyifCiFNaTb2jonoR?=
 =?us-ascii?Q?gLtmE3kv6I6kXgWfUMMHcVxKBm1bFiWEWBx2C1dCT+Zwh+ZK+flXqJzmxlfr?=
 =?us-ascii?Q?Ohly19ruDALPFNGPJPeslfPUtJX4+FkpzJT93HdmWWQ/PtWZM+rucFxTuAx7?=
 =?us-ascii?Q?yHmAUzY2EuSieTCRvzI9Te3PlYX70CIyPBQjFt4YP4z7j+K+72oQFp/zTVlB?=
 =?us-ascii?Q?rK4Di55vzCigGJkh22+/3iA/y8GulTLIK+/Gasnr4GLec4LiVlb0snaPxm0l?=
 =?us-ascii?Q?mK2Y6LcaCsoyawMPWfs/R7+oZvt/Pt7Ux3M+dxKPp6us20sOGRJm/NGV6xqa?=
 =?us-ascii?Q?B+fW9EDKwSgQCCuhFf3IZK8bQXXu2ZkwBxRaLJzzRUBloqE7CWvh4/N+xy/o?=
 =?us-ascii?Q?VZPLi5DIIY92ULyFJdQdqgyXatw8czDfsnq50lzQI7O/mZ5apBW/W/4iOmJK?=
 =?us-ascii?Q?Yrh587gYwp0zGDOVQxUKmvr8H/0svY0/S9EqQIvhqoblMM8uhzbaE2OjJMhJ?=
 =?us-ascii?Q?vnC5Kc+EA/tHii4XkfEMAecHSUCC0FgY1NwGYIjsaInWC2F06+Qlfo4rc8MZ?=
 =?us-ascii?Q?rgKEkHHqdtGI4/x5rYbntGdmKVE1uPg/wtrXwRa38v4cvHq7dl/2kEAtUUTR?=
 =?us-ascii?Q?lRdzBk4frTsF4TLstHXqWldk/E7y4ye6en6DMmz66NmINqqiLdv0OK2/cnJ4?=
 =?us-ascii?Q?gMBFiW/+Nm4XPEFpZgclsBwRdX1fl91DcpzIJB/nErC2zOrB40sGdRFs1K+v?=
 =?us-ascii?Q?c0CMpVSIR19TDp4UgHXrnI3WLmw8i0BN?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ifHPPz29z/OG0TxnqBdXMYGaiQ63CNLdxxzDgnqKr1DeBq5CE97N2PgRRiHG?=
 =?us-ascii?Q?rrxueeeahm3q6p05p304jL+D7lOd25/DwRRwbf1MRXTo8oU20irM5BewXChX?=
 =?us-ascii?Q?Um+WS1xA6UntXWYJaBnCB05vno4OQuusBk33wBPwIzYpNpuFG6J1gcnExqs+?=
 =?us-ascii?Q?avhNgAhqae1VuoGmf9JltCKSXS38PFeImxVv7Aznu0yPSakISi/zv0Yln1Zi?=
 =?us-ascii?Q?ynfOYRapfGb7kW/q7pcDRSzwFNhVKYynUG52Hn8zrIgzCBDkuObIo2NzL8S8?=
 =?us-ascii?Q?4WGxqkWPDkDSnelR6BRhSIsaGFjYJoO/8DQd8AKvDf7Mh6vvn9q7Zg4ZkwfE?=
 =?us-ascii?Q?krBZ+gPeht5S8kE/Z34b8jblC0Zr2MHTj+F7+2jdqIpokocLvtRWk/fgI8KK?=
 =?us-ascii?Q?gXCJFws8YAxU+FIHTOBU0d45rQuGxmBuH+p1IPu7fWhqbhbrUD5uhgDceCLp?=
 =?us-ascii?Q?+I7mSgKa9lHdQ75pxnLd0fS2UOqCCpXqG/4VMuIc++4alt8vFwWpXcNw3Anq?=
 =?us-ascii?Q?to4h/GqZY5Q1G7MMZeC1FZ3Wjg1BucIHDSONuEDm4IL26HxrEOWsd12X/UT/?=
 =?us-ascii?Q?7QTD9smypcubyeuBi27rJJlY1FnimiwsiJe9GEfO1JCZdmz6ycUJ1hLqk8WY?=
 =?us-ascii?Q?mP8FDIaPDx7awdqOg0F4qTRVglQs1S4IKCWH0kfryrHyncOZuTpvQftUYU0Y?=
 =?us-ascii?Q?ypD8EBYVWDMkiRQDpXVji0YpZZ+ZT63GLsQ8hYTnN55M2G7F8p3DdRUK3VKX?=
 =?us-ascii?Q?XXN0ticcxvUcOgqMPpgoJfyTHqVJdUSSYuQCa8tcpYPpzLII3xq6zYDxYGXn?=
 =?us-ascii?Q?eCXE142y0RzRlxHgxP57v5RkWglB1DO3iRdpGi0K3eJ/eB9A8WyoYOPVePwv?=
 =?us-ascii?Q?TZEf/lVPDEhf65CaF8vGNBydPaXUaGyn1ku8V0fIE68v3DsHjiL6f6L9SND2?=
 =?us-ascii?Q?nw9OR/NhJa3/HSCk4hCcR2WLNYt9CwZ6CSyqAXtjvVFQcVZ+zjBmTsYmrIVs?=
 =?us-ascii?Q?raVIC2olFIO2+Ocpz89xfLRHsO3WEnvWbjFNct9D6U2nAHTwrMX1LmRhUNZ0?=
 =?us-ascii?Q?myXmw1rr41+Gr+YqaPIV02AyYwtnQ7XDZFbyZzdnZFZ32GApklVMYbASSSZ3?=
 =?us-ascii?Q?Z8p8XSD984BQFW0oJF5sbfK62+YRniQKRkdAMX3aBEsUJU/TGHraL/1b2enV?=
 =?us-ascii?Q?6m+D0MetWUWzkprqt5wl4EXSWtIJAq9Fa6sfAA+GMhs5+6mj+NkiFw+Rl9oe?=
 =?us-ascii?Q?lGnFqDphBwURDZdKVlazQtCpsrasIILRve5oGrPFnghuKTL75O00nNy+Hc2v?=
 =?us-ascii?Q?eiIrDQyKIyqK4Un4b6QXdMmpn9DuoxVD8rvvqc4ks1XCWFnddvtLwSeWdZSi?=
 =?us-ascii?Q?o2YAlSGS1HYf0ycCNVl3E+r6RKBBdMDfFwqJrH3geE+AZILA01w8sXBy77/e?=
 =?us-ascii?Q?tEOe0GUIr6jmxjExXOGUbCBr5rStGwiAHCVRZDH0yXImuOLpYd0YKlfRm2KR?=
 =?us-ascii?Q?g06q1SMUq3WY1KTg9ofTluPlfkOM63kgvSNUngvWdO3yIqkRKv7OVr2mNJ7w?=
 =?us-ascii?Q?MCWMDgjH9sBWnm14bswvSTRTKzkJvcwwaceu/XM2?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 563132f8-1cac-4317-bb80-08dd4b7c9681
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2025 15:47:42.9061 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Sn4fqVtZ2ihIsWzfXx6Wyl0xpGBy2ALcQxoZj1AChhZhrenu/Z6Zh4GIx7wsHXUdy+PFuixs2AAJNTVIAHZ2y2wXfTcAovGvSM72ERy4TtE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5977
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739375272; x=1770911272;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7BwKoOMM4pADvw9dAGADKFWH29CqgH1vqB/CPRbLnt8=;
 b=I55bVVizWfAhNxcuQ8Fn5LupeyE2S6kAi4TMTi418wy7vG/fwX0kHv9N
 Z6oLqaUixzjrf9k1TygiGl44vLFHxQghQdt+npOtRsjWR/28tElb/LMqU
 lUQBhk1aVvaBMJMKU/JZ3TpVLz6rbm++M9E844Rnt6ELyfCjXrb7yFF32
 Idf2MtT8+Po0qYmwoPbsU7jbd+/9pk4DiX9FJbjVS1CWGlR1YTqCXyXf/
 9k5ISs09kCxoFdJurtM5Pr7PpmR4GUVPrv87aTHENsjWP52fPF+sRHFqe
 oz1fP1DLLyYhf7BWo7nbxuzHVJh+olIqCDYU5c5M0gQVKZtXVG9Xf5FVs
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I55bVViz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 02/14] ixgbe: add initial
 devlink support
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

From: Jiri Pirko <jiri@resnulli.us>=20
Sent: Wednesday, February 12, 2025 4:09 PM
>Wed, Feb 12, 2025 at 02:14:01PM +0100, jedrzej.jagielski@intel.com wrote:
>>Add an initial support for devlink interface to ixgbe driver.
>>
>>Similarly to i40e driver the implementation doesn't enable
>>devlink to manage device-wide configuration. Devlink instance
>>is created for each physical function of PCIe device.
>>
>>Create separate directory for devlink related ixgbe files
>>and use naming scheme similar to the one used in the ice driver.
>>
>>Add a stub for Documentation, to be extended by further patches.
>>
>>Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>>Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>>---
>>v2: fix error patch in probe; minor tweaks
>>---
>> Documentation/networking/devlink/index.rst    |  1 +
>> Documentation/networking/devlink/ixgbe.rst    |  8 ++
>> drivers/net/ethernet/intel/Kconfig            |  1 +
>> drivers/net/ethernet/intel/ixgbe/Makefile     |  3 +-
>> .../ethernet/intel/ixgbe/devlink/devlink.c    | 80 +++++++++++++++++++
>> .../ethernet/intel/ixgbe/devlink/devlink.h    | 10 +++
>> drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  8 ++
>> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 22 +++++
>> 8 files changed, 132 insertions(+), 1 deletion(-)
>> create mode 100644 Documentation/networking/devlink/ixgbe.rst
>> create mode 100644 drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
>> create mode 100644 drivers/net/ethernet/intel/ixgbe/devlink/devlink.h
>>
>>diff --git a/Documentation/networking/devlink/index.rst b/Documentation/n=
etworking/devlink/index.rst
>>index 948c8c44e233..8319f43b5933 100644
>>--- a/Documentation/networking/devlink/index.rst
>>+++ b/Documentation/networking/devlink/index.rst
>>@@ -84,6 +84,7 @@ parameters, info versions, and other features it suppor=
ts.
>>    i40e
>>    ionic
>>    ice
>>+   ixgbe
>>    mlx4
>>    mlx5
>>    mlxsw
>>diff --git a/Documentation/networking/devlink/ixgbe.rst b/Documentation/n=
etworking/devlink/ixgbe.rst
>>new file mode 100644
>>index 000000000000..c04ac51c6d85
>>--- /dev/null
>>+++ b/Documentation/networking/devlink/ixgbe.rst
>>@@ -0,0 +1,8 @@
>>+.. SPDX-License-Identifier: GPL-2.0
>>+
>>+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>+ixgbe devlink support
>>+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>+
>>+This document describes the devlink features implemented by the ``ixgbe`=
`
>>+device driver.
>>diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/in=
tel/Kconfig
>>index 1640d2f27833..56ee58c9df21 100644
>>--- a/drivers/net/ethernet/intel/Kconfig
>>+++ b/drivers/net/ethernet/intel/Kconfig
>>@@ -147,6 +147,7 @@ config IXGBE
>> 	depends on PCI
>> 	depends on PTP_1588_CLOCK_OPTIONAL
>> 	select MDIO
>>+	select NET_DEVLINK
>> 	select PHYLIB
>> 	help
>> 	  This driver supports Intel(R) 10GbE PCI Express family of
>>diff --git a/drivers/net/ethernet/intel/ixgbe/Makefile b/drivers/net/ethe=
rnet/intel/ixgbe/Makefile
>>index b456d102655a..11f37140c0a3 100644
>>--- a/drivers/net/ethernet/intel/ixgbe/Makefile
>>+++ b/drivers/net/ethernet/intel/ixgbe/Makefile
>>@@ -4,12 +4,13 @@
>> # Makefile for the Intel(R) 10GbE PCI Express ethernet driver
>> #
>>=20
>>+subdir-ccflags-y +=3D -I$(src)
>> obj-$(CONFIG_IXGBE) +=3D ixgbe.o
>>=20
>> ixgbe-y :=3D ixgbe_main.o ixgbe_common.o ixgbe_ethtool.o \
>>            ixgbe_82599.o ixgbe_82598.o ixgbe_phy.o ixgbe_sriov.o \
>>            ixgbe_mbx.o ixgbe_x540.o ixgbe_x550.o ixgbe_lib.o ixgbe_ptp.o=
 \
>>-           ixgbe_xsk.o ixgbe_e610.o
>>+           ixgbe_xsk.o ixgbe_e610.o devlink/devlink.o
>>=20
>> ixgbe-$(CONFIG_IXGBE_DCB) +=3D  ixgbe_dcb.o ixgbe_dcb_82598.o \
>>                               ixgbe_dcb_82599.o ixgbe_dcb_nl.o
>>diff --git a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c b/drivers=
/net/ethernet/intel/ixgbe/devlink/devlink.c
>>new file mode 100644
>>index 000000000000..c052e95c9496
>>--- /dev/null
>>+++ b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
>>@@ -0,0 +1,80 @@
>>+// SPDX-License-Identifier: GPL-2.0
>>+/* Copyright (c) 2025, Intel Corporation. */
>>+
>>+#include "ixgbe.h"
>>+#include "devlink.h"
>>+
>>+static const struct devlink_ops ixgbe_devlink_ops =3D {
>>+};
>>+
>>+/**
>>+ * ixgbe_allocate_devlink - Allocate devlink instance
>>+ * @adapter: pointer to the device adapter structure
>>+ *
>>+ * Allocate a devlink instance for this physical function.
>>+ *
>>+ * Return: 0 on success, -ENOMEM when allocation failed.
>>+ */
>>+int ixgbe_allocate_devlink(struct ixgbe_adapter *adapter)
>>+{
>>+	struct ixgbe_devlink_priv *devlink_private;
>>+	struct device *dev =3D &adapter->pdev->dev;
>>+	struct devlink *devlink;
>>+
>>+	devlink =3D devlink_alloc(&ixgbe_devlink_ops,
>>+				sizeof(*devlink_private), dev);
>>+	if (!devlink)
>>+		return -ENOMEM;
>>+
>>+	devlink_private =3D devlink_priv(devlink);
>>+	devlink_private->adapter =3D adapter;
>
>struct ixgbe_adapter * should be returned by devlink_priv(), that is the
>idea, to let devlink allocate the driver private for you.

Using ixgbe_devlink_priv here is a workaround which i decided to introduce
to mitigate the fact that ixgbe_adapter is used to alloc netdev with
alloc_etherdev_mq().
This would require general ixgbe refactoring.


>
>
>
>>+
>>+	adapter->devlink =3D devlink;
>>+
>>+	return 0;
>>+}
>>+
>>+/**
>>+ * ixgbe_devlink_set_switch_id - Set unique switch ID based on PCI DSN
>>+ * @adapter: pointer to the device adapter structure
>>+ * @ppid: struct with switch id information
>>+ */
>>+static void ixgbe_devlink_set_switch_id(struct ixgbe_adapter *adapter,
>>+					struct netdev_phys_item_id *ppid)
>>+{
>>+	u64 id =3D pci_get_dsn(adapter->pdev);
>>+
>>+	ppid->id_len =3D sizeof(id);
>>+	put_unaligned_be64(id, &ppid->id);
>>+}
>>+
>>+/**
>>+ * ixgbe_devlink_register_port - Register devlink port
>>+ * @adapter: pointer to the device adapter structure
>>+ *
>>+ * Create and register a devlink_port for this physical function.
>>+ *
>>+ * Return: 0 on success, error code on failure.
>>+ */
>>+int ixgbe_devlink_register_port(struct ixgbe_adapter *adapter)
>>+{
>>+	struct devlink_port *devlink_port =3D &adapter->devlink_port;
>>+	struct devlink *devlink =3D adapter->devlink;
>>+	struct device *dev =3D &adapter->pdev->dev;
>>+	struct devlink_port_attrs attrs =3D {};
>>+	int err;
>>+
>>+	attrs.flavour =3D DEVLINK_PORT_FLAVOUR_PHYSICAL;
>>+	attrs.phys.port_number =3D adapter->hw.bus.func;
>>+	ixgbe_devlink_set_switch_id(adapter, &attrs.switch_id);
>>+
>>+	devlink_port_attrs_set(devlink_port, &attrs);
>>+
>>+	err =3D devl_port_register(devlink, devlink_port, 0);
>>+	if (err) {
>>+		dev_err(dev,
>>+			"devlink port registration failed, err %d\n", err);
>>+	}
>
>Don't use "{}" for single statement.

Sure, will be changed.
>
>
>>+
>>+	return err;
>>+}
>>diff --git a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.h b/drivers=
/net/ethernet/intel/ixgbe/devlink/devlink.h
>>new file mode 100644
>>index 000000000000..d73c57164aef
>>--- /dev/null
>>+++ b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.h
>>@@ -0,0 +1,10 @@
>>+/* SPDX-License-Identifier: GPL-2.0 */
>>+/* Copyright (c) 2025, Intel Corporation. */
>>+
>>+#ifndef _IXGBE_DEVLINK_H_
>>+#define _IXGBE_DEVLINK_H_
>>+
>>+int ixgbe_allocate_devlink(struct ixgbe_adapter *adapter);
>>+int ixgbe_devlink_register_port(struct ixgbe_adapter *adapter);
>>+
>>+#endif /* _IXGBE_DEVLINK_H_ */
>>diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ether=
net/intel/ixgbe/ixgbe.h
>>index e6a380d4929b..37d761f8c409 100644
>>--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
>>+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
>>@@ -17,6 +17,8 @@
>> #include <linux/net_tstamp.h>
>> #include <linux/ptp_clock_kernel.h>
>>=20
>>+#include <net/devlink.h>
>>+
>> #include "ixgbe_type.h"
>> #include "ixgbe_common.h"
>> #include "ixgbe_dcb.h"
>>@@ -612,6 +614,8 @@ struct ixgbe_adapter {
>> 	struct bpf_prog *xdp_prog;
>> 	struct pci_dev *pdev;
>> 	struct mii_bus *mii_bus;
>>+	struct devlink *devlink;
>>+	struct devlink_port devlink_port;
>>=20
>> 	unsigned long state;
>>=20
>>@@ -830,6 +834,10 @@ struct ixgbe_adapter {
>> 	spinlock_t vfs_lock;
>> };
>>=20
>>+struct ixgbe_devlink_priv {
>>+	struct ixgbe_adapter *adapter;
>>+};
>>+
>> static inline int ixgbe_determine_xdp_q_idx(int cpu)
>> {
>> 	if (static_key_enabled(&ixgbe_xdp_locking_key))
>>diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/=
ethernet/intel/ixgbe/ixgbe_main.c
>>index 7236f20c9a30..1617ece95f1f 100644
>>--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>>+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>>@@ -49,6 +49,7 @@
>> #include "ixgbe_sriov.h"
>> #include "ixgbe_model.h"
>> #include "ixgbe_txrx_common.h"
>>+#include "devlink/devlink.h"
>>=20
>> char ixgbe_driver_name[] =3D "ixgbe";
>> static const char ixgbe_driver_string[] =3D
>>@@ -11275,6 +11276,10 @@ static int ixgbe_probe(struct pci_dev *pdev, con=
st struct pci_device_id *ent)
>> 	hw->back =3D adapter;
>> 	adapter->msg_enable =3D netif_msg_init(debug, DEFAULT_MSG_ENABLE);
>>=20
>>+	err =3D ixgbe_allocate_devlink(adapter);
>>+	if (err)
>>+		goto err_devlink;
>>+
>> 	hw->hw_addr =3D ioremap(pci_resource_start(pdev, 0),
>> 			      pci_resource_len(pdev, 0));
>> 	adapter->io_addr =3D hw->hw_addr;
>>@@ -11613,6 +11618,11 @@ static int ixgbe_probe(struct pci_dev *pdev, con=
st struct pci_device_id *ent)
>> 	}
>> 	strcpy(netdev->name, "eth%d");
>> 	pci_set_drvdata(pdev, adapter);
>>+
>>+	devl_lock(adapter->devlink);
>>+	ixgbe_devlink_register_port(adapter);
>>+	SET_NETDEV_DEVLINK_PORT(adapter->netdev, &adapter->devlink_port);
>>+
>> 	err =3D register_netdev(netdev);
>> 	if (err)
>> 		goto err_register;
>>@@ -11667,11 +11677,15 @@ static int ixgbe_probe(struct pci_dev *pdev, co=
nst struct pci_device_id *ent)
>> 	if (err)
>> 		goto err_netdev;
>>=20
>>+	devl_register(adapter->devlink);
>>+	devl_unlock(adapter->devlink);
>> 	return 0;
>>=20
>> err_netdev:
>> 	unregister_netdev(netdev);
>> err_register:
>>+	devl_port_unregister(&adapter->devlink_port);
>>+	devl_unlock(adapter->devlink);
>> 	ixgbe_release_hw_control(adapter);
>> 	ixgbe_clear_interrupt_scheme(adapter);
>> 	if (hw->mac.type =3D=3D ixgbe_mac_e610)
>>@@ -11685,6 +11699,8 @@ static int ixgbe_probe(struct pci_dev *pdev, cons=
t struct pci_device_id *ent)
>> 	kfree(adapter->rss_key);
>> 	bitmap_free(adapter->af_xdp_zc_qps);
>> err_ioremap:
>>+	devlink_free(adapter->devlink);
>>+err_devlink:
>> 	disable_dev =3D !test_and_set_bit(__IXGBE_DISABLED, &adapter->state);
>> 	free_netdev(netdev);
>> err_alloc_etherdev:
>>@@ -11717,6 +11733,8 @@ static void ixgbe_remove(struct pci_dev *pdev)
>> 		return;
>>=20
>> 	netdev  =3D adapter->netdev;
>>+	devl_lock(adapter->devlink);
>>+	devl_unregister(adapter->devlink);
>> 	ixgbe_dbg_adapter_exit(adapter);
>>=20
>> 	set_bit(__IXGBE_REMOVING, &adapter->state);
>>@@ -11752,6 +11770,10 @@ static void ixgbe_remove(struct pci_dev *pdev)
>> 	if (netdev->reg_state =3D=3D NETREG_REGISTERED)
>> 		unregister_netdev(netdev);
>>=20
>>+	devl_port_unregister(&adapter->devlink_port);
>>+	devl_unlock(adapter->devlink);
>>+	devlink_free(adapter->devlink);
>>+
>> 	ixgbe_stop_ipsec_offload(adapter);
>> 	ixgbe_clear_interrupt_scheme(adapter);
>>=20
>>--=20
>>2.31.1
>>
