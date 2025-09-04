Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E74CB430C3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Sep 2025 06:05:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C0B2E4264E;
	Thu,  4 Sep 2025 04:05:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eDLcJC4ALN_V; Thu,  4 Sep 2025 04:05:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E56A64264F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756958725;
	bh=EivAdGBmZyS5QSOUVVnFey0XxBDwGzjWeRmv9RRIYNM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qz06KEu3nizkJspSLWb2EYxvoTuGrESjMs7es9f2fGjB/x8QkPgFqZVWv7hMVHwWX
	 FSGD2qIqHBi2RKhdeqJC9SVzGPzmdblUvoIEfPO7DXl0slQLJ69fSjQ1iNNU3tFb5p
	 PX0B6pB9dPQJWhtTKcctgMcmOfGHylmIaJl67bIpfGiX8V/w+UcuoihIjMW056NVc1
	 gxYXgJmFYQrobbpx1GM3//IfB4NjxUGq8dF+N3RtfSbLbxILZ9YafO2pCgPAUeBWML
	 e4C8vIdTHnYaR6Mjl/T6h0IUrHWmRZDm4AjxS2r5ZOY4WW0xdWPvOYjBOPggxdbLw2
	 9zeNNnhGLyrkQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E56A64264F;
	Thu,  4 Sep 2025 04:05:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D2A24930
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 04:05:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B8A8E42649
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 04:05:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tgDezTdMWcpX for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Sep 2025 04:05:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 27A6D4264B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27A6D4264B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 27A6D4264B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 04:05:24 +0000 (UTC)
X-CSE-ConnectionGUID: E+VgcoqhTP+ND/jbHik2RQ==
X-CSE-MsgGUID: ZjohaGsYRcmVAlB7XJGdlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="69989885"
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="69989885"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 21:05:24 -0700
X-CSE-ConnectionGUID: 9BFN9SWpSkWeUw+wVi4agw==
X-CSE-MsgGUID: kMovTLcFSQOywuqR6YL61Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="171065972"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 21:05:23 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 21:05:22 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 21:05:22 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.46) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 21:05:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rhY6zhR8oExk/E5HEA8ixeIKmgdNfupVZYX+dHAhrYWAmMy5zhH/EfLAEVmjRGFbSQvWbXWRemZu9jZIK2v/GABO+vANhL1MlE6up5QB/eHi6eYaIRPWl+hBnvXiYl1fDrP2n4S2cdGt27F4U8ctzInAZ0bhUDE5QV5J6Qtds/W9CTYIg5t4zLy/gxN2008hGf7AXUGwbYMPCDt1mvE0pPTOCtmLizRHXxWz1VZGuH1KUz+0eoGIia0HSCxNAevaKMZ8QbTjLWu5hhGC7I6KA3OFivUK+Zm56R+7WFuPflUXy/4aE4B5YVslEa3IE3EwBgrQ1MusX3fGRlNxvKYVfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EivAdGBmZyS5QSOUVVnFey0XxBDwGzjWeRmv9RRIYNM=;
 b=dTzEri9k8HeenPSacOSeR8QrGgcPB5gh/yYwrmZNOTVNDDPyDfLEBRwNL9rsHR8VHiroDYGKmX3DtKioS5w9H5MyuJTtuieS2Scndy+hFonbzs4GQ5F4nZWIqwRAG51XB9B0TiZXt8Up8KA2RQil1e3lDKEcW8dvucF0x2ADanUs9n5qx2fK/TOqAKLDeSUjbW4EJierrYU+FokW3L8GOXl6S4OWYTSVwAn8wdcH7b0iUm10LgF4Ibi3RfmLWazNTuNlL3440RpMKlbDkZRExufDkBFDGMZJ5EDP9sTtOQgxmQdjGtYPv76p2pjux5hM939/HG/iUimyVLGqinG8zA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by BL1PR11MB5222.namprd11.prod.outlook.com (2603:10b6:208:313::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.18; Thu, 4 Sep
 2025 04:05:19 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9094.016; Thu, 4 Sep 2025
 04:05:19 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "dawid.osuchowski@linux.intel.com"
 <dawid.osuchowski@linux.intel.com>, "horms@kernel.org" <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 09/15] ice: drop driver
 specific structure from fwlog code
