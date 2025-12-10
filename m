Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5699ACB43BD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 00:22:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1311040F0E;
	Wed, 10 Dec 2025 23:22:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sfIFR-Mz7P3M; Wed, 10 Dec 2025 23:22:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8DEF040F18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765408936;
	bh=qzx/V9EzQrRiOsG3b8Dg/w2NtxM0s9UcMtLBKaMByTI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K15Wsu3EQQJm08DapVTpBmPNRomxDpf21FEZD63QCL/CwgpNYhL4lzmfLSAFV8INU
	 1N/IX0cNJ1sOtqOLZ7nz66sl+ZLCmSkacGmV3jUV6Ye071/BFFXA2MWBtB96lORZBh
	 h7T4/q4VtuhBBCuDFOI5vjew3S9EIL3q5xmVBxjdI85D+5GwIRl05M+y1y/UM6vyUo
	 D9FleNiqrQpL8NlyDya9gfVMpTPU3pn+nL/3TDLiUfOYbPJYGaq0DSNdtzfwjFITxC
	 XbgCf+y2rl1XfsoeU9trBNwLPU5dDX538ymJOPHRrAe4MQro/HTcFS5o+UFyLrDU7m
	 n1O+DoN5agziw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8DEF040F18;
	Wed, 10 Dec 2025 23:22:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 905BCE7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 23:22:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 77BCA40F01
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 23:22:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W4lkXJ8sRncJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Dec 2025 23:22:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 84CE940DB2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 84CE940DB2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 84CE940DB2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 23:22:13 +0000 (UTC)
X-CSE-ConnectionGUID: oWhJ/MWeTVCouhwpG88wig==
X-CSE-MsgGUID: pK785iP+RXCwtGZ4bztsCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="71236386"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="71236386"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 15:22:13 -0800
X-CSE-ConnectionGUID: 2TZZ8HaLSRGXSn77zGizZw==
X-CSE-MsgGUID: IJNy8BtoR4GI7tmzHcZ2Kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="201566914"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 15:22:13 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 15:22:12 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 15:22:12 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.17)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 15:22:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WxeamvendtL/BBnQrq9lnSPnTEDwPs2/98M7dl7WjqZhoZXov809JxozqZxvBke1JpEPmZMnqEu3hsQGrr5hPNuLss8n/YAwkelwrwEvPD5wjBgb1iyY9Y1hXpCABKQkbnad3suB0tsWuLN5t8LSqAlN/Yc7vZ992qhEtcPT7dQ9feR0TPPwQU2Unr9J0i5hcCbNCcD3jSUV3bTKWroAeqmBsLKVQnldMfFPpl+FjiWLc56k/u71QyfW/3FJIm2XCPIVwGRqoWdIsmz0O0hjF6FKdkZsa2FrgPcGJAyhMWFAbXUT6LQVYdiNW1uv10+tz/7OC9PvpCZK6l1HILZoBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qzx/V9EzQrRiOsG3b8Dg/w2NtxM0s9UcMtLBKaMByTI=;
 b=rLD5fvqC8WZOY0m0B97/2DFbZVM2FQIgUZUm9M+Ip5xDxtcE1qgDCmBWMmAGZoHnLy/mhAxaqwYwGbrrD+ySMxmk5iVVY0zw87iz4jFyLpZFK8H5dW8uroht2fznzpW+yIP6MDZhWL3o6/FWIktgkwOpjV5mzXg+Pe6BpL2ZI5H5O+UnrVh/ir+940xwTBbbhQXtoAOuXVJdTymsdgBJx3y4auICipdt/IrdJsUQgKCTZx/3kymQdwCySwKqg4vtTgKOE/eWy6ETHL7S46NGbdZDonKt/9mwAZDoDJzqNZx3xbSoFMqRdhthOycn9Qfav675de4LVP9zm3XnNwJMTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SJ2PR11MB8451.namprd11.prod.outlook.com (2603:10b6:a03:56e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.6; Wed, 10 Dec
 2025 23:22:09 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 23:22:09 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Hay, Joshua A"
 <joshua.a.hay@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v10 03/10] idpf: move queue
 resources to idpf_q_vec_rsrc structure
