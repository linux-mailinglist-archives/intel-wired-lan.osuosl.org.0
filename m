Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D4745A95752
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Apr 2025 22:26:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 73D7F60B0E;
	Mon, 21 Apr 2025 20:26:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WGMvLDq1vui6; Mon, 21 Apr 2025 20:26:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE3B260B13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745267213;
	bh=o0ypLvz8vxXer89mc1++CfMyPV3ZrU9H02ba9iKwuLU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jcwj3Of2FEmIg6HY4E5S6DsjQ8pDVMNq8A+u+fbVq4dSl/KQn+PqTVkKnIq8kKa2h
	 Q2RtH8bOVqib8KCBbSuod2FBbWY+Bsz8SAnG4/GHA5eynUkd9rXupk3SkqWTqqCo1O
	 /Z7WKM2ak9Jm8xYUXHm2ruvOJNrnZ78BeqEOj6W89uL1uxRCS68LGqi8Owc60w3VpO
	 DQRuaU3NiIQ1bde1KYgn/Drc4DKKfWoMAllCKMljQIbM3zoJnA7mfHG7t3Qps3oHuB
	 oEeQfZTK01Yn4/Sz2ElvHizOq66jxld+9W52+P8tfb9mnO4bDJDag++Xor37kqSMET
	 S6FOVuNsDztVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE3B260B13;
	Mon, 21 Apr 2025 20:26:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B0B841BC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 20:26:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 963F56078A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 20:26:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EP0BgkMtgbM9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Apr 2025 20:26:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C5457605FA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5457605FA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C5457605FA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 20:26:51 +0000 (UTC)
X-CSE-ConnectionGUID: Sb0Thk84SXe6tjSsZs5rPA==
X-CSE-MsgGUID: yLzjpY2VTN6yIA2zXJqJkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="46723446"
X-IronPort-AV: E=Sophos;i="6.15,229,1739865600"; d="scan'208";a="46723446"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 13:26:51 -0700
X-CSE-ConnectionGUID: ATzMrLmATTKD6fIPJZxsGg==
X-CSE-MsgGUID: ipSCrPC4QaCEkb8GmTgdvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,229,1739865600"; d="scan'208";a="162784420"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 13:26:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 21 Apr 2025 13:26:50 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 21 Apr 2025 13:26:50 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 21 Apr 2025 13:26:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BofJl66UoOHvjYCo/UjLiABYYQaxQx9AgJvkXkR4VaZ1hSD+vEt4qI1R0mGdMMUe8aSJmW84L6xbSFacHbQyIwshTyHdEmtandf0WyeGkp6fj0WnzWCpN9sqZuOkRnXob2GW+FesWJxHsG41wpODD8LxS6pvseQSAgLQWfFZjgpgwa5ptK3kIVjis+jDZLpedfqPyhMQqsLS7OQc4oZLQDdc9Wn1AS68ockox8c2GkCTOQXHSXRMlnY6P6yPJa+X7B02GbmfEowdce3DR+0szWRBJ2z1iGf1eaqPP7WAR/IF2DOpFQzGzm7COmtcE70OUkUtayhepEJqRdZx2quq1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o0ypLvz8vxXer89mc1++CfMyPV3ZrU9H02ba9iKwuLU=;
 b=D8z61bnnr/sseZ5AvWij78a/JmK2Phx6/EZhpdNvO7WOO7RX5V1/C4nrbVO3tKvRRbzLlB0/D+YUhgCOhn3XlAHWNZnEOjZ1tl4KgNX2qYZFjs6RV5vgRPoay4SriRiVQvKF5kE5Lqah8DauzGdm5kLFA/5i5U4EDGYkoOxzCd4ITz5OVPxDwxOVXCKrvPV2su4cgGdEY7mgMGdPBKZ32UD/DfOmOU23uVKGYtFEACcq/4eQryyFmW5xXV5JmyhiIJVpRusgGCCC8LijNl+tv50z4b+DT3uOfEG7m1GTbewYi3E5YES8aG8Xb6mccR8NMesOe0mKqQ80/mzeCH0yrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SA1PR11MB8318.namprd11.prod.outlook.com (2603:10b6:806:373::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Mon, 21 Apr
 2025 20:26:47 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%3]) with mapi id 15.20.8655.031; Mon, 21 Apr 2025
 20:26:47 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Chittim, Madhu" <madhu.chittim@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] idpf: fix offloads support for
 encapsulated packets
