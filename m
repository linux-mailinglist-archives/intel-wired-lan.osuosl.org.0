Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0D4A56176
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 08:05:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9131360741;
	Fri,  7 Mar 2025 07:05:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nyu6l8z1tKkQ; Fri,  7 Mar 2025 07:05:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B8FE60C24
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741331114;
	bh=d+nttruWy7cpkbQlIIDnqB5oVSNRnKbDw10z5H2KBI8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DBTNKCNrg0RjBVhIODCWoSo6IRj/Zcgsl8zmeiQRt/5oPllEbWWG3V/0W2RfRwpSo
	 4WieCaX0lHvtxUSMtc5uEpHwCV5J49c7MFYEYLXeWdk/athtbRNJ4k1AzSe2w3+gHR
	 EahXolml54I00EqKOd8X7w6v+ePO/ScgZqX7SHMm/t3hla1VGAmjdgjmkP60JcJtXx
	 WVxVu65n0wuj62/96jDHyuvb+UZCIdU2al8rYT1P2b9E1lImqQIiHYmKwptKrZDBmC
	 vbDQMQwpiQUMTomeD5pclGHfU0J/k7lclG4ohtaxEVAb88zZ+sDGnGznaMkTtM5AG5
	 nLl8CWLshqw4A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B8FE60C24;
	Fri,  7 Mar 2025 07:05:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C68DB71F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 07:05:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B5AE381171
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 07:05:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yZbHT-Ru6U0K for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 07:05:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 78F6F8112C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 78F6F8112C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 78F6F8112C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 07:05:09 +0000 (UTC)
X-CSE-ConnectionGUID: n0kGZ6LZSHC2+3bjBCeyvg==
X-CSE-MsgGUID: GmPIBnSJTiy8lU+/jgS7Kw==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="29951706"
X-IronPort-AV: E=Sophos;i="6.14,228,1736841600"; d="scan'208";a="29951706"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 23:05:09 -0800
X-CSE-ConnectionGUID: o85piac1QkKxHLCHhTIsmg==
X-CSE-MsgGUID: 7RWvVpcmRyKbnkmx4Uc8Bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,228,1736841600"; d="scan'208";a="119755257"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2025 23:05:09 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 6 Mar 2025 23:05:08 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 6 Mar 2025 23:05:08 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 6 Mar 2025 23:05:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VYEn2ovzX7+jUuCmhZ0wltmcb0HqBveL/HfzvQxYcnQLzxSE3WDNii1t7sn9ynDL/IY6iLTNVvtrYdWMtONVrCUULowaSkBb+vvwHR0ZXCpscfH0Jzjtn6N9hPrU7892OXWtgL3CLylL6p+vBVKpKki87LDIy5LL64VOjMlwBKQaFG0vDei/Spp5fCXA1UhxD20NYvOrlqE62vTaMjNT1l8OELuUyQx8WY2ZttFp8VUngRS/Bs0fTvQefGLKSPmhZn9ca61WltWMTtwgMnaslQy6ATK/M4BUz/qw38odlCidpaURAFygXRiCHl5JXUnHox6IIQARsXjYGv/hjac24Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d+nttruWy7cpkbQlIIDnqB5oVSNRnKbDw10z5H2KBI8=;
 b=xsiGMxsoxegfrlBQUcgMYQrA6e89N61xa8qkZzdz5RJfalI4NSHBHWWhQrOIVAbmHMWrOUndeQdBTbQJAbqYSODALkHvRZhE0+HkO0ByglzOUrePYJIQN+S7Dr6YEObo9Y0m/2vfKgXKVJqj/8y+Dj2qRAT6yGzS0AlAnolsJ6mNyxODnFsGRzNsw6ykMF9hzq3dLuiErNzV6j9dN09AImOhZkNCDXFrPxpfljVjUK4xQYay3hDE8zrtXHZLr/YNtqgIK30MABV4FYtQ3XJrtQdbEAIKcFdqVCVGg6ad8V6g5mprpR5XVaphMONdC2rdjIDo73VQ3nCjFdPIbXQ+IQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by CH3PR11MB7771.namprd11.prod.outlook.com (2603:10b6:610:125::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.22; Fri, 7 Mar
 2025 07:04:47 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%4]) with mapi id 15.20.8489.025; Fri, 7 Mar 2025
 07:04:47 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Jesse Brandeburg <jbrandeb@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "Brandeburg, Jesse" <jbrandeburg@cloudflare.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "kernel-team@cloudflare.com"
 <kernel-team@cloudflare.com>, "leon@kernel.org" <leon@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Ertman, David M"
 <david.m.ertman@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH intel-net v2] ice: fix reservation of
 resources for RDMA when disabled
