Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EB095129D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 04:42:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D78D81373;
	Wed, 14 Aug 2024 02:42:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x6-pRdxgj8_G; Wed, 14 Aug 2024 02:42:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F5C681374
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723603364;
	bh=x4YHL208ymluSZmxG59HNfriXMPkyNMgtdbtPvJwHg8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=g/oTT+sDaRnV9SjNLnL5KTQPjPucEgZVWDQUGcHAI5BYMgSlH7BManKKURBRRfXHi
	 suGGOkwMBvWG2PwLslzMkkCePK74+39Fq4Xjit/7tgMl4e4R62aVihN9mLsEcST8r6
	 xLL2qSqAsMIdk9t3t9QoyufVdceleIf6uFbzXfmjwxMqh0cXzg/euj3WKDRVVttPJB
	 DDHQxQdtxPpu+ikGeMHpnGFnX3bQIr0yeRunRu70SIa9cJPy533G/oX2OvwRMTGqmJ
	 Sb009ZM3Vb9a+e8YTZax9Rt4teo+MRMG0ZfTeyA/I/12LzwO/bZD04c+6rr7FREtIb
	 bZjdmWSEwo/RA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F5C681374;
	Wed, 14 Aug 2024 02:42:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0DE711BF847
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 02:42:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 04A368136A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 02:42:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sZElM1oA02Py for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2024 02:42:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=chandanx.rout@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D02548136F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D02548136F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D02548136F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 02:42:40 +0000 (UTC)
X-CSE-ConnectionGUID: /miyMl3nTKSNUBIlkrFZ8g==
X-CSE-MsgGUID: 5dB/dpGDQsy/Inr8B+08bQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="25662119"
X-IronPort-AV: E=Sophos;i="6.09,287,1716274800"; d="scan'208";a="25662119"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 19:42:40 -0700
X-CSE-ConnectionGUID: O3+jtLQIQfSvAtAVKiITcg==
X-CSE-MsgGUID: v3BCspXoR9qdQTbY0LImQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,287,1716274800"; d="scan'208";a="89550356"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Aug 2024 19:42:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 13 Aug 2024 19:42:39 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 13 Aug 2024 19:42:38 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 13 Aug 2024 19:42:38 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 13 Aug 2024 19:42:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BUH9qKh3mlgfOh4LdWor4ag7IVTqn/ce21EsrXssWn2DWOD3hR3CUrxqtecVpPF/qMvc2qOMqFiGGJj+Aq56gwRYLHeTUM9hgxpz3EB8PhCzJ2VDy+kQQMATN9P3dieiqvtExHi76t1cv1E3RTlF+fmAEFYcQXMi1LadlTe1heTKt7lXf1RvnJ5zRAZ8NU2/hvzc39g2LckAzTCxsspvkwDU1q/G8MAlCnlKXj6w35wVPeTMMKYHENE/O/wgwjiPK1Qoj3JL8QCJec+VPxoWYIbycFHn2wYlZSC0Pd7Db2Wlk0FEVtnRwCJl4eiizloSqgQTsE0qt5Xru5n0TAbIow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x4YHL208ymluSZmxG59HNfriXMPkyNMgtdbtPvJwHg8=;
 b=agXvuoapi2yLzX5DwVCsngyG8p1vSfkd+BgGmO7FqAtaLrcuJUPplWqqjFAqsBze+xIsDANzO43nx20lM5MAYNpnWk38DFD60fqfU0Rey/vUbbZ8MY1MaKTQz8cvI5egtl0ca0bvdv+RRQGxQG7CbJRD+KfXi4U89OT5sKxKyUwLmnBeo3CD6yz6PiAV0bCawHtme04n1HRBomlxnmyMiN6vXI2kTcVwyhRKQ2IinHiTADZyDh+MTwVkKT1OAUnSp2NxdgVae8GDdrKmASrJyeU+sR68JJ7kAV52TNs4pUqvVfuS9K4Oz7trEuvb97UrwaIwfk4pS3Q/UDAR8kZYQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8313.namprd11.prod.outlook.com (2603:10b6:610:17c::15)
 by MW6PR11MB8438.namprd11.prod.outlook.com (2603:10b6:303:241::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.21; Wed, 14 Aug
 2024 02:42:35 +0000
Received: from CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3]) by CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::3251:fc84:d223:79a3%5]) with mapi id 15.20.7828.024; Wed, 14 Aug 2024
 02:42:34 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: fix truesize
 operations for PAGE_SIZE >= 8192
