Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B678ACAF7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Apr 2024 12:42:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E996440AA5;
	Mon, 22 Apr 2024 10:41:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VkReUDhNI77U; Mon, 22 Apr 2024 10:41:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB85740A45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713782515;
	bh=868A9WnCuopzx9BKTkvQz4zByJfTm/TtA/udjDDzR9U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PL8TW/ABrKV52gvPhr/1GLJQ/v7lZa1s9zr8x8dTEKELZvKdNEDDk0Va9E2mV7e37
	 m9JaC8FuZ+R1SSVxvpcjGMfQe3ak1cFjTCPpMwjvCYhvq65JsFcdwdohZpVKA/3Cb6
	 ppr435lQ9jdlaeWimsOFvaB3tbu8iGh8zfYZOwR7INAC+waVsT63prR9RHln4zxWNf
	 w5QDtFuWu2Q7vL31hRuOP38VTEd9zbyg30qSRzFp7H0YTjVJWjJmXgxXENIXwpAjnn
	 cD43SwK8EQL8Xp2koSXWsUIL/uG9FKWSoc4GSebMsjyy7XOO/oWfGizkescgHCp6Al
	 jq/HwzfU0QDyA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DB85740A45;
	Mon, 22 Apr 2024 10:41:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 159621BF337
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 10:41:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 01097606F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 10:41:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YsNWyiEprOBD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Apr 2024 10:41:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9B1DF605CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B1DF605CD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9B1DF605CD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 10:41:51 +0000 (UTC)
X-CSE-ConnectionGUID: bh0+HK3zTiuHRDWb0dKD5A==
X-CSE-MsgGUID: YRd0lDIFRPGjc/0cEZKkYA==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="13088412"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="13088412"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 03:41:51 -0700
X-CSE-ConnectionGUID: 6BBWMZ6TQkaemj/XLp2Q+g==
X-CSE-MsgGUID: zVA6GXQISCOZOwXkFrgWdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="24046020"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Apr 2024 03:41:50 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 03:41:50 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 03:41:49 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Apr 2024 03:41:49 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Apr 2024 03:41:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LTHxu4gh+YC3KQLqQyig11oG6UUmSNdCb8nOnbblZJiqGk2kG0Qbhq4pqjUJRQ01aUKdgyM0F1YEXTOnMtvOmxZUrtl+eFvKOjnc1U56fXk6aUPAQpgQoEWNTrDG0xWMPgNKhuVyBhrO33t6zU2fj5OF0n+naRQTUDBk5fqSQoIGZAtXTYAo7QN3uHhsgiP/+VR2CBbr7zDRAknBuFnXsLB9BnTitd0oFB64+tH17Vejw4JZyXJPDn4k3K8dUv6m1AJ5LpBQWtLfkbP9fj2Hipd8xfUAYld95b/tcd9FHo0dWgxLJDKZJTsd0509+sB0SKbvOt30peIeBXpf/LoYPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=868A9WnCuopzx9BKTkvQz4zByJfTm/TtA/udjDDzR9U=;
 b=io4dO37WxLolLGVqH+Oh1m/j3tC6GyLknr42uqmtHg+xXA9C4X5hfYtY4VCghEW+Ej9X7LmMl1zVTMIfayXXgCixza6uRjSW9L4rJ32mjGbHykrMfw1rDb4idDg002nd40ySkimO3ekVhMB2eg0tF4MoPwuP76AyaqN1dKDhTflu+TIPg9tuE1VQ1wrMPDIFqM6c7GEuUZBZfneLW4vf4fSTCsuaqpOpIGX4eDGJFaEJJF0rvKVInnnloJG6eBpHZfyOm9leSD48ubZ0wMj7Gp5hH/qBwBrsKzIKLvbELU7PjZR+vzm2pw/XO3jj6mV+cvRXqEPGkC31UPDKO8OH+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4610.namprd11.prod.outlook.com (2603:10b6:5:2ab::19)
 by CH3PR11MB7896.namprd11.prod.outlook.com (2603:10b6:610:131::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.20; Mon, 22 Apr
 2024 10:41:47 +0000
Received: from DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::e51:4d65:a54a:60fd]) by DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::e51:4d65:a54a:60fd%6]) with mapi id 15.20.7519.018; Mon, 22 Apr 2024
 10:41:47 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: Simon Horman <horms@kernel.org>
Thread-Topic: [PATCH iwl-next v2 2/5] ixgbe: Add support for E610 device
 capabilities detection
Thread-Index: AQHajx5QgnEvrJXB+kOnCO+IqFvRXrFxgAkAgAKkWJA=
Date: Mon, 22 Apr 2024 10:41:47 +0000
Message-ID: <DM6PR11MB461069F903C65507AB64228BF3122@DM6PR11MB4610.namprd11.prod.outlook.com>
References: <20240415103435.6674-1-piotr.kwapulinski@intel.com>
 <20240415103435.6674-3-piotr.kwapulinski@intel.com>
 <20240420181826.GA42092@kernel.org>
