Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIaGO5lEwmnvbAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 09:00:25 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A1B304477
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 09:00:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26A2F826B4;
	Tue, 24 Mar 2026 08:00:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IOSGcYox5q7C; Tue, 24 Mar 2026 08:00:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D7A6C83126
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774339220;
	bh=il/00rQ26XcVbwWL245t7Ch4t7gEjUjGZkZYfnCGxD4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fJVNHzi/tBtvvS6ISxOm0D4DnJ+M7NT4nGNlIf7QyBraURWzjSRdagYjkR/0UzFTK
	 pb6XHHlgUnWdWiUEpik47bUkF8biC3PxgforNu4tu1bP1jkOcQFU42ddfJImChBaju
	 KGl5xsdZNUeXMVI0v5hlMVA4bwoMZPcbLvNSnHVDnAuJGGbYOMgjZ42ghVMhSk0phn
	 6NcJRKTDwGJmbd6davyyg8gIlhMGaMTvK6eDDuRT0XxyxENClgPK0mb/rcINgi5eLP
	 ox12ExOG7rdnS/9ZXav9VAzqetYGRcQrCvxsUfIjJrbzNQivIVtkgCTzIYAAk/bi0A
	 6Uq63jT6AhckA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D7A6C83126;
	Tue, 24 Mar 2026 08:00:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 03BE9F4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 08:00:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E5F2A60A90
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 08:00:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eAMixaLyce7R for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 08:00:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C5D9F60837
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5D9F60837
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C5D9F60837
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 08:00:12 +0000 (UTC)
X-CSE-ConnectionGUID: BhmD2N0xTlClf0DnbXeg/w==
X-CSE-MsgGUID: xkODqbshSRuGK0pnN/gT1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="75320626"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="75320626"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 01:00:11 -0700
X-CSE-ConnectionGUID: emK07f5BTSGEo5UVqrvezA==
X-CSE-MsgGUID: 4fp08tmHR++qB3/FodO/qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="224282911"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 01:00:10 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 01:00:09 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 24 Mar 2026 01:00:09 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.49) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 01:00:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MjgY7F0lqSx84IkZPOSrFcVSFpsK5U46R5zSOJ1FbdkW62jUDgjOXLg+EnbLjdrwn/lZEXMH7zfjzNXqlYUXz4YGLWRzaje7hpR5YiHBSzI8lLONcEgPY/ONaPDnhfSNlaSzApknrWkZmkzsPx2iqKN++vqMae1D+tBzmId+msC25cGzvj6G+jD8mN2OAC4OsSng8mr+jK3M3rUlleEXs28pVl3SukQIPOXfRnbO6LqrGupUIaL+lnyqTmnjgqT3TiKdAwgZ0YnPXXDVQPC/GyPJ18p0v5fq5w9AtlnsFCumcUinhh0YRHf9w7kYjdxMxUxRCkYIc70jhoxvtGU7tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=il/00rQ26XcVbwWL245t7Ch4t7gEjUjGZkZYfnCGxD4=;
 b=GLL70wSSPA5Oaqf7dl3mUakijyU4DUSp3XmqHtb9LRAnX7Bc0EoyphJEeXmExb9xO6MEXHWAzq3TSXL6lKFa3VePvITlWPYFjNHPXCWHw+/0cui5zxwlQR98zi/82AgOKnzscBugmreZVWxXcvn43jEnq4tzDTxlrn0XGnDMGvB56UQkcWYZ/AhAMx7nZuriBd1TK++1rEqDaNo0kybNpc5wlWsQ9MKkLf/qmOYjigdrA68VTQb4GYoDHfkOMrWLaOwEtTSgadbrRDPXOZWuENvt58V0F5sib2i95cpBEpEzlKWOkk9HzFKGU7qDTu6YQVkbw++CPWsdeXitrhJ72Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CH3PR11MB8137.namprd11.prod.outlook.com (2603:10b6:610:15c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Tue, 24 Mar
 2026 07:59:52 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Tue, 24 Mar 2026
 07:59:52 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 14/14] ixd: add devlink
 support
