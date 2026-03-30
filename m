Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JCCAbl5ymnk9AUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2026 15:25:13 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45EBF35BE41
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2026 15:25:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C366C807E5;
	Mon, 30 Mar 2026 13:25:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s6ociU1XViYG; Mon, 30 Mar 2026 13:25:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29FAB806A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774877110;
	bh=PIBDebk55Bs2/p3ZbHeNurP8v6TNoFGsSTENsHnBIBM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qtk6vObQBKm4Q7mdzdeFKLz6vgijdckzctjMQv2Ettf4+cacobJKusHqcZHmvblLY
	 EevaDr0PFC+a6ZVBBLckQOfX62zVAGnI8KYWuBYUXyKl47ntbrO4VYfTIh/+bzjzDu
	 pmpwVldweZ/NiqLVoPFHvMr1acnohuT2lEb1SfhaakEF5ldAx4KdzWY0eE9y2+Bwur
	 Kj9REYR6AfKo/h0xmaisJJ3mhp8rnSUDxrCZDjiFcaDop9OyrjMp85hc5xz/5RDqNV
	 ritNy/blQAj835/DxKP19c/auNyvCvBaMtaJhIRYNGpWybbbVfL3wC3tGF4yawQH3I
	 wN0geLgh1V8mQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29FAB806A7;
	Mon, 30 Mar 2026 13:25:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DC4BC2C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 13:25:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C1EB0806CF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 13:25:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6xG42X-nVxga for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Mar 2026 13:25:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F2FB7806A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F2FB7806A7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F2FB7806A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 13:25:07 +0000 (UTC)
X-CSE-ConnectionGUID: E6MByA2lRT+1QL+Viydokw==
X-CSE-MsgGUID: j/nIY+jPRpeKCDPjcy0g7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11743"; a="74900537"
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="74900537"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 06:25:07 -0700
X-CSE-ConnectionGUID: W1epLcYHShaIX6/CS3hNtg==
X-CSE-MsgGUID: scaBdPvQRCiCG9HEmLKWjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="226312538"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 06:25:06 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 06:25:06 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 30 Mar 2026 06:25:06 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.31) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 30 Mar 2026 06:25:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wn8gY8jrcbDI2vk33MNx66dj61B32A0KU3K0TgoU7r0/NaIQuozOKspxhgWqXvKz8UzEb/eMnBBu1rRzvpkT3zs3E34+cnsD5CtdLfy6L9hAZ2DENun1rzVa7JsY+tkF4Ync4tDUD/W/rNFm788pZJFsWgmE7SewB5PTCQsBtDC++kgkytil2jUiPIN12+k2vLlO9Fj4x8tnAjuXawezHnd2YeR6l/as7tZFhbyPKajMnlwf3sEfUauANRlge2RM1NHttSjyEBG05ogF/qI3ZniL0SWbZSt9mUEngFpE92Eiq/3deCoNnuM+KOybzSb7bM6Znk2F3H7GB1r4vswrSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PIBDebk55Bs2/p3ZbHeNurP8v6TNoFGsSTENsHnBIBM=;
 b=gwCpFL667Tvgbu94pDS3Bx92gsOqXehlXSQ6JiWf5oJXNNyr2A+JvrtNS11QsDIwu6Jz2zx8ZPC6egwnpikkJ0ZERh4B++N6BhkCzY9tmvyDm82dqF+wXxh+Ua829qm3MuxKb7PwlFRoiTYEqe4SHWoDj+cQfe8Bah3U/Omo0d0drJ2rURSYReGchU8cN0ehu+efH80kh4ccCsbot1YF1Es9WL6WrcbaxyjcNmCuhnTDmKmo19Eh5OW9LeH7dCgyI88BcGpRAXPHsH3+dmgB72NUyKZ+sAEQHvRMM6siXRgdby5CE8pfFmIGmjnF6MD+i99hmnUcZHOkeR/aZdP73A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by LV2PR11MB6072.namprd11.prod.outlook.com (2603:10b6:408:176::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Mon, 30 Mar
 2026 13:24:56 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%5]) with mapi id 15.20.9769.006; Mon, 30 Mar 2026
 13:24:56 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [PATCH v4 net-next 3/8] dpll: extend pin notifier and netlink
 events with notification source ID
Thread-Index: AQHcvT45y4yZpsVywkCFoFMqHqDESrXFYr+AgAGzSnA=
Date: Mon, 30 Mar 2026 13:24:56 +0000
Message-ID: <IA1PR11MB62196D389EDD6CF4C279D9359252A@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20260326162832.3135857-1-grzegorz.nitka@intel.com>
 <20260326162832.3135857-4-grzegorz.nitka@intel.com>
 <y5rjyaqyvmnyfaj7o2fari2t6i2klegklpnwi7xw7ld6rmajqb@uovrzb76cjs5>
