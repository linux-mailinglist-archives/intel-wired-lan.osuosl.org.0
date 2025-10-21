Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 82840BF8BA9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Oct 2025 22:35:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2171282486;
	Tue, 21 Oct 2025 20:35:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gIGyTHtkeLfX; Tue, 21 Oct 2025 20:35:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A352821D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761078910;
	bh=bT/Jczlyf2ksLWCI999hpb/baCiPDh/Gwf8+eGFshWg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8EwvwheirNbRaN8Qry5adqHEwrgLmPVMM3Z5T1u5ig0oh7F7bCpmqfJ0skwnrFIce
	 y3O2gnZ0QrM/8elXfD5bb+k2r9RjXtJYrTADsYhO8lvdnEsj6yH/i5zCj6AFnYEUS2
	 fAoDzuPfd7iR1ZnvwdR5hNSic7Rgi9Xivkfle/rpzPJTZMg/d4doqSF7yD+kQyOcZx
	 Pk9yX8HWUlXh97pFS1TGzsA6xXLIDOkbK8YLBzUm69Y8ZoRtsWpWUnjKqWdAS0bBMM
	 QIbKsBKgvA+avAmzPQO12o7L+iyMMzEN3YZpcxiBY+oi+rpIphImwKIi0jgOu2CXbY
	 79btPVfuJm+7Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A352821D7;
	Tue, 21 Oct 2025 20:35:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id BBC39277
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 20:35:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A270A4087D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 20:35:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qLmC9dzzQPz5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Oct 2025 20:35:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C3C2940872
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3C2940872
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C3C2940872
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 20:35:07 +0000 (UTC)
X-CSE-ConnectionGUID: ikGUJrNwQua1jYBH3DUvug==
X-CSE-MsgGUID: 9IyQ/uc5Q62vO6GzGnOgUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74336167"
X-IronPort-AV: E=Sophos;i="6.19,245,1754982000"; d="scan'208";a="74336167"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 13:35:06 -0700
X-CSE-ConnectionGUID: 8/u3Gm6sRVi33O1mCdWiWA==
X-CSE-MsgGUID: fL6att76Rl2vSpOef9tCfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,245,1754982000"; d="scan'208";a="207356799"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 13:35:06 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 21 Oct 2025 13:35:05 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 21 Oct 2025 13:35:05 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.62) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 21 Oct 2025 13:35:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EXFXK7gfe7rttU0M7OBCokBFp0Tn6YEkC/kWCtlrjy1nG9BCi7fMHTxSR8P7P8irKf6JjH5DYGmCn2ZYkAcguLOfczpgrWxRK0qZW7UGJAVO8id8woWfHxfeQm9edqAJugK/vJJNSHWHXxDRKl4qWCfYDiQsSssT03n7rYAncn8qtCyFHSGtLztJUVEezc1tumaHnx/60L69VUpN78miJPCRt4PdEdYc+3SAQa55DRwoPSmEOx2wB2F7vGqERpEGnhkr9+mwpbHKaLq6H3H9qg+3nJUGK6FMBe4zGvmlMa9jUXNQbz2S0JD0ANbTS20uHdtIyCCUydOFGck9RAp8eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bT/Jczlyf2ksLWCI999hpb/baCiPDh/Gwf8+eGFshWg=;
 b=Hmhhoei8vHmW5kwKJdexvNeozNL6wPaOuUtAw3UzF0TKIj7npys6K2oDDQyvhQ0+uTm/0OMY4sWnxnMAO9oNMzIycETObrHekN682KjWcshwzIsvCPMABJmI1hBOEte0kDG+8x2Yk3XBKWpGycbGtblWHYOIhzaagTCJs2hCNHqzFNXSqtwj5TIQi1N1TtO/FrDFVS2VkIrOKvMQnzLDpDb0JVC4w8+f3zPbLoKqyZYY4tX+1sZIjU+wJuabaod6n4l/LEdX8ImPsQ5zcsadTDdlEMcm++UP77rPwm9FQJDkLIJe9/GoK5o3p7rr0Nd5bRRjsyEiJ3cFOTXNnmlylw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by LV3PR11MB8696.namprd11.prod.outlook.com (2603:10b6:408:216::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.17; Tue, 21 Oct
 2025 20:35:00 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.9228.016; Tue, 21 Oct 2025
 20:35:00 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Robert Malz <robert.malz@canonical.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH] i40e: avoid redundant VF link state updates
