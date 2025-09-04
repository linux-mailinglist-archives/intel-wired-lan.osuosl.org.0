Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E6426B444A1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Sep 2025 19:44:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5942660686;
	Thu,  4 Sep 2025 17:44:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hy9I8MPZPbGZ; Thu,  4 Sep 2025 17:44:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B67A860685
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757007882;
	bh=Rjw1p4a9FC85l6LVKkQbNN1Ylqsf1fUgkzdIX5iP5Ps=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=w5Z4c20LYWSMsZS3rJb2d84wVUgvwjNHBuRvUW2evOHhDdznklPbNRoWcF6EloA58
	 aXVIAm25TTXBautbrRdiW5Q9vkjcPcXKeEnP2T2SScuNq1VuEQ8MBPxQow6YdC+mD0
	 RsYrj24gREzsyck7uShEt+gYGpZShiHa5n7vfTsfiiPzj/WTchByZl9wH8WvWXhJVI
	 SBA+JrvdjuSvb61btmlTvT4cOV4evveO6j8K3XkBlmg+6f7nNflZXWhU86vQx8ZaXY
	 HWb+uDYbd+XrMN1D7KrpqRLiqxwgms78h5pSv1dr1GRUonFJDa47CSlnEMBwi0tokU
	 MWDfRPK3spk6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B67A860685;
	Thu,  4 Sep 2025 17:44:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7AADBB69
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 17:44:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 648004004D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 17:44:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pNI2Y29CKXVz for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Sep 2025 17:44:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=ramu.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 89CA640075
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 89CA640075
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 89CA640075
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 17:44:40 +0000 (UTC)
X-CSE-ConnectionGUID: eez18sV2RgSPGDWiOu3cWA==
X-CSE-MsgGUID: IKMKvszQRFqVsGSbcZdNzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="70063114"
X-IronPort-AV: E=Sophos;i="6.18,239,1751266800"; d="scan'208";a="70063114"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 10:44:34 -0700
X-CSE-ConnectionGUID: h7xDITmPQ12lJimdoa+qAw==
X-CSE-MsgGUID: ihZz8cVOQzWZ5eh1aL9Nrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,239,1751266800"; d="scan'208";a="172770116"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 10:44:34 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 10:44:33 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 10:44:33 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.79)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 10:44:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oGOLaZJogCBHFkSbCSXAbYSprHyDdUEZF8wsHS7LMgsN0lXJgCWM4xgSbMUY2q9VHS0g9lSqLhIekhkMCmA4ejP2/+DYBKTlbjTt2yc2DbnmZjtOdtwdqFoFqMnTS2tBA8tuElXeTB+eGYUDotTzQZiFvNzQXdbw14cDJ/I9VVH3Q5eIqaOpdgAkBn+zc9e72PbMKWKW6Xg08PTxl3hCJ7meBjEX+OGLsE2D7W75TaxU72W6Ac49f58Eoe6EzpBmYtAPQFP3NoIxR9AIdxAyBXqNOjAXTvz4V6u3dT6FHp9+5wVgR55eNtDMmND6gjjlszjsZvqi9cqEvr1L0xV2XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rjw1p4a9FC85l6LVKkQbNN1Ylqsf1fUgkzdIX5iP5Ps=;
 b=RrYh1+Y+UWtcN/F1xBDbGynw4jBvKaKSvPKzq90O6k8AQMv6Ab1c9iMyVuY0q1DCcxtzATmL4tdz8esEC+fKkL0IW/J7LLWVyrC9bOfFSwm1y6aH+/n8c1KHMSFLTEedKslx/0A03lY5f8cCEEEBHJg8/456b9FZnCzZ8s45sgWnEd3BpyCDiM6k6memQtwaTaKOFHOYZg+uKXSy3gIU7aOgzK9QXV6uowdDJNvIxJNQWCWgF1gc19lHuh2j+4aMkz6NcnHhqSjvIGL1t5EBbdA7v56YKx3LJ1e+SiPRDoNkGzwpVRSjhm9989tkA7QuJ02aSqpKDNtX0X0eht6ONw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6455.namprd11.prod.outlook.com (2603:10b6:8:ba::17) by
 CH0PR11MB5217.namprd11.prod.outlook.com (2603:10b6:610:e0::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9094.19; Thu, 4 Sep 2025 17:44:28 +0000
Received: from DM4PR11MB6455.namprd11.prod.outlook.com
 ([fe80::304a:afb1:cd4:3425]) by DM4PR11MB6455.namprd11.prod.outlook.com
 ([fe80::304a:afb1:cd4:3425%6]) with mapi id 15.20.9009.013; Thu, 4 Sep 2025
 17:44:28 +0000
From: "R, Ramu" <ramu.r@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, "Simon
 Horman" <horms@kernel.org>, NXNE CNSE OSDT ITP Upstreaming
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, "bpf@vger.kernel.org"
 <bpf@vger.kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 07/13] idpf: add support
 for nointerrupt queues
