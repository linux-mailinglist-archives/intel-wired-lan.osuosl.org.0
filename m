Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJggMjx712mXOggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 12:11:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B003C8FF9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 12:11:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5235180EBA;
	Thu,  9 Apr 2026 10:11:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZQzOBv3BHcqN; Thu,  9 Apr 2026 10:11:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A247B80E64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775729465;
	bh=nkM84itjCTcSvGyShkANyp7CZoLQuOA65aqdwgreYEg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WglyqQOBCJYOAEWTGFDMwLSJ4kiAjoed7U5CTIvymt45UlLA9W/MZ+MaFXaLr8otr
	 gUK7qvdZLeWfGv+7IUcm4n03m9e9vGwZ8smFXUrfwzg58LNFl4T52jEfjVtN264k38
	 uzRFYfZhz7mMZ6QfwNei2oN98TJhmA/hULkEtvf0RjM5mrtTHGCvGBEp/6vFuuRhqX
	 Pr0aoJGSPAgT5x8q4uQ7xSQWCH9rhHzw6mp6hC97Q9SgRwstywDLO3STU/skT8iVlk
	 ZWRd+lNRb53MBN0oBx3V53uDjUakUxj0ooiytAimxogEQyPYg/cqmbEsNYN/55426S
	 rqv/FkZMLE7ww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A247B80E64;
	Thu,  9 Apr 2026 10:11:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id AB8A61D6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 10:11:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 91DB840BFF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 10:11:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x4kl4E402Pbx for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Apr 2026 10:11:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8A99440B86
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A99440B86
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8A99440B86
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 10:11:02 +0000 (UTC)
X-CSE-ConnectionGUID: GzC4Z1u+SxCTz0d3hoUprw==
X-CSE-MsgGUID: 0JbIR9H0SNiDcCwzotoveQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="76609600"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="76609600"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:11:02 -0700
X-CSE-ConnectionGUID: kTPQRaw3SNuPyGnawVS4Cw==
X-CSE-MsgGUID: lbuCyI2kQ1y47sonRdueYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="227873346"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:11:02 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 03:11:01 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 03:11:01 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.14) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 03:11:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eg+Tu/Phorvzh9iK53ZxVC50MCkDayIR08EPfA9RFgqGj8aLRMLm5VzxKaEH6WkgfJ2ya7OklwkTq48TFL3ANi2nhJDJSFcVEdnwTg9tpxGZ+hV7qECBDDEateuvK6n+jlmz7ZVu+I59q9xzrJXzNDpkCfo9eEOgMuu5++2FwS+w+AyxWuIcdgy/vVTd3dbIku1ou+bOzSjSVmAoB4pmv2m+gXbwBlkr5IKXBER6sSaiIlt+cS79/O98Z2ug20wVd+vJvVkT8ZNrKJt7ESx3WHyH3aXhNUH8sHUvgFXunqEO5CIBULo07unbApy5Rx7d7X4+xJL8wm9F0JzbraTvZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nkM84itjCTcSvGyShkANyp7CZoLQuOA65aqdwgreYEg=;
 b=QeRlMLbbh8rN8293w/tPwT/bSgmBWuhkOznsqlEY0At98gvrNIT6JBM8YHA4r/f7HYTQENIlDTPt0DCigjr8DxSprk+kw+Zubd/NQfju0qH5f8xlls/OpKS3Q2QJsAroIbBG82OoX+uOKfXtqAKP2tkVnnSTmByNQjWjUMA+h9gkGeYbRc6LiPpKQZ01z5vNuRfbf7soYgSP2g5Khz4Ti49ix7zwc7Kxda8TPVmxRGZP3HkQDfGlaMqIGZoc09X1YQ6lV+N6uql2XAblmtEnySyQELkNLAJs9xrfh4VvLrZA4YIjVK8jE8+ny3wcLvbydNOJBbH/3mgp2KzCpcX2Vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by DM4PR11MB7184.namprd11.prod.outlook.com (2603:10b6:8:110::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Thu, 9 Apr
 2026 10:10:52 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%5]) with mapi id 15.20.9745.012; Thu, 9 Apr 2026
 10:10:52 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Eric Dumazet
 <edumazet@google.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "Nguyen, 
 Anthony L" <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 2/4] iavf: stop removing VLAN
 filters from PF on interface down