Thread-Index: AQHcuuxUuUP3pqzlQEmJFwRglHsKPLW9UnPg
Date: Tue, 24 Mar 2026 07:59:52 +0000
Message-ID: <IA3PR11MB89867C6A2F22A17C78B83A43E548A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260323174052.5355-1-larysa.zaremba@intel.com>
 <20260323174052.5355-15-larysa.zaremba@intel.com>
In-Reply-To: <20260323174052.5355-15-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CH3PR11MB8137:EE_
x-ms-office365-filtering-correlation-id: e0cb978d-3a9e-479a-222f-08de897b543e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700021|22082099003|56012099003|18002099003|7053199007;
x-microsoft-antispam-message-info: oOqDkM4ftYFBAVGpDsv0IpCf2fQT5n8IQe11EquG56SoHRUWZQd4lc2YgU25A+Bm4V2lquGepcdWF/Veb0J+R+mT4sazYqzM9BEzmpw5jp0PDKTZTTZnIyFu7Et9QyvbNx5hnSnYOonqj6flnnf5uhVpw7uTjt+DjyAzlZiulvRF7CsJ/IN+BwUWRwvuVTuv24A6yIkB1sZ6Jqgf7RcBRZlnrcfctxqhFHQdBhAWF+5CWwVryRLnBoFKmpOuEBLWcS+p+DXbQQw7jkGfqaebQZuTEI0VzFvI8fQ/gBrRZbPVISTLDR8gdUMVt0D6GWm6ftupAfMKibpr8vl2XsAE3b+BatJQrhLnROP6Lb+N00CNKds+EIEt86jP9VskwksNJY3EYeshCXXvaJ4N235J+Nuw1G2QWXQ/oJqXFLOYGCFRi//Wwu2jfA0Y+3H7f1rH7WsZl5plkrw7f5X45TBq76Bnbx/RCP/X5r/nehfTRPgrJzlho1Sk7gk/bnbbC5azXzZPs/6QoHt4hVvkli6seNtb3idtNAf281v8EsIu66d8i3AdYiQ4L1y8/TLH/X7hkoPGWKaHQhb7rzACAzdXURoJy1njt+TJmWPGvj8If+S/E0eDkFHezw+3XommoQol9xBBuV/jorPs5ksKFpuCYRdC10KuX78nNxkjCEb8ndzzLkuxaWyeP78+6Ku9ISglyy5hsZ7nC1MweVFdJMy7QR1c3nDxfCGg3YUk1afO5FCVCqVL6TSnIB6bsWs4i1NCuUCHifpVMe5+JnJzD0nycKr9O/IuFu84LmgAZnwNyq0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700021)(22082099003)(56012099003)(18002099003)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?h7SQoTKVnS523S5JxG4eOn/B0rrvCrtEvgrFp9d7+0YCZSS76W7xsKgc7eMV?=
 =?us-ascii?Q?5hQHSBQfWAyCSxx3YqAP7tfn2f6WjEtzIBnpHp/DbfAoiYTplS/ez0vxZjyM?=
 =?us-ascii?Q?23FM+ibxrClp+r7Z7stilnzUhgNjxC2QUKT5VCV8drISFurpejXGEo3xXrTv?=
 =?us-ascii?Q?JlWJp3zMYXvkbMZKk2ke1EbEOoFxenWYZS20WIUytfp64fFUwRRnJWDQx+jB?=
 =?us-ascii?Q?TgYJmKcEvBb4BytG2Jze1BtBNPfBlHT7dR2N+5alwaW6fddcW1GSWtPwViN5?=
 =?us-ascii?Q?fwzu3VZW74vcw+q9lqsbvu40MtAYm42vHrVpAYx1CxtjxgU/UtlyVgMDS/2S?=
 =?us-ascii?Q?6wGnOuP97KzDCQWc5CCEkJyQaFnevqx+gb7jI1jAeTKvKnxTUVKEc7yUh2rf?=
 =?us-ascii?Q?6hrmFphHwhoauOrhF6WXIgp2kKMBfRL56owk5PrRrpZT0OvSaFlXyamdMDF8?=
 =?us-ascii?Q?zezf1IqZ8BrPkb3a8FBH1918m+khtcrDG0n7nrshwqcGWejVObTj866rqsPA?=
 =?us-ascii?Q?MWu0vtWx7RU95EpgWlSzs/wFKZA0o+IrqbGaL17whz7DjSe8hNU5VHsgaQk8?=
 =?us-ascii?Q?tku2VYJSSvqFPF6Sm4tR/d1oEyR7zaq+eU+8pwqEtP7KG4GHj+75tmtjKCB2?=
 =?us-ascii?Q?jvnEDLptlMgB7fDBY1o+Vm4PHPyWPtCxBsVnkqlL2tAnfH1nOtf2FG55QFW/?=
 =?us-ascii?Q?zZrkcCanfdyHEDeOJtVjKJniK/GMv4DLhHXSrK9k7thAo0ZgN4y4aD4Qvynz?=
 =?us-ascii?Q?DTEF9D0fbN1DryWBGLuuZ8/nrqWVOlstXrmlWDjkA7Yp3R2JJFZFba/JGXtB?=
 =?us-ascii?Q?7TS53IIk4U1eRJuXKByFDSJzeX0rl+hyGK+Ku/K5v+lQ6r0WpVBgtwS/apFz?=
 =?us-ascii?Q?RM8vkc1jio0HrpF7rjh/StCW4TR9NiR50Iwe+wGoZah17mOYX3yNR9qkKElz?=
 =?us-ascii?Q?CyoQbJM5iBFEfDpB/9llGDxD9KYeANv7dHLCAgO+bTpWmmDUFgYOsnu3XRtH?=
 =?us-ascii?Q?gdrIVMf8jAoNCCBkK05hRVmmbhy2h8kAZEnWOMIqvoYb7wW5395LZxYwNcKX?=
 =?us-ascii?Q?UIj3zXub2G9vOjHlm2n/DGR1WwzoqSsNp/MILcEyjvvgpTrtTI+IIREAaPmG?=
 =?us-ascii?Q?QrWewO6lT+qrhHz8YV8+/ZDD85TlugBeJckS01LDFNSGpQSz1KUTlDO6rszL?=
 =?us-ascii?Q?ER/L+8MOTra/Ft/UljzsCKaVv8G+HU09g6IKrwEvWk5bm1GkEDvlfxIxZrBm?=
 =?us-ascii?Q?AWklVzze7EpaLzjwd9Mf0PYufzxRMlgZXcedSOfdgtPdl/XHDmsAgxDYYwGa?=
 =?us-ascii?Q?UwiPVaVFTi/rJKOM2uyPhTBcTf3sAxdihslwU9OqHXECJ2KLHZBrIP95ySNS?=
 =?us-ascii?Q?Mw5J/nFYUpr7jsCYl+S41rcmw8QARDygSXMJhfMDW+xSqUhdrKlcyaZb5EXF?=
 =?us-ascii?Q?DR8nhzx+q/jCJi/vbgY+AQnmoxnjcr+RFS99Z+cGKaGFl+gMwxH3PJGYv6Ki?=
 =?us-ascii?Q?PfqACnb/Z0XQEZhUaoaTsc98+rArxLwtv+MXINSO7zPbjT9Vai9TBjOt2XfB?=
 =?us-ascii?Q?PEorJBu9Posdd7nEfg+RZtG4lxmEwWxbZdyxIDIVvP9loslqcYlQkQ/doYf4?=
 =?us-ascii?Q?tR4wbG7CEvr4rPBLTtfxMZmLaHGUxmcToQXpUWRknr1agC+rfaAjeh3WJzE2?=
 =?us-ascii?Q?N7hSly/kTApzVuHwYqdmI/1uWSN8Z1GZaxAcUDoRq+fhK1zr50JduKorth7V?=
 =?us-ascii?Q?l8fmXNyby824fPIViaftlv2SF+4pNyE=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: bf5bnl1P7kY9KHRJ5T/PkJkdTIz+9wZVH3sIZGWzhGai3xV3Pr/5UGP90BY+N5UpLF/lzAVoowX5pCQZfkUkGm9sYRxj9kbgmZjaqFjfSWJasOYsto9Vu9ZLnoNBHBkYpnzPK/dN49hAQuD+CtUoPdoTDPjl8IOuVCL19PTGhahAwr+vSD41k1NDMryoFXoQe7S3uP4E3EujLbtfSGEIE2NKUFZVY/mIGki3ORAI2fPoJUN82gNwTrjtJC8BBqU543vQcRxj0P2uASN/CY8Z+VqQogiNBWpkjscpn58p29/Tcp9YfDC8s1tpQ6YrkpQw2lpmOx6pxIR9GrCAAAUoNA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0cb978d-3a9e-479a-222f-08de897b543e
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2026 07:59:52.0221 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3lmK/vgl51zTMuA1Z+pEbIHv/4ezXgR8Ss3kTzva8ecNsPmHEaQ/biu/QLNzlZY90c5ZHJZVST2qLeB/WjdjPw2ChfwkTi/Qu62MNoX4Ufg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8137
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774339213; x=1805875213;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ywLfrd8GwF5KDqR7PJgaajWuWC2lR/ne9ZLVAsPdWSg=;
 b=Ls4HVfW7gtpqHkhzA3mgcQrJdaxFHi9Sy7u/Kgpax5rVInj/r+WED0ef
 CmfYllN8ctUzxWjBKaefQ8y6wwiyP/kT41uvpwf3pIrC6T4neuFHet92y
 9l1HVa7Qd+2BsK99WI2q67K3Sz/fF4WRRLRGwkpObDUAO+DZz/5lsgypN
 Tc6qniJEVgnMwvdR/EFQowSGYxH8Eam1L4b6Uc7eWPgR6eOb6Tild021v
 ouArVGLW8zeUGMDwQhQxSTrQ+yaUJo3bpvynxgKoGapVzFx4MJnpj4UuR
 vLkrxDnla6Ygp0jK2TyUjkWvQkE+MjGRYigYvLPe6Hmed9l1Cnpsj+vB1
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ls4HVfW7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 14/14] ixd: add devlink
 support
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:anjali.singhai@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 91A1B304477
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Larysa Zaremba
> Sent: Monday, March 23, 2026 6:41 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> Sridhar <sridhar.samudrala@intel.com>; Singhai, Anjali
> <anjali.singhai@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> <jayaprakash.shanmugam@intel.com>; Jiri Pirko <jiri@resnulli.us>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan Corbet
> <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 14/14] ixd: add devlink
> support
>=20
> From: Amritha Nambiar <amritha.nambiar@intel.com>
>=20
> Enable initial support for the devlink interface with the ixd driver.
> The ixd hardware is a single function PCIe device. So, the PCIe
> adapter gets its own devlink instance to manage device-wide resources
> or configuration.
>=20
> $ devlink dev show
> pci/0000:83:00.6
>=20
> $ devlink dev info pci/0000:83:00.6
> pci/0000:83:00.6:
>   driver ixd
>   serial_number 00-a0-c9-ff-ff-23-45-67
>   versions:
>       fixed:
>         device.type MEV
>       running:
>         virtchnl 2.0
>=20
> Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Tested-by: Bharath R <Bharath.r@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  Documentation/networking/devlink/index.rst   |  1 +
>  Documentation/networking/devlink/ixd.rst     | 30 ++++++
>  drivers/net/ethernet/intel/ixd/Kconfig       |  1 +
>  drivers/net/ethernet/intel/ixd/Makefile      |  1 +
>  drivers/net/ethernet/intel/ixd/ixd_devlink.c | 97
> ++++++++++++++++++++  drivers/net/ethernet/intel/ixd/ixd_devlink.h |
> 44 +++++++++
>  drivers/net/ethernet/intel/ixd/ixd_main.c    | 16 +++-
>  7 files changed, 187 insertions(+), 3 deletions(-)  create mode
> 100644 Documentation/networking/devlink/ixd.rst
>  create mode 100644 drivers/net/ethernet/intel/ixd/ixd_devlink.c
>  create mode 100644 drivers/net/ethernet/intel/ixd/ixd_devlink.h
>=20
> diff --git a/Documentation/networking/devlink/index.rst
> b/Documentation/networking/devlink/index.rst
> index f7ba7dcf477d..f0c077843fa7 100644
> --- a/Documentation/networking/devlink/index.rst
> +++ b/Documentation/networking/devlink/index.rst
> @@ -88,6 +88,7 @@ parameters, info versions, and other features it
> supports.
>     ionic
>     iosm
>     ixgbe

...

>  }
>=20
>  static const struct pci_device_id ixd_pci_tbl[] =3D {
> --
> 2.47.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
