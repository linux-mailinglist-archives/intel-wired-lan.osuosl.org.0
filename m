Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ILQoNQHkn2nCegQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Feb 2026 07:11:13 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3051A13BE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Feb 2026 07:11:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2BDD3841F4;
	Thu, 26 Feb 2026 06:11:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2RaudKvtuzvE; Thu, 26 Feb 2026 06:11:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8BF1A84186
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772086270;
	bh=RshLtqYg4PeOOi4Di83gawPkIw0wT2tApo3T66Tc5WQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aBMbT9Dxv1ulzzjPKs8p/HjuD3jQmdCfjGMeVW+4n3czJNWTQcC+B7BKbn6w/vkyq
	 IR+N+K4DT3CJ96fItRAK50LoMP1wbsUM6/t0lybU0OEbY/q2QKB+7RJLkJBAur1S7g
	 Xn73Fox74Ub3F85ej12GM4BejlUDgoLkXGMpG+rn/hDRpEMNRSRzjMvpqmAiOriIn3
	 IDMuUmpFy2MuUZKTjk2glAFG6cehc9+pnmugNyjrwHuD34wGi9vq1yZR+dAAICIaEI
	 N/0BgvRs2QhbMb84Hed85ESD54NmFMs5D6UV1vJnFslyYGDR55khGgCb7ss8t7cu6U
	 9sC90Zi/YweYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8BF1A84186;
	Thu, 26 Feb 2026 06:11:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3E864204
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Feb 2026 06:11:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2E6E761174
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Feb 2026 06:11:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y0dFnOssaG5W for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Feb 2026 06:11:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 801D26089F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 801D26089F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 801D26089F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Feb 2026 06:11:05 +0000 (UTC)
X-CSE-ConnectionGUID: VcSylidhT4WDlK6iehvu7w==
X-CSE-MsgGUID: IgSVa6ySQwaNAtE8oRMsUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="77007482"
X-IronPort-AV: E=Sophos;i="6.21,311,1763452800"; d="scan'208";a="77007482"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 22:11:03 -0800
X-CSE-ConnectionGUID: hXf0yhqyQa+1+5opdMrqug==
X-CSE-MsgGUID: Chquo2ziR2m1fEtw/n1iRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,311,1763452800"; d="scan'208";a="219817039"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 22:11:03 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Feb 2026 22:11:03 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Feb 2026 22:11:03 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.64) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 22:11:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J8eHmk9BF41zEnVNWTY8zCpN6XV7q2FyIiavOZV49ptDm/aI+fxo3+W8P4SvtjJni4cxVtL9fBBIuDrl0hKL2BaUqy1rrsK2MQHlIRI3P5Lu8/43/IQuBv8rbHgLnT/WhsikaVTNhVkoeZYwUbl8Fb7oxjgpnKNQWTE3coIGPI/+uJLr8CCVxwooPzrpfDv/xAmn/v7Yk6y95JfqRnZKZwWwZlN3gsqOnsecmiaEdQboDYmERpE3yJ5rjS7vknPZ0vp/2ZDxA5soFJImvPluRffXA8svzDYRW9JXtmA4zzMyduv/P0N+NrYnZgSI54PdREIqHINWvLHasrK3nFlBnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RshLtqYg4PeOOi4Di83gawPkIw0wT2tApo3T66Tc5WQ=;
 b=mzmcDcEpTvb+/Ssr/Kgp+fxOqNScqkl+con1chRej1a0ZI3GvIWZe/A46ZC1PgI0M4LyIABRQQ133gj/1xMdO7ND20rabGm7Nyig00NTHBiKFXQYcyNpGz05PXSd5iKWxusbJrF1VcX77J3ea+RRN4trwpR3R+bn88+KFa5RGjOEJzYNm6p1yb7Wv9VsQdqxFtuaaWIWWhJijkEziEasiWJN8VEGAuEHOQTd5qLjgidraDwIaPUspZZVMbLAOx13ynIRdDrzssIxLRzmNnH1Yw7R7x3VPbm1FKemwtySLX0kw4Wyz/Hv9Gp/9rXzoL5g7rVAVFpnR/n81oIyRejwqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SN7PR11MB6680.namprd11.prod.outlook.com (2603:10b6:806:268::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Thu, 26 Feb
 2026 06:10:54 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9632.017; Thu, 26 Feb 2026
 06:10:54 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] libie: don't unroll if
 fwlog isn't supported
