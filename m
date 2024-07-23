Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 030F0939FA4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 13:20:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A03514043A;
	Tue, 23 Jul 2024 11:20:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W_zKBeeB46Q1; Tue, 23 Jul 2024 11:20:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B61340425
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721733655;
	bh=910Re90S1iFdKX5eJeg/xIfzkcO/Vj/PONmSLMloi4M=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QUp48Tb7u3CwAjIIXBtXuheAzOiuX2myDrHL0eONVZJJ1y2e5Hw+nITGC03XxqqOx
	 tzQxvTzyd//5ZOHVz43eMACdFdNQJM6uUj2qx4FGaQzfaYtpiB1UO9CMkPl9InJHmy
	 MXnQLjXP142Ez0l3th5Uz8GP42qWCqkpfGWOZYMfw4qhwDkaIHS6m3ga+B6WSI7mRk
	 EWJ1f/hPP56dqCegWUATrjgPAevtuzZX5Z45WfBg/RZLy/fhfa9WjT7J3UztQew2qe
	 5j+8R1hPkmM01Fi+5NcTkMNYyclnkTkusQLvAtSooEhov62UbTLvo1ufsaUPpw455T
	 b7J3l2H0ucQKw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B61340425;
	Tue, 23 Jul 2024 11:20:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 47DF41BF28B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:20:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 31C9640125
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:20:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DzeEMItwoU1U for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 11:20:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EEF1C40119
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EEF1C40119
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EEF1C40119
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 11:20:51 +0000 (UTC)
X-CSE-ConnectionGUID: saUpTBGoRfyMqKK1nd6UJw==
X-CSE-MsgGUID: zpYcp7HnR6KsBiFV1Rvn9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="18964848"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="18964848"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:20:51 -0700
X-CSE-ConnectionGUID: ZUPhdtlxRBOGNdV8P7uL4g==
X-CSE-MsgGUID: gjKYToeUQ+aci//VWP7zkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="52948729"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 04:20:51 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 04:20:51 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 04:20:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 04:20:50 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 04:20:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v7wkikmWQS7QIiYhJPBq673CfSuCDu0DXTUJHglGdMcHaAWrsPERsvHdR2cEeAhAuLPri+kWt9rSl4I6/60DgRiaKNtYcUJ8SD0/Abx+CecGv+X56inPo9hhUx9TuEgw3M8MUj+VdUCeeP0LBaOSmnzYerlUUEgrxMABPG+duIR6WSDIeqKB5plrF0yLqafiCKwrBgTRADFz6s2bZEs48UJ+ojZLW/YeNcnPh+rck2UXcx8tHsZsjX/XY17Qy4jBivMXPOnvjoInn+XKTSvF21hOgoOw/MbVoEz6EqMflmAlUeVZyRITikkZdeg35LEUD64pML3VxNynlkZxn6pNow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=910Re90S1iFdKX5eJeg/xIfzkcO/Vj/PONmSLMloi4M=;
 b=C+ymJp0ZvZTLmZs6CCOnhSgGscVpDAZWB9jPGxq+I3zxz2wCtihWNjBm2LRdfj7xiZcTsxx19wv5WBpG8kiJ8oUbb+eSScgwK0COZfeojA/dyscKvLpwkeMenL+WoTwqy74v8cCAeTyBBdMoNCCvYUl7yQW5RpJx/cg1FFYe/E4eCmy8TAimh2dBsLylIrm3BZTBXpt73fPtjlGS05UO9lfZ67JFB3G4WFJKRcPe663Dg4PE/6hj3mNI8gZlP+04vr8a2z9ytYKCByIrMtk68yhXQPI+21Ce1mYTsX0gn3ScbMT5ZpViXuUupTJZKCHgpn42/S2z1p1sdpUSBJgCiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by DM6PR11MB4611.namprd11.prod.outlook.com (2603:10b6:5:2a5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.15; Tue, 23 Jul
 2024 11:20:42 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 11:20:42 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-next v5 07/15] ice: implement netdev for
 subfunction
Thread-Index: AQHauAOrrtSeyhBvrEqcJdlQ4PgkYLHbliGAgAAWIACAKMhaIA==
Date: Tue, 23 Jul 2024 11:20:42 +0000
Message-ID: <SJ0PR11MB586584908539BDD7E36E866E8FA92@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240606112503.1939759-1-michal.swiatkowski@linux.intel.com>
 <20240606112503.1939759-8-michal.swiatkowski@linux.intel.com>
 <Zn1JaxkObIWjkVAZ@boxer> <Zn1b+huDn5tzyQ16@mev-dev>