Thread-Index: AQHcVLV8kzakFGKBRUCFhDLxapPRRbTxrV2AgCn+UFA=
Date: Wed, 10 Dec 2025 23:22:09 +0000
Message-ID: <SJ1PR11MB6297420108E69630E042DF0B9BA0A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251113004143.2924761-1-joshua.a.hay@intel.com>
 <20251113004143.2924761-4-joshua.a.hay@intel.com>
 <DS4PPF7551E655260DB51D48D8A7553BF48E5CAA@DS4PPF7551E6552.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPF7551E655260DB51D48D8A7553BF48E5CAA@DS4PPF7551E6552.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SJ2PR11MB8451:EE_
x-ms-office365-filtering-correlation-id: 297a5a41-88a1-4db5-8005-08de3842f125
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?fgaua6vzeJ6cU92zwAijPm41PPAJGaDEXs3JlmessDgcOVoOlGjmmHcNVXh9?=
 =?us-ascii?Q?c+nTk57cSQYNEDS7i+QCW9x1kD536NrxGlM6e5LemDTfnSSFOTUmukfiun5X?=
 =?us-ascii?Q?3pN7EeEqL/OJ5bReOdlTtRKviDLqQqZrfTZ3F+eWGQH2vtslU9O0hbd7RRuY?=
 =?us-ascii?Q?wZ7moycxMVwqB7SHQ6iWviHelU1XFYU3F2mR2DmrxgbJ3AitHUiVv9rpG4ee?=
 =?us-ascii?Q?HRpB3ODjvRrkalFnhJht2kvZcnQLwSlyzzU85JYqbBG6T8NsJU5ZBQVMnimV?=
 =?us-ascii?Q?rU0UB0rHg4as5qoHkX9E6QgyWbeGMLJWEL9zxOdxgz3BqOose9Spl2fBaLgY?=
 =?us-ascii?Q?4RNQp8U9PtK20fgSy1J7J3idmUQQJ+IbJjz77By5SwuUMXHu3cjm65PaAkRu?=
 =?us-ascii?Q?YiVcntT0MkraqxADw+ewxrmUhvln60QXtPBs9iX/vykn23k+vkCd+aQD0oGB?=
 =?us-ascii?Q?1TGMHgBaMWd7wcqzD7sPJLQbK+0OSixcGk5NM61PYZOKKDL0YdlnBCzg7lka?=
 =?us-ascii?Q?z7+i2bImGzx5VGCwNR0artSysfD7d+sCKOiuMmnjV8I5tLjR2gzh0n9PQ28t?=
 =?us-ascii?Q?jY+yasca+dnaN+yD/G7GLdwEe3S5JzFNMQfU+9zIbutWkSFKKu0zC+k5f3zs?=
 =?us-ascii?Q?67xq1frv4hqTWKopgOWc1pTep5gtR5oQNnZ0K9ko3gYlvZem96lXxOaMXYPV?=
 =?us-ascii?Q?2HrlO4yiZ3EnARtRavSpWG3HUDh2CD/OecbnpSZprY6kk8j8FwPnr7GPR2lM?=
 =?us-ascii?Q?Hcr0SYdGhudm6CtLLlszBxhrzCzJcnJOGC9kWmSsQ9svfE+AaOhk4VRZZquc?=
 =?us-ascii?Q?rGmOI3R1PVmepA48WJ17V2gZ5dnUe92R2fOwdXdwCeOcwSC3V8es7FS2sjt+?=
 =?us-ascii?Q?NEA9SStLU5omoa7zr4LpHuxVIwsdOPAuTGHqUiPirJpCqPGtXw3f9xX8FEjz?=
 =?us-ascii?Q?lExRweKOgUtv/yZ90QrDMPb1pQ/tV6mu44WEuWotnHYIzOXuFNxN0+l3fFGy?=
 =?us-ascii?Q?PBCEwDvUflrACconfluF3pXWX+JeouHaMQVl9UoncDxQo60bQ3EdJymuuytW?=
 =?us-ascii?Q?5fJoiYy+f2gkgJEIlpXhgyshyFUswMJ3DGFuLvwrDSuRCeuynrwkIChAh5F2?=
 =?us-ascii?Q?WAIHuC53wmpJgtdhe32F0JrbT+mhzUIu3ZdcubIOaOMsTdb2tfXuNRKQZ67K?=
 =?us-ascii?Q?JZxZ66HRPNKAu6Zs8zpqUHj1bT5ZEHjTJ5UnMfibS8zlM35qXsCDjCIIfpYo?=
 =?us-ascii?Q?Fhj8iHD9uqak9IxtapYYb6whb8AI5gxYvOXO3kj1eJdVFZwBCIQYBJoBYaY8?=
 =?us-ascii?Q?uEwL6zQtHIbI57DDwoDqsy8Fup+ebg3S0m4U/1c7MRU10XPj9szpZDweaThV?=
 =?us-ascii?Q?bQ22bpE0jl/HXPVq89+VUpK5UffALwPkmg6Oqw0bwWFkxXkb1uk1o18/Jl6O?=
 =?us-ascii?Q?o63r7TXqp5KpP4bN3j54pduzPl9+9u2PHsboQiqoyOv3JTZtbC4N7oQJhT8J?=
 =?us-ascii?Q?PoBdQYKxwEVzxBqyMbKxydHg29SCRZ50t0EO?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?s/RCOwCYz7sDHN1M29fEeSUKlGIqBpPYk2IK51lDYwrD6bxZFSLKfbcEDMpF?=
 =?us-ascii?Q?UCEiuQTmbjGMgDbw+Fv3SteKaUnhlDCYEIsl0o6xByaijLO0A7ZONNl3bTww?=
 =?us-ascii?Q?nxTxGPFuzLIsCrh0oFhz4SgXTW7p+f+fU7DHU3TczlOWKpA2PvzDb/5Z3/pi?=
 =?us-ascii?Q?/knJ+49oUPspKckirPNmtIAitBVeceCcDt99Vg6jh881FtynACD4Wx2A4YEe?=
 =?us-ascii?Q?vxWvFSZXxdg7+dQVgrae+xEmJtDKvHwwnwfYnnUIFv+CY7+7gRoKmLu6rMlq?=
 =?us-ascii?Q?yfuvLGdYuAb2IUvQa38hTJMszCQaPEHiJtijYWYWX1iQ6+VAfVvvbx/n6Knw?=
 =?us-ascii?Q?itUfUgSjoNNPvMghhFrfszTCRJ8vOz678NdDnkyiVTbcXq+9Sgg/gs8szVzy?=
 =?us-ascii?Q?De5LIEcF+s6L8kTmG4rgJ+nGBG+Ucj17IH/3QSox989kL0G+Uko+xRPNUKG4?=
 =?us-ascii?Q?YWthExwYKNaKCfqP0o3iecExveab6J3yp346FUWgJkMdj2hoFyNrG6p3VZ3u?=
 =?us-ascii?Q?FEakEwWovtKff+mj6Xjk0k0HjKDyUB8/MBUgvP1te9SHg/XPExBITwEzhPF4?=
 =?us-ascii?Q?8Lq/w78AxcsEFqcdwQRXtRzaaG9y6Rod2rYJZP1+8JzRZzV8b003/PDuP8bk?=
 =?us-ascii?Q?9Tj/tVbn/PkxRS9n76WPxLcS3INYfi8kTIev2wJCtodyn2vWzW33ONyPPWjl?=
 =?us-ascii?Q?rKUFnlYD2E4AAmeRfz/24KoQhoN3QXMJubszrjSxqSFjXhlFXJ8l2scdSkmc?=
 =?us-ascii?Q?7iSqt/pAx1bf4+GN2DCG6cOfH9y+BkPZ0J11qyUM8KWd1vHWv4ff79+GXHS/?=
 =?us-ascii?Q?wUdYVvWEUIwPkdAhAHNNCc2hw6QA8oOLYzYMIMNY/iE0/njF75R40eap7S8j?=
 =?us-ascii?Q?hUK4TwUUNPd5H2Wui/uc+LbkaYS0xgGbhhPZrmee8+4aQHf/n3lNUFy7adOM?=
 =?us-ascii?Q?WvpGsAPxmLZE1iUkA+n0u+nPl5l4j4QYE6LyZOx0NW85Pi5H33moqqrClhJt?=
 =?us-ascii?Q?JeqbMfUsP5Z4JwJC0WeMM6rw6gvktoIYH/LWAsSM6fIFM/nwaCqO1p924yCo?=
 =?us-ascii?Q?B1VmCxhhGyyU7K4c8L7wLTSfAbxpwBsyiYV1VCTtXvq6pDdDe4wVgG1FJOJV?=
 =?us-ascii?Q?GhKn7lMZkQrn4n/uZ3Zqgq4lv2hNHyAnSwEs2MJ/TfNwTez6EHVfYUdhPH0A?=
 =?us-ascii?Q?wzZZFPvXWuoEmWMFkgBey7WZ9kMcoWITMUtd8ypxwD4hYgIgGpq6hbyTmzxR?=
 =?us-ascii?Q?AX7BF00WUgtICP9Ca8uL+a1IhkOdQbfYV7FuQVT/TgwCqXRV+bDwtwPRPluO?=
 =?us-ascii?Q?DgeqHLaEHpvqY4V89jX1/L9YPbltfhpOT0IozbnJD2f1dwSTR9pp5mu6euub?=
 =?us-ascii?Q?mAcT9TiHNDWqUfWbptePcaAXwzz2lNfmGkW6BpZH+u6KZ+lnk2syXnue/cYE?=
 =?us-ascii?Q?+2mHr/Ajf3YNCZjDUk8MuLGqLhbLxy2psWCzrVKLMEqQ3vZIyxrIm9XhXpe3?=
 =?us-ascii?Q?dJkLKzQxU+ilH6jNsbeX00wXYFX6cQk6DLmW4bYXGbGklUWUqjt8f/lvGbjv?=
 =?us-ascii?Q?Fwsz4ELdMmvSva6OUlI9sI0WPvPkefjxnsmB+8GD?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 297a5a41-88a1-4db5-8005-08de3842f125
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2025 23:22:09.7638 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nYRglYrxxLfiuZPsbDJEToei5z/p40eMK2h6nSKXmFjAZoROuaE5hnw8MlxVyr7mrDJPPz0CvRnf7yHHCq4CgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8451
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765408933; x=1796944933;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qzx/V9EzQrRiOsG3b8Dg/w2NtxM0s9UcMtLBKaMByTI=;
 b=AjCH/ih2xKHoa2kPpg2/z8ij9E2fY1TKwl20mTmqd0UkuMb0CJhDdwAR
 Nj/DcNZgOHW7JrGpPBCIvNOYldVQ2YLrST0kb6FPvnOTJWZKtfeRfoS9l
 aMLQLr0Wa+bqhaojQGsQ3IcIjHsoW+5fgeU/7+NhqnsfLrCNUfHcbDSvp
 MTfFWbIYQYKykHQprI+BKDXMmQSLkEiwgIB1HSMVegkSZhwbH/jmjObzn
 dyotGPm4E9WPLjAOJBRiotsfOO7yby7vcxUZwGl532bfApIbi3cszfG/3
 5RUj6PWv53b8dj1jCe1C7yuKI8HvLC0SMZcJAfn9763rxCGq4DGzu5NgA
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AjCH/ih2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 03/10] idpf: move queue
 resources to idpf_q_vec_rsrc structure
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
> Loktionov, Aleksandr
> Sent: Thursday, November 13, 2025 9:56 PM
> To: Hay, Joshua A <joshua.a.hay@intel.com>; intel-wired-lan@lists.osuosl.=
org
> Cc: netdev@vger.kernel.org
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 03/10] idpf: move queu=
e
> resources to idpf_q_vec_rsrc structure
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Joshua Hay
> > Sent: Thursday, November 13, 2025 1:42 AM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: netdev@vger.kernel.org
> > Subject: [Intel-wired-lan] [PATCH iwl-next v10 03/10] idpf: move queue
> > resources to idpf_q_vec_rsrc structure
> >
> > From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> >
> > Move both TX and RX queue resources to the newly introduced
> > idpf_q_vec_rsrc structure.
> >
> Please augment the commit message with a brief Why and Tested: section
> (split/single queue, XDP on/off, PTP/Rx tstamp, coalesce, RSS reconfig), =
given
> the breadth of changes
>=20
> Everything else is fine for me.
> Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>=20
> > Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > ---
> > v9: move iterator declaration changes to commit after this
> > v8:
> > - rebase on AF_XDP series
> > - remove dev param from_rx_desc_rel and access through q_vector
> > - introduce per queue rsc flag to avoid vport check
> > ---
> > 2.39.2

Tested-by: Samuel Salin <Samuel.salin@intel.com>
