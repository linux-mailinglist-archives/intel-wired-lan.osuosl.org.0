Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2328D9A9B99
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 09:57:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8997F80E6A;
	Tue, 22 Oct 2024 07:57:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EwM8CjT5EgRL; Tue, 22 Oct 2024 07:57:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C443780E6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729583860;
	bh=u9ZAVYTZInbpd9f8hoYjCYjP0eCPxTPtdlQD8yD0Yh4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ELndCMJSu2fi4OGHUudlT/BLGvXyexzmzEaeqzDRwHbLWEMNGeUyOKh+zIGFWJTYU
	 GCjTrMRrL+ZuOE2mNfD0fT5c/IMlnq2oE+aoTVqOCGMh9Q5o9xziCmvW5g/dzWCKaF
	 TZuaSvJMauxFvOiqommgep7sZJFWpfA430rhISMnLhvLHiXYJjn9Ux5WEtY2dfyKKj
	 e3ViOYSZuUn6mB0J6GyguqOy7dtp+xMWDhuWXZ8nS5QDss0MoJ9QkWoXf/nXSgBlZw
	 ZfuUqQmyRFSBWytkC3RihW0HsWCTfIppTmc7D5U3qpNLfHpywStJmnXFQZ6g0GhJSw
	 9v3DmthFquLig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C443780E6B;
	Tue, 22 Oct 2024 07:57:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6C3D2963
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 07:57:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5A4E380E67
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 07:57:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YJ4z677IYj1Z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 07:57:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5DE9080E63
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5DE9080E63
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5DE9080E63
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 07:57:36 +0000 (UTC)
X-CSE-ConnectionGUID: 93LCxwm/S5Gj5hHosW8xlQ==
X-CSE-MsgGUID: j4ViB07+TOiyQK3LSjTCyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="28532876"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="28532876"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 00:57:35 -0700
X-CSE-ConnectionGUID: HH/dO/DnSwyi9cHgSzAiBw==
X-CSE-MsgGUID: Ywhnd1XIRb2GkW3cIuFCHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="80193239"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 00:57:34 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 00:57:33 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 00:57:33 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 00:57:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xb4ZEMNFU1lINBog5tCRzrqK2Tjf+XxL9oCYAJN9bM3u9IiROxHezNt/HT1cgJu68BNxfllB65pp1KbSswwnHRiKGWhJX8Yti+WsGcxq8Ar5P2oPI6v1jm1uiazTIa1Q+TXKD3p6BsYNrWYh8uTqm260eWHoDY0jvF1t9e295aqVhlBckZp7XKUtaxyAyIvc5B7DRSgu3/1sAv16Z9owcuC3kJopimPjlP3qm03utDzzaK/DJYC4PfUaY79xKuStVvBbaE7S0sjkx8ATcnT0gqe7ndcrSl7PeluA6AirGL1isZbLAT8D9Xa2IoS10nRO4EIM3Smnkvw0d5fGPQydkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u9ZAVYTZInbpd9f8hoYjCYjP0eCPxTPtdlQD8yD0Yh4=;
 b=i2sTgW68akyihOj6N25e4xoYIiRDfRKjs9i/OXyfmh1EAuvrnR5tWQy+ZsbLz4bGkHAxZ3Yp27DteCB2pcVmKyi7YZx4ZPQ3BxDzUyFGJihic9FkSTuZXrjBt3HPC7u+LywotEwcJ257EIzJULCNy2XHeoWmZPcDPCHkJQK8yJtvy9SCRLvyMQoW9Dr2TrdKaPsqNXg67PzFnz6OiylPyrM0T2J21xTUhbX0t7MM/1M4el03nioEplcwrtUoIiakPrMwQwJYjqekLU102oRqOwXjeU3IPZlt+URVxg/VbII8nJnjmB5s1DiOdKbCQTG0VrdFr3v5moaYuWB+/tJdfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by DM4PR11MB6166.namprd11.prod.outlook.com (2603:10b6:8:ad::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 07:57:25 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%3]) with mapi id 15.20.8069.027; Tue, 22 Oct 2024
 07:57:25 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Paul Menzel
 <pmenzel@molgen.mpg.de>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: Fix use after free
 during unload with ports in bridge