Thread-Index: AQHbjsE4NrkfeKgnxEeJR4TcjeH4dLNnQMcg
Date: Fri, 7 Mar 2025 07:04:47 +0000
Message-ID: <SJ0PR11MB58668A82A07F8D3DCC4B9159E5D52@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20250306175640.29565-1-jbrandeb@kernel.org>
In-Reply-To: <20250306175640.29565-1-jbrandeb@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|CH3PR11MB7771:EE_
x-ms-office365-filtering-correlation-id: a31a592d-df9f-4900-f880-08dd5d4658aa
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?csraULbVTXfbGOxJ1/7RgDOz/FtDTm4/cF7yRQW8eVGceBGYBq2zxHdH1I3x?=
 =?us-ascii?Q?yrzoi3YXOLfkbwQqbI+YUB8pGXDZ9LG3cp7T4l0J3sFk9j9qLbQcOLaBENpT?=
 =?us-ascii?Q?5OwZggkuQMyKxaX82mD9rayO89hrnQ2yjqncuatDxvDsSjXKboEQWuirzwwW?=
 =?us-ascii?Q?EU14ePerS1Y618pX8y0V5RqkJh57ByPTxrgC1RCxlUG+cxy3loFLKmrOMLBf?=
 =?us-ascii?Q?oEA1kNKvQ3s9JQqBvWItNnJYPr2i0FihtrjuYbBL8M/GtQqMTUaEOM0608VY?=
 =?us-ascii?Q?VD9O8PTXFJv5I1QamW2Ne5pVWtJoJk6cCY/dp9bSEEzgW/c5sCyVOvZ6m108?=
 =?us-ascii?Q?9d76UkBH7Vm9s2S1JqYtuSL4GW5jR03T9h7w47iS2MTytQznkBBBUFnmIrs1?=
 =?us-ascii?Q?EGJY2cbgvA8IfcjPsi6wrbOR5ipkMPiKZac5x7PV2L3S4AWpGDwADEgOmSuW?=
 =?us-ascii?Q?5bE07gc9Q2NY7YBk7zdJOR5vXFPRct8aL+YMClOlHZC5VXqqehHMVCwUksxH?=
 =?us-ascii?Q?qb1n9sSS5UNtcrYhIyPqYSKQLxEg9JYN/jXU5khVQMPuHru2ROVl+qp1/hOA?=
 =?us-ascii?Q?dgqknGpCNNmuycImHfKPzvh2Db/vhgPcC/kwQzw0K45BfmKsbjMhQ14J8M+r?=
 =?us-ascii?Q?7Y9w4Q1Q9ImOoV6peZgFDOnBTNybvcREm9R2qS08ZDeD7MAhbzPGcuK5XlYB?=
 =?us-ascii?Q?Z3X15tSVgGNW/A9f1qz3fkAwX67/8L76pmtWZ7/Jd+CrUdNEnTv/L+B0U5Um?=
 =?us-ascii?Q?DB7PpJIIeJbTVa7HckvCrgQ6iihdhbTqN6me/vsOmc1hiz+jrS1wWItXs+BN?=
 =?us-ascii?Q?JQAhlaj4uqg0TmlfLH7AZSTn5/fpTOGIGAlgBVzTb0BEu6rrgbRV9zr6pXfH?=
 =?us-ascii?Q?q75r0qAASGqf7PFYIzVzNZgfw5gBGzLWg2AR2Gz5Rg1BM1oFTUm2i1mhZBRs?=
 =?us-ascii?Q?BFfC4uc1bf0YhiBEu5SvddbeR3Id9jyoZo5irDzC20/P/E07VNyy0N02vpJs?=
 =?us-ascii?Q?eRrhaDET1Y9EE4dVkdFhpPPvJaiJ3muVVPBXHSnhR2yQQrn6ECxxtLciFgV8?=
 =?us-ascii?Q?OdyBtDNsqdj0c4LIyGHVoe+2+kHmfkX4dSfx3Jl5t61zep+U0VbLJ9Z45MvP?=
 =?us-ascii?Q?KsttbRdeZu5wGax2+M12YvjZ0ZiRPhOi5QHlWMKuPxPuZD95QdaRMty9BQ84?=
 =?us-ascii?Q?UMRZD1yfd/MDnziIIhZTKglrnFntfgsVgGzQfSJYulaQ+jfzAdJHMLlt1zl5?=
 =?us-ascii?Q?srD3OxrLvc9bUgef0X9f6k9IDjc+/Hc7qHZAJGFiaCtgSN2YwH0Mp6mUkoWz?=
 =?us-ascii?Q?S+q3OsW294DcQszH5hGzwNi5jmjCYQJBc8bEWcjcMGraRZENbsQ7Hn2bLC3l?=
 =?us-ascii?Q?D24na5bXnA995yIXuABdm8td98y7suSwGo6cja0TY/uWWSZzWdUujBkH8HI3?=
 =?us-ascii?Q?vDcy+u4a7iiXS3qCaKqyYCnnYgZb7Glo?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GzRKYBpMIPX/Xy/lZJ7+vSn49IbRG45nVDPPXz+QK9acGDZy5xZe5Cv3IKwN?=
 =?us-ascii?Q?SgJDSR6CetxxTolkgev/Gbny36myZ25VJrlQTeWy5+rKfaieqUO1mTg5R3B5?=
 =?us-ascii?Q?swNFiAWZmfFjMY7inOJ8DlZjXkWOFf9HUFGKBtEpmsfsi+Zt0hmiYrYA3HOG?=
 =?us-ascii?Q?OR1LgNkFzU2dZQ7OlEFziQaYs2Rx5Inbt0lARzHcZM1DCsQSnzPAI8CiEYei?=
 =?us-ascii?Q?6YoQ8klnwmTN5SCFumegxOIqnGYIJkSdj7TT/ZZtuzysTob/kCA1zG7UgDOG?=
 =?us-ascii?Q?MwSs9rG0HeUU3uAUx0dNUZ1oCVntVshU5LVECuwakozfo7orLT2QhPzLrppy?=
 =?us-ascii?Q?aJBmcOR35B6Okf+gPNDgrE1SMP4fP8MR6uq3dwlOoGpAWVQ10vdxDoN6V6pg?=
 =?us-ascii?Q?foYoGTQ1oLZZ5vQADEZVOhotPEe1FBBCWd1ovYVklwZe7e1OWKikz/Ytw57v?=
 =?us-ascii?Q?wh3nnlDl1ZiIvH/2ka55JLt0WYPmwbl3/ArMQOXQjW7pJJBwQeZrdzwB4viu?=
 =?us-ascii?Q?nxvyHqqofQU7tUlernSiphKTDZV+jxg4B2XtJVBa46gC7JVPRWq9qzwfCqHF?=
 =?us-ascii?Q?zyb6wDWaxVU4gtwf7Z8GW3LPLOaFhQF5Awjc3U9Fd6Dns2n3taEJ1DlHKqwn?=
 =?us-ascii?Q?12PARUa6/gyNHo57PvSUsv89NzZ2v2jut4wo/SnBORkBytU4pkQjc8SL2FNU?=
 =?us-ascii?Q?u6zwL5suRtIT6ssjnFLOoUSlsfhF1KNd2iTmQojvM01rf46CPCkpXBY5XcZK?=
 =?us-ascii?Q?h57bgr17ztKEvUN+N91/h7+fiBqFXOPvoKHZSf7Kdzs5UFMqGd5+HdtXd45V?=
 =?us-ascii?Q?qhW/3/HcD+3tazQJksHU2f9TODSTEPifdkw35/liKuScXck8Pq43uKbNklyJ?=
 =?us-ascii?Q?6rtM8MNTRTaSoqCyuu0kLjGLBey8Kih/r+v69QUVeWKA+Ruai0Vqi5M5q9wv?=
 =?us-ascii?Q?tjPehGgnDSrdC4tdsG7u5v8dBbyFTVnz+NMgVwHvwk26aqECK1pnob3WxJBh?=
 =?us-ascii?Q?j6aWJXjsUs/8p5QoNmFRVu8TKH+gcl/NowhvUVfkr51nyqzW7qm3dAsG6xV2?=
 =?us-ascii?Q?lCaf3dy32c0JABGqO59oHUF6eLO40BdjsBBcwll6OQCP01oxg4EXL9AWPDg0?=
 =?us-ascii?Q?dHuMa1Ak4CDpbnGI6FM7DuXZ110uoHUW3fteHi4aDYCiQStxLY2VWU8+74GB?=
 =?us-ascii?Q?o+xIRLFcLs9wrc+5V8LB+uGufI7SGiNbAm/0GnQ86WwHWaWC3Rm9/FAkN/tt?=
 =?us-ascii?Q?X6ezOQLd1vkJOW/sihBG4x6ScBFwE4IIPSew69RqrjFAK2/UyhF1GZaFquOQ?=
 =?us-ascii?Q?ceRbuCorxL/CKRLCe5z+71YMst4kyY+5MM1qxEFR6WMk452OU4DpW7U7M0sj?=
 =?us-ascii?Q?OUl7G0OAulcBQ9dP2Zm9x3UnWMFQ/WFSeaE9n1/sEAMOa+jD+8XM344L1hf4?=
 =?us-ascii?Q?GIQs10I0VtcBWwuATHlISfE97esmnMLW0VN5teD/DHSLAUeoZopLRCu2xHrf?=
 =?us-ascii?Q?qMRk6uSmTfvc5upK7ewOb4wu8Mel6+YNRWpE2mHSqpSu6i5tlAfXIOQWuoW4?=
 =?us-ascii?Q?OSPRmHnet62poj4FY9XgwNsuTE4X+IbqnBQzgfQ1KL6tsSxzvtHoS2hik7Ep?=
 =?us-ascii?Q?ww=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a31a592d-df9f-4900-f880-08dd5d4658aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2025 07:04:47.2784 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kDPyGOviB0QiftXkexpumEJmlZp/r5tu8FQKwEOGzhzHL7rBeu1l9m+JeOvD+obuelajtMNlqsWus0SFZJUaCorjlTaN6TlyAs51AMXA+a0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7771
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741331110; x=1772867110;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qqm9kfg/CkSYJntBd9uIBEDdCv9GwVWMjY/o1EW8fhY=;
 b=bRD0ibVnrAiNKt1LQ1fVhLI83HZbM0jhlXyW4FHKz/Uwum9MfW172aZO
 QN225bLYIXyy3O5+2IMmp5+PWXWs6hTNmUBzDea7S6xmj1WbmfHpljMwR
 D5lJOhKOBYEz4IfZsRRvD7yApmw8EySK3UGsiUETgJDGd1TmqY8DzfLOp
 GH0X4dLvGXhEbZWwhSTelD1IDkovfJHrzWQd6LOVeaiVtEVpcZff1avZf
 EeCY12jZqzVAo1hsZUpgdXADBHnaLp23WPRBo6rIfZtKPhdS2HrZxyn5U
 YHTcN1B7LCUCXkL6A33NzgzNmE6FETw0OItqf8O+mNt1pKzHDJSLl6k7e
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bRD0ibVn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH intel-net v2] ice: fix reservation of
 resources for RDMA when disabled
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
> Jesse Brandeburg
> Sent: Thursday, March 6, 2025 6:57 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Brandeburg, Jesse <jbrandeburg@cloudflare.com>;
> netdev@vger.kernel.org; kernel-team@cloudflare.com; jbrandeb@kernel.org;
> leon@kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> Ertman, David M <david.m.ertman@intel.com>
> Subject: [Intel-wired-lan] [PATCH intel-net v2] ice: fix reservation of r=
esources
> for RDMA when disabled
>=20
> From: Jesse Brandeburg <jbrandeburg@cloudflare.com>
>=20
> If the CONFIG_INFINIBAND_IRDMA symbol is not enabled as a module or a
> built-in, then don't let the driver reserve resources for RDMA. The resul=
t of this
> change is a large savings in resources for older kernels, and a cleaner d=
river
> configuration for the IRDMA=3Dn case for old and new kernels.
>=20
> Implement this by avoiding enabling the RDMA capability when scanning
> hardware capabilities.
>=20
> Note: Loading the out-of-tree irdma driver in connection to the in-kernel=
 ice
