Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 87FADA61C79
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Mar 2025 21:24:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 410AD83A49;
	Fri, 14 Mar 2025 20:24:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nPDvzLz-bbr3; Fri, 14 Mar 2025 20:24:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A1798376E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741983887;
	bh=ohHr2aZl5VTSdF0N+N+ZzyjDB0Tr12ywMf3z4D378vc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iurZF+mhGq4k2ylNhb1Rkq0HmCP00ouLg4jGvS4TuqtjBSQ4r7rrfXwlqPpE098Vm
	 J3ygk4dRgQNI4Q/zvNc/iQpaKGmXbYA8rkFt/45sYhJXyvuWkECuFqsXm2Tg+EvElM
	 64t8wjYZJEMnWswkql0N5TW51Z+MrMyPQ9f2nlYsX+68Ju1WpqLrwZuYmhfoOhFGH4
	 hNJAXNNzoYjzz5e9Vsf8a//fSfAiNKSzXUm4kiQ8GEDiBReMp1lDxdLQ+NMNo+Hrv+
	 s49c1gT1vdWECjIbalur7GN7PjKyPwDGLUftuRwzCexNGqBaOUoLVkIrEyULV6Wcyh
	 Fl/u7rTTDEBNA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8A1798376E;
	Fri, 14 Mar 2025 20:24:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 855CE116
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 20:24:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 24A9582220
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 20:24:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MAdWSFKrL6sl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Mar 2025 20:24:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6281582160
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6281582160
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6281582160
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 20:24:40 +0000 (UTC)
X-CSE-ConnectionGUID: Xn55SJJ8SbyodrTfNgUvyw==
X-CSE-MsgGUID: fJniSgYtRNGBt7f+Dlg24A==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="43186499"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="43186499"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 13:24:40 -0700
X-CSE-ConnectionGUID: NGmwxbNxRYSG3bs/VcdrsA==
X-CSE-MsgGUID: b+XvbEVNSa+TiUqUC1ujZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="121869564"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 13:24:40 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 14 Mar 2025 13:24:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Mar 2025 13:24:39 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Mar 2025 13:24:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T9aCa83TDxrfaXaCwAGLxrpiDTX/1FNgSsUDWtLKt/9Da7LhNRSYJgdTIx5VY8pATidVU9EDL39iXSReeEYSzbWq4YrLWHE9/1QgQcFoZKPqh5usIT0tOno6WkW+yi4rDFFKNnWpiALcnvntzlHaNsx5bXo1PvyotdgKJ5Q1tVMatpV8KYVSpduGXvo0rRztxaEYw9HCSNFaFckeuG0shKKgju4lXAvbPCxaE23to9xKX/YUvrbl/LGz6hT03SGoN0VgIn2CP80ei/ZPnTrXgJTd0qGW0034waAhZHQO7II7j+OO66ELAfSiGchouVvZiVI1hNUn0XVJamWLiuUUXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ohHr2aZl5VTSdF0N+N+ZzyjDB0Tr12ywMf3z4D378vc=;
 b=IRGInAVZHYHTOZKF9x3gwITDgiQayXLT+sEaWeVjSuGgAlzWa4LCFxlA4eFbA/ZE+0LPypo3xG11SdXO0PZixeZ2vG0IkpqABPqR+M+VlgR9LZkc3a4ia/A+3MxGmCQitD8lE98DAwL/M9eX5a4W0hFaxxbHeSo9xuMOpPxBCRSI/HroVuK/42IdNUY5f+2sH3RBlfTBpe4Un/WxnwX2Gp/ughcOl7ObYH3z44kJC9nM+36SqOoSnbkEXWOFBRUaSnqMdkwXYn8RJRBlPjwA6ip73L3Vbwh5xuMIQMK4+MyIiw46F4a6wdde/+QkzRg1t7QJmJPUojhCLMRm5ClrVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SN7PR11MB7468.namprd11.prod.outlook.com (2603:10b6:806:329::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Fri, 14 Mar
 2025 20:24:07 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%4]) with mapi id 15.20.8511.026; Fri, 14 Mar 2025
 20:24:07 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Olech, Milena" <milena.olech@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Linga, Pavan Kumar"
 <pavan.kumar.linga@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v9 iwl-next 07/10] idpf: add Tx
 timestamp capabilities negotiation
