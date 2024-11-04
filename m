Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D7ADA9BB1A3
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 11:52:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 93337606E3;
	Mon,  4 Nov 2024 10:52:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f-O7zcxDehGg; Mon,  4 Nov 2024 10:52:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC45D606E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730717577;
	bh=wcmTj5DQCbBBJ0OvuEOyOsM+/LTEH5qlkUTrc4IAoiU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1VW+WTPwocZ9M7whPbFhM2dukz7Pt/O/mSDdf9L0P3WdQ30x9OyCvB7JEhYRnBaLT
	 0tqXN4CcsQobOx/Y9crJlFSBTWZK4T5Oz5dzSmGvIoBotoyy5Fwa//PeoG2z6rTUYm
	 QMapV+4CG7x0MW9ytgpRZKZXeONINcyK0kOoHIHm3gpkU+4JRV6CqrsyuXVji/ScXg
	 ABRILgA/p4vH8aC6bdIVpIBfdwCmKQsU2S9qQ4CeySnIhutnS0EPFFWiZETq1wLzvj
	 vE2wmAsrg1FXywAC67cYRQumSolYAp3GHMjiEz7pBNAbXdVCxJoeS9ZjaH4mkmM+P8
	 rsl8WRZ8AQyHA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC45D606E7;
	Mon,  4 Nov 2024 10:52:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id ECA22B8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 10:52:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DB88180E5A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 10:52:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TCXaTHNYoDi9 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 10:52:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0841E80E58
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0841E80E58
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0841E80E58
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 10:52:54 +0000 (UTC)
X-CSE-ConnectionGUID: 8lt90hruSWWxbbAgPubI5w==
X-CSE-MsgGUID: 0s1Flki+RNWXZDSeKD0w5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11245"; a="41799496"
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="41799496"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 02:52:54 -0800
X-CSE-ConnectionGUID: YcARDTGOQ9WIk4MHdqA+0A==
X-CSE-MsgGUID: iRv3XrSUSJKSgcLSeZWOxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="88386181"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 02:52:54 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 02:52:53 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 02:52:53 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 02:52:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vdriIDhpp1PQXyFfoVM6lGA9al7VeG8JsCpkVWRA2E468Px4E7kpVYRcp+s57c0FdpMPnUk8HnzZ/TzUljGPXrUqiP8A92XSmAIvsxutKlXUKuwMsAYPWobTI7kxjhAa6uklTlfC+PK6l8e00D+g600bwXeAOgblSUCX5fi5mOw01NWjxpAwp2c97qIevF05NbVFW1jPCJzzPFPrTkKuwmmYgRnrzI2oUhRf1H9I+tziycDEtZVQ72OZ1Mp++RAx/ZKFiQe9SZo8vbPikGhEuoUMVa9j1eQmgg+2TRNOCOB8DzM1o/XrZakgkVQyJiQ7o/oq/r1C9z5XwxxPgpAzOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wcmTj5DQCbBBJ0OvuEOyOsM+/LTEH5qlkUTrc4IAoiU=;
 b=eCCh87PtlrHSdRbrsKBq3XRUm8nNNNCzzmCSkMvfQp6nhMjjctl8bxOIShXryyC1HYEUGBu7bqwfTFu0BUVtFTMaBmulQ77BhZV8qS9Kklz0/xYrzPq/04XWcWirY86ihuDpx+Wlz0gnSzxnh2w32VewaEKSHLtEDT3aBmps1eV6yil8jlbvzaGOlmYeFhEmjiWMWIzlftyQmZWTyMsSZIxOzEvxR+N+TWoIuR2bB4JBCZmrI7OOZMyFnnAXcPLRHA0f/VGUGVO4oTWpHoIK1My8Y5YQtJYSOhyx8VoSIqLk101dltu6W0DhR8poGktMmGqUj+uOte4Z+0OIUsAMrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by IA0PR11MB7791.namprd11.prod.outlook.com (2603:10b6:208:401::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Mon, 4 Nov
 2024 10:52:37 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 10:52:37 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>, Simon Horman <horms@kernel.org>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v12 03/14] virtchnl: add
 enumeration for the rxdid format
