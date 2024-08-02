Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F08E945543
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Aug 2024 02:21:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A46682107;
	Fri,  2 Aug 2024 00:21:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8KXwBLxCyydf; Fri,  2 Aug 2024 00:21:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C0EC8210A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722558107;
	bh=uXO2p3xLlohP8nK+Nd/4WiGhu5LjgwleAWPbVL/PSNo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OrwJqzO/i70mbepuO6cSkSmDcuvu/iROoD6R1kYKE0D2jCGAOYXbhqgH2lDtFxF7R
	 pTn98yADojgYesNHm2RHYcxu2tnW47v2j6HBm5hOWjTcrmwuOiRCRD9hPqnMr9ty+s
	 nE59cg+jwsGILvKSD42MG5/1WSNtRRwLUk3KQ0H20TuJfSt2EDovbTsix0cLBW3D+y
	 tncQ3S2M4ROmve2XUDszJdz3hTOgR/pIatAvH74ozn8Nr83HVslL655eJFzwJYQvWf
	 e+TyHYv+qSrBSulFLS7TqBAtoDNfHqGhA3vNt8Go+r4+KgniWlrvo55pY4WrSUSBfD
	 w6oMZE6o4J7hg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C0EC8210A;
	Fri,  2 Aug 2024 00:21:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 950811BF98E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2024 00:21:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7EE766065C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2024 00:21:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sEdQhHO8_Mxs for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Aug 2024 00:21:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5CEBD6064C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5CEBD6064C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5CEBD6064C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2024 00:21:43 +0000 (UTC)
X-CSE-ConnectionGUID: cH+0bIWLRNGI3Kbim7D1sg==
X-CSE-MsgGUID: ojzfKcwJQlOJSZmXoaDRWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11151"; a="20689125"
X-IronPort-AV: E=Sophos;i="6.09,256,1716274800"; d="scan'208";a="20689125"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 17:21:38 -0700
X-CSE-ConnectionGUID: yYKrdCgkR8Cy21ptKi8HVQ==
X-CSE-MsgGUID: hP17ehHGRAawEuc/g2PVZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,256,1716274800"; d="scan'208";a="59327116"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Aug 2024 17:21:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 17:21:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 1 Aug 2024 17:21:36 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 1 Aug 2024 17:21:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XnJQnhvS73ECybYWUqa50v1UvNvwOx8wopQeIjEBDoFVk01dNAGEU9uieHPE4SHszBcm6clS+dILKXYGHADu1reGaQot4cH8zyJvjICvKR4wd/B68+P3OhLhRhLClOOIljyFfg9ATHiceHSLr17CR3KaW0HQZyRTqAenOFYE3UgKbSQdvsfexLAqjuNyxi8p5eFD6BBlnG9xgZmdSvuhgsnZBJNwZpL0rPPdhP/mxxAjGrO80YRHBbZxiN0mAgXKkLQgTTGDlziTSXFxm/16QPFf+5GW05pT3zxCj75f//RGbJy+FXZ5GW4LgHVWuLUmJ2Xhu9olbBo7V1dhX9K28g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uXO2p3xLlohP8nK+Nd/4WiGhu5LjgwleAWPbVL/PSNo=;
 b=C2KeW/aRwkCTHSzwHSm/pJ+IwFFZc/Rb7qnUNevaXj2rxH8xf8JgJJWfkCakzFxLDVg0hJyl7ZLsQj98tHWwwsUNIRKty0gn33D32Ea3NzxwYwFqpNbyFQC32Cu82bLW7vzOuOPrlV7Y4UaG/Pw8GR0rZ2zg2jZYwFrLpy3ii7+hwyE17oeMXAMwfLCK7KSNJ3ia5cNOMZSskUt1LWiLBzg+ZKFFzeJ4+HIUh7sfUGg/QnEpBBf/00YK+lj9lPIAc6+0qr2Eq8u6sgTAmU1Hp1JhGMnKeKTB0r11R6FFep85YQs8mvWpHKjVo2L71llqBBHG6TZagZZ+OB6by7VjXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by DM6PR11MB4707.namprd11.prod.outlook.com (2603:10b6:5:2a6::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.23; Fri, 2 Aug
 2024 00:21:33 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2%6]) with mapi id 15.20.7828.023; Fri, 2 Aug 2024
 00:21:33 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: Simon Horman <horms@kernel.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>
Thread-Topic: [PATCH iwl-net 1/3] idpf: fix memory leaks and crashes while
 performing a soft reset
