Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B96F2A82567
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Apr 2025 14:56:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 646578339C;
	Wed,  9 Apr 2025 12:56:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cbXhWpTkBRs0; Wed,  9 Apr 2025 12:56:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9BC780ACE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744203384;
	bh=tP322QtpNWVtZ8oDaDfiCulPOD567erHGDc9omsITjk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QKsqpzyAft6jNgTqqeQnK7YpUHVhXpkrYAxWhchfVhMINK1Ai3/wqsxYDQ3DUjgNL
	 NAGCQzPyFQXyupwO5kPwQ2zijlVzcDRuPzMsVN3nVFoJCvurEsapXU4AKgwLBsWHa2
	 cIVn+aXYCSItmGhyENRmzzCyksfKZzyCcKW/kDEXCbBz424OvP9AxscHEoyUU2PEgH
	 +K0lb/JI0yasxj5QurEnSPJinmGhSFka2aZVANTHYmO8Ft+hTS9osbHnd9DJZI1lrt
	 SZwmC8N4pLmdXqGiuyjmDUNMfS7JP/2K1dZDM3yv5hp68dN3vHKAF9OHj39oLXYzJg
	 dYeOeg2GMG1ow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C9BC780ACE;
	Wed,  9 Apr 2025 12:56:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 769E4108
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:56:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 606EC40589
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:56:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XbwrvP6EfA4z for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Apr 2025 12:56:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 74ABF40ADB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 74ABF40ADB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 74ABF40ADB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:56:21 +0000 (UTC)
X-CSE-ConnectionGUID: y489vsKNTzmd+Dyyv3V3Mg==
X-CSE-MsgGUID: auo0o8HTQyaPnEYpqqPI2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45688803"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="45688803"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 05:56:02 -0700
X-CSE-ConnectionGUID: D1GlX/jARa+RL667FyIGlA==
X-CSE-MsgGUID: LffeP6oNQb+P/JxMLVi8BA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="133788228"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 05:56:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 9 Apr 2025 05:56:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 9 Apr 2025 05:56:01 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 9 Apr 2025 05:56:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w1cZW4YTGUj/bDy1O/C6Oupi+xUYfg7JO6tZ7v0OlgieFCKjj5FId+ouUOZ/0bQLl7PgSCD3zIbJh23NmChR4o3vu5+amNZF2fjBbOBX/xPPhqFlKXgLeYex+uyNNx/P45k5sXIgKVFIGwfcpvcK7VcFAqLTFqXgFzuuX1n7v2hblMs3bxvuaDgr/EXS74dnOQhEDakmcBdT6HAyeZc9k5QzJQ4vkoZ6dK5SMfMVAwQH99aEfnrQUYK4MtHamqlj9w/5+0S4Gk3V71Xrt11JQizKKDlCmyZ6AHq1lf9qAzDYK44p3FB49RYJwniMYCvn9JzwXbj0Fov5V8YBbTK6SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tP322QtpNWVtZ8oDaDfiCulPOD567erHGDc9omsITjk=;
 b=aKoAdTvVhVz/aeAW6MZZ5v6R0oAR1W8J4SX4BMKYgScvvAfVMZ77cD6hND6CbrIjds6nY1+wunUqrk0MgG82Q4fBCwg6fNSF34jwUERYTBjH/832MT7FgBAs2DHXLQB4/oeCOIbOsjBoOgJHDmnaX3CuVne6r0lJZYTiVoVQnyU8ysv2EPgwwUlfcuVWna42MM/hiaGAWgVnU0v4qFvUqGvJ6s+qMwJ3AN/31HprMdrjgKunN8Ik3Mmuv5V+sxlDn8h+s3D4cKP3JY8zf3XRC6PkJO+r8iB42U4D6DzX5x1zqP5/tR+qBzkyigqR4+JBXhhHl2CnrWOgJdwrgUFv+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5889.namprd11.prod.outlook.com (2603:10b6:303:168::10)
 by CY5PR11MB6163.namprd11.prod.outlook.com (2603:10b6:930:28::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.36; Wed, 9 Apr
 2025 12:55:58 +0000
Received: from MW4PR11MB5889.namprd11.prod.outlook.com
 ([fe80::89d6:5ccc:1dcc:3073]) by MW4PR11MB5889.namprd11.prod.outlook.com
 ([fe80::89d6:5ccc:1dcc:3073%3]) with mapi id 15.20.8632.017; Wed, 9 Apr 2025
 12:55:58 +0000
From: "Olech, Milena" <milena.olech@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Willem de Bruijn <willemb@google.com>, "Mina
 Almasry" <almasrymina@google.com>, "Salin, Samuel" <samuel.salin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v10 iwl-next 05/11] idpf: negotiate PTP
 capabilities and get PTP clock
Thread-Index: AQHbqHMGVy06SOBcdUKcRiBP1lgo17OaRcWAgAEBF8A=
Date: Wed, 9 Apr 2025 12:55:58 +0000
Message-ID: <MW4PR11MB588927730666406EEDA9B5A58EB42@MW4PR11MB5889.namprd11.prod.outlook.com>
References: <20250408103240.30287-2-milena.olech@intel.com>
 <20250408103240.30287-13-milena.olech@intel.com>
 <fd2098e1-c5c5-4cf8-b34e-ebe0bd288248@intel.com>
In-Reply-To: <fd2098e1-c5c5-4cf8-b34e-ebe0bd288248@intel.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5889:EE_|CY5PR11MB6163:EE_
x-ms-office365-filtering-correlation-id: ae19db89-2276-4796-fd97-08dd7765dfcb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?qGUhzW1L94bdLm7xiz/jn1cpXRj87/7iTV92kkjVHvAYTeSqEtf77IqiXLMD?=
 =?us-ascii?Q?kLPer783zJ13YlRN+D/v2EjSk0LOPuXCOs18esoqc3PNmsjDlGv5AoLxUsKW?=
 =?us-ascii?Q?7AlUn8eFKoC8GvnyqYZOHawl4pSDSWeu72a1v19j4LLofQUfdNa/OvuCxtoF?=
 =?us-ascii?Q?iCxSC0cmp4qqkh9SsMxcpyyFnn6hG75AUi2o81qnqETrVYw6tA0qbXM18Hum?=
 =?us-ascii?Q?xI2o500IW9dEyHX3MhF1Br2mTuqmPPiS3COBGrlbRAIZFgCpjcYQmuSZoOWX?=
 =?us-ascii?Q?2501y7HYiLxxy4SectgLZz+6vxiWhRlcpdhPlNAH2XOf5oCvFq6VksTC6uib?=
 =?us-ascii?Q?FNG9JAVVOsm+lO5pjc6dg5KlxK6yoXRx+D7ncWAxOW/xhRoKwfXpOLV3Z9dw?=
 =?us-ascii?Q?L69B1u6PA+EYh++1mHnX4PBuPHHxwk6IuzwFB9Znrtm929vvZn41g462P1MQ?=
 =?us-ascii?Q?XRaQJUNdqTrPTJnkDBqWyRP/GyaFXvdM9iik7H1ZSSSJJL741QKDHmyzVkEL?=
 =?us-ascii?Q?wb0H14VbV9sRytPxc/zOk9I1TgYpHZN+FK+nZ1Nd82w5gYSr2LAbCuV6+Sdx?=
 =?us-ascii?Q?nzMJu9OMom2uUm/2O1nTZyymhSQPezikNbLYj1bipbfTNovStO133Yf21O8m?=
 =?us-ascii?Q?d34B3wR8RmrDWNTHQdUC0+l8En1VE6G/T0u39fjO03OhgNU2P/gfp1+cEFGK?=
 =?us-ascii?Q?O1npfYfgd4MvwE57LLF5HU7CdXJDzgnb1u1Ins9YkeEUSjqzyptmavT0jBBJ?=
 =?us-ascii?Q?CIPgknVEf1mhPJIGS6BByawKNNh5GMn7p9zjAJzRFhaSydvSxDHMy1kDEiEr?=
 =?us-ascii?Q?7SMPquumlxQdrlvBil5wfqDneD4qJClelCi2UrMU2KircCG6X54XaYPfLYHc?=
 =?us-ascii?Q?ckWyOT3lfZ0ZktHx7nHrieilyXJqOP9nCNKTmTvG1i7Z7JpDwzgyrVtAVS1n?=
 =?us-ascii?Q?YSE3t5NSeFi5i2xJyK1bATnnuFY8GjQoPnlDSB20bn+D3Ddl5IO9WKmuhLmo?=
 =?us-ascii?Q?SsBkdkOplAX+xOA0oudxH4oJTke7uSQlO7IkOUj3jLKyxvPWNLMvK9/qBIO9?=
 =?us-ascii?Q?PP7gw8tBPw9Lf+m5JoBrN5eQumOPwGiuHfBRcZoL54eI2LGLR7rMWpv+zaFU?=
 =?us-ascii?Q?M8kb7HwPhBV4kp9MzAlxMf6oWGv/THBTU/3gLDbI0saGKeJKHpKccP7Z4d8z?=
 =?us-ascii?Q?vvDvwGSlL+NVAQjEYlvEo5P2Wi0B/CyobEMy8tIjP+Ko5gMVE3ECzx2UMqVS?=
 =?us-ascii?Q?Eo00z+AOXmGsE3+zsnZ3on6OzBTqEE0kBzh0irtBw3rbiWxgw8+tqxVvUf0K?=
 =?us-ascii?Q?2IyHZhkzGEFaBPwqhG7uIAayhQ+O6B4A/L/rG/fhm/qI5Fj8ecYBg1g2alzd?=
 =?us-ascii?Q?ziNfdqsDsymXA0W/930yNqE4T3glqiJF8+1ZgDfSyyHUTZUHVyepnpo7hGHq?=
 =?us-ascii?Q?h59y2bv0r+pToB5OtX0NKXZ2YS3GrBru?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5889.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rvjSnE2wVzjxY2nIMVC4uXeseJZpVWZrtkOSyh6b5hKFUbADyG5cgLF3Z1Xv?=
 =?us-ascii?Q?UMnwE/vG+5bgcl73WEQEB0RCADLco1UKt4twpL5Oli+oRUBwhEWI4DJthfmR?=
 =?us-ascii?Q?2DRMAtE8AWCfznqF5g7616+0ffxr4IWzvpjGIGIj9GK7WQZl2NysbnmGh9Wr?=
 =?us-ascii?Q?ZT/IkrxxJwYWfyeQAy+buU58p7BV/hIeGdoYVpKhN3vf4adE1FXAE6Xb3kBO?=
 =?us-ascii?Q?MGp8xqMZE1gG2mDkWl0Yl0zoGnosSAsowYpiLrnXspijnJRocQ4FkJBAs2/e?=
 =?us-ascii?Q?hec1yQiwxgVVMPWeVJXfZ0ZUlLF7kCRiuvPNXU7FdDQsnaMkDPbAJUOgmFUJ?=
 =?us-ascii?Q?khxTgR4K7mtujVm07JxqhjImeJwhT3DpbMufmUcU79dh0GeH6IGGwY8P4j0q?=
 =?us-ascii?Q?5JgmNhveW/IMqNMZKflJxhOiI8pcQi+c2XZ/VRUvlFBkGwjI+J7qRmZMH6FX?=
 =?us-ascii?Q?YmOo7W9v6/nQnCsBOfwNv0jwTYOfOPX9ZxQEUz8EXguznN5pfH4auhud0Fkk?=
 =?us-ascii?Q?C/HMSBwZ7uwM2eL1QhZuzPcyxuTBGMCvEnebTasJhexDktWcPt5fSqo0XWza?=
 =?us-ascii?Q?5gZpXUNqJABZp09vnHD+wEadSeifyZgUFA/H9N2dMS6VkhYmbFZEKCFtAvpq?=
 =?us-ascii?Q?OTnLY2JAcjXlF2KDoMCI3EYd8QGA7UYVDtBNCfK1S7GNYoLCV7WTuK/Cu2/W?=
 =?us-ascii?Q?ZbPEZg2USxv9AWVvwg6I5/wU334QqMMv/YXLX69eez14Je1+IkfUKhq0pLmA?=
 =?us-ascii?Q?kmVENOSeDPcIIPY2SjaE3flwmBBwpL3YKl9e+MH+WyZokISd53/69DESALON?=
 =?us-ascii?Q?oYGQn+LHWdgI2aw5YEkYqdpUcdqbAAuTnD6rlSmtiRPRvUaJUmVX9U5OlX08?=
 =?us-ascii?Q?2U86zigBUjWucsusLUYMX93c/o5yv1Nd6q5wXgWu1QVTdUASkoLdwVuLByTi?=
 =?us-ascii?Q?pJ3MgRRreLu5bsItVYnu+5qmyc34n7gGZTwruT/nJ3G5Jx50ZlNj5ntmIs1T?=
 =?us-ascii?Q?JFJmGmCjf3+AUjVgSwMu7g3zCVELUmNKj4CHxBsefHevHTROtbp43bpv4vKe?=
 =?us-ascii?Q?+V/ZFRuE5UqXId3NNCqniago9o0EdCnrocwyrRnB0iQVfttdF5PyCRQ6Q9oB?=
 =?us-ascii?Q?ZEX1sqgcYLtnfla7RnzerC6FrAqfnhM97A1/jcnfxj6yUOc+pE5ii/4SXUpD?=
 =?us-ascii?Q?DLxeAesr2HVhzNq/BbU7CVpX1s9F1CLcgn44xadBB+Eye7xTaRfAN/rHqbel?=
 =?us-ascii?Q?4nJOsnZPc6ecv/hagdIIYgAjSAJ2pTmFcc2pAosA3jlbzcijvSMeiiWhCWzO?=
 =?us-ascii?Q?mLZ7Rfk4aUvUHcaj2vImKoGfCjSPPSbkdz6TK+OUM57YxnRZpobH0cNHfWm0?=
 =?us-ascii?Q?KZvyrxD2HV2LCMWX/PimLVC/fQERUmx7Jd3ABHL2I5mPuZCYRkFl8/iqNVR7?=
 =?us-ascii?Q?ck+jO5FsYoG61VFebSWH0tqFB35NopFUuvGKsKJprykiv2fAOR8GI5rMNfnh?=
 =?us-ascii?Q?4wkjdPH4Hjhi69lPDfVBDxonXhawZ95g2qjNggqH2Te6NbtAkMkwJJ8i3Pd1?=
 =?us-ascii?Q?D7hU4UEcuhi+A4TemxDCigxFfNwVeT20nJL5D8+F?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5889.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae19db89-2276-4796-fd97-08dd7765dfcb
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2025 12:55:58.6366 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6FJhwFfmnz9xHF7lh251LCWyU/b1M8doV9whlmFBh54V1gR8qLjgglOobZVdXt6Mfr+fGmG2k88Dv8AZDyIvmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6163
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744203381; x=1775739381;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+SO5PypOzvfu4OzSZ3H8qkRuKm/cXwu+lJfLmp6mHcQ=;
 b=ItSssF9IPmcKJb6851kvlm/r6ag0o9b8X/9e1OyrmVbmt8H1bya7SgUA
 Cs1P+kC2NuyFDH9VNtgQI779g7ieby1quWX0HE55DbrF4x5iQdX2sJSc3
 1Fa2qbrgltpSdPmO7dPdAa5K8chmW/NWHZv/nIhp0m7OTnm+x4LMhvcr9
 AtWMqGeptrGaZFfev8fF/2Rp6XTVUifa2/L5y/OmQ5lTH9acKNihmA5CT
 rQ9B2Re4P+uf70jkNOnO8k0YgJnot59r3TnLEx9KeZYsG7qPA8/E5xsTt
 nRktRzPeeSygk0/+thvO60Pp1QYAenzsX/MNP97oa+Y0W9ZMMwdbGkRUt
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ItSssF9I
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 05/11] idpf: negotiate
 PTP capabilities and get PTP clock
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

