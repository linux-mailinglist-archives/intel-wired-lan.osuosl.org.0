Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E552AC0049
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 01:03:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5066381F83;
	Wed, 21 May 2025 23:03:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SaeK-MLhVuFd; Wed, 21 May 2025 23:03:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3070C81FBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747868601;
	bh=E+Lh0XrIW5C2MlmbwrNKrInS28geYXhbl7EMs5lghoA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mJ1xjV3njylNieQvMMJTSJ2igb1eXi31jXEMD+Q87kQz56fgPKupNoDlB37hbAb7X
	 LRfeA/nbYgue1CBk4SjHkId+t+3asRHBwuFUKbeDLo8wUCaX9OZ4COYP6T+6i1islV
	 I/IzjGSD4KRF3TOn/EwWIlpTG8NqVRtL3jK9b6k5Tizji7piZUlRpOQiQjae0PoEL/
	 hc1x5Cjn0bXgeT+KIO8TM7xu0dP+QoWq6QZglzMk8QDHcosZ7kYd2z5W5cbsGVbU7P
	 MqTK/w7LhSGDeHkgEUx69nYt4E9yLo5D/ngrByhORNQntya1Mx1ahbQVkI3vo96qsk
	 rdk+T4GwqiSaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3070C81FBD;
	Wed, 21 May 2025 23:03:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 642471BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 23:03:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5587C81865
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 23:03:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qESJ6Aekc4WH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 May 2025 23:03:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A609A81F83
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A609A81F83
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A609A81F83
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 23:03:18 +0000 (UTC)
X-CSE-ConnectionGUID: jX0jaH2nSLmBxlJGi865nQ==
X-CSE-MsgGUID: BP6oSUgIT96TC5PIXCwu/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="49793152"
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="49793152"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 16:03:07 -0700
X-CSE-ConnectionGUID: 5LrCSxDDQXq7WbqSmpMQtg==
X-CSE-MsgGUID: V9PIJcXzSSWS7CaNTC1isA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="140720390"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 16:03:06 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 21 May 2025 16:02:53 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 21 May 2025 16:02:53 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 21 May 2025 16:02:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j+1esdP8RwZsrq3xIwJlCrGVJ9ikJ4cqefPGI4cE9iF+pTRCWn1eZ664pU2+tKdilTN52tbZkahQ91bUPAZd2mnGF67j20RnBYVji47TvPV41dvg+WAP5Ka/ulHpM4fnPJ1478Z/HVyC6Kp7cIcliUJuxrkT1tt5ykJLHat6EQ2O0An32/E2kjmOQTZmrA2fsALlewUAFt2aiBqw7bmEK08FrSt4YqFp6tRhs69YGjK0w4liTo4lPdglLc7BNxDUiRea6U0RyIlSvBS7az7VGxyEi1LjdqYIKh7AfYxasUR3M8AWPgvvw233HUNm3JywCieCX8DxtWJfEJCZOITyqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E+Lh0XrIW5C2MlmbwrNKrInS28geYXhbl7EMs5lghoA=;
 b=H6rz1cbHrybY6i3TFLM9L+1JSWVu27sKbz49rXX0ddiNZ43qqv3T/jq8AslmJYYyyp6QhsMSXHzFZ3YEKFeF2ma1gCbmZMpdDOxF+lKhcwCcYQAUyO+BtE6bL6T2AMUxgJr9ww+/u0TbDbasr/ETfUTR7sTChY2VkMzSKsgj99XVwi44P6+kozG1PKorY2Is0F2D+Th0iE+O+XPLnqGmbtiUFIng5mYLUwYtxOwsO4uebkWdchc4bQ491qUfiOw16RrJQ8b1Vo+JSlM669JR0c/LGUu6Q+NE89VE0Fu6Mxfx3ihG1GbwHYGwWKBHBDWJ1Mm30lLhNrhKPIGT3c/ZvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by MW4PR11MB7080.namprd11.prod.outlook.com (2603:10b6:303:21a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.23; Wed, 21 May
 2025 23:02:50 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%6]) with mapi id 15.20.8746.030; Wed, 21 May 2025
 23:02:50 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Olech, Milena"
 <milena.olech@intel.com>, "Nadezhdin, Anton" <anton.nadezhdin@intel.com>,
 "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 3/9] idpf: introduce
 idpf_q_vec_rsrc struct and move vector resources to it
