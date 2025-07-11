Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD03B0138F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Jul 2025 08:28:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E40FF60F74;
	Fri, 11 Jul 2025 06:28:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JxauNxY99R3I; Fri, 11 Jul 2025 06:28:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A32160F79
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752215335;
	bh=U3R2M/mcko02SNvX11ij8wLabDgM7go8RDqFQYoias0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zLDhkhMKs2cBmlACmSOEIR4E24cyAmftGbO+iugErpnP0OqSigJdrfLWKW+WvAKZz
	 +nYd4LmvaPfdRcrYKkHVZyyqz4Pg9ToO+kPY2cRhSzkjEurfhX98H2HV63/NY0Xd9N
	 h48z7dGMnXDFEIAhbG6k5JL9Rlz6MLiV0drQhijGr4HaPXqkuC5UEMKrIbulOeEz75
	 DxJeyvgL2TvlyktuA3DnU2dMrtGtYdqO1ED0t83lJSIrPJ7bKuCmGYS0OUKebjakso
	 yvMRcXTdbBLIERzKiTF2iJyLtO4xGngYwVdiiox7p4OpvORs+Z0yxmmkc244reOlAx
	 eBknkBRlgII8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A32160F79;
	Fri, 11 Jul 2025 06:28:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2D4611E1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 06:28:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1386B60F13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 06:28:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id plCs2FozgQjD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Jul 2025 06:28:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 75F2060DA2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75F2060DA2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 75F2060DA2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 06:28:53 +0000 (UTC)
X-CSE-ConnectionGUID: wH3cinTvSBCNxZRDKKteYA==
X-CSE-MsgGUID: AMmuDSciS3qsiVTwhrI4tA==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="53727693"
X-IronPort-AV: E=Sophos;i="6.16,302,1744095600"; d="scan'208";a="53727693"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 23:28:52 -0700
X-CSE-ConnectionGUID: 0M87XiYdTwSEqCNO8Prbug==
X-CSE-MsgGUID: D6RFcqkLTee2QUzXjqGFnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,302,1744095600"; d="scan'208";a="160624328"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 23:28:52 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 10 Jul 2025 23:28:51 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 10 Jul 2025 23:28:51 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.76)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 10 Jul 2025 23:28:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J2oiiI5YDHbUZZsBD8p8BBts9AslgjeT4LMO3YStngw/+5863M7QJQWdDoSNiz7Ckpkm94+TqJzQDgnLkJxJcUgh+lYgRU4qxD9r8DrcXoxi+hxUOcZGHY5/5jQZiO/3c2zQXqvhyXGSo6kxGtB8Iw3BcszN9SJCbtwzrie9ePSmnIXwFf8X2Q6Fy1MNFKTLqdqyosJsnQn80TF+jkMSsj8pHHEYrmhhl5zFjZJ2PZQavgEpG29lZuugi2kVKnB8FevbqZ4khImikrDEvN1BMZ7htMxj4HpD/nsvSCuaKYzbx+ZuYLQnNCZzCJt8FqtHk9u0FQjfhqZOenOYWQbXew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U3R2M/mcko02SNvX11ij8wLabDgM7go8RDqFQYoias0=;
 b=RVlZ/wJYgx1DKhfxLOv9qh6x9bWVb3/bS4xk/rAbwYb52uKebrnCI4M1xpSLotQb0Ko5wv60FEuCWgovmuLGDhxz3CFocnjvcAx9lmwwbou3GoehWCsrAZizqRHrToLy+/d0+DPsM2cgtrZ8uJnMq8MziiVb7WdA375OWsjR6n29w7ZgchRltBiwGcv/9eQKcqLwTAlzEUsjhzHyGVndd6cyT6vf/HQ5OtUpJT7tMp+e+oDng+9vi8sFL5QG6lUIjglY/dykpeG6k84z2Rju0ZDcL3e4vdlY83mN/GsfmmREI/7rfIKInRHfVED1ZnSKrZ/5mnFKcrUzUFB6P2+Bjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SJ2PR11MB8469.namprd11.prod.outlook.com (2603:10b6:a03:57b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.28; Fri, 11 Jul
 2025 06:28:22 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%7]) with mapi id 15.20.8901.028; Fri, 11 Jul 2025
 06:28:22 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: add NULL check in
 eswitch lag check