Thread-Index: AQHcQqGqBnfWQmT0u0eRaqP2069YjbTNDupQ
Date: Tue, 21 Oct 2025 20:35:00 +0000
Message-ID: <CO1PR11MB5089A29DFDC077EDE6E535BAD6F2A@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20251021154439.180838-1-robert.malz@canonical.com>
In-Reply-To: <20251021154439.180838-1-robert.malz@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|LV3PR11MB8696:EE_
x-ms-office365-filtering-correlation-id: 78822fbf-c358-4f99-e3fd-08de10e14ea7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?bqUGVCqmHKB/8Wgq7FQS1iZa9/GKqHPwI7mZV+CUNkHi4SCz4Ke+tGuZeU0s?=
 =?us-ascii?Q?IyNVvXP+jGt+fayWlPkL5gKBLikoBfXHC6zavnNw9HRDRSiVHGaHXufesdIl?=
 =?us-ascii?Q?MoXcQNplgACTl3ISfjULRMh1KQz4SvI0vOJvE4IkwxzxN6BYBR9NXbdPiKtI?=
 =?us-ascii?Q?IoWwgWSAqqw2NT3PtaBD2E5d+SBLlBnMePwOJgNwo5yjmIrfxENlLj7zYLff?=
 =?us-ascii?Q?7bJP5lvH8ucYBnOWl3/kCfET4MipaXhfF9kXPRxK6dssG55+WvWSxdd8te4m?=
 =?us-ascii?Q?qCmOBo2zeaGbx8759A1SMDhWiByorMgEZk5VZkLEzLXYby5B+um0E8sNkEaA?=
 =?us-ascii?Q?rUISOVEO8srAAQNvEuHh6U5qgqzhm8BYC1S0d7EMWaLlqiEbozCfuCar7ilb?=
 =?us-ascii?Q?8LD5pyHHVsfobafqWfZLT2f7R0Ge+iJZWPmn9uIH9GiJAUY+NDgLmGmRMjbD?=
 =?us-ascii?Q?pX+XUbSoyI9rNmauebwS+8WCknfdz9KEbbamEJpon6sdI0c10GLfTHWWmN2B?=
 =?us-ascii?Q?re0cwUPbWVsoX5wIJxRkcl4AwL8nmnTg27Adjnr2vz7P8RBbhgt+5fi7flbT?=
 =?us-ascii?Q?l1PBbU6eQzG32yEbRE8lqXEjFL8vCp0RsJG0rY6bdArCU0AGbd9hr2NG6rTc?=
 =?us-ascii?Q?pJjZrOnPTP4WF6psWKDGpsikiV0e05RGWgQGfcuCQrUd5LSVyQ58Uprn4UrN?=
 =?us-ascii?Q?IlCgoWDKYJVJEggt/JQCCmxaOJ1/C4wdU/BVOrTJfMHBKth5nNvHWmzV9iuK?=
 =?us-ascii?Q?2DgBEblhykZe/0v8HStn4YbfSBWXImg5EK3oaIMvhefyyetMvQZlL8YgZ/lK?=
 =?us-ascii?Q?0BDwTIAc6lGq8HXFuSheQLk5iZrlBVsh7IJ4Y2ml14O2Te00W6lE0XwHUa/D?=
 =?us-ascii?Q?Cg56ZpSXceQnjPBGPzujMRf+JOHwVtokl8B+04yZm/5bZABqd+qGJ4BVZKWH?=
 =?us-ascii?Q?0IecffrbJE6WGTzuhurw3r2mieMTS4M463YPgplqfwbRvGikf5R5S0h+VHMa?=
 =?us-ascii?Q?8dpGbn7UVW2ZeOQTt7DIYIViPU6RoUN5yUNvZpryWyd0x6dxH/R/g3F0KKdL?=
 =?us-ascii?Q?xW5VEbnG5s8hpIAzDQO2+fsqvwjubtT1RGZokDg+bjBUZTrR2ZQajnJv75Gw?=
 =?us-ascii?Q?po7vkQic1HDY33LDNYBL+iEptGC83x1JIXGzACorRWlRC8rkV4K3Yb5xscg5?=
 =?us-ascii?Q?BaplHU5q+3IR8UZIXtlj44TX2ufYvpZawhtioy4+2GGRma/k8tEl/Vhl/Oq1?=
 =?us-ascii?Q?bFiQRHjStanYdhQvXMtfmBf0pISVYOSmeTDaVgh2insNgtPVz/xSbxTyTL7J?=
 =?us-ascii?Q?+ld94rKKzpsEKkyBRAh44El6ByZJ4U5H/lvygSMAF/Shj3g0riuryigenXhO?=
 =?us-ascii?Q?v5Fb2ASirBYDeP1hxjTIsSEImDzDovb/cDOxVOsxt9SzJcPi0SPlP8gd01Dr?=
 =?us-ascii?Q?HcgyILxe6S+S1aa7pJBeiDlg/8FGe99IAwch5vHXxVTPkK+wqt5OjfUfiR6F?=
 =?us-ascii?Q?c65F12j0EZ5YtVOOKNjaWiRVFMpj6DrLJN6p?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YdoORqsgesAcSbGqpw/birjPGG1a60yjuSxMfopKZRrBNY5wtoK0eigf1Jw5?=
 =?us-ascii?Q?Ot+s93vuImlCMvfMrmRhKlP3mhKlliqI8Z9omkJKh4N6aUz46oSKPv8ABi91?=
 =?us-ascii?Q?J6j99V+34lBS7dgLereD/IYWai6C4lT8ZnyOURkalnj9y/UVvq9IZXjV1jOq?=
 =?us-ascii?Q?lamtohPe3lqJFne0OnvfoKffpoItoswB6h3aKtR46djbPlXG55s+TRKlXgdv?=
 =?us-ascii?Q?0XKEiTZk5SvZBMxXmHE99XbywjEwX1gHMaBZQCuXwSk/i+C26IMZgBoXD7v2?=
 =?us-ascii?Q?+nvebvBWGz36jfqN6qogGYr75X25bZ7uZnpNyYWaq3JmUL5z5+TQm06HUB/o?=
 =?us-ascii?Q?4HhraKRasCtUs9qNnEqo6sKESaRveB/hgOY3TLjKeN/uYpM/ZucPVRzDifba?=
 =?us-ascii?Q?gUwbFwWkokqa8Jj7ao1R4kK3Jt7Uhdgq1KWZeuAvSE8v83wsisTPKCbcmd6S?=
 =?us-ascii?Q?Ole2QxREAEOljHSxdYAbDMQ6JERZYuA2ROfUyVyW+Qk2yA8xq2/eczqasQpv?=
 =?us-ascii?Q?AxUxIQqIf28idIPSrvDm7zdMNe21+GzwUFjFK0kHa65OOYDasF8aHYv9zOEm?=
 =?us-ascii?Q?wQYI3jCV8dQsmE3QzgqLDYscA2VgTyjhx5WdhYj8kBW7++fwRuGmNXZbKyp3?=
 =?us-ascii?Q?JWi3s0kDDnknRSwbUE0Cm+Ywgpcb024E1z2nbPvG+wBk9kciC//9TMZTGEuK?=
 =?us-ascii?Q?xwBpiHt8Hca2XSTPQixW46861ZT1K+RrGW21qb+8jPlfaHio6+qaXZiIojhq?=
 =?us-ascii?Q?mhydffjb9AuUl7XrldontNBpXvvWby6y9TVQGW9uoChLtvpO3XX4IhilMS91?=
 =?us-ascii?Q?mlr2IA3x5JBtNrf54o5tt7kwSlt4l9W7nC5kF5M8VanNo73cEgevZuO171kd?=
 =?us-ascii?Q?tyRjCjzmWkvcpyY0Si82saRwWn3oZyHxTL294InwQo1HQEwBZwCcQCZhUbts?=
 =?us-ascii?Q?OPMGsj924Ak8Ir4iHzfac2oGfHnZv/d2MOjhnn9rZ2tj6MZvjoUKPH/ha/6a?=
 =?us-ascii?Q?wyAKpEOr0/flNPIexlR9Jz9pTn6g4U9na7RjWGwGZ6ipyUoGxPykRurv/wqg?=
 =?us-ascii?Q?cEX4zolrS2SPNv/J0wJ2JuC58BiZ1cNFoA7rJk9uF07NHYQbIDAjkwW2n/H1?=
 =?us-ascii?Q?VLNA3c/CY/XdhJjb0OQz19tootuTSHYyvofCFrdD2AreHItpihRNtTZKXS9e?=
 =?us-ascii?Q?c35i2VbUnfH1USqTYzPi41q0KmY/jptTA+ph2T6ruto7fKI905KuWmSHh0Qq?=
 =?us-ascii?Q?JliBj54kTHxF2zr2jNSWFztIL0oGsZJ1Pt259e0tjNZAng0yT+W5QVvri7qJ?=
 =?us-ascii?Q?tSH7/xWhv2prgtLcIKKKXFMn+D30/3HFVV+kYVtA+ehBRaGa8To4hGkwzok2?=
 =?us-ascii?Q?5k91AjRejBg5ogsuNOzWLGyzMecH/xw4ggM28rW2LEtgG3HQSa4dhB6AI0uI?=
 =?us-ascii?Q?z2UhyewabTCzJjufRKntCZ6/kMT97Ny6UfMfYI/XGdVNqlJGbo5Slv3Jie6B?=
 =?us-ascii?Q?LWl5MWPYUd7njbBDIVjt2T21xEpcPMbVzIpazQCacM4xi3oUVXg+nMorzirU?=
 =?us-ascii?Q?mBoF1LPez7sh/THNEP6Y47j/HF5S/qA2chUNltWW?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78822fbf-c358-4f99-e3fd-08de10e14ea7
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2025 20:35:00.5990 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WESooikWqCWif/73iXwD70d+KbsK2j5mnJ5+r7yqrTmABc3t0DWeeQnGAje0vwf0BNIxeR6oh1CHOwEeydjpvISA83Hv6wmIAzvLo96bbY4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8696
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761078908; x=1792614908;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tXeDpFuOc/a6iiL/Oi6jWR/3jAkkJAcvGQCbULzQceQ=;
 b=TRztIxohbGaPX1rNunqZtsycgUCDoUFGpG/ASqZpwdVV9wLdZ3K8c7ol
 uU76FjTi3UcGTKo0Hbbm+zU43LfNpuyPMnQ23xYeSWH62ZYuehE1QLe2e
 6PFhI1q0/a2Yy6yHgTDhIqwNp8o0JK3oCmKLfxzV7nWcOJ8HWGBHRpOum
 gF7bE6jvv17UEmnLGCIV13eSv0rKMfEoCIXINd/byBnL1IWlv3/ua2shL
 ooZI6GDxBKxJ4lqC978Sj1Y7BkpOAZ24gzlIXFjszjx+ZGoE53/UU8pYz
 EvWXhJida+daNME4DRKgldEdPhRHudznGMXFe28sME2QQzVRWZL+n0I2f
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TRztIxoh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] i40e: avoid redundant VF link state
 updates
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
Cc: Jamie Bainbridge <jamie.bainbridge@gmail.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Dennis Chen <dechen@redhat.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S
 . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Robert Malz <robert.malz@canonical.com>
