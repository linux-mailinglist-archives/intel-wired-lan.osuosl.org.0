Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 28AE3ACDE9D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Jun 2025 15:11:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CBBDE81F99;
	Wed,  4 Jun 2025 13:11:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 18192wUYK6Dh; Wed,  4 Jun 2025 13:11:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 351C081FF3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749042669;
	bh=ccVMhogUu8j7pQTJIjhiZoF2j8s9V0uj9rw6fdOS0wU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bwvcWGzK6asYhWSkFiA45NpkQba2QFSbSIi0g8nqjqWNq278BLckwFwIq5L9HAKd0
	 XInOsuVdEO9Pp0DJtUViDCMfeSxEcbGkMUeya2Qz4m4Y/vlQ7M3qw09Hx3+CvUTE94
	 ERjUDDVnebkKwYR8+om1aPF5dtinBBMIZHGCbCf789XcKS1dPWPuCSrAXPLb+DHqNy
	 Y+lVXtZ7vjBBuryC+EeKildNRcPN+4gx+T32hfE1R6J8mc5Q1DhEipuZ42Pc5xwJEm
	 Rrwbfl6SDZXYEzCXecqAXBgHX5pooj0gxSgsr1dcNGqG0XlacsjZRlMf3HssUESCGX
	 oqqsSSxGdqz4g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 351C081FF3;
	Wed,  4 Jun 2025 13:11:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0205F1A4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 13:11:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E7CA760FE1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 13:11:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ytFiaEu944o7 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Jun 2025 13:11:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E717660F4A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E717660F4A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E717660F4A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jun 2025 13:11:05 +0000 (UTC)
X-CSE-ConnectionGUID: 3sYmG4rhR5CbWjwi3sSsqw==
X-CSE-MsgGUID: lBBgNSuzSvWRI5uwQyAwEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="54913649"
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="54913649"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 06:11:05 -0700
X-CSE-ConnectionGUID: jNtzyzIUQqKG1pep2Mx1pw==
X-CSE-MsgGUID: PmFA9tCITSSGGWsrcnim3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="150346597"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 06:11:04 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 4 Jun 2025 06:11:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 4 Jun 2025 06:11:04 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.51)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 4 Jun 2025 06:11:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v5JdlsbN7eo+ss+yUmWVxqEKRIjaM5LGA8H/DhIvY8bfEgFmZ9lyw6A85ehGNBGmAnEXaIVjjPUM7PijYFnxAZEXHiX8RAkRrBNGCwku9nf2VaQv+XbfxHWbCKlhT16gfxZ8Zm/k7v9w7jtv+ahZtPunhh5hUo5x9Qc1V73UsO3PBLD96p8QRPMQBonNDqADk91NTjmQOzkWDRIgQdqxi1C00VhOJr8MT2lOwajB//3TCq5yqXegGPfbbaPQJcpPc1txI/2k1fuUGgbp3cQsJldIX1RCU6EJQAL5fTq6X1mGlJuI9UylrSEUb4em+c/ui1gxinrYNqbdkIAwpb77RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ccVMhogUu8j7pQTJIjhiZoF2j8s9V0uj9rw6fdOS0wU=;
 b=ujwEtX9PbuR7Uck0rV4xzcr4XtddT9vjmPpOXO+vMj8McBtgltYGm7U7hZciyhyxzyZcKU0Ep5EfZhYiIMVS6VLOS36P9bOjWWV4ru1z9ji8W8+TtR4pOmGKJ2fQip1ZmhPmQOKXErAyC9bvUMbZS46Th847cT0cHQ/nM7SWNd/qv9ZqbD2pN3/JmYhkMrznhlyY8aWixww+GVAr0EZlCSQldUNMnu2D494FikIWldwIRxCJMv8SGXRwBHPBEuACY2L7D6PSQC2pElYTriwEI9gmtt8tYRUlu6QudrZghGq+NTK/cX4PWKNj5fOl3nJQFotCc5OdJyB/e0vO3oZyQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by DM4PR11MB5295.namprd11.prod.outlook.com (2603:10b6:5:392::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.37; Wed, 4 Jun
 2025 13:11:02 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%6]) with mapi id 15.20.8769.022; Wed, 4 Jun 2025
 13:11:02 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, Marcin Szycik
 <marcin.szycik@linux.intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Zaki, Ahmed"
 <ahmed.zaki@intel.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] iavf: fix reset_task for early
 reset event
