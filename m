Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 90040969E6E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2024 14:54:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A981B40267;
	Tue,  3 Sep 2024 12:54:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eq4vqOzVRQbo; Tue,  3 Sep 2024 12:54:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F1B84024E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725368068;
	bh=tpuVpiwC94a+qwEZdoD/EN0lt6Uky7Yi0rIAzg74xr0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fSRueBM7eGG93gzMG1SEKQxqKQ56g/ctCbsndRjmfGOscyF5l0vs3O8RMpytuC7Og
	 B02hV09ptFGWTJ0CAxlMVcqSOcXafuQHjWqNGXLJfMdZVzQUzvR52I7ClgfmSfAPU3
	 EXaIzoCMXOc30zAzOY8FHCwKwmu8VPLvkZ3BQfhctXAVOGXZB8r8PBLrS2uDY1AkF6
	 6STC6XtbjrQcwMxacq5rKoM9MFDiRdVyOYwk/bHq8shyVTujGDQK9YBiSdtmlUAJEE
	 PoCnwTi3RLH/RxNZcSNpiAFMDRLcJkM9LURsLLFQQ2Zr+CC8VN2MOfnO4w/EmaXhAy
	 qjmhANVQTIFvg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F1B84024E;
	Tue,  3 Sep 2024 12:54:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3D8121BF589
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 12:54:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 281EF810DE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 12:54:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pMG7HU-wRUlu for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Sep 2024 12:54:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=george.kuruvinakunnel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0677D810C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0677D810C5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0677D810C5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 12:54:24 +0000 (UTC)
X-CSE-ConnectionGUID: rTd3HGI7RY6Sf9R3P6zkIA==
X-CSE-MsgGUID: PAmU1MjLRcOcrocCfteqbA==
X-IronPort-AV: E=McAfee;i="6700,10204,11183"; a="24103278"
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="24103278"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 05:54:24 -0700
X-CSE-ConnectionGUID: gbB1itXxSHC1fPRLj0M3PA==
X-CSE-MsgGUID: CeCrPrhATh2hcfXzYJ4B/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="95624445"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Sep 2024 05:54:24 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Sep 2024 05:54:23 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Sep 2024 05:54:22 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Sep 2024 05:54:22 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Sep 2024 05:54:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ECOstqhKG+TyVJ63VbGVeKGdqQoMmyF14nU7tZz1hyEYdEq0wZNwm5q6gHKN9Z+vP7X5hqraKDn7XrbyoTmLshpT2n1X/uTmuTj8awWZMZQru7ioFs3wOPn3x2gsOQHsmri/VWUcASLVmXwoLlkp2vBrECYHMQfd6u5Xgi7RGQ/OvkWyCChU/VRZE2S7qQRkg0QCVaRTDhb3JOllPmCqonhWAlv8hDYRgyHwoFZdgT2yqOsEsGOhIfgDJo5ZpyXpCX/Tu+2BboumVPP5mp6kO/4LbwZFgMOgHEcQN9b86Wfg8OLV67pRMcM+yKiYNuZnlW2K1z+MWyevjO4+HHXU1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tpuVpiwC94a+qwEZdoD/EN0lt6Uky7Yi0rIAzg74xr0=;
 b=pINcAx43kGXEYepW0cz5qnuwGV1CNQXnWJgw5tSRzbqW1v8/rH2Kv4CKLQgIvCuiZJCpcNzhvdo8OqE2IKFVEnm/g9CeKQ4e87WoioxCdY+/QrdmyDDDOB1OlR+SBeCmfsUmuj/jkovqIc6Ka63mV9PNH+IMTaWSx9PFszXNjBhB1ZuKCk4MXI9ZvO3rt54nMl0TZ812l3AemyeuZpKu/iGpXag/nCegfpAsGPXFg0jdFRU1t1f8TClNBaCgj0I4toRRvdXeGWo5OVQRzerUwFsgsCVj7X9eTZwelHiNwcg4M6rWNpzYgXf3SK4zPx4i7MxikNIFMygfOP665myvfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5144.namprd11.prod.outlook.com (2603:10b6:510:3e::20)
 by MW6PR11MB8365.namprd11.prod.outlook.com (2603:10b6:303:240::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Tue, 3 Sep
 2024 12:54:17 +0000
Received: from PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::5889:7208:6024:bbcf]) by PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::5889:7208:6024:bbcf%6]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 12:54:17 +0000
From: "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v4 1/6] ice: move
 netif_queue_set_napi to rtnl-protected sections