Thread-Index: AQHa4ZUOr7MrvXrOOkabck71KZKNxbIPekSAgAOl1uA=
Date: Fri, 2 Aug 2024 00:21:33 +0000
Message-ID: <MW4PR11MB59117778576257F433152BE3BAB32@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20240724134024.2182959-1-aleksander.lobakin@intel.com>
 <20240724134024.2182959-2-aleksander.lobakin@intel.com>
 <20240726160954.GO97837@kernel.org>
 <870cd73e-0f87-41eb-95d1-c9fe27ed1230@intel.com>
 <20240730163707.GB1967603@kernel.org>
In-Reply-To: <20240730163707.GB1967603@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|DM6PR11MB4707:EE_
x-ms-office365-filtering-correlation-id: ecbf7655-399a-4826-3c44-08dcb289107a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?nLZGJZVDfQ+xp897ysRGw8kI7hEsSKxmgUPTkWrSI9ue/o5rLFzOt8tQw9W3?=
 =?us-ascii?Q?xCIfNlwGHccHNQuURB9sWIO3rmb95/2J13NPdreEUFRts1hyPPKHjZAOgf+O?=
 =?us-ascii?Q?T8Wcs4hENJzs++Btlk7zaxKLWDeSXO4CeLx0k1opDMBhcvpmOioMdjE10SLl?=
 =?us-ascii?Q?sG+n9hqnOULjFkD38TFuzNBLRKI5ixK2dKSEK7sgsuzVKqw8FWYirqxUudTg?=
 =?us-ascii?Q?/YM8XYYeex7Ce3wRNvaFg7A87VoVNEHlLr0iBuYBY4TL+q6AcXJk9rz9Ehi8?=
 =?us-ascii?Q?x0nP8z6SHd4tpqmGkwEZJzXf7NfbORTbjlpTXq1G3llGPqv38iu3HFb7d6Zp?=
 =?us-ascii?Q?y7GMKl3jyqOkLvuCZpbmndiGm6sjzwVWrAUeHpcrOWdiV9Q2Nv4/R62X4Vps?=
 =?us-ascii?Q?vlIEGMzxFViuqQ5NCf375f/SbexQRslfbuz+Kjd01zBsRFHXfd5nI5DYeqr+?=
 =?us-ascii?Q?VsAu69jnRXp9+v0ZXFhyXU3a3QRkEqrxKbXBpLzigSic9bt5oKzP7twm95FI?=
 =?us-ascii?Q?ez7QbYee31cgkNjkjvbWcbM5M+gN39Mqxl5XmxlWxnZyQVY2pxKYMnTOFVbt?=
 =?us-ascii?Q?+IrW95yPZ4V9jv4vA0D7a2jggTCQISoZ5GUqofym8XuK8HptZhax9kCEkAQl?=
 =?us-ascii?Q?MonVOA0aNIDT5aj1cq4/RW7qMR2B7xwcfuaHVeMbMeH0SzCz7MAx7U6Mx6ql?=
 =?us-ascii?Q?+C88N9BE+jItVey2s5PMqlFLoz6U2IafGqVKuB7xEQSwzRi1/E6YGs+iUeEV?=
 =?us-ascii?Q?a/Qe5jrDT60p0bZD321gqziqlPbMo1gLlZUL9eL8UXKPnz0o95ndhajdQDxA?=
 =?us-ascii?Q?6D85t/wBmce/kJNJfEQEbjDqNXgpBzbNnA5cqpTD2plCo4BrcyLlXzjsH9Zb?=
 =?us-ascii?Q?omATFv6CdGhfAdpE/v98u5B84zh/8W9Sovd/vxjCJ782DdXbvAuxWLQSIT7w?=
 =?us-ascii?Q?ND3HEIwW9ETtl1h8SxwOAz7BGedqg0Jjs/Jc0oTbCivmiu/59XoREudupy90?=
 =?us-ascii?Q?wOuT+1xOEiBMcADu9hQpccY7wqs1R0O5mAdHSn4I/BFhv0lmhyh44KfPctkX?=
 =?us-ascii?Q?2YlIs15MhjnrKFi9ZD4wMZ9CbNYOgM9A6Ra/anNeCYRD2z6yFEEPneMoUn7J?=
 =?us-ascii?Q?t7BB0PBWnMR7ninb9pwIsbkZVw1n5Mn5GBBg3nWfRHvc624T3aIQnrWS5qRS?=
 =?us-ascii?Q?s1dh+kZeQeFshrrOXi/nJcypusZB3Iqg/mljoshU7euWfxopOmsphQWgu60r?=
 =?us-ascii?Q?R5vexpv7ICrffx3RvtsOBul8pGNQLNrnL60zZG9JWK75h2V7H/IhJNvVZpFf?=
 =?us-ascii?Q?8HkanwCOaFQRmPZhzt51OKeQhhlbzCcVacBQDmVmmaKpjyY4eycFyfQ2PZCa?=
 =?us-ascii?Q?QWCX2cN/8O93wDh/hGl9hnjnWNJgOzytrix0n24xGO2fI6utOQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tSTGcaTBRZIRqvJL1d0vEzDTR6ojenz7Td4B6g/pptewiaSsaGNnWL4B66CJ?=
 =?us-ascii?Q?0jnvermkZyfvXXgfT6puWUnEv0ar/8ae0wAWcrCllipsmxc1+C89UsO+RUyj?=
 =?us-ascii?Q?SNd+dMQt9GWZ0vY6wOxDQ1PJ92QqNKS34oX1xUDayHWqTaj+MJs5a9HFBBrT?=
 =?us-ascii?Q?mmY4iowrJWGA9plba4bHM+8tyhlkrDEKSBTxX+8LpRB+pGafsOTQB05W9GU8?=
 =?us-ascii?Q?dx0mTAh/c5L34bHQc6rRjq8d1VPZmLfEfeNcOiJPO1iJZt/IuxV/TPRRGf8b?=
 =?us-ascii?Q?VFdw4EZ33VpTDuqCfKQ+jBEcTavDodollBX/lp1AXszL9uVMFpPihPu+pmrE?=
 =?us-ascii?Q?A9VQeeuq/BELqUegJd9sOXSbhm+O2j03QOjzRJjq/GtRqStBpGj5CYLgbAmG?=
 =?us-ascii?Q?y8FioTGR3RRPfpQveuJJkekZxHevs98VNoTziXJtz7cuXYT+0RHwaXPesTT8?=
 =?us-ascii?Q?It4h5HUuL4/ZSWMQGp4eH2GiqbDpz8S2kIas303IRSm0r+DFPvDCYDd1FqVZ?=
 =?us-ascii?Q?hw23mMwKNp3A5szVZ9LLhIKVUMFU9XfVFVVGt8UiszPQdLDUbfycojn2CSbA?=
 =?us-ascii?Q?5sAx1uGjRDR0HApQVcQtJffO5foLP1RH8y2lLr/+L6oMgIfvEjJI3a+uowwk?=
 =?us-ascii?Q?k++/Gc3jFiEClLyZ90Ho14fikPuIsm0ExWy70IIrrpuS8zJCArjgkueH9FDp?=
 =?us-ascii?Q?gIE5Vwp778Hib5qMdpppZwS5tihgzYy8wOQM+fjbgAjnBfW/i9UZYrh8e79g?=
 =?us-ascii?Q?qGMbpXutBftX7v+M/Pt5ObAg1wV/Nkvu8wYqhVyRyMd3oapjOpcRUPzmI8ZB?=
 =?us-ascii?Q?1IahpMC3a1Hu0XDt9AB0dWRViMduCi0RIc9V3pC8hz0sku/rjnvcm49oeZie?=
 =?us-ascii?Q?iPnBf0eJyXQE8i2+9tsvi61/bNfFXuGdQXcbO34vIRorvlA/aXb1CFai1GbU?=
 =?us-ascii?Q?+FEgQUBYWTHGXbrOBZVeY3YoYrbup+6IHj/cJghX/d2c7S4CtSL/bhVcHhI8?=
 =?us-ascii?Q?QQCtnkzzPx+ATLgIm9SxgaNUEbduu9On7KsSSW3k3HXLc59j+Ar7/1Ku2mag?=
 =?us-ascii?Q?Jpme2xXY5SDQKmkPypHIeNZrKCtSeWfaPTgcyXUqoC5DvIcvuf/OgXtihzJS?=
 =?us-ascii?Q?4puwOJivCj6X+S8/bPKpUGckcZKsiB8peUyUSQ6E4tg17DvI+3qnO8cBNXwd?=
 =?us-ascii?Q?0b/cBOSt5tiASObYBKK+7M4rVdhD3RvqeLBSjWAp1itErIgb/V7F2IcoMDOh?=
 =?us-ascii?Q?09Q4SqiEZ5Y3Zu7T+0FZ5m33EynQRlJgriGOzM1KKv/9T2OVsfXqM+NqEXZy?=
 =?us-ascii?Q?YZzTf1hkSwvGP9Kj/VhVYLnQ0FMRtqKmxwuaaw2OyW3n098WCfU7atODi5Mn?=
 =?us-ascii?Q?+oqOcA2EaA7fuXPecPfjhgxkhKRzj7Q5/HWOWnF1tFfX2YzLYNK8VJ6SRgm7?=
 =?us-ascii?Q?2jAqBjuK9+MvMmBVVqVzNqPKk1wvSqn/n0fmvmiQsR3t/yoMeIc/YD4HZKhZ?=
 =?us-ascii?Q?/evyzjnWx1vLQsbMosy/bnUSmcK1Rz7Ucz5q8oURCgyXstEBaHqCIgjxpnmk?=
 =?us-ascii?Q?7DnDKrczXLOYhxZPvV4zC3motVMXsQlWKGkfIHUj7I8wVe/QyBd50e1Zm7Yp?=
 =?us-ascii?Q?3Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ecbf7655-399a-4826-3c44-08dcb289107a
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2024 00:21:33.6323 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ro4YYXr0nRsTB5DFXd+AO7BH2nNXZf0ryCliA8heTn4YV32RZWlSicKSe4RPM0lOOvSVHJOagqiyHvkpD5VSRv6g85wV7mtMkZhV5lSINzo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4707
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722558105; x=1754094105;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4m3LN5+McGSSjJtKeHGNIWMBB2ObyH8EPKSsI0TVqAk=;
 b=EAhl3unYMq5lBN4LfUoIdikTO8E4/s7QhmXXggIks2aUO8c6R3VRu+0T
 pcAdTgnmck5cE17ijLLgX46oxR+VOQ62ERrumh2ZdJVJRBJBBMRkmxOlj
 piiF7OtxRvfzIs58XEn2bGF+W+ouX16y7bEt7xGGJOLgjGyuDLoGKHvyA
 wcnQIk1KRgbDGEunvsktSIJho0oYTOX3+0aJJngfLSrSwSdPhRFAbpoZZ
 mPgvTH7IVTZNujGDnCDPYE8cZySfJ/dSeGytfRpjv/5smpIhf3bPgXJEW
 7j4wwdSKCp3oU0xN5hlhfIVWp5nZJE9z+HmiRFPlS5GwH6OVhdMA9joV+
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EAhl3unY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/3] idpf: fix memory leaks
 and crashes while performing a soft reset
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
Cc: NEX SW NCIS OSDT ITP
 Upstreaming <nex.sw.ncis.osdt.itp.upstreaming@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Simon Horman <horms@kernel.org>