Thread-Index: AQHcmzrudPyxhM6/XEWFOIgfGXgpubWUljmw
Date: Thu, 26 Feb 2026 06:10:54 +0000
Message-ID: <IA1PR11MB6241365692F65DA76AE810738B72A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260211091140.236389-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20260211091140.236389-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SN7PR11MB6680:EE_
x-ms-office365-filtering-correlation-id: 45513a84-e3af-4a5d-d697-08de74fdcd04
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: 5bmb0qDbhz6GhE2jpm2fn6xTl+nwixSJpxKERBAmLoK4x6RUlaqS6N3KL1OiYLr9uxpgoKZFRu0Ws0cD25yTO63uxYHovFeETC3pBP82Frk34Ke3ur7YT7C7dO+vyDtKuEIIJZDzj3krGv/+NS1f7a338A34gsidG/gu/Ksl5QbvT3aIjW349XPJds2VBplwr64bgEeVXBJHfOKlbiUvMvGjKo60qt4/m7KaKuximj/cgkknhMLR1ZvoaJ/qmRfAYEIRzclkTtIHRjQ8nJ92tTS2wpTAeznla8mXyNcX69rGmkoxrjzn/T+vGjDAJttSfOLGB0kS+Ng6V4ilCkrl78S27L/iLpTLpFg1T8Zk8jQP6BDfYAeI0roQ7aCY6/4odw8x7roy2oUnjHupXq0MbtEHEPxdpQN03ra31vCZKUQ9l3Pi73gFxVDN/r3JRorASbjtcapwNu9LS27yA+b29GthaX0OH8VynYj7a8d4z12VW3w64drB+mrrZNXkpApMXBR8gRiCv2EgD6FWobD7oqr6Oe9oYGYPnj/Q03n+AlLpW9gYNzltfN5PT9AaDPpsDTAadKl+XRO7kPBJx71wnDxXOMoj5C9jfK9wOg6Q5PF0rPLxe+SHiTAiW/d+dTMCY6r+xJYS/bmhLsvLiP863Tjo0TvpuaLDd8dQi0EC8NLRvBc8jyVOc/Mg388fsfONLLf7cq1KZNztI23jiBRtgPpmv10CUgX8ZO7MFd0lHQ+R6VY5/f/vmDe89GAy+maQATxxPL2t9o8M4ab4TLlH6Hdz4vYOfuaQfL/AZHS7z8M=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yKEfI+snXo1m2tbuKVm3dbJAzUSJ6Ri4kBihg45uGjg5kbgsOberHhkC450j?=
 =?us-ascii?Q?O0Jc9pENh9QBBk3226Q9d3sp+qwwpuCc1QidkDAMKMJ1JDrbvK42I/rF8/DU?=
 =?us-ascii?Q?ECsbAF/kqPoG4V2GknvEaFyVvvt99VvUAq6KlBNVLsatuN4tz3+QpXMZaRAe?=
 =?us-ascii?Q?efGRn7ES5mtarGh/RJl+MOYyhLLYkvCgWhlxnf5ZhYaI1x0LuqzcY77WZHEs?=
 =?us-ascii?Q?Uq5h9uqswZDLeXS7tI/Iy/WEDQL+qx0F6mcnQr0ntODixRmT3IrMWlszgNi9?=
 =?us-ascii?Q?OJALy+yK2YdR/f0scRZg+Qfy9KBtrgmei0+74wbabn/arDfHDmeJosTtXz9a?=
 =?us-ascii?Q?j+O7Qdk2bJoc986lSlqZZ6Tiu6VgWZ5Er+MGmr9Z8G6O5gmcs7GfKlsOwjZa?=
 =?us-ascii?Q?CuZWeWAvgM/D74IsBqhw10dwRCr8B6WKBa7PZ1sOuHwtV27PwQ42815RoEv5?=
 =?us-ascii?Q?kVo4KMfF+maEaihiHGf6zkU6ZZNLqPc/lN3Y2haTyv9Th7392+jebhQ0/8oz?=
 =?us-ascii?Q?ENAaTWxkGhmF3H2VtZK7F74VQxXyRrlyUOMg2dI1GDprt11Cwk+avv+Q82kQ?=
 =?us-ascii?Q?VWuQCTw+8JUSUjbnveYhHH6Ug21LGHdCQ+j+cg9SgKW36V6yd8fz3aS0tRyr?=
 =?us-ascii?Q?EqoVkBYLXPgvYaTNUxz3FXknynkarMePAP2WvwFFWkXrIkFR7KE/KLnH44Wx?=
 =?us-ascii?Q?1SEtPTC0zZ8hyAP4CRiGb7IK04Mjp9ac/W0Jpi8RQI4pJspegel1z9na0qAy?=
 =?us-ascii?Q?by2xhsZ3rsHy79DglfUMQzzh358DJTe2XgzSQWbPeCaH92LwmjZpnc6k4iWr?=
 =?us-ascii?Q?RhWbtbcyLFf0bS8mpU2GzHie/RkmJXnLDbnPSA5EYNKwwGb+mHqdyuzVjxSi?=
 =?us-ascii?Q?xCkpWvRxN8wXXcEze6jcomOsFds8i+Wj969iXr4SBgU4sTt/Nltmk/Mjc4vb?=
 =?us-ascii?Q?JIgLyqX7KMRDmGq5/h3hpJd7BJfoevfPIlFzh/py9i58b6v/uWOeFY4w+mxK?=
 =?us-ascii?Q?T3Buvu/Aw2kgg7/ltH6ZD11lvSv1yAZUGQH/eugvV5xlbNtaZcxhOGH4dODP?=
 =?us-ascii?Q?vTg6S7hDHDbR2l1Ruz25EDzbumeMawcuGO+dFlSJV9yEomEMOZwJ0Vd+4udI?=
 =?us-ascii?Q?DE9iK+3tvbFAWwn++LNaXL3Gl1KrXkCPQtwd2SAsSgNtlQomGVNKHuFrvHNs?=
 =?us-ascii?Q?OXVEoLrTTkQb+aV7RNY+WStd/DkloheED8ae/YCMiY9p/GoMOt1sgC4UyWtT?=
 =?us-ascii?Q?WYr4N/yP8GB27DW86AoW0MCVHdYdmJbItedyD9mxe6v6WRaGquT7L9EuWVMX?=
 =?us-ascii?Q?hdacaKzUU99Vt0KP8fPqgtmQj5ktvs3OCtUaKdPKenyarNOojAlse3GbvrqL?=
 =?us-ascii?Q?vAuTzttGk7Se6pL1s+8JiJDYuoNB2LpFQPzMDvo/hgG7PGghBij2QEiLalRg?=
 =?us-ascii?Q?k0tEd44LB/B5YM5mvWYPp0L4dBhg3Su1DB1/5kOV9SxsVxGcCQUAKKXleN3W?=
 =?us-ascii?Q?2xm5K45PJ7M9Zzow8wnWAfQTizHWjpH/23ih4j+cgn8Flm5a805bWLEG/8xO?=
 =?us-ascii?Q?XXQ0huShM41e13mxHV236Z4SpXc/TbdrzCJt6CTiOvWAHJ02YOaCrVqmOtiR?=
 =?us-ascii?Q?4Qi+bksJPG4iRJOHC22XFog2RaYQw6yzaUsd2HUqfeh4NVMQw2ZLHjZBcVQW?=
 =?us-ascii?Q?WihRZT8ZfdhMtsg9YSEby6UioTCNRvqRhIOJmHZ+KLCFudma?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45513a84-e3af-4a5d-d697-08de74fdcd04
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2026 06:10:54.8232 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0UaR6HVoHbfeXi9Osql+64EFCkGkKo+r7IzZ6w/fTQK7p8tCxT+nEZayLrrLlTgcJMShhaGQiumgncSSvY2eAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6680
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772086265; x=1803622265;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EuZDohLq9tgWlBQCsWODxF7HrltuV05+/s9Pqic8S4k=;
 b=em6/OmEMFcAjOGdXQQBeENeaKI2vB/bwjITe8Mx8NiUVXfxLNwtMVYpj
 Me0CssMI1FRidHcqdggrj1lAfH8QxuV1ZBNHd8GLfjGWpqeb6VcHxtByw
 bNkRDhz4pO1Qtk5GgEYrSCEL+VmaHmk7YESkegFzOoYxJqoiuCusqpXLk
 aXNDKNZeXPO0ox/F0eup4/o1YXII4mtQqDJr570yv8ruVnwMHI7lZDuYd
 b72EWXsOcm+HPTwBo+X/aqzp7FRPtHJ9iFvXWihgzJdJ+pdWsyGaDTkXy
 zD5dxlPPVYKTJhgYmzW+9Iq8e7VGfeHJwUIDF/gyF8tfeCVx/MYVC0I0z
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=em6/OmEM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] libie: don't unroll if
 fwlog isn't supported
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:michal.swiatkowski@linux.intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email]
X-Rspamd-Queue-Id: AB3051A13BE
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Swiatkowski
> Sent: 11 February 2026 14:42
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Michal Swiatkowski <michal.swiatkowski@linux.=
intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] libie: don't unroll if fwlo=
g isn't supported
>
> The libie_fwlog_deinit() function can be called during driver unload even=
 when firmware logging was never properly initialized. This led to call