> Sent: Tuesday, October 21, 2025 8:45 AM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>; Davi=
d
> S . Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>;
> Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Simon
> Horman <horms@kernel.org>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Czapnik, Lukasz <lukasz.czapnik@intel.co=
m>;
> Robert Malz <robert.malz@canonical.com>; Jamie Bainbridge
> <jamie.bainbridge@gmail.com>; Jay Vosburgh <jay.vosburgh@canonical.com>;
> Dennis Chen <dechen@redhat.com>; Keller, Jacob E <jacob.e.keller@intel.co=
m>;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Subject: [PATCH] i40e: avoid redundant VF link state updates
>=20
> From: Jay Vosburgh <jay.vosburgh@canonical.com>
>=20
> Multiple sources can request VF link state changes with identical
> parameters. For example, Neutron may request to set the VF link state to
> IFLA_VF_LINK_STATE_AUTO during every initialization or user can issue:
> `ip link set <ifname> vf 0 state auto` multiple times. Currently, the i40=
e
> driver processes each of these requests, even if the requested state is
> the same as the current one. This leads to unnecessary VF resets and can
> cause performance degradation or instability in the VF driver - particula=
rly
> in DPDK environment.
>=20
> With this patch i40e will skip VF link state change requests when the
> desired link state matches the current configuration. This prevents
> unnecessary VF resets and reduces PF-VF communication overhead.
>=20
> Co-developed-by: Robert Malz <robert.malz@canonical.com>
> Signed-off-by: Robert Malz <robert.malz@canonical.com>
> Signed-off-by: Jay Vosburgh <jay.vosburgh@canonical.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 081a4526a2f0..0fe0d52c796b 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -4788,6 +4788,7 @@ int i40e_ndo_set_vf_link_state(struct net_device
> *netdev, int vf_id, int link)
>  	unsigned long q_map;
>  	struct i40e_vf *vf;
>  	int abs_vf_id;
> +	int old_link;
>  	int ret =3D 0;
>  	int tmp;
>=20
> @@ -4806,6 +4807,17 @@ int i40e_ndo_set_vf_link_state(struct net_device
> *netdev, int vf_id, int link)
>  	vf =3D &pf->vf[vf_id];
>  	abs_vf_id =3D vf->vf_id + hw->func_caps.vf_base_id;
>=20
> +	/* skip VF link state change if requested state is already set */
> +	if (!vf->link_forced)
> +		old_link =3D IFLA_VF_LINK_STATE_AUTO;
> +	else if (vf->link_up)
> +		old_link =3D IFLA_VF_LINK_STATE_ENABLE;
> +	else
> +		old_link =3D IFLA_VF_LINK_STATE_DISABLE;
> +
> +	if (link =3D=3D old_link)
> +		goto error_out;
> +

This seems reasonable to me. We should check if ice needs something similar=
 as well.

Thanks,
Jake

>  	pfe.event =3D VIRTCHNL_EVENT_LINK_CHANGE;
>  	pfe.severity =3D PF_EVENT_SEVERITY_INFO;
>=20
> --
> 2.34.1