Thread-Index: AQHbtR88iopvVdHBV0eauzLXFUdt7bO5DEkAgDotpSA=
Date: Wed, 4 Jun 2025 13:11:02 +0000
Message-ID: <IA3PR11MB8985888AA97037B8244F9A888F6CA@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250424135012.5138-2-marcin.szycik@linux.intel.com>
 <20250428124422.GB3339421@horms.kernel.org>
In-Reply-To: <20250428124422.GB3339421@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|DM4PR11MB5295:EE_
x-ms-office365-filtering-correlation-id: cc7635e9-37e5-42f6-e12c-08dda369417f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?WetMGTKM0cPwppsNaSCKCpeM2pzsaMhXw/GQWYPLDiNodkJLTyKMowsZxay1?=
 =?us-ascii?Q?6y5HMEZJJU96TUeR1bp5B4sOp/9V2NxrhwnBmEXMJjsdqJ3YA6C+pQkc2UW1?=
 =?us-ascii?Q?7ObdK+Fr+oVmrvHMCOvezYQWAuiSrSIwD1+FChqF5mytaelvqBG3CLF74MsB?=
 =?us-ascii?Q?whHKccBoWd6HSuY9iAv9VfYD8Q5lapwiJ+7mMhyUB3W57B+adMYREe1KwPut?=
 =?us-ascii?Q?dLVvmPLOPEzEs5jN3j9uyxgRaC4UFkxYsv6GOMopJmx74HZYEklt7WDI9eaq?=
 =?us-ascii?Q?DGK2cJpNHHb5M8HYE2dGGBJ8ycOHRYiV1tVi8FbIJGfWNbX2v9clzO7SDuOq?=
 =?us-ascii?Q?gXus7YBzBt4jp2R9r44TgPRMJroN3LrgTB1gohChDbiqDJg2jW3IzlbHG06T?=
 =?us-ascii?Q?OW/1C9Tnx6FW6AYfhz/z66xiVRf/RZxe15MYH/5AYIZ7AMy1wQwkXRo3yJoU?=
 =?us-ascii?Q?+2qwqez9kdp7whxNOyvkSkotAwRWINTKpKxRkWVzjwWKseqKKvyqEJfNtiNy?=
 =?us-ascii?Q?LIdADN2o3AZ3NKTf5c01HYBhTVNjlPD9LDz/Dpr5uLGAkSfaVvLjiIpGJ+k2?=
 =?us-ascii?Q?Juv0g6LrEz6nqZc7zBkson5qyNKz5XUagXI4p4Y2WBjvPZt8YO2OjOVVnHHK?=
 =?us-ascii?Q?8d2WYMco5ACXtMzfVLRWG1kFG8H++fzQe5klkumn3ajaZmMhSdimc1ojN7g8?=
 =?us-ascii?Q?+dWwdbVQRVKTWnZv2u5nhXT7FLWKsHyJcaUCHCojaF3y0iJTlPmLO0UYvEIK?=
 =?us-ascii?Q?yNjQ1z2/+UY9/3/tULsVNVvDzaRAi9DJ3iIuVbJebe4T3iaVs+5DKuh8XnrG?=
 =?us-ascii?Q?wVhtlRXqjoSSSgCBlXI0UM76UItk/6NdrKbBpldDe+Q2Z74ZFkwmjp4qLtQP?=
 =?us-ascii?Q?22gzdfg/OCOZqG1QBHyg4fuXrpN+16zzzaul7kcvBtqtq4rb++vM5qjAhQaL?=
 =?us-ascii?Q?4MwJOsKsa/uBN3PBi7P1Py+RJjye1O3AX/zMsy/82I0krWrG4SBh0SOM8tZ/?=
 =?us-ascii?Q?PSWJcr6EQACn52TtcqDmH2WdAlTEZ9qYp58SfCo0NNxnnK2gxkEWMWqGny9w?=
 =?us-ascii?Q?6pFRoIT4zkYb1yMi9LML+Z6h+8quX3ZZaaLzbRr2+FfmEtXR4j7j2Lk9JsUx?=
 =?us-ascii?Q?qsXZuDtwF+NdV9Jzxh2pw6TxQhzWAposyDjvlVCYqOb+mG8vi0YAicoBCtoN?=
 =?us-ascii?Q?k7ol4PWO+m88KM/vRl6K5/BbeQqS9sbP45QXZkqrV3eyDjH8lnGDWugBrV4H?=
 =?us-ascii?Q?4OLKjBAhUI0Hf+DsD1JH2k8kIjcInuVUo/vFHx/rJB7qay6ftKS+M7YurOZ0?=
 =?us-ascii?Q?187uJS9fK3PkqfNUYacQac0EdDj1u+ZuSeLv4+uWeJ95sBkkVn5rRmdIs3km?=
 =?us-ascii?Q?24j9ZWUgZigG1QyQKrw3LUFjlE3QJjAvyImsVYEomTQMWl6OyHtKH1TmnY6Y?=
 =?us-ascii?Q?vGCdsIi7QllRHAFq5s+mbnQ0k9xGM9HoX0xqMV5tvTYL7FwyVB5QUidpltQb?=
 =?us-ascii?Q?N/wgOOPk8+eSuX4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hLxGo3Ru035MTJlgw4n3FyA1ux7UEOM88lte/geJ/rUFXIfG1FWdxuav0NyY?=
 =?us-ascii?Q?yxf6gX7vSVkwbBsFWzcA7W9sz+myQJJZZT0Qq/LqxnIQWcAjm9tzdyw5DIZb?=
 =?us-ascii?Q?VchsBEoinQnVtYza6xtT6HrjTVpm1Kb2qnyUFULrZvWchZMHm62iWgLlHWYd?=
 =?us-ascii?Q?zaNlnvG+NxrMaef9Am6C6UsH7AyT9w0d/NHSCfTJN/NLFiRoTSfFlwWb17Nb?=
 =?us-ascii?Q?fcIWjDMPNATNcifm93FqADVyGxxm29GsxhEYB8eoa2FIEwJggExs+/yuUqDp?=
 =?us-ascii?Q?QW3q5e8AeOmE1xeNfbIV1nHFOuaSjXSxC/YhYjRlnCBfPVaDOM+nr94Lrnyg?=
 =?us-ascii?Q?ezQyib3ZUJW/l6IUCMjF9pUG38cRPTmdqYkYAisYQPYUPJqyu0q93SxD80Yr?=
 =?us-ascii?Q?Va2TChhNpvmA5F2updrwxukxSjZr2KUlXySeQxpLH1FRRi+4z5QvBxSUXrsR?=
 =?us-ascii?Q?YfYZS8xCW4cX0QcxO1SNaqen3uWcfYDR1LY4r8tkCM7lqquKJl09FT59LTBR?=
 =?us-ascii?Q?ja+OMUby+JY0KEA71Gf6Q8eGxkaqIc+zX0zMLaCt4BiFO5DDfB4n6YQT6XkJ?=
 =?us-ascii?Q?ibOEQAGkccrpKhaKUal80B200Y+MnKqGOlmBGgo4YXD51Ulw67dXjh4GaHDC?=
 =?us-ascii?Q?utF7DaB3gVWsd+RU5MjDxbmCEB0xNNVXZKpGAgNMTkly4DyZZbHCH9xOWSYu?=
 =?us-ascii?Q?tXwrTrsNsYmnNq9MzkCezCGIeziBb1tIbRUMOt0j8UbdWvnbi3+wpqTHrJ36?=
 =?us-ascii?Q?mw7x9i01mwyOOP0F3qFZWCldlSzU1wAMklfB2lKbOIotNalcGQ674vCE3YUu?=
 =?us-ascii?Q?LDVR68RcnUql+jj/H6AFVRa3wmpt1YNkX7QEzdruMb6k3m/vaS+vZSyID+w4?=
 =?us-ascii?Q?rks/+8LLXHWwCpx4cmsq6m44DcTkASuABD4vhBREppV1/Hl78XSHCRSSb12j?=
 =?us-ascii?Q?76uy3FHxp9co1dt9Y+5+9PfI/bTiZ4IfnE8d71je5V9nUFlVC3+1lQJZ30yL?=
 =?us-ascii?Q?RUtglZXWcrraUeqiDo3TQeTZMC2C5d2DR9jFubaCwTRHmhg5CHi7z2DfPKDZ?=
 =?us-ascii?Q?0zU51qJGnYVHCpt6pcWrPDbb7AMNaWyUa505gUq6E4XihZXMHsOwlIlXUL+k?=
 =?us-ascii?Q?z7g8A1n8d1oZrWpn+k4HypR3Ajnew3NNWTPXH06Kf/EcAiaStp8KMlIlFaxi?=
 =?us-ascii?Q?nOAiW97ARBki6PmvZUTn7z87Kj3bM9KwfCz/LCz7ntYEdMPduTCQzvhQRn9y?=
 =?us-ascii?Q?Dt2s3N5wgP1PNzhJkPN5xVhhj0y/zY9sreqYsX6J/JPb7DmBQSlbVzaE+kX1?=
 =?us-ascii?Q?nPd6l8SDobyq0zytd5qCIcLpDdwqvQ++2PhVCfT9Cm0uWD6X/OnaMAUxbCvN?=
 =?us-ascii?Q?OuCxMLilWm5wEJwRpMKwLFfc3W4tWWiHdiv7HaWHJrxphFy+o7SJ8N+cZFm4?=
 =?us-ascii?Q?Z+RN9GYn8sjhoRitIH0IqArJnvxvobu/kCGly7a6lXplDHkZcQbtM1JgRH94?=
 =?us-ascii?Q?CYcJhuxUBn4jRiYDlMzxeZc6KghH8WDyl9Z8dHC7OgrOilvYvBiLkZmEu3tr?=
 =?us-ascii?Q?8GnKpzq6hKroDEi/LYXOYPYNf4bih7FHjOxFA1r/2vE/qARPau/dBda4kciF?=
 =?us-ascii?Q?hA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc7635e9-37e5-42f6-e12c-08dda369417f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2025 13:11:02.1699 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y6n477rPz4NptOmCWJBllnQCjasOQhTlKrYA1mk9AkFJGBzgxsL0zyDbfwjkCg45GTYIPzK116K6mldgvlg/rMG7yi6JQ2mr2Xnw/OcGffs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5295
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749042666; x=1780578666;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=edeNT1NpQlBtYaggwu6ShobxwRUk1dtnzZknMhxqk5s=;
 b=hsAUtmpPCI9E3im5OC4yB8Uz1w16GspwFQ30Rs3OcrvPmScUKCM2rHT5
 35FmxUtZwunLvuc1csIwhkgLc8/JRIInQd3io4TX3z+CuRVRcT3D1ZUJq
 pNqCYT5GCN7fzcvUVkQSuRyp8F2UIH1zCCpVSXfgFjItF7j8pPjTT2pNL
 yokNOBvNOdACyThXNcV4CytmtCkE07/XSg+2AwWrXPKKRGljtKjJudX/I
 ZzVCDJ+xhvW6oLLcHjl4ZqAv82Pn0F/bOfY5U3+QkcWAKQVP5x11KRNhI
 yUd8bIN/uE6f5lNLVeECiaofHV4c80xwzTxW5uwIrg+AFC8+/qhkQteqG
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hsAUtmpP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] iavf: fix reset_task for
 early reset event
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
imon
> Horman
> Sent: Monday, April 28, 2025 2:44 PM
> To: Marcin Szycik <marcin.szycik@linux.intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Zaki, Ahmed
> <ahmed.zaki@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com=
>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net] iavf: fix reset_task for e=
arly reset
> event
>=20
> On Thu, Apr 24, 2025 at 03:50:13PM +0200, Marcin Szycik wrote:
> > From: Ahmed Zaki <ahmed.zaki@intel.com>
> >
> > If a reset event is received from the PF early in the init cycle, the
> > state machine hangs for about 25 seconds.
> >
> > Reproducer:
> >   echo 1 > /sys/class/net/$PF0/device/sriov_numvfs
> >   ip link set dev $PF0 vf 0 mac $NEW_MAC
> >
> > The log shows:
> >   [792.620416] ice 0000:5e:00.0: Enabling 1 VFs
> >   [792.738812] iavf 0000:5e:01.0: enabling device (0000 -> 0002)
> >   [792.744182] ice 0000:5e:00.0: Enabling 1 VFs with 17 vectors and 16 =
queues
> per VF
> >   [792.839964] ice 0000:5e:00.0: Setting MAC 52:54:00:00:00:11 on VF 0.=
 VF
> driver will be reinitialized
> >   [813.389684] iavf 0000:5e:01.0: Failed to communicate with PF; waitin=
g
> before retry
> >   [818.635918] iavf 0000:5e:01.0: Hardware came out of reset. Attemptin=
g
> reinit.
> >   [818.766273] iavf 0000:5e:01.0: Multiqueue Enabled: Queue pair count
> > =3D 16
> >
> > Fix it by scheduling the reset task and making the reset task capable
> > of resetting early in the init cycle.
> >
> > Fixes: ef8693eb90ae3 ("i40evf: refactor reset handling")
> > Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> > Tested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> > ---
> > This should be applied after "iavf: get rid of the crit lock"
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