trace:
>
> [  148.576156] Oops: Oops: 0000 [#1] SMP NOPTI [  148.576167] CPU: 80 UID=
: 0 PID: 12843 Comm: rmmod Kdump: loaded Not tainted 6.17.0-rc7next-queue-3=
oct-01915-g06d79d51cf51 #1 PREEMPT(full) [  148.576177] Hardware name: HPE =
ProLiant DL385 Gen10 Plus/ProLiant DL385 Gen10 Plus, BIOS A42 07/18/2020 [ =
 148.576182] RIP: 0010:__dev_printk+0x16/0x70 [  148.576196] Code: 1f 44 00=
 00 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 0f 1f 44 00 00 41 55 41=
 54 49 89 d4 55 48 89 fd 53 48 85 f6 74 3c <4c> 8b 6e 50 48 89 f3 4d 85 ed =
75 03 4c 8b 2e 48 89 df e8 f3 27 98 [  148.576204] RSP: 0018:ffffd2fd7ea17a=
48 EFLAGS: 00010202 [  148.576211] RAX: ffffd2fd7ea17aa0 RBX: ffff8eb288ae2=
000 RCX: 0000000000000000 [  148.576217] RDX: ffffd2fd7ea17a70 RSI: 0000000=
0000000c8 RDI: ffffffffb68d3d88 [  148.576222] RBP: ffffffffb68d3d88 R08: 0=
000000000000000 R09: 0000000000000000 [  148.576227] R10: 00000000000000c8 =
R11: ffff8eb2b1a49400 R12: ffffd2fd7ea17a70 [  148.576231] R13: ffff8eb3141=
fb000 R14: ffffffffc1215b48 R15: ffffffffc1215bd8 > [  148.576236] FS:  000=
07f5666ba6740(0000) GS:ffff8eb2472b9000(0000) knlGS:0000000000000000 [  148=
.576242] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033 [  148.576247] C=
R2: 0000000000000118 CR3: 000000011ad17000 CR4: 0000000000350ef0 [  148.576=
252] Call Trace:
> [  148.576258]  <TASK>
> [  148.576269]  _dev_warn+0x7c/0x96
> [  148.576290]  libie_fwlog_deinit+0x112/0x117 [libie_fwlog] [  148.57630=
3]  ixgbe_remove+0x63/0x290 [ixgbe] [  148.576342]  pci_device_remove+0x42/=
0xb0 [  148.576354]  device_release_driver_internal+0x19c/0x200
> [  148.576365]  driver_detach+0x48/0x90
> [  148.576372]  bus_remove_driver+0x6d/0xf0 [  148.576383]  pci_unregiste=
r_driver+0x2e/0xb0 [  148.576393]  ixgbe_exit_module+0x1c/0xd50 [ixgbe] [  =
148.576430]  __do_sys_delete_module.isra.0+0x1bc/0x2e0
> [  148.576446]  do_syscall_64+0x7f/0x980
>
> It can be reproduced by trying to unload ixgbe driver in recovery mode.
>
> Fix that by checking if fwlog is supported before doing unroll.
>
> Fixes: 641585bc978e ("ixgbe: fwlog support for e610")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> drivers/net/ethernet/intel/libie/fwlog.c | 4 ++++
> 1 file changed, 4 insertions(+)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