Thread-Index: AQHbGl5l3avfQ7rgXUiSKM+RgDJEurKSexQw
Date: Tue, 22 Oct 2024 07:57:24 +0000
Message-ID: <PH0PR11MB50131B7D3E34F5782E7344BB964C2@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20241009151835.5971-1-marcin.szycik@linux.intel.com>
In-Reply-To: <20241009151835.5971-1-marcin.szycik@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|DM4PR11MB6166:EE_
x-ms-office365-filtering-correlation-id: 841c1ab9-b2fe-4a19-1de6-08dcf26f2aa9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?o/a9210QSRwq8mKG2HcZeSh0FNkwghYbgFvvTBn6DUuUtl6tE43kP7frOZpt?=
 =?us-ascii?Q?bCxxCqhijbk1hUBqwGVZEQDI48ZJd8qClz3aINgPQ1Hhv+sMbTHawBoI8cXX?=
 =?us-ascii?Q?bS2Ap7waQz9EpJ04pcHQIF9DnbfvAWFC+OrMAq3jXD38VjmbHjQOgl9JgCgC?=
 =?us-ascii?Q?dfjJVQUyZ9HyyzE5TLgOnLn/W5akOR60/xiuDGXfkZc4JcKMX/5kjED2A3RI?=
 =?us-ascii?Q?TBO4f6HXUzNijK4fL23yv1XozJcyaniaGyTpzQVMMHlCV9Zn/8dpFdmoQreT?=
 =?us-ascii?Q?hbdV2lrw5U686t5blSI9S/j03piBAU9e9V6ngumcQ8A6gim7+G1iig8gdj4c?=
 =?us-ascii?Q?dfcu04UacnZrYTY/6T6Pg6j2wUd74+n45nM3RCE4dnm6LLoVPaDKlru2kj5m?=
 =?us-ascii?Q?CvZjtzRze7CE8/4RnFYQerZtWgflIgg7ZZ+DQOELVwMTXoxPTGNJY1Lr+zAs?=
 =?us-ascii?Q?Od3eCaNlgERQICHBGP/0VT8k8+TwQT5MPpBTydY/4v6vtdMUp2luOHQxgSOq?=
 =?us-ascii?Q?FdjuLvVgZ1P+2iVXHRTRuu7bkTCdbQFKfBM/MGI+avz1L7wmR2rgLLMH2CWy?=
 =?us-ascii?Q?g/WaQY/b9aGClTTrWsiiStBOZVDQnvcaCUalPv+7WZqmGMEEqWWyplLYO3ev?=
 =?us-ascii?Q?TJsqXR1426v0scxSDo1figlObMH55OJ74FA5Hx9O6Qc6MxXGcKG49tz2rIWM?=
 =?us-ascii?Q?1KVqqAZUy8Fg5ytm0HOHwh7+3fepVRzN6A/T0+G4hrbWHSX32aWQVJUBdfoI?=
 =?us-ascii?Q?YCzAjHbf9uFGBbyOyff02qZ5Vy+NKvrMcg9ugGatGEwe/gIgSDrB3IeNaM8L?=
 =?us-ascii?Q?TkJxhTmnj7IBzU15RtT83FXo9M+RHzwcZ3jp39zhSjIqN4v+scggmbVC6V3V?=
 =?us-ascii?Q?lVQIlkPq+zkhFa8M4/6qyNXomm0NlyC5YmKJxTATFCp7d1/oggzhO32ORthN?=
 =?us-ascii?Q?wN8FXS/Z8lr1SEjBTxH0mYIWQDhd6z9QYCXT8USeW88tIAgoPP793rgpUocA?=
 =?us-ascii?Q?MpnfCq7PknoqMom9QcZzSkU1XWyyFLFC0KKasZaxQo0I47Ml4DQVEQkh/rm7?=
 =?us-ascii?Q?T7k8StMZyNrWnNxrR0tGCbm0nFduFv8qDs8uBVkdw2hzQJzN/D0ZS7xCoPzN?=
 =?us-ascii?Q?LNuYTqNBA2ThH3MMZJkbIHpaplKXU8KpOfNGs1HAHRiasLnQqepfU3loQ+nZ?=
 =?us-ascii?Q?MhQqoH5tZ5fEVL/OKbShIqmuuTv638bAkAW6D8IlHw7HEJbFflyIA6Cpj+Zp?=
 =?us-ascii?Q?85R1RfN1gRttvDgKo0D71cScRwVs8bXH2FBQO8QFkGqoy3hugUaSd+ed2vZS?=
 =?us-ascii?Q?9fZNrnIe86Po29bqjRbcSl81GpNV0sk8yD8ny0KIkgiMo3e7mj6Gvn1PMit0?=
 =?us-ascii?Q?k66tbto=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gXvZ+raHnM0t+uqAUaVizJLJAphSOjt9oPnHiYz29y0yLTUubFgYDvAUyscf?=
 =?us-ascii?Q?3LQ5vlSOh1RfDlRGPGo7DFh2tc22xR4qdALF+ZyMHX7tLhZcDuACRZQLCq+c?=
 =?us-ascii?Q?/fI3FZKbmPrWmk7896ikzb1hhz4Nqz5DE68VCN2xqT/2YMgsma6Y+/J6u+2a?=
 =?us-ascii?Q?6qdLeQjcvKlYvuSKh65VuVqz45NwMLoxD4MlI/gNZUwADMfbmqBSYO+rH5wc?=
 =?us-ascii?Q?OaCKVQuYG26WzBSEQec/1S/Bt/BirqdoHZXfNX+Ct8zSNgLg3d79Hk2mB1DT?=
 =?us-ascii?Q?7b2gu63mxa71KaUtsVfWQNqV6DWSP8CnsU9htFSs92kmn6k0V/3/N67djegS?=
 =?us-ascii?Q?iw1r1BbxlJx8FyyB4K9NrflxKzzMHP0NU2wRjLVXhyN3aKPDl6gqm/zUiIAq?=
 =?us-ascii?Q?pNCXRjiiHfPPFRrtXCIWXBm8rsDmPcrFl7Btc2ePipCuQftTYrsrMirgkolt?=
 =?us-ascii?Q?XoV029FDsY2yvTOZn9sJ7sE4dk4XkiTcdhew/+hS2Ru6D34lSBCaH2/fiajC?=
 =?us-ascii?Q?8OssUgFoY1v6ytlNR4MAAWE08N1P6lAHIhvKDp/m22TESDerGCwQQ9sAL47K?=
 =?us-ascii?Q?yp5o3iS4ZpGlweFCt6rh579zxUSwLZ2GSH5bwTNuk5JbazGIBJt0H60hXjuX?=
 =?us-ascii?Q?/1XfLGsKeq6WOPOBERNltGJFLDgRjZctIx8LQumjINhKqqw4snDo4lb9o7/9?=
 =?us-ascii?Q?hoEEv8J+Rg4l6gAs+B253B5FMgyqnleujCF47QuYkqScMnBNKuXwVYvTRfEb?=
 =?us-ascii?Q?CErLrsyYKup6ihH1lSW+K7e2xwJBF0WMatUdyvc1nOL/P0pqB8Zj1Q9sj9Ks?=
 =?us-ascii?Q?kuKvSQWGeh3Ea1uUuRWiHQepZ1PEerX+KKgFOoMxUi+HjjuKdtgPBxtw6+80?=
 =?us-ascii?Q?513raXY0Nsw9XVjK2vDSmM+c/6Tnobd6BNJPX1wVsriueNCzOwMKmIUUwr8v?=
 =?us-ascii?Q?muT6na6Di6mqUZkiJB4Gtc/jnurApRFNSlkQ5WUyJQhsm7otZNo/D8fwgRkE?=
 =?us-ascii?Q?HU5pAljYPoCc6CGOOYu2+b1ygwPcB8HbR1e6IUUeGb0VIgRJ5xjTwJDmNe9/?=
 =?us-ascii?Q?1pkWmRZ2RA+verrDrBT0dZ496axL6hbW8Us7sV1w8lZkmFaHM4lmIW8u1l2h?=
 =?us-ascii?Q?vtI30lvn8ogRvNmpUcTVUEd9kMNDnxq1aWysMob55vR8kGBEtixCmL+umuif?=
 =?us-ascii?Q?Xb4JtNM4KW6LVSFxeWKHJLe+0gLJHFk7i5WrTP0kewzlPlrH8mAno7HZC8fI?=
 =?us-ascii?Q?VYBjxaStAte+C9xpQl4VsDGbIPwI6Xr9Q6aMS0yUdmjfNRhJ5YmZUKumIOLO?=
 =?us-ascii?Q?Wfh9UQ9j/jFy16qmOlzZMB86iyoOOa+gyeDLcZ1NZI8fSq5pcAGsd8Acv1sy?=
 =?us-ascii?Q?4PhSR4ONfAwBfY8T5f3GmiEq4CrzXi1Sqrc4l3oGDT/JwftjHELz8aO2WELU?=
 =?us-ascii?Q?F4q/zsWjdxXxbHeacjXHIHQP2bSOTdvaV3AHQKweQxLhW5pteH8EwLiHsjwd?=
 =?us-ascii?Q?U/MY0xtnA/WTcE+LxJMztb6wpLBZ1SrLl2P4KCtNshRMyXNtIDm0384/XNPz?=
 =?us-ascii?Q?ipeHnRgojFKX+MB5NqgivuDqduBFBeF9wDsMfEK5A8j4MGe0uWTwDE2lpJ8C?=
 =?us-ascii?Q?Rw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 841c1ab9-b2fe-4a19-1de6-08dcf26f2aa9
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2024 07:57:25.0673 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tuW4NeTths7yhSXOdUvvVqEvWhk4+T1e0ubzPfoS291iZnfKY3MvPBkhrBlWmf1UmnCSWvvnaYK9wepMgi/mkZqFurGdg8hj9OZUx5XEtrE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6166
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729583857; x=1761119857;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dCeMMyx59TY1CqkfUhAa/W5Zg9bqwxer/WOtlCbB08Q=;
 b=jwwzBO7RjKnjhp6ddes0EOh+BJd2ytAUf/Ig8sUId/Aue3iSlHwct8s5
 qNS8n1eXl74GYY0bWcdCiN9JQaK36iMCTBwXhfkjaGoRZ4UKywACQiYvh
 dH6B0p/8YIWqlQiDfibBCRss4m0F/sit9gw58kZ4/83xRzw1FCPfMTMTD
 YtR1iBr4QiUF4jdN5u6T8luibIwZSNRRbkz+VxRyysZzNzAQABP6P1w+2
 D6zuZOHFL3c2rvoc3e7mAZFtTKdpDenQS+rOvkOQpmuyxoCkGlXl6S6tg
 XKZllz0fBfzIvZXNi94lPNE9wpIbNQb4Ed4MMleVXplvouDR5TcQuEkBY
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jwwzBO7R
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: Fix use after free
 during unload with ports in bridge
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
> Marcin Szycik
> Sent: Wednesday, October 9, 2024 8:49 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Paul Menzel <pmenzel@molgen.mpg.de>;
> Marcin Szycik <marcin.szycik@linux.intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: Fix use after free dur=
ing
> unload with ports in bridge
>=20
> Unloading the ice driver while switchdev port representors are added to a
> bridge can lead to kernel panic. Reproducer:
>=20
>   modprobe ice
>=20
>   devlink dev eswitch set $PF1_PCI mode switchdev
>=20
>   ip link add $BR type bridge
>   ip link set $BR up
>=20
>   echo 2 > /sys/class/net/$PF1/device/sriov_numvfs
>   sleep 2
>=20
>   ip link set $PF1 master $BR
>   ip link set $VF1_PR master $BR
>   ip link set $VF2_PR master $BR
>   ip link set $PF1 up
>   ip link set $VF1_PR up
>   ip link set $VF2_PR up
>   ip link set $VF1 up
>=20
>   rmmod irdma ice
>=20
> When unloading the driver, ice_eswitch_detach() is eventually called as p=
art
> of VF freeing. First, it removes a port representor from xarray, then
> unregister_netdev() is called (via repr->ops.rem()), finally representor =
is
> deallocated. The problem comes from the bridge doing its own deinit at th=
e
> same time. unregister_netdev() triggers a notifier chain, resulting in
> ice_eswitch_br_port_deinit() being called. It should set repr->br_port =
=3D NULL,
> but this does not happen since repr has already been removed from xarray
> and is not found. Regardless, it finishes up deallocating br_port. At thi=
s point,
> repr is still not freed and an fdb event can happen, in which
> ice_eswitch_br_fdb_event_work() takes repr->br_port and tries to use it,
> which causes a panic (use after free).
>=20
> Note that this only happens with 2 or more port representors added to the
> bridge, since with only one representor port, the bridge deinit is slight=
ly
> different (ice_eswitch_br_port_deinit() is called via
> ice_eswitch_br_ports_flush(), not ice_eswitch_br_port_unlink()).
>=20
> Trace:
>   Oops: general protection fault, probably for non-canonical address
> 0xf129010fd1a93284: 0000 [#1] PREEMPT SMP KASAN NOPTI
>   KASAN: maybe wild-memory-access in range [0x8948287e8d499420-
> 0x8948287e8d499427]
>   (...)
>   Workqueue: ice_bridge_wq ice_eswitch_br_fdb_event_work [ice]
>   RIP: 0010:__rht_bucket_nested+0xb4/0x180
>   (...)
>   Call Trace:
>    (...)
>    ice_eswitch_br_fdb_find+0x3fa/0x550 [ice]
>    ? __pfx_ice_eswitch_br_fdb_find+0x10/0x10 [ice]
>    ice_eswitch_br_fdb_event_work+0x2de/0x1e60 [ice]
>    ? __schedule+0xf60/0x5210
>    ? mutex_lock+0x91/0xe0
>    ? __pfx_ice_eswitch_br_fdb_event_work+0x10/0x10 [ice]
>    ? ice_eswitch_br_update_work+0x1f4/0x310 [ice]
>    (...)
>=20
> A workaround is available: brctl setageing $BR 0, which stops the bridge =
from
> adding fdb entries altogether.
>=20
> Change the order of operations in ice_eswitch_detach(): move the call to
> unregister_netdev() before removing repr from xarray. This way
> repr->br_port will be correctly set to NULL in
> ice_eswitch_br_port_deinit(), preventing a panic.
>=20
> Fixes: fff292b47ac1 ("ice: add VF representors one by one")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
> v2: Added trace excerpt
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
