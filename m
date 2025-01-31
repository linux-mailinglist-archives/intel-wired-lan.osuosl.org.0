Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB15A2383C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jan 2025 01:28:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C119660BA8;
	Fri, 31 Jan 2025 00:28:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lFNDDoMLhZ6n; Fri, 31 Jan 2025 00:28:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0CAD260B66
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738283314;
	bh=PX1nYWiYxe42LOWelchvMRzGT+su054oatlpXMdc1ZE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WNQifDa3e9lm9+5bZyx7jov72id9qjnoxErskJMU0otBSLA1sXaiHkqri73n7+lan
	 +MGB+ePr1LeDEwY1nlBT9I+a1ao6CeEHwOh7b9ThJeDD6r8kl04G6wwE2X7IKJg6lA
	 Ko4rrBP4xXGXhEXSsLmyPjXVabwtgd4zSyvuXTxgsxpcFJCrpiSIS3spOhQHVb+H5F
	 WCedUyxqTgBneXm2db7YOqBRBETML2Pim3BUNQv9PGIB0SBnoGxp5w8c2v6XSG7KBH
	 msdJsBNTXcjqTsIPWkIqJGSf5Sm9o7C58EjX/IcYR+Cv6VC8NqgMPuQ4ojDKaiOgdq
	 L1TUGwSZPNkbA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0CAD260B66;
	Fri, 31 Jan 2025 00:28:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B5CEF16E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 00:28:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B0DE860686
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 00:28:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4_Qic5By4pf3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jan 2025 00:28:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=chandanx.rout@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BE87360675
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE87360675
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BE87360675
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jan 2025 00:28:30 +0000 (UTC)
X-CSE-ConnectionGUID: bWYWI8svRymRP5mGI72e5w==
X-CSE-MsgGUID: RPrdJSfWRGGnzuc/BAQj6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="49447455"
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="49447455"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 16:28:30 -0800
X-CSE-ConnectionGUID: SqBLDmTBTbuWEVB0fjy0/g==
X-CSE-MsgGUID: jzRyPN/oTjCzBXcwBlE/Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110369665"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2025 16:28:30 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 30 Jan 2025 16:28:29 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 30 Jan 2025 16:28:29 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 30 Jan 2025 16:28:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kVgWPCAMfgsLIV3jCOJvy2Wgp6u2+su9FKbeoolLAgcASCZ1d1GfykqqKNdEx9jAzJL3wz9wvbpgTaFs1b43f+gi1JNC70egylrrObrfUFvqZ+LleLE6ZtoZzs3AsMyqY58qnNsfzEZ1SmlFPJpigQArbuUbjVptf4dEO53TU/iF6fxvF3D7LHheMDVvMtsD+H8sPjA87DL1erXZUbJsk0AhGBXk6TqpSFvrUZsZ+3e72WzF+tUMBKNxGTIT3y7Hu3msNGYvCxKIK5VkAJ+xPS+5uAsM330ISWFJHhjh5QaXhu9TVJ4x9bi2eY3FvWiCcS9RxtkNF/18BIIglGsr5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PX1nYWiYxe42LOWelchvMRzGT+su054oatlpXMdc1ZE=;
 b=Pu450nR5DEOoSJFL5lF15leynD17/u/XpAHLKyZeaYBnIJBdlpHSw1yK0jgKKJajHSEnkH5QWhbVPwe5nwohWI2QTeHrfrg4Kti3DahIHaPmd5qzXafC9N8Y69La9sULpE7FHAtas5jb82X+iQJw+7btjVojyAAyn75eSZA5ytrWwFobMeDKBtn24v7rEMIDR3DHfxrSJzFFkHc+1+EFvasjDbbwT0UVDeuj0HFxHnE4ig7MesYnTlnTJEcnmxRWjRlrHM+0AuONbxSAHkEotkk9R1GpytbpQsDWB5VtANbZsXMiZf/oUS9Ilhfolm+WuGZl5fj7ZS6eR5yUAxFNvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8313.namprd11.prod.outlook.com (2603:10b6:610:17c::15)
 by PH0PR11MB7615.namprd11.prod.outlook.com (2603:10b6:510:26e::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.29; Fri, 31 Jan
 2025 00:27:57 +0000
Received: from CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3]) by CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3%7]) with mapi id 15.20.8398.017; Fri, 31 Jan 2025
 00:27:57 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "xudu@redhat.com"
 <xudu@redhat.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Simon
 Horman" <horms@kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>, 
 "Maxwell, Jon" <jmaxwell@redhat.com>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, "Kuruvinakunnel, George"
 <george.kuruvinakunnel@intel.com>, "Nagraj, Shravan"
 <shravan.nagraj@intel.com>, "Pandey, Atul" <atul.pandey@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v5 iwl-net 1/3] ice: put Rx buffers
 after being done with current frame
