Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wCPNF1LK/WkpigAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 13:34:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D7EE34F5D08
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 13:34:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 14CF88428F;
	Fri,  8 May 2026 11:34:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KAWQ3Ir4XshC; Fri,  8 May 2026 11:34:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 70ADB8428C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778240079;
	bh=ZYvd2KgK3zF0V8ajCK8mDDjQSF3WoRuAZzpOljUE+V0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ETXz3j/PfxB71e5VULQbu03Iug5evJO54uCC3SyIuitzuSrorDpIZC92tqKtBzhM3
	 2Bw8N/1xbWCkespCN/Tvz7JyISU+qL3055ru8OXGTI9w10H64Ou+l1HkWXxdWfVUnD
	 XBuzi8546gF9NqSDgZQA7sQlJlm5N6s+cn81qUvTAHAI+zSZHvgEND8ns5xFyxcGo4
	 v4J0hFcGMuw9sYEUzhCBGXA1ZmVLFhLsvQ8t7ThPe0cgOzv67HrjCJZ59Kev0bI+6t
	 RqfupfjSVQ1+Q//eJ/1qddaulSP4DQXMtBjTNqgM84pWJBqVqhb2hjN7fJSYQLYR0F
	 iU6LSNsiSHyKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70ADB8428C;
	Fri,  8 May 2026 11:34:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B6B42272
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 11:34:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A867241B73
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 11:34:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CbR2mQzfcQyH for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 11:34:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BB85041B5D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB85041B5D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BB85041B5D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 11:34:34 +0000 (UTC)
X-CSE-ConnectionGUID: RFf7XgulS4CoK1ZjXxvbfw==
X-CSE-MsgGUID: 50ypNG5aRVGuaNIiPK1pbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79059954"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="79059954"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 04:33:26 -0700
X-CSE-ConnectionGUID: z3SMbfOgSgKnRS2ffxZW7Q==
X-CSE-MsgGUID: 4wJwfI0YQpeGJpeYu6pBWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="241714480"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 04:33:26 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 04:33:25 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 04:33:25 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.9) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 04:33:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W+6tXReqHglFH1h96GSkBapXYWKQgWDuXFlM6sKcmnqmp06W3zq25W+7CGdUWjNyh1gbI3/bMIZ7fIzDbvlo1wXN4FzIND/nO2hJk5nSu4Q7UcIcgOonIc8gpAvfJtfVTxWsnowD0JdHCWAQAW0VVUD4/hvNtDE6y0ZksYP4/6c8BN0Vv0CXPvgZL0rA5P3Sgkg8LBbsdxTkhCOMj+45Mwois6hWz6Rj94gO89XnzSBgtBJz1zWEfOPQMkXc+lbyU1sPzgydj4Hvb4YvhMGOZ2GaNjq21TBt/gTuoA8cVVMteddCkZs6FCA3fytLEcMyGqCrImRQNn7icFSryivUgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZYvd2KgK3zF0V8ajCK8mDDjQSF3WoRuAZzpOljUE+V0=;
 b=BCGihT8wKX7QA6TicgTYmW7/kONR5me1ZVVt1tplN+i5PesRwn4tnf6OpkNhb/HxYLDW5npeZhwejugiFgEtTuwm7fUK2N2PkemvEh8BKWHHvQPhXndEbc/yMWH/PxDJqQY7gXQOR+FpAVXV32oLNqXi7CWPdk9m1RJR6tBiF37M0EGIvnGIeLy5xLbXKg41mtAbWDWmgJjVNAfhnmnbS2eh9msSpTAmFUj7hK9tif0Mw7LrGt6L866UYZlif/kpLpGm0q5aMEEGXOdi+0K8WkC1qjRQ3506JoBzRim3a6gAaw3pmm7ZL38n/Is8kCnuAAJeFuaCeCz1W2f6yfNHdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6864.namprd11.prod.outlook.com (2603:10b6:303:21b::16)
 by SN7PR11MB6876.namprd11.prod.outlook.com (2603:10b6:806:2a7::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Fri, 8 May
 2026 11:33:13 +0000
Received: from MW4PR11MB6864.namprd11.prod.outlook.com
 ([fe80::3cb9:afc2:1be5:5d7b]) by MW4PR11MB6864.namprd11.prod.outlook.com
 ([fe80::3cb9:afc2:1be5:5d7b%7]) with mapi id 15.20.9891.016; Fri, 8 May 2026
 11:33:12 +0000
From: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>
To: Frederick Lawler <fred@cloudflare.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1 0/3] Rework ctrl_pf pointer
 usage in struct ice_adapter
Thread-Index: AQHc27VbX4mvLtRifECRj1T9Cp0qirYBQz2AgALAZiA=
Date: Fri, 8 May 2026 11:33:12 +0000
Message-ID: <MW4PR11MB68644D458DE5A1425589D953803D2@MW4PR11MB6864.namprd11.prod.outlook.com>
References: <20260504110058.2373236-1-sergey.temerkhanov@intel.com>
 <aft5h-Ygbjjr4uwk@CMGLRV3>