On 4/8/2025 11:15 PM, Jacob Keller wrote:

>On 4/8/2025 3:30 AM, Milena Olech wrote:
>> +static u64 idpf_ptp_read_src_clk_reg_direct(struct idpf_adapter *adapte=
r,
>> +					    struct ptp_system_timestamp *sts)
>> +{
>> +	struct idpf_ptp *ptp =3D adapter->ptp;
>> +	u32 hi, lo;
>> +
>> +	spin_lock(&ptp->read_dev_clk_lock);
>> +
>> +	/* Read the system timestamp pre PHC read */
>> +	ptp_read_system_prets(sts);
>> +
>> +	idpf_ptp_enable_shtime(adapter);
>> +
>> +	/* Read the system timestamp post PHC read */
>> +	ptp_read_system_postts(sts);
>> +
>> +	lo =3D readl(ptp->dev_clk_regs.dev_clk_ns_l);
>> +	hi =3D readl(ptp->dev_clk_regs.dev_clk_ns_h);
>> +
>> +	spin_unlock(&ptp->read_dev_clk_lock);
>> +
>> +	return ((u64)hi << 32) | lo;
>> +}
>v9 had comments regarding the latching of the registers for direct
>access. Can you confirm whether this is known to be safe, or if you need
>to implement a 3-part read like we do in ice and other hardware? Even
>with a spinlock there could be issues with rollover in the hardware I thin=
k?
>

So in this model we have shadow registers and we trigger HW - by writes
executed in idpf_ptp_enable_shtime - to latch the value. I've made some
experiments, where I removed this function call, and values in hi/lo
registers are constantly the same.

In other words, it is safe to read values from hi/lo registers until
the next latch.

To my best knowledge, ice does not have any HW support, that's why all
these actions are required.

Milena

>Thanks,
>Jake
>
