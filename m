Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6K31CvBy72ktBgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 16:30:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDD0474627
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Apr 2026 16:30:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB3F580D9C;
	Mon, 27 Apr 2026 14:30:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IzHFnfegCOIQ; Mon, 27 Apr 2026 14:30:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 26D5680D9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777300205;
	bh=hs6XFdGNL3GVTabAOaEiOLYt/vOG9uPa2Gt5rDq5wY0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=y/qFMkS3yVKoq27wX7vffYjnM7NjcTOtv9eqaRuEQvR1QqFmzcpga2iKmKieA76sy
	 1wgm88ho/uHtM8re1l4a2Ddm1bChvHcIXnujhcDZ2gV8TCmwjUoyIJeKP/DGlHKycl
	 gaekVSf3NIx+VuQA1Y3XsANgpKUVaOd2YrGV6tKCgJ205HNj3WfjqezW0NOgHBjSet
	 o4GQReZeH6VlgJ5H5xK3imFTTA9D/YJTDWysYtbwBbeeO1wcB2pQiZ64Es9S/4WjY+
	 dI+6zkLm1nhdzEvSuOFAHcyox18fqjoPg6Vd4x7h2iss6ZDnFetvpPoKPpjViW+UyG
	 uyyMfAwHpqEug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26D5680D9D;
	Mon, 27 Apr 2026 14:30:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 038BA2DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 14:30:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E984D80D9C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 14:30:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zBVCKmETYd9d for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Apr 2026 14:30:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1A68480CB6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A68480CB6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1A68480CB6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2026 14:30:01 +0000 (UTC)
X-CSE-ConnectionGUID: ZXsGVWj5SwW03E3UeM4hCw==
X-CSE-MsgGUID: skYIVL6RQq6cATvQU35xWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="100845931"
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="100845931"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 07:30:01 -0700
X-CSE-ConnectionGUID: 33JD7j86S/e86V3PB+8VoA==
X-CSE-MsgGUID: 7n2oy4UHSuaW/GD2g7l25A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="271786073"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 07:30:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 07:30:00 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 27 Apr 2026 07:30:00 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.29) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 07:29:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eYU8yloXDG+c2X+tZhngnIgsKg4sLRBvvIXkQny9/vq7kGsx6MxTFJXkbWpH9v4bqaoUkvTDFcfRUetPJChXMy6uP2aiKEP2BBIiO3j2WGB5SJPZ0XhnbSSVaK+5ROfCx1V8l+L8uRn9jzm3pfYlEorwI66zIP4WFpgapU5RxH+4I7yIgbqjeY2zZCs+nVxb6RaBW3ujys4cimRhPi1XOIgly88aNA4H1e2YB06D9OTBx0oER9r31f2TlNuS9NYzRrLJJQsmmUPil0RVWgn5yesKOwgUVSqzBpFIdYZKx3epop8uXxjP2AdXPtJQiJYVDZoUlTrUF4EsvasRxVhBxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hs6XFdGNL3GVTabAOaEiOLYt/vOG9uPa2Gt5rDq5wY0=;
 b=ZrFd+ObdOUuLSlrGFFIDq8JMyRpCGOBLQ9rGke1zqcODWX5yTy4WiQ9+XX9fE+qSMQPiohzkf6fJD3ybIiZCeOLwXFgFVpzNo2qLoSewIe2sfLCIZNiOxtBCNpIntimVL1scKHiLEh3r/E1o+pGan8KPWcqhITb8bzOiNLQhgUGERUSjfQJ7UsFDu+mGj9tSrUpypUxmoj1JTrSAd1w/bkdN46/dsMoIMCtcIUvk+OO4LzmYPG/wd/OhLUPZaeaU72Z2VfEcVj8G8OPa0Isui51pKyYEI4bIOTgUdPOPPT73j7E7TJ2O1z5BYbanQYjfAIS1upUSfrphJmzAzA1Glw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7378.namprd11.prod.outlook.com (2603:10b6:208:432::8)
 by DM3PPF4AE904FD9.namprd11.prod.outlook.com (2603:10b6:f:fc00::f1d)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.25; Mon, 27 Apr
 2026 14:29:51 +0000