Thread-Index: AQHcFqV4sGdo+Ifm4EKPGL5DKGGxdLSDMy1QgAAmOSA=
Date: Thu, 4 Sep 2025 17:44:28 +0000
Message-ID: <DM4PR11MB645574A31529E3B0CBBB086B9800A@DM4PR11MB6455.namprd11.prod.outlook.com>
References: <20250826155507.2138401-1-aleksander.lobakin@intel.com>
 <20250826155507.2138401-8-aleksander.lobakin@intel.com>
 <PH0PR11MB50137C213B5616331E5960399600A@PH0PR11MB5013.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB50137C213B5616331E5960399600A@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6455:EE_|CH0PR11MB5217:EE_
x-ms-office365-filtering-correlation-id: defcc70c-0e8e-4967-5170-08ddebdab284
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?tmzZIiMs+ypS9LBMJVHhRF7IJKh0GTuUjRqVf4GVCJmj9ELom2HMwE/uSfDA?=
 =?us-ascii?Q?32f03yStJ0dgCBZqWcC2Rwj5kXIfP+1EPRUlDzM8cECWHH2CfX1ZQgHjVkid?=
 =?us-ascii?Q?p8BGra5vhDmG4Cq6Rpo9XdiWff0n7u1m9GvFTnJTK4R2C1xpRKXBuCNhFzZF?=
 =?us-ascii?Q?QnwTXxFni9VaeBZ59ZjXNBzAUpBSGhnVRIrDTXom8djtGiUAYtJ/maC4XKZ1?=
 =?us-ascii?Q?f/W+B2PhI/RKnb7lvyA0LSoflZA70vVujI1Zz97Nx4pa0i1FhGbn0vDMMWAL?=
 =?us-ascii?Q?Xdo6TtNAvLO6EiHRl730/mg9qFb0Y276b+n8pFwKTZqvz2Xn0KOTd6NIKn7K?=
 =?us-ascii?Q?GcUBfYhIZUXGDkqPEsb1/qiGPNHZQo2mu/jyNsBXuBZEv3DXyGidYTYsriSI?=
 =?us-ascii?Q?ghFFSvvnf1ooBspENnN7bnBE9/rZ+QuCGSbjaBFz6LHNyeruQ022u44vmxCI?=
 =?us-ascii?Q?TV3iwSnfXWdadXAJ/wMy+R6y6ON2bOJjg2FLQLAcOCWYKBVn/63TKBMURJX6?=
 =?us-ascii?Q?edGLDPwiLYWxaRGWmOc60CTEpRrXm4DNBJlSuuY41giMItWepf2NBAbs075k?=
 =?us-ascii?Q?JiuIzncN2o85z3ZfaKht/IbtjmhetCKFsE5KshxIwrMHp2y+efLInGpI/4S/?=
 =?us-ascii?Q?KUnCOCjDAMi48525O37q+Zz61qMzWuTCjMGdDLJioHMLhIr4i8ndVd9PDSTX?=
 =?us-ascii?Q?XoJpBwOQolI7TCKqJl5+jfL/4lOdi2DTRhzCn937CN48PxNCmFLt3lMaka4c?=
 =?us-ascii?Q?f8UAUMkDutyp7LTXcEnfPdj9tEi6V9lMqqN5cKZet7HTxwlhR/j77Xxh436W?=
 =?us-ascii?Q?jh2V5JH3EqdEYr4ZhuQKuCDR/xoMkHvd0FVFimh/hIX6zdmRJ5OK6mGEpBg3?=
 =?us-ascii?Q?6eqN04MhEpENSs3G/WsoaDG6mx7K+RmWaFdqa9oyiUANeN6RL11XHIaF9jbR?=
 =?us-ascii?Q?QzukgQR6N7EHpk5/PfexWEhu/kEw20IfQ3+aCiYvs0tlNkr7VjXZKFGO5XOY?=
 =?us-ascii?Q?FB2oCjY/bzqlZoH11LoL8qZmOSobTfwf+DL9TnCUJQp0Gqhx7h2QeQ2h0Bc9?=
 =?us-ascii?Q?+udIE5vlMcCbKslW+J10JVD0WFb6pYq55T5KxvzsP3rB7OyeIfnlVbLqOjmg?=
 =?us-ascii?Q?bxmpP3Imtp3SzuuzamTsSa5POsV8heqJDu/iZkx/fYZblGkev6DTaIzfauqt?=
 =?us-ascii?Q?N0+C8SlCdoI8fUREyEfGGK+qnybGEGPLpIU6y8/DaPCM8jUg7TylpSW2YzQ9?=
 =?us-ascii?Q?AYhgPeP+Kb/0AkFI9rzbcTvJ7anlnHdvsShtFCyF2ttNo8812tebJEepyE/o?=
 =?us-ascii?Q?Y+K16rzAui+mcTk3TmXsKelTNt0oJ7JvHY6cQmDrp47zHWuMKJBU4vGWLfaJ?=
 =?us-ascii?Q?wf+9lNwOMXvxQPssko2aMVUMqrQgffBmleDTqoFaZYmzyROUtV+yeUWws2rR?=
 =?us-ascii?Q?5g4heruA4coa+tC2BvYi3OCzCxi0gacrcvpcMRdmXFScaHiDBSy9zw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6455.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bYAMz9I7Zjl1Muhi4ZHqRmATPRNM30z9m0+PmsODYzFKoGBTnkXL6ibx/N8x?=
 =?us-ascii?Q?mYVY05etnzCA+kqnhmbIivPSy+S+LFi+tVC0FLZSwVj5Q+vZeRD7lxJ1MsPc?=
 =?us-ascii?Q?BaEyQITPV6CUE9MLruZ0Cvo+4f+eBEPngrzRVTtIMqZTRrK+eDK2oYtrex8m?=
 =?us-ascii?Q?LvtDdn3Pt7kiEXHB60xpzLSyoY8r6rFKenJEldl1F+CQ8gGLJHc8l8fUSX8D?=
 =?us-ascii?Q?zoPWv3WkSBMluhA8IwalK9gOUKbIMnv++ektCxG1NTIJW7SQTeQQ4QN0Buys?=
 =?us-ascii?Q?ogxLWQgWr+NEFXb5f95jfGtMxJxdfekXyrMssaxHGeCn2Zpp5nqb9kRvVgRw?=
 =?us-ascii?Q?4508V8vlfrWYi99DAQqhQIqRf0rfA5wTQKi4FFflmQr/2jjA5wLeu+IrOUu+?=
 =?us-ascii?Q?N20NidxaSPDrmNv7pgG2Sis8tDUD8WJAQm/pGImBgNrLud6lEGxBh4X4IEgq?=
 =?us-ascii?Q?qB2b8N+m/UxtE7/VrQobqOdKxkS4BmLGeInjzo+jb7MQzcupDl/MB+cJaar1?=
 =?us-ascii?Q?O38N1WJlgLDGsemOtSW/yOdVIWSxtXHk/u2iWJs9aOhDAjC0e7z4CmraQf59?=
 =?us-ascii?Q?f6aehjt4q4JqT1SoiTEpIdTjPyvTMFWzrB917sipuGf6c1XEDPV0568nOgAc?=
 =?us-ascii?Q?9ftDBxAQxnF69grvXiKqOQgYqfpEMd2y79ufLkJIv2i+JiM0FfMSKLdIwGA9?=
 =?us-ascii?Q?COwkiBfnmzWzeb6kR63ucWryb+vC8NK75P1Q+eqMwa1FdiD/fllhRZVeK0qn?=
 =?us-ascii?Q?JUXQY81jzZANYTD0Yh3UhgQNs6EN9Fyqnw/FsBo0ONzdHDAlm5y0ukGxXzBH?=
 =?us-ascii?Q?MOIi/+3ALSU9sV2fAbJ80GM0Am4l1EnIXZoQdRKNRbzBbLox82K0ZVfk5GCA?=
 =?us-ascii?Q?98jrbnF+YqPksp6ufAvTQvBiDmcBZ4+s7xyGiIYlfOdhR2aBFRFLq4704/yp?=
 =?us-ascii?Q?7mvUVtgx6BLlcyjMYw5b8Fmm8ng9NOsa1UBnMHxcV+G+8skHCseKFVEnP3E3?=
 =?us-ascii?Q?nj5llihL0tHtd0UFdLKWl1mLenUJe6Ldsiu0V55xCBjcnQNJizQjhCRLDn0R?=
 =?us-ascii?Q?Me/FVgGwFJ4U21d6coltwncNipuWzwA7U5N1d75rr4Eiqk4dOfPvrWKS4orh?=
 =?us-ascii?Q?4GcG/8fvq9ZL/VTQlCOBObcsrM3uprg8ntfNO+j73scNd9Yb0B2btDabEtVx?=
 =?us-ascii?Q?DxpXfrBd0iysLzDle0eoBVQVB9roDeQi3ZpUuUUSoLZBTHo75iZcVkiexkce?=
 =?us-ascii?Q?IZB99UYFUtJUoVlB+qg/w2k8KQavqd24rcEufS0rXPnfFIj8QKriMTpzweUK?=
 =?us-ascii?Q?VtydOZb9xbomqQAqnuseVqerpgeDJs7UwqPYnsaIXbpvwGukyCVt4aUpHQCC?=
 =?us-ascii?Q?TkJ/8a40VolN1be5nCEesqKOux1/V/YblWX58EVXuDMEdHnDBPiWBY83EGLo?=
 =?us-ascii?Q?q/ZFjexYceR8ovN7sfsvwkJKVwMf2CVgSeeYyuHJBh1JjQH8jBwk+mhLhkbR?=
 =?us-ascii?Q?mXxA9pgKRAgOVVmfidipal4l0uc4p4MI9ubHvx8r60aolguD8sjAq79qUJ7/?=
 =?us-ascii?Q?B9hk7gKVIodIGkFy3ek=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6455.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: defcc70c-0e8e-4967-5170-08ddebdab284
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 17:44:28.6864 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fW+MIC0PSulo5ZTFdz+QIkRrNVpIPjdx+GaH1dDqbqfaYVIggnXxlpOgYRoAoBRI4tZiGALY8rptiFgc+cGgWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5217
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757007881; x=1788543881;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CGJCltcyJOg1bapbzQ7IljctYFPJXDjb5P5yApNIdBU=;
 b=VpOGqWvSq4S95guBT4mujtR1RkNlSBvEIySXG7vJdCyxo1VFeE2Enq1m
 S7bnOvwukUcyUfW3vAzVOzrV/RxDl3PAVqpYx42gEKqg8LgApEWBP27Wa
 4UAyBkwaZ1AZu4b+a2VMk0CmN1eEWKXxw0JMGJKtcnhPDjEUeXMVvYv6I
 +TPbGnr87j3n1JMOAv9t0ZGTayuE8Clg6hZ6Dg9dJFa5xKxTktciJLDzn
 GnIBGwx6H2j6cUhxGBE+uxNJyhuv7OwaJv1WD9AH0bcq/snnW/GGDw9oI
 SYu/x5pPj04JjItMAiEPyIsHkZEl0EIGbcvBHDFz09fvrWHbRdZLQoBPW
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VpOGqWvS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 07/13] idpf: add support
 for nointerrupt queues
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
> Alexander Lobakin
> Sent: Tuesday, August 26, 2025 9:25 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Kubiak, Michal
> <michal.kubiak@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Alexei Starovoitov <ast@kernel.org>; Daniel
> Borkmann <daniel@iogearbox.net>; Simon Horman <horms@kernel.org>;
> NXNE CNSE OSDT ITP Upstreaming
> <nxne.cnse.osdt.itp.upstreaming@intel.com>; bpf@vger.kernel.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 07/13] idpf: add support fo=
r
> nointerrupt queues
>=20
> Currently, queues are associated 1:1 with interrupt vectors as it's assum=
ed
> queues are always interrupt-driven. For XDP, we want to use Tx queues
> without interrupts and only do "lazy" cleaning when the number of free
> elements is <=3D threshold (closest pow-2 to 1/4 of the ring).
> In order to use a queue without an interrupt, idpf still needs to have a =
vector
> assigned to it to flush descriptors. This vector can be global and only o=
ne for
> the whole vport to handle all its noirq queues.
> Always request one excessive vector and configure it in non-interrupt mod=
e
> right away when creating vport, so that it can be used later by queues wh=
en
> needed (not only XDP ones).
>=20
> Co-developed-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf.h        |  8 +++
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  4 ++
>  drivers/net/ethernet/intel/idpf/idpf_dev.c    | 11 +++-
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    |  2 +-
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  8 +++
>  drivers/net/ethernet/intel/idpf/idpf_vf_dev.c | 11 +++-
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 54 ++++++++++++++-----
>  7 files changed, 81 insertions(+), 17 deletions(-)
>=20
Tested-by: R,Ramu <ramu.r@intel.com>