Thread-Index: AQHa6LhleZ3s6xhViEK7blc8BZx2Y7ImFS6Q
Date: Wed, 14 Aug 2024 02:42:34 +0000
Message-ID: <CH3PR11MB831365B031718C0DBF32FDB0EA872@CH3PR11MB8313.namprd11.prod.outlook.com>
References: <20240807105326.86665-1-maciej.fijalkowski@intel.com>
 <20240807105326.86665-4-maciej.fijalkowski@intel.com>
In-Reply-To: <20240807105326.86665-4-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8313:EE_|MW6PR11MB8438:EE_
x-ms-office365-filtering-correlation-id: 2ac7fd44-13e5-4a02-c54e-08dcbc0ac051
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?2sWblByZK5/oYYWZNXpYAx5rO/oBsClcAbPcWvus3adibxzX6Sb4LCjPVjib?=
 =?us-ascii?Q?j1UqjjY3K0Ynf2BnQuTy6F+51RG4EoDqKLDYGI1YtGBiZE76oEdINN0jVl98?=
 =?us-ascii?Q?x8M7nDKfDE/S8uv5d4kgSFfzD8LYPWNCkWVubc+WaTYQJo/3jKQ7RLLYjxDe?=
 =?us-ascii?Q?3C5dEoAHqnKHIWT+JEQ8j8UUuwfnaABDZ9h+BDX9jRsam5gzYQX3God0oIw+?=
 =?us-ascii?Q?sopHvaQalFafGGZ098Yi6N1bQyjWaUwsKD7ExhtLqvMY+IpEI1BN2CcY3UHY?=
 =?us-ascii?Q?v445SDEKDnEeAsfCJX483+rh+3vCgQ+p4ywD0URB5MiPDLVcwAeAaw4F+K5Q?=
 =?us-ascii?Q?BRBq1wlD0DJm7Kqr3aR14EfzBkjOq/XcEx2UXX0uZS1Hemi16q8FahAfzVGR?=
 =?us-ascii?Q?C16aZt5bKBnwFwHMGhixo9qDU8RP1lctO9s52+fdhSlA9/rCLZ/kHBvSTGjE?=
 =?us-ascii?Q?8Ap04rIlNwLbAyD/DvkkYmzqGWsXoPSU+LIq5jhaP0nBWxTQk042GCk/Kz+j?=
 =?us-ascii?Q?VkC9K1dXI/C700X6ag1pcf3dqGXDXrwAUGTqK1kMwCBmXTtMn6dAhLt73Pw+?=
 =?us-ascii?Q?CpkeovrNtBe60HQvMThPYbOzV2oeiRqYZg2AoN7BtNlrBzy9QJPOHPX4YroG?=
 =?us-ascii?Q?USEZHaknXZpFXagQJSNIy1J+jCGNymokwX9qusNQq/qtrog/EumdNJh1tBIx?=
 =?us-ascii?Q?+qHRIbFl63Xs72l0skvzlkzzSF+YWPOZmC5hHz7I1jFlfwyKQCdjGQOZiJW9?=
 =?us-ascii?Q?FEhee2k6rUV2rr9aYSm1cvP/wDIuJjYN+MozlD1DYa4wFEIsuqcmTlNkciEt?=
 =?us-ascii?Q?i6o6fDQplb36tokmZr+kV2tz82FL3Oq5naObXH0YWInP+nPToEUzMewr2EDT?=
 =?us-ascii?Q?exfIOP8763xZKuw2MCrYPlUclHRg63BQpBNjMNjnWoA5yZKSx4ONTYbTtWap?=
 =?us-ascii?Q?HT0EmX14HyCPlO7SxpJ4CHOKhfDkYJ/bpOJCjS/gWkPKkKMTniJAi5FR00Ml?=
 =?us-ascii?Q?vb8bmFMqL+w7QxNv5akVP6OpyzVCvQesPnaxTmJcnT7haiV8B3N5i71NgRwY?=
 =?us-ascii?Q?Wrsg+KFtefK/STLccGoeuKq0MW+hdpOX/SSnHilfNro4FdQABG+CyN/wtvwA?=
 =?us-ascii?Q?HL4VTjHflDlUPghfREvC083lJFaUz23dgKFsCFCmjFwMstL4I8Uz2rU0JhLx?=
 =?us-ascii?Q?NcsblFFmRuhQeZY5ulW+MCd3dkVqmL8qpdyGRlcFb2LwiV+DbtArcmw15LFL?=
 =?us-ascii?Q?JDBISuCcguQm2hYDbyJG0PaAX46oMWN/kHyg64i81Woq1oD/89tVjMXYC4TC?=
 =?us-ascii?Q?sg006nSeJRr8SNIkKSauDxkFizS76MEzGg1+n3T+2RszGj3tbVi2NkdoheTD?=
 =?us-ascii?Q?Bl6Q7Ek=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8313.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cPYEzdADYuFH7k/CxDdRPllEb5vIIY0ZQngIqIq/rAhwYudwkf4zZR2OvzSL?=
 =?us-ascii?Q?V4XLDEJ02OSCIsOD+aRnd+LUytH7aee+FiweFy95vO98KIgjPxiDskzKu1pX?=
 =?us-ascii?Q?QYMUCL8GgH39MksfpXQFPTgenCGUNkfHJ5vAKCy9ySyjqOqoG0opCF1RRiiP?=
 =?us-ascii?Q?x6xRdTetKWfQhrS34RPiaSZgCeEpHE9o7OnrbpFXsM1FpCdgqP2/v9j154f+?=
 =?us-ascii?Q?+lI39kAEC648ZyVRrvoTGfENzsR+zrhzc6qSJMmka9lOsXBbQAf3klweNGes?=
 =?us-ascii?Q?NcB+VVhPqvQI1nwurAmdn7v2cZ35DhfT+ujVMd7IkCXuI/7sK8xa5DgqqTv3?=
 =?us-ascii?Q?/l5rEtroafQ9mJ9ZdSrjE5o8uK7vm1WLhYD//E8/7hyLdDd7OjAgKxyPXeNW?=
 =?us-ascii?Q?x7Xyt2xkvkulRNihZzSXgx0kYixqNYc98O9p09pHiTsC+XSvWiEAOGP5L8E/?=
 =?us-ascii?Q?Qj4H4Yql/8P39Mms5lQTeo1bmk3dDilo4LbYln2JRSQspeKahTRn0LiTaldK?=
 =?us-ascii?Q?SuNX+Uj53GXlq+GXx2Q1CUiSC22p/o8K9ff3gO27RYb9lhgVFGyp1GOM7ajQ?=
 =?us-ascii?Q?hrZ+u9I5tkHtXEmCnnfBkEl9dfU+bU+5Dk8w6mF0Adg947IOxsmjIQpPt2Dm?=
 =?us-ascii?Q?DPhQO4v/kxYsftttPmLHTb964Yc4fukwioWBvYAD+nvPTQKF4l7wmvgrIpor?=
 =?us-ascii?Q?j+tFtWDqwUaE4uarDG2vIsiRmegAadpwqCTknhbsywNOIbjeFWjY2YPd2M+N?=
 =?us-ascii?Q?EX1ilqpiXFATIjY9pbhOJ2mnyFmLvh+rwc0tCjVAAogrQCAWIQA9rcqacyj6?=
 =?us-ascii?Q?OE6qVwOVtcvWMojactVyR0+bA3QWAThO+9Nx7L+uHdIQ6OD+x84ePx8iqoue?=
 =?us-ascii?Q?4ohTgOZfVSxWTelUkGpyTqWsbUvehnXtN9YBOWV0OzIR0+cP1eppVTfFQJfl?=
 =?us-ascii?Q?0b/DCYuelyNXiNVbKHXDLGtXfX9aNFfrg8ndLWaXOXnpa9iaeSbd5mYLHLtJ?=
 =?us-ascii?Q?rFrMJ3cfuuDqRctIy3b909cGyMCZ5pPmjtN5Omzz+KozZm4b7A5sFQeXmR+a?=
 =?us-ascii?Q?u76EjEKJrifFURoJiDaowXxMepnl6DOjyhATNQnjltof2n0iGVRWtoI8Jixy?=
 =?us-ascii?Q?+uxQAdCxFepeLXrQ+30WMkQuVwZ+H0F3+mYzhz5ldPHfpQJEc7rp69xIuJ1Y?=
 =?us-ascii?Q?IgVwbXW3c0nfDUXXEIfShL/T5k0hvp1aUwWPy3mIj4UHb0WOuHetfkbFKEfX?=
 =?us-ascii?Q?qHwkwQH4BcvHin75+mL6X0tN0B6d1NrBqTHn4/8FmrJ2G+OYvzaHoxjg64sS?=
 =?us-ascii?Q?56VlfFjEPLL2nSEkyqVlV8iNp+6wx5vAt+mXeJIOJIZGxdKvbt8GtPT5cnzr?=
 =?us-ascii?Q?qEKNdQu5OApMyHClzVtVQsfPakFGrZ69tjz1VnfY8V9rJbFKi3yuJOtQq9+d?=
 =?us-ascii?Q?QBM4EP7Lqi93KPPBPdWpfPRzV6fwXzhjhDiZMrOMcvLqCNhd+wGwu65vEw25?=
 =?us-ascii?Q?HnRzClEXTHdWmrvOwwHaLJ2YdqyTmb8GFQD+ak1s6Du9QE7aWoccTBBwGC71?=
 =?us-ascii?Q?n+ZHiMgbFcIR2z/4RvnLmPbn2HPcVmb6Fri+Jhqr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8313.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ac7fd44-13e5-4a02-c54e-08dcbc0ac051
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2024 02:42:34.1508 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jfKrJ453gTxxwhpdIByKoD4bFrk1XNycMwbMmtlQ721RwV3XE1SGuSPnKZXK67Uk6J2Fhiw8bzC4hkTCs6j+tA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8438
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723603361; x=1755139361;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=x4YHL208ymluSZmxG59HNfriXMPkyNMgtdbtPvJwHg8=;
 b=DkT59yiKqBVTepqx9Ewbokxv1r1pM7N25qBPwudY4llcJ9pXWvBHDH3J
 s+tn/Peys0xR/YgMllemzWYjX4dySSoJSx4KhUzPrummArz9yOzvh0L4f
 6msxIiYh0Q9wyAyI/6POJDEPG330DpRfuY7xIPjfqfaghOhc7lxpptoJ8
 i/ELhRfJuksgJWlE/6WdKvPZwm7ZekGc95+gDwadHhBPHFT1TaMq1yCSW
 MVOAojub5HAsGbXsGGBkFUV80rvJoBJgzgYTyCP18n/ZKua9FyB+ZaEeH
 ce64eYqrh0y98uD+yIKz4kIyxwHVigmceik+tHJn11G6iinlO8gqPfRs8
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DkT59yiK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: fix truesize
 operations for PAGE_SIZE >= 8192
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Pandey,
 Atul" <atul.pandey@intel.com>, "bjorn@kernel.org" <bjorn@kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>, "Kuruvinakunnel,
 George" <george.kuruvinakunnel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>, "luizcap@redhat.com" <luizcap@redhat.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Fijalkowski, Maciej
