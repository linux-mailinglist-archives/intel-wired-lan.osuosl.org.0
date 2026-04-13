Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qLOBBBAR3WkOZQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 17:51:44 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 597FA3EE31D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 17:51:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BEFDB40FA6;
	Mon, 13 Apr 2026 15:51:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DALCEMsVC2dt; Mon, 13 Apr 2026 15:51:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E9FD40FC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776095501;
	bh=bX8wK8bSWgEjZJ3T5aU0MN/q2OtOm5b/42ow9P2K9PM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZlvWI8Pz3PzJ2h3VcEwwBniI9T6/Rl+WgK2WpJgynY50kthSkMCSOMelq76xdyf25
	 v5I67Kzf8h8GlrAYP/a3eyclx3HBDqXMP2whJi9BNxBhKUYO/F2xT2Hg9RgUHpZOHU
	 wMhhHP0/rqjFx4agc3wMZ5J3Voj1p3BAbF8DHXx8xZS0CrFh0Ap2Ui03AJJRQmPPx7
	 rzRRO1q/jG8xD9/auz0OeGL830ElT3fKrwyCFvcddp274g+Kb+0Ld4uBE+WZfPsUYK
	 H1qAJeGT4ItmVK7tzNSSX/UPBP2JZ6Npu/5LXlCuCZgwkoCY7YcQ2B7OrYev0KEYNQ
	 c61qK0yFyRsMw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E9FD40FC0;
	Mon, 13 Apr 2026 15:51:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4FADB194
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 15:51:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 34DD260C28
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 15:51:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VJFXO81g05TE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2026 15:51:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 369DE60BEC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 369DE60BEC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 369DE60BEC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 15:51:37 +0000 (UTC)
X-CSE-ConnectionGUID: chgxJmT0S5m/CBcp49Fxlw==
X-CSE-MsgGUID: JL+RxQzLTAOhys6YMronww==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="76999532"
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="76999532"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 08:51:37 -0700
X-CSE-ConnectionGUID: FgzIKXG0QP6McT9RjoYXYQ==
X-CSE-MsgGUID: d5y33lq/RXGV5I2nAa5HRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="223326523"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 08:51:37 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 08:51:36 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 08:51:36 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.15) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 08:51:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lIn9rTOiuFOQwTDQf0E5PQpEBFkL3rkSHSn4nBhI8wMcNrkUjhsVmTpredDcJ58fGrQnZJeEFg8fZ7BvPZyh2D7zZJm/bdLrOoBR/85/Lzx47hNTvjhtueLES5VUxXqR+2Pc6VnWlx2K9aoPV9cna0gnqE3gOeS41FRPjOntj79vLRBuwDhQVprMqIfMlBpDc9d2ok+GoeKVdLAJGz6ZJY5p0L/0A/iZSsSiCpLVc9fxCibpfPY2yTEs+3lh/ATmF9AnQs3C1qFt2PsXMoNAYFSWutSTWkHCRv4mtWeQm+y3qvqJlBM+4NQAISu9DggGdNt/fCi2qTThO4V7EsiiYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bX8wK8bSWgEjZJ3T5aU0MN/q2OtOm5b/42ow9P2K9PM=;
 b=UrdZiDErMH9zo+EFHBWonf9Hnz7dAbndtaPt7IKknNR270Jy5gHlDz/hJIjV2/fhq3BvCA8jvmtZBigT8t8EHcyHc7XUwdQ0TKg9e47ewEEIf/ONOl2xU3zeGp2Q0vcp29eGl6mNQ3ou/xRlX4qstz5TiFK23LQSd+P0FH9P7o1T4E+LKb5JMMmEB+4EiVcWT6zL5N+vRmKIsxbwC6TNsee7y7myrf3lOtiOBpqw9NJVnkGJ0P+5n8XmrlWRzZ58QXsGn/CeXTeKGadQ7k8gjpLmQP8dXlSBPwHZAia3QwFqHupu1mm3B7R+75Dylr1ZakptJtvW2irZN4ZMUnpGjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by LV3PR11MB8553.namprd11.prod.outlook.com (2603:10b6:408:1b8::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.48; Mon, 13 Apr
 2026 15:51:31 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%5]) with mapi id 15.20.9745.012; Mon, 13 Apr 2026
 15:51:31 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: fix FDIR CTRL VSI
 resource leak in ice_reset_all_vfs()