Thread-Index: AQHbpBOdMZzReCQaE0uliHbGbIWdzLOursKQ
Date: Mon, 21 Apr 2025 20:26:47 +0000
Message-ID: <SJ1PR11MB6297CC3EE206EFCF87EBC09E9BB82@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250402210950.1088533-1-madhu.chittim@intel.com>
In-Reply-To: <20250402210950.1088533-1-madhu.chittim@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SA1PR11MB8318:EE_
x-ms-office365-filtering-correlation-id: c646d3c0-fd9a-45ce-a0ff-08dd8112d705
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?21CW02/D9JVs4kC/8T2+x5F3iv+tBQBGvOa4UPItNAMACeOvqQ1wRJSzmT3V?=
 =?us-ascii?Q?nor46+75v7xDIhMWeQITS7/DbsrBD+BAtfWWuLxbb7l2qZGdbN5IKsIIvh0w?=
 =?us-ascii?Q?Qwm/PkqBF/lmlGQ80UzfYzXhRsjAcxQSK/TaXMdYBQ1eGEtN8TqJ4rEvrXOd?=
 =?us-ascii?Q?FFUndTsgUKUoljOZuPMfzAw/J2j1g0KsG6vioik43iQO4ejud1JlLPErtf3F?=
 =?us-ascii?Q?SCAKrQjvwowZUlA8fiHO0NfHDrSvIIDwH4Pz9g1doIGLJ4oom0sYLM1g1ZMB?=
 =?us-ascii?Q?d177kBZ/CGjQEAMhQQ2glxMu/AhsXp/dN6utpZwHhUQ7BDqLoxnJwjHPdmuj?=
 =?us-ascii?Q?6HY3/RQqPUvA9JLS9fnWR2zjdWeOhBwOFHCm5JqK8RMFIeSURPD+jd3ap+0K?=
 =?us-ascii?Q?wrNFUhnD7QjXtLp93eElLFJE5MgteBzmvdszsrGDc5r9JsRH+fI8EQDNllqZ?=
 =?us-ascii?Q?IgAW6XseX0WjuTD74TuamiDez2Fgqtx4HAIeAyN9Hc0XCywt1bGGU68ujGBd?=
 =?us-ascii?Q?sEz4jjNIAoUfTt/h/HJqq8E8P8e440/cwS0Y1VII2le7ePPk8otf1Ryf9PDW?=
 =?us-ascii?Q?g29+pjKLnHby6G7Za8JeXQJij9ggQZzB/sL5T2ofZtcRdhzRjQZXkOamJ6yD?=
 =?us-ascii?Q?CwD9LhESv+Zsan7bwtNEDznKCeo+DjbloGTKjkM4VxYJT+/Gxd/VRhD8mdjK?=
 =?us-ascii?Q?PcpZ0vkDhiVTRSoGKoPCo/QsLsZxXZtVJ3zQ2ou5sybpC9eEjJU5n519NtDY?=
 =?us-ascii?Q?v1dOoxDw7/laG8yfpgRouKncKGVrQVajHOTp/c5jAwktD121CGhUG0h3h8OC?=
 =?us-ascii?Q?qtdxBtOlagQIzjYNiyCrwNEcChRBNFhcijAbaRwtfOjr78xig3zOwvesV/kx?=
 =?us-ascii?Q?y7ZNS3rdDwoCcd+zsZ/+SCcxL4U15Rwv56uavQMAoU1RdNkFp8n97XKqJE/u?=
 =?us-ascii?Q?u97sHteP/KJokypjFFTei0voPjvCjoxBUrT4N3XvrgRxxEDYSIuJnqb09hRI?=
 =?us-ascii?Q?mh/g9Tcw3Qvf/iN1+FjFUzwlA3+HVzAneERVDyk2Q6jXA46Bj662v9kAy8hD?=
 =?us-ascii?Q?P0j2FLvgL2pJ3hQAZj0lkX63rwO51Jgc/mAYDP2wzXE0pBYv8alKCrkwpqyJ?=
 =?us-ascii?Q?4EdwGFT0GnW9jhLQLTYhopyBhgBQRW8qpcl6Ywld0aQPSu69yfR6SLVrCqTT?=
 =?us-ascii?Q?0cHoYuITsCnLbm4VBuv3N5SC0Dd5XcrHY1g5A/ssoZNqDySD/tOirlC3uGgA?=
 =?us-ascii?Q?XxnLF7iZ9uZCHHdcJAxQuHwWZoXFusIVuZmsi1wpcFj/3lM/nauyCueQ8gXS?=
 =?us-ascii?Q?Cd1Y6qbrLAt4Fks4N3O6iQ2uQiFayfw7gIn8gL+j4+XJBvhb8Yfm2Rt5uxBB?=
 =?us-ascii?Q?n8csdllSMi8H7LCvHvAculDRnlZxbk+7o7BLB/MuWU/WvswHG1csIUm36iiF?=
 =?us-ascii?Q?Ug5B31RczZ8R06r/dY3TcHFMwZzcvVDuZWfKSEqYUs/5wcLmYr2sO26UqVvR?=
 =?us-ascii?Q?n1j/M9qaJg1p2TY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GmVNyBZefLoxe4JI7THnl9FmNrhEKrp+xAD0Pz6qASeqQj3Wm86BtJLRCj7t?=
 =?us-ascii?Q?BQU/bqkpcxOWqPHmfgEBLs+M0p7yGTU9+03OspZwKkWJkgHE5zzd+C+jdX5g?=
 =?us-ascii?Q?/pvDX3kW25JUczI3rWh4yEQPAe01d2C+hsBRI4a7/c0mjexgcGuLE95JWQls?=
 =?us-ascii?Q?HHB9XomOhfDEbfkGgRS3zwY/gPIeb4lVGpeiwIuaSSE+pz7PhxiHaMBLuPJH?=
 =?us-ascii?Q?KPobJADxTV1RkmzNYSvjjuLeRVZbrCpod15ND+UUPPeahArxOo21MHKssLPU?=
 =?us-ascii?Q?auvPPGmCgfIZZyQwLyga17f7C1R0mxSLUbbg+Ih+JuSfsx6ka3CopELyhCaZ?=
 =?us-ascii?Q?Fr6CsAyBAOlFJkg/ClA9gbP3DrijbIClrzc6tiNuYtnCIQdM/Edvz7eSs3ca?=
 =?us-ascii?Q?6vCICbAV0SE/XTeT2DSMRE2T5fNIjC5T6vQNxirWHbczYunRLPgjg+x1L1OV?=
 =?us-ascii?Q?rjBSLq+0E3iTMDhFTqdAgPobUgXP22IQiyjskb91fjdPo+q8xkXM4lCE+vfR?=
 =?us-ascii?Q?j3A0S4UIHJRcw9hs/1I3X0TWGfhsf4GYnx3lkNYyiGLAW1UEbfb1gC56SkKB?=
 =?us-ascii?Q?i0oQlTuiA7JGoP+mbnp9HjtINvtQzN7+/26IZUf4aak36alZ8V1VblODgWCM?=
 =?us-ascii?Q?U/gWxpKauK/HaIrMupqoL4sPN547VEFZ6u5yXrQb5qz0InPIFi9G1W+f8zs/?=
 =?us-ascii?Q?E5L3YfFC367bhN63NCRJXJIZcAq1oH2L07eBFkHYJgBxKKtHvWbLXEgw7YuD?=
 =?us-ascii?Q?J3WLkDjKNV2oLqJSHL50v6w8UM3wHLZVQgE7iUs9cfUSN4ylNE0JeeihC3c4?=
 =?us-ascii?Q?TdHKG2rZeIeCCfUrHe2Np6g6XRFp78H/3I5Oy2U6wl78V+XCPm/hedbv3SF3?=
 =?us-ascii?Q?EaTEUpHjEff1w8z/t26lGbSOoJu9z1COKgZ//SVJqr9satt+hic1k+BPraKi?=
 =?us-ascii?Q?5CbsLC5RLb42PUXtq9Xm8JIKmZLgKmb5ieJJYLHZSIxM+eN9j1Jsj9aYw1Fa?=
 =?us-ascii?Q?phS8sRU+9E3yVjBSW2tUFCPC9fACn40Jpv4R44K3ZI2PmfVQP7dj8cSGYiRA?=
 =?us-ascii?Q?nZ1sJhWmHbDxVDD/ewJ/KNoICnhMs8mn7+SQM3WLWoBkogwhsu5xEWypbaFj?=
 =?us-ascii?Q?S+R4/LgACXAn5krKI25R1f6DV2jrVc591Yfdsm5WPBGxlUJhepfiCNqrqBJm?=
 =?us-ascii?Q?1y4kjEcmoIBG2Lca05ndMAi4heyiOWV7WoLRhSbewZBA4pTPSMA2T/ti5RqK?=
 =?us-ascii?Q?i6BFMIh/uk/QALj69HlOXOjaO35mJyKZooeWBmPhzoHf3xUwWpXSF4qSr7tL?=
 =?us-ascii?Q?J6kxBYZjBtDM3HnyE9mJNCU1GipbuYXexGKUlAtLod6hUiV+lHLtDpy7hXRU?=
 =?us-ascii?Q?KYuiKUT47PBx1LG/rriDraKSPvm/q0HbydR8S4uwEWBe7EZaue5YAOcErR8f?=
 =?us-ascii?Q?JwzjxhM5Y0zVCgfZ/zZyhMXLnjBLU6Xnz9kBNFF5yJt30Qx0rJxcPj/mzWat?=
 =?us-ascii?Q?K/9pqeySPRTz2u2X/9/68YWKUhXmvgIXmqz15Wl+/cgGRw4uKVSYnaIT0DOj?=
 =?us-ascii?Q?nNrQIVjIeNiloXvRc8UjTQjNuc7wHCKIcC7V2Kjl?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c646d3c0-fd9a-45ce-a0ff-08dd8112d705
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2025 20:26:47.2824 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UHK0R9okitWeIohLX1iwWs0A6p8mWfGHXu8eRenY3doQm826zXmBOzKhBQnNl1z65YzpXh9JMWshS0uyKzx+kQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8318
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745267212; x=1776803212;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=o0ypLvz8vxXer89mc1++CfMyPV3ZrU9H02ba9iKwuLU=;
 b=ImX82AHo7s7iaPCTvVk9Cn8HwV/EhjKq3l5zVtJoxaRVPevlx/0RgaQS
 GIuRV2vihfIpHe28fBb/1r+tJ3wvFGLwIxzCxGg6L1cVAl/ku4txYcrqM
 RVCjZKpdmI8SxazPRUraIUyKe9FzkaUMdeC1tt0GJQEvB4sd8NBLzHpeE
 VWEhDo92rwQ/i0T9VPYJf0ldDpaD6IGzO0VM/dfj+qnsmyR3bQHgHGLbN
 NIH8eXtf/1HMire8NvKG4UyaznKuL0t2PLq6tHHZJdB6ddza8KarqT964
 sHkNOAMXCEwToDX8Hy1FQhGwdHYrO5RfsEYn+S7deBQWz7lA9R5BpUCz5
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ImX82AHo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix offloads support
 for encapsulated packets
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
> Madhu Chittim
> Sent: Wednesday, April 2, 2025 2:10 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: fix offloads support for
> encapsulated packets
>=20
> Split offloads into csum, tso and other offloads so that tunneled packets=
 do
> not by default have all the offloads enabled.
>=20
> Stateless offloads for encapsulated packets are not yet supported in
> firmware/software but in the driver we were setting the features same as =
non
> encapsulated features.
>=20
> Fixed naming to clarify CSUM bits are being checked for Tx.
>=20
> Inherit netdev features to VLAN interfaces as well.
>=20
> Fixes: 0fe45467a104 ("idpf: add create vport and netdev configuration")
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> ---
> 2.45.0

Tested-by: Samuel Salin <Samuel.salin@intel.com>
