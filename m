Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F18BA10103
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jan 2025 07:55:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 161A5407A0;
	Tue, 14 Jan 2025 06:55:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9I1yHoHNLHPP; Tue, 14 Jan 2025 06:55:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C0BFB409CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736837740;
	bh=wkPuy2abQy7T4Zx83FUXqGVB/2391RJLwDWSZAmEZms=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oJFLjbeUhVPh64Qqb9ksPC/0DxpgNWfM4rmnVdzhTrSzjTRRTHYaQWuldlFVDx4gb
	 x8b71GRln9x3zX8AZLtB6F9H3UmlFV/TJR2uxjyOsTjegBvPThRweR0EwZrXBsKuaj
	 KK5VJO7L/PyZ3dQvTErBxa3X3JZDTNPSGABsgqM9ch6SlNEh2xMfAFLn4iqBlM2Ah5
	 aod/yMpRfl3WR/KOtYAzgf5+8ZkC8wqf0ZMpAnHY+fSPDr7nUqFWm7RZExsSmdg4OR
	 1lXipJTlvbbTNRf0qDJn22PtvKpY27/LXP7vgDGc+U3TkrVJhHdDMwLIlx1PHqFEv1
	 2zKSom2U95drw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C0BFB409CE;
	Tue, 14 Jan 2025 06:55:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3665EB89
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 06:55:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2496F406C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 06:55:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZF-9sodDjs1L for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jan 2025 06:55:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org ED17A40670
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED17A40670
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ED17A40670
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 06:55:37 +0000 (UTC)
X-CSE-ConnectionGUID: K2T39JmITNKHR7h5rZp0dw==
X-CSE-MsgGUID: wo+RsGrfQmSgadjXfHKyew==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="47701014"
X-IronPort-AV: E=Sophos;i="6.12,313,1728975600"; d="scan'208";a="47701014"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 22:55:30 -0800
X-CSE-ConnectionGUID: lzROvyxVQ2WzGA3jKK5/1Q==
X-CSE-MsgGUID: nVw+kHCBRWiEhhxS3fgIeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,313,1728975600"; d="scan'208";a="104798430"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jan 2025 22:55:30 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 13 Jan 2025 22:55:29 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 13 Jan 2025 22:55:29 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 13 Jan 2025 22:55:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RsL70iTDx5Z5fCnq39gwvLUjI0foeVH/isy5m5VA0oWB/0jf+5XR5M48/BVkquWoe55mKGlysMiK7sahk/ghCV1MG7MBEMmZ/eubQYUNOF+zR1r4S8vcfCGsoAF7ZzXl8CnKC0+fqX44nnRgV42m5HyDNZNK9/bqiYRQ6xFKKGdnzRA/ZU+zm137z2HKmZOTq/G+UzMV3vvbPxh9UoBpxl8cO+qFRoOB0bim1KZ07GosOELyvTm2zZTp484ZpkJXOgqGZNL5L7ec4UisE61BzdBQh91eyNoQQvbJ+1tSu04CGb0h3KjoJmYGyUw0LoUzdm35buXZObjHtrJIlTXspw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wkPuy2abQy7T4Zx83FUXqGVB/2391RJLwDWSZAmEZms=;
 b=dNuZGcLbRNjvo6YNM90RaAbSHj9nfF6wgWB2OpjBc8SOel8fKciQbgeXzsFuRw5MK203fMIh9tnudTy9ShfEwRatKnZi0xFLYeV7Jmh5YUwRWz7HDR282sRwH1KwgGddCv+X0/jOsHwbWKtrD0I0eBYVw966Pup4B0x+i1iHSPbc/BHtArM7Y7XW/oAi02DZ6mZLSZgMPitCbKzptBajDBOFQWwErYA+48ZDIC0nsmEV2MFlANSAcsua6k6Fmxs00La0/UhxbRD0Q7qWX1JklRzJWqL6WrrZ54iwPhT/h770C6bHmK+ObAXycRZ5MPSf5q/ZimU5jvOV8WEXZQSVDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by SA1PR11MB7062.namprd11.prod.outlook.com (2603:10b6:806:2b3::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Tue, 14 Jan
 2025 06:55:22 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2%6]) with mapi id 15.20.8335.017; Tue, 14 Jan 2025
 06:55:21 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "rlance@google.com" <rlance@google.com>,
 "decot@google.com" <decot@google.com>, "willemb@google.com"
 <willemb@google.com>, "Hay, Joshua A" <joshua.a.hay@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] idpf: add read memory
 barrier when checking descriptor done bit
