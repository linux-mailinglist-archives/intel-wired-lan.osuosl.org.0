Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1881EBCD0F9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Oct 2025 15:12:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9F6584644;
	Fri, 10 Oct 2025 13:12:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bntr_pcfsBTw; Fri, 10 Oct 2025 13:12:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B3C2F84638
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760101972;
	bh=qS4QgxkW3eOwE7V+lLVvhGRaVSqREGr/YJL6YsFmmIo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=G+OjPIqUGA6S9xAg7ChXvHosnpzE8zZ7ndkDO41juQzla8ZWpCQ6YFxbLl9suKzqB
	 2uLGq2HaekYfmNVDt/HzemYIQ37Ex3d1CLqzu2wcUjDqNFg6W75ToDp1Zq0MmKylwe
	 Q7eoQEId/3G2FFSrfhMPKz1xh/WeuOBttUR/9dP4R5/zMl7KpQ7TD/LV3lYJ5cgHdP
	 5JNwxYJMDzAc9vU3aRzaaUD82o4UH5PLcHrf+I+MZoPWKBAMcjzAAz5nfVwEVtHPzc
	 i/LSqF2cBzfZNvs3UiAiL4ipKbex58OoJwPb68aqegGW935pSFR4+U6TTfk33hkHhu
	 eVPLzXvSRC9Kg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B3C2F84638;
	Fri, 10 Oct 2025 13:12:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4D616226
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Oct 2025 13:12:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3E08241416
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Oct 2025 13:12:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HX19AiZtE7pW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Oct 2025 13:12:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=marek.landowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0CE8F4140D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0CE8F4140D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0CE8F4140D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Oct 2025 13:12:49 +0000 (UTC)
X-CSE-ConnectionGUID: wjfNwn9nSxGWsA1f8RCA8A==
X-CSE-MsgGUID: LzbmVEptSHGQfohGA2QemQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11578"; a="72932227"
X-IronPort-AV: E=Sophos;i="6.19,219,1754982000"; d="scan'208";a="72932227"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 06:12:49 -0700
X-CSE-ConnectionGUID: igP8wzwYQPOcsPUuoU9bqA==
X-CSE-MsgGUID: yUdO5pmDS5KwM+CnCcHc4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,219,1754982000"; d="scan'208";a="211628543"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 06:12:49 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 10 Oct 2025 06:12:47 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 10 Oct 2025 06:12:47 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.56)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 10 Oct 2025 06:12:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vlIYbubUUOQAiuD6MxVCig+FsCX3aeNbc95NMlw/ctwvqLTKMjVPCcpjBlOGxinVNLGMGrr06FqGAK5Dp5DUZCk4Igm00IY3P7j4ptdteG0veFH3WKyHTABLBsvn2O2SZFCuIQvcD3yetMZExfBF1oc52EUSAkpRuNxaZflgaPr8cBtwVoGmIlQtdqcO5YbeVdUPCO+LSgdP3RoIL+inWtzKHRZRBrkzzGh0jofupsvxAFa3cEufObBTWh7lZf4Uv7OncG6mQZt9lEfwAUPYrl74Xrxe5sIzGRfBS0+ZLjowTt9GNWXW/+W/TQ+cTjjEd6Uri10yLls6k+xU6C5bzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qS4QgxkW3eOwE7V+lLVvhGRaVSqREGr/YJL6YsFmmIo=;
 b=qFq8cYGOM4X8IIIvwRFnoxXeYQSNEwVTJcRoM36ALph8I9hf5Z4K6mB4wTg6Cbv5gRuRfD59hyl3z8FvsSYzBUGkbjbW3BFc+3Ec20mcImtuXv81Sz5DE3J7wXCX75zhBDdg/mtvWACMCI04HBB9oe/ucJSNPlWe6TEPv9130lO7urFopDRA0UdsoEuSmgf1JiweTwOVb9e8Geic8ERIMlXfA11hKw75VUBMAIZLbGecIIb1RqIVZgzOKLpvlIz7rQBIzbfQcBEXbOMCdpw3WmAUwFE7/Id07JalIYJElAygf6rBN5y5OhUnd5MAxGaeJaiWW2SOcFi+LZwyjjztpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7557.namprd11.prod.outlook.com (2603:10b6:8:14d::18)
 by DM3PPFE8B1F622C.namprd11.prod.outlook.com (2603:10b6:f:fc00::f58) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.13; Fri, 10 Oct
 2025 13:12:44 +0000