Thread-Index: AQHbJEUQEWxoEmKL4UCMoulRxVkxSLKnBqrg
Date: Mon, 4 Nov 2024 10:52:37 +0000
Message-ID: <SJ0PR11MB58659BF79567FDE4B6E28FE18F512@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20241022114121.61284-1-mateusz.polchlopek@intel.com>
 <20241022114121.61284-4-mateusz.polchlopek@intel.com>
In-Reply-To: <20241022114121.61284-4-mateusz.polchlopek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|IA0PR11MB7791:EE_
x-ms-office365-filtering-correlation-id: 89b7855f-5150-4f7e-a383-08dcfcbecbb2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?BoW+H5Nsa4VLdeFq22zzAJswldEp21Afiuc/2AzraZ3puHN6vlSg6b6TUMgz?=
 =?us-ascii?Q?ktQ8GMEwD/5ejR7TdgeSDpi4b8dtcFPtvxOSHjAwY9wA7gNyrcENOt5WNBOf?=
 =?us-ascii?Q?vs409uE2FgnIaZPtcKtiTRu7xwNiV4qQ9CJp5Uck+wl8WszlzqqvlJERz5uA?=
 =?us-ascii?Q?WNlPVVnM/OIFfJ6iq5hfjdIzRlrfDlXeWvBWjcMOXhCzbiww2S4ORqVAd+s2?=
 =?us-ascii?Q?UZ49tVjq+7RyRTBr/uWweTE08WcAAu5Hk2JsZ3mLmoEVEluA2OqrRL2/ngQE?=
 =?us-ascii?Q?FlaLIzGFCCHmrm1EbMd4gs2QFeIUgcr5CdLPRIqb8kTnbfUTlvlX4CgzWrZj?=
 =?us-ascii?Q?QWeu+60PHE2bXSTFmVy5rksF/9SJTpXfw8C+1hrw80k1TuGFlEKneCr8x000?=
 =?us-ascii?Q?ASnjVVPFEjYhRDHo8i3AIJPbjK7ikLCd0YgYcnEx56dRB8o4RDcthSzNd7Qb?=
 =?us-ascii?Q?HzpJeBkN5xPLcUDB3JP4Xw6r7czzREtsaa/SQlvw7v0pQ+wwIkTrXrJ7UrUz?=
 =?us-ascii?Q?+7fsTWAy/vf+wDdK6F3V963Y8GPwlV2N6MUDsczgq7TSooix9PUhDVR4l8Vg?=
 =?us-ascii?Q?gED+63dlUB9Mg7MF2vHDQWSBCcHH+abADG9aG/5vWxycz28xhcC/4KKfiz/s?=
 =?us-ascii?Q?1oBIq+11swOptlHJqpMrEJJZ0W0Bv1aD3Ctbqwkc2JBq3BkU99DnLQyr/Irx?=
 =?us-ascii?Q?8QFblOLyoOHhzlQHiI5f/df693M9CCbxttHSljRvd95cWH7CZcowu/X609zl?=
 =?us-ascii?Q?okkKyP6DAkNVlef/3AnCPDTVc0lqNdlpvRCtOvUSr//jgx4ct52bNWd4fQSh?=
 =?us-ascii?Q?ywKVsA6evjAYG1RVRhcTzIuCEqVbvH87yWs4T638O8/cvDuVTlHyrgIhJxX0?=
 =?us-ascii?Q?PV6fsoC4rUM/JsYeZl92+BlmplFz+7tzv4N3izLaOLLUinnMcf8HQAOTnJAJ?=
 =?us-ascii?Q?i+ln1+YkWFIfG7BtAFP4qGgznch1kut3EBZo+K+QSldHnN3BYt9PYGw+pe3R?=
 =?us-ascii?Q?lw9/JJZfQI1DotfudJ3l7DvhWRe7aGTZsjkcFuuyl9sXhnrkiggr7/tWcWdG?=
 =?us-ascii?Q?nxaC9JG4pOyqevezN1nTmRoQYu0Af+Zl8QZKNp2SBfSDp4Kk6w1w4nzl3GX/?=
 =?us-ascii?Q?sIhHTZNinvH6ADeAcMC+WPdcyj5tTbWXQ3u09MDSIX1lHdiNLjpI/l5cwdMs?=
 =?us-ascii?Q?JxnH8lB40cf/56i6xlIcIF+cg/tjocFVOUKAVoKAGt7itcvcPMBBMtsCA55D?=
 =?us-ascii?Q?cpmsZzR66xg1m9zkFFtUA8bFMaDzZBTsCR/ddAjUjbdnNjYxyYM5RJ8tWuj2?=
 =?us-ascii?Q?eiQE+MkC3DbMo8KUBE4+Yy2V7ij9OujBeizQ9A6cGuZrGy/M1FC/WmlYBpu/?=
 =?us-ascii?Q?2Q1Tbkg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?j349UFX1TPd+UPbx4VsEW/3TT3de8YJxp1BGt5DdaEeQJ5w73jO4QkmPI2RE?=
 =?us-ascii?Q?G+NyGFujDYCN3xMJdq0GJCyOEVbBZKzhlM6SV8v9FP1VFrHdVb+0VkvyItVs?=
 =?us-ascii?Q?VVn8UuWTUxfMdHkwVVwyf04ufulxwBmDwx3FaFhWaq7TyonOLHmtET0TtzoF?=
 =?us-ascii?Q?XzSaSfzbchAycQ3GMCkOMny7uUsUzVOsvZe6mfvGE1EOufFhPaqrYP7y1VPk?=
 =?us-ascii?Q?cSC0MqF7tkkUDcWuxbcN24qloCnUVeV3N7jlOkYq7CuTgv0gP8HcLdcLocDa?=
 =?us-ascii?Q?AvsZuqTrr421uc3XqZdrhCr0EjVTNsz4Owi+0I6udrFL/k79ow0xMjnvmvtO?=
 =?us-ascii?Q?ywf3tXzlR/wk3knevPlOF40JPN9p3ytKevuDD7xhDZd3JSsMr+qxCIthjrYE?=
 =?us-ascii?Q?JUur87Sxdu1qnLSZFB7R5HFNg6metdtNwRbauM/iCQQ+eHwgQ4iGALIoMUGd?=
 =?us-ascii?Q?1EahRS2M/PST/QYn3AM1l+Upi/oakEHRCXGWR4FtFV5t3UmSxadgWvPgq/BD?=
 =?us-ascii?Q?JQughW+pg24PnkULaDv+1RC38qEvmT9Ei6BcLR3qygsf4EeL1BHvAmAuADyH?=
 =?us-ascii?Q?UBK8NQoQX5r3GDgChO4YaYfuDtEA3H0br5kT4gx7TxxUHt5cVVA6iGcUyAU+?=
 =?us-ascii?Q?pfbY7AjKtn7KuIMNcdxKxsnXmOAe+Gmds5LMbGu9SwSWsfO5RM7RkQ3Jy28y?=
 =?us-ascii?Q?ocRAdwM/SmmAj6mAFGrJReOvFXQKctUDjwNk7E9FKHOrJ5bEXMPG43K+6vwW?=
 =?us-ascii?Q?nncgc0oa3IJQTzf6xsYPiXNs/lDJbvGWq3d7L32R2HA30VRR+3Z2a3K+bmwD?=
 =?us-ascii?Q?jZoV5E4xbqdQOMhplfti7bMtGEUL929iuUlVpWoy8USEWJGT6Ey0OJY7rzw6?=
 =?us-ascii?Q?m1OdlEtHoT3WYbw+zBGlX//4RM2K8I8ty4aQxAGFAEztFwTNqYvaeQ87UIvP?=
 =?us-ascii?Q?6BzwQqfCpKqJ2CpI/qINVuASER1n4FDtnFsjCtWHgQC9l/yc42Wjq2T7s6CM?=
 =?us-ascii?Q?DSxWz12XdUBj2DXf9+mV8hrCsPPhXW6X60OY98R2FrZgtkBbG5zGhBKHJO9M?=
 =?us-ascii?Q?uJmRX+XW8qED7/H1DEzvMwTfHLk64m8KZmem3fQLDyDe9Y1i4S06R6G4SPtd?=
 =?us-ascii?Q?XxJaruhpzUooAPh8RCDr7asK1GRNH6v6uTe+sJdZkshreu40RbeTCWZo96qy?=
 =?us-ascii?Q?pnhMIGTb5af5JPbIcDLUI1Rd8bJkKRRExaWVBYuDRbcg3JVBtVk7IbqNBKZy?=
 =?us-ascii?Q?giTEWX78qclGW1y0a2In8IMbfmSUHhmn3zsVh3EB/5Bzr4WDVSP82gRrzLUm?=
 =?us-ascii?Q?Q3CiPtIxZc72Cuzo+QLjVXqvT3RDuYT3+BNq7PH7AhG8onSclGM5DVzPsuEw?=
 =?us-ascii?Q?/v6iBwkmaB16aGly40n0w73Brczqyhr9N+15jl8GwkBV3rao8C17QzDzjylx?=
 =?us-ascii?Q?ue5gzKqbBgLvY9XB3B3KtYGG4zrp/2jRY4nwkIPODN7yUyuJDmzrKLWC8cF3?=
 =?us-ascii?Q?2clhM+lNQKX9Kfi5wus/Fwyea/VY9nyP21GMEOmhJsLVJsL1QQPXPm7f0zFz?=
 =?us-ascii?Q?sv8oJSRUUA45dWfxLadN+l55ygW5s73S2KqWSIG9u2BJ35TodRXuYLWwG1nh?=
 =?us-ascii?Q?JA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89b7855f-5150-4f7e-a383-08dcfcbecbb2
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 10:52:37.1187 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: guk0zmzdlCQiXVXXFIrNlfIWtAbOvbAdBYfscH0aAcR1YQjLa98cBtFy8b4fyT1eQ/GE2kTDv9VPF4Mvvs6sVtDt9D8kTtAH0JHvZFujsnU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7791
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730717575; x=1762253575;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wcmTj5DQCbBBJ0OvuEOyOsM+/LTEH5qlkUTrc4IAoiU=;
 b=R/ZK0AuPiSKtFm6fwZq3avCfsGKDI9JPgJXWR5ALksSEvBMwB+7lCw9G
 13ACqrSurC/coPxxRBt4u2L5B84wp97wQVFzNVGji632rxN93Q/iqtew1
 dwn+gQg6LoEetBGxreMRsruX1HZO/hQ75g5g24wwiMhbYFZKeotg6XXDt
 BfsaaHpior8BXPN0alfd1Zz8eMzu5OtyvJPSLPak/GhkleM0t0U8Zuoyz
 VI9RKiMehZludR9sXveNPJ/19tOT1avb3dQM3iKOYhuL4xH+2OjCTSxE7
 6rL06Pud4fCza4GZvkId2gstttOuSRngnwxG3AVMEa0oTOIVsmJ0+LE55
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=R/ZK0AuP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v12 03/14] virtchnl: add
 enumeration for the rxdid format
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
> Mateusz Polchlopek
> Sent: Tuesday, October 22, 2024 1:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Keller, Jacob E <jacob.e.keller@intel.com>; D=
rewek,
> Wojciech <wojciech.drewek@intel.com>; Rahul Rameshbabu
> <rrameshbabu@nvidia.com>; Simon Horman <horms@kernel.org>; Lobakin,
> Aleksander <aleksander.lobakin@intel.com>; Polchlopek, Mateusz
> <mateusz.polchlopek@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v12 03/14] virtchnl: add enume=
ration
> for the rxdid format
>=20
> From: Jacob Keller <jacob.e.keller@intel.com>
>=20
> Support for allowing VF to negotiate the descriptor format requires that =
the VF
> specify which descriptor format to use when requesting Rx queues.
> The VF is supposed to request the set of supported formats via the new
> VIRTCHNL_OP_GET_SUPPORTED_RXDIDS, and then set one of the supported
> formats in the rxdid field of the virtchnl_rxq_info structure.
>=20
> The virtchnl.h header does not provide an enumeration of the format value=
s. The
> existing implementations in the PF directly use the values from the DDP p=
ackage.
>=20
> Make the formats explicit by defining an enumeration of the RXDIDs.
> Provide an enumeration for the values as well as the bit positions as ret=
urned by
> the supported_rxdids data from the VIRTCHNL_OP_GET_SUPPORTED_RXDIDS.
>=20
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