Thread-Index: AQHcvbqIhdFypAb0+0SYm2J+0X/mprXNRpUAgA/4pDA=
Date: Mon, 13 Apr 2026 15:51:30 +0000
Message-ID: <IA3PR11MB8985E3C35D3517A683234B0F8F242@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20260327072236.129802-1-aleksandr.loktionov@intel.com>
 <20260403115255.GA60103@horms.kernel.org>
In-Reply-To: <20260403115255.GA60103@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|LV3PR11MB8553:EE_
x-ms-office365-filtering-correlation-id: 58a8aa75-e75c-479b-681c-08de997487fa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: RuEEijvoy3zAngQfpTtmNPI4uz0VzATv/68T83CwfKdGxiQKyoP5qmlRvOFf8eVW93DzqQm10OLf/sFX3wWsEPXO6h9oo9qFz2jAVQ2rj4YehTMsaDAZhHBpEc88xDunpHCSQnMI9jhW3hVZvNX6AXHfxClevSkxKv9+FDY4yBiFIw7IsydhqRnZRVyx4DnJBj9X+O749gcYcMy9ZtWBeYE/gSy+2uA0ulY6+ZX+fYexN+S/KHAmEcQdEplFWSzpJ3DbDHym6nCHHYaGXG12fyeGFZKIOJ5aPiFVZcmIbW7OE3U5/mOeOJw3yQVVo4azyuWmXEnTGy0BCflFgC3FpUta6pUlpnKsU/6+GfcmEV5CX52m760r8hCB/iiySi4zWp1LspoSBQhqc43N+XwkO8rNH/u32zcKYv4T+Yo7IQVTK7vKwYQ0AY08XgGvOEDjmuyyXcNHeScvmvCynqL3NngjHiVhexHJj6txtW/I8eMLFEHshYZohm5qEDOsInxsyPXBwj2g1U0Bnukg/2pxIQhamvkcwvPxYBKNmNT3fN6LNOErO0Y39j1m5xW7S+d07FeMBCCwvj9RzrqOHCPnU5OQclSP45hjaefHw+32rwSohPXwWORRzdbGjIVx+kuek/YXyeL68zZPc5T2JM5RT7YgUJicbgZMVEQb1XPciPD1nTvXAkWCRe6T0OuNP1QJill+fa0pG+XkhPR0DMmsKl+6zM4wpRzunhPFO4hnVQ7ET9SvmIBTISq59n+Ryn6QhOTb/Rby8CWA7DcuEOlBC+itx+JOBPymZ5XlqV6GiME=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ty2ki9gqQp3rT7+gpoGkJxO4aH8JWu2gVJqJz029eoDlVYnY9BvJsGK2HuX5?=
 =?us-ascii?Q?ZYeNCQhEuKzPoFf3SZuGjkk3VcsIlNf/ekqEV8Q4Fz5+IHlJzGVHGRCWvxLu?=
 =?us-ascii?Q?0RVQ4//A7CG4oefYuea/Uj/nMTEs2b97ek/LO76KGR+MiNjv5Ef6nN+1TGxl?=
 =?us-ascii?Q?8hjOCJMVQhPDAIeRlFANOWz+ttYNrfQTyeC0AgeUk5a+640klnmu6Gr9RC7l?=
 =?us-ascii?Q?PEubMKTOzkeKXutuDlqJmdE3RjuWkRw133+HBNEcg2BgKjcHlpq5oEJhrqgS?=
 =?us-ascii?Q?HE67Fa+/Ns3HGMCNKzO/m2Guuo+Xp39hCFs08OoivSiGYmK0/7nreoOh+c8k?=
 =?us-ascii?Q?eSB8v/lTta6bFjvuxVUCP+JwGy6YAMyhnluN3QurmB4G5RwS1ntB/R28sMA2?=
 =?us-ascii?Q?36q89/59Qfx6+qShxIp6uf5od2FWV42Gm6LSnJr9D02B5ZntXbkS4WKQwHEX?=
 =?us-ascii?Q?GIOmAw8DON6/Ba2hauF/2YXfZg5xwocnIPfwU+C5WdDLS3uBm4TA2SzMDNta?=
 =?us-ascii?Q?RxkS7S1zsAx33sbADEUFeqmEyKKN+s5TeywjcVwAmDF1w8iKddo2c4MmnI2v?=
 =?us-ascii?Q?w22InPJ+/olihl1CZM5/x4QhRoCDBReFjY5uys3dfzzQ57Y76SxyUDYtXvZq?=
 =?us-ascii?Q?zOdGfL/XnReY1cn6ekTCAWTj2WNpc4RMxeTFDgPcYhCwTz4KJq+snpyBiTxK?=
 =?us-ascii?Q?ANgNaPc63SH55vlb3k4YTb3iztSxHHonkKQnIDgVbJTLtjd+paVMaGzdzeP1?=
 =?us-ascii?Q?09Ao7cfdytJE7Y02WoL2AGV0QmoZlnhcdervh9+Tr+UH0KwgJl+jvi8zajTu?=
 =?us-ascii?Q?BdcuYa9Rg/P0tesWxrKhZetvldzyOdTnguylV7Em+0GnyioB7HhxBhHUdl0a?=
 =?us-ascii?Q?NWxKMtSinqkIvs5ZzYN7Tm3iB6Mbngpp6sveKw9WsP9khTGIPZKdsWm8ChUE?=
 =?us-ascii?Q?VOvqqmb1Hp2wCMBmnTYq2Z1GGa0V7YgzO1kc1YhsFlRnKuvvaXQPGsu2WsiI?=
 =?us-ascii?Q?Ok6cQvrFpVWR8pGnDWCo3gXbUx/OVSwdiiohTMxM4/llY6P0azPF10ATwLM2?=
 =?us-ascii?Q?cmxq80g+f+oBuTIX4o+Qf5bCYunsI4aEjN8Huvc/vgUbhNqX0Obm4I0iInSl?=
 =?us-ascii?Q?4pwp9QmE3lh24SlXUjDi45l/UEG5x/ppioBKwmmVl2e2phQk4+cBvMKAuojD?=
 =?us-ascii?Q?vr137LClbZat1UVYq6NarjD0Gmb3yENSXoXrJVCRLtNKqOrgkPID9wCodUon?=
 =?us-ascii?Q?lkGhe1Ep9gm6KyoeIb8tEMsnWtmTaWw2tw3O2QS4/Bg6P2r4XND7OBrHigNq?=
 =?us-ascii?Q?nIKt5lJiXOxTtrg/WWeL6EhKiketzN16gLstbUbC38zgiugGaoY11UuerMi6?=
 =?us-ascii?Q?hDRZDVOx0dZtW9ZBTLoiceo9fMieTargDgOAT4xIEnMoiGC2tXEqZ3+4HX/b?=
 =?us-ascii?Q?kzgHn93fWz79sioPyGQQEZ6/vGBBnCWxJ8G0SbNKqArLUHn6fWLkdTCj/Unh?=
 =?us-ascii?Q?rc68crqTnNTkfyHpn+AZBIDAdzK4qsnabZY3QkjK1vi6aNXuTGKxyX+bHnTE?=
 =?us-ascii?Q?DgtElPMixcqL8/tY5Oezkul77MtmS3mnAa9lEYy/kkl4ump26PZx3ANNxp3n?=
 =?us-ascii?Q?j/K0qN+C0XbrITuwvV5kK0B8gYmUgNx5QHhCkntK2F58AtTH4yD4ylzyuvjy?=
 =?us-ascii?Q?0naCgb48qhCZ5Y1tFK44xiuFI0jF4leLGfvMHlBk6ErdwDI4tp1Yj3ha+Cyu?=
 =?us-ascii?Q?39hPiU/KrQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ICoV1izTfJZSs5jRGykREGKYBmx4X/k47G9lUAVZn2HNb8HVsb32qMn8unda1Xqynv89m1rAi3EyJ40DlXMxizH1Z2YQ3mytbadD7nam46MY47cIR1xRDlZA5dzW4UMuQKnrfYlYKYi7O/mHqwXz2FhGfxjs6QOjorRkbFV2oGwY8mb/FXytAceW97mtenKRizjzMwDBG4VzrdBSIeF5vEM1MAR18amb1ATpG/dWkthkm2tZ2p7LkCB90NA78gEiksSZTRyZcphWwWfJAnUR/H15C+rIvuQVP+s5KyAKBq/mp2bzLIiob0DoWdwlikC1n06Zsx6Sxcr2cdeGkCoYzA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58a8aa75-e75c-479b-681c-08de997487fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2026 15:51:30.9212 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cWRQskkrNuA8MPHng/J1/jbeailf712MYKAxNr8Pdjomr6ghKVgYIK8WJlNFXlCrax4kHzMSWr7tVXbPSLQMEzvv0PAyCEh+YRV0irNelCc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8553
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776095498; x=1807631498;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/l58vE1JlSY3uLCUBv8SvwP+YVTZVgPLJc31IxUt6dg=;
 b=CyVTPYp9wHZtu++M6QnVhAnTFLbJI3BrGQoGdy3cII1PQTjXPk6Zn3LA
 +4db2Qf0mIYgMUPpSX7JRKJ6dP3kiLXMgR/R+v5VTLbPfciolMKExW6A4
 bW94+k65YU/I7LYRuMS+heIKSnYKusxGEUcVW5bbKvbeK5XlOzGb2+ZVZ
 iOUg6ijLes4kkne+XGeVnmZSzev5xQMuwPy0L8iSVjvRtsrwvbHEMR8bx
 6XNfnTRWMruW3WAXVEz+JGtkPZBFyyLpVWWsM9UtwWCcnLkju4qvsn2uE
 6GIfkAkxU8tF1JAzvqZ0bbYxG+DJXNJFWhbG7dbjAsVBVLwA7f0NfOnAb
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CyVTPYp9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: fix FDIR CTRL VSI
 resource leak in ice_reset_all_vfs()
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:dawid.osuchowski@linux.intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 597FA3EE31D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
imon
> Horman
> Sent: Friday, April 3, 2026 1:57 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org; Dawid Osuchowski
> <dawid.osuchowski@linux.intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: fix FDIR CTRL VSI re=
source
> leak in ice_reset_all_vfs()
>=20
> On Fri, Mar 27, 2026 at 08:22:32AM +0100, Aleksandr Loktionov wrote:
> > From: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
> >
> > Resetting all VFs causes resource leak on VFs with FDIR filters
> > enabled as CTRL VSIs are only invalidated and not freed. Fix by using
> > ice_vf_ctrl_vsi_release() instead of ice_vf_ctrl_invalidate_vsi()
> > which aligns behavior with the ice_reset_vf() function.
> >
> > Reproduction:
> >   echo 1 > /sys/class/net/$pf/device/sriov_numvfs
> >   ethtool -N $vf flow-type ether proto 0x9000 action 0
> >   echo 1 > /sys/class/net/$pf/device/reset
> >
> > Fixes: da62c5ff9dcd ("ice: Add support for per VF ctrl VSI enabling")
> > Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
> > Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