In-Reply-To: <Zn1b+huDn5tzyQ16@mev-dev>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|DM6PR11MB4611:EE_
x-ms-office365-filtering-correlation-id: 28d456db-ef1e-4550-5393-08dcab097d5c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?LpyH6pZ65XpescSLj5LER9f5kN6Q+iuppzsH1IJ8UuhXLqPYwCW7MyiTHb2S?=
 =?us-ascii?Q?0EIQFdBzS+Plpp7Swex78+wsEf5bNkHl7yagxbuyesIbMmGVKICTcdrpkBDk?=
 =?us-ascii?Q?54P7WRl4afON70WcYu9pyQYRPo6Rly5rqGCmNBoOaClnU028xaKIy58t77Zr?=
 =?us-ascii?Q?VyBTvRSsBuEN8vJ4YU0A4SyEdNLi+UA67vv+diW9XccJxmMPdfDmoNmgqWFV?=
 =?us-ascii?Q?cTL8B0ugJDCf464K16fEEs89JJ7pLnomcq3W9Le8vCNIzncAJG1GDOeQziyS?=
 =?us-ascii?Q?ZLsxvcLU0/leMsID0OmmS3V5k+2s1pnTBLuhMfsboSz25So+8H7wp8uOM026?=
 =?us-ascii?Q?vEPfv8XEtZxlVLtkY0FsKn/iCjfFNbzXDkgS2uf3+Pl/C1+y3cRwFeGeH2pb?=
 =?us-ascii?Q?TecFx9RlaDe+xbONOf+P+Zxfwf7GdlggP7CMZxBPTNJDaUrXEpoBs/80ruZy?=
 =?us-ascii?Q?UoG/zTRicb1wJVXBp2VEG5+l85P1icFSuMjo9kilQ4JmDtA0voU6LQ73gMWp?=
 =?us-ascii?Q?8ZhC55Rg7gNcVbMj5i3qlgePWGY+c+moZeC60yrTf+2YJPOUvh1yeJE7x1IJ?=
 =?us-ascii?Q?4gzzz6p5SCrLHzFecXAz5TgN4ZR+FatKWtaI2XjvtJKbxAtPI+7E6wnY/02M?=
 =?us-ascii?Q?gp4ucgceKlQcXG7yiQ8WELmgJFm+9amHlp+k4xo6ALYiBxIlzenUiVLSRFnW?=
 =?us-ascii?Q?SD81j8nFyfc3aV0KLVMEwLcGvuCZ75/SdiI+NLVMlVkBIQEFt2JTkr6U4r4o?=
 =?us-ascii?Q?Pw1Oahix3yComYqfE7uWIWRAw/2ffGlY3dmHoEkPt6ad5b5TaEzDyrP+lqpI?=
 =?us-ascii?Q?OXxvudeIxQwxsjzciscCPBN1P8USrb8p6ss0HIGYjV4Iqp2tEqcIjK+rwbV4?=
 =?us-ascii?Q?Ei2yaTQnngRL7W8slgX4TSqPyDKZ/ACYj0uZyk+DYg1p0SCQExiUaddGXXx1?=
 =?us-ascii?Q?6wwBgDMtraSTPWeT1/ADyZ1pNYoa7e326PgAl207MFxMOH6SbACwZDtojXP5?=
 =?us-ascii?Q?Hcx47USWCQGKiMgdWMf+tN5SFWz3jeT5kgikW2LErzlKUvxzfxvlq7msj72/?=
 =?us-ascii?Q?k4qMBVvV2bSap22nKBmlcbXbLv+9hkvTy9nepydi9xIjVmOS2+vp6CwggC0U?=
 =?us-ascii?Q?4j6zPjrdCdMM9E3627wgIhMzts0j7XScA+FTQD23nygfN6mDDr2B7GpRlpdc?=
 =?us-ascii?Q?q0OIhf899ZQOJjrfrE2/PF0VyMTJQ8Taq3/kratWxhZN06i7DNqzrtrutgyg?=
 =?us-ascii?Q?8Plh7QmaRp2xWInxeR/MaRFN/v4uANnsYtVEpY33js0YaOmvd+iNpsltn+ec?=
 =?us-ascii?Q?+qMYjsPW5OTkcpbz5RuBdZ5VsAK/70gRxZTVwtY05c32bd1aGO9afmPnD0T4?=
 =?us-ascii?Q?tdISQShIN49P0Yq9wcsrPaZKku1VxaiouBKxlNGQHNDbyJcQOQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7YKEWOCwlj2P2B8uOVDZFXp/ech5JG2W/vvFEjrxaa4d5CEh+666yM7Qubr1?=
 =?us-ascii?Q?WThE91JfBYPq1Sp1UvW0VK8xmbB5pOyD3hZXhPvqN+CNHfch3lGbQzK/uG3R?=
 =?us-ascii?Q?XnkvavvAfkpz524+4qwwF8sIysGtqW8dlu9qMt+4QAh3OnONRNwLaHc8Y9/P?=
 =?us-ascii?Q?P7hSTnRXa1fyuRg4C5CnvoiARUt11MLhyp8Zk/Vx5hTWWlFOxIs7VYVxmky+?=
 =?us-ascii?Q?Zx5oV0voSJT9oVQLUqye24JCS1nQM+2gZrIphvG77GjBjgKtnOtkwIrT26UI?=
 =?us-ascii?Q?i4S6/ieyZngG157bGqEDySPBi/GY7BL94JgKo9uT2klK/TWsGKNFcHCNnq/u?=
 =?us-ascii?Q?OtwodZcdFpDh4n4o6O1Jif7H0VdfOB0wzUWjJgrcz+o5ZeX9SyhoxJv/9iLc?=
 =?us-ascii?Q?CAA5vQbn9ZCIQFKL7rlpX4GdOLtfBbKYpQ21RD4uafCroxNDv8txHd26Zavi?=
 =?us-ascii?Q?azXHgPY33XdqancHt/PB9enZe0mAqwVZmQkLNzAGYyJ/zb8a4qtdqTxzulaq?=
 =?us-ascii?Q?Chk0vf7XwR0b763FOOLiJTK/s3D9el3pxQnu8+hTGgNPzpS3vzY+eRGh77te?=
 =?us-ascii?Q?od9YlOKRVHFG//+0QQKUA4ARuS1mW0HaI53FgmAypwxtafGcyZm5I34LN42L?=
 =?us-ascii?Q?4aKB+V9YP5M8K+UXnPhLLL+mXHWp5DWXfqyRkrV8i0WId4/FILp0Y5kVtOcf?=
 =?us-ascii?Q?eUDVtUxjuiLmrhJ1Xfoxf3M6KkoEHqodoiAvRPSD/JHsAb46c2nSt5psV5T/?=
 =?us-ascii?Q?5IOrXvtF/nONSQ4G2qIjZrpjsifcguD4gJzOU+Ug97THCc7o2CZatVOr8qwE?=
 =?us-ascii?Q?GpbWjweRNykct0jh8ugpmKz6kTdIbtTj0fiJSZT3TvFpBTDZwUL2opCRNnqX?=
 =?us-ascii?Q?yj2Z8gXIkuf2hSnPBungROPwEE+SPys1fPhm0EkdZK35ye5zYBLl81IaOu8s?=
 =?us-ascii?Q?EkTYsQH7z6E9V0HppQU2wKIVwhBsnGbL80gy7wlrIy1TXVARGhFxPr6DN4WZ?=
 =?us-ascii?Q?ZVcwVOo2ycDHyt1sZWkyKWWNHxTqt3L76HslMjZOHNiQoQLgEsTjQ1W3C6Vs?=
 =?us-ascii?Q?Kw0w1HETIFLZzJvj4kA1SlazQazbD2NPUnuikhkHDbjf3OgShUwvcDntmPig?=
 =?us-ascii?Q?KIIJS5kn3ekeg2T0RouIoNrND9lj6bFqpyeA+S2/B6ys/sNS8/lRKf0eEyVZ?=
 =?us-ascii?Q?t+KdEtaU3kfc7cZ327DNbn97Jnel9mFV93MSk0JwQDbYjUA7jg482850SsP4?=
 =?us-ascii?Q?VznkMaNKBWZIru4UCdZqlwEjhA3293jz6X7FONeBHz6cBt4WLnyz7dqymJwK?=
 =?us-ascii?Q?vBMbaQs/REO0rJgbfpszKKn5A+soXVXYAr9Kns14qnvlxC0TKMMlsWTEj/Hv?=
 =?us-ascii?Q?eW6mg9BAOTZGkVsvW9HdAIwTl9Yccc4c3lE/BRbOzb8FdKpKzxf1ahAJEG/0?=
 =?us-ascii?Q?vALYZ0xcX1RMWrwgbaAkzS6ruSu8h4Nm54lPqnsYTP4nbUD/QWQkIWbeDoQL?=
 =?us-ascii?Q?w6svIWP90X6sMplqM36/VWX3eM2fEtsrbdYRKXg0t7qj8vG70OIMmqltWNyb?=
 =?us-ascii?Q?h8o8teXcPQzDZ4cy5Oluml2lpFwpykytS0jCx5gUfy0h2uz63RsrYcAGWn50?=
 =?us-ascii?Q?3Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28d456db-ef1e-4550-5393-08dcab097d5c
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 11:20:42.5890 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9KVstItQykAaquXsSbEn7aRy0Opto41MhSITVGhdzI9QsNxDFWVR/uPoETA09O9t7igKqZhQapvJzbp60XJPlMVXtqRYimPRJ61dANLfppo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4611
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721733652; x=1753269652;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UP+ceuHKJl29c6dwWww2uEaeE7KfX+Pja7xFRKeYOwM=;
 b=V+tLquiUpHM8NLCzwYjdmyW2ej4XSPAIc5XsIa9tpx7rWGi7M9uvmXRm
 GJd/5zJMtp9OnH1cG3uBwrKSwPdjNrApdyaDZZdx1D3wrKod+KxboFz3T
 ohveQqZhcEqJ3eADIFJbIdKGidxaCtVBsVnORXK+Gk6jOYFFFAPZFq3o1
 KFyGvQFhM+eogX5F5QFdXv+C92A+wyEE9s+yWJSGaI6saCSOe7KfZ9Ai6
 ELO4buF6D++p6pqlBqoQ3nDzfP07Q+uU2rN2nOM5jLfGaGWB9M6sPDsfM
 /TnBoQSEXtvRxdJfCES40rKmbWb/WkSrY//trMxpecEYC2SLf1lYNIlVB
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=V+tLquiU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v5 07/15] ice: implement netdev for
 subfunction
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "pio.raczynski@gmail.com" <pio.raczynski@gmail.com>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>,
 "kalesh-anakkur.purayil@broadcom.com" <kalesh-anakkur.purayil@broadcom.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "jiri@nvidia.com" <jiri@nvidia.com>, "shayd@nvidia.com" <shayd@nvidia.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Kubiak,
 Michal" <michal.kubiak@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal
> Swiatkowski
> Sent: Thursday, June 27, 2024 2:33 PM
> To: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>
> Cc: shayd@nvidia.com; Drewek, Wojciech <wojciech.drewek@intel.com>;
> horms@kernel.org; Samudrala, Sridhar <sridhar.samudrala@intel.com>;
> Polchlopek, Mateusz <mateusz.polchlopek@intel.com>; netdev@vger.kernel.or=
g;
> jiri@nvidia.com; kalesh-anakkur.purayil@broadcom.com; Kubiak, Michal
> <michal.kubiak@intel.com>; intel-wired-lan@lists.osuosl.org;
> pio.raczynski@gmail.com; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.co=
m>;
> Keller, Jacob E <jacob.e.keller@intel.com>
> Subject: Re: [Intel-wired-lan] [iwl-next v5 07/15] ice: implement netdev =
for
> subfunction
>=20
> On Thu, Jun 27, 2024 at 01:13:47PM +0200, Maciej Fijalkowski wrote:
> > On Thu, Jun 06, 2024 at 01:24:55PM +0200, Michal Swiatkowski wrote:
> > > From: Piotr Raczynski <piotr.raczynski@intel.com>
> > >
> > > Configure netdevice for subfunction usecase. Mostly it is reusing
> > > ops from the PF netdevice.
> > >
> > > SF netdev is linked to devlink port registered after SF activation.
> > >
> > > Reviewed-by: Simon Horman <horms@kernel.org>
> > > Reviewed-by: Jiri Pirko <jiri@nvidia.com>
> > > Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> > > Signed-off-by: Michal Swiatkowski
> > > <michal.swiatkowski@linux.intel.com>
> > > ---
> > >  drivers/net/ethernet/intel/ice/ice_sf_eth.c | 85
> > > ++++++++++++++++++++-
> > >  1 file changed, 84 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> > > b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> > > index abe495c2d033..3a540a2638d1 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
> > > @@ -2,11 +2,85 @@


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


