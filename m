Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HXjoOsg1V2qZHQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 09:24:56 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B0375B66C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 09:24:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=gFMKABT9;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F33A380DF0;
	Wed, 15 Jul 2026 07:24:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nQ9JhbkU4R5o; Wed, 15 Jul 2026 07:24:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 69D6980DEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1784100293;
	bh=HaMx3Im2crRfY0G/vR59DgPQmzYq4XeeB5LBAL9Nfdg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gFMKABT91/H4w1DyXn7k26C7Qg5jf70veRhHETHzEXywrgn1LmxnGKtFxAclpr0b6
	 WJvREZjKUpyQjVC412hZuU/gTUk7iOZD0V8n4/DqX6tkpGaJEzZ4hER+C4QIM/EWrt
	 lIEEg3F2OLweVB2fb9Mey9qp1nHCIIoJ6unYtoT23Tjf/1w82ZJTIZs/+JkEuaGjJ9
	 11paiyDHJiMqoBE4/1WQEp8JVCUihAfS/HJ4hirq79DDzXit7rYzlYRsWMeKm5+Luu
	 4dOb2AChbzMjtfXkNOy4gM7oaQFALvOCdxQdMlItC0l6IigRJixk7tX2lICL4AHQDG
	 raxt4WofV/HAQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 69D6980DEF;
	Wed, 15 Jul 2026 07:24:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 56D08203
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 07:24:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 487C540055
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 07:24:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uy25vfBetqxz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jul 2026 07:24:51 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 984F74006A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 984F74006A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 984F74006A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 07:24:51 +0000 (UTC)
X-CSE-ConnectionGUID: lWPaKg3FQXyCNpLnhnne/Q==
X-CSE-MsgGUID: 9vL/VbzQSbuvarIke0ynvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="83716322"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="83716322"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 00:24:50 -0700
X-CSE-ConnectionGUID: azuzFCFDTzSCboR+LpMxug==
X-CSE-MsgGUID: iUBEj5aSQMWe+CtthGjWEg==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 00:24:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 00:24:50 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 15 Jul 2026 00:24:50 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.33) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 00:24:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LztcQ+a2yOlXuZunQ8xloZDCdXc1Ua7d57GSQFhtz1KaZFO+hPLmjf8FPEqZIhziUll3PGxHC4DyJyn/qnKpfroQthhC40sGRh0FgScER1FvvTIyoyGcJTPxW6gRwcIKqcKYHwLOaIddHTAaM/e2KXoNGiktbax/QndC2iKlM9VRXCHCkKBjvnF4tQqRAq7AhGaqRuATwNjMp/bZw5KSnA5zeI+E087Uy1gS3hRViQrq/XQ1Ci+QYtyBoeSvccyqgByYlYQGsP9iGXBdiq6q3GVNF2InvbEEnnyfLaEk8kzZ+v+phLAHSgGmCaRW64MjEz09pPK6R0QctxPwx/s9jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HaMx3Im2crRfY0G/vR59DgPQmzYq4XeeB5LBAL9Nfdg=;
 b=rr9XqlR2Thf+u3TfF/GtuSXykU9r+JSKIICZZnt632V3ukrL453YXNqohhDOUT63LQRIY0ebbZCzT0O4qTeJC9n+zqCugl2hhvvCn4pdMdEEr4FfYzhJtrz9PEJf3xfWyWwEIkZ+jW7TQzA5TbqX65rz84UWv2Z7Dp0QfU3mxG0Mq76UflKVAtYSnWXdgQTmVvt3BEc6hh/IEiSByfhaQH5zK4CPBHeJNg810C93dpzL62WZzYmCCxGw0HrCcZ8yg5LxWflGJ5BXZt2RFLbei8no2m8rp9AxiiBMwHWeSkZnKjPNAF73jz9z//o0iSNi+RHd8VOMNA2n1Y63m1GHQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5902.namprd11.prod.outlook.com (2603:10b6:510:14d::19)
 by IA4PR11MB9442.namprd11.prod.outlook.com (2603:10b6:208:55f::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Wed, 15 Jul
 2026 07:24:46 +0000
Received: from PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37]) by PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37%4]) with mapi id 15.21.0223.008; Wed, 15 Jul 2026
 07:24:46 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: "xuanqiang.luo@linux.dev" <xuanqiang.luo@linux.dev>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, Mitch Williams
 <mitch.a.williams@intel.com>, Greg Rose <gregory.v.rose@intel.com>, "Sudheer
 Mogilappagari" <sudheer.mogilappagari@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Xuanqiang Luo <luoxuanqiang@kylinos.cn>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Thread-Topic: [PATCH iwl-net v1 2/2] iavf: fix QoS capabilities memory leak