In-Reply-To: <20240420181826.GA42092@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4610:EE_|CH3PR11MB7896:EE_
x-ms-office365-filtering-correlation-id: 26909a83-0d4a-4c3c-052c-08dc62b8cf5d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?22qMxlYL93VUZhJrDvQEPlsVwPd9kH9H3npgr8q8j5GR+Y3BksV7uJlWX1GW?=
 =?us-ascii?Q?h2DO/Avs5dO5CPSlCnvOKXpNWF/ka2iQT0lywLsho6HlufYRP+0SfiCRvvUz?=
 =?us-ascii?Q?f2i+WldTsgYVxIk5lMiiAn56Vl2ruauyIPEqM6r4ak7Wkivz6+iJk/OcoVIf?=
 =?us-ascii?Q?dnsfbo0P+v0GqSpEX4Na++zvieA+/5hPmphklbkFWZuEUeiAvqCbPzJ/1G9Y?=
 =?us-ascii?Q?UG46rE4D72Xv9IfTEi7TVvO2a0NXIoiswla6qE3CvJK68WGiD/GU4du8uF/r?=
 =?us-ascii?Q?oQ6/R+QMrdVB45dbkMv5k5udyBaNV8ybR3w7FXKufuOzfSvfMFpR9dM+qnPF?=
 =?us-ascii?Q?PUaPL1Ye+MgwcxkGY1R4JBWUNn195H0O+wttuYaq0PJ5OQ/GRz0jfjra0Nwi?=
 =?us-ascii?Q?r3OWl3tcIhRiJKg65C+qSklUyiaWDcut+OgcfOU0TQsYtEM2ReygCPW1oVhp?=
 =?us-ascii?Q?4WIBvvI5ydePt8KI8Wmtts1JZOKG/1ZwCzYGreJheeswUHHMGKWH3tQikLYu?=
 =?us-ascii?Q?r4APE+wVJ3pV5Qlz++LYfyRg12TmoyzG+rCbtFKQfRtVJ9oUt/iAkpnE1ZDA?=
 =?us-ascii?Q?Bgl4jPRL+lY3n5AjzKcbdFsdaZ81Reg4AV0vWOPFkylqD7PFAV3JulrSNvqf?=
 =?us-ascii?Q?I/2IX1EoHmdwh7L01QsIRxgAI1IPa5dGF3iIRk0BjRBcuNlAIAjissMb3Zib?=
 =?us-ascii?Q?aWeE70yL9Hl0OMiyFUXwNiEm2dRgMpeSf+enR5ScudHpWI49Lmk2vkDBuweZ?=
 =?us-ascii?Q?qjuqxfIilGL8D49hnTh2n/lJoNdAbDekfGX4VnJ/RtWNNlRbdhSzFQDr7a7m?=
 =?us-ascii?Q?KF/KGOjhURr+SwLA9ZpFPdQFxnF3fDCwhJlXP50TkoATRvwZdBo0uOKk1EG7?=
 =?us-ascii?Q?OxxMZNUL9mfNmUx8fHBLX4X+Pjm54ZwgPE6/kC5JTcuR8D4Ft14BxASY3WuO?=
 =?us-ascii?Q?MXijVtHqGOrg/S/kcM4ZLAye3k68zrr1n3N1yITLJ04VQL7Z1G+kJvLFaP3B?=
 =?us-ascii?Q?mMV+uuhQ7vGlrLUc22L7OvEhOSqmIrqHMQzYgxWqxzPetr9AF/Qs+GpRltPA?=
 =?us-ascii?Q?X35OU7cJBoNY/SW6VLkblbgI5RBtNVbn4J7/I3oACDvYxttmV1in6rm/hCIa?=
 =?us-ascii?Q?jElnWedZD8NEH4cQjcF7BFauT5JwyvStIOSh0lLy0pU8rqVENjtufHCncUec?=
 =?us-ascii?Q?nyTAlPVX/bHA3FvMamo7jX4n+l3pzTg2w5BjB2MO6EmJcRt4OrKyXUM8fwcT?=
 =?us-ascii?Q?ocUPiItfg1NP6mwGbEYQnnyGacFcNPDMUKkLaw3OpsLrqiXm8Btj4lt5g8F7?=
 =?us-ascii?Q?zOPr87z4GM46Vyv1LSv9XHydT6N257wwaADfVsr5A516RQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4610.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xO+Z7uOKE9wX/V7VyVceK5ZU0mtSMK6nN1nniA3FyGpBy1OBCQV6h716QDTZ?=
 =?us-ascii?Q?PEBx5ZJpxEDwUM27Z1olNIDecuh8OfDYDNOp8hiNiXfSsfjugbZUDX9K07z2?=
 =?us-ascii?Q?MzTDn19MBrsluitt8SjgTIY+kU+/Ysc6DtdC74C2vi0dZgK8gXexdbsI1B1E?=
 =?us-ascii?Q?RlANgCw/WVrVL3K4lK0S8tIIy3nphEZMdnmb/jueSpqpnOC9KABNfb1A95zD?=
 =?us-ascii?Q?xwD4qxyC+1q16nL58H/TurZBpHs2gxHI1OS2EuXhOQNMArBf+7Yz/U6Pf6Ep?=
 =?us-ascii?Q?w7sOHSoZuztouiDQdqgUlU0JfU+ozDOx+jkRPdCtXUp83i9eSaB0lLm8uGNQ?=
 =?us-ascii?Q?/S428qJ46LsllxMhMw4yZ5QoCCM1kZTzGTP3e0XEQhCMcyqOtMGa+TfB1SZE?=
 =?us-ascii?Q?+JaCTaS9Dcq64EJE5HhIZK3eWkCb+wrPNKIZeRyYMBshkFOE9t8PsIhAsSYJ?=
 =?us-ascii?Q?ZB8PfU+9uCzWBIWwb4zGewF/uWzywVFFcNL+yl9wH4YhbTiWQxad3h35hJit?=
 =?us-ascii?Q?LaTPmyK1H5bTIfvRUoFvc0vr/RKZ3Bkt4rN5zK1dxu0oL0nCBvywvllCA+oz?=
 =?us-ascii?Q?f9cm+drG/zhXhvdyIEFWgFhLu6xUJk/15zSGRz36rVUKd6Kk3lxYnZLUTuAw?=
 =?us-ascii?Q?QD67ADgmtFuqXnOKkw0fM0xrnPSVpNAjksDFqODtrzIlmfJkBmPQfozpSvF0?=
 =?us-ascii?Q?RlQrhJ0gxTMLrIg2DpwWxJGUZYfxi6juq5Bn560GVM7aOEr8V09yd+cw8TzB?=
 =?us-ascii?Q?WqKQo2fXj9AU3zmpa86R4DvmDkcLSB5FNDQ7Qcs3oS0LUPoAjbzx8MoW/OqT?=
 =?us-ascii?Q?N24p20jLTHbcS6C/GhVk4WScRj1NwkYTT1cBVnTY6bcGc9yUTXoydA7WGAp5?=
 =?us-ascii?Q?9+0E7HWssvEJQbMGE/1muYTLkMogZ8hWEO5uZ4DkKqfOp12M+YmCfU/UZ8Z5?=
 =?us-ascii?Q?VCZzOPgmWYoo9mixCEeDkxoZrCwTlTLQTV32rJbUkH9gaNLBLqXLYEeNBXam?=
 =?us-ascii?Q?EHKJvnQbqigTCUbuZuV/XkP6hJLN2BtxIaWwpjQXst0DsUI71+OsNreosBy0?=
 =?us-ascii?Q?nKp2cwmadQTyVnNzghdoJf7OnFxDr2kdU6WFVApTO4mW+dAwjA1skIxLwcGU?=
 =?us-ascii?Q?JWnZMdXmz55Mn+Hczl68ft6SZiHldEVyjqyfSMLWt1Je3ZpyK5nfpR1iAVy2?=
 =?us-ascii?Q?fH7/OZvEiOIPyiWx0fATH638LPZikCGSWlhbYyMxZI4/DKcTz/8VhBYDVSMb?=
 =?us-ascii?Q?ddYuSJNa6/CTkqY+SUXH+UobPzrCyD+UtiyOFCuZECvN2JJwVdxPFqa0bcUw?=
 =?us-ascii?Q?3jUrbKrisbmzJ6rvZ08wgLBVdLStdAvdg1ggn1WAZdLOYz8KKqtsz/SRvgSV?=
 =?us-ascii?Q?c+T3DurPFPu0wke4ygYehIJ0wmqnQK0f5xbrOR+/0DpPWg+j1NYFVQXOV0UX?=
 =?us-ascii?Q?jbgGHEuBy+CrUT82oQvMTQMHr4Ucy0UNLMjSGkG+LhgqJkVMBjpQiFHxyUuH?=
 =?us-ascii?Q?V78gzgOsrAAi7+OPSruA0v5/KXhR1r7fL1eGi11CVeiCgjlLpkAqqPXIIwfM?=
 =?us-ascii?Q?gxLI2TsuVAHY6U/zuj9SVrqkmQUij++EtSjzjBaw?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4610.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26909a83-0d4a-4c3c-052c-08dc62b8cf5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2024 10:41:47.1788 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0I6iotwFj9FktMZinWBmGF9gxjY2Ft6FWKopB1wk3YctM6Lx7c+VxtrwMwNyfSH1s5Y4E0osm4Z2yWrcBxATTrnDTBanYABbRVBmijPkzTY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7896
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713782512; x=1745318512;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=I3UDBMINwPQlo+ErpzMLomCNwk/4XZRsLybaOEUX00Q=;
 b=eHw1rNm3HyyTKrZ0HsaTk320DEWsx7r+DRebJwpMrp62AYaplckZbaRT
 M2MN+xsf8pWQLhBQbS6i0niNqtZVZ/owFixN8eZxRwaXOmrmxG9juY7mY
 baBD87e0Lww1jthL7X5nBtXMoLKnMNjycMCuDKckr6LikfcTC2VfkU/+r
 fAYDrj8cyp/ISrPBbB12lfdiHp22O8ULldJnHLHvrKe5ZtiDUH9CJfaGv
 MDZgJu/dRUh3KgTK+0k8GMTXB7cJdOXHeqSzx48d+r62ESWA4qCv+v3aM
 sNQ4L0bNhhP+xZhymreyJT9CBNOOI+gYOlPi/kIKk/gv95XOIjc78BfRS
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eHw1rNm3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/5] ixgbe: Add support
 for E610 device capabilities detection
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
Cc: "Sokolowski, Jan" <jan.sokolowski@intel.com>, "Gomes,
 Vinicius" <vinicius.gomes@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>, "Wegrzyn,
 Stefan" <stefan.wegrzyn@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Simon Horman <horms@kernel.org>=20