Thread-Index: AQHblEN+A6to49xm20SnZ/Fx+jtlTrNzDcgg
Date: Fri, 14 Mar 2025 20:24:07 +0000
Message-ID: <SJ1PR11MB62977D0FC688F32ED75F8A939BD22@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250313180417.2348593-1-milena.olech@intel.com>
 <20250313180417.2348593-8-milena.olech@intel.com>
In-Reply-To: <20250313180417.2348593-8-milena.olech@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SN7PR11MB7468:EE_
x-ms-office365-filtering-correlation-id: e2f747d9-fff0-4bfa-3c5d-08dd63362c3f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ybGca2zUPruuApNhpvtXCs/iHbuCtifdSuah7oyndvjXMskNu4cJrnLby17R?=
 =?us-ascii?Q?dWN2vesK0BXzZgT5KiVy2VvVclkKdlEAgpmTLEobhJy4QoVw3NiyrsR2sQ3C?=
 =?us-ascii?Q?+IUtFFG/rWhbmzsarB5WcX8n2KbvB516gW013wZfkAHHt40/2mSPDBgBSlps?=
 =?us-ascii?Q?sWvS4KxSfjfTr4Y+NZ2qDa51pD897h2V76g3xP34oianRS+PucWFZJ9pqgUe?=
 =?us-ascii?Q?xUKykuFtZ+zLCEudn3NbYhy8znP7ZuAKWtAPeyYvW3DEyQ8i5lzzxQdPzyn6?=
 =?us-ascii?Q?5237OYiqCeTlb2nChh37LI2fva3vc3widg4R2z+VsHSG4DheM7ArvXL183+0?=
 =?us-ascii?Q?2EsDuJTd6xSN1nuE09bxImyWdqJVUfHgYm5EADg/5DOVu/8ycYloG25XphYB?=
 =?us-ascii?Q?T6mmRZy+hQgfw3VhFdmlj9fEroTHYdWXRQj0G0PPF9G9bzu1QPlw5E8vYN4f?=
 =?us-ascii?Q?Tkt4P01pE2C6618IDY2eyia/a6G9my7U45ySjtA0vuTu7tHriVE5v18FoD+t?=
 =?us-ascii?Q?5tpgvz7Qs3yhCh7w/+yUSN71CYDTM8oC24IgFN7BSH8xtJB6wIrYv94CJa7L?=
 =?us-ascii?Q?ki3XeChN6wOi7L/lKB+7QvMIyQcL9peBdVQg8lV+wxgCgT13H+h5mABkxHTQ?=
 =?us-ascii?Q?IBdP7V+0toh/GZvGN29j9rdqqfDabT9eygsl/zZTIx5zlrjYYI0p3CJkhdJJ?=
 =?us-ascii?Q?cPZPG0kMT2RvrZGe9UEu52KOKEqZ/BXAbWpYRgpejilJwtX7p7GbEaVrzTgl?=
 =?us-ascii?Q?yK/8O2lIX1TIa9gXLc+MHF5BSU2WGGTdmJQ0FR6IlBd936J8wQUdLkINbYFt?=
 =?us-ascii?Q?SQwzYDELrBvy0aI+cH5uvAtAFmBeO8Ea8sMiK9suhDzjsUm/nlrv503ZOLlV?=
 =?us-ascii?Q?GJl0hOiUcVadG/xmGeJoIpb69SoGj+BZlRD7f/KfbYXkPD9O9gb98mgUcO6W?=
 =?us-ascii?Q?/qQdydvodbCe4xZRjnR/ZToPJWLbBhkyrAF/6b4B0ONOR0q6XtDepXD0pBQ2?=
 =?us-ascii?Q?y9aCSqEazNDsPkK1ZvOjFPMdlVFm4KNFfz2xZIadysB3RUJ7r25fLH6/WJ0D?=
 =?us-ascii?Q?yUsqd5GEvgLmoZOl3ujLYEHjVbe7+wDz/whLmN1jqjcX/4GjhOIlcIYuj9vx?=
 =?us-ascii?Q?26NBMtgipRUdk7JKO0ub+PbKf9vcj50hBb1vpYKsPLh5Ye2DCpuLZkcGUswy?=
 =?us-ascii?Q?+2lqKxnleRAKzBnj2WxatovT0V4nyxicerszURUmFv+y416eRQ78xx17VTR1?=
 =?us-ascii?Q?Jkeoz6yItlrdmrpSSY21/Yq65pqBaK6I7E4u1UBQMH7Ucw3h3+ET3R4kDkAA?=
 =?us-ascii?Q?RgSdAElhyj9Z4AERm4l+4zGYtdKSZV63bQITkGlSoovPD3AXqNENkoMP4/vy?=
 =?us-ascii?Q?194EfOYibG8A1V8Jy/GPAZvAGznRBpWN/m8Z4pcDANP2AP+SmY2xZJYLN2Qg?=
 =?us-ascii?Q?G06WEyL2OfBub2DnFjMW8s1x6YNVMvl0?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?L91ZWDWP9zUbQhdef37+rzHBke9VZiLY8bfB4LvckAmbkSaz74tpiTPxZJJH?=
 =?us-ascii?Q?1hXGaupFQYBPbGSBccJm2ftyJhZW5kdLOYSnf2y67Jk2d8SsKng98VE9JXdA?=
 =?us-ascii?Q?9usbXBIR7umSN+hmYg70UxJ4R3kEBIHrS5rkpSTvLsAP+GKLDvw46eTXE413?=
 =?us-ascii?Q?bR55SBGrXEQ3kjz0Wh1ND321P1PXx/LeYZsJ0wyUnct1OCQ9Cidvf6CYtbYr?=
 =?us-ascii?Q?Z4CLPOgS8Ux9svI5CWOOQSU0XIbHiiTdu9cfGpoPQN+nj4KHv7Odgae1EM2f?=
 =?us-ascii?Q?WAkOgJaCmIobek48JLKxIMzB33IA7037hgj1EQDVkOmy0LL4QovpkugS9LL0?=
 =?us-ascii?Q?JoppQPg7V1B5frT1kdGJBvID6wTiVJ8vkdPV2jb2zkYxt0bFbwCpu4iu6x2N?=
 =?us-ascii?Q?9fcNGsjvc3ahdVjMW2u+zRxE2MqACZWjiWI/qxEns2fQcR9JatnEGsZEb4bb?=
 =?us-ascii?Q?R1ibJbMwS+eUtEi39f1q/TLjDEynQGEImP0nYp8HUar5tGan2femWDd2Thyk?=
 =?us-ascii?Q?mFmFsiz7fQzLjsk5ZsgyAHPjYp1Hova3wku4Qnwt+fxm1qp2GZ0dyEXFOs0o?=
 =?us-ascii?Q?oHtpaqxLED6f1wCJp49NhTIFyBnODlNtDiDsqfRH9fSGiAAo0KL/x6JfPQ5R?=
 =?us-ascii?Q?6eFKG7WZQ5RVGpW1rJKHc5n3rLJ+fy4knv5WQqKegT+mErB7+6d0Ko32lHl9?=
 =?us-ascii?Q?Hl46ZxitG4HnpJS/Y9SUHiNqq0toq6Bfr1WvgUsrmomyY8rpcdsifmJ9QWgf?=
 =?us-ascii?Q?FYXS++wcY4Sdazsd3YBmzKMZ/mwDUqPL5dmlPxWJ0872Kzpt/lPk4IAtyBjt?=
 =?us-ascii?Q?W+A2o4o4FaRLMpVtQI2zwxc8GLVv438AXapwe9xe1rIhE/OcGVLZS24GbQyC?=
 =?us-ascii?Q?TrL8o8R0U8Wt3gAX7fzs/TrAN/s3TI+gO+E8c0zSFg+i0B2Ajp4/5GfPBHoY?=
 =?us-ascii?Q?/5jW8lFrg7nyvr7SVG3HFgS2/ri+5y/O17s3aHpdEV5hR19q1QJgpDbjloNh?=
 =?us-ascii?Q?yMyLiRaPSSwY3ctTC8EIuHEfmUP7YMv3fIM+FNF6tfOrs46AuFvNOE0fZ/C0?=
 =?us-ascii?Q?BlRza3ISC0n43B9t74DgNrnbZr/gCysLZMfIBX+ojZaNoZ7rqHHyYUdhtylf?=
 =?us-ascii?Q?AqDKcaprAneQ/xSRAQJ6+hGucHkgxvAYpju19i34w4hkOqWPp+3p7ukctTeC?=
 =?us-ascii?Q?zJbEic0ddujH8EC1dylWFhpX7nM4GkF6+K61X2vVAoAU4dV97YW4C5IIhZtq?=
 =?us-ascii?Q?/TWqiudj3zXfMl76KbG7YePIkk3vSDhmTCFCo6ERYgwt01hnjhnNJ65j3XIg?=
 =?us-ascii?Q?CnWBFQsAWIuVMNlcWjOjWUs8Ir4eWbTJX00tbMcdlREqZGyJDeyN1WqPw3Kb?=
 =?us-ascii?Q?glOAUKVG2hLFV+CXwFuExu+U36bwUjnIdi6B5VXO85BJG9VRWqAuLyNVeBju?=
 =?us-ascii?Q?dxNZZXsAch32HA5Yo2ZFO8QwVxMfEG7jLjxidCGxjHZl3VdQn6sP6oKIAAH9?=
 =?us-ascii?Q?p4T7nD4o4VDw4QgfaGRfey0z7NBaJEA+k49GZC1n/bC5E2+c8x6olpXSt0Jm?=
 =?us-ascii?Q?9UhNgP+ZDHrvCG1zzkwdT/SF12fUGj2hjHR80Gy4?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2f747d9-fff0-4bfa-3c5d-08dd63362c3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2025 20:24:07.7644 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JfyOhOd00faKJe6z0xXxFTHI4WPx7BGzDx4sP3ypzB7jtWCnJLtLMTaMQ6SdDJHeYgOxJQQTMgYTHERRlK8EJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7468
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741983881; x=1773519881;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ohHr2aZl5VTSdF0N+N+ZzyjDB0Tr12ywMf3z4D378vc=;
 b=TpIhzybWjq+MN1W/Y/kl6U77d0oeDHRv4Qnsw9di7foNNj9IpuR9Qab8
 Q8n/2tpB5ZKPMG1uL+x0Bf5cZbLRBiGJ/JWcPG5EZPaLSwXQmWsGiZIAu
 /bcp5j9POxLdrieMXQOOveZHQyuhHUd5PwLV9NLhPnDLvMKiI0X7Ehww5
 PbgEhtn6oqSRhP7Ji6zmUTGiwsEIUokmgG7euEtQyOzboyEeNZcEskh6u
 3g0omxOTNM9qjfPytdPPre/1RgdcVcecir2yGQtUOAR/BybL3fYEavfCM
 H7yVu59i0gFHzFu+39EhaqFJKNbj2wOsLKsqd5l0lul70qOVcf8wZeSBZ
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TpIhzybW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v9 iwl-next 07/10] idpf: add Tx
 timestamp capabilities negotiation
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
> Milena Olech
> Sent: Thursday, March 13, 2025 11:04 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Olech, Milena <milena.olech@intel.com>;
> Lobakin, Aleksander <aleksander.lobakin@intel.com>; Tantilov, Emil S
> <emil.s.tantilov@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>
> Subject: [Intel-wired-lan] [PATCH v9 iwl-next 07/10] idpf: add Tx timesta=
mp
> capabilities negotiation
>=20
> Tx timestamp capabilities are negotiated for the uplink Vport.
> Driver receives information about the number of available Tx timestamp
> latches, the size of Tx timestamp value and the set of indexes used for T=
x
> timestamping.
>=20
> Add function to get the Tx timestamp capabilities and parse the uplink vp=
ort
> flag.
>=20
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Co-developed-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> ---
> 2.31.1

Tested-by: Samuel Salin <Samuel.salin@intel.com>