Thread-Index: AQHbPJjadsCBFFA+DkGdErU2FVCf6LMWKT6Q
Date: Tue, 14 Jan 2025 06:55:21 +0000
Message-ID: <MW4PR11MB5911964A81E352AD36C63250BA182@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20241122044059.20019-1-emil.s.tantilov@intel.com>
In-Reply-To: <20241122044059.20019-1-emil.s.tantilov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|SA1PR11MB7062:EE_
x-ms-office365-filtering-correlation-id: 244f0b89-0262-46e3-1189-08dd34686a27
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?uAlNTHh+KxngunV9ucET9VR1wmdY8bx9+IAjGyCKqrfqeupd5STHFA0HEoD8?=
 =?us-ascii?Q?uatJrbXHY5jhajsaytF+EJ11b/LsVJNrEqf3JMCg7eajPEksBKBOFWhOGRSA?=
 =?us-ascii?Q?wQl61TZkxyh/Z9o78VgWkzJ0K39leyzRLc2JharxRt2JAd2zwkrbYefwhEip?=
 =?us-ascii?Q?2KgpN0HWhOHqyjWDnViObrXQTWTqbU7Y26ZsUWAyaVQkoH0CH4buthfuHAsA?=
 =?us-ascii?Q?WZP9uarQYcAqQbWn6/pihoaRLl1PVOLw6xpTZIqR1WRDvY6DT/NoduomVYFE?=
 =?us-ascii?Q?NM1GH3E7q3SEPltxSwlJoWAU57Cc3AYQwcUpt8IDhLBxtFlvxjfQAx+dJHzl?=
 =?us-ascii?Q?MFOyTCih2FW0NY97Ztly+Xy5TiqAmSYKgXsnVsJ+iANh/7eKaYruHKE7ApBr?=
 =?us-ascii?Q?EAfbirh7ehAFL5RxacsYtuVnDFzlB7o1y/CfRFvRJ/kGRvzVam/NiPN27rwU?=
 =?us-ascii?Q?nqzEKAR/Tu7c+7ELzaAp3hjGufd40HI2uxxuiu8DNMprZkkGh5v9LYA/ows7?=
 =?us-ascii?Q?Gdtp6U2z193vVyjTXsLxni2NEUKf++Jbq7ENcVwQCfB8k+eucakRVx0DuAyc?=
 =?us-ascii?Q?FFFTfmDZTZ+YUFS0feIZw/o84cH0ExJP6efTYmOP5lAamX7HP+gBwugpjWNY?=
 =?us-ascii?Q?SlkjGn3/xvLT6R3YS1JXrFDnA4CGGHcxqI34EkbeUG/kj/MGwBf/yM7m2ibM?=
 =?us-ascii?Q?JGAOdkgvqdUyOEI9Qbbo7eXiiv6ujZ3Pgf/YOM+h6DmEiAAkszCMBtTc5Btb?=
 =?us-ascii?Q?Bye+kFLiWxgPV1PNT5z4oOnPQQm8WtCgKpjaj658FHGsiA4hgPOgUYTlHilg?=
 =?us-ascii?Q?QR/mlA0l13iz4l6lV7mJCTN93HRQLLtwTmGne7klhm3wA6wiyuDAJBxldBAJ?=
 =?us-ascii?Q?t02XZgGMAqSIy529IeQfCbGgPdPqi6jmv3alyLHDpRA/cIRGeS9Q8W7dDVjr?=
 =?us-ascii?Q?X9tgo99ChZ4Zn3tJxYJHlyM+sct3e0GX7iG4CbO+BJR8kvKj9HXSkx5HodiJ?=
 =?us-ascii?Q?3f/zyqdyAAHYVH9WFrhpHOyDmh2OIf+D34Lm1g5+UalTDSkD9V6KQemME5lF?=
 =?us-ascii?Q?eE/D9IngIbh8IIO7UBnkOmF4VMgKFugtUBtHdTelLezAmiRF3ZHoeWUMip0Q?=
 =?us-ascii?Q?rIg62m+1G6s3kmdYO143TAbQADh8/nIJkyeDHtmu8FkTPrTI+tuPRaqo+a8r?=
 =?us-ascii?Q?dXLls9UelXI/lMvg4tH0yL+5lSCuqT/VRpel8KzHuDHmHNmQQxpGNJPOLGZ6?=
 =?us-ascii?Q?zYz5lGpEEH4Uc0qnncljlXsnY9qikWeZ7DOTF4pqJFOQyGkSESVkaKtR+S3H?=
 =?us-ascii?Q?zHjnv8y5kzYWioIHgQQilFbY58xQWLvuHlRdN3E3TobP+yP47uiGfI2WPjwr?=
 =?us-ascii?Q?gZJtxPqdIfJYypELdFXIP8zs4aSKpvwaPPgKd1mzx/7bB5QSPkhci8iXZEYu?=
 =?us-ascii?Q?r79jj7ytLp5PUtOQudQFWw9idw9BMnaO?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zEsYO1aRIuipsdgML9zHXH4M88Top+2ZzfGkcekDXNQTg31ABjY974x5/AzT?=
 =?us-ascii?Q?+1us1+D08wbWmyNQ+iL7NQaQpNJKCEakOYltUnOylt1DUGPCecLJj3CxcxBo?=
 =?us-ascii?Q?vAXr62l7DlLEvnXuHZnW5bjSZsCETwF0Hli+e63yNMyw+5oiKrJqCTLIx2Zv?=
 =?us-ascii?Q?TnpxE15naqK1pAbT08Lk4bZuSVJ9s7Ue1yYmeXCY1se4W2OR262TemS469Kv?=
 =?us-ascii?Q?jjZaBlrx4LhIGaQhPmeb3b3z5Tv8B/jRlpNWCMHg98EplsYwiMdUF+3kY1Ii?=
 =?us-ascii?Q?ui/9QfONN8InNIhvPrRFLNBB7tsyyolV0Ur3JgX1XSYkEedRL/XTOudmDlWR?=
 =?us-ascii?Q?9/QFDLrXz1ZawEzYm/30b2ZeJZior1RWV3dMlmMs4l+qLkpmN07BES85KqBs?=
 =?us-ascii?Q?Fho+VX9aZBIgG3YxIpO+V5HJG+G2fDPnJWJXxqNIqGJhoN4M0vw+G10O1ZUW?=
 =?us-ascii?Q?XiD4l13revFUmGLD6S0cHXZHWQcMcooGx/BPAgVp1X43HR08tHQpBQImoqJl?=
 =?us-ascii?Q?ERmwNXB2vfhxjM9Ge0yB9rgP6b7z8p5Qjq7nFKDJLspIrv9z4xW8zIQK3ksj?=
 =?us-ascii?Q?Yr+JXB0bhGyVXAhSXNX/Vis3grZwAZqIQZxQNtoBTssGsukOQPP+RTZFzIJZ?=
 =?us-ascii?Q?bY9gvPkeJfAtL7x7uyNVDdFj7sDuHOiz/QDvHaaw0q1X39bA0/MzNW+8MHEj?=
 =?us-ascii?Q?cGm3YF9DNGE2D63asVMHCg7ht2Gj7Tkenxu6uXhgttAXXIf81BTbN3YYk1uo?=
 =?us-ascii?Q?MHuoZCYNqRgTH/wWYdjDGgrJTyny03zDK8Q0u5RQ+MNJLUrJMyP92Zjsbsfa?=
 =?us-ascii?Q?HPPf0Igu9xofnL1ukjUSndsmFJL2hz2T8RARFQ+vHWv5J1+BtXpgSEKb7q4I?=
 =?us-ascii?Q?N3ADPikRwn3v9ZmTkiQ0OrcvqwQpuHaK2PnobzoYbKqh+ELCWKPomAMGeAxi?=
 =?us-ascii?Q?qL+kegy2dTIHZRHY8qa/zhjQ1rTxiwt9qvgA52XgakbTF5S9tF74N4wp7/95?=
 =?us-ascii?Q?v2McbxUB0hAj16esz4x8jp8vMCuZ8yL3BhHAsIxgKqjEAmZhfTFOV3izt5wA?=
 =?us-ascii?Q?/M4x7RQ96FYLjc4EGUF9JpTs/vfa8ktPtEoJCzXFQ7NiTRtVEY5y+3vusTbC?=
 =?us-ascii?Q?2NWsiCTFFgZlAqRWJKOT0cs75N0dIR0hBvBfzxWzMjLnvPZ3bRgsOjK7ZPvH?=
 =?us-ascii?Q?VdAvdXU/3sv/iNSmuwWbTruqAWWikP3rLitnxXGXMtP9FlO/O8eHlNnAnaHi?=
 =?us-ascii?Q?wYRTzCfI+XzMNOOEU/JImw92kmRQ+YN/UjNpm9DNTjB5+L264DsWEKTrfvfI?=
 =?us-ascii?Q?mHap2RqX5v+Hwb1YTXyoCcifQ1ha3pzGbdyeJuilG/dRv32LHyZBtMrQokyq?=
 =?us-ascii?Q?aGgsSjkXL7uqH5DlLBqIlKefRo6LXvq4qrkoshRqxgp9EnwA1xO6db2TtoK7?=
 =?us-ascii?Q?x1WX1P5bTrwTmb8W8Z7n5ucbbaTNto4bGUeyEkBPdLe/yeZSw3svMyB1F3Bp?=
 =?us-ascii?Q?csU9fu13RdCdTN77Z5yPWc/0+BvHNo0hJqyHa2wEIz+O2HsQUqJdosSi8lHd?=
 =?us-ascii?Q?69DdXu9wdipLIiqqCgAhRYaoTiRR77sgfWqJJwnr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 244f0b89-0262-46e3-1189-08dd34686a27
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2025 06:55:21.8432 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DvZKrsgnaNuJU+RJLWrYxOlwrqs/LwQqoc1RaVqJDoxqKBApUC968X74KdS8TUtWRh2mWZ9NpoAF3drnUcsEJ4iKZ1boQvs6V0NPT9o2zpc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7062
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736837738; x=1768373738;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PBKGfBK6kv52Lcc7Uj+o2SWM7vb/bIjUJt583KXysao=;
 b=SrQfzcHhtEkP0XCwrYi/IugNDZoujFVaKzIhQ1OnByCMryQpstWoDdtb
 4/QOUs7CA/nC1zVYwnbiHwaTOt3ho2gXvKd+wfIum8GOxAnPN4hPPztvQ
 Nqomjvpxf9W0cAO0v9Hqkd3iqyRJ4u7ois3cNw42RpcV5T1uXL4CU27yc
 Gk333gQbG+9DWYVXXFw+afdJvNJlFbrCUPxGJ9OJxZjcTj89H+kDCb4dD
 wkhqMhGGpL74DJfW3InL3QbCnXkd+BSViGs3rI70L8XvY9MPAklfgZXyB
 YVoJ6BvJEhv1G1k9jFg6wdF/kpMoXqCPXWkbRdb6JwJQu+XzvIiO8lyku
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SrQfzcHh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] idpf: add read memory
 barrier when checking descriptor done bit
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
> Emil Tantilov
> Sent: Thursday, November 21, 2024 8:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>; rlance@google.com; decot@google.com;
> willemb@google.com; Hay, Joshua A <joshua.a.hay@intel.com>; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; Lobakin,
> Aleksander <aleksander.lobakin@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] idpf: add read memory barri=
er
> when checking descriptor done bit
>=20
> Add read memory barrier to ensure the order of operations when accessing
> control queue descriptors. Specifically, we want to avoid cases where loa=
ds
> can be reordered:
>=20
> 1. Load #1 is dispatched to read descriptor flags.
> 2. Load #2 is dispatched to read some other field from the descriptor.
> 3. Load #2 completes, accessing memory/cache at a point in time when the =
DD
>    flag is zero.
> 4. NIC DMA overwrites the descriptor, now the DD flag is one.
> 5. Any fields loaded before step 4 are now inconsistent with the actual
>    descriptor state.
>=20
> Add read memory barrier between steps 1 and 2, so that load #2 is not
> executed until load #1 has completed.
>=20
> Fixes: 8077c727561a ("idpf: add controlq init and reset checks")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Suggested-by: Lance Richardson <rlance@google.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> ---
> Changelog
> v2:
> - Rewrote comment to fit on a single line
> - Added new line as separator
> - Updated last sentence in commit message to include load #
> v1:
> https://lore.kernel.org/intel-wired-lan/20241115021618.20565-1-
> emil.s.tantilov@intel.com/
> ---
>  drivers/net/ethernet/intel/idpf/idpf_controlq.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>


