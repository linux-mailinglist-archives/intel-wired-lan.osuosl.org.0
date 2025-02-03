Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F9AA251C9
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Feb 2025 04:49:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 745E781EC9;
	Mon,  3 Feb 2025 03:49:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cmz55d5VJCd0; Mon,  3 Feb 2025 03:49:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B074C81ECA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738554577;
	bh=W9c3xhIr73lAVNxHNp03+ch3215NvKtdTWqo589Lp5k=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KBCDpOWs7oZXqG9tcRwEj0vwggcH7ohPUPOOKmheaQLQbEQ1JLOajwyP7SCvwS/H9
	 rO7ZM5awn+oqHn9avwkIQdJezLdwfFN11FjZf+nVNm8fSQ0WQ6cF8naMjgpvtYg51j
	 DS/pIGsjFve7D4bwti8JdfCpGcK/UVDOm2P3Z7aoiinlLveW3BfM9+kMptJokTc5eU
	 Qfrhp5qWQ1l2E1/nEzjRCe58hHfRD2L44IVlmzg6VhSkAPwxBl3jpbQpjwPYEeWujx
	 bRArMS+TuFWeK/4dDyIANnPpwzGpjIpdsJYJ3B8IiorX5DWO8eNH4TvSEzQ6audHOa
	 H4XtVDzlFE1ow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B074C81ECA;
	Mon,  3 Feb 2025 03:49:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 446C412A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Feb 2025 03:49:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 25A5860818
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Feb 2025 03:49:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V8dbCVujnLO0 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Feb 2025 03:49:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5D89E60628
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D89E60628
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5D89E60628
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Feb 2025 03:49:33 +0000 (UTC)
X-CSE-ConnectionGUID: KxBaycaiTCWJrwbbLxonIQ==
X-CSE-MsgGUID: kEhk2gvFTl+SYTb/hiP0PA==
X-IronPort-AV: E=McAfee;i="6700,10204,11334"; a="42790356"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="42790356"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2025 19:49:33 -0800
X-CSE-ConnectionGUID: ANxhRLvUSmWxXb4EbeUyEA==
X-CSE-MsgGUID: qg+Iv/OwS8a5+LPZPfKi3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133425183"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Feb 2025 19:49:32 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Sun, 2 Feb 2025 19:49:32 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Sun, 2 Feb 2025 19:49:32 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 2 Feb 2025 19:49:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yqhyQv0zmDmB43f4seTC004InBZsk2Om3nxXrH+oyyEgQrcdxry1Sx+9fXCLh0RLJBwDZ+fSJO3JYoEAO0mEXXv+S5UfVBCssinoqlCSZZ/pDmE2ary3GLkqza333YRz+nKvDOYz/dKiCCdBGbZflww7VlxB5D3srwUMUTurZsk5xvrDFsEc/m2HJzztaNqjfHepQ69BC56+ynFaXElWzBO8r2eHhiM0m8ZOgdPAbjX6n+THp3pxsMmHPsgLVL9G+NX2Y2lSaJ+bIhR9c94KW9AbKlhygkxf8Zun8y5BOGsXrk2afkGCXVZ+aAp5PXXYRuUnE377o1Hzw9j6ae9aJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W9c3xhIr73lAVNxHNp03+ch3215NvKtdTWqo589Lp5k=;
 b=i+N9+wmKul1n0sYCci2ruOvvSAVOdXzUswIzY7bmtOxOc9CtbAqZLo/NGg6eA6iFLgM1cUENeFbV2O+4O+neqN/1vz50PoPg/03+ryZqZ6jb9+5g142TM72PeriZpJNFSoUPdmGVM+xH/TFQ16OwVCSr2Qc/iBlouPagnRCMCYzV6XyUIoK0pucQ4NazmJbI5GcBn+p7WiKs8sfPHYqRXzCSEih2gnJtcvZMbPU1GLbOZYqujzj9TntnvI/Y50VDmMCwGoKJSpNom8eVjJPnbcrZ3Hp2NNh+72JLjax9zVAQWc/XFPVZADhS8+N/fXAgWojCsESBZIcVcNO2UILFYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by BN9PR11MB5228.namprd11.prod.outlook.com (2603:10b6:408:135::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.24; Mon, 3 Feb
 2025 03:49:27 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%7]) with mapi id 15.20.8398.021; Mon, 3 Feb 2025
 03:49:27 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1] ice: refactor
 ice_fdir_create_dflt_rules() function