> Sent: Tuesday, July 30, 2024 9:37 AM
> To: Lobakin, Aleksander <aleksander.lobakin@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; NEX SW NCIS OSDT ITP Upstreaming
> <nex.sw.ncis.osdt.itp.upstreaming@intel.com>; netdev@vger.kernel.org; lin=
ux-
> kernel@vger.kernel.org
> Subject: Re: [PATCH iwl-net 1/3] idpf: fix memory leaks and crashes while
> performing a soft reset
>=20
> On Mon, Jul 29, 2024 at 10:54:50AM +0200, Alexander Lobakin wrote:
> > From: Simon Horman <horms@kernel.org>
> > Date: Fri, 26 Jul 2024 17:09:54 +0100
> >
> > > On Wed, Jul 24, 2024 at 03:40:22PM +0200, Alexander Lobakin wrote:
> > >> The second tagged commit introduced a UAF, as it removed restoring
> > >> q_vector->vport pointers after reinitializating the structures.
> > >> This is due to that all queue allocation functions are performed her=
e
> > >> with the new temporary vport structure and those functions rewrite
> > >> the backpointers to the vport. Then, this new struct is freed and
> > >> the pointers start leading to nowhere.
> >
> > [...]
> >
> > >>  err_reset:
> > >> -	idpf_vport_queues_rel(new_vport);
> > >> +	idpf_send_add_queues_msg(vport, vport->num_txq, vport-
> >num_complq,
> > >> +				 vport->num_rxq, vport->num_bufq);
> > >> +
> > >> +err_open:
> > >> +	if (current_state =3D=3D __IDPF_VPORT_UP)
> > >> +		idpf_vport_open(vport);
> > >
> > > Hi Alexander,
> > >
> > > Can the system end up in an odd state if this call to idpf_vport_open=
(), or
> > > the one above, fails. Likewise if the above call to
> > > idpf_send_add_queues_msg() fails.
> >
> > Adding the queues with the parameters that were before changing them
> > almost can't fail. But if any of these two fails, it really will be in
> > an odd state...
>=20
> Thanks for the clarification, this is my concern.
>=20
> > Perhaps we need to do a more powerful reset then? Can we somehow tell
> > the kernel that in fact our iface is down, so that the user could try
> > to enable it manually once again?
> > Anyway, feels like a separate series or patch to -next, what do you thi=
nk?
>=20
> Yes, sure. I agree that this patch improves things, and more extreme
> corner cases can be addressed separately.
>=20
> With the above in mind, I'm happy with this patch.
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>
>=20

Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>