Thread-Index: AQHbbafHkW3yIZmixkqnhRAF5DkqjLMwElrA
Date: Fri, 31 Jan 2025 00:27:57 +0000
Message-ID: <CH3PR11MB8313DC9AE85F7B2AF4AB20F1EAE82@CH3PR11MB8313.namprd11.prod.outlook.com>
References: <20250123150118.583039-1-maciej.fijalkowski@intel.com>
 <20250123150118.583039-2-maciej.fijalkowski@intel.com>
In-Reply-To: <20250123150118.583039-2-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8313:EE_|PH0PR11MB7615:EE_
x-ms-office365-filtering-correlation-id: 3adccce6-cf40-43d0-f13c-08dd418e1c73
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?jp8uisLKsWdfaa8wHrOhDS2RxI2aSSdljqJN5gkif/fWdkw9iLrLoGaMfWo0?=
 =?us-ascii?Q?kNqOMrMIHW7YGzQtnjafC9AM/7XRkO8tcgFtl8lEoCOxCg69cYK77cUEV0Yw?=
 =?us-ascii?Q?QKIbDhZgmFshpaTOvDcoRD85Swxf5TF9FwksMhmmLHuDA424VLt0PGlS15Nf?=
 =?us-ascii?Q?O3VktQGKUS+9MX7UFM6g7Tzziu6vbW3BjH+lHigkq5RmGOCejMGOFgozhjoD?=
 =?us-ascii?Q?hjgatd27JmRxb+AOb5UpJQuZaf+FOqzHpgAhtHX2SHMiSaIjIKGSiQ/9Acca?=
 =?us-ascii?Q?2Hs2js8jAEg7CzCyX9BrScgDJMMkKSfk1asy/HzVjw2hkBIKG+T8LITitaoZ?=
 =?us-ascii?Q?DyyLMUQtRrGyMfQ7z8rC82YPL29DcDLXGFr/pjtU3OJF3X92PZa0v4vnNbS2?=
 =?us-ascii?Q?gohm4XTOG0aiJ3C1ChlhLOa/alhY9qYCcUxWiCrlqeM0+WGPE2D0n0Db8sad?=
 =?us-ascii?Q?LEt9MMOs+bFD1sztUeogY9FMe19LATgYuTTprZ6K6kjOdtwkTihCByNZSfXv?=
 =?us-ascii?Q?d+66qS4fX16TNfCYX8oW5ZurevyyulK0Bai7/2lL1O+MATCz8hlTpuNnmS2J?=
 =?us-ascii?Q?kvQKcntBKLlqhxJlblKieYSH140zQUkjrcM7Pf46LEX5RHmvW5aL6/4XPDM6?=
 =?us-ascii?Q?YtXx/xFfKgNpV7cWVJ9RIYXZIAZEwbxPD6sp3rx+B220AExZFZNv8XkuD9/E?=
 =?us-ascii?Q?wBNXRyIB+gxK9ZuvnzWFFvKJP4cvm/V8OZsdCjhy1RMEojbfIqR5SP4+HdgF?=
 =?us-ascii?Q?cdcsZXhp7O7X7Qmxzx5n5hStuLgVaDMX+AOUYSupJ//LRF+Bb9/nohsZHE8s?=
 =?us-ascii?Q?ELYzfGL1V0tcWzkumB6Y/H709RY5l/kLTkQdsUYNkuhr41txnn3ihK5SV+PB?=
 =?us-ascii?Q?P+m6rxTEwHp4lz41Jv0Z9tNMQB5NilNiVQk48o3U0k9yNlb3+7F6BHzgdTDb?=
 =?us-ascii?Q?e88yf/4g/az+mofzF8R2XiPeJx6KbuRWjlZqoq0nw0sC1ab4pQfWfM0hQGdR?=
 =?us-ascii?Q?0wkFy5fERYR6I/U1/qh48NE7eqiDD4UCoA5NibID77/ERSa8c4PIcYD2CScr?=
 =?us-ascii?Q?6BN8fNtw2rhDKXy4MNWQFysoasHMXdEtICU1cTDo32rNVRcYrpu/yAue8x17?=
 =?us-ascii?Q?qkV4zxRJ+l9vNbmQ5jzx1Cq+dkS5q/qFMwhb/hjkgkQOlkUNhcbFoAe9VvQm?=
 =?us-ascii?Q?H0my3iYSA74g4TPlKyVcu/7oeY2MvhQm5BRZjmhH+AbvExmbMWwGnxvHHUqo?=
 =?us-ascii?Q?htJ27zwf/yDB5p18x4+bDJQcpXujG7AsVMM3D3fWNA22AdLyw/3uPEOWU+hI?=
 =?us-ascii?Q?2cphFsZTlTykCNvuCz4BO94Ho4xMgOzm+eiQ7SR4NlglmCI1JzMXDA4cdn6H?=
 =?us-ascii?Q?pzpkMRCmbNwBkItMpVKn3veh4sqLGAkRXzy5ZcP4bwBREQNHjS8LDNOZsWzF?=
 =?us-ascii?Q?wlTZt/F7QdBRr6XawbMf0Pr1h589of1f?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8313.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mvMlO5CxHZz7w9Hfftjsjb5aHUfEahSduZMbCpwqbvux0v7alGGOuALcr2Fn?=
 =?us-ascii?Q?aJUzZpbjwHWwiNRWHf3SARM2yWOsU8ni8fPSOd29p0tuYpIbNKBYqTVrgxFC?=
 =?us-ascii?Q?9t+b1Z6Fja0FiXIE3rx94+XRooMhOo99tDquviwD4fxoUeopQkAwjudMKPe7?=
 =?us-ascii?Q?sKhTEErmJWAwUqYdHekLZEshWRIJSXWplYJebei2QUBIQ0cxmnuv8L5978Xc?=
 =?us-ascii?Q?ppD+FIErWe6xpRuroLRSDTHnj4PBSGPvrH5/HBEYHA7aa5A/jKOt6hPLOkaW?=
 =?us-ascii?Q?g30M/D8xDLYevuvJfIk/ZqFMbDc8ljNIuELvR4UXgOchB0zjUsVsqsVnGr+d?=
 =?us-ascii?Q?XPg4MBQlXL22j2Hw0wI/nqEM9SzOuTGea9BvW7jTEfCsmVV6x19G2wGCrORG?=
 =?us-ascii?Q?VRf8bt1Frr7Mcd+KfBFbsyJgRkAtj5bC0CXTAZ2M1Lg4gIErgtJdN1ehLOci?=
 =?us-ascii?Q?kvRNaxyZ2DuE99uo7vrY2g7JJpmG4y6x2v2/YSZEiJxKASx3eH8b+0tjRUSN?=
 =?us-ascii?Q?WqeAxEC7j8ahg7BNRrpFxkLniYeQx+/RawYM3cxU7flROuajRJlWyIiOw4J4?=
 =?us-ascii?Q?TkuPfrLdbBoErbSSOgCDFtlTT0jW0IkBcDE5pw9goLck/rJ2YculXfT67RQW?=
 =?us-ascii?Q?ydjaKSA3FtF5kyUFfjYk4JO/4tC8NxEeSUmJgXMq3Z4cPck0L3tKVcSRWMs/?=
 =?us-ascii?Q?t8CAg3wk2solH52sFN50Af1UxCJ+ddFJUqXQ+eVRV7+27irS/mVPAklOnxF9?=
 =?us-ascii?Q?syyl2bnl8qaPD2Cb1sLErnA6t6drRGgK+d9C3gXC+/GntpOJQ6+VIeAFZ/k3?=
 =?us-ascii?Q?Q5xZirp/NK3K1rPwDV5FqzFeO4gXOIjzQjg/zA3FgOGhWh4MG54IDct1IHcd?=
 =?us-ascii?Q?WhoYVbWrG1AtUpOjJd+sQyf4Bpf1j1cyvvtHBapo8n2v/l5YmBwVMxxYvlkH?=
 =?us-ascii?Q?6Zp96v06BTzkVd4oUYSKzjYmU/vXkYvUPjppLhzqYpxbJnngUSO7f0WBnLcq?=
 =?us-ascii?Q?9NruH1T8C4GvVswD0Upmsso3Qnbj/5kBtQfjVGNjvC1/ncnDhqbzWhwynluC?=
 =?us-ascii?Q?0br43aKiqE3Sn04mDyaw+DUDgI/1R7JPkEjLcq/G2qMZbSbq67kG5rHCWFlN?=
 =?us-ascii?Q?t/96COTZoB6XV9CVxmEJev/6U+gijX9XiwlD91v/rW6V3Bvp4yPTHRaHYW0x?=
 =?us-ascii?Q?D6Q6hgE4CAGtgdcwByF38AfBVSRPmFYsQOHz9DCGD/ZgaWS85p5b3dbNkQtv?=
 =?us-ascii?Q?tPDiDJNN2I5ZWKplNhgoZS5Dtu0swBDnd1PydjsKe9vifYLUu06/uB35NZE1?=
 =?us-ascii?Q?HdC9GK7RLaybiPjBZiRfvm0ZYec01gsaOFTYvyE7go8HTEOnh89LYn7h4R17?=
 =?us-ascii?Q?Q0zt0zOdm2JqtrZ9VmDXFNlwBY0meqcrxix6bUCKyt4FVTPJZa4TnReWyazM?=
 =?us-ascii?Q?ibtU+ZiK2zimj7v/3zUcSU5Y2pFP+AultOEG/qc7e87Z8XcKpraVu47/kEFf?=
 =?us-ascii?Q?iO+eKD1ohHwe3vbwLXl2KMjbUnYurfqrLmCosdTenOQKV1QwHWT8HVDul5yt?=
 =?us-ascii?Q?YT3HzkoGyuV0ibJFjhrgeBV5kkmY+yo2mDvjKRr6?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8313.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3adccce6-cf40-43d0-f13c-08dd418e1c73
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2025 00:27:57.4895 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CMozu4Rx7nit7VKuuyjEqWwZFaUekR852q1MikZpSqT2x9QdetiuikJ98XoguSP59M87VeLvXJ6PEuQ0fFkqqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7615
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738283311; x=1769819311;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xJMm8A89D3mB060i4fb+J993o2OXasLO14u4V8BrBGk=;
 b=B4vEinZkzp9oMxhuHwYdHi+hRzX97h+um3A6urk00olSvOfYy2XEUjsr
 lyFzXz7KSlLE/FPy97SHqjUMhrBXCp96pJ1NtaJeLteXLub9fGKekezQ+
 /mQ8878u9/Es8XRiaGWplD1r9Cmzd0ON0BOn0S5DPJWM66WNJrk9J3r8u
 wXLxiykAi/UgxkgwpBH/uuBC+6ysnst7NuCT/xWv3Nlv6gLLxz/bsQ4+p
 rYsBZKHu8ufLXDE/Fksz3X95TVSI5cCuE17jFSM9Q8tPlNv35KRx5iJ+v
 N7PZVkDDkACUohAK0q8CxdwzLmnBi7h8tWcNZUZeZgG1juA/QKv1kE/dp
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=B4vEinZk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-net 1/3] ice: put Rx buffers
 after being done with current frame
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



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Fijalkowski, Maciej
>Sent: Thursday, January 23, 2025 8:31 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
>netdev@vger.kernel.org; xudu@redhat.com; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>; Kitszel,
>Przemyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E
><jacob.e.keller@intel.com>; Maxwell, Jon <jmaxwell@redhat.com>; Karlsson,
>Magnus <magnus.karlsson@intel.com>
>Subject: [Intel-wired-lan] [PATCH v5 iwl-net 1/3] ice: put Rx buffers afte=
r being
>done with current frame
>
>Introduce a new helper ice_put_rx_mbuf() that will go through gathered fra=
gs
>from current frame and will call ice_put_rx_buf() on them. Current logic t=
hat
>was supposed to simplify and optimize the driver where we go through a bat=
ch
>of all buffers processed in current NAPI instance turned out to be broken =
for
>jumbo frames and very heavy load that was coming from both multi-thread
>iperf and nginx/wrk pair between server and client. The delay introduced b=
y
>approach that we are dropping is simply too big and we need to take the
>decision regarding page recycling/releasing as quick as we can.
>
>While at it, address an error path of ice_add_xdp_frag() - we were missing
>buffer putting from day 1 there.
>
>As a nice side effect we get rid of annoying and repetitive three-liner:
>
>	xdp->data =3D NULL;
>	rx_ring->first_desc =3D ntc;
>	rx_ring->nr_frags =3D 0;
>
>by embedding it within introduced routine.
>
>Fixes: 1dc1a7e7f410 ("ice: Centrallize Rx buffer recycling")
>Reported-and-tested-by: Xu Du <xudu@redhat.com>
>Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>Reviewed-by: Simon Horman <horms@kernel.org>
>Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
>Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_txrx.c | 79 ++++++++++++++---------
> 1 file changed, 50 insertions(+), 29 deletions(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worke=
r at Intel)