Received: from IA0PR11MB7378.namprd11.prod.outlook.com
 ([fe80::7b0c:7df:21b8:dbbf]) by IA0PR11MB7378.namprd11.prod.outlook.com
 ([fe80::7b0c:7df:21b8:dbbf%3]) with mapi id 15.20.9870.013; Mon, 27 Apr 2026
 14:29:51 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-net v7 3/3] ice: add dpll peer notification for
 paired SMA and U.FL pins
Thread-Index: AQHcznrd26w2nzavMUWL7AhYacG7wrXzBdrw
Date: Mon, 27 Apr 2026 14:29:51 +0000
Message-ID: <IA0PR11MB7378830375A8B5DCF3046C2C9B362@IA0PR11MB7378.namprd11.prod.outlook.com>
References: <20260417145907.696307-1-poros@redhat.com>
 <20260417145907.696307-4-poros@redhat.com>
In-Reply-To: <20260417145907.696307-4-poros@redhat.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7378:EE_|DM3PPF4AE904FD9:EE_
x-ms-office365-filtering-correlation-id: 2aef7914-9e3e-41aa-83b6-08dea4697195
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: aANnpE9ct7WlPBsyDoL+XGhvrh+2SQC/cicQJwtNgqebaH7q2p27CSDCuUhu/SqLMYLKge7rDPro/yPPKJyHxXKSv/wRB+ioTjNmUCH77WQDZKhxgY2XLULgQg1OeEi5RqVMcZ5awDXhd6ZYQq3L33bcsBYswYwsilRBJbtYGxzLwNLYyWFSMRYcqp5SZh6wsgOQv33CkheNXPQTsdh2Q5w8afgjHPKAlUUbmndGmqhrn/AsnB9wQXfmgT1JmxlCDKCw63WBsWX+PQhuAu1ZrDXfq+QHNGFSBE+z9Vh30NPaYHxXmxc1SJ8mFme3yDICc6WYR1ckJRELS2+b2K6KkHcx70+uInt1azw9t8AqdBCvpD/VzL7x8RZqhUG416nNw7bnz0bT9FHYVPFy5unw9z4EyIow0Qi0c+K0cGo4B6gX0iPBynOMUY6fPm5/33W9xnyWxjVaIqCatAiP6qhsrNW36QOC9LcwqeMeAMfOz9x+5Qj4uBhoN8/X9WCIsJWeNF4jL7Id01eYY17Q6xo+WSLcLRFiXqpJd4dyFh+Hhlp5JQPEDx5se12u+jSrVvp/9+PSkokjs6BCBQs8sokSv3kQV7jHsiMP/yx+J0GgLI8Mr1uRUEyFKeiGdHPLwd7xQfslncC3Kr5tgnRXFSwhHLB+/POiuPE5z+Hp14Ps/MJ16OnWxiDzjGYjsYsrKJuYh4ck9WzuJV5TDzFCdjfgunlZcbCkvBIFiuwfH5a0FvSZxhra/Rm2FJBd7MQdasgSL3I6S4mvhqRjDYsYSqfZcK4eEeMfjBH+F4zC+StZWuk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7378.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vtw34nHoO85TRc/HPJlanmFzbf6mVcT18uYQkbwKljskqvL0HCkfz2TU/J1D?=
 =?us-ascii?Q?ghaQQcNtYplPx2wvCrwS9A9xuEODkc0TBhXiyr3BATvy6XvWhh3QL8bGqT97?=
 =?us-ascii?Q?w/ovDWTsgTNHjucRHn6N3FbM4aw6Qlf9URH98+/Asq6r8G27nBMQ+h2AZ/72?=
 =?us-ascii?Q?19Obd+REImZ9BXFPwQwU9j9iwHnAMc0vuwXhSa88J2oqhhMApk5VaNO82ol2?=
 =?us-ascii?Q?3s2Ah0txPb1a0fj7RB+CuDTsAhQY6ZNNWvFMyZw/RA5z9UTVTb8HhdDRcVz5?=
 =?us-ascii?Q?Zt4r/9HvvrryudFINfzLEtxNj9vRzuuQd1R1aBnYWDr8OPFdxRoV9vY6C329?=
 =?us-ascii?Q?maWo4UZJj5nE71XX7doo80U3G0vx3gKNOtAdwAemrSRh+NG8nnSKjN+rW2BC?=
 =?us-ascii?Q?yXOO2+z2NvSoY+LxXg834SpcaaJlc+B5dqSJlS7gYsqoDGmXKxlGDMFiVvSD?=
 =?us-ascii?Q?3Q6J0OIQLvG8aI1ghOefCtGg4OITxDH3hGkxOb91PR+RPig+RFnUhB8XQCm/?=
 =?us-ascii?Q?JRZgnfChrgGK+lvMUgQq6Ow3Ik8abSRIwFTB3LscAEtO5nDgEWMTDFqcIFgJ?=
 =?us-ascii?Q?izv8s6ZuTfR41L2arOXsdNlbzoH/mTLjMpo41OFCVoYMDSDf4GIOjG07V9k9?=
 =?us-ascii?Q?jHMxzdv8DyY8RRW9PXdIXhLPwcYyBJPOcOLEEMo4O08/NHP27uAS3+elSk00?=
 =?us-ascii?Q?bF2q8iweo/v5mcvYQ40TkGlpTNz1SGSUrP+CEnpqY2wgrdfyIe9OWbA6pMec?=
 =?us-ascii?Q?Cfn1I8DSkG5zM2/uH5qSIZstSY1zWeqOaFf8X2U80Qm9ZQCr8jFg0UNzAs1N?=
 =?us-ascii?Q?iHka4LT7am6sHrCAkWhmbnxBcswzHA/4orBFj7BMZUTJsNYQJlZ8bofZAARP?=
 =?us-ascii?Q?SWawkv/uxMzm5UuOgngV3goCwZhnOQG2Ab355ByK1sGIuUYkYUYOL2tiAfro?=
 =?us-ascii?Q?vQbFh/kE6XKhPJQ5AOkDThJWIRA8Wms3sDWf3sQ2X1JHUdVPVq90M08GxjvF?=
 =?us-ascii?Q?3SFIleNInp6wh5gQ9FKGG6o4ZBMwGyxBbNpv+YUsz2UVTpahQ4X+e4jbfRnn?=
 =?us-ascii?Q?0eB+OG0Se7SWmffx/bHNjdFhHGcbYyVyTir1J4iBWwXjb6p6mPJ4IeoNVFSk?=
 =?us-ascii?Q?CJmhR30r8ly1q5ur8za5I4qzw37fhLdSOYaI8FMr/YdqyQ+O9myAhz08gQvx?=
 =?us-ascii?Q?zjApG5FkWaBvIVYoiyRlJLq0RLW1MDIMORinZsHbFqUQzCJwwWkKnc7JM4kI?=
 =?us-ascii?Q?mCgM3Urq0RymhwEhrphKdzwiedAV71rZmtgX+qXgINAkwX0YEaIvnW54l9sQ?=
 =?us-ascii?Q?n38XapA7CdXKyUbKuxQx23Z5Kcq23AcHz1uNqXEe5lHY5nxCiQCG2jkYQIAM?=
 =?us-ascii?Q?lv1AHbmL/RXUqcMEg4RM75ki6VGsjoPrd4gxhPP6EM04kFRXc6R6ugvB7bO5?=
 =?us-ascii?Q?p3ucWoYOXOtqjvTe8ylr2HcmP7LAHisQJWwckR5OtfMmqXfTCF1ls0OK+9Rk?=
 =?us-ascii?Q?9PrvUvxlp2Jt/P5oCOIRT/WnbNwnWTbUMRUVK64//fUkPakwFhL5/nhvwvDK?=
 =?us-ascii?Q?Qnok55P6hgoPwO99758T94kEPsbWmnxNgnbxFVGZNyuU+NE7lgNIXlHzc6vR?=
 =?us-ascii?Q?WgDwLcZMSL0yXV7cvzMKsqufVC+RXC3SJLLSndbQvsztdysqzU+rX1rNk94u?=
 =?us-ascii?Q?YV57VotdSWVbexkcsnmFcLU8QmeCHpu//3hbXTOKA7rF5XkkBdxXeSBMbftL?=
 =?us-ascii?Q?T+niZhjcGvPT5vB0b77MSfF+fSM/q80=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: F8Zi8zWoIaRXCIyxO8mb648upZFJDJIYdTKYGi+nZqnvyAnwUapqt1Luzv8KR02VmmD7Uz/Negb3eKW63bIxNfQ3M3jm+vovaLIOfJpCwFJxIS0G23yB759obIRjLLXV9qPem3vzgRN+c3q+JejglZmOrCDSsn8I0fpO4+yJma/dlM+u5wp4lzxc12osAbPPoob0YSpoV4wAi6eEM61xnRwTzP0aav8BDOtlhZQqnX5mbg0cpS2YtGWe6J/Yh/Kv2s+V16bXNPg7sUibCEM6Jh6+N+RZgwgxsGg+toukq21OzvUDGtd7B5s7a2d2hyenLUAbfQIiANprPD+GYciXFA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7378.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2aef7914-9e3e-41aa-83b6-08dea4697195
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2026 14:29:51.7075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3Fhal+ps7HerVaIz88VcGMsNn3JwzOZuD/4UQ/0O1xpVmjaRW6PyA2VhuBY96uZGDS4afw+YzoR4rMBjxJbDXWSHnwzSRf/TUxg1kSzGezA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF4AE904FD9
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777300202; x=1808836202;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KMdpWVjclh+fvsCO7doj24N2KcfOCEuQeEsMrB+gLvo=;
 b=XNbVrTPHGgMhC5Xay4p4vpWCW9J3yH/RXNNiCFl075kO4yN25bCrrHP1
 iIh5wQCQEbxaVS9RjvgmaaHjjWgt2Oiv9hOkVDoQ4rpXlhe32dav8N+MI
 o/KUiyCNS9SLr34Z1Bkj068OkzutkCUg7JWxGqehc8PCfpHVVVx6HQ/zi
 i28q9Z3ZbozEWkFK8D8EdsbtcVnV9LemBQle3dH8Qo9tTVFcI6W8FiYht
 TKl8g9N8GabxGLF4CgRvvBGxiuFFamFqSIb5+dbfMcuVPpKT/W/vdnoQs
 tCy/FQATB7b3o2qjGIxVGMOpgWm1lj/G4mHTX+Q2k/YPGwsXZd3/rR+vT
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XNbVrTPH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v7 3/3] ice: add dpll peer
 notification for paired SMA and U.FL pins
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
Cc: "Vecera, Ivan" <ivecera@redhat.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, Jiri Pirko <jiri@resnulli.us>,
 "Rinitha, SX" <sx.rinitha@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, Eric Dumazet <edumazet@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David
 S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 6CDD0474627
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:jiri@resnulli.us,m:sx.rinitha@intel.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA0PR11MB7378.namprd11.prod.outlook.com:mid,intel.com:email,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]

