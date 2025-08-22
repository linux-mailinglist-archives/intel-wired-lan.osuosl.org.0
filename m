Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 81687B312DE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Aug 2025 11:23:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3519360AD1;
	Fri, 22 Aug 2025 09:23:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VoM_t8osfHiw; Fri, 22 Aug 2025 09:23:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A131560ACB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755854621;
	bh=eI3c+5lQtx5Pp4R086wPkw/baDUn6WqZ6AEIxDiABJE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ml2g2wewSNWmsjH3cvmHkBp5xaNyjuHb8Tm6WRN5L2t8IqCqLu9+1/6m/5giS1P4W
	 2liT0MbLnNF0eZpNeuULAgkYSggqh22BJyKdRbLfwrXQzgV7/tGhzZYBe7UTXuVoCi
	 xzIqROxN2/bmCzGrExEJ/CI1WYKXnx1BHzEYnMNZhd0AzouGTHjj1yYuFef9BsrJjI
	 NIX6H7j/OZ8uLufzWPlagTlf4T7bKp2XWuF082PoVMJK2ahfUiDUwRwEmLvL6f+ffC
	 PeDZZ7oX9f7dlFxl2CuEPkCPHJ1nVUIFvPG4kd4tuhS9K6fFcU3SDC/bWacxipr09g
	 JyHKhy6KPDUZg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A131560ACB;
	Fri, 22 Aug 2025 09:23:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id DAFC11C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 09:23:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C520D60ACA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 09:23:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2nPpqjOpDZRI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Aug 2025 09:23:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1FC9E605FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1FC9E605FE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1FC9E605FE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Aug 2025 09:23:39 +0000 (UTC)
X-CSE-ConnectionGUID: JkCZRdRWS4yCMeKedkOOkA==
X-CSE-MsgGUID: sFVMxQSyRPKt2aLnSrUMBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="68432382"
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="68432382"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2025 02:23:38 -0700
X-CSE-ConnectionGUID: vpjaCOiTQGKGl5cm166ppQ==
X-CSE-MsgGUID: qflMzo/pSNCCC1NOaMYhUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="169027883"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2025 02:23:38 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 22 Aug 2025 02:23:37 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 22 Aug 2025 02:23:37 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.60) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 22 Aug 2025 02:23:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HzQi1JfRaXOr+NyqTrUFvHEiodU9/hZRZv2bc7I2xUq6wzNb4d4lAr579vEbtohoT5HSjmYk9B20+gJ5KF7nUw3AXir8Nzb6BTBCAZbLSGnKpjYSQ17QRDDfRFEyR57lRnEgq7Wcuo/JfRYE24+gUPknMIe1VJbHg9iGgn0Jkl00XZt++mSy1UHkUUnie//xe9zd2kR3D0JwAGxJ3ZaWtzK4tezcj3x7hxb2fGYAe5CdtJMD/lQA+XlxKHK1kfNhUtxfDl8/L/wDh0UCdXtRb6ZLfzRSvaoCVohujiJxPihlz8EMJ8TRWGFojbh7FxfqoWJ9c+y/dbaF1FcE96Zx9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eI3c+5lQtx5Pp4R086wPkw/baDUn6WqZ6AEIxDiABJE=;
 b=bXoQdkyHPEPe0SLwXAwzwJk7aq0zDg3db737tsQxpobJiYZ/fzXex6wsVetPsLsPnxLGwnO++EbYE+W5romp6PyYEbfMUgGcNuCDQ1o+QT+tZW4TAnWLGeFtsAAlCOcUhtfN/9C7xe+bvMWv62A31MeWv3ZPtxkp+hwotv1HbmFxCaTIU11CL5iyl6wVcS/yPD/yJn6sbj1uA6LA19M1v4Wt/ZrSgo0nFPXLGGQeGxB07PShpNCaarLUSU0R7apL1/sfdltZyYZlr9sCQoCWTbrgKIPbuQfEfOOV+lvb7fIfiAY36wM5bke+bV2lxheVFc/8M4kUz+dgOjbcXR3LVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM4PR11MB7256.namprd11.prod.outlook.com (2603:10b6:8:10c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.15; Fri, 22 Aug
 2025 09:23:30 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9031.026; Fri, 22 Aug 2025
 09:23:30 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Chittim, Madhu" <madhu.chittim@intel.com>, "Linga, Pavan Kumar"
 <pavan.kumar.linga@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 "Nadezhdin, Anton" <anton.nadezhdin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v7 1/9] idpf: introduce local
 idpf structure to store virtchnl queue chunks