Thread-Index: AQHa9URlOeBPOdVx1kqCSTvzc2yA0bJGFFjQ
Date: Tue, 3 Sep 2024 12:54:16 +0000
Message-ID: <PH0PR11MB5144737FA8516847E8356261E2932@PH0PR11MB5144.namprd11.prod.outlook.com>
References: <20240823095933.17922-1-larysa.zaremba@intel.com>
 <20240823095933.17922-2-larysa.zaremba@intel.com>
In-Reply-To: <20240823095933.17922-2-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5144:EE_|MW6PR11MB8365:EE_
x-ms-office365-filtering-correlation-id: 00513af0-2d25-4d15-1594-08dccc17851e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?CO26TVoVNht7kweFEXsu3GZbBIxf0ONkTOi83QRAGiYmCgYf0B89awhv1k0e?=
 =?us-ascii?Q?jTvk8CIz2nc+ezv+zlxKVOBh7+O0mj4cevpoATcN4unPDs+ovydOTN/ORfqF?=
 =?us-ascii?Q?MTFlA6HSehXJe9G3+IUEr6aQATUXIz5cYvRUwC1C4/YdoKXU6PecmsGhGyJ8?=
 =?us-ascii?Q?3yGgN3TqTX4sXLlFUFdm4aBp2Mf8IpMqQeJX8Tw/CLrvwztyjpMzfJ7aWEES?=
 =?us-ascii?Q?rzo3/bIHmxIIUIbNmb0Cy6Nl9J6XO2bHpPFDPcIUpFaN3UElUyVjvckhyNA4?=
 =?us-ascii?Q?Us+dm7uPTqCto/rD4079EPCvAysH/LFf5wsFBLN63ytEelml7fZMC1g/JVOU?=
 =?us-ascii?Q?suX4GdFvLfWhlN3Rxubhg78cM63mQ1h1qilqgxKMkOL22Bat2epANvs5V4zA?=
 =?us-ascii?Q?GnbXzLc+0HSOGra4H6UpXCRgAbseQdejbWUVm1hXVg7zxv33ZzA6S6cXcqpi?=
 =?us-ascii?Q?QXSA6y8VyhK/xvcvsqqWbBZavBlp3Jw/TdpUQhZtUCmX5bIHNggbYw1P7I3o?=
 =?us-ascii?Q?SM8dxn8wkpAIfcNSvF8grNgmawfVUMERkZtWV3Qdo59m/p3jM+1RO//YovuT?=
 =?us-ascii?Q?FFRkGwH2w9T2XZ1+LEzjxUlBWzyWIDGEcWQSFCXhqmcYQZgkzJVgKiYmBPZ7?=
 =?us-ascii?Q?YCTitr7r2f3apgvv4l4qjJWTi/1cuLOycUIM6dsgadFIGdLB9YYHTgW0JHiK?=
 =?us-ascii?Q?4bJ7peE4MgubpNQkLcY9VTNhUT4yISTbTTZ6B+4TTdP1AAeTlefNt7+zqixy?=
 =?us-ascii?Q?mi8EYu0Bd5nqmJ0pdF7kQVMXZGsaS7wVPtBrDMASSVeQOnHi1CjSJ2GQ9Pfd?=
 =?us-ascii?Q?z+naZS8HKPIAn1dMOdfHWU+BOQZZl3Gz/27VnUhiZn1Bzh0P9QwOxdBmnqWa?=
 =?us-ascii?Q?wfiCslev/Kmmd3eR3aJjCI8+gopV/4jiJPNyFkwf+/A67bAivcZnmEmFHcyx?=
 =?us-ascii?Q?2KFNR/q7Dpmh0i4oqdLiOa3NDyV8tZmPsrI8IRfG3hsVYOxvDbCtlzIhxZbJ?=
 =?us-ascii?Q?zO1j82KXe/DATr/ncJyrzWZRczUAnM4branc2kNvsLvbcdQt/ZWszCXkdyLt?=
 =?us-ascii?Q?5L5MAiGKvVFFDmY68Ghcre+lYHOnPpU3j20eurtLH6zZ5sb5KLNprOKtbCY+?=
 =?us-ascii?Q?3z1j+wgBfGyhrh9rOBkhwNoEGDELz0m8fwZCJ2cjEvEacWKuT+nagXW3+1GH?=
 =?us-ascii?Q?hKpBMWY6jcGuqk4H6mcaqYGe+yohlVwML0etDS8UmGpnnkWQSLTQ3EAoTISB?=
 =?us-ascii?Q?/TMecifydKULqRhPB+yearARiW/xRGMDRmOd7cq12KcDC6HRw6lrLPRg9HUm?=
 =?us-ascii?Q?pYBemN/3QM7nOIGhz1iqydKfVd8BZWYzbQJyZ6M3I31/VRrv65/26gX9dv8x?=
 =?us-ascii?Q?LlWKpsGOD26QV/n1monuN1nEJhLQjlaPZaJkEJm1Of31EXk+9g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5144.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?njVvxqGGLBXoGJOC9bWkTBaGcvKy7s3z29wJFqwOqdJtSYYj3dszd4NJO+aA?=
 =?us-ascii?Q?3Pvq6/eSCi+790keHNCNEXydQMvONPpZ7KBj0gSgqGVh4mnzR8Z/IpwepUGk?=
 =?us-ascii?Q?Mq/etIdIQJJaPBkTUsuMinFLtfkpMdEawPRowQQUA/Vl+bTF/lkMDMdu85g8?=
 =?us-ascii?Q?L5tM7oSa+7oypbSVslEx1UhqC6w4tX3U2iwvfihJ9AHVUe3SUYyuHoHqYkuF?=
 =?us-ascii?Q?hxoyFrQcTPw6GBbcAoa4vRo+DfMQp3qbCCmJlE8gXRGafuvGneK3ZtIOifBh?=
 =?us-ascii?Q?r/cJz6KdXCCzDQ9ejLx+FjCac5bSyxb5N7hJWb+Zp5bPPnEgXn4yY4U6wld9?=
 =?us-ascii?Q?6RAqi+tI2Dpe51pwge101sZbv025sPtt02wYcbCsYiVoSe8lwXWlPyrnnyGv?=
 =?us-ascii?Q?dmDCFuDFpBCCr09N9U9m2rFyfqegNWKoAWsPVcAj+gOVLI63vDFzRPCpY0aa?=
 =?us-ascii?Q?Z0QPhZ/jN4/9GRL5Sgk6E+GFDJ2mdn5Bct6s/NqqUMc0ptR2ZP0CUR6QwOmq?=
 =?us-ascii?Q?85DcDBrP/zGLUm/0anm+oFsqn3/acOtS/49fnId9U2rQjsmhyNpbsWsSfRsm?=
 =?us-ascii?Q?VH+BilxUuL57owIyq4kQmCf6JzAoHLlzGv1V2eU1X+m0NxAL1Pd2C2hp7+RL?=
 =?us-ascii?Q?8sxuYw+HLgxp+5HQ7JqWp01Q2kdr6CSS5PV/Z/KcBJ9G/DWQEWeN3fezshXs?=
 =?us-ascii?Q?goQjoqQ0xiHxWBs2bFx+eypw4hpKtSqHBviVLd+8WyE5gO8CjQB7BJgZ0r0T?=
 =?us-ascii?Q?aNZ3Lt25e2gdC2FvGqnSL0RLkhR9rBXAOvLg8JyU6uguuheVw59ejPpGaFl8?=
 =?us-ascii?Q?Pxyg4EAztsLHYbN6H81pXefKgLp/RuhWexgPpArxPhrBRi0Sa4iWOVDJMYFv?=
 =?us-ascii?Q?sGmqnI3R3ZqSVVZs3YA6uCDTvASBKDehjMtNmqC/2kaJdtzUH2iFTsH8MTB6?=
 =?us-ascii?Q?eo2q7ikPJ8+ugj5Rd6V65hTAr73SXnBjLpUEPLdSox6neTKjILA+LDKxNt2P?=
 =?us-ascii?Q?39KACL/dKcGpXXzrU9YPCZ/nYt/BdxRUD3btC8PKzW0ymV10n0iIWO/hzdp8?=
 =?us-ascii?Q?9QakxK5cZtUS/hKtr5dCTryQq9qG/enZBVs8LUYFjj6wxbJY8AQoEMI6HQUd?=
 =?us-ascii?Q?hAqOi/wKR7Inf4vKOWToadc4NkPH+Dm4vpgwxalMU+MGnWZV5d+XTxC77aST?=
 =?us-ascii?Q?0M+TgEUmtLpX5q0eJb8MMnD45VDTCopmiQid4NLt2l9O6MTD9vMBqiWjjMh9?=
 =?us-ascii?Q?ywpSViT3TbEPHZiLHwO7JDO9cwVSrTClUo9jBtJs6UuJBpY3YIeYAMAqX8Ek?=
 =?us-ascii?Q?ta+X6oSz+C+WZPc4/pbw9Sym33ZUEvVshKRpYyqi0t73TUwTq0wDdxcnSQtq?=
 =?us-ascii?Q?bZcXkCgwP+Ef8bhu6wip6Cets612c2ACmWtMPuOUlJMd42weIioZi8QmCgqU?=
 =?us-ascii?Q?LTM+NfrAd39VYpLDNmLkKzWnGsjzdGhheLLPawXquaGkmHh7oYsl/aNfTZXm?=
 =?us-ascii?Q?IKQCNJGBUmyhon4KPWFqM7nsJ3l7TDESQxZBLvJYbCurdnE4aVrV7VH9bJe8?=
 =?us-ascii?Q?IwCHDXZ0eDvcWNPQNcEa4jKNiucUd53DbmDstpisqYm8o/EQRiVlz0WNcbvF?=
 =?us-ascii?Q?sQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5144.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00513af0-2d25-4d15-1594-08dccc17851e
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2024 12:54:16.8870 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DKG+gEKEOeSQIZbOsMyuOK2FhM1+M/41zJcYHYOUkHXcswzvtGqko8P3c188gZobdm0lKRivujCZs85VunI2GsZnI3mIygScVcAsewHTXMQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8365
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725368065; x=1756904065;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2SaJ/AJaxcC2YmzBYUp5QE2Q1r6mg6sFM961YwLlw0I=;
 b=bpGGBz98yPUAhROrOVdcT3J8R/aPnoSrZXvaAhYAO9W/70syX5P5JL4P
 k7FnFHSnfyCGvI7cXHKg3TCNLVW3mGPDJjwj7A7U/Z9+Ez6MedxxQ52vQ
 6Xcob3CeQyJiR8MW9TNy4Y6TivTO9lRjHkG6AF/8W/fNMlMd/pU3E5Tos
 XOMUojMzYkfuvNOghNoiEog3699OjUdg8Nr8LarsiZEQdfXiwjKIMOBc8
 9HABkbBfsrrctZf/lKLr2uk7QAOZw+QFKieYA7gY+69XDR35m1ZtKVSkj
 dVi3w+1staiv0GIaRJopjrRNMBGpkDx8k54tUGaGY+hD/oCOuT9ABgUlQ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bpGGBz98
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4 1/6] ice: move
 netif_queue_set_napi to rtnl-protected sections
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
Cc: Paolo Abeni <pabeni@redhat.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, "Zaremba,
 Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "anirudh.venkataramanan@intel.com" <anirudh.venkataramanan@intel.com>, "Kubiak,
 Michal" <michal.kubiak@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>, "Kitszel, 
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, "Nambiar,
 Amritha" <amritha.nambiar@intel.com>, Eric Dumazet <edumazet@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Larysa Zaremba