Thread-Index: AQHbyz2AAaVpbQehakKOZf6sXMlynbQsw0ng
Date: Fri, 11 Jul 2025 06:28:22 +0000
Message-ID: <PH0PR11MB50135A1FBEEA1618B93C6795964BA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20250522171657.3784177-1-david.m.ertman@intel.com>
In-Reply-To: <20250522171657.3784177-1-david.m.ertman@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SJ2PR11MB8469:EE_
x-ms-office365-filtering-correlation-id: 0980d9c8-6958-4735-ecb3-08ddc044223d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Oeb2MVVIiXg2pgyMukKpIIPHxF8mUloEEtpzzAM5ou/LWvg0bFVxJt5tDzTG?=
 =?us-ascii?Q?gnht88KV5rJSpv55SK//zvdtNXyQ7kQDVpHOz2hhEAD0xsKSwkT4N8m2d3Ug?=
 =?us-ascii?Q?8h+6SAhhK+3w7/U6BJ5p2oLJBGaoT5hztRCKYwg41UmZccseMXi2sujEVNmj?=
 =?us-ascii?Q?P0aJTSPiEo0vJ20xHscAyzJPZJdRe3pq9SYifaXA8b95gLqSX/GMOP464Mpx?=
 =?us-ascii?Q?gzqOG3lH1+yNCf+G6xsQQWczuhqSjx4N8ee7ocH9/bz2+OlxthuStvfjmunj?=
 =?us-ascii?Q?7uK7lH8MskUhse8mZwxaHTydaek9HM1cU6CSICXkADObwMJGLh+vs/LW4air?=
 =?us-ascii?Q?k1HP+TkQBjPXsxCSo+i90nuk/+H+lAYNKkBhFxX87R+7Nosa4VBuDnna+BM+?=
 =?us-ascii?Q?X+BdA6hkkRS0WBHazzFT472z4E/ygdtotvtpJH9CTzMwOEN2VtsJvUzYwMwS?=
 =?us-ascii?Q?uW46mO8Dqsjg5Jjkag7z2tCJBWA81TUexRwoMs5V1a7hwgvB+r1NFzRq0RJl?=
 =?us-ascii?Q?ObpyfZLgc4pHFTL/rFjiX05qhSpCcfTfRwg7ff5nt3tsjMSBCrSNI4U140pI?=
 =?us-ascii?Q?mzjS7uiWF0XauHgz4G5v4QiVGqd5BZe8eh+lMXeSImBfoY29PCaiBLYvklvo?=
 =?us-ascii?Q?+nlNc6S0fvg5nsdev50ABZxV4/+8w7nRPfKcptIH/nXZNDa3NhJ/nnsbtP5H?=
 =?us-ascii?Q?p4MRQH1WdxaZhvPf77wTILowr+auPMJ/MyN34KjWvGDxAnQqVKdUY+6pj6HY?=
 =?us-ascii?Q?rpllBgXKvI89sUdAfwte9s7yopcauq2uXsk6rhx50JtYV7ZkDIt6BNN6qyF/?=
 =?us-ascii?Q?TlHr7jSFxAkLkrjzLkLKkzp2eRumQuEgLA8Fj7WiyEDzOaCaGflG39W4RHuS?=
 =?us-ascii?Q?V3a9TT2QTFGdj569Z+OX/7pCtpFRK7hwKf+5rp89ujsC0v6SHEDyYtQvdwtF?=
 =?us-ascii?Q?uqs4gp2vINEPAkkoLP5+F+xKz+qzcaAMmSUmOrkIR6lVAf9J+seQN/4y/JYB?=
 =?us-ascii?Q?HUGHiG3kabH6whAatGavADO+i/U9KxtQfYdvOXMy0Xc8nXRCP3otHoLTvsLe?=
 =?us-ascii?Q?nOEPWD5+OUh2U0sbYILAAhfII/YhJxVxxPbG5930BxBYsst53NoTiTpnMPzb?=
 =?us-ascii?Q?q7zgdtuM8yAQTIR7wNZTzjjyal8Hwy6Bqg6QM7iwZ3vqCJ1Ug7BvuyZ/Jsh6?=
 =?us-ascii?Q?pd0wToQXsYD0B/PjUVGK2oUJH8fqnQ6SKq/TEC8PM5qDuaQGCj8FiY3yJFiL?=
 =?us-ascii?Q?Z/13tOsWbM8KSPSOL78zfMXJtSJ2NMxFp/aa9yuqDmC2j7ouMfh0RkI0Wd5c?=
 =?us-ascii?Q?WMXn+/NIRlkK+sYVH+kF+ADlxGhWYfdrAB//73P+GaNPbGktTYiAuG2wwBJ7?=
 =?us-ascii?Q?2smBm8/4Iga6KzGJXaIgNzQvO3dLH7Aao0Q5tFNyXTSVp9oSShS/m1zatiuH?=
 =?us-ascii?Q?IzgWAcj6xIqYSQfnsHHfLAyOHdu4KEn8XjVKZn50Lr/k/bVBQ07c8A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YzKEt4LNo8305b+zGfC3la9NmzHZ+RhwsUeNQugYuW/8BSFN/Fmywt0VM1Nh?=
 =?us-ascii?Q?bVKCDeVzQKUpdKGJw1c93m8ryE28kUHb0LqoZPK8Kur6bJmdB6kszLk0yF0P?=
 =?us-ascii?Q?Ewn+ycZ/Xrvbrlbf/b/H7C9zG9npdiJhe0d/noFhEwJljy9VceSHfCAyFtX0?=
 =?us-ascii?Q?p3rjD2zmvByYyzqgQpMTsOXCPlA9+oLzUd4gA27ST73nDswGCrjHnmS6iKwN?=
 =?us-ascii?Q?0Uebq62nfZI3lGIs3FZ5ZSGHyCYCie4CodZtQRhBxh1qzHtiKOVXrDvs/VEy?=
 =?us-ascii?Q?QMOjbokQsUgag/N1PfkzRLEK8PDwSKTrK9cq2GI4XmXgoNuFsbS4BwPlll/V?=
 =?us-ascii?Q?ggCIoCfNMgLaAiJyR5VcoukGOyw53sqYTi74amMvy7P9OjGOazo0/ZMYu8dn?=
 =?us-ascii?Q?vHVfTd314lmhc2PtSwU5ZOkkpCnQiY71/e0xwBbA4JX7MXSrHPFPPheZi6OD?=
 =?us-ascii?Q?YeicE6ZGfUNTILNPJKX7tI9zEIYzsRpEBBYuUSteqtziKq4q/cf0IoQIg0CS?=
 =?us-ascii?Q?Tf0ln0lncwgT7bOjLH8l45DMR+oQK/p2XBXLbGnT3/vYMRhkxx2H+cZ06tfl?=
 =?us-ascii?Q?GmDQ0T/ibeuji5nQ9V/Vz3IiZhtl5YYyxAQ/kfwSezfd8j8VFCFv30VONOeD?=
 =?us-ascii?Q?a6EaefZixXwoTWrrLfhhX3BX+1DephpYCFquKAMFhCeRs00/n2MVJpEYuVGu?=
 =?us-ascii?Q?OzakHUd2RrOfKH6mSOSLNmgVAB6TKLVdbhKIHm8tK0glGc1uHwIneVBIG/1u?=
 =?us-ascii?Q?6NI8su2aqbF51bg7X4bvUBcgqPhGwv8oXkTXgmQ0t6zctl8QbaDzBQxVj3o9?=
 =?us-ascii?Q?d4DPo4K3v7XIqTqtk9BSKI2iLTirwJUrHL66Y69Gx6HA/d74RJYYJ7w1+Z5F?=
 =?us-ascii?Q?VbkcTTiyyvI6sWrCJrc0xgrB64io05/rLifBGIM9pkpsmIl2lGYxrlWwRBhD?=
 =?us-ascii?Q?hXyLqUMHcAgxFzgZ41b97I/ezE53j7ApNNUcyS0cqQVx4fCgFQC333RfrCRy?=
 =?us-ascii?Q?YTvHO8VPSeEOAvICLU+uuTKbVmFAhU/AJjdYJItrN2oM+7BfITfo66V9YafT?=
 =?us-ascii?Q?tUlEKuQhmI9vRToCvwBz/kBMvvXiOMCb4M4IHRx2Z3h8AQOS40yjK9uWnjkc?=
 =?us-ascii?Q?2ZBAAZ9ulrPGWx5+lV3Gwx4dVbV7CNju44gMbuJbgepOQaXdXocTSSMt8AU6?=
 =?us-ascii?Q?8pg0Knk0zXoOi/ebUgEH4MREn+hBxL5b06ucaFaIJsLqVjoQ+0LpCMQtwnSq?=
 =?us-ascii?Q?ylMM/EVgcqCUrrcmF81XvxgcJeiX/feEOk320yCVmN+zhiR8xhGWLiYIXdoF?=
 =?us-ascii?Q?kjyUvwltzRpA+A9rQDiHuZWn22OZARp5SOLdd4jeEG4omEky7JjFB8ro13Jf?=
 =?us-ascii?Q?asgSYXvTfSgpFdCqEtCQzEdUW4DgpbsuAHGRPpFR+1vxolKjW+WhoK8LvswK?=
 =?us-ascii?Q?VDK1+oQG7o7kpomjR8slzL5Fvp9XtD0RxLHClCQa3DNh303jLvHjxLdnbmPq?=
 =?us-ascii?Q?UGT8pZQSaQ0FoE5fk5PyRQQpcht8mUqNjwn4ve7V5E8dfod6cM9ohASaq5Zp?=
 =?us-ascii?Q?jLN7jzjm86C0YRaADCs1rfVJfXTJNQo7Q2r459wLM7agACZIwPQAtVybyl0u?=
 =?us-ascii?Q?hA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0980d9c8-6958-4735-ecb3-08ddc044223d
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2025 06:28:22.1036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e7LfG/YuHpDuTG8U/raOEbPmUfIAvupyeE0fjmmqJGVUya996I+vH2dYI05dtYDQPPtP3ttstK7K4RtIuB7jfsGUE+UFkj7BA2n0eGrZvIw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8469
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752215333; x=1783751333;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=R42UUFdZ5VwuGqzGQX9hIrPjrPS/xRDSUJvxkCU2rFE=;
 b=f7+oiOCas2b+BYNdb4e/kJZaTrT/2gy+cTCuujD0PWqcVvVPD8U8UWwE
 +JcBfNcoRdvsk0uVGWGMsx6TJ9hIoj5ZwUirJz4LbqZLBg4LLP2KgdYMt
 BUtmcuAUrXM0A2tYiTLEaVCV4KUKsUkiRBTD/0mIUq8bx8xwafOl0uvDv
 ZXuNUV7CrHoJRnWNUxo+zP2Kn6XRc5mlvYU3IdwcIyzbOXBpVSpvSJa9M
 TfO7ZKq515nCfslF2pt9haM0ZgdZO+VWY8M9Et4S6i1eYnOl6TYuhvIC1
 1N+aCGO+5TVMoXEW8GvvrEbdXnZ7LfJ0ZGVkFEXFwcJc9XvUh2uAFS9fs
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f7+oiOCa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: add NULL check in
 eswitch lag check
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
> Dave Ertman
> Sent: Thursday, May 22, 2025 10:47 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: add NULL check in eswi=
tch
> lag check
>=20
> The function ice_lag_is_switchdev_running() is being called from outside =
of
> the LAG event handler code.  This results in the lag->upper_netdev being
> NULL sometimes.  To avoid a NULL-pointer dereference, there needs to be a
> check before it is dereferenced.
>=20
> Fixes: 776fe19953b0 ("ice: block default rule setting on LAG interface")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