Thread-Index: AQHdFCFAUvpnMwFFhk+NLzQJKqs0qLZuLbkg
Date: Wed, 15 Jul 2026 07:24:45 +0000
Message-ID: <PH0PR11MB5902F61778270611FDF6AEBDF0F82@PH0PR11MB5902.namprd11.prod.outlook.com>
References: <20260715061131.34420-1-xuanqiang.luo@linux.dev>
 <20260715061131.34420-3-xuanqiang.luo@linux.dev>
In-Reply-To: <20260715061131.34420-3-xuanqiang.luo@linux.dev>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5902:EE_|IA4PR11MB9442:EE_
x-ms-office365-filtering-correlation-id: 6a110cf7-e8ab-4c07-9c98-08dee2422596
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|366016|1800799024|38070700021|6133799003|56012099006|22082099003|18002099003|4143699003|11063799006;
x-microsoft-antispam-message-info: rb0aO9YwMJTmyC5vvjX+c+FJXt51IyinK0Z5OT3M5MO+VEDzkTxMQePutFTc3UFp1QHAB0SUn+soQkn9bfYkoBpS4SFXyAq3sKM/m4M4mQYyed2cANB6kNEDTUI9f9JsrVDAajYICK70dhGVNDf41auzZQFEQDCBf4vFL2G86BMitaNVZLUiTWcn8gWX5/pTLPuWJX8SQH+Yzo8OsNShj4Q5rsns+TtocyL1Or+ZomyscGqmWas+BFDcBr7SFOtagGuSpYGtuk3LKAkMfQ5SUY6N6E19mb8kW5FfSqBAmvuFJaRpnu19754g1J2VfVL5SlCX3akodXLCkRm2U5naDWD7n9DtyIbMF+ijh72jachFEQSIfsp87LegI8RdFLZYw3POP7iLxdYkLLNPkwCPANhh938Yr3K+Z1Q8Y6O/1/ay1jD6GgPLfsFsbuc8vANwBiKs8wst8I+rw/fKzn8TX0DG0wBdDrumOOs5nvxZpUEQfDhDPb5e3HYOoPusFxvWNEYAxUcqIg2/FFOLuwyOYXcE+FwpGdU5+D0h8OLsWSQrlTBxIS8ky2rhWsaYYfroQasoay6aEYaJZ27c8ate12lj4RIjGsoaZlcHwSOwIzqLB0lY6eU9Y9ViGFIipNHVQpgDE3tORni6KAgZPVe8f6j2Y38qkhMYwVIy1uaGDiH3kH44bIMvnSg8tsIFW4IOg92nf0cPyBShs20ruViF4SoCrlYwIbB2vW+dfIkg5s0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5902.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(366016)(1800799024)(38070700021)(6133799003)(56012099006)(22082099003)(18002099003)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hl2ToQwaFDzNytdRj1asPDMWpKfp8LMlK4HCL8GlGWOtxuf0/jy+LXOeCZT1?=
 =?us-ascii?Q?LYsUqJ5hgu6CAIVFZezVpyZghhtcS983A088blRY7Xc5AUbyH0ENEAeuMZ/G?=
 =?us-ascii?Q?3g8TI3s7yT2UzHWB9eS3KK+c5FFgJNPyLms/YrlennrsWWyFVRACXNBuDWlo?=
 =?us-ascii?Q?JYP+lIJnxidjlnXl9hCrbeP9KSddWXT5bUx6ld+AvmZrslT16O5hE31yGX45?=
 =?us-ascii?Q?EKzu+NGmh2MokKNuGMI1CE8WsGGNlsjZHt3s7814MK6zPA6HYgKbszkokvzE?=
 =?us-ascii?Q?D+oB4IW+949lNaSBFPwH/F79OmeLWnl/3nkzx7RkxFp1FxTAd9WivImJ2pKS?=
 =?us-ascii?Q?vfpwiDxt1gh24wvaxtIJzvhi59QwVK2BSTNWjg34ijoxmdhhKIecKgwg8o2Q?=
 =?us-ascii?Q?xqRHy0ufMyMsSIMooS3Gf7n/IAf7LLPJa36iYagZN0dUmF/2ZNU1IAIPDjmC?=
 =?us-ascii?Q?M6MqhQfej0SUii8bkrD4NfKNDn6kvnLw8Cu2UfpqX1BEOqpQer1S/+br6QUR?=
 =?us-ascii?Q?LTtS4lqiKdwSlBKp6mE1ejzE1MdUXxD3xt76SLmNeR/jzWEtsetF304cDqM3?=
 =?us-ascii?Q?QiuCO/I/MGHaLtyrTMfJpAhwVZt3l+uWmtGDdpUppggfLYkGIf1l1yUXLt7P?=
 =?us-ascii?Q?rnl+yQyJAxk6u0IdbPSN3tKYBAAvRHgfkjbROl9XchR0mL7SbHe8tpUJIgkl?=
 =?us-ascii?Q?bLikJ9xzBs+k/RBx4xMthfUfBnRpbH4fdf4V5g18+mVFEc9EbZjnlhKye8oA?=
 =?us-ascii?Q?5TRH0KFAZlfeb4dllrlUG4WpDrNnR+1cLLOKQOl7DnZtX3Tm2meiFptWdQbP?=
 =?us-ascii?Q?MTvpjXxe4oKt6VsnXhYGc30h35v25pnNEC6nsY4nkfIIe0gxdaXO9EII4W70?=
 =?us-ascii?Q?H/5WSrjhRb8R9/wqa+LUc3AKK+uyt5BnoibzHxWOt/I6zHAIcU/+Epc3autD?=
 =?us-ascii?Q?uyoioTCVd+L77Nr91+pQTbD3kvAd9hKTJmvGEzQXrwV17nqkZdMwnmsKgMVt?=
 =?us-ascii?Q?exSp2Xn1kh/N4djcl23EFdrGIoN2akRcTbzquTUkE9Tn5wss/ACWyXq8rImE?=
 =?us-ascii?Q?XcUNXpWYVAzJbgfOntCoURlNFAh3LvUkrJE0ZBaqS2eKx+hRZG3KdcjOViZV?=
 =?us-ascii?Q?mzuP3KmEPGAilfOyL7LaHH4L8VGnbcrepk7Ux9PQK15BK1JD70RT64rLK80w?=
 =?us-ascii?Q?PAX6qIphjA0t11JfX8CchI3T7+TEhrfF4xd+cJPsXWjMTi9p7w791Y6z7oto?=
 =?us-ascii?Q?xSp45lG6pAlB48MhdaTZxUJ01I3mhSUnlKSr8fhxcBQHv4kErbvGEqs4CQuG?=
 =?us-ascii?Q?c3BruKBuyC6mqBaFwZN/Snh6Vmnkzxn6AcnjJSlHrOQTP13NaHt4L2FSzq+8?=
 =?us-ascii?Q?tdAnXhjB6bXtU6EfpM4Nj2nxRXr+vqL8B0Um5b78FJ9Ez4Vozeif98cxHnsm?=
 =?us-ascii?Q?5NcdDbCySbjQEda2Rzko+JGTMbUmzVk9s3KI6mJKjdwvX/r8minEqyk2nIv1?=
 =?us-ascii?Q?WXSWChAUpXMTbhnO2/mxwrRIud0bgGHMdGG7kpZTv/0V1vQudqk5CMzWWoey?=
 =?us-ascii?Q?vaD76KaEWVgfmpCUZ6Gr8loS4eafgEbgCaqHf5oyfipozey22cFKn4Xe1ryB?=
 =?us-ascii?Q?7JmjzGqR+phbkh5Lqb5QVgoE2TuyP/D8Y1T9e8p+duzdgkoofUzBYx9tL6oq?=
 =?us-ascii?Q?FqikiqUaBnu/wIkyzuc028gdRMMe1LBmiUo7NEFwHsZpspMhn+1cS4Y/gStz?=
 =?us-ascii?Q?i26qyheq+Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: gaQ8CHeRVMgHGNvLbSOxpjXzH5bgkY8V+wQNUyEisHGjVc07w4MsCW9JK7E2DQg5lJELEklCA7IFpv6oPfJeuDEabWvuiNHqThR/oFKFq/ninUfIy8GGZ65RNZYFkqxL2RTck+de22aMR7069PcKJlxeqV8RN6NEPAflP6Uxkh8hDEIq8OZHUK5IX9vZu9yaeJxT3eDkBMXsXWXfKhX2iYG3Zv8wblCsNkJoiqLtGxwJaNkCqRVsFGm/zh2BjYhq/gDyX5QmkUOFgCPWbLXG93fm3XRWzsSuj5tW9TydTCbffcB6d29uCU8N9ZYRjBf+weq6LGHrKL+B/d8H+f1M7g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5902.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a110cf7-e8ab-4c07-9c98-08dee2422596
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2026 07:24:45.9511 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H2XeYND/FXuOvprPCE9e3U/GahlN/wONbZFAc0Wna/7Vh/SReovsojbkDNM3SLfDOK2vgwdR0byxXeMryabNfn0iQotwbx3cXgjtzynmjtQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9442
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784100291; x=1815636291;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HaMx3Im2crRfY0G/vR59DgPQmzYq4XeeB5LBAL9Nfdg=;
 b=UQW0ijRHEKvZXWWMACIsYsRRyrVqdU/f/2folGqQDa/NNRVMiaJf8Ep0
 FZB88/jg/V5MGf4Weiv27BfFRzISLtjKlVZqA9YsevubUnfwwoSSSx7DP
 4B0VTIBlWLRUbj/CcUkitMiNZHVYuSdNloQzlau38j3L/VC1r2JGqAC4X
 lo8wTGzliLtOAkkfMTbw60FGs1ExumEmtLVfc8lWqiRMINHg33/Bm36Lu
 8ha+//MGfGUL47ppf8EEDpH916TOa4l2QoinWdwHHghqOFzCrc3OGSYJR
 QyLB83seGX8A/vD7Xv9gH83cfBn1IqGA//I2fYPjDKHYCNIOsfa1M5QUs
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UQW0ijRH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 2/2] iavf: fix QoS
 capabilities memory leak
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:xuanqiang.luo@linux.dev,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:mitch.a.williams@intel.com,m:gregory.v.rose@intel.com,m:sudheer.mogilappagari@intel.com,m:netdev@vger.kernel.org,m:luoxuanqiang@kylinos.cn,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:from_mime,kylinos.cn:email,PH0PR11MB5902.namprd11.prod.outlook.com:mid,osuosl.org:from_smtp,osuosl.org:dkim,linux.dev:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 47B0375B66C

From: xuanqiang.luo@linux.dev <xuanqiang.luo@linux.dev>=20
Sent: Wednesday, July 15, 2026 8:12 AM

>From: Xuanqiang Luo <luoxuanqiang@kylinos.cn>
>
>Commit 4c1a457cb8b0 ("iavf: add support to exchange qos capabilities")
>allocates adapter->qos_caps during probe, but iavf_remove() does not
>free it. This leaks the allocation whenever an iavf device is removed.
>
>Free adapter->qos_caps in iavf_remove().
>
>Fixes: 4c1a457cb8b0 ("iavf: add support to exchange qos capabilities")
>Cc: stable@vger.kernel.org
>Signed-off-by: Xuanqiang Luo <luoxuanqiang@kylinos.cn>

Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