>Sent: Wednesday, August 7, 2024 4:23 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
>netdev@vger.kernel.org; bjorn@kernel.org; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; Karlsson, Magnus
><magnus.karlsson@intel.com>; luizcap@redhat.com
>Subject: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: fix truesize operation=
s for
>PAGE_SIZE >=3D 8192
>
>When working on multi-buffer packet on arch that has PAGE_SIZE >=3D 8192,
>truesize is calculated and stored in xdp_buff::frame_sz per each processed=
 Rx
>buffer. This means that frame_sz will contain the truesize based on last r=
eceived
>buffer, but commit 1dc1a7e7f410 ("ice:
>Centrallize Rx buffer recycling") assumed this value will be constant for =
each
>buffer, which breaks the page recycling scheme and mess up the way we
>update the page::page_offset.
>
>To fix this, let us work on constant truesize when PAGE_SIZE >=3D 8192 ins=
tead of
>basing this on size of a packet read from Rx descriptor. This way we can s=
implify
>the code and avoid calculating truesize per each received frame and on top=
 of
>that when using xdp_update_skb_shared_info(), current formula for truesize
>update will be valid.
>
>This means ice_rx_frame_truesize() can be removed altogether.
>Furthermore, first call to it within ice_clean_rx_irq() for 4k PAGE_SIZE w=
as
>redundant as xdp_buff::frame_sz is initialized via xdp_init_buff() in
>ice_vsi_cfg_rxq(). This should have been removed at the point where xdp_bu=
ff
>struct started to be a member of ice_rx_ring and it was no longer a stack =
based
>variable.
>
>There are two fixes tags as my understanding is that the first one exposed=
 us to
>broken truesize and page_offset handling and then second introduced broken
>skb_shared_info update in ice_{construct,build}_skb().
>
>Reported-and-tested-by: Luiz Capitulino <luizcap@redhat.com>
>Closes: https://lore.kernel.org/netdev/8f9e2a5c-fd30-4206-9311-
>946a06d031bb@redhat.com/
>Fixes: 1dc1a7e7f410 ("ice: Centrallize Rx buffer recycling")
>Fixes: 2fba7dc5157b ("ice: Add support for XDP multi-buffer on Rx side")
>Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_base.c | 21 ++++++++++++++-
>drivers/net/ethernet/intel/ice/ice_txrx.c | 33 -----------------------
> 2 files changed, 20 insertions(+), 34 deletions(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worke=
r at Intel)