> driver, is not supported, and should not be attempted, especially when
> disabling IRDMA in the kernel config.
>=20
> Fixes: d25a0fc41c1f ("ice: Initialize RDMA support")
> Signed-off-by: Jesse Brandeburg <jbrandeburg@cloudflare.com>
> Acked-by: Dave Ertman <david.m.ertman@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> ---
> v2: resend with acks, add note about oot irdma (Leon), reword commit
> message
> v1: https://lore.kernel.org/netdev/20241114000105.703740-1-
> jbrandeb@kernel.org/
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
> b/drivers/net/ethernet/intel/ice/ice_common.c
> index 7a2a2e8da8fa..1e801300310e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -2271,7 +2271,8 @@ ice_parse_common_caps(struct ice_hw *hw, struct
> ice_hw_common_caps *caps,
>  			  caps->nvm_unified_update);
>  		break;
>  	case ICE_AQC_CAPS_RDMA:
> -		caps->rdma =3D (number =3D=3D 1);
> +		if (IS_ENABLED(CONFIG_INFINIBAND_IRDMA))
> +			caps->rdma =3D (number =3D=3D 1);
>  		ice_debug(hw, ICE_DBG_INIT, "%s: rdma =3D %d\n", prefix, caps-
> >rdma);
>  		break;
>  	case ICE_AQC_CAPS_MAX_MTU:
> --
> 2.43.0