In-Reply-To: <aft5h-Ygbjjr4uwk@CMGLRV3>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6864:EE_|SN7PR11MB6876:EE_
x-ms-office365-filtering-correlation-id: a8ff9aa7-bcbf-4c29-8716-08deacf596b5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: tc6spwH5G86uWY9b8QP3GOEV7e322VwcY8hdQ8lhCWjdGBZtJo0jP7iHI/tOk17XaD7ZX97lc3ELrTxcmSoo4UU4ZH80amPZP2EffDESUSwEUknTLHqhwdawZE6HBKx3eqFZsOe8XpS3X55yKBQUW7deBzeDmdjd2/HPcXG0vIiHOgsjHVlcb6ICqNPHeRjIm3uYEVGygJNiqfB4B9RZu98mkzTOHFqE6F/vjR3KLevUpCvkRTgADxPVqMSnmbgEE3ChSSer0B27BO7UcNjFjR70k/nTamVEspGRckAw25OqhPdGhuvAoWT2N6znKIXoCj2vyJNyulfFijmBQUq096WexrHaLSwgv6Qgo3V7LqW1chONKt91ZHSwSj4eC4Bk+g0J+iO56ySHcpQUbobp+EQTC7o86/2SiuVuBzOFnq9p7OZFrwKAnX50TNCJ2E1itY8bpUeLdXwtmBEx+hIna1ersTRkvFUBr/cjGpraPYHSyv2pD4QbrGSd6MrbaCncvI57VXUd0jVqfWC1hq0wl+EoWU4ctVEzaGS1Z4KQ9Aj2NDR8cp0xs1+Nr0k4Ptp2W66DHuW84+WKO00LALLXCpoe2/EBdSdct4Vw/H7lp6W8GfKPw+uN0lY8Ka+ZeujdsGSM9fI2XmY8AUgkalH8WzQowS/3RfkuFBRp447lvsRhNVgqpSyg0YQbFXsiA9ZPnObcr8/pdHsEnvvYMjW+ShemCQ1l+FgNquEMXrY3IEBShCUlxHRNuoR0jyEhixR4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6864.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2gGFJ/eEDJtlMhPkYcv3Vdf3oAU3l3Pe7cwJsqTEwke3hf4+EF+RJuJQgEn5?=
 =?us-ascii?Q?yz066D5hw46YeHTnhdIu18pKtAYYgD+gn5CFLO9C2UJfLuaN11grf7baSphS?=
 =?us-ascii?Q?az86NXAzyG7B2g8brKMnZGaFgKiyvUOmj+y2KRgq03cpXWoyMevHIdspirsn?=
 =?us-ascii?Q?YvR4ldAferTBBvHJ4ChejxcLTBPSx3tTKz4ynqDZykFFse+tpfS8xCZwyGO8?=
 =?us-ascii?Q?H7Y1OI89lk6PdKpQFwlzB3vlcj6+omVltkeokYVZ9uNA085pqZucuMO9l9UH?=
 =?us-ascii?Q?eeJcjQwf4v1SA0S8ongVXyITK/DEQNvQyMqqf/jzKZbtpvuEsH60rRcWAvvl?=
 =?us-ascii?Q?w1Wp4FU8QkEqgO+E7rcpRiGhKoHZk61Xe/kr0NCxy4UYqKfZU9Jls50a1fEh?=
 =?us-ascii?Q?r+QVjCVTaRygNyDwD6OHG1CDdLwdG1HX31Y3Gy+9QhEel/xIlVJxxHizCL5T?=
 =?us-ascii?Q?KnHkKvKrniG8RR9QB1kW2QwoJqMnM7dZrs9deodX/Jo0Xzplm1Wlae5KJhzp?=
 =?us-ascii?Q?rO6hc9UK1Nk6rAw0bOo6H2w8lVMnVRsrC4SrxewxHaiggyT7nks/741BIPyG?=
 =?us-ascii?Q?V6LMnTDe16xkdmDi0zoFiPU8OoFmMAqzUgVNzaJPEQG9if7Zsw3Uy9s4YSiG?=
 =?us-ascii?Q?ECFdXDO66KSJ3nQLbASs22thhbYHQRJW4wWIlkDk3cHzQs7NfMeCBnmhOdtS?=
 =?us-ascii?Q?eYuygvF3RuGCsykCbQminnRAlHPCui/fF2PkvKP/3mx0UKDVPg6Ah9UBO0Z7?=
 =?us-ascii?Q?czCsgEKt15nnONIaxk91573k+JTN4pT0rBfbOTtCHDPEkJBkO/732se3JTQb?=
 =?us-ascii?Q?4OnlHAqjNejc40MHXBrOD8UtFzCxZXK4jPRnIv10kA9eJyzFtwcm9bnv7Z/3?=
 =?us-ascii?Q?sPtr03z46nDJt7pYR7gUqUAvBTK0HxOA6o17y6d+N7JgmOs9LPhnBy9yIdRZ?=
 =?us-ascii?Q?3VtVOGjieAzPBx4RCaCSHu/mkbJBn0aMv7wTlaSmiFHr95Z//I/L7uNQlObn?=
 =?us-ascii?Q?S3EKI4vWiZP15ZsJ9grI8CBc0folW7i2+vfmDFFY0ugN5OcOgeK48ZiQLuDT?=
 =?us-ascii?Q?YPqM1zkSK7UFponcbTH/wIDEwHsicD4eif6fGYU4IFPekSdLqWFFs/0hSUND?=
 =?us-ascii?Q?Mn0irJuCdXNcFpXcPtjm8Kd2H0RtWbpWouvPdaHuLu2DhejWyCuR6B0uDJeN?=
 =?us-ascii?Q?blfjTGmuArF03JDHGLgYfpuptGJeLBLzC8WfK0MA7yZF9lB5k8VEL+zvegDt?=
 =?us-ascii?Q?VpMzPy2MgTS3kR25+EaASRPQ6Puog2/z1aw4O7N7l11mLf3t9uvAfnEEvrOP?=
 =?us-ascii?Q?4+fHH4HaRkpfreHEP6c4UEN3Fv6R8sITx0/t6JXk0ikexpCOHmxK1vu/3mbb?=
 =?us-ascii?Q?Ve1/5f2/ZwFOfb9gBv4NW8kAdLGeYI4MU67qg4rKcMuLNp0io+ytuCdeq87W?=
 =?us-ascii?Q?5tzcEHDDSoasUsVXllKxlzyXXT9/UI1XqFCr0SAzZpVahDPy/hAzCJJwThem?=
 =?us-ascii?Q?k9T4g1aB9sWvAYtzbDVceFS/j1XDVhNt1zxwvokNBwAXVNdYEaMLpqtXoSb0?=
 =?us-ascii?Q?c8WMCUuzlx010HEscVQ3OgMDbo/IKayVfPYf+j/LTSryJW1S6VIwl1QyYta3?=
 =?us-ascii?Q?pAaUdfyq2M6Q5YItJEim1gvVYA0/w7M81hmDVpN59DAi4tvHdwugApmukJkW?=
 =?us-ascii?Q?LJFkqaMjCleEv/E9lYRyy+NzeFbcP+ZTedB+LdPREsNb8WMUVfbH5dRvecOv?=
 =?us-ascii?Q?0Muj+oIdfQx4M0orPsllRg5acSzBmIg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: TK6ClQLv6D5L99bkBK5S7neJWEmjo8+UMVeImgYaNlervKQHv7LxxppALS3M7ZOsM5jIoT8kVMdhoKS1WJNw/0QCWWZUHWHpuwi9vFyM6CAEFKiBcPhQgoK2sryBlUxQaGvdVmQsF6AB3SzYaPfaFl0rPGStMA8D99rwGVjBCK3GGYEj5tZlXY5KjkTjQpf9GgENvsPkoeU6TOScNIYurwg/sLaNalddZleyu0r+SxpkSCcOCEV6/LQB8cM2ufwzo38AtGaGVRLWFj9GqFsbBb+aFRWd2QHbjvpPi7YVBW7x2EnI6CvzPw1vhrDuLyTHX0avaTF7l9cv/AM5CW7Unw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6864.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8ff9aa7-bcbf-4c29-8716-08deacf596b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2026 11:33:12.8548 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KoZX2ez2ziDS9vZ/OwdmXsPLxZxIL5O30DcxTZgcWt3ESMv537JbzbdQTfRkoQlRayN5L5tLhn817lZ80rys6E3ePNGEws63/ETuODyr7EM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6876
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778240077; x=1809776077;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZYvd2KgK3zF0V8ajCK8mDDjQSF3WoRuAZzpOljUE+V0=;
 b=SlxCqPma0tHs2EjjWKpia+PSi5EECASydOcEDrMuBdZB6zt07vMK5Zcb
 D1/ogQgtGWfCeGibSbDSWhYCYTKgeBDfuuKLKND8+ZLHu0kZNlVmeCmCR
 qho2e8TyCIyhcy59e4YsZR1QWxtZd1CEMDbGrKF8sIY+OpJOZL6cGZ47P
 ibr7nULAzv+E8uB4Lz4L51LHuO2K7xYgxuJHcsZo3K+uYL9yvdGsc1qUf
 s5D6HjBrNs8GD/Abg3O0IbSORXzPNXNGYOcqOBwU8gsXNbTA0AP5+GNzi
 ghgKOs5g3wfXTFbCRtsvFoeOjrLJuL+xEqUak+xW6lcHhjKfNzibUq5l6
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SlxCqPma
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 0/3] Rework ctrl_pf pointer
 usage in struct ice_adapter
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
X-Rspamd-Queue-Id: D7EE34F5D08
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:fred@cloudflare.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[sergey.temerkhanov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sergey.temerkhanov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Action: no action



> I'd like to test this series, but I'm having a hard time backporting to 6=
.18. Is
> there any prior work I might need to pull in?

It sufficed to cherry-pick the commit
ba694e66889c0ad15b06ae60175e1e958a0691c1 ("ice: remove redundant checks fro=
m PTP init")
from the https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.g=
it repository on top
of the v6.18.28 tag to successfully run 'git am' on the subject series.

Regards,
Sergey