>Sent: Saturday, April 20, 2024 8:18 PM
>To: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
>Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Gomes, Vinic=
ius <vinicius.gomes@intel.com>; Wegrzyn, Stefan <stefan.wegrzyn@intel.com>;=
 Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Sokolowski, Jan <jan.sok=
olowski@intel.com>
>Subject: Re: [PATCH iwl-next v2 2/5] ixgbe: Add support for E610 device ca=
pabilities detection
>
>On Mon, Apr 15, 2024 at 12:34:32PM +0200, Piotr Kwapulinski wrote:
>> Add low level support for E610 device capabilities detection. The=20
>> capabilities are discovered via the Admin Command Interface. Discover=20
>> the following capabilities:
>> - function caps: vmdq, dcb, rss, rx/tx qs, msix, nvm, orom, reset
>> - device caps: vsi, fdir, 1588
>> - phy caps
>>=20
>> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
>> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
>> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>> Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
>> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
>
>Hi Pitor,
>
>A few minor nits from my side.
>No need to respin just because of these.
>
>> ---
>>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 517=20
>> ++++++++++++++++++  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h | =20
>> 11 +
>>  2 files changed, 528 insertions(+)
>>=20
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c=20
>> b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>
>...
>
>> +/**
>> + * ixgbe_get_num_per_func - determine number of resources per PF
>> + * @hw: pointer to the HW structure
>> + * @max: value to be evenly split between each PF
>> + *
>> + * Determine the number of valid functions by going through the=20
>> +bitmap returned
>> + * from parsing capabilities and use this to calculate the number of=20
>> +resources
>> + * per PF based on the max value passed in.
>> + *
>> + * Return: the number of resources per PF or 0, if no PH are available.
>> + */
>> +static u32 ixgbe_get_num_per_func(struct ixgbe_hw *hw, u32 max) {
>> +	const u32 IXGBE_CAPS_VALID_FUNCS_M =3D 0xFF;
>
>nit: Maybe this could simply be a #define?
Hello,
will do

>
>> +	u8 funcs =3D hweight8(hw->dev_caps.common_cap.valid_functions &
>> +			    IXGBE_CAPS_VALID_FUNCS_M);
>
>nit: Please consider using reverse xmas tree order - longest line to short=
est -
>     for local variables in new Networking code
Will do

>
>> +
>> +	return funcs ? (max / funcs) : 0;
>> +}
>
>...
>
>> +/**
>> + * ixgbe_aci_disable_rxen - disable RX
>> + * @hw: pointer to the HW struct
>> + *
>> + * Request a safe disable of Receive Enable using ACI command (0x000C).
>> + *
>> + * Return: the exit code of the operation.
>> + */
>> +int ixgbe_aci_disable_rxen(struct ixgbe_hw *hw) {
>> +	struct ixgbe_aci_cmd_disable_rxen *cmd;
>> +	struct ixgbe_aci_desc desc;
>> +
>> +	cmd =3D &desc.params.disable_rxen;
>> +
>> +	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_disable_rxen);
>> +
>> +	cmd->lport_num =3D (u8)hw->bus.func;
>
>nit: This cast seems unnecessary.
>     AFAICT the type of hw->bus.func is u8.
Will do

>
>> +
>> +	return ixgbe_aci_send_cmd(hw, &desc, NULL, 0); }
>
>...
Thank you for review
Piotr