Thread-Index: AQHctTGm49vYOdbmEEaDmGBzKodBArXWp9EA
Date: Thu, 9 Apr 2026 10:10:52 +0000
Message-ID: <IA3PR11MB898542C2014F85737321AB948F582@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20260316104209.1285962-1-poros@redhat.com>
 <20260316104209.1285962-3-poros@redhat.com>
In-Reply-To: <20260316104209.1285962-3-poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|DM4PR11MB7184:EE_
x-ms-office365-filtering-correlation-id: 666a17a3-32cf-4797-3942-08de962047e6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: 2XKLjdxwwGkpi03AxatkoyD1HTzrgpMD8r8q5uyXMAklqnyAmCGSalP88sP4CybpYiKWjnf7OEV8levGg6tw5geczhZ+hbCHWMDwj6eZ4vsjrliaRRZa+dSPq+iTmmoA6CEKXlih0qWm0tvTzDYjkIzZkO+5xpcln2etFkAuVlyyKEElkdTfKiqgKx447QBABVGZHXFDvB22QGLXVJjTjzE4/hzOlwbMILDQleGSFyH3FZCoGiN87HoHkY1pSWWzbYzpU/Tm+F2iXEe83rJmFOOX1pB6xm8G8F+wMqBLaTzuXrcDhj5y+Msc7Ih4ImD2qq28GOkJoJXW9vWOlUfgHHckGIfUoIjpaXarYykXX2y1qL+7h/QsG+Z7yLz47iTC8+CgMXLAxl1lRMUxPlBgKWOuo7iUdHRImiUlWxCA7+S7xLS87kA6rzNTfHGQJUf5/GeYfdQ5w4iC4Wn1SJnqBcdu++m9IbsKotsDHSBhBjcdzN87SmqRuNpqMDz4iizB3bdDpoCnrvklBEhNfTZCV8T3AI6klCVWAbTd72OjIoqXGh55ymJ1dU/wugSwV5Q/5kMElDSVWR3g0TSXQuBNFtb+rHsb68oY2K8bBFTPmk5Jcw0Mb/krMeio25dC1Ruse4AmOP/4C1JGcN/h7h0P0okY3/PCcesosquYX3+KFlYFPgKOngzO7aE9EcyURfelCcvpjmTYiKLuPxu9Ez2GZprO6fFNHbFMT0cEnj1bKR+7PPItcM8pvDaraTJKV2tclmON/6JEL7TVYkeEr2kl+3rG33r8m5fFDdvigm3lRQI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7o6c2KwpQKgxUgC6P5IulgUHTkcP6edH5BvVB+KmqvQIhebHjfM5X9HFop5t?=
 =?us-ascii?Q?j1G122+uCzM1bvIQmjb/525tcj1vmc+WKomNtTfLZkHNSEGc0eg91GDL0cAd?=
 =?us-ascii?Q?FWjGGRY75jq5suA2FZ/H5YyWZNxWu/LpOvu+ObjTswnTWygsFpLpVj/sN6ff?=
 =?us-ascii?Q?MqoLmb+SnG/N31Hy6Ax8+18UIUHJqP74KOprrR9afV8VwJN6hp18k2S9zG0w?=
 =?us-ascii?Q?yj+TK0kRk615Oznwb6Wo+axURrbNwcUd4c328t/NdaxK8gJXO8pNXAkqeFir?=
 =?us-ascii?Q?DOU2G0fVgklH889VlNcNDoy+YEnMCPGjRY4/L7K0THk5IrszYmWYRqZCXQpj?=
 =?us-ascii?Q?75Hdu7rA4dzTtQ/6m9V9tX6yjVz1uqp23ZEKsfzsiBIEfJ/NtyDwAryG1FqN?=
 =?us-ascii?Q?wd4YtBLMpN/JG/n9Q3m2MLVEUBzSfTnu8MVvrDt9E1qtcbUU2KTXxeGQb3rv?=
 =?us-ascii?Q?X5P3xWwmzfno5CV0svRGS+e4EibjPgdGbY7UZX9y1nuPkhxNgteZnrqj7UM+?=
 =?us-ascii?Q?hA1PZj8iBfWdwCQkAPoLOwo6BASJSFCSvnAYYTHmAfdcFF+Rn93BP9uWpwr5?=
 =?us-ascii?Q?PKpKGPpGTDwg18DtXmbQPsnVTtDPLzrReQpzpnkY5N1/QS4AmBteqYZSKPwI?=
 =?us-ascii?Q?Er3Q/KZ8s49HYxadKOhCOtyIjh8Zzr4boXrD8hYSpWC9CdZY7Vc6zxXCMKaq?=
 =?us-ascii?Q?rWjSyZ9W3lU9nwOAUQ2IPGkhswBRvUXHN1LJ2vWipgZORdw4CDc85f1tDT3W?=
 =?us-ascii?Q?UOmqenELsRSMvJzi5Q1/JdhpIEEKrSmwkSpLtG7XAOtsMUFmEbHAU6MgtsN5?=
 =?us-ascii?Q?6WVQXtDSYOilxvT+lI1DUhOld+MVUeFuGDAeLdHmqoLagNVQlKDJ68vOoecc?=
 =?us-ascii?Q?s+/RFQj6ppUbFx2K6nToXDgc+/Jb8DFoR7IhShLPrjH3bMITVTF0ZUpqJu2u?=
 =?us-ascii?Q?nC2fEFc+7yWitG1MHLMsTl6EK6Fx+iCMaSoydnXJ3Y7jn0NrefojcpfZXafQ?=
 =?us-ascii?Q?dxW15kUFKDkn/ZYRRaINy4GFxEQZ5wMj9f3Sby2YGkVYh6aakyY7I8JX98M7?=
 =?us-ascii?Q?6llCxqYm3AkNdgfiwMTLMJTFEB6zPKE0Cr55yXsTmYC39gel9Bnc0VLTW/Ye?=
 =?us-ascii?Q?RhqwbJXn0JAD3BSfjkKP6lkQBgE/t+1m+//On41d3CcKpZXm3y6XVcyXCu+O?=
 =?us-ascii?Q?BKoUOd6ImfeVj/7cHuRkoeOjdkUXUHc7jEZSrfMpIQ2fhVx59uosBL6x9AvO?=
 =?us-ascii?Q?kBnxv+hFKvQSh298GRdBrbAE1cdVUFiHYUKhW5WxD63vDzbOc00WDxSGBQSk?=
 =?us-ascii?Q?Gug+Gqny8b5kJudbn2LQ8dBbHkXvxJ4PmCyFVYeic16355aUu33AUY7dJlJw?=
 =?us-ascii?Q?wjUcwvoJH4pvysn8XqG8YPHaB10gnffBcKOBv3Up9TYYHPRdRMLaGaK6HfO6?=
 =?us-ascii?Q?RM1iuRmLfxFJpvscTOQ+wDaUmHTP+EDCLZcNdcmWGWMThhAkoVS3vz+uL5kU?=
 =?us-ascii?Q?zR+voDbsQCpYBFn2p7IZyBnp62yySUQK/wzvLliM3fqfh66QnXC5GW4PycIy?=
 =?us-ascii?Q?lG3Sqsxy9J9NnD8UwNxtFJe9biyL81cojmcZZ+7kcfaOUB44n4vh7iRkHqzc?=
 =?us-ascii?Q?oQ6vZ6b5VCPASyOF035j6lU45g3Sub1JPMTpRPoys3DMyUVmPcg2BcEqHDj8?=
 =?us-ascii?Q?FRfMRAuYPb70OEjDNSGd7t/AY/qu+PZqDATlxDWOhsBrej3xPI4MaCTADniL?=
 =?us-ascii?Q?ScXoNi1Qqw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: soQ7+IS3jQt7t/+xyoxuMG9tE3LbY6QlqxVrgKKUf688MlbRVI2jlW2RDbieTYp73XkUq80BQiLi6VEwvEowbGqCeU6hZACDVnPKc0VUxEYXPTN/ZiJm7sYKuaFn50YtDWtGdx8eje6HWNQAl3G3dm9EXQs4BvGPMNhYYp9oCo7357zHA000Q+wLlXgxyhAVKE5wEhioIRTM4HxfzxixkZcnXZixNOdZIjEBQ/AAQ54cpvi6mJDnP8MjeNBr2ftJqdFzQI8n78OZoe+40K6wm6n+fCnHK5rstKRyqaothlZTl/UFJlgl92KJAIdhh2mf+YuvZP22x/qmhtnXECHNzg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 666a17a3-32cf-4797-3942-08de962047e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2026 10:10:52.2195 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hYc/hYx6NeVpx3b8wFTfR+kVbMDqNxv0wTVxbXYK42YgT+wS6zCtC/NUKph69gAn+4de9o8q+EMjEsbP+GQ6AgxTz4SirHxVQjXIy/sJGJ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7184
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775729464; x=1807265464;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XcC2keLsKUYhzfZlng6iqydsoSb5jTZlZkXD9ttYpSE=;
 b=cgpCnRQtpI2UAtdQfC88sXUjUuEf5Yqfb/MwIySWoIi/rPOYQ97quHA5
 KMczYHb6bHJPaJwVRdTrsneIVxITYQY+XPcOWknhhpyiQXmpnPLsMLCjx
 MiconStzsh9J/QUxgTxnCW4yFS6VSFDmX3u9qKhJyhTjJiwuDRqcxvCH5
 kQU0V15liqAitd6PXOhfo9gsNCpawA5ABY1m0INDuXh3aMqD3rU+vp4pJ
 xykDRiz0xoYNrUWqzg7LLXVFd1dzJE2FmJGO0DPokfMINghf9bj+Xq5i5
 ES74d0XdqSOunMv8+4ygTKeWGQoOktpO41+SiC1Casn6MWeozajBAPoRq
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cgpCnRQt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/4] iavf: stop removing VLAN
 filters from PF on interface down
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,intel.com:email,lunn.ch:email,davemloft.net:email,IA3PR11MB8985.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 16B003C8FF9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
etr
> Oros
> Sent: Monday, March 16, 2026 11:42 AM
> To: netdev@vger.kernel.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Eric Dumazet
> <edumazet@google.com>; linux-kernel@vger.kernel.org; Andrew Lunn
> <andrew+netdev@lunn.ch>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> intel-wired-lan@lists.osuosl.org; Keller, Jacob E <jacob.e.keller@intel.c=
om>;
> Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David =
S.
> Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH iwl-next 2/4] iavf: stop removing VLAN =
filters
> from PF on interface down
>=20
> When a VF goes down, the driver currently sends DEL_VLAN to the PF for ev=
ery
> VLAN filter (ACTIVE -> DISABLE -> send DEL -> INACTIVE), then re-adds the=
m all
> on UP (INACTIVE -> ADD -> send ADD -> ADDING -> ACTIVE). This round-trip =
is
> unnecessary because:
>=20
>  1. The PF disables the VF's queues via VIRTCHNL_OP_DISABLE_QUEUES,
>     which already prevents all RX/TX traffic regardless of VLAN filter
>     state.
>=20
>  2. The VLAN filters remaining in PF HW while the VF is down is
>     harmless - packets matching those filters have nowhere to go with
>     queues disabled.
>=20
>  3. The DEL+ADD cycle during down/up creates race windows where the
>     VLAN filter list is incomplete. With spoofcheck enabled, the PF
>     enables TX VLAN filtering on the first non-zero VLAN add, blocking
>     traffic for any VLANs not yet re-added.
>=20
> Remove the entire DISABLE/INACTIVE state machinery:
>  - Remove IAVF_VLAN_DISABLE and IAVF_VLAN_INACTIVE enum values
>  - Remove iavf_restore_filters() and its call from iavf_open()
>  - Remove VLAN filter handling from iavf_clear_mac_vlan_filters(),
>    rename it to iavf_clear_mac_filters()
>  - Remove DEL_VLAN_FILTER scheduling from iavf_down()
>  - Remove all DISABLE/INACTIVE handling from iavf_del_vlans()
>=20
> VLAN filters now stay ACTIVE across down/up cycles. Only explicit user re=
moval
> (ndo_vlan_rx_kill_vid) or PF/VF reset triggers VLAN filter deletion/re-ad=
dition.
>=20
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |  6 +--
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 39 ++-----------------
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 33 +++-------------
>  3 files changed, 12 insertions(+), 66 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 8e6db72828ae14..1ad00690622c8e 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -159,10 +159,8 @@ enum iavf_vlan_state_t {

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

