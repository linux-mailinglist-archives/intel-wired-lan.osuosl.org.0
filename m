Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B21CB58E66
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Sep 2025 08:22:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB1BA6073A;
	Tue, 16 Sep 2025 06:22:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zS--uUKhsOq6; Tue, 16 Sep 2025 06:22:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 461C46073E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758003765;
	bh=dqImWI5493Ke+df4PhxDLBQg1qa4zutPldqOUL7djjo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Bifxuoaq9iHlxYtkoi+emCeqGfkJzYwbxa2CCsDnSveDLoEalD3rboOYMzZKNKncP
	 4ccWOHTdB2L5vDcFinQ7VkG3QfmLqnidI+6o4lLXu4vvkolZqwGRh5Qo7s5v6WPBRo
	 LZvjqNMKbeNo0llzG8c5VsKynVpaiqLpjnK1udP1I1V3M+yUWm4v2VMtp+IEooWGFh
	 LN1WAy1fknLeuV8ZwiSKQbigv3SmWdRv60dxqXn/J9AfBn22ii3cvomnxh1FmD2SBl
	 hkeWpw4dNMoR9igoGLU2twE+Xi0BmJertYDq1gbK6cCERvq6wjAqBWICRfoJ+p5edO
	 x2e0wmfIqiE/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 461C46073E;
	Tue, 16 Sep 2025 06:22:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id EB4CC22F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 06:22:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DD34A606E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 06:22:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PpMNeuX0x8ma for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Sep 2025 06:22:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0D11A60736
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D11A60736
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0D11A60736
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 06:22:41 +0000 (UTC)
X-CSE-ConnectionGUID: Np/WX9/YRIufjVG+h34H4g==
X-CSE-MsgGUID: Dppp5PvoSYyAkJ9SRhwH4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="70955003"
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="70955003"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 23:22:41 -0700
X-CSE-ConnectionGUID: oGDMfwHMQPakxNTZswbFzg==
X-CSE-MsgGUID: HaN8vF64SsWa317dvIrpDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="180092756"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 23:22:41 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 23:22:40 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 23:22:40 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.31) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 23:22:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=shb2hcJ4L66k6P5/y2IwWhc7ESw1BdJdRbnMMXDrSOz+wsTiO/c81AG8K5JKVr5kYiGT2ED/dixtAAQ3zRq9sz4Ibu57744yr7+BbGWPffph+3mvWRFR3gaCrHcEcorqYZT1KqgE3Vev5CudORmSf3DFu/EBgagxQ24XJA2PYtXX4W/5phWOsMM7/rvXfebPSqwYJn9/J0/mlygnJN/6L6KX3NnWs75xsHpJTtJaMg/wEuqL5liGAyQMLKDvoL8l9QZl+pyD/6oumGk98NXzudqOzMpleKo11cZzxwEvLa/B8PQ8LM3+YCx1OSmE2DCyjvT1WkAFpQjS4CveJGU64A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dqImWI5493Ke+df4PhxDLBQg1qa4zutPldqOUL7djjo=;
 b=dToFUVPEA0/8Fub/xwyODBGOJO/Qmk+ekKOJFYeDDxdzfSGEuBe4g6VHVCAAw5P2x9AVMrF8N3Y2NvmI/whwDiII9cTtmreeHJJNKGahIqgGeW5DMk78MF+OUs/QyiGpIQYJdlyqK6QjhbpbAC65dATZt6ZB0jAAIT9VRe02y1iNqyJN0qBIl1JlTwdFvOil9Yv/kfdH1sxNTE9l7ZEFc69tUQs3Zj1T6AAUbV2T+1uE82zUG5RuTLKfm8Ju7NMSd9CiraaqOOFtHVclMczP9JScYNpx7D5lPoejhsl2NbwmMh8vFqWRupJGfLITPW7O4r8RRJREdEC7Ah0zDRMNCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DM3PPF63A6024A9.namprd11.prod.outlook.com (2603:10b6:f:fc00::f27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.22; Tue, 16 Sep
 2025 06:22:38 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9094.021; Tue, 16 Sep 2025
 06:22:38 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ixgbe: destroy aci.lock
 later within ixgbe_remove path
Thread-Index: AQHcILXp3/RfPCenmkar+FhvAMkBOLSVYEIg
Date: Tue, 16 Sep 2025 06:22:38 +0000
Message-ID: <IA1PR11MB62419B24470EDDC4EDB618E28B14A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250908112629.1938159-1-jedrzej.jagielski@intel.com>
 <20250908112629.1938159-3-jedrzej.jagielski@intel.com>
In-Reply-To: <20250908112629.1938159-3-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DM3PPF63A6024A9:EE_
x-ms-office365-filtering-correlation-id: bc5ac92f-6f0e-4b60-ab28-08ddf4e96ee4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?+B0FkvL42VXMB9Eql9RB1CJTuMlm2X8Q1+2KxCxNHx35An3i5030yZWPIJxr?=
 =?us-ascii?Q?08d/akwWOmIMhMwRPvLYmXMvVUfsgqrRCNE/MZD92+ozcDWBv6XPDxIAVh98?=
 =?us-ascii?Q?DjCudWhnIq4/MwrJwZOFEjiQdMfZ6pUIghQIQCcDkrWUs39fABxYj+izowuN?=
 =?us-ascii?Q?J5CG7GlV1iw56+/Q0pL3cZPdp9G3CWmJSOca3ue72ikZQHP5gA959JlpxzEk?=
 =?us-ascii?Q?AqFylHd2jHKLX6HzpIXNxQHm2K3G2giok5svMU86FKo9FZOYDjpkkZYvXFp1?=
 =?us-ascii?Q?Yq6XVA5ByjkzRMYED6GIXTvyQ6Q+2rAzLm3WAaPn4Jj2ntn1MLMlVsFWu7It?=
 =?us-ascii?Q?Vz18POj+v8UToYO7C/Nm97axjJm3jjgJWe+BqDn+KSmQeZH2KBySb1hJkwA2?=
 =?us-ascii?Q?yhcmHyaJaoDCgIS1VTETuml5XZzWIJDspg73zm0jditR0czw9QsIwda3IFPY?=
 =?us-ascii?Q?dLIFgPBlWON41onsEfdEiNy6wMDdk4aEA60V2TVdpWhQ+wL6Ehda+f0t7yEH?=
 =?us-ascii?Q?AuS2Oi9Cy6FeQKGd19FbtKobYeORgyiudk5GhHKvRWpvPtGG3L1ggwd3cnIO?=
 =?us-ascii?Q?+fWiq5YVZWMQ+JaQBtOoH36LeHFLD9sE7AzN3tO/L3SEdsA6QQ65xENjX/8P?=
 =?us-ascii?Q?1ChM2OAVLpmGgb6wPeWcGl+KgMdM8xgi2mLgSnN44OeifX29f2a7UjYYJ+ia?=
 =?us-ascii?Q?2v/o7FkINbTDJkCwHCYL19BJ/dg/jjYXZEpDvgdI+e/mgSs8DZ3hXFhAYaSC?=
 =?us-ascii?Q?VT56oa7EUcO1XFzmTNBS7DScCFr8bz36b758BaVxUc3xugA5SNJMPEtgQYge?=
 =?us-ascii?Q?J8ZvnUFweuEF5cukNCq5+cfHu2cZj4H7BsgyPiCsfsRgl1GgAjKdAnGRdbr/?=
 =?us-ascii?Q?F2iO0+zb0jzmBvzBx7eRL635y1IU8BOvf6xbA49pzbn5pS7fxkelu+UGyJIN?=
 =?us-ascii?Q?CQiKfAJ5xX8BI5dh2nbJQIsa5JCTWxGEMsfpZ83EySRCuzgk7xFsthBooyTz?=
 =?us-ascii?Q?7VUKID8qJHUFdNtiPvF0ShUTSVhyew6qfohzXmLKk9uE7P6Sd2vEsjGigfl6?=
 =?us-ascii?Q?Iuzfc8tWfLB0zE564OMJ+/W6lQv5PLBOIKbBjhZ9LJDPmXRncXGM9ExzJdD8?=
 =?us-ascii?Q?04Pjn/tVTxLa8vezT5tyIK2l/xFb6gUXCLXQkokgTgGIdXs7EMxAGEVpTRxI?=
 =?us-ascii?Q?pcRuo5Y2vhUm2U5+AXLMtwQo3AVRiF91BE0heqeMmTlFt0pqbENCcO1f0tFt?=
 =?us-ascii?Q?9A9jkrVfXlfEvCl8Q0CRiUeFFQiv2z/LT85juwdSmeL+B+kzum+3XdtbwUos?=
 =?us-ascii?Q?PPa8KHVk8UR1Yb7/QQSZfsy5MbmPHDBbHsy22jg+hismEQ+AOdmGkf8aK9Ul?=
 =?us-ascii?Q?fIzlpij0qQkunwIp8+Co6oT808Fq6dyBOcTUvj0BuupAf5LdPBStcBz6QDwn?=
 =?us-ascii?Q?P0Ru1m26ADj5p9/KycVaZuPCE6cnCFdYgDeI39O3KvYmZn5za2T1Cg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gMpjbOdSrxYo+yA78iyxxGryW9aAiWrQSHIhykbCAElAu9aQybLmoG24AaFJ?=
 =?us-ascii?Q?QSAWtlaJxu0EY4Ri10h16DjxOia4Q43B5H9GsByTC4IjGENkNKLPc5MQ78Qi?=
 =?us-ascii?Q?y4WvIuEXRpSE9cs23ig6jdzmJL4TZGyEFVYPwVFREXVad0O7KIe9g/xJIrz9?=
 =?us-ascii?Q?xedVxgPLMOAzovk7RQG87O22lSF57UeaTgBgN7O6WEjqJ/QDIzcJze5RQIWY?=
 =?us-ascii?Q?OsfFEVW6rVF8XoZTAL29WwdM3VY1LpoRF2aZ0jERDl3bvnsY5yJVkJrhXZeu?=
 =?us-ascii?Q?8sBon7b4p0kPccSZfvvFrVgosT5765MUqbwhipN1aRKiaFY5QWZHab8Hbnkw?=
 =?us-ascii?Q?nPAb48dfZVKX/brLO/y9AUjz9iEOc1GvTg+rY8S/jEnJngKGCcPTxC9X6GfX?=
 =?us-ascii?Q?vBIc4yALk11ltHTXishuvjtZnuzFCtz1a5yI5Ms/47tPWglXFooKwYDru73G?=
 =?us-ascii?Q?R5LqaBAsB9RnBFQzPrX1qMe9zhBuOtq0qes1umsn7cnO4UmBC5e5WXMzSBD2?=
 =?us-ascii?Q?K6L/dG2F1FWQ1kgKTeHYzYUrfLWIYZFVhiXNl5zETPnpPyafmmD9JqPWqrUh?=
 =?us-ascii?Q?3DoY/urPfhbqyeDCpsscm76UhGZ7HiroYkxBV6/kIFgHt7rjOzAtp7kZIjX4?=
 =?us-ascii?Q?1cww0Pt6cgee36CYbWAbjeT+1r4NpT3FqPrdfLVgjS7ktj+LJnKIaFeYFaUu?=
 =?us-ascii?Q?Tgl8as+Y409PFHAXfmzNa6f04w6cnRt23j4PI/Bmn82z2HIYQmpq70dHxNQO?=
 =?us-ascii?Q?lCXIFPmPgXEUtjn9KjH7U4QVeZ4knVuZ38g0pp+qUTXhJaj4SIkLW7SYOIHu?=
 =?us-ascii?Q?C9I4+rv1q5vipPyWeSM/fQcbqDh8wuxAY1es9+fk0C3eej0ATbXeTw1jWve9?=
 =?us-ascii?Q?oeFKhd5eBOTAnpU3SkY09aAprjDVTROc5tpUd7E0c85EnR7/8iP+Yabp7RxH?=
 =?us-ascii?Q?Hvcq7Ez4MB0zAYaeWCyVMpKPbVYHQ1TIwd4XEpYxTkPWWX0YUgbtz2IZKn/T?=
 =?us-ascii?Q?mklIAGFL3sLa+fgLAV56NyfZPBb2CQ3NDxgcCnK1y6dnRrEcMS53QBtl1oqH?=
 =?us-ascii?Q?y14PmiSU411h+VYWLxn+pxCvKSkxCvRJaleyni7Xwwy/mObB96FwM2apea10?=
 =?us-ascii?Q?2OFbmO7txEu26zW5xr2K9G7OelongcDlAEvCEApR6fCsb+f9K5uR1NHnEgBp?=
 =?us-ascii?Q?/U1Go9FJtuG9uDWopqBMxmCXbssOfydF72t2WDYgyQYf6oJejvaQsrTuGr+9?=
 =?us-ascii?Q?Awt6C3kFwlNC/MpqheC9/PL2jCvILOM1FuVzH27pCTXOe0g0SK8v9WluynGE?=
 =?us-ascii?Q?0Sdz3FYV8gUUAyYhfwsleu3s67t9y2AhMQcpaKphZ2An2bYoFtYNTMgK8yWy?=
 =?us-ascii?Q?KIQJZj7b1kj8O2juRWRBnjo3HDA7HAynAwMC7Hb+5KlWsoRIkK/n9b79GYEv?=
 =?us-ascii?Q?VdlH/17Xbuw+s4XLFj6QnvfHasme2tNYh+upUf+/h950/owE4ZGVTI2AwlYD?=
 =?us-ascii?Q?fbcg1yg0d80MIti11paQacIHkMOegbluuygMAsMqFnb8aAVmTzuQhQwSFgtT?=
 =?us-ascii?Q?B0Fu45jDnw98VNeJPRRgwNZ641soDVcPbcqOpMnp?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc5ac92f-6f0e-4b60-ab28-08ddf4e96ee4
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2025 06:22:38.0891 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vSaAy6wb0+KwZnfGlc5tAmoWaGMjtHeUsx1803eRhUdk045KgKzeZbh9QZs8LqHEbk3Zy0oG3dCkSIM22WEtLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF63A6024A9
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758003762; x=1789539762;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8I4L9zv82aoCLFpArIcG13W9XIQ6R0g0aXxyvL3AS2Q=;
 b=ge9G4gQz5Uh8f5jt7ktxLa1YTaA4JL/zrBg7t+kwd2HpTBK6AWeYi7mG
 tFb+IGiQf24GsMl3Sa2S/F8mA+oOMEK7UIlWjg/fWWP5oHvz4kgKVCg9M
 u/711/dNTnIHO7/sU8iyVv86lUi7vS/+Sex5uT23sUAFdUcCXnX7PrRHo
 +B7dy5ARa0rr4ulfIUu+Z5IIwnQWmarJq7feBmoaecmb+aLzWUXKGhq6Q
 NW7mB/nEZ39gsW/czOVamJxLgw8nk/THzvGiG6r6hTyxkIGeLtUOV9LVP
 9ouWNGkOYGnhAay8BlpDuaglA8H6TcO5mEGe2AQ60FYSJRu3UYXGs7CKm
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ge9G4gQz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ixgbe: destroy
 aci.lock later within ixgbe_remove path
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of J=
edrzej Jagielski
> Sent: 08 September 2025 16:56
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; netdev@vger.kernel.or=
g; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ixgbe: destroy aci.lock=
 later within ixgbe_remove path
>
> There's another issue with aci.lock and previous patch uncovers it.
> aci.lock is being destroyed during removing ixgbe while some of the ixgbe=
 closing routines are still ongoing. These routines use Admin Command Inter=
face which require taking aci.lock which has been already destroyed what le=
ads to call trace.
>
> [  +0.000004] DEBUG_LOCKS_WARN_ON(lock->magic !=3D lock) [  +0.000007] WA=
RNING: CPU: 12 PID: 10277 at kernel/locking/mutex.c:155 mutex_lock+0x5f/0x7=
0 [  +0.000002] Call Trace:
> [  +0.000003]  <TASK>
> [  +0.000006]  ixgbe_aci_send_cmd+0xc8/0x220 [ixgbe] [  +0.000049]  ? try=
_to_wake_up+0x29d/0x5d0 [  +0.000009]  ixgbe_disable_rx_e610+0xc4/0x110 [ix=
gbe] [  +0.000032]  ixgbe_disable_rx+0x3d/0x200 [ixgbe] [  +0.000027]  ixgb=
e_down+0x102/0x3b0 [ixgbe] [  +0.000031]  ixgbe_close_suspend+0x28/0x90 [ix=
gbe] [  +0.000028]  ixgbe_close+0xfb/0x100 [ixgbe] [  +0.000025]  __dev_clo=
se_many+0xae/0x220 [  +0.000005]  dev_close_many+0xc2/0x1a0 [  +0.000004]  =
? kernfs_should_drain_open_files+0x2a/0x40
> [  +0.000005]  unregister_netdevice_many_notify+0x204/0xb00
> [  +0.000006]  ? __kernfs_remove.part.0+0x109/0x210
> [  +0.000006]  ? kobj_kset_leave+0x4b/0x70 [  +0.000008]  unregister_netd=
evice_queue+0xf6/0x130
> [  +0.000006]  unregister_netdev+0x1c/0x40 [  +0.000005]  ixgbe_remove+0x=
216/0x290 [ixgbe] [  +0.000021]  pci_device_remove+0x42/0xb0 [  +0.000007] =
 device_release_driver_internal+0x19c/0x200
> [  +0.000008]  driver_detach+0x48/0x90
> [  +0.000003]  bus_remove_driver+0x6d/0xf0 [  +0.000006]  pci_unregister_=
driver+0x2e/0xb0 [  +0.000005]  ixgbe_exit_module+0x1c/0xc80 [ixgbe]
>
> Same as for the previous commit, the issue has been highlighted by the co=
mmit 337369f8ce9e ("locking/mutex: Add MUTEX_WARN_ON() into fast path").
>
> Move destroying aci.lock to the end of ixgbe_remove(), as this simply fix=
es the issue.
>
> Fixes: 4600cdf9f5ac ("ixgbe: Enable link management in E610 device")
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 7 ++++---
> 1 file changed, 4 insertions(+), 3 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
