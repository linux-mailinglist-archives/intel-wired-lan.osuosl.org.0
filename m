Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YFe8BG/n/WkPkgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 15:38:55 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 587AC4F72C0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 15:38:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7162161120;
	Fri,  8 May 2026 13:38:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lHsj0KDFv_Z1; Fri,  8 May 2026 13:38:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A47961121
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778247531;
	bh=0wL4iQaEIsVUdA4msdgC/XkCko5ybyyy9MKcQNrBSis=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XfxVOv//MZL7mT+Cd7Qy02bgoD6MaU6CA8dX3B3icPjDjTteDJZGFG0s31mvY1JOy
	 DJIRgtVlcTCOd3srf6Ww7NtaZor7mGk4ObjAMcStABC8aDpaeTdwjd3bKGEx9Tdp6I
	 egOwE5ZOmgCFFut8LEkaFedhhD2gPoEHvj7zhRDvy03m2GOpbKVg1L/vLn/zeLfUCU
	 CGYkz8txL8tYGNvp9NoRuYcl+RWwNCz70ukJr19tnODCaHWz0ktsKgF1cDJwLRUQ57
	 8wH6M1wjFF3Y7e7evz9fQY5N1itcolBN4Rnjz8wwYr3OCeTnbSJT4nIqE0LGxSgk1j
	 6S+yRAEE+A8Rw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A47961121;
	Fri,  8 May 2026 13:38:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2E0D9317
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 13:38:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1F6E484291
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 13:38:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cawRbuEeQG06 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 13:38:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 369CD84277
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 369CD84277
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 369CD84277
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 13:38:48 +0000 (UTC)
X-CSE-ConnectionGUID: EpbQWrFiQOu4vY945PyRxA==
X-CSE-MsgGUID: 7NRigvIZRmiHXvgBUOaNLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="89915867"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="89915867"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 06:38:48 -0700
X-CSE-ConnectionGUID: 7iyGoFQ5QwqzekS7nRUDGw==
X-CSE-MsgGUID: QJpTRLNsQq2Okox5Sr/j9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="230366430"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 06:38:47 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 06:38:47 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 06:38:47 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.28) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 06:38:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=imUygeVs8RZfOvocM5WUZlI0oQJ0FwqdNKALNu+nFxp0K8lS9pEUIPlOFiYFv9fauuMcz+N/MJYvGc4yo+z1WpL3nFSP0ekrMTNUMWM0pohD0BVLtTP5V5rN6W14sYGEneAGHV1C9OPUYd8iFqGb0/h45qQQZreKoezFqbrhvQMl7Mj18nPsK7J4ZgoNIhiFFzfHY9DO2xiild5Z3diGTB9hcVFJvZcc5Tc8PT24QIHqFjc6BsjB7qixwcvk7DttFmt/XhL8lgp3up0KtJG5keiwc2l9UOOymiJv9ul85IDhZC8ZX9V0b9qn0QUP5H6XpKrFQaR36gdbiokFLrAXCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0wL4iQaEIsVUdA4msdgC/XkCko5ybyyy9MKcQNrBSis=;
 b=LX4wMLH1lpdHYf4u2lodUFXF3Jlyy3ZC0Tm0U+K3oorIr/JN65NYOf+RTjd/zfDxDinBmyanc8WvjxqB9UV7AEBDmHJJ0UR/M8XoX4yCsjFgJV3cTF/lY564wS6UsjOcf2FOAne1sO29tbrGkbN/xNE2lfKab536Cq3dpc0eBaKcJuj6JMwS4WmRGMHuDb3o43EGxepV59O+lJnPBBk1yduVcaomxtRbnbK1Ld1mDv4ysS1hoi/8Ps27tR391hCgE/Dqi2gMdOsmxNO3ELlmjL1zK8pF1uuBCZmTwAGy1vkkreeabWanjphmatt9ji5pVeR4ws429hHoLRAstFRzfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH8PR11MB6927.namprd11.prod.outlook.com (2603:10b6:510:225::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Fri, 8 May
 2026 13:38:39 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9891.019; Fri, 8 May 2026
 13:38:39 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Schmidt, Michal" <mschmidt@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 Jiri Pirko <jiri@resnulli.us>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Simon Horman
 <horms@kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Michal
 Swiatkowski" <michal.swiatkowski@linux.intel.com>, "Richardson, Bruce"
 <bruce.richardson@intel.com>, "Medvedkin, Vladimir"
 <vladimir.medvedkin@intel.com>, "Connolly, Padraig J"
 <padraig.j.connolly@intel.com>, "S, Ananth" <ananth.s@intel.com>, "Miskell,
 Timothy" <timothy.miskell@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, "Saeed
 Mahameed" <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, "Tariq
 Toukan" <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>
Thread-Topic: [PATCH iwl-next v1 05/15] ice: add helpers for Global RSS LUT
 alloc, free, vsi_update
Thread-Index: AQHc3uqUBPsOKjXIGE29Q4i4OSBSUrYEIggQ
Date: Fri, 8 May 2026 13:38:39 +0000
Message-ID: <IA3PR11MB8986D0D3945CF26159601BA8E53D2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
 <20260508124208.11622-6-przemyslaw.kitszel@intel.com>
In-Reply-To: <20260508124208.11622-6-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH8PR11MB6927:EE_
x-ms-office365-filtering-correlation-id: e3786486-e839-41c5-4907-08dead071cbc
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700021|18002099003|22082099003|3023799003|56012099003;
x-microsoft-antispam-message-info: dAx3vbc5qaZd21C/tdEUN2a+LFl/x0FkEuT5Wy+0AYvKeLeAbKl0PuLbc1g/9I3gYCdhuC+YCceJ/sjV6W56adIQNqGwMb0Q4qDkB7KQ0fYaxCObNYj6IQ2HB79I7HZGrktKzdKlZNAh2yEgAJOzT+8Z/GXsLWGu9RJk+U4rP20JNTL2xzNFzroUhmm6kJqBAqH5gouibWH4S6HYojywjryrkfxuxUbuY9+jHwbVMfVGxiDUrcf0kpgEXi++zr/wGi9VA/APjRJb6wj1fDaGDHu2OpwpxQE4NUoy9CoIOiRNLy855xKYGPx6LRm4WTFEwXM4e5IE44CZSjahaUWYZrgKXAeTAMZh0vJTq3rmbI97P2u8uoZBZhjZXVWRe2GN/eyUjZmS3olUaxvX+MhFL0poWMJWjg7v+5wCN/hktAYMF97eiGsihydyesuENLwEpd4jYzU/QFoBSWIQ0WAuhGo96o3pvQCD/WPQOMxuGG7ThZXS+Y7z7eqXhUYVoEJUD8bCLuNKBEK8tkJ2ZSEfA6atox1NUUxMdZxnkCsBc6KK/Xjuj1zk5RTvr+ALmPDX5R/4Ts5fP8GUNC7b50lcj54i+7h96XlU6SdUQRsdSEeJFlndN2/jYVVaJBJOuqKljX4Yr7rOGamV0BIzeObI/cF6O7z/ncy3KUEgFKivLvu2kKQHfGkebgHMioJ6MOuEA0INU38nJyqPiTbGZRuThpUG53zwvE2jbPD/+JEHZiscafaA/txZ8L9XgW9z0dWv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700021)(18002099003)(22082099003)(3023799003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JpxOWfRUXy0dvCp1NziUbfG26iq0bUjob03diy6AxD6MaY2OtDh15M4IU3rD?=
 =?us-ascii?Q?qaxBCbD2MpiAmdloGpTPj+Ab01SpKh3b6KG78C0tcLjTdwtfO97YwhvgqqEY?=
 =?us-ascii?Q?fYdsYkRcuJ/N/fTgeA3BsIgePYdLfKVx4Ewmt+k8Jpf01oPzG4U10VhoGzul?=
 =?us-ascii?Q?whPfX4lGNt9OpkT721IbeKkspxQ4CaXoZybEB+yCtl8nAs0Cd4aRCgfn08ps?=
 =?us-ascii?Q?Oyibof69/v5zrQ6PGnWdycEunQ7PC9fiv076+tyyfF+zMlJyVlpVww5ZYiJJ?=
 =?us-ascii?Q?gLcxR2HOBFhf6fy4ad83OGlgSLCPD6sZt+DMjK98DivSBspQR2mZInmQbMh2?=
 =?us-ascii?Q?bzUEG5re+YEwi1VChSTscMp+ZarC/Ca3lYO5Laib8IefNkeKBMIWntdank+N?=
 =?us-ascii?Q?2exWhdnLENdLfbexfVJIevhm8OSicJjSv5+kgY1cND1GmH4Ta85+y5IAzoM+?=
 =?us-ascii?Q?DQVTu6fhppgurBXv8IMete+QSJPTdtEKH4loRvmfXBP+xkeIkP+cGZbVVOwR?=
 =?us-ascii?Q?5/aIV/UWm/cyfu18gF8yTMtJSFeGobtvTlcg/pDcBH+u9IfMFmVBryesgfaZ?=
 =?us-ascii?Q?THhCZP6itPZdkVAMF1wv3zeH9rW+mChVdfsuPaU70Qv+4eCRodf9B2xjKZNH?=
 =?us-ascii?Q?CoMDGxSyR/j/KZYChD3nACtYCJ1cKJxHiZMO0UvnYGhJwhPuZyvSLgikeF/F?=
 =?us-ascii?Q?oTdyI39yKbPuTaNsM8KMPbcwJxvkAZX/R0Wfp8G4T4JTC0Suq1pYZHHyfqx+?=
 =?us-ascii?Q?/b/Li3ONI95FjY/BmfVxxGSEVA/kU7spG6oZCfXc67ODmN2tPR+WnXXulnDY?=
 =?us-ascii?Q?YkQnaMJCCJLk44IlwHS91BhtDIdOGDQLsMcgofP1l2DV0CM/QPu4e73DkF7X?=
 =?us-ascii?Q?G9ONfbI3ur+uFkBKY2k91Hoax5D14vevZ4REs5rd0ao9scYFpc850Q0uV04c?=
 =?us-ascii?Q?lBQD76GvdPM0phzBwlY4tTi+L4cBfxkkSeU1ONmTu8P2VOafvZXyPhjpHI51?=
 =?us-ascii?Q?q9ORDU00jWAyaVIpGAXzJuCeMjEOz1pBwibHIkvin/JMmnlvTE12NP01MPBF?=
 =?us-ascii?Q?0+dLQwQUN1axiNzkZ9UcOFpl3u/SMPgmdC+c59+wQK8tb8jy25+YOcrXPWax?=
 =?us-ascii?Q?iw7Ql1kMpGLxTH0RF4cOA70ttTEeFo0qtEqpBgKb4Fp10UuChRoGmcCaMjij?=
 =?us-ascii?Q?FJwgptcUGqWn+5UaqS8oy9b0M04m1hSsDM9CxBgoaxRvvwpOEsCC4WHmvRyG?=
 =?us-ascii?Q?dwk7LdyD2bvs7hYHwAu0D9X2iiX0teVxsif/iAoUXP7Fl9rYGTCkvpKNpopL?=
 =?us-ascii?Q?OSllVvHn5RkSUW0RmhTcbI5SvPGQGCX+PVXMPGCjHdtWDhrRDvz2R43PbTpW?=
 =?us-ascii?Q?3gkl69OF9ynHlcqdXp5YgFzs7DWg0ueVDB/QoYjnPwlA9Y8DTd7ZnDwEK3PN?=
 =?us-ascii?Q?SxkqfeiMQEAcoaWjOznrPdOQs/Lpq3EVIp2xu55QAmK2PqeRSmxYohGBMkPH?=
 =?us-ascii?Q?yNYfXMDtGF2L3e49MrKc0fB/JqSjissSu80xcmeirUkA4IZoS/iEuOwS0LZI?=
 =?us-ascii?Q?NZYQsXbhTTcQZD14yZeuFspbjVq+PKcKA7pfGzPfVfjWEoWE/1nqUGVmAFbf?=
 =?us-ascii?Q?4ejjfNr0oz91PS9/Jzq0Z5hnbaU3ViFITwGo+2G2zmD3bKVlpjxfQ38jv2El?=
 =?us-ascii?Q?CB92ER82Yg8zbzH3dRX37CR/blyItct7AoxxI7LX63sAXoWp1qhhWa9vPgkj?=
 =?us-ascii?Q?HJ0zdiJ/9fdmzM0b9iNsWfiza91LtUk=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: g3ojrIb8lFmwnUWa2vFTrm+WLm/4rosCKwAG6jc9lFCuxSmubwKghlC1+tVpKIoul5CfTKZfiVkJl9C/+Fpj2G/NQaMpBWztZ4Q7guL957s2t8TSdJOlgaEMgfphXLrRIteXG2w93gpTLDSw04RhgRPU6D5v628zAj/smEGCtGHnKZ6E86KS4wZgwn06IW8hXR3fnCwREwxV1itP94GrDFcom3pCx2wcJ+KPYeVYhZimdZfVJQpPkujVPjrPMBueqPvRyh2EOytwZEKVnkbTxNmgRxXy1bEJodqxQhMc/dhRiUI1SJwBxCGDrxcRuaUAsMs927GxsYcX0IVsjMYv5g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3786486-e839-41c5-4907-08dead071cbc
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2026 13:38:39.1547 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ua8VpFuL0Ac0s0P+5k17aciuA+TlE8bgv+X12T/sTvwqpg4cVVS2vFLk3zYNaFTmreH9igMystUCdvqN/jZcaandi8g7xfQj3VlPtaqe+OQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6927
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778247529; x=1809783529;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GxbXMaTp1DyGR6+AS2Xg9yqoisyPTNWifKzIimvPbLQ=;
 b=jFkik6ghXOvN4tXrSp4wUxncdUvwdA2uqrBPyBGmnsj9/pXkL1NX5JGv
 Wr78nnG8/MlFj3TiLWG9bkNLFuIVgPYsK6hoTEAnRn13tgMvWEa8Pxq88
 peHBmbFg2pthXHPdJeGsPkNy2+ruS4GT8lNEhuxu9w0D53Xg6Jgd8QAsg
 k3286bl7thZA+/mbP+lygd37PFqc21mcO7TQFdYkApe2GMpnAtiAHbx88
 aZgrPZrd5C/B4mPQk2xtihJPUk4Gvlzln/CaQbT1vUcdlqGiItytjCCSP
 jO4IE3mgRNyK9MQQ5YFXLw9r7xs4Zl1GDAATZIHNZ2t/YS9MygyXig8no
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jFkik6gh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 05/15] ice: add helpers
 for Global RSS LUT alloc, free, vsi_update
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
X-Rspamd-Queue-Id: 587AC4F72C0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:mschmidt@redhat.com,m:kuba@kernel.org,m:jiri@resnulli.us,m:netdev@vger.kernel.org,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:michal.swiatkowski@linux.intel.com,m:bruce.richardson@intel.com,m:vladimir.medvedkin@intel.com,m:padraig.j.connolly@intel.com,m:ananth.s@intel.com,m:timothy.miskell@intel.com,m:jacob.e.keller@intel.com,m:lukasz.czapnik@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:saeedm@nvidia.com,m:leon@kernel.org,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action



