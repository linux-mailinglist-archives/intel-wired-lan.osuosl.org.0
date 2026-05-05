Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2GEtG0h7+Wnz8wIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 07:08:24 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B47714C6B96
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 07:08:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6888B40910;
	Tue,  5 May 2026 05:08:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6wejhDNGiSXr; Tue,  5 May 2026 05:08:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DDFF24091D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777957701;
	bh=bBUosMyWhwyuf15yFylgxcWiFUN9XcaqeGEKDYJcPXU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jPLhz+0j3JUiiPvCRXEMZdFinz+KsVIzzrZU1gZOg37/f9YlAv6iipbTg3qVfsc3C
	 fT6SeCuWG/XDzF1NqzLYyz66/9kGNhEspj3WxdTPO3H1G335T3/OdJ6gVLWiuZ8LQY
	 ukV5LJWdeGeI6BkUxnDt3GGH43bMO7eDp3bEM3lPMKH211fRS3JlG0wnLOYpY1xHFs
	 +qcKNgU2BxdWynGicGU1sCu4xUSMU7AuEpD0Oa1QJzTUuxlQ/ggDlBXzUlOc9yUoJo
	 XraicVKui+x5kfQoruTCXgDA7mRUOTThxd3JRPpnPxglDJxImxSFI+u4hillAHX4ln
	 8STOlitJ7U5Ow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DDFF24091D;
	Tue,  5 May 2026 05:08:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id BC3ED280
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 05:08:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AD60D811FD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 05:08:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ioqQEpnm97yK for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 May 2026 05:08:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 03E1D811E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03E1D811E6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 03E1D811E6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 05:08:19 +0000 (UTC)
X-CSE-ConnectionGUID: /bY5S24qTnqxukleN6Y9iw==
X-CSE-MsgGUID: HYuIL3djShyrhWvrTBYQ5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="82672061"
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="82672061"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 22:08:19 -0700
X-CSE-ConnectionGUID: 2Isd/zMsSf6uG+/EU8mouw==
X-CSE-MsgGUID: zWzRDKjMSFymJYI+KyG3rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="234695870"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 22:08:19 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 22:08:18 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 4 May 2026 22:08:18 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.3) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 22:08:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dWxWMLRCNw/x/152Ofqwr4oqrmp2vRKL5NLAPdXO/CUE2J2hN5yZWHi6R/yKlSurpPDfIEiaCwfAeKZUiluXgDre5m+auvXTCVN6YdbWZBa1kS3tOdtfHjk2AZn3nN2n6ke9HYQcQTnAquDiJiLU1Zhw0SXpGhRVc/b7C8PIGuv1VuZ1SpMxdfh/bQLoW0CeUMxkAC374Q/ptMxVril9TQsYLTVT2MFkO/5wfuRaL6aJIqLXP6pkWNGiKtI2Zf5HaeBVsVvs3ozNOfOJSVIVVSQJMVF+9oAA75N5xRxWu2wrQ8swSPTh+m/Osuv6G/WXKh5KXQgwzC9o3huQCkhOfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bBUosMyWhwyuf15yFylgxcWiFUN9XcaqeGEKDYJcPXU=;
 b=mi80yIIkgRaX3IlEoLCOIbo4dCWrkTw/Y5Z8hnOgnfR8o016So0yM/eHL009a66OAV1iF7oZlxXW/NTTDRxDVZKC/wGNZKvODn2XcQW1zhuq94hG8erolARhBIP8Y6FzrC0/kqK9l6zgP0uagE3Ma4q6f8vHf8htFcOTv6OgAAjA7EXHRJVLqpPWw5/bkQjNNIK+oe3vm5uTxUipYi/sG5+ldj+FyyfIPIEvXY4HzB7ssut9knBb5Sa5gfAS4PfRtqcE9Y7sHaw76XL+PO+4aQSuTixG1xt+1Wseh4fKZxYfXppsexptnWsBUlLoKpT+HZiqLqSQJ/o/8stPTFZRTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DSWPR11MB9713.namprd11.prod.outlook.com (2603:10b6:8:356::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Tue, 5 May
 2026 05:08:16 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9870.023; Tue, 5 May 2026
 05:08:16 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: fix null-ptr dereference on
 false-positive tx timeout
Thread-Index: AQHcvbqpa7qE+9Q0iEK9AVyP33w1erX/HmGA
Date: Tue, 5 May 2026 05:08:16 +0000
Message-ID: <IA1PR11MB6241DDA93988112025B561D88B3E2@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20260327072332.130320-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DSWPR11MB9713:EE_
x-ms-office365-filtering-correlation-id: 68d8ff09-b052-4b0d-61eb-08deaa645123
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: 63y/nZz9NptakmAEYAIiGJcNgjRMhomAmb+Y+gQKv5J/UwHW4RCdO4qbs98ZfvQJNjHgzGB0mVr+os4fA96Pk4dMcdM3lqE2csgLbeyGafU9neqT+S7CZ4dCj/ouOZyZEzbKdhhFMyedtg4fMWqLQtO4DEefjrGbhNWJExueN5p4kTH+xTGPztbz493RWcaeQCsILqURsGCmkA41TEp1dGCo0V7u0TP4PnIqzgSaXusvz1VA87Gt5Qqdy/c5tYDzJ05TeMnBmJD90NFJsXr14I0OKuLFAE17vny5Bd+bw2eMke4eb1cuBcxCFaqHcRg35J79STPQgG3A26gQSPzt/PGUqpQrxY/HuuQbzX058jdnNgG9S1zTGrokF6TtIxvc5OIU0U2CRYBwiNsBrAaqvRSXrKTSRUpOPI1fhiAYAh1VaIgzFMf/EeBgh2dd7AZ8LDdJ4u7+ev94sbzRf/VyrF5MHL7X7qw/0G16YErCQ3OJfJRUuDvzZgYGXx2tSzWxo8nB+MvqnaTaBnGbyRPYlNx6r5ADfDppVkOpGKGQKQQhCJNs8cNhFvqzUzRxfyc0oKGmJ+uQ4Vy4e9y5Tm5SfaP3Sd2m2N+ZworTdeb3YKnzWXJBLl5+fcR2JIzGJMqlXxdw7mDPG7RpTnNVWoOI9d0hYYOGSUx8oC85C6qWPgl/EeOtzccVgMMbN4C76pfji8V/kdBWKXPO4bTeNFcMJ/1cEx3oFs2+fUh3DFhXK7Ent6oQ9tAy7JrciXhPdlzz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pFey3967HZ28b6GvDiC8dAGiOYE7klYzwkFgR5Xur4hDn8bKj0EYaKHu0UvB?=
 =?us-ascii?Q?CeHQKvOwtnHfzsuKUOV/bWjzCqNunE8TnD2IcBK9Cuzp2UUmojr1LcEyK2JG?=
 =?us-ascii?Q?FhfcBAduMzlCZZlrYxaD7trjGuBVosqrwd34vMF5EEAKT6I5yPO1ap6TE0dY?=
 =?us-ascii?Q?pmnRigPd2FI75EE1UlzL3nrd9xl5pcKDp/KpPs7792ftYM2l4NlIu19FuFXV?=
 =?us-ascii?Q?3Z2gDy85qqVHUI5QybAYqFmIS1JJPXvwfHIsasspoodvNSHE88X9rCxfeXhX?=
 =?us-ascii?Q?DsCE+AQVf5iej9tw02DRg+gEqBYFJbrUS2DGC5iEyCOoR9Ii6CL+33E6tGRg?=
 =?us-ascii?Q?VwNqv1fMFcchphNKAm3Klbne8hj6dePWENgwRP7uTxJOwB14CZUIUw+YH698?=
 =?us-ascii?Q?a7gB85X9rpZNHrnTYu/CkH1hoU/OSx8T1X2IoiZMFhR1VO4TYx33GZbHlkrD?=
 =?us-ascii?Q?P9/lroAGTA6taVIK9KlQYNRZLCDjvuMmopF+QVc7ZaQ6AYMPAx4MM0zULc8s?=
 =?us-ascii?Q?zT2KRvd0AluS1f5dreHqPsnR5XJgKi5WwczkwJs80O2dF3VMQhaKqzhX2wN6?=
 =?us-ascii?Q?12z8UWs0QamfLkrXdZFF+wBam4fuE82aIeRRYB0zFmzE23AY3KlLml9Sij7e?=
 =?us-ascii?Q?6CHK/bnYUuXrrWyXmP4hG3cToDdUkagH6zpgkro5YF+hIGjvG93vFmfMqaqy?=
 =?us-ascii?Q?FbS1cIBrU/a9F8Mb7O8RGSJU3tCgWlOPhtjHv9bdwxaYrHG1EunMIR+L+6Mo?=
 =?us-ascii?Q?DnGTMcwNFEufvWNN3X1NXse34aqFhOcD3EyG9kVbz51o26fW6/lH6HyWsZ0f?=
 =?us-ascii?Q?V77jpPk5tiIbyOuUlLJ3AEN410ndYBAdsDomC0/ppSCIqJG8kDYQBc7cGqdQ?=
 =?us-ascii?Q?arGfo/v1cTrz8GQPBzI+SWbJRat1ft16LyEyE01BYjIbnoQjcOV9RvR7zk6l?=
 =?us-ascii?Q?2YQkq2HZ+w92RonWoiEHMMcvdXpBjwDLFXIAwMa3xJpHHtFDW8iwyxOUAUKt?=
 =?us-ascii?Q?BsZV/7+h5NArbkr1YkYiievxULcFjdUsspkzd4P4Cgc5pt0yxkJrTqgdXuRK?=
 =?us-ascii?Q?ZumpMXVjMNntaog1grG3cKa97fe1mN4F+/d90+bdUKbLPo54ievt5tpw9GlE?=
 =?us-ascii?Q?puPiDHc3M/BkGgUzEIN5cNzLzVXSj/yGmGnjASPiws85fd1PbyufIirrYruu?=
 =?us-ascii?Q?r8wbh8sytZbY5tej2zn2C8t5PSqrc2GUFSLj1hUSXmd3O6+r7FsB855sGyyH?=
 =?us-ascii?Q?pcGcqFTbTlydOMZn+s7p1LNh7L7lD8ohfG3C2ZwkXAuUFbXHAl9gkRp2Nql6?=
 =?us-ascii?Q?APvTjlclbXUsjmaYhPPPm1skM9yj543Tb0Yhyvwt7cpnPzrC4zRgr80Ii/RA?=
 =?us-ascii?Q?iMC7Q63WCIsp443tKtJ+XCpx7hy9aAOGYAp3R19ZnOpPDlOG/0XzYhhp9mk5?=
 =?us-ascii?Q?oum0ZRoKCvFYMxsMOUVVYFeQB4nED29eEYcvtuKQ6BvXutVDUfwfbmHxF23S?=
 =?us-ascii?Q?K1btv06nFPBeFZJjMmESyD8lR8JQkssT+/7ccn+VdpDexJSlcE1QPQUirU8J?=
 =?us-ascii?Q?8IBwxnX++FMzrJ1Ey0oAzbU7EIX9kZgwJ6WhRvIcGVIQ9ZeiuIWT24ptqBjR?=
 =?us-ascii?Q?rmnyiOYsOS6cYU9lmVUtIS7Zc9RkcNqYxBD9E0Wa837G1pb6D6EevSQUnLJ6?=
 =?us-ascii?Q?WhAu6oTRbhy7TSUgvUrziIOeBPk+LDjQ6tpR7CiM6/Vajka7?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: RlehXpUiN+7IGkfgRPK0Q5hZ/Kz7BxblwHKEOtMPJnllmia3CJEvgCH1JuPsF1pWbO+MW4uKCQGDUzEj6tZCF8L1wB9wLcSCG/eIGnjuBGiYjPROtc1/hM7ckBy0DMIw+HsI+0uWczgdHyzGm/fhFHuH1PDkQp/6dFyxzVtOPG/1fBcWY1SuUbDj8FlfT7OicbIRwCr22qUkXOWoMVJCNrbQ0l+KxqKslW3IeA/NVjc56d0iAt9HEjqi5F1js6YaBlTKdsaexxvekg/bpozsU0/mMMs2IJOEMjC+RaNdzCISyywOKJqb1ucGDQHcc32qvPsKhcsRRYugbtZPSOz/yQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68d8ff09-b052-4b0d-61eb-08deaa645123
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2026 05:08:16.7804 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NUyBOOKBf8xYDwydBRnYpTWbTAL+4eJVco78AhFyY96q5K8O9k98j+fie9gDkTDOwk+lI2Jhl4uBJGOnR5duqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSWPR11MB9713
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777957700; x=1809493700;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bBUosMyWhwyuf15yFylgxcWiFUN9XcaqeGEKDYJcPXU=;
 b=bo/UDyneUKjpza2CiyjF2Mj0f3MTE+/TUKKublVb1ty7tCNHsgAFjxY/
 p2bZYPE2rq6jCRKOEU1PsH52ZcUOFb8UQiEjgkuWe3M5UJsWH0wXzzsdg
 6jT0fDiITrazT+kGrnSLNRBpuQHjOSJ8AYAPq7qDHtE7aT5si9cCWDYGo
 eswB1plTlJCGdCKBXoB0B0PWHzsmjG25B/2lRLCH4ZBWCwyKhbnZsG+WW
 a70otAfIhehkMDf5gaF6La9toqDWtjbtSq7r4cl3Ahy8dXnBBNz0t72BA
 jFnq0LvPGwoIUxSGglhccVHT4iscWo6zThPupn/Ci9Re0rFkO3OQwSNkt
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bo/UDyne
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix null-ptr dereference on
 false-positive tx timeout
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
X-Rspamd-Queue-Id: B47714C6B96
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA1PR11MB6241.namprd11.prod.outlook.com:mid,intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: 27 March 2026 12:53
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH net] ice: fix null-ptr dereference on f=
alse-positive tx timeout
>
> From: Michal Kubiak <michal.kubiak@intel.com>
>
> Due to some kernel bugs the Tx timeout event may be false-positive.
> For example, the kernel commit 95ecba62e2fd ("net: fix races in
> netdev_tx_sent_queue()/dev_watchdog()") fixes race conditions that can al=
so occur during the ice driver initialization.
>
> In case of such false-positive Tx timeouts there can be no real Tx transa=
ction started, so the SKB pointer can be NULL. Therefore, the call
> devlink_fmsg_dump_skb() can crash because of NULL-ptr dereference.
>
> Fix that by checking the SKB pointer before dereferencing it.
>
> Fixes: 2a82874a3b7b ("ice: add Tx hang devlink health reporter")
> Cc: stable@vger.kernel.org
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>
> drivers/net/ethernet/intel/ice/devlink/health.c | 3 ++-
> 1 file changed, 2 insertions(+), 1 deletion(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