In-Reply-To: <y5rjyaqyvmnyfaj7o2fari2t6i2klegklpnwi7xw7ld6rmajqb@uovrzb76cjs5>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|LV2PR11MB6072:EE_
x-ms-office365-filtering-correlation-id: dc4e8448-0f8b-4452-0ad9-08de8e5fbc39
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: 7C4qssr5LdaiNLopdjkhu2c13BpTsoXuAWKbyXi/mZsygvbji/e7Fd2kBPN3hReqCFQ5slAB/9Banwzyv0mqVeE8okbOsvUu6yxJv57TttOD6WCJGkqDcnN5Et65HDZOtYqQcoO4VhRN+4Nz/CYEYcBPwRlrq2ZpHTrsJ+8XUwInNOGe4+VtTU7AmL1nBt0Il/myFHZ8YkUUHOjC0oJFxvw4OtLgRM33Ct75fVn8gbrqObiKZGMdkWuWCPxY0L3fdP3/MowWJ2/NEVWxCoKLYgzHeK3jNy5vR1pcvxiQynCKOSWneYrpftQ3vOOgFzO+BqJeAnbXEmLptuEsIrLb7CcetI0rl8ncnuB1FeX6fcr7SRUsT9IarW3rbLbJGiYNbezPRRVoyIWhD5aqVuUetO1yjhAFXF9G1Oj/m/GtUGoKU0UZ9hez6wUUp/o9HZlZradSQNWeL/J/A5D0VB9zpr+bZq7h11zxopTSdOIyvgOq75O92H+w3eKyam5ZgdC5/VX1EDvACbUvHjrraeOvY7EJcP72fgY3yr1MlaNjSyx5wcoWVbKi5UpjQAxdoVprGO48300IBFTHp3PLrl5goXePY1M5b2DlloQjGwWO/4FR69+1uHJjeulqthxczhyp1AofH3Qfm9EgEM0uvYMhVbQbLGHhP1QeyE1eelGbbaLprSvr0Nic4NGrbqleeCAI08ycJqDFDy+4vsQEZmyc5Amio/Lu+sVVeVG3lctepmm1ri59u1tS43KpBkTUd7R848lQbAwjbp8tcjFaP4dlBK0pOnJu1WFWy57/9o/we2g=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wTtEslTd55/5k0mTqr/puJgnvclrD3qhqQbTofVwuXS7+3P4jL+bDj35snpN?=
 =?us-ascii?Q?WV2qTp1t2Exvke5+8lQxABmTvk/BL/8O0OPknCAa5FfWb3p7hHq+Fuufq9me?=
 =?us-ascii?Q?XGa1j5PhZfFP4roe9v0QsksZ7WyGPiNEtjjNvZcw6aoD7hMzW4/2o5dX9R9c?=
 =?us-ascii?Q?IucEBmCf1HyUXhH3JCVG5XJQBwrYnL9rBR/KEZjAorhxKDXOQJMs0W6I9PPv?=
 =?us-ascii?Q?zaecLJlnFhGfRDYRQaEfHdZAQfB7qvL55y+eFpGmL6F5/KqHh6COFAEK9rd7?=
 =?us-ascii?Q?mZRufz/zoRLijgzcjMqCy6Wnv0yyr2yrcK9y8N+vXxZVguPxoi6tKqZebNj6?=
 =?us-ascii?Q?GdsqmJXuJwmDZILlL6iCGig9kGA6AnnbNJiFRzELnEwndbmtjaT7xuU6p1BI?=
 =?us-ascii?Q?Z+w3GfArvi/S+EY6fafXNnK5pbMsK37FWLfA/z0lZkeaQ58KsQNBZSvgQQjC?=
 =?us-ascii?Q?Js/ltvKYBHEJew2Yjr5D/ufV+MfSZ4DiGJE83QLbyddG+DAap9/DjS6jj5I5?=
 =?us-ascii?Q?e5/liqf/3FcP/YllfJVZpKsrIoUiBw6qtfVEChY3Kg9CS3ovni557ZAx1ZDn?=
 =?us-ascii?Q?zE4uXf2CPP2y2HGm6fkDq6ozdaVrsfUov/Qym5oQdy74m2Dt/tPd7HtCfZDm?=
 =?us-ascii?Q?p5dWFWGXATcPEb0odNcvNezHh88u6JbXY7+9HRSzEMIvaQIstkFEzeXY2k5g?=
 =?us-ascii?Q?p49xpRKkHxTq3EnwtmkbqSFeGi0ucTY62uqAzND6qv0SSsunB/T5H0moWPBj?=
 =?us-ascii?Q?N/YMLEatrxGIs+rWDWD4OSRLSShLJMYZukNZgjAreQvHfkRqyv0kys6Xu1T9?=
 =?us-ascii?Q?h1jf52qlC5XQPy2GUD3/3coWSETuETV/bPXL2uyKdq+YctzpzK+Qi+22zgwj?=
 =?us-ascii?Q?Ltiu+5h/j2ZLB9cYW15b+Ot4lXNdNR8b6QggueLBY/Y1Q3RJf8maodGlBk+m?=
 =?us-ascii?Q?PlmJyf8uMdokQ3E54po5l2dF0FkXiIWR8Yt1gyhGWvNGo2mELZfmlESYVJZq?=
 =?us-ascii?Q?G6iYLAlTqZAAP63uMVUpzBVQivLaN7BjfEEOKvwlBWlJvVEFS/ExBh35RYCa?=
 =?us-ascii?Q?gUTGvqf3Vzq6giN0FspMfWAG5r7c3at8Qx0yssvrHuXW3c56q1O4DHhF2YzC?=
 =?us-ascii?Q?luYjXMGW4PxRzmEpNcM1WcNZKI4YHpHzhv8Hpfkb+9ByBRZphw6B5lZNaBQh?=
 =?us-ascii?Q?RqtIMPdemq2i9TV5j5bYlTTudMZLYh48z2BJfO42X0ZdG7MqWJT/gUx9Usjd?=
 =?us-ascii?Q?h/cYgngNCXAjaGTDTP8KLQU5fwpBTiVxFEGQGyjX6ICgLnU8/V004kFhc/HW?=
 =?us-ascii?Q?j7KzEnLJkx8YoiYkAuuH+zsWmuvq+ULjiCIH/oSsbDHXSByIOMjt1vB8D2sW?=
 =?us-ascii?Q?qd48jTBIpbE4j4I5nVbDXkEJtIOzcJl/bjgJRsSefms/TsEQw6FiOH3dWdjx?=
 =?us-ascii?Q?nqo6oYByP93UyqskCqMVQl4AJuDO/AcfAW6AEsX4iRdC0W0SuMsT0kY+PCBg?=
 =?us-ascii?Q?ok8iOzTGEsVasGwUF8CTxV3D2B2FkDP5DDLRDeaEvlpaypXufipnC1KrNwjd?=
 =?us-ascii?Q?LOHuVG/ZxdGLdAIZWt8D8outDftYPaWrZru7x08vwu+NCY2bJtn+QpahGgwN?=
 =?us-ascii?Q?UNJjlQWLJJ9e4bTD+zjMIPphx9ITy4qgIbzx1SprV6rfCfnFc4c1PC8rUeja?=
 =?us-ascii?Q?7JKBByL2seY1mL0AmbktMCbKZxKXuqDRtEg9TriHZJYpzTVNNt3WGPnojTzA?=
 =?us-ascii?Q?707fff3hzw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: HR4xnz6cZ5qkkNKwZpMisKvHHfsUdKPsPXmBFvG3/xweESIsNk2crxolQzvKOrxclIpSlSgW9eGTGDdB4Cj0RZW+G95VFEyuN0R5tt+4j5/BwzxFDALqtcubXrk4ioA9bgDGpjMb6D5Z7Jf2XsZDDDL/TX4gSLMN309G0VrD8tWCqmiyGNF5n5FyonIZ6j3YAwp8lvJRCXvc6cK2sBcOP333fU4xPM6/fueuviJie2RlDAGjbsskGi17Yw85Rc9iWTLkB3LvT1/NJlfVBkZMKUsD3IoDp8+XtSf2nundyvAR0ngU60SlYtDMsG8t3ESbZ/enATy9K/d4TNkwD8Zm+g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc4e8448-0f8b-4452-0ad9-08de8e5fbc39
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2026 13:24:56.3958 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Lx9XEMp8LHAKDTFQQ4Ss0MxibD4LeiIGZvkpZDW/7KW9ch9tLF5YPMDLdNeMZE/YUHE3rstVhzfWr6MX0EBzJ/71YJFlsG++5SbrXJnJInQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6072
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774877108; x=1806413108;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6QiThNCrbCcIuRVJBF8Y729i77HMTFotYmHc/H/JZig=;
 b=ZIA6z8WGFp2RD/aMdQG1lggfu23mp8U0jFE1qZy9bZ+M21K9RT1AcmCF
 sSnGvDnDZo7zRZuAOjrMhrd9JvY2to0tHhXUi4fkzeXnUohxsiIMAYIPM
 xnMTzunJevTHzz7d03QCuSHUpou+5hdsmvmjfKuXtnBpuRnxgtxqFOa4P
 lvOz/gtN5JZJwPn+Wm5LJFtOeImb+qon4VmqDGmK+ZzizUGbBr0MbGe1e
 dz8f2mvGB27SDwQzFKM7p2K74EwvPlB7vKDzg1YiywuidsnFOr+0uXeer
 D8EQTW0K5rfA0wQLDMM2nmxlsor8uI2/CC0YlWYMwc5p9TazwSl3EyTy3
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZIA6z8WG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 3/8] dpll: extend pin
 notifier and netlink events with notification source ID
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
Cc: "Vecera, Ivan" <ivecera@redhat.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jiri@resnulli.us,m:ivecera@redhat.com,m:aleksandr.loktionov@intel.com,m:kuba@kernel.org,m:vadim.fedorenko@linux.dev,m:edumazet@google.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,intel.com,kernel.org,linux.dev,google.com,vger.kernel.org,gmail.com,microchip.com,lunn.ch,lists.osuosl.org,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 45EBF35BE41
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