> Sent: Friday, August 23, 2024 2:59 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Jesper Dangaard Brouer <hawk@kernel.org>;
> Daniel Borkmann <daniel@iogearbox.net>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; netdev@vger.kernel.org;
> anirudh.venkataramanan@intel.com; John Fastabend
> <john.fastabend@gmail.com>; Alexei Starovoitov <ast@kernel.org>; linux-
> kernel@vger.kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com=
>;
> Eric Dumazet <edumazet@google.com>; Kubiak, Michal
> <michal.kubiak@intel.com>; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>; Nambiar, Amritha
> <amritha.nambiar@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Jakub Kicinski <kuba@kernel.org>; bpf@vger.kernel.org; Paolo Abeni
> <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>; Karlsson,
> Magnus <magnus.karlsson@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v4 1/6] ice: move netif_queue_s=
et_napi
> to rtnl-protected sections
>=20
> Currently, netif_queue_set_napi() is called from ice_vsi_rebuild() that i=
s not rtnl-
> locked when called from the reset. This creates the need to take the rtnl=
_lock
> just for a single function and complicates the synchronization with .ndo_=
bpf. At
> the same time, there no actual need to fill napi-to-queue information at =
this exact
> point.
>=20
> Fill napi-to-queue information when opening the VSI and clear it when the=
 VSI is