>From: Petr Oros <poros@redhat.com>
>Sent: Friday, April 17, 2026 4:59 PM
>
>SMA and U.FL pins share physical signal paths in pairs (SMA1/U.FL1 and
>SMA2/U.FL2).  When one pin's state changes via a PCA9575 GPIO write,
>the paired pin's state also changes, but no notification is sent for
>the peer pin.  Userspace consumers monitoring the peer via dpll netlink
>subscribe never learn about the update.
>
>Add ice_dpll_sw_pin_notify_peer() which sends a change notification for
>the paired SW pin.  Call it from ice_dpll_pin_sma_direction_set(),
>ice_dpll_sma_pin_state_set(), and ice_dpll_ufl_pin_state_set() after
>pf->dplls.lock is released.  Use __dpll_pin_change_ntf() because
>dpll_lock is still held by the dpll netlink layer (dpll_pin_pre_doit).
>
>Fixes: 2dd5d03c77e2 ("ice: redesign dpll sma/u.fl pins control")

LGTM,
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

>Signed-off-by: Petr Oros <poros@redhat.com>
>---
> drivers/net/ethernet/intel/ice/ice_dpll.c | 32 +++++++++++++++++++++++
> 1 file changed, 32 insertions(+)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
>b/drivers/net/ethernet/intel/ice/ice_dpll.c
>index 11b942b83500fb..be72a076f7a15c 100644
>--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
>+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
>@@ -1154,6 +1154,32 @@ ice_dpll_input_state_get(const struct dpll_pin
>*pin, void *pin_priv,
> 				      extack, ICE_DPLL_PIN_TYPE_INPUT);
> }
>
>+/**
>+ * ice_dpll_sw_pin_notify_peer - notify the paired SW pin after a state
>change
>+ * @d: pointer to dplls struct
>+ * @changed: the SW pin that was explicitly changed (already notified by
>dpll core)
>+ *
>+ * SMA and U.FL pins share physical signal paths in pairs (SMA1/U.FL1 and
>+ * SMA2/U.FL2).  When one pin's routing changes via the PCA9575 GPIO
>+ * expander, the paired pin's state may also change.  Send a change
>+ * notification for the peer pin so userspace consumers monitoring the
>+ * peer via dpll netlink learn about the update.
>+ *
>+ * Context: Called from dpll_pin_ops callbacks after pf->dplls.lock is
>+ *          released.  Uses __dpll_pin_change_ntf() because dpll_lock is
>+ *          still held by the dpll netlink layer.
>+ */
>+static void ice_dpll_sw_pin_notify_peer(struct ice_dplls *d,
>+					struct ice_dpll_pin *changed)
>+{
>+	struct ice_dpll_pin *peer;
>+
>+	peer =3D (changed >=3D d->sma && changed < d->sma + ICE_DPLL_PIN_SW_NUM)
>?
>+		&d->ufl[changed->idx] : &d->sma[changed->idx];
>+	if (peer->pin)
>+		__dpll_pin_change_ntf(peer->pin);
>+}
>+
> /**
>  * ice_dpll_sma_direction_set - set direction of SMA pin
>  * @p: pointer to a pin
>@@ -1344,6 +1370,8 @@ ice_dpll_ufl_pin_state_set(const struct dpll_pin
>*pin, void *pin_priv,
>
> unlock:
> 	mutex_unlock(&pf->dplls.lock);
>+	if (!ret)
>+		ice_dpll_sw_pin_notify_peer(&pf->dplls, p);
>
> 	return ret;
> }
>@@ -1462,6 +1490,8 @@ ice_dpll_sma_pin_state_set(const struct dpll_pin
>*pin, void *pin_priv,
>
> unlock:
> 	mutex_unlock(&pf->dplls.lock);
>+	if (!ret)
>+		ice_dpll_sw_pin_notify_peer(&pf->dplls, sma);
>
> 	return ret;
> }
>@@ -1657,6 +1687,8 @@ ice_dpll_pin_sma_direction_set(const struct dpll_pin
>*pin, void *pin_priv,
> 	mutex_lock(&pf->dplls.lock);
> 	ret =3D ice_dpll_sma_direction_set(p, direction, extack);
> 	mutex_unlock(&pf->dplls.lock);
>+	if (!ret)
>+		ice_dpll_sw_pin_notify_peer(&pf->dplls, p);
>
> 	return ret;
> }
>--
>2.52.0