Thread-Index: AQHbwGNc4y8KotOmpE2nUMiVvn/bD7PdxXIA
Date: Wed, 21 May 2025 23:02:50 +0000
Message-ID: <SJ1PR11MB6297AE1B8D90E307EA1499609B9EA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250508215013.32668-1-pavan.kumar.linga@intel.com>
 <20250508215013.32668-4-pavan.kumar.linga@intel.com>
In-Reply-To: <20250508215013.32668-4-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|MW4PR11MB7080:EE_
x-ms-office365-filtering-correlation-id: caf6fdb7-f6b9-4671-24b4-08dd98bb9c35
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?YZgeuj+Vg3oodF+95djrqsWxgENlRlpIj+LJ73KvzeineysVDYS7ReioNGZl?=
 =?us-ascii?Q?ijxefTpGTbwPB9coQJYCjr+hHbVK+fwJEQio1oMKxmdxdDGnG7+NUbP84wH9?=
 =?us-ascii?Q?Q3RqjH39IFSpKVAqkOQdcheRC+hCqswYheJe98pqswf4yjLTHP/hWbTYBbhm?=
 =?us-ascii?Q?7P+/FlKXHz3liS1GYZRaVVhUN4CT8HIanzfeonCCQLBfCP3+jfKkyh2aKHOv?=
 =?us-ascii?Q?HKC5+gwYz8vonjO/LEVQSaaIPSMmJOR054S3/idIUZqvZwN/Uq1KEvlh08a9?=
 =?us-ascii?Q?887R1vd1d0r7DLl+87j+0b58aQtNY4pzLoSQ8gb54z1lQLgceGxxw+zf4Nrz?=
 =?us-ascii?Q?REuPXMG1nJ0qyAf6DLmHsXe+ZmmalqeKmoUm5JK22bR23v5x0hbVs31TRRwK?=
 =?us-ascii?Q?SX87j0VwZX7jRKigjswg3LCNWh6sDILV4lLz3+I7tid9HDAvTbLiAoCW98Fh?=
 =?us-ascii?Q?KLkYDz6H9a0pSzgrEjEdZvyFiaOoKIXMVtMnKJvYDYsI+p9W92RszFKqw9Hu?=
 =?us-ascii?Q?HYQgEbYjC3fSsbIaDF3hDAMYbrUaul09HXmyz1ElX6huRiAVxYau1W2Tc9sw?=
 =?us-ascii?Q?qQS4/USCk9g78ok/tku1B2ghAETwED5amr4AG3QEA+dm8xQWW8jGPlfHZlo5?=
 =?us-ascii?Q?jVkHDby4NoCa2I921AmU19+u3auUvAqRszUI9h8gNdypR9FOtluKZRpU/WNs?=
 =?us-ascii?Q?rAU8P4ZckZMgc7dX+vru+Ko2uNlN8Qn7j4l9ARIv0j3fl7XguSRDEPmjhafI?=
 =?us-ascii?Q?MelXBuJMnvA1QjLdhUw1YuhxJN88wXk4sWW4thVle1mPjhX6n4CCWmptQTo3?=
 =?us-ascii?Q?TQQdTC7/uv1YbBb1opoUy6MmJco39rVS48nFfBQYp6PEbnoBtf947y6QudLC?=
 =?us-ascii?Q?Dhddvher5GX6k2cNNGHlMuyEhwwhVY8asGtUkF+//8Y2UYPmq/ikxNpMBqFQ?=
 =?us-ascii?Q?UftqIePueyhx0GDomzInqrI67nkPCFCCdFKqmkkSm+aF7Z+69lpyoB6vl8/k?=
 =?us-ascii?Q?7qkeFqHCgCT1o1GDC0e4f7j7i3Z2uhAzFJUrnka6NbkhFSm1YqSNR/BW1hb0?=
 =?us-ascii?Q?iPAJCCZA8UCLbmnFdhTw1bwVlrfbPHT1GXDJZrX1gfMU7uEctv484vTS+uk+?=
 =?us-ascii?Q?nFRpBZ1uZ8YPWS1npS1UVyl/lnJGgh+8ziN5zk8KFrR1cJzJpZ2laAatsMCY?=
 =?us-ascii?Q?FEYeVa22m1HfanmFne1Qij0ggz271/ukWryS0ejFDyLzefhGTuxnM8SYNEIU?=
 =?us-ascii?Q?pVktUVvo91szJPqdtOpkVIfA0WWLHS3uiQt7PUqNZnU/aohZtQP4ATBVCQeU?=
 =?us-ascii?Q?TYkRhde4l5UITWUpW5viTkvyPMNcChLghlfLu4zLpe3YZsh0wDy0lwrfv1rm?=
 =?us-ascii?Q?yUonwney7icwj94+RptNFYP7HskAadX46Tm8r9HEB7xxwef7G+NuPk/HIVSQ?=
 =?us-ascii?Q?qWMKxuq4U2HetaILCqbeo/+9eYEOPzhI69fzKzG0OQk8SwjumumxMkLnKBj4?=
 =?us-ascii?Q?np7vDYIiLzpqXX4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iCt+Zv59FI3QfOEteqpiUEUrsy4RQy0Sf/EgXFn77bhwxeyfwApzeYZrlxjf?=
 =?us-ascii?Q?lQ+XQ52sTy6L4XKUdQ/lSXiO4HnLw4Eo5IaUWewUE1eQmgxoFlxdPauHv8Xp?=
 =?us-ascii?Q?Z0+tL2qg98ElG+Ag2IVODVg/bDBeyl/AKicvr7RWs9ZPRXkOTOuuFubZF/Il?=
 =?us-ascii?Q?bN5zjsu0sz9NQBATHJ0UDz7NGlo5Jub/Gw/J+VKt1FuJrjgZi4EXgBVCYwY2?=
 =?us-ascii?Q?W4M+u85xseBkc5ozsZfjh/4FvbdjuaOklQfRxB4OuHiqf/v8oZVC7DaiZlLJ?=
 =?us-ascii?Q?o2rhLEaNhwwvcCPbLrIAxnBkEQYWc6GskHZ+XqmFJiH8V6Dei3ueR5F6E5pJ?=
 =?us-ascii?Q?cPW2FxNMcCsRsqMwZv5Niw1K1m/Buzc3Q1qakcVukoxGBK5sUv2s+K17Z2+Y?=
 =?us-ascii?Q?U8kXwlNc019rO0Vsj3N+yOeuls2agBSB/iAfz1GMyDVfmFFOBpLukOCnSh0B?=
 =?us-ascii?Q?Y0gBmJY5JreBrztBBZ5+4IxyMAzliAuoQYfFrXsQiY5/7WBg9KZhIO8WfDNP?=
 =?us-ascii?Q?YL7uiGNf7z/kHX4f59S/n1UXsB2HA5RqR/jVHFXJo6POqk5L7vm1bHx68sV0?=
 =?us-ascii?Q?n0ZPztqsdvNKSRekH0+UT12rw2REXDBzh+DO9ZS3W4K9rALYu00QouEKy4zO?=
 =?us-ascii?Q?QE8j+LqaYGo5zXI0BmGi5MdY9OdHknfZwVe349wzlImTEI/B76R1mkAPgfaI?=
 =?us-ascii?Q?mb6eez8Y9B0mT51fagw7ILVxPSCRlIv2bRuCVuHpbwdrxCxnAI60rmGtf5Oh?=
 =?us-ascii?Q?guY3jQxg8b114X0cC5rUAapTpfWHwTAuDzkmeaxzRtnfP5X5LzV5GdDf9W6x?=
 =?us-ascii?Q?IF10O5YsMVzNQO+1MYHtjlHG3uIqsv6Hm/bInw9RVE1ZVPvL8l7Cao4dBk5m?=
 =?us-ascii?Q?wkSlCQkQeSso5jN/+j+40+JcpkWMdpgwdLvmf0c3HJOEA9Wb3XzyNwmiLRd7?=
 =?us-ascii?Q?jczLm7OdTD1xn1BlYvevxuNH7pdi0BmqYtPJPUBd7rl6FoGMPgNic0XnoRb5?=
 =?us-ascii?Q?vTMNbiV4akj6qZDrwyq61i9mhWmEJWiW0GMXPsjdQe5E28C/KsCxLP9LZhrP?=
 =?us-ascii?Q?m32SuesHop8QwdfqcgcSRzr4tpqn57Il2usQnmZnjRMQG9vZG+sLFKf4PXUe?=
 =?us-ascii?Q?qP/CRJa6ImrHKlMkk5SU8O8pWbfsCeDoPwasCtU22MTf0LmZ6x4RURMMMwHU?=
 =?us-ascii?Q?DRDG7lohFriDGxARPrTQpavX22lRtB0YRE+Nl3MEcu1BLMbFFlr+91hQTeeT?=
 =?us-ascii?Q?iVRub4osgyT1APx8TzFiBSXB2RaOhUZ20QYsq7rMbvlaTr042LH3aFL01hIt?=
 =?us-ascii?Q?unCHWjNz45kwuP40IOl/MdNV1Im119+iya9R4lpVvk1Y0Y23EsMKW3cCdg6I?=
 =?us-ascii?Q?K2Rm4WeUive4DfbQRrOTDZJog41gIax3jgaC1cNyXY85hAxrg95r22/rO5o4?=
 =?us-ascii?Q?a6CAzM0y9W4//F3FV4WncsfCnLFrXiSdtM+ypLZL6Z5JEm00Ovl/JXHUaXNF?=
 =?us-ascii?Q?U5NchX6jb/+lBkdyP6fEMgWL69C82LgJeyippnL2VS0Fvrb0Rk3cUd3KnsEw?=
 =?us-ascii?Q?ZcfwV6JsTcFkeyilBa51D7m+gm80GR2qv1mlDZVX?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: caf6fdb7-f6b9-4671-24b4-08dd98bb9c35
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2025 23:02:50.2984 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7JcK+96PNPHF6/GNToifAMzPMMBi++QZXDAlH+bMTcVNfHk1Ps041RfsEAa7cgbf/3QjytAxq62VRd1E6YPCMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7080
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747868598; x=1779404598;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=E+Lh0XrIW5C2MlmbwrNKrInS28geYXhbl7EMs5lghoA=;
 b=a0VgWDJeL7coH4US8YiHfacUFKUf3jhPc39l+UEt2dKNPkbT9Rx/YagM
 X0UiK/FHL/GEUrDOYv8zeZXbTsztl0PmGMlZyoYjaEZHh/HkYAcbwe7SD
 YRSwdSAJOPYVF8bkCbTTUVIQlhTk1nK3nHtimJfaxe6TJZX/YU6mK1owO
 fgtVLJHSHh8/TjzLqTfF7qwb5Sj9NPWjx89F+c59QjcRtZ9uJ+tXQ2Hsm
 k0hSR9cpWqXiURbWvVhaF8O0dwk1zsz/pcTc9vWaxutbriZxGOWiDkmJb
 8nAn365fp9jqM4P0tqZIv2XneoF9o2zInwqk6esaIQbdeDGEN1hIarMwD
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=a0VgWDJe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 3/9] idpf: introduce
 idpf_q_vec_rsrc struct and move vector resources to it
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
> Pavan Kumar Linga
> Sent: Thursday, May 8, 2025 2:50 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Olech, Milena <milena.olech@intel.com>;
> Nadezhdin, Anton <anton.nadezhdin@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 3/9] idpf: introduce
> idpf_q_vec_rsrc struct and move vector resources to it
>=20
> To group all the vector and queue resources, introduce idpf_q_vec_rsrc
> structure. This helps to reuse the same config path functions by other
> features. For example, PTP implementation can use the existing config
> infrastructure to configure secondary mailbox by passing its queue and ve=
ctor
> info. It also helps to avoid any duplication of code.
>=20
> Existing queue and vector resources are grouped as default resources.
> This patch moves vector info to the newly introduced structure.
> Following patch moves the queue resources.
>=20
> While at it, declare the loop iterator for 'num_q_vectors' in loop and us=
e the
> correct type.
>=20
> Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> ---
> 2.43.0

Tested-by: Samuel Salin <Samuel.salin@intel.com>