Thread-Index: AQHcEy+RKnrTVq9dFkefJTY79hXQXrRuZl+g
Date: Fri, 22 Aug 2025 09:23:30 +0000
Message-ID: <IA3PR11MB8986F4E37360430BF937A210E53DA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250822063215.3911-1-pavan.kumar.linga@intel.com>
 <20250822063215.3911-2-pavan.kumar.linga@intel.com>
In-Reply-To: <20250822063215.3911-2-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM4PR11MB7256:EE_
x-ms-office365-filtering-correlation-id: 95a6b41a-2996-4b02-765e-08dde15d8f4c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?kodmMMT64c0IWZEq3RoYp/kytxmsSOLajyX/qnlDo0/E69Dwr856OSH0wbyT?=
 =?us-ascii?Q?qfYrKLV5OlHDgRegZWlV/XwJ0c2X5Q/5anDBL4SRj8Gs6VupP78YhiLa33I/?=
 =?us-ascii?Q?Otz6UQ84c8Eivlr4EnEvjX0kly4vTnrCy+vyOfFot5BQkluAzTc0KfrcfjeQ?=
 =?us-ascii?Q?/0PKACx62l1JJth9OIVu+pi+/irOf1gWU4O4E3YMwUV9R5qF7gqKLqBLf/xV?=
 =?us-ascii?Q?GALA9LTz51OQw7BQZwBR4dA5wnu3f54PY808QWxHyPZIpYBlPPnQv7epYfWi?=
 =?us-ascii?Q?hy+zci5W9ITY4KguLxlqOawIPMNXH7cXD3sC2ZNJ6my3RkNLC+BEVFXUn7cH?=
 =?us-ascii?Q?Uxt/hpCVg+EcdC3LC7AIbbgbfqIKcJve06cvRXG9KlhCirOGcps9Yvzimg1o?=
 =?us-ascii?Q?ZfXiECWqQdtV0pXle1RJlyCECt74yebizpw+WZd0DpB06t+FsZSu4uex52to?=
 =?us-ascii?Q?VvnZUJkwa+QvfiJQU9KOleQv6o1sJk4AAnmyAYco54OtydszndtK6vGszWx1?=
 =?us-ascii?Q?XC2KIecbxWmRQpubBJ7pFfq1ub+qvUVqzJ2dIhGupxP+Lb6fpiANWO0qp9XQ?=
 =?us-ascii?Q?wbmY4LbGOEWkP2c2Ht/DZ4oyYvYhl1eVFYiyZ5NESiCuz+AGjJtDf/QHHB3o?=
 =?us-ascii?Q?rxQzE5+ZBIqJWzNsUBhVFZ4DOUS1OEnW8MMTkb+VIcYGd2NwWpfpZWmTrLwN?=
 =?us-ascii?Q?VvWQEUgqnVhb4IqLA+nYMoqFULrGzEdGSZeE83N+Z2qZSz7JGPE7qg79qIhr?=
 =?us-ascii?Q?dZ31sOSJVcwailmyIa9RbfrJqthMWKcElz0q4kQHJ5x3clrxm01u6mxoLXYh?=
 =?us-ascii?Q?qXDmVQdx4CdVze4eLYGRDN5iQEDvNDGlwRiwsK8kptQfGwm6WthSgCwLRYiI?=
 =?us-ascii?Q?LIXLzUvTuA7zhjZBVT8vVAkSGTh9HM90NYxBTGHoNP3iVDtQ8mxqzsbIIChL?=
 =?us-ascii?Q?INpIeKLCCZzoSKpJVMPDoyvaEFqNa0HFGTQGLa8wi9O3PjZyIqRP3PM0Q6C1?=
 =?us-ascii?Q?orKHPtsVk5ntMmovRu9B6zYnwvKVljmpTDrriFTLUa+Ra7Flu7aYkl4U/5Yj?=
 =?us-ascii?Q?1pbNnHEGkhP7Yfvlu+BJk/fic0fpBadw/m3WhC699BEDOZWu2YL7maK4jN/d?=
 =?us-ascii?Q?VDVoFwTDYyxmWfxN3GtLYNMRNL34TxH6yf/bXwI98a4q1eckRLq4dey6gnr/?=
 =?us-ascii?Q?N2wg1v1AnO6dNl6T6nVqqqlQmvJtToKhH9s8bzvz0o+Ez/orisYY737sRKtB?=
 =?us-ascii?Q?gWkqjbNKWe6w8HfsIQ7tuw1SAAhchIB63tTPNbSjY3xjMx2vp1W3eE7JvZCN?=
 =?us-ascii?Q?bqBxgh4YfeuV/8DOL8so+zD3hPcn7FBuaUf0BH2Ojju5LzlUmLQS2tHSseRX?=
 =?us-ascii?Q?ZK5RSz/RmER9eGH9hxFJlxR9vyxADdSMxdeCo7TEIxs6xrmsH2Y7mPoYzSUw?=
 =?us-ascii?Q?nAbzXyWaefNyle2Uf98vRuxwUx7tYVjTsh2amSd/y1pwlpVTOF5H+Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bxQ1cYneZix9roy5le7yDuzhpnvNC3YBTqOzQR3SlwgjDrL/X4m1UDZRHj6U?=
 =?us-ascii?Q?Gf5HEeZ5uEcCFsO0vdmxbtHQuKlL4h3nQzdsaA2/me3KzaLGqFTL+eGQRchD?=
 =?us-ascii?Q?o+QL6j0eD6m5QCBQSFhMrs98EbmoAQkoaiOcllqTwHrUbtgFs3M2jgeTpBWY?=
 =?us-ascii?Q?TVzUT4AR1GsgtH09w9GWjbDLhxYzbjQN/a4kIb6v4LUGn0Wd0X6ZmmWpl6vZ?=
 =?us-ascii?Q?07kkGpFUguAamGeU5Hnir8EmEj0xiqmb7DNFzw4kuj8/71Svng38IzzKria7?=
 =?us-ascii?Q?2aMFpS39qr9a+rOVB/rObFOeM4w1OD1SEYI/cqnXQ1PkSgc39yJucfKuTr/o?=
 =?us-ascii?Q?jVM2IKTn0XsD9MN4D4tQ8wKMczIDVzYStI2OAE1JTa/nJgFsp2uQPcn67Uxd?=
 =?us-ascii?Q?CxOfdRE5U6e2LbUu9YPRd+8S9U7fK5+lvuBo0AIMpuGHF/Aee7WE7it605DX?=
 =?us-ascii?Q?fwM59X9EzSsCNuQCPgU4rPQngQZEQf2fd/NSyKvzOGgMjzZ0ExUO6p7iCeKG?=
 =?us-ascii?Q?AAeh4L+8ZdwMxZRmCbWGjoh8fdwn3CGe6B6c7j5d8GR2RwANlQSUvAj5fZ68?=
 =?us-ascii?Q?AdB758zFlTkKogpu18C0yXxvwxrnMqk8nFAvvyf+3Flm1djMZa38fn/3K0pA?=
 =?us-ascii?Q?GNbpGZkUJggnOTYAOSBM5t5GDeaRVVdXFSzO/enUhR5hGviipaismgF4DK5I?=
 =?us-ascii?Q?cEwB7FzW4SfP4GRdnyEJmkBGRAPEdXNpVp2UTFevWTJ9jYZ6sfl8Wme/cUxB?=
 =?us-ascii?Q?C8y8groArHUVk4z+LlpdnkzLD+1SDpfq8i85uXQRWtcdYYovHnRqYWEKGh+H?=
 =?us-ascii?Q?kC+yFjY6v+ieNcmfVoeDVRNuGP4s5wI1+xqS/TZnvtvAvgOkpfjURKB2ncQ8?=
 =?us-ascii?Q?1zCjG4sc9tKBpkAJ5Gs/uj36tP4dKATnKjYZpc98lwEcuF7zQUQU3LiSzC6s?=
 =?us-ascii?Q?g2ne7BDNIFp+Ufz2nP5pWjLkMxbwj+/yoIdCuj+0H0Ud0yDhubNvx2JeNZY4?=
 =?us-ascii?Q?/bWDXF3TlktvLtpoiVEb++KBXcLTYRM/c0s/sAJpFyulRm0/YpZJBDuO8Rdw?=
 =?us-ascii?Q?7rG2SpwSF/nlu/mC4N86DKgPL/YcS+FYdOBTO3g3Wx2w/A2e28c69brAOwvw?=
 =?us-ascii?Q?LN6D65nMRS9FXtJCFSlK9O93ILDy1jrS1jlOlKIQEeJPPH+tENHtYwJWuA/C?=
 =?us-ascii?Q?5u7JjPYrgEfrXHB4FgSlqlQ0pxBfUzeYawv3hVbraCvvfBRX7f/chx8Hj32V?=
 =?us-ascii?Q?4VReSrG95Wl7jUmLEP8zGF6gP+Aqk0ivFAdm3gGP7jLQ8DHGRwnfvyFD15bk?=
 =?us-ascii?Q?hZz3AJdZ/yIO4RBugmgba1HtjCjf4AcrgPYpjcNtP7wziw687ksD9X1wQxNX?=
 =?us-ascii?Q?P3cLDKKodjKcVoPWgAj2WkOU+j2tlk2zzorQcP5WO8lvbvAVbcBuhXrFidwh?=
 =?us-ascii?Q?NEjq1RwFZrt9G+Hxs4Mt118ocRltlxg2xKYdOa3l+/KKa02hGUU4VCdSDMHz?=
 =?us-ascii?Q?CSnfk3fofEQRd2bNrn0RaXyghggTDY1JMR1oBnBClA2nE9p/lgZ/6L0WV9MZ?=
 =?us-ascii?Q?4pfUVbfoGf7IQktF2mlhumPm8nKzk4IfHHk/gLMSU8Dr4l7lJo4rufXzgSaX?=
 =?us-ascii?Q?/A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95a6b41a-2996-4b02-765e-08dde15d8f4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2025 09:23:30.8684 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vFBWq2b+n8nM7Hvao66aS8wC0oKsei2O6OT0Wfm+xbZjt3gVpTj76itSED5D36b+si7E63G+Cv3lIgWjMMbXIKyBxtHZJSh5PyFBnZQfjsQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7256
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755854619; x=1787390619;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eI3c+5lQtx5Pp4R086wPkw/baDUn6WqZ6AEIxDiABJE=;
 b=BN7HmEx9aWL7dlKnLicuJYXC/EbkF/jLVNFdxpfdORalQMPzgw2AtU0J
 WOSJp8cfe/5aKKfjshkPkh1/ZHWwzUm3+ikyejVx457efV6MVKBhgedus
 WK7UmUf8HI72aXXT45DuD01yDFj+jbhM7TygY5oR4HycqKfr8VtPoRQw6
 lEsHrt+5HTYNWenZQ109s5BbulsPS1az8MyWM3410Y6GkS43FEUV16FhU
 p709JQXmJNjSOb0OYCt92fiLbUrpOfbUA5w0UFIoxGa27Zsb6UVGN4U6v
 uTuhRxE1mMYgu+BMLwx5MfSQgjbizPewZc4MAZoogEWr1Esw27vIGCvCV
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BN7HmEx9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 1/9] idpf: introduce local
 idpf structure to store virtchnl queue chunks
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Pavan Kumar Linga
> Sent: Friday, August 22, 2025 8:32 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Chittim, Madhu <madhu.chittim@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>; Olech, Milena <milena.olech@intel.com>;
> Nadezhdin, Anton <anton.nadezhdin@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v7 1/9] idpf: introduce
> local idpf structure to store virtchnl queue chunks
>=20
> Queue ID and register info received from device Control Plane is
> stored locally in the same little endian format. As the queue chunks
> are retrieved in 3 functions, lexx_to_cpu conversions are done each
> time.
> Instead introduce a new idpf structure to store the received queue
> info.
> It also avoids conditional check to retrieve queue chunks.
>=20
> With this change, there is no need to store the queue chunks in
> 'req_qs_chunks' field. So remove that.
>=20
> Suggested-by: Milena Olech <milena.olech@intel.com>
> Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>

[PATCH net-next v7 1/9] idpf: introduce local idpf

...


