Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJ4LI0UpmGlqBwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 10:28:37 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB4D1663AF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 10:28:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 851DD41868;
	Fri, 20 Feb 2026 09:28:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1GKtzHzG0JbK; Fri, 20 Feb 2026 09:28:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1617A41867
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771579714;
	bh=Ejkx3ii+07LjiBBG/JUN46UF5XZjqj65yacDXpZRN2s=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=v54NkXaslR871xZ1wnOvWekiPoe4Y+2KFo5jPMGbyRPUgAS7/gbHlPCE3FvMUkBOy
	 MRow5Ge7gk+J9n+j64gHDhOv6B7eoieBqAU5c3PV9HWDIXuP0vqmIvbIMPv0LWi6cK
	 fLPODZ4MHVCvDO8wX9WRTecdMu6cHgh3v4Sb7t42QpuPWTdyPip2EL88fDBlWRMC9V
	 iOUyaMQwpFP19HcMmm5pJ/+siMbqnOvVOGglBc8w73nL8yD0SwAF63zxidnU1QBDHo
	 5uBpyvvWUfBHQVjjnB8ZAOwNmrEVhb49DSiBHidrT8w2wCH4D7akyD56SsZtbpUMlb
	 TbV0/H6tdmcsg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1617A41867;
	Fri, 20 Feb 2026 09:28:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 40419183
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 09:28:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 25B6660852
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 09:28:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wKYc9aMZ6_mq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Feb 2026 09:28:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 30826605FA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30826605FA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 30826605FA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 09:28:30 +0000 (UTC)
X-CSE-ConnectionGUID: lz+3VauDRS+FiHlq7m5bLQ==
X-CSE-MsgGUID: le32/pIlTriMNsvNe6PeWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="83298070"
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="83298070"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 01:28:31 -0800
X-CSE-ConnectionGUID: hTdHVXJLRBuArj4OvuOEng==
X-CSE-MsgGUID: Wh5iAwSjRPOcR81za3P4hA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="214654583"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 01:28:30 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 20 Feb 2026 01:28:29 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 20 Feb 2026 01:28:29 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.71) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 20 Feb 2026 01:28:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZjbH8wIevDk0TyARVYyVvFV6s5j47f4qgsZjPmBR3cdhWTYze1xjUGTUiQwvK7g0ePdqzildgnRMEPVq9HolK8QX+XrpydfCF/vLOZ4LZZ74CBPrhyLzZd4HA+iRKhphvSKuNgZBu5kCN7tTrOjw0tobGQauD1fCUTkYvo6I3aFMx8oF3Kcsk5J+T2tTOIooyVfKGVpFzLg0a0gCixXXNYBxVae8bcBaLpHaUHwGpXAvkzxCZMWNCVPLCcmnlhEJZzgO/utW+3I55uOkruQ+kbcNXPjPFXO6r2jjlUHn7fRRxGjm0C7R4wOkl9vH6IXUGCvDGQ0L0TFCyr6jYJDLvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ejkx3ii+07LjiBBG/JUN46UF5XZjqj65yacDXpZRN2s=;
 b=uI/VYdNAQidl98XNY5cBiyDeP+sUyXPbLzWpikzCAHCr63wEA1HYhrlWbr3e2Z4hbSLDrGXK45T515SJRLRlK+XWVQmrZCiyQ0A4LSDrpnZd3WUHB1dhBr4/OC7ehAk8GJpiL+rC0doLm8zYSFywpzgps+lfWfHoam8DxhKWcmJbdwV1PsVdsyYIO5NcIfqENAjBnFwdicB684OhEdfU8lRsOQjU/9PlVeM92HVJXEdwALa87raw/RA9isV4R5MJwcLW155vNUqLmyf6k3xr7ElAvb+j5S9g4h6B2x1bWA9kWP2jVVLZaEvHGWHyP6m1ZWajJaQVwBNcaOkqOFO+KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by BL3PR11MB6484.namprd11.prod.outlook.com (2603:10b6:208:3bf::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.16; Fri, 20 Feb
 2026 09:28:21 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9632.010; Fri, 20 Feb 2026
 09:28:21 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Nowlin, Dan" <dan.nowlin@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [PATCH iwl-next v3 3/5] ice: improve TCAM priority handling for
 RSS profiles
Thread-Index: AQHcokq2TYc93rA7/k6ntHNDDIn0wLWLUeCg
Date: Fri, 20 Feb 2026 09:28:21 +0000
Message-ID: <IA3PR11MB8986193ACDA1E30C6CC4F88DE568A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260220092409.718632-1-aleksandr.loktionov@intel.com>
 <20260220092409.718632-4-aleksandr.loktionov@intel.com>
In-Reply-To: <20260220092409.718632-4-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|BL3PR11MB6484:EE_
x-ms-office365-filtering-correlation-id: ddf99301-3866-48ed-fcdb-08de706263c5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?rSIWhksmWCkcmbuOIq9r7/glUhQv25nomIrgJBa65/mmP58yA5XKUBFWeKQW?=
 =?us-ascii?Q?wUsi4l1Tq+99VsNDNga9vRUoR0WNImUEC4ke9Mfl/cn6ntnoXCWxopGdsYWQ?=
 =?us-ascii?Q?A3guRNxu7ll98a/dEpHr2nzluwY57TPCzGl8mZMExrCcu3veKE0fB0nCZHgW?=
 =?us-ascii?Q?ED1q2qJbn2i49OYvXqvrsaMYWr8b8BXgNH1haRTRRgX69MhL7TtKzmaaMrha?=
 =?us-ascii?Q?nk+0vu8xaG9oSias+xSdLnKsn4Jur2NsYhIFqmiR/J4kuONNymO17BvJEp/G?=
 =?us-ascii?Q?zAH59ZH4MSooLzrEuEZHFyg4EoPQcDNRWyuIrBduH8o2GPSPZPyacQvizopy?=
 =?us-ascii?Q?Wh5lEuTBOTbPJ33XHP1vb+ANq3uPCZmOylxPzmUBsnT+87/yCRgpS81yFxjD?=
 =?us-ascii?Q?PRsI6BOJlJIs6Mfol6PzhhqnSfaX0iFX+u+rHQWnAoIReAZmga96gx0bkEzv?=
 =?us-ascii?Q?KTE4ABmrtw9j3PUCIo4ArN/kOp67eq1DHxfVD9+jfRos0jGR+yqqV5DUOBe4?=
 =?us-ascii?Q?8OVPFwU8wRbGVewrdMkjrBchwzvvpM7CTUKjNmBzKTjeA4/F8iATp9j7eve0?=
 =?us-ascii?Q?Cbpn9n5xmPgcV+655q7foYcO7SKioZZCkjU6ubVWJikY9oaLiqZbMcgf0saS?=
 =?us-ascii?Q?vc12q34Bc24bce3unSzz7GTFkREErXAc3yZ0r+c1eAyCgk3Sm5r9K419wKys?=
 =?us-ascii?Q?K4dIrxwPSMhSr8CHxowqxzQZf9FIRvPJnrT4GzeB6112kNodLfIsorT4hCDh?=
 =?us-ascii?Q?0IP6/Ar2azcioCEJoBWMdxj2c2DmsqzTxvx6HSsKfsTvC/V0MXsNpaAK4Imr?=
 =?us-ascii?Q?SduDbGxXZxmjURS8vh8Q+EIcHUlm04k7SSaESQSJIk+KeSrLiz6gdKwBxUPk?=
 =?us-ascii?Q?UJseLzYWO1Ulwth+E08qIOjrjOhAYkt94ErOJvmGzmSryXmRCxIFgUxx9pfl?=
 =?us-ascii?Q?e3QuO4P2GfHctVsJaBFH+uyMxqkhrYKdteJ3fHL3vnlDs3/vd+sTsuQXujqn?=
 =?us-ascii?Q?RGxR2kRcNIAURK2ZT0vPBxXt7Ac5DxE45tcGsUPWwP4qQM508tGgSKyYTAUP?=
 =?us-ascii?Q?dW6aGrJyMrYiSCc014XFRNcidDfJufp+OF7wCkV1DQuOcO/8afN9HCLbsX9Q?=
 =?us-ascii?Q?x12MPm8WSjq0FLyPXMPTE+I4+l1CS4sgHjodwro3MpfZsjYi1U8ErdXSCGyS?=
 =?us-ascii?Q?RJjTpcOrIcCibDSdSLjvmw7K4BLsw3zbYTq/qzPjP3Dvk5FENxssx8betnQp?=
 =?us-ascii?Q?y9XdVJFbtQli8ev9L6fAs21Zq5WcVY9n2p+DM2WWEmrGY9Zq749gJjYOhOri?=
 =?us-ascii?Q?3voekPvcknrKJE6F6x+Ghvm/W9NZvc9jQFeu7sjTkhlht3sgrHIHnxufyuPX?=
 =?us-ascii?Q?ttMq4w42rMZoJTnWAcabZVANHmCFANdAVuGM5gW63qPAFm+3EbkH4cyVE0kH?=
 =?us-ascii?Q?s+nl65ulSmvyFrWe/2X3p9iI61oUBvpGP8CQBSfgBB4ENs2r+OyNZTSKzmT4?=
 =?us-ascii?Q?jxE3Kjs4ApfoK2Pe7ar+zwnQbp/7Px6itULrkc21/6cEBF2Ng42lBrVShU/5?=
 =?us-ascii?Q?fFHQ9MwpsXNErClRmmA6eosu2BAMH4sEECy/adpVeQPz5AkjjyJZE2WW03UN?=
 =?us-ascii?Q?ITspzs2x+1JG4I/CKioxJR4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JMOOfX0kuP1h1G0wGtXiF0vnlynR3KPqnSvWPC0sClPLb+9Dq2IU6VqHAgYJ?=
 =?us-ascii?Q?+hyUK7ovG+yGqqBWyfntx7WmzxvKSSMpJDOEpANu4i/shTQgq+6KPgQ/hXAv?=
 =?us-ascii?Q?SidicJuD7T1o17vU0CPyXK1YUwVDw8OoK1UMjw0IkXtHGKKYCeUbfKxzap6g?=
 =?us-ascii?Q?i/PA5tPS8T1MT0bzKZNwbkPVaqS72GpkbWG6c3HnCUtk9SXxKZ5scTY5FkKN?=
 =?us-ascii?Q?UYKpvn+cvxLjep1AXFs0LfacOs4SnB41EHRhdjbrOHtGbb9i2IX63mk+V1bq?=
 =?us-ascii?Q?UwwjfLdCEV9j98eoVhFzcCEEM0jlfmSEz6V1HINMN1G8N+9nPKfkTDmHRp7y?=
 =?us-ascii?Q?WochZrUM3wWzURWFh4DlqXUGVq5+mVx3UtIaCd7Wn1Y80KbTtCd250vfebzR?=
 =?us-ascii?Q?i3AUpB+KBM1c9l7kyYEX74bKAJIIqqJ5PhHQcn/wkbc3WidYog2CTAEjVvb8?=
 =?us-ascii?Q?J44pQ4mcKDHdRtYfYYlO1RZeUGAokk4a2aBLDyWup65di/DKei4XHQMpfk0c?=
 =?us-ascii?Q?vGw74zeRhCWFr0F6ZB/b2uQeS5rBJ9iJ2bUbmaFmK6NBUBwNlxcbAJy4GYbO?=
 =?us-ascii?Q?sRhHxpK3ynyOpwrFw6pLhYHgi8HC/ZphXi+md2H44PqyYg1ih3Ud+SJNa/y8?=
 =?us-ascii?Q?1XNGZL1xtB24tCVYUL5j9ngnT8E+OJ7YbVWgIiD4m0cBBwBiPA2M3xltkQlR?=
 =?us-ascii?Q?FsEAdBhSkxO4rADspam8HgVY5UGqX4GBXLxpP3dhIVAO5H8uL0MEESClqutM?=
 =?us-ascii?Q?AD223I2XyvIEDWFe0kgzH5f1hnMvMvWT29VFqV2N6PGByIRsu9wi2/cywv4d?=
 =?us-ascii?Q?lwobI4zU3S7Ayp5SRS9B5FG6XH5bvoo5qvdOmrnz75PKZpw4k2sOwT53TFr7?=
 =?us-ascii?Q?oTGvDRDaqZFqdfFa7pipf7hRULzJri8MozJb4NQiXzzyBP9n5vqLxFYRd8Oo?=
 =?us-ascii?Q?TTvPa37fuwribCaXmHLDFaHDCCm2U3YYlhwUP8ArVO7fuwOjLPvMY1XZRpke?=
 =?us-ascii?Q?jb1IDcStwJ2vkbUDLum6xNYwYRBlmMWJVOg3WUiAqqd0j+xbdIge5MLtN22J?=
 =?us-ascii?Q?OGqmF33yLNS5fBbUDnw1V96uL05TYhkwjVfbJ/yzamsoBvjktlgvcZXAqMzw?=
 =?us-ascii?Q?XZGPGrBgNVCEjqa9dL8vFR9Y7EYfCHIZL+G9McrMdun1DB3gk9PgvIwyHsS+?=
 =?us-ascii?Q?IJJimThWU71svV/XiiJtcvlzTwvfbzuCNMrXxmKWtyxcorS+BOH13ODsWFFt?=
 =?us-ascii?Q?Tc8Soz+NQYn46tUL40H6aVtP7aaRlvRQ7Ah4SX+xR2EyzBovjGvvDRbVt5lP?=
 =?us-ascii?Q?QF3keis63mXdXt966cG6AwhPWqi4ftZutFpnBZA/hg+JdosjzySD6HpxJRAu?=
 =?us-ascii?Q?96H/9qiHYqwylJ5dfjPGm61A92c7dDoEw+iofFNHRh/Gyz+nSSiBXNLDo2gT?=
 =?us-ascii?Q?bJF/VByoGvWt5eNrePhRgxffcdew5U0Nmeljslbb0dvqWuq6uMkArz2Za4xp?=
 =?us-ascii?Q?L4RkL7Ko8oBhOYD9BiC+Mnew+Ms3o46WRaTUjaGFY/TcduwrBXkfgb/MCUtr?=
 =?us-ascii?Q?aXBxbJDLel4OhkrARoDgamOXwcHwkJwfDscdSjzaijpCDqHt2JLHccF13fg6?=
 =?us-ascii?Q?YF1zr7l3wQUzhUceh0SMXQmepV3SPk6QuPPv/UTr9JmZZ4ElTzs/Dk7uVk2+?=
 =?us-ascii?Q?mKzt8UeAMktbiMaNHZHZV1XleQoVg/Bfr10wruPCx3sCJ+ihOE4RYpBgzmxk?=
 =?us-ascii?Q?hzKYfgJZGw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ddf99301-3866-48ed-fcdb-08de706263c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2026 09:28:21.5912 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GYrT700RVTGnToY/5fUcu5EHOwf/2qEh4ySboUf+Fs6w7eOcQNSdKGaac7cYolXD3MeprKWLSOBlClshBYflRfWOdnbI7JdlR+Dy+PyNmKE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6484
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771579711; x=1803115711;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ejkx3ii+07LjiBBG/JUN46UF5XZjqj65yacDXpZRN2s=;
 b=LDf7LclIa/FOohnr0aJfJkV1Wza21B13ywjyW7KMctYKGcgdHrPtDqZw
 eydWLMj/68elt5v2uF3w7p83TKYfVhBmUP843c3DJuDsN8y/S38rznUNJ
 eGhW2S1buPmJ2Zh3VKP0KZxynO5SgNcpTNUGIJYU5p/fbMRo8Vw/LyEru
 eg5DlVSD6YHXdvbS3o+iRU9E48qxITj0srb1jjkJ+jkbCQZpliq+byMWv
 2/RgEU39M6RlmFfiAbE+ZBZjEa9OSEjMWbsSTk0H/Sjfih5m9jO4E0H/e
 nOV7/8PU9HMN7rH7vD48/6ea6Yu9wHBt6BhNeml/60BTB3EsMIr9hFFK5
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LDf7LclI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/5] ice: improve TCAM
 priority handling for RSS profiles
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.979];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA3PR11MB8986.namprd11.prod.outlook.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:email,osuosl.org:dkim,intel.com:email]
X-Rspamd-Queue-Id: DCB4D1663AF
X-Rspamd-Action: no action

Please ignore this email.
I had personal e-mail issue.

> -----Original Message-----
> From: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Sent: Friday, February 20, 2026 10:24 AM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Cc: Nowlin, Dan <dan.nowlin@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [PATCH iwl-next v3 3/5] ice: improve TCAM priority handling
> for RSS profiles
>=20

...