Thread-Index: AQHcC0VBYzBWcGGZBkm5g8AoNDby/rSBCy5g
Date: Thu, 4 Sep 2025 04:05:19 +0000
Message-ID: <IA1PR11MB62416B56C701BF68F89EAD5B8B00A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
 <20250812042337.1356907-10-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20250812042337.1356907-10-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|BL1PR11MB5222:EE_
x-ms-office365-filtering-correlation-id: c49a37d5-6246-46e4-38dc-08ddeb68437a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?dbzX/Y1DYp6Uz3ZW23MHR5Tgy2o5ytj+6V17HCFYkFLv6+URDsszq+Npy2Nc?=
 =?us-ascii?Q?Y7rTj/GQlus9EKIu7MuHQVryzG1M97jeT3NNPi4tNa1lVkzsspJwcScJpmDb?=
 =?us-ascii?Q?yDu/sC8QIVL55nNe4Nzc+Glj/zUNflE0cdDfPAIGBifvF69jy7loaIW4cVRb?=
 =?us-ascii?Q?zQD6UrTnWOHCWQemSB4P2j8pPPGdx5ZR0IxBzI4FDiNGBZU194pZDhQplmrC?=
 =?us-ascii?Q?H3103Y/c6EsMlMwzQvcy4T04yZ/UlXqJw0A+iAKT3ZjFFgbVujW+p15Yu+qM?=
 =?us-ascii?Q?8OcatMfbTnSn8IJMTJNhOzxNVsMnF2HlgTo/GpyO2tcQKdvodgw28vob9LzX?=
 =?us-ascii?Q?s34rMHxOhhhxo/UfdyzoW3wT+oJXkfLLRWuskHiwebYRmOkW1CH7Zr3CMFGs?=
 =?us-ascii?Q?UsPIic7scaiGhLfO53Qd22vzhtyyH8AMuPmJP8cj/3OILsfojpxFl4STzGlL?=
 =?us-ascii?Q?9kigxCrh+0vjUz2A9tdYbKWO4N6pSc8fed4ws20CPyKIDiBNMD7WfdsSL7Dj?=
 =?us-ascii?Q?OYTogXOYtvq9DtFxmYMJAxhbP+TOvikp0ogf81Wqr7c8EbEMnC0/Rtd4yLqp?=
 =?us-ascii?Q?SqETgI8KWlbVLv1WWWqsZU+t2cDP4ANgsDr8n1+pMG23Inod+Bzz3b9rP7zb?=
 =?us-ascii?Q?E6ES3ryur3a5QqHeaxPZWUasOIX8qmf2x5KfpWz0gYH6I6SmVUKHakqluoFI?=
 =?us-ascii?Q?nhm6DDicVYXNNGN2YgEFw5mZVoL+SERWCQDyuhukV5VVVV/Wxeb099ROGAF+?=
 =?us-ascii?Q?R2ZuhxqzgU1xU75HOJiQuQFNQwf9NeCw2WDS4WfkxA7JE0jyOpL9Y8lZVNwW?=
 =?us-ascii?Q?iyxl8Q1LuLLD9aUVI+C3znvG/K8RQfAUvD1LqHPW4s7TieqHCmSd8l8NONGw?=
 =?us-ascii?Q?1snMGTQzqOQ5ck12zWXUd42K+k2/yOmFmdVSUsCYzmdAAmpZ6G4tDXNHr6Yn?=
 =?us-ascii?Q?wuH32Z7pYv1ospA/hd9aUmrjLiXFXDgeRdOOK/KwivYmJ4DumZs6NghHK/SK?=
 =?us-ascii?Q?uR7gBFS2y2eypKKqR4pp9RouksoXRZ0QzXIioj9KVHR0mTDGSpg3v/AK2LUd?=
 =?us-ascii?Q?8Y9TgKzt0F4KywVP9qbWSHHC1RXL0ORNY+G2rvwlQE1RYndEXriHYaR4I5zK?=
 =?us-ascii?Q?kior2q7lsPLtj2aHjaG/WWS4/eyNszE1/qEdKNuQm98GzRSkGHnAooxtsPJA?=
 =?us-ascii?Q?N4GGf8rKkK/RWMaEAUZ17p6TdkhD6TytR705Mi/wBsHe+x9wP6wymf8Ixmws?=
 =?us-ascii?Q?u00e6RLr5lI0tw7VAx+P2BCASPSV2QjOhpKlJinH0gaPRBuPFIqKydnxZAS9?=
 =?us-ascii?Q?jF814sITs3rI38xxnJJf9zw17iRxHCT1BfZPohgilmptLBjFbLYdt8lLb/qR?=
 =?us-ascii?Q?bANTM5OU1maNHFclNgdufSY/CDGTFO4QNrQLM4A+mtvmWhBt1ft1XeJmKz+o?=
 =?us-ascii?Q?7JAD4/Q01mS8HmUz3Viv8E+zfDYtHoWfY++FzX5DyCXR0nKzeSOR5Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?a319W1Zuk6wZsr47AcrNoVsboAeVo0nBeB9hLjaqw+rAbaeLtmoIaqtZk4zX?=
 =?us-ascii?Q?i3Ki7PDQ1qr6Wkt9oR/KvVsJvNOUp4GeIK1rm1i1FxgAC8fN3obFpeJvfFF0?=
 =?us-ascii?Q?5W4Q11PT+k4kCelGlZMjTAIk1En73evJzcjGNVuGOYr6hO6f6fWShEHLditt?=
 =?us-ascii?Q?I8vdCLLyjTshMStH1/nO+MX5jE3VE3BfWPbCd9zg+jslvvSvf0bCfySw23R3?=
 =?us-ascii?Q?BUlsmMD8VG0txXSerFh1PUFO3PHjW5/Q8n/2nQr4VXK3PalriciB8gMcoAL1?=
 =?us-ascii?Q?Z8cZSeQrZ9pHsJjrGTe5JLS310vCMDZfiXFgeiXTpLkTtfHIsopjJoTGy+nR?=
 =?us-ascii?Q?ki72EFIFHC1LsNPgyOFhJzkxfpdOWq17RE8XC0rfnnbbqP31BTx/2nmYT0qZ?=
 =?us-ascii?Q?kMqqzCzhko2Fp9wTydILDS+hEkB+kNVdky6iXo6XUh+s6SaFOG80BrgslUIi?=
 =?us-ascii?Q?AYhpbECKwdtQeo0qOeZc22HADh1uWXhukxj1slUnvX7/YpHtYosP2ds5jGYu?=
 =?us-ascii?Q?vDnh7tgBEyZhNHsZD1ajUOoM8lPLP2hzPmh+8/qTHCPulB1s7+wWtvYrFQeD?=
 =?us-ascii?Q?hxjUbzsOom6N0FMvkWVYdGGaE6JoA12t67kehmbKszIbCypz8eglytVz+/br?=
 =?us-ascii?Q?ADELY7xrRFgcbeHD9Z55a7LN3qicloUk2qzxqXv/ECFCx0GbGh10EQhVFC+a?=
 =?us-ascii?Q?cluIW9fKP1du0fCAzbx9u2D9AkNJoHiiz+4s15taZGZJQ4cCcKK2+x75ecTh?=
 =?us-ascii?Q?zXOq7GJwpgJ6IWXXTWMlQzrrtRtyUixpThZgmYH0M/VO6foHG7hOFyGVOvx9?=
 =?us-ascii?Q?1oZlA5FoYxyH84IOrbISOTFidoWH9i3FHW7CYk2xqxua9lJpx693L4H/vXR9?=
 =?us-ascii?Q?c6Gq3TLoAbKP1wGa8Fhm7PWjq4hS3TIcaOSv2Bc1UMn4mSufDx4Zmf80efO1?=
 =?us-ascii?Q?hdCso51xyhHLg6q76w56onNhr9afSeDTHphvGEkwu0Orad4+qo21tdvWkIn4?=
 =?us-ascii?Q?c9h4FMbeWNmqVg7daBubLvWWGP75Jl5oMTmdsLt4z+qyYkPmxEIWZ9J5g6ru?=
 =?us-ascii?Q?uGWiyFuNxqT7fNA1Z+EShPxeJRVvSHsHNxO3XrukoY1233U644Tzww7FDOlE?=
 =?us-ascii?Q?oU5ot3XOiezQPg4N9WRYbozaCBx2qbH+pn1/lAwb1wKXXDVQOlTtvIWAlF3q?=
 =?us-ascii?Q?kHyAVjno8AssGPUVkXCZPiSt2YYON8z8lkFUhBZEEuhKfJ7yf8CjISGyzZ0f?=
 =?us-ascii?Q?XU1DybpkUYhfO3AJovRAG5JXh2eUzFFIvIavAiwAH+i8njZrTW3y/t20IV9F?=
 =?us-ascii?Q?7cc5Q/pTuXVP6Q0uMVfsWeOcMytswpVuyVrh8pmOVawGgRH86fzmBmT/AmHI?=
 =?us-ascii?Q?pzBz0ijhO7LGNdKdkRkC3eDuO/NEEG1TXsi5UqpxrlT9Xb6XIJaOlVoSAMKl?=
 =?us-ascii?Q?wAGRK0QDlv5hMY39ty/cfqxvub4RJf5IQrt6nl9kXJrjDt3mnJ+EnGPDlXIk?=
 =?us-ascii?Q?Xz0gAAGDLMHDMTA1FIGs3ENhJ3g7fLC4ChxLh0pnwZmZcwzMg4sLDMuDVY3J?=
 =?us-ascii?Q?AWpZrddQiNqRmupLZPk+K45KngocMgRBxRC0ULxq?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c49a37d5-6246-46e4-38dc-08ddeb68437a
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 04:05:19.6573 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Rp7tFnnF4wZk/615PyUH0yxEiDq8mSHAt4TYcPEbj+WFcX5N99whKNdioaEqO3EzUeLM1KNm84+Wjh2Omssj0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5222
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756958724; x=1788494724;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Nxc6neI/ptBG96neuZ+scpU+VFNgCcALTXPnCmE8k/k=;
 b=dxrcQqT5/WiblsvkMj1+V9/2lJlD7X0bow/NG7W1U4yHjPyR3u3lqnaJ
 P1Edj46kOl0ZLYszNq2j3HfT15PStbTU5LkttiAts0foahV0L23JQmxKR
 t+FCTpTtGGqDYHcMbFLprBvc55B3urop2wOMLaPZlwOQwrvqgNv8ZZ4kE
 jHet5M5/TJNSD4+fp1H9zXd1qCFpsL7mNtEsMJOuGtKKKxiwHl+J2nE72
 A6G8XF/e1s0B3xS3+05XEA3q4u/b585TP7OnNiW88WSzPxYC+FXbH02Bh
 vn/5AvTWuqfPBN4I2MR2VRbnWM9kbsldVR5w/FRpvRS5lXXk+npK4Fsuk
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dxrcQqT5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 09/15] ice: drop driver
 specific structure from fwlog code
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
ichal Swiatkowski
> Sent: 12 August 2025 09:54
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel=
.com>; dawid.osuchowski@linux.intel.com; horms@kernel.org; Michal Swiatkows=
ki <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 09/15] ice: drop driver spe=
cific structure from fwlog code
>
> In debugfs pass ice_fwlog structure instead of ice_pf.
>
> The debgufs dirs specific for fwlog can be stored in fwlog structure.
>
> Add debugfs entry point to fwlog api.
>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice.h         |   5 +-
> drivers/net/ethernet/intel/ice/ice_common.c  |   6 +-
> drivers/net/ethernet/intel/ice/ice_debugfs.c | 131 +++++++++----------
> drivers/net/ethernet/intel/ice/ice_fwlog.c   |  14 +-
> drivers/net/ethernet/intel/ice/ice_fwlog.h   |   9 +-
> 5 files changed, 75 insertions(+), 90 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