Thread-Index: AQHbaLcEHEc7qcUns0+GYNceGLwnorM0Tocw
Date: Mon, 3 Feb 2025 03:49:27 +0000
Message-ID: <IA1PR11MB6241B6F8156C991FD0B4B6978BF52@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250117080632.10053-1-mateusz.polchlopek@intel.com>
In-Reply-To: <20250117080632.10053-1-mateusz.polchlopek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|BN9PR11MB5228:EE_
x-ms-office365-filtering-correlation-id: 3e5cd4c9-4e48-45a4-aaf5-08dd4405c222
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?paCxUgI6AeTuLT2nQWs9ikdHxwiJdAgbwZobvESul5KT0g91lO9b61obFTI3?=
 =?us-ascii?Q?HlyxG4q2Ph40Ik/4hAkACcPEl7eusK/uaKUP++PiT9Ien6bQtJFEr2cJTdqb?=
 =?us-ascii?Q?rWBN20V08Yz3cf7Zo2ig/fpsl+vGsFWby+UXEgwjNEUc6PRwu7dXLkvbo0j9?=
 =?us-ascii?Q?cWWnkDZ8yN4MB8tv2rOdDhHJtjqHRtUmDUsu9YiZ7l8BPZ8V/JJg7cSFpjaw?=
 =?us-ascii?Q?upWi9zCC/YYW310GonSGuwdgZD15fhknvHB09JYRnoQYiyT8fOMReOgxHlGV?=
 =?us-ascii?Q?BAwaFQFSqDClScU1dmPAKm1y2ehQ0+WmzO3Jbof7ZBmRPMltW7CmRNhihWiN?=
 =?us-ascii?Q?FJMcbo16Ud7xFhC53CDSbMU5e241F24I5IDGDNwzVd1lIT9hMm10b3iSN40F?=
 =?us-ascii?Q?OmCTJskTjko7kLOkC04l7gGTtaHHqtv7GXRLjze0g9h7TkV0AbeGUrAr4L22?=
 =?us-ascii?Q?IyLzJIbsTYPEOVTZbrg9EMpag56c8n/KPBc664KB/Z3jhxMH6EfRghHdXjtd?=
 =?us-ascii?Q?rczA4zRrrypxGIkd8Q6lwfUDXGTZVJ5lQkMjCz+AQHvbcPs7CR5d2V7QU3Kd?=
 =?us-ascii?Q?fPwAhKWIaEf+G2CldRbsheK/j3yWw7WzeFDxcAz4M10IWN0jn/qgjMb9zxty?=
 =?us-ascii?Q?HjdEvgj1p7xyiLRscQSbRP++qalezX5y48BH6F//fR2uOBFvnEbtIf8onqPC?=
 =?us-ascii?Q?2HtGqawuzFlLeSoTaTgV9/nunFN2XeAyQy0y2CdTf35F+1bf49CVs+5384q6?=
 =?us-ascii?Q?u+n/za3VXHjoaac6fTMzMmR7qGXODNZGVnAHv4x+Z/7Zjkz0dStolEBipxZQ?=
 =?us-ascii?Q?8g2PIHiqlCWi6aIMgzBHXLDnPBlxVRv6dC51N7wpQe/mA2ewWW3Ya2MKhA7P?=
 =?us-ascii?Q?sF+UqQttutD3seAFdTLaBJiuY1rt0rKjrYt20qFZxNU0qEuZUdCEh0ARSx7Q?=
 =?us-ascii?Q?s9xBP1xBTFrsOTd91KmKtshfOwFxCQGRgU7iXSI7mdeFdNYbyFAXazHQ9coS?=
 =?us-ascii?Q?xhJ6kxX5v5o2Xos14ZnTPZWE/F/ayeHef2NLKlnuM6BIWgJLpiZbQnUNg8NR?=
 =?us-ascii?Q?SqRmyKQDWAditqYkCbL1MoO9RGijcU4nhxxeVTmdoYw8/v5iuyJCSsuGp4jU?=
 =?us-ascii?Q?6MdySieb/TM9NpipCOmLrasbRn3TujRz00u/SpPLWdL93gx8CJG6eYuLW/+e?=
 =?us-ascii?Q?RJZlJu/Z3/tBsK0X6ZGLp9SOvuu7uSWHehOEKUVxRFnCG7RN8uFl6zLhz4cB?=
 =?us-ascii?Q?8gD2TUIYp36smHOHiO5Ch46BgDtrLZ3JPS/PoZ8LwPY7dRoPFFfxGTeFWGbN?=
 =?us-ascii?Q?D9CoGtHRW6KMuATJqxFs0r8RW+ltH5zIOnEg7wArFXgLKVho40pVVDNo1Hix?=
 =?us-ascii?Q?T+nMZOhcpxkBh+T43uZgKJ23SJteyXPrCUeccpQfNUWUc9Hpb576xu9WGTli?=
 =?us-ascii?Q?jwuQOrA1O8KGS8TdP/YBOhhNDCzBsZQT?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GDIRwbLvX6QYSYt46bvy+nvj/aVl5CANnyBREUqk1y99KSeZOXvyGyE7Dx8I?=
 =?us-ascii?Q?Yn0QAyl4xARymKcXTl1TnkTfwZseQSUQL4LaijlM3NHc09wTqMQEDBaVXKsp?=
 =?us-ascii?Q?5LsEa3xiIuRzZhiuciIzcvQ820IChnn27JX1lQ03e0hcrfsaFZTfQKjBOYjN?=
 =?us-ascii?Q?k113/KjRnkg3C/OV80qnSCjAzR388ocYQyoft4WMTovWcakl0Mvz7MzbghM9?=
 =?us-ascii?Q?i7BOIqZYytSur4dbtgjXpZlkJf4WyXWhr28TT92xWWIJWZTgHnA6OtrM+1Lb?=
 =?us-ascii?Q?WUk4+W/0cMzcdDoFthaRd3sG5vD23iMbC7xOSykyXWUrVe/VmVcqxH2qhL/Y?=
 =?us-ascii?Q?/zRaltQ85lSZhrKWOMXb4+sRwI80WFWafnhxWW22bnZUG2Ojz0SYKpI2d0Fz?=
 =?us-ascii?Q?Gnmd2cZv2+n1RKhyD14s4bgDzTJz6dtD/j2H/fZmGLxMCH2jLf4kkjnJaDb7?=
 =?us-ascii?Q?a/RBjCB8zJuQi+3jAfZ1Ff/nQUcrTJeNqt+aUsQ4EQepEh5o1FpBT7C1OLH7?=
 =?us-ascii?Q?ZtodPwcWXqj0/1ZPrTttXjY+xztDYMj5zpHK8tvCSorSQy2NtOdHUsXAgMzh?=
 =?us-ascii?Q?F8YSvWpQs12jQwePxTRRMTkwiT2M2HapcAzeNbKrjUlO1PQmx5vaJo6M5Itz?=
 =?us-ascii?Q?1UmgW7BiEEj+JX7p0BVEwhYsLnuULWG+HZpq8d8zZ961+LXtPGCkwpzPYlpx?=
 =?us-ascii?Q?ELv8yITKrqlTQuHeKaS7zyIP7Pz0XijgFXxlRsPFKmWCdEL/XVeFChZAn9b6?=
 =?us-ascii?Q?LialHC970d0f/IWcRmDDp58gaRvHSnboef/vk/sR94vn/t/NZ9oKnUVVXcgK?=
 =?us-ascii?Q?ytnn4Zozx7iUzChLvnXM12jPsX8svmjow/64WOX/hixCkOScklrjY3z79G6q?=
 =?us-ascii?Q?NomLZ6vNVkxii8WQB8IQe7K/rSAvUenkFP+WeQpzhg5MTFlndBkDJjMUtzwE?=
 =?us-ascii?Q?lU2/oidyw2UjM+htIfG+yJArz21gwZfHFCxTU9DOA8nwNVnd7SECA0eAenlZ?=
 =?us-ascii?Q?wX39V5sQi+kQpHeJSV+mp0edy/LzL9BrMHMIhEpqATexxbm+7HVF4nS+ryu7?=
 =?us-ascii?Q?ajxQ/SqesQTrKQqBBTEclXyMzvzm17a4WpE8bCC7Ft1jwUvTd56iEWjdrIue?=
 =?us-ascii?Q?6IbvJAXTgnODMRW4mO5a7g5ZtcQEPhusAORfqGzoDIdjvC149hWPXbAHwxbY?=
 =?us-ascii?Q?tM3Yc4mg53LrEnQGjm7ZXFCbRb77Xc8HD0MgeTH7rzdh9V2ftZs9rvaCAxTp?=
 =?us-ascii?Q?h59U+8ZGZPJD2HtWx3qpvLziFnIiIVhfvfRacho3xp249koxLaF3/riFft2Z?=
 =?us-ascii?Q?+3unhnVcBwiQNVtxRwTW5Kk7/b6yl2Nv8dJldPNLM/AzS9nZeg1wEKDl09FG?=
 =?us-ascii?Q?f8sXcr0uZ/Sja744w8EZmI0I4e1NcNDVRLPA+8i59XJ7owneV3cbQ1HuEskQ?=
 =?us-ascii?Q?g5vliI1o48zgSNcnYtfsT6Z2Cw9VZIxco86cR+tIQckWx3Blhy+nLFaxCl21?=
 =?us-ascii?Q?zIt7JxW0WGa1Bp7tFK6i4nBjAFgDew2xThaE7UspitSfFE4cgI0uyJ3BY4gd?=
 =?us-ascii?Q?aQegphFBtiVxC6V2bvLRzwsVAn0ov3Ihcb8SAIBo?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e5cd4c9-4e48-45a4-aaf5-08dd4405c222
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2025 03:49:27.8843 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CqByJV2e1pPCMrUIQBr+M5xbCaM6sghQL+CJBMU1S4mVHYGTJnfXMoQAqZqR7kcZIUcIkoni30aEEFOFxI/beA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5228
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738554575; x=1770090575;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=W9c3xhIr73lAVNxHNp03+ch3215NvKtdTWqo589Lp5k=;
 b=Ory/TKCyQRCmJuDUIEPnuymK7hCSukDLbZE0s8KaUhk7pcw8KZT89xQ0
 GSL+dzGrByh4TP+L+zD+3f43Eo4DgbsFVEC0alq2Bfg3nUMJDtF9Q5M+N
 MQQvDpfkGX6fS2dOxOkbSG6ngo0eJDPYLvlqxZqnUcTQY8dvTLDUve6FS
 356P39E7+S5Gq+mtTowFcqE3ipWoIAT3dB53fU/HtmgYWtTew3e7be64E
 uh+keXZu0W6EBpVdkLu/NiG6X07Mq+qxhNhvHXfx9oyhhG4kaXVF+fK6Y
 y0+5Q50FFDUwCKrcVVMcWiJ7AhjOqnwuwayXNMtyglINkclvAo9rySrzW
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ory/TKCy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: refactor
 ice_fdir_create_dflt_rules() function
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ateusz Polchlopek
> Sent: 17 January 2025 13:37
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Polchlopek, Mateusz <mateusz.polchlopek@intel=
.com>; Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1] ice: refactor ice_fdir_cre=
ate_dflt_rules() function
>
> The Flow Director function ice_fdir_create_dflt_rules() calls few times f=
unction ice_create_init_fdir_rule() each time with different enum ice_fltr_=
ptype parameter. Next step is to return error code if error occurred.
>
> Change the code to store all necessary default rules in constant array an=
d call ice_create_init_fdir_rule() in the loop. It makes it easy to extend =
the list of default rules in the future, without the need of duplicate code=
 more and more.
>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
> .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 21 ++++++++-----------
> 1 file changed, 9 insertions(+), 12 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