> -----Original Message-----
> From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Sent: Friday, May 8, 2026 2:42 PM
> To: intel-wired-lan@lists.osuosl.org; Schmidt, Michal
> <mschmidt@redhat.com>; Jakub Kicinski <kuba@kernel.org>; Jiri Pirko
> <jiri@resnulli.us>
> Cc: netdev@vger.kernel.org; Simon Horman <horms@kernel.org>; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Richardson, Bruce
> <bruce.richardson@intel.com>; Medvedkin, Vladimir
> <vladimir.medvedkin@intel.com>; Connolly, Padraig J
> <padraig.j.connolly@intel.com>; S, Ananth <ananth.s@intel.com>;
> Miskell, Timothy <timothy.miskell@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Czapnik, Lukasz
> <lukasz.czapnik@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Paolo Abeni <pabeni@redhat.com>; Saeed Mahameed
> <saeedm@nvidia.com>; Leon Romanovsky <leon@kernel.org>; Tariq Toukan
> <tariqt@nvidia.com>; Mark Bloch <mbloch@nvidia.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [PATCH iwl-next v1 05/15] ice: add helpers for Global RSS LUT
> alloc, free, vsi_update
>=20
> Add AQ commands for RSS Global LUT allocation and free operations.
> Functions will be called since subsequent commit.
>=20
> Add programming code for GLOBAL LUT ID of UPDATE VSI AQ, do the same
> for RSS LUT "type", also for PF LUT in case of VF VSI.
>=20
> Co-developed-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |  1 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  1 +
>  drivers/net/ethernet/intel/ice/ice_switch.h   |  2 +
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 28 +++++++++++--
>  drivers/net/ethernet/intel/ice/ice_switch.c   | 41
> +++++++++++++++++++
>  5 files changed, 69 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> index f9a43daf04fe..7f4f299c4d37 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -369,6 +369,7 @@ struct ice_vsi {
>  	u8 *rss_hkey_user;	/* User configured hash keys */
>  	u8 *rss_lut_user;	/* User configured lookup table entries */
>  	u8 rss_lut_type;	/* used to configure Get/Set RSS LUT AQ
> call */
> +	u8 global_lut_id;       /* valid when lut_type =3D=3D GLOBAL_LUT */
>=20
>  	/* aRFS members only allocated for the PF VSI */
>  #define ICE_MAX_ARFS_LIST	1024
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index d41b2427482d..c49896db51c6 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -169,6 +169,7 @@ struct ice_aqc_set_port_params {
>  #define ICE_AQC_RES_TYPE_VSI_LIST_PRUNE			0x04
>  #define ICE_AQC_RES_TYPE_RECIPE				0x05
>  #define ICE_AQC_RES_TYPE_SWID				0x07
> +#define ICE_AQC_RES_TYPE_GLOBAL_RSS_HASH		0x20
>  #define ICE_AQC_RES_TYPE_FDIR_COUNTER_BLOCK		0x21
>  #define ICE_AQC_RES_TYPE_FDIR_GUARANTEED_ENTRIES	0x22
>  #define ICE_AQC_RES_TYPE_FDIR_SHARED_ENTRIES		0x23
> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.h
> b/drivers/net/ethernet/intel/ice/ice_switch.h
> index b442db4a2ce5..ab6a8c78d14a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_switch.h
> +++ b/drivers/net/ethernet/intel/ice/ice_switch.h
> @@ -401,6 +401,8 @@ ice_rem_adv_rule_by_id(struct ice_hw *hw,
>  		       struct ice_rule_query_data *remove_entry);
>=20
>  int ice_init_def_sw_recp(struct ice_hw *hw);
> +int ice_alloc_rss_global_lut(struct ice_hw *hw, u16 *global_lut_id);
> +int ice_free_rss_global_lut(struct ice_hw *hw, u16 global_lut_id);
>  u16 ice_get_hw_vsi_num(struct ice_hw *hw, u16 vsi_handle);
>=20
>  int ice_replay_vsi_all_fltr(struct ice_hw *hw, u16 vsi_handle); diff
> --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> b/drivers/net/ethernet/intel/ice/ice_lib.c
> index ac6698a01d2f..2de62cde14ab 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -1154,30 +1154,46 @@ static void ice_set_fd_vsi_ctx(struct
> ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
>  	ctxt->info.acl_def_act =3D cpu_to_le16(val);  }
>=20
> +/* Translate @lut_type used in most of the places to the Admin Queue
> + * Q_OPT value for RSS.
> + * Used with VSI ADD and VSI UPDATE AQs (opcodes 0x0210, 0x0211).
> + */
> +static u8 ice_lut_type_to_aq_qopt_rss_val(enum ice_lut_type lut_type)
> {
> +	switch (lut_type) {
> +	case ICE_LUT_PF:
> +		return ICE_AQ_VSI_Q_OPT_RSS_LUT_PF;
> +	case ICE_LUT_GLOBAL:
> +		return ICE_AQ_VSI_Q_OPT_RSS_LUT_GBL;
> +	case ICE_LUT_VSI:
> +	default:
> +		return ICE_AQ_VSI_Q_OPT_RSS_LUT_VSI;
> +	}
> +}
> +
>  /**
>   * ice_set_rss_vsi_ctx - Set RSS VSI context before adding a VSI
>   * @ctxt: the VSI context being set
>   * @vsi: the VSI being configured
>   */
>  void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi
> *vsi)  {
>  	u8 lut_type, hash_type;
> +	u8 global_lut_id =3D 0;
>  	struct device *dev;
>  	struct ice_pf *pf;
>=20
>  	pf =3D vsi->back;
>  	dev =3D ice_pf_to_dev(pf);
>=20
>  	switch (vsi->type) {
>  	case ICE_VSI_CHNL:
> -	case ICE_VSI_PF:
> -		/* PF VSI will inherit RSS instance of PF */
>  		lut_type =3D ICE_AQ_VSI_Q_OPT_RSS_LUT_PF;
>  		break;
> +	case ICE_VSI_PF:
>  	case ICE_VSI_VF:
>  	case ICE_VSI_SF:
> -		/* VF VSI will gets a small RSS table which is a VSI LUT
> type */
> -		lut_type =3D ICE_AQ_VSI_Q_OPT_RSS_LUT_VSI;
> +		lut_type =3D ice_lut_type_to_aq_qopt_rss_val(vsi-
> >rss_lut_type);
>  		break;
>  	default:
>  		dev_dbg(dev, "Unsupported VSI type %s\n", @@ -1189,8
> +1205,12 @@ void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct
> ice_vsi *vsi)
>  		vsi->rss_hfunc =3D ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ;
>  	hash_type =3D vsi->rss_hfunc;
>=20
> +	if (vsi->rss_lut_type =3D=3D ICE_LUT_GLOBAL)
> +		 global_lut_id =3D vsi->global_lut_id;
> +
>  	ctxt->info.q_opt_rss =3D
>  		FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_LUT_M, lut_type) |
> +		FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_GBL_LUT_M,
> global_lut_id) |
>  		FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_HASH_M, hash_type);  }
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c
> b/drivers/net/ethernet/intel/ice/ice_switch.c
> index 88f1aefc24b3..b783c97f6cfe 100644
> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
> @@ -1527,6 +1527,47 @@ ice_aq_get_sw_cfg(struct ice_hw *hw, struct
> ice_aqc_get_sw_cfg_resp_elem *buf,
>  	return status;
>  }
>=20
> +/* Allocate a new Global LUT for the caller.
> + * LUT ID is returned via @global_lut_id.
> + */
> +int ice_alloc_rss_global_lut(struct ice_hw *hw, u16 *global_lut_id) {
> +	DEFINE_RAW_FLEX(struct ice_aqc_alloc_free_res_elem, buf, elem,
> 1);
> +	u16 buf_len =3D __struct_size(buf);
> +	int err;
> +
> +	buf->num_elems =3D cpu_to_le16(1);
> +	buf->res_type =3D cpu_to_le16(ICE_AQC_RES_TYPE_GLOBAL_RSS_HASH);
> +
> +	err =3D ice_aq_alloc_free_res(hw, buf, buf_len,
> ice_aqc_opc_alloc_res);
> +	if (err)
> +		ice_debug(hw, ICE_DBG_RES, "Failed to allocate RSS
> global LUT, err %d\n",
> +			  err);
> +	else
> +		*global_lut_id =3D le16_to_cpu(buf->elem[0].e.sw_resp);
> +
> +	return err;
> +}
> +
> +/* Free Global LUT at @global_lut_id. */ int
> +ice_free_rss_global_lut(struct ice_hw *hw, u16 global_lut_id) {
> +	DEFINE_RAW_FLEX(struct ice_aqc_alloc_free_res_elem, buf, elem,
> 1);
> +	u16 buf_len =3D __struct_size(buf);
> +	int err;
> +
> +	buf->num_elems =3D cpu_to_le16(1);
> +	buf->res_type =3D cpu_to_le16(ICE_AQC_RES_TYPE_GLOBAL_RSS_HASH);
> +	buf->elem[0].e.sw_resp =3D cpu_to_le16(global_lut_id);
> +
> +	err =3D ice_aq_alloc_free_res(hw, buf, buf_len,
> ice_aqc_opc_free_res);
> +	if (err)
> +		ice_debug(hw, ICE_DBG_RES, "Failed to free RSS global
> LUT %d, err %d\n",
> +			  global_lut_id, err);
> +
> +	return err;
> +}
> +
>  /**
>   * ice_aq_add_vsi
>   * @hw: pointer to the HW struct
> --
> 2.39.3

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