Received: from DS0PR11MB7557.namprd11.prod.outlook.com
 ([fe80::fc44:fb3a:41f4:b8b8]) by DS0PR11MB7557.namprd11.prod.outlook.com
 ([fe80::fc44:fb3a:41f4:b8b8%5]) with mapi id 15.20.9203.009; Fri, 10 Oct 2025
 13:12:44 +0000
From: "Landowski, Marek" <marek.landowski@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Chittim, Madhu"
 <madhu.chittim@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5] idpf: add support for IDPF
 PCI programming interface
Thread-Index: AQHcLxbHMIixv6e7AkisiVpKkkSSnLSptdcAgBGmC6A=
Date: Fri, 10 Oct 2025 13:12:19 +0000
Deferred-Delivery: Fri, 10 Oct 2025 13:11:47 +0000
Message-ID: <DS0PR11MB75571E0BE5A3B82C01CCF3C7FFEFA@DS0PR11MB7557.namprd11.prod.outlook.com>
References: <20250926184533.1872683-1-madhu.chittim@intel.com>
 <IA3PR11MB8986359A7987D84D5950113CE51BA@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB8986359A7987D84D5950113CE51BA@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7557:EE_|DM3PPFE8B1F622C:EE_
x-ms-office365-filtering-correlation-id: b78e42f1-7113-4bd0-bcf5-08de07feb377
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?UOC/uTroLy1lgYffJS0MtVRTvLKnfD+vBDhdkzkZQGJFktL+7PuIYBICK8GU?=
 =?us-ascii?Q?gjpkLudi8Lhkrv2ss0Uitrb3tg9SBBfppy46I4xbG+v5MXBNw5ZNjkWM1rDo?=
 =?us-ascii?Q?NlM3nEO6RcgIDvyR5Yms5AEAUb67tUzdxEKkif50ec6lI74YZWDDPjys4MOH?=
 =?us-ascii?Q?wTX37iuhCbPDLKSMpEb1dbaRnIIxVOpSMkDNFp4OSoXpmwxROaiM0xyystQ6?=
 =?us-ascii?Q?5RitJy4wDy0YuxeoucIOdwb1vppDOT1brcIAj8G7RHjtyUhHsidfUmRx86Ix?=
 =?us-ascii?Q?46rebjiF2Pti2dFm1LsD2ITb1RNmnyYsyZciNEeuA4bNYcTIK7soeAOS88VF?=
 =?us-ascii?Q?1B9ok7/heZWKEu9JQ89bT20hvkYJKgRz0tEX/Ucsfy7E+E7gkG7j0e83xSxF?=
 =?us-ascii?Q?H1s1WiN7KYHjFo3kA1JcIbDPvwiy8E1+OThvNSaZkZV1KP0vp9I8ApvlvqYp?=
 =?us-ascii?Q?jUoxuBztE09b8O27zNgUdpmmqVW1zpHV51u5BGxcXfTKxVMh3bA1Kcrou4mT?=
 =?us-ascii?Q?M/DrhXNH2ZAzbksPlzdApyf+0wkgEzEHc9iyNGGCp3nxz2yBazwOkQ//few2?=
 =?us-ascii?Q?CU25xqT137x8Y2E2lt7lDUnEgFtrFQJ500iK8cx2SN2dU+V6uvl1rS+g4wmg?=
 =?us-ascii?Q?nr6IM3E0vM1L0oBZBZ+JxEQWmxC4xZSS39HjY5QoQdC3BHNgJZPhIo7ev6zs?=
 =?us-ascii?Q?KL1d/6YC27p6HkT71byg25TZox+Job07GXtcHuQuyg7ZwinmdPjso9Ccej8S?=
 =?us-ascii?Q?xXhhLRq6Uu20p7sN/K3xijESIkVZlFbwT3N+HbTmSLG0Qj86JkV/XeFOXsJ5?=
 =?us-ascii?Q?D1/4RAcMFQrwF1excpT99NXpJi3Ap7K3jOUuv3wxJTZZF9u19Mxvx2CmNi7P?=
 =?us-ascii?Q?h2IfzAbSuM0yHF9E+KWWVJ9nOMvGyEGtFa0I0uBG746swC431AkzbLvZybXD?=
 =?us-ascii?Q?0lkDRunuoILU5HNwXujagZVJtsuXFFK6wXAn/hCPKeTUhxo4YZwvaJUZYmFO?=
 =?us-ascii?Q?M37KvOPvZVUTSk1UeiRt/QdwtsISVCCn0eCHX4S8N1oYhMQ6XkUu3A5m6NnS?=
 =?us-ascii?Q?wazhpL9PofDN+5R7yapiKUO6wm66Fb7ZCfzYA2ennNIZCIh9bjafa8rOdazR?=
 =?us-ascii?Q?7tGvqg5oY3UKE4Hk+uXjlZ8ZAf6fzsAu+3lrf7H+09Daz0bG5C+meHXfsDei?=
 =?us-ascii?Q?b4f0nnqfqXRuYeupCQ2+EVatQG0FHaJxiVyPyUZxr4IrTHFFLieaE9TH8u9I?=
 =?us-ascii?Q?TAYL31XhPuaKRH0lpm/mZ3xUiZkZP8j+tgGNygjOttL1GbC9I9WnbUMVYlwQ?=
 =?us-ascii?Q?dNkTXV56so4+WBH8EFIu9tJU8sKCeUxuR75gupVeinvGKZcAJviSywSaaED3?=
 =?us-ascii?Q?EiMsUy4SJy/V54EiTWTZAL2ggXygc9TnCc74o49Y9LN+JiZsbaqpNBVSm3tu?=
 =?us-ascii?Q?3T56MuKKoqB8BMBZ67QfZhcZ3N5hJCj+trUPubn1nP9nTB/ovLIcaw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7557.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AQRyjkdGawuNo48ZIhcP0AxiGoJGE10slgqb4tKrCSX2Y6sA09+74qDnCMIF?=
 =?us-ascii?Q?aBhFbVTQ+rDy9oCQoAIAgkRwTmugnP9X0Xx2IoP51jz9OA5UzsXYG2ynlWaK?=
 =?us-ascii?Q?fc17cNLBem1xq78R19PhIhZahBw+qsXBv6CHyAHAKmthoyEZYJvbC6DUHDcm?=
 =?us-ascii?Q?ACz1NIOPSs5hsJ8wFOOELzvusoEUEc9qnTrGfdYWfR7yTu6/HlFGC+xjIUEb?=
 =?us-ascii?Q?hLqaCBf14VMbLUU9P/OyK8lC4Nw/+44/WcGE0btjaAGNPIle2ScJeKlY04Fh?=
 =?us-ascii?Q?aOkQQ9IlkHPcIdQkWEwP443fbpo2uvBi7KujeMJEQOBlurXr87G6WdXcfSfj?=
 =?us-ascii?Q?SS2gR1pzho6h7HLf3zpDrk8Cl3D5jvL5Gjzu0sDQvIOv7l2FW1D6oO16Ab68?=
 =?us-ascii?Q?AbMfE6UtbaBOKa3XNj1+mW1oHkUkBE1C4vUOE1rEVnXV03JG4V4gaoQmN6VM?=
 =?us-ascii?Q?34aD63Rq610/rYicX2jg5rY84PdQplLes4jckrkQIgNo29uBy/uQ2ZxtJHnz?=
 =?us-ascii?Q?NOCo15a0YJ5BsAFHTBdg3HVvOG4a+SUn1MNXXPozNTxsK8msV0eDxLNIFiDP?=
 =?us-ascii?Q?3z9aG4c/1i79pTav9c3zRKR3b8iNgitJbA2xU6G3sEXnrM2OngPcScB+hcHi?=
 =?us-ascii?Q?E2J60L6UhruKIP73k+sx0cBGNlZmCGIaxdg7EPAaMqmXroehPaTnPnTApL8B?=
 =?us-ascii?Q?VjDNJD3ehO/PDLDiU1ALvR0QDoHFfjYR5J544DYVpIwm96+nbOgUmVIwZixy?=
 =?us-ascii?Q?uBb92xk2CjfBOMEkCIPGwSqEW+qbQC/tVvasMYKeSoU+A4J5MlAn9hNBwxeN?=
 =?us-ascii?Q?ezn201u05SjW/sR9CMj8O0y3eb3EgKZzLyXyH1dkgEdHGg0ovoO6PmePBV7C?=
 =?us-ascii?Q?hcU0TVl6Q721Wzn8ipM8SG0kggZZpBXEffm5vjiQyIUq2Y/GsOh5LmC2c8gp?=
 =?us-ascii?Q?ol+ytldNJ2mi6EQgF/L8TqDWPwxglUyACQhB95MeG01e1WLGPUKvOOiA2YbV?=
 =?us-ascii?Q?m59oA4q8r/qi+p6IRcOGO5Kb78XpN7mXi+szz4hbpEMv35WPDCMyYMATUsCJ?=
 =?us-ascii?Q?mQ5BNj6SDKvxtJcZeIKXs0/Am1B3gfKkmpcP32tHIxDGi3kgnjiBV5zrnpNI?=
 =?us-ascii?Q?FKGgCAlMY+qFy6xXPc42Upz/3XoBijN/bG/XLYsDrYUjDSM7tJ9DZ4s89YX9?=
 =?us-ascii?Q?6Z9RoOlXJq3UUk5ToLca6o3TgXOWsLFPUzfwy9ma2+jv5F/C5jDBVUSimWzc?=
 =?us-ascii?Q?cNJ0iLKul9HIJgaxGLTEwp+uwdKFwsyIWhGYZbv//D79GsAUf7w7V1FjEOPt?=
 =?us-ascii?Q?bLjC+LVHy40oKBrHSsuUgSDacbB7r8F/tRZ5GGc4U/q8t/tXnZEH9MlWU1FE?=
 =?us-ascii?Q?SrqDF1XGhbQDtH9k3lOcDrw3G9/yGqcRzjRVSUQK7zPUSSOtvu1Qch2pGYkF?=
 =?us-ascii?Q?MQ33cwCeXjj+b1RDZUTfFkc/fEH/B+o8O8HHFShTzW6gg8cORuDshSd8mjff?=
 =?us-ascii?Q?VPiLX4EBzL/56ExyYEyuoFgJ7b1dgDhl4RCiq3mnm14V4EOa5pnApQGA5kjV?=
 =?us-ascii?Q?qcnCMKr6cuJCYm0lKdZuiSRjfkfX+WRtta65T5uS?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7557.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b78e42f1-7113-4bd0-bcf5-08de07feb377
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2025 13:12:44.6617 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W8zkWZdhretXfAZ8Ci/ax4KCRtumDxeC5KeH4VonTqXYtUFUA1dyLIsWjAiMjg7HOyrKfezh7BMiMu5VS0vYfKoDHDmaeh0Zysg9UZjFjzE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFE8B1F622C
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760101970; x=1791637970;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FRHBOWNsWkEcdJqVjdpXvKsqYSD163HkuFjZ/5m/omg=;
 b=c04uxI3ZFenRbyP9FeM4NnyPQIvaoEYvhWcUKKjRtMrU5gATxdxxL+1H
 6khyYTWkHGc8LYH5w1jSmA9eMzzNeiR7Zml5VKKN57OSPyYno8/XIomLl
 2hiQPcurLhw3ldHJb/Kaj/RafxnWCy0awd64PK8tfoZ8qWxNIeLOaGOIi
 0P44DHV9PGXTsruB+T7VUb18qaO0O66LXuhGyVg1P8o20ODhQcyIhqUyu
 tnEnI+LsZe+1PMsvt0uWLLV4A6htpxyyeV4Fn4gFdXwWfntsf40buhQ1N
 fPIgiHXY6V4+7ZXATmWtjr+vE/1rTPdPKknFBUQg1BfEbkShLOF1b4SIk
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=c04uxI3Z
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5] idpf: add support for
 IDPF PCI programming interface
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
> Sent: 29 September, 2025 08:27
> To: Chittim, Madhu <madhu.chittim@intel.com>; intel-wired-lan@lists.osuos=
l.org
> Cc: netdev@vger.kernel.org; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; horms@kernel.org; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5] idpf: add support for =
IDPF PCI
> programming interface
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Madhu Chittim
> > Sent: Friday, September 26, 2025 8:46 PM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: netdev@vger.kernel.org; Lobakin, Aleksander
> > <aleksander.lobakin@intel.com>; horms@kernel.org; Samudrala, Sridhar
> > <sridhar.samudrala@intel.com>
> > Subject: [Intel-wired-lan] [PATCH iwl-next v5] idpf: add support for
> > IDPF PCI programming interface
> >
> > From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> >
> > At present IDPF supports only 0x1452 and 0x145C as PF and VF device
> > IDs on our current generation hardware. Future hardware exposes a new
> > set of device IDs for each generation. To avoid adding a new device ID
> > for each generation and to make the driver forward and backward
> > compatible, make use of the IDPF PCI programming interface to load the
> > driver.
> >
> > Write and read the VF_ARQBAL mailbox register to find if the current
> > device is a PF or a VF.
> >
> > PCI SIG allocated a new programming interface for the IDPF compliant
> > ethernet network controller devices. It can be found at:
> > https://members.pcisig.com/wg/PCI-SIG/document/20113
> > with the document titled as 'PCI Code and ID Assignment Revision 1.16'
> > or any latest revisions.
> >
> > Tested this patch by doing a simple driver load/unload on Intel IPU
> > E2000 hardware which supports 0x1452 and 0x145C device IDs and new
> > hardware which supports the IDPF PCI programming interface.
> >
> > Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> > Reviewed-by: Simon Horman <horms@kernel.org>
> > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > ---
> > v5:
> > - Removed use of resource_set_range
> > - ioremap only the register which we would like write and read back
> > - Renamed function from idpf_is_vf_device to idpf_get_device_type and
> >   moved it idpf_main.c as it is not specific to VF
> > - idpf_get_device_type now returns device type
> >
> > v4:
> > - add testing info
> > - use resource_size_t instead of long
> > - add error statement for ioremap failure
> >
> > v3:
> > - reworked logic to avoid gotos
> >
> > v2:
> > - replace *u8 with *bool in idpf_is_vf_device function parameter
> > - use ~0 instead of 0xffffff in PCI_DEVICE_CLASS parameter
> >
> >  drivers/net/ethernet/intel/idpf/idpf.h      |   1 +
> >  drivers/net/ethernet/intel/idpf/idpf_main.c | 105 ++++++++++++++++---
> > -
> >  2 files changed, 89 insertions(+), 17 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf.h
> > b/drivers/net/ethernet/intel/idpf/idpf.h
> > index 8cfc68cbfa06..bdabea45e81f 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf.h
> > +++ b/drivers/net/ethernet/intel/idpf/idpf.h
> > @@ -1005,6 +1005,7 @@ void idpf_mbx_task(struct work_struct *work);
> > void idpf_vc_event_task(struct work_struct *work);  void
> > idpf_dev_ops_init(struct idpf_adapter *adapter);  void
> > idpf_vf_dev_ops_init(struct idpf_adapter *adapter);
> > +int idpf_get_device_type(struct pci_dev *pdev);
> >  int idpf_intr_req(struct idpf_adapter *adapter);  void
> > idpf_intr_rel(struct idpf_adapter *adapter);
> >  u16 idpf_get_max_tx_hdr_size(struct idpf_adapter *adapter); diff --
> > git a/drivers/net/ethernet/intel/idpf/idpf_main.c
> > b/drivers/net/ethernet/intel/idpf/idpf_main.c
> > index 8c46481d2e1f..f1af7dadf179 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_main.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
> > @@ -3,15 +3,93 @@
> >
> ...
> > --
> > 2.51.0
>=20
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>=20

Tested-by: Marek Landowski <marek.landowski@intel.com>