> -----Original Message-----
> From: Jiri Pirko <jiri@resnulli.us>
> Sent: Sunday, March 29, 2026 1:25 PM
> To: Nitka, Grzegorz <grzegorz.nitka@intel.com>
> Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org; Oros, Petr <poros@redhat.com>;
> richardcochran@gmail.com; andrew+netdev@lunn.ch; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Prathosh.Satish@microchip.com; Vecera,
> Ivan <ivecera@redhat.com>; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>; vadim.fedorenko@linux.dev;
> donald.hunter@gmail.com; horms@kernel.org; pabeni@redhat.com;
> kuba@kernel.org; davem@davemloft.net; edumazet@google.com;
> Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: Re: [PATCH v4 net-next 3/8] dpll: extend pin notifier and netlin=
k
> events with notification source ID
>=20
> Thu, Mar 26, 2026 at 05:28:27PM +0100, grzegorz.nitka@intel.com wrote:
> >Extend the DPLL pin notification API to include a source identifier
> >indicating where the notification originates. This allows notifier
> >consumers and netlink listeners to distinguish between notifications
> >coming from an associated DPLL instance, a parent pin, or the pin
> >itself.
> >
> >A new field, src_id, is added to struct dpll_pin_notifier_info and is
> >passed through all pin-related notification paths. Callers of
> >dpll_pin_notify() are updated to provide a meaningful source identifier
> >based on their context:
> >  - pin registration/unregistration uses the DPLL's clock_id,
> >  - pin-on-pin operations use the parent pin's clock_id,
> >  - pin changes use the pin's own clock_id.
> >
> >As introduced in the commit ("dpll: allow registering FW-identified pin
> >with a different DPLL"), it is possible to share the same physical pin
> >via firmware description (fwnode) with DPLL objects from different
> >kernel modules. This means that a given pin can be registered multiple
> >times.
> >
> >Driver such as ICE (E825 devices) rely on this mechanism when listening
> >for the event where a shared-fwnode pin appears, while avoiding reacting
> >to events triggered by their own registration logic.
> >
> >This change only extends the notification metadata and does not alter
> >existing semantics for drivers that do not use the new field.
> >
> >Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> >Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> >Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> >---
> > drivers/dpll/dpll_core.c    | 14 ++++++++------
> > drivers/dpll/dpll_core.h    |  2 +-
> > drivers/dpll/dpll_netlink.c | 10 +++++-----
> > drivers/dpll/dpll_netlink.h |  4 ++--
> > include/linux/dpll.h        |  1 +
> > 5 files changed, 17 insertions(+), 14 deletions(-)
> >
> >diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
> >index 55ad03977d6d..c7fcae76c3f5 100644
> >--- a/drivers/dpll/dpll_core.c
> >+++ b/drivers/dpll/dpll_core.c
> >@@ -71,7 +71,8 @@ void dpll_device_notify(struct dpll_device *dpll,
> unsigned long action)
> > 	call_dpll_notifiers(action, &info);
> > }
> >
> >-void dpll_pin_notify(struct dpll_pin *pin, unsigned long action)
> >+void dpll_pin_notify(struct dpll_pin *pin, u64 ntfy_src,
>=20
> I don't see the reason for "ntfy_" prefix here. Also. It's src_clock_id.
>=20
> Could you perhaps consistently name this "src_clock_id" here and in the
> info struct as well?
>=20
> Thanks!
>=20
> [..]

Sure, will update it. Most likely it came from very early development, when
I wasn't 100% sure it will be clock_id.
To be updated in the next iteration.

Thanks!

Grzegorz