> being closed. Those routines are already rtnl-locked.
>=20
> Also, rewrite napi-to-queue assignment in a way that prevents inclusion o=
f XDP
> queues, as this leads to out-of-bounds writes, such as one below.
>=20
> [  +0.000004] BUG: KASAN: slab-out-of-bounds in
> netif_queue_set_napi+0x1c2/0x1e0 [  +0.000012] Write of size 8 at addr
> ffff889881727c80 by task bash/7047 [  +0.000006] CPU: 24 PID: 7047 Comm:
> bash Not tainted 6.10.0-rc2+ #2 [  +0.000004] Hardware name: Intel Corpor=
ation
> S2600WFT/S2600WFT, BIOS SE5C620.86B.02.01.0014.082620210524
> 08/26/2021 [  +0.000003] Call Trace:
> [  +0.000003]  <TASK>
> [  +0.000002]  dump_stack_lvl+0x60/0x80
> [  +0.000007]  print_report+0xce/0x630
> [  +0.000007]  ? __pfx__raw_spin_lock_irqsave+0x10/0x10
> [  +0.000007]  ? __virt_addr_valid+0x1c9/0x2c0 [  +0.000005]  ?
> netif_queue_set_napi+0x1c2/0x1e0 [  +0.000003]  kasan_report+0xe9/0x120 [
> +0.000004]  ? netif_queue_set_napi+0x1c2/0x1e0 [  +0.000004]
> netif_queue_set_napi+0x1c2/0x1e0 [  +0.000005]  ice_vsi_close+0x161/0x670
> [ice] [  +0.000114]  ice_dis_vsi+0x22f/0x270 [ice] [  +0.000095]
> ice_pf_dis_all_vsi.constprop.0+0xae/0x1c0 [ice] [  +0.000086]
> ice_prepare_for_reset+0x299/0x750 [ice] [  +0.000087]
> pci_dev_save_and_disable+0x82/0xd0
> [  +0.000006]  pci_reset_function+0x12d/0x230 [  +0.000004]
> reset_store+0xa0/0x100 [  +0.000006]  ? __pfx_reset_store+0x10/0x10 [
> +0.000002]  ? __pfx_mutex_lock+0x10/0x10 [  +0.000004]  ?
> __check_object_size+0x4c1/0x640 [  +0.000007]
> kernfs_fop_write_iter+0x30b/0x4a0 [  +0.000006]  vfs_write+0x5d6/0xdf0 [
> +0.000005]  ? fd_install+0x180/0x350 [  +0.000005]  ?
> __pfx_vfs_write+0x10/0xA10 [  +0.000004]  ? do_fcntl+0x52c/0xcd0 [
> +0.000004]  ? kasan_save_track+0x13/0x60 [  +0.000003]  ?
> kasan_save_free_info+0x37/0x60 [  +0.000006]  ksys_write+0xfa/0x1d0 [
> +0.000003]  ? __pfx_ksys_write+0x10/0x10 [  +0.000002]  ?
> __x64_sys_fcntl+0x121/0x180 [  +0.000004]  ? _raw_spin_lock+0x87/0xe0 [
> +0.000005]  do_syscall_64+0x80/0x170 [  +0.000007]  ?
> _raw_spin_lock+0x87/0xe0 [  +0.000004]  ? __pfx__raw_spin_lock+0x10/0x10 =
[
> +0.000003]  ? file_close_fd_locked+0x167/0x230 [  +0.000005]  ?
> syscall_exit_to_user_mode+0x7d/0x220
> [  +0.000005]  ? do_syscall_64+0x8c/0x170 [  +0.000004]  ?
> do_syscall_64+0x8c/0x170 [  +0.000003]  ? do_syscall_64+0x8c/0x170 [
> +0.000003]  ? fput+0x1a/0x2c0 [  +0.000004]  ? filp_close+0x19/0x30 [
> +0.000004]  ? do_dup2+0x25a/0x4c0 [  +0.000004]  ?
> __x64_sys_dup2+0x6e/0x2e0 [  +0.000002]  ?
> syscall_exit_to_user_mode+0x7d/0x220
> [  +0.000004]  ? do_syscall_64+0x8c/0x170 [  +0.000003]  ?
> __count_memcg_events+0x113/0x380 [  +0.000005]  ?
> handle_mm_fault+0x136/0x820 [  +0.000005]  ?
> do_user_addr_fault+0x444/0xa80 [  +0.000004]  ? clear_bhb_loop+0x25/0x80 =
[
> +0.000004]  ? clear_bhb_loop+0x25/0x80 [  +0.000002]
> entry_SYSCALL_64_after_hwframe+0x76/0x7e
> [  +0.000005] RIP: 0033:0x7f2033593154
>=20
> Fixes: 080b0c8d6d26 ("ice: Fix ASSERT_RTNL() warning during certain
> scenarios")
> Fixes: 91fdbce7e8d6 ("ice: Add support in the driver for associating queu=
e with
> napi")
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c |  11 +-
> drivers/net/ethernet/intel/ice/ice_lib.c  | 129 ++++++----------------
> drivers/net/ethernet/intel/ice/ice_lib.h  |  10 +-
> drivers/net/ethernet/intel/ice/ice_main.c |  17 ++-
>  4 files changed, 49 insertions(+), 118 deletions(-)
>=20

Tested-by: George Kuruvinakunnel <george.kuruvinakunnel@intel.com>
