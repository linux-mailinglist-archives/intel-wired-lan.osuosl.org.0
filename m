Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id C8y1AR8BTWprtQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Jul 2026 15:37:35 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF2971BFF5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Jul 2026 15:37:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=2mvVvzBe;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 044A860628;
	Tue,  7 Jul 2026 13:37:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NF5qNcR3cZsP; Tue,  7 Jul 2026 13:37:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 728AB607A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783431452;
	bh=bHsOEhE8NEvSKwXjz3jFZKyQMffJ7mFhC50rS3/RD5o=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2mvVvzBeapzPwCh4P1Jf5r2Ohq+45bdwbO4Ucum2mmIpyTutN3B+tpUZ3wYdJXLGR
	 DSWz6Q4yfEXNB4pfgXOTBItJc7hnoZpW6w7VUuFmBw5oFNzHIXpY5QfmeYGCjscOTG
	 auKzztuDmbXEm+RY08nPkh2DhmRarKbh2ylJvlVnlkAZu4ooC1lj5BBV2gF14d1IcF
	 /O7cUZmKlq8AtsvUFjvH5YbTKDIl5pxjUR6YmpFwpDUZy0ja5w8LMkfjKw9cFI+jie
	 teyBl0wCyqwAczPCL1u/98eKeak7gXvujPNRH5JqEVK/GgOk4eiHioRdxSQ3F8MrCd
	 2q1Am0yinxeog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 728AB607A0;
	Tue,  7 Jul 2026 13:37:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A71E033A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 13:37:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A44CF80CD4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 13:37:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H5JLPP1gT4_Y for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jul 2026 13:37:31 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E9DE180CD2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9DE180CD2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E9DE180CD2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2026 13:37:30 +0000 (UTC)
X-CSE-ConnectionGUID: pTl/yVlARICsrbILbIGihg==
X-CSE-MsgGUID: RJsmSwSWQcCiyb/HvAnxZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11840"; a="86626742"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="86626742"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 06:37:30 -0700
X-CSE-ConnectionGUID: UZGVWCkDQameKOZUe8Z6xg==
X-CSE-MsgGUID: ouZ9egcXS1uGubLbY8ONGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="247622305"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 06:37:30 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 06:37:29 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 7 Jul 2026 06:37:29 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.11)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 06:37:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MmbmrgrEcuFVk9a86osIeW8iE999PhI6J5cwwk43L6yfNJlPaETQliXh6wOxlw2My6/VGIShk2DfzVIciMzNyvcBKFZfQPg/Yf2PrnWf1/8/jb9oFHcYth8A1VBAjO7501gfjvddVBvUGmNXDXZ2CFiTaoFQ32iWBRlRtnZQ2NAVmGKJZy8RHH4Sm28z08m7guTCn9BYdJxiMdgUK6VWFymcit9l+XLkjZEsMc6/YTCPuWAq7BZdagPrgiiVf9bzhL8YN6/hlwAXX5qU2OiO2zqXijYtiba0GIKgCJjo8s0bqGIiuZbXnq4/tweJWv8axow3sKOlGMVuhUO0BUTVeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bHsOEhE8NEvSKwXjz3jFZKyQMffJ7mFhC50rS3/RD5o=;
 b=gxua5d4p0ku5s44BJ1mv8a95lrjtnLyFg3IbB4fF0JJxhuQGlMHZ5266rlfQF4xL305aG5Xjj1MhCU/+sTRenUJIjFH+dZKz4bO73SSMvKDOkbwuYXP2KRTpTj52Z2hXfH12/vo6jT28AxUfupiLLHn/Yy30S53bZCArbkFsZXrGERBM8/gkGZOGc9BkWtoIHgF4MYe/4UKvLrMYIWLxx/Qgoam/p8Pmu0UlL+jpuazeebh5Cz37p6wg62thx/WNyPWMANxpCegr2Vrt2+Eiffddz4fA0TQ5kI0ge7YDzhdwhLj3ACbxznL40c7u2mcj1RHMVRnh+YF7LGpw28hFqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Tue, 7 Jul 2026
 13:37:26 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0181.008; Tue, 7 Jul 2026
 13:37:26 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "horms@kernel.org"
 <horms@kernel.org>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, Sashiko AI Review <sashiko-bot@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH v5 net 3/7] i40e: make ring pointers
 unreachable before freeing via rcu
Thread-Index: AQHdCVea7GhTspCz0UKOBUclhLHNnrZiGMKg
Date: Tue, 7 Jul 2026 13:37:26 +0000
Message-ID: <IA3PR11MB898657F321CC9183ECE44813E5F02@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260701124524.13644-1-maciej.fijalkowski@intel.com>
 <20260701124524.13644-4-maciej.fijalkowski@intel.com>
In-Reply-To: <20260701124524.13644-4-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA1PR11MB6348:EE_
x-ms-office365-filtering-correlation-id: b9e05ea7-8bf7-480a-6937-08dedc2ce22b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|23010399003|22082099003|18002099003|6133799003|11063799006|4143699003|5023799004|56012099006|38070700021;
x-microsoft-antispam-message-info: PgVlnF2tz62tr02KmBYaFOEYMe7pxpSXaQTRipVzMy2x/YJymeQ8wKrOiNHXaFDvWCUcwwuEp3sHHMMPo9AZnNpINWc0ikW7zcyvae47WEvBJHT4Hby16n7iwcHg+eXWJJDSy6BpAPEjA982uiI8HQRm1g9Vq+8OsPQe5RD0qQ13s+eRbyd3TWlsAJLaMEr443h9I1HUi1EwD/yHJMQRFNVCgH41UKnHny12gntXSXOb+OgNcHlyyzcX51w6ApsW53qMPyIO+7zFMadB6Kwh8jhEW1YQj+z/T5aZKINKJnOszKnn7VEjZyxV8MowZFNpCw8493VXxBAVr0ZIXv8i8LBZQa8j0yPRU0RXmH1MJ8yThAT3FsytCP9jQQQA6WgpD9AmZFWuquT4a0Lma6wywcO36smLC1QyHlE07bPdSDhKTO+mTdD7sJ6h+TX5MQHKQipepI+Uocw8dMeG19ngaLQ1vjgRFmk7f4MJI/9/c+PNxhvSJez0eO42eCLN+QP22VWQ7bjYoSEeYM1yJFqJHsrQ6S/a2G0eolJNaTCFVBd2N4lR569ZIiG+8WLzlZa+OOHvjZ9S+fHBk2C2eCGDz35/+RsOOp0a30R18fvEqhU2uaTIGkMLVYHQ9GVBoeC9I5X65wca+oypfxiYTG15LeBkOylVJ+r0RuKYBSpzbxueIPH+0J9Qzx7zXKBKWAWLqKF/tjU6024GW5Gz01mnvxgMFVt2vA/aoxd5qNiG8ys=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(23010399003)(22082099003)(18002099003)(6133799003)(11063799006)(4143699003)(5023799004)(56012099006)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vqMVKnE3tavaM7PIqkizQvNmo9x98ZL1mUMHmUbL9ZE1vASOTRr8k9LmqRn+?=
 =?us-ascii?Q?vRCJzhWDxCmI8TPL1GuTbaluDbl8tmjUp6r+p0SX6mcO9cq9CNbj4Grw6m1o?=
 =?us-ascii?Q?hFnpF8h8VrRGywdMRWZtAhO1E0fy7kW8jzqqs0ZCnvYJTvKxsuJ2gD78FoEx?=
 =?us-ascii?Q?OGcn+OGZyQCCX/4cnuRcmlBoLq+MbIDpzp7vbBBxo0RuJHpw6t4pBq82Gh8r?=
 =?us-ascii?Q?dq61bgVRforipwxIYReMGnBRBDdrty0w9oWvaiFdsBNmIaINq2mnDBCN4B1i?=
 =?us-ascii?Q?4wTkXxhlPjheEN+Ge3/SPep1z4+acfiKPSO5RZhTRbrEUMA8FCf88YEM++WO?=
 =?us-ascii?Q?q/Wv6ks6W5m3WbX2Sl9ojiQSPU35yGdLKC6FeQKqul8bhwBauE67sZao4WqN?=
 =?us-ascii?Q?cRE49S/uJa5vdK4BxBTeZsGi6mAxhEhPnJxkuduin5Uq1A5F1IvTcIjRjDBx?=
 =?us-ascii?Q?3v1MohONKm6xdLvKpkI4kGp2szzqgVjoYlgfKjqaJVc8u9HdSqSNYfo9omsM?=
 =?us-ascii?Q?96FBW4XoFiIxF6qvCIkRiR9COO8EcEq9vJJc3RBN6/tMJltPDekXxqAWSwG1?=
 =?us-ascii?Q?CllDlu1zis+dsSqgXrPsfOYKCzwfplbICY3jGx7VoySEjieqLMLT4zUxziSW?=
 =?us-ascii?Q?c56rx947Q+rtNDkiq4XxfvW2rsLSD50Jy9K0/An8A8k4ozDJVe7YruYRVJx+?=
 =?us-ascii?Q?9Kam4s/77QvpUZJcSeFHKeEjwk+qjyaP8dxeuq2e2EclAQYrXU3m0azRPnSX?=
 =?us-ascii?Q?cpnXLutru+hzGZqeGwin9qfdE8MMpvsrf2FlobrjWpFrMUjt3/CucW6Gs7a5?=
 =?us-ascii?Q?D1qtfYoXKycur8I8IHlyHTSxS5kgot3EdToVr8FpivKZYewHdppwMJD8e9KS?=
 =?us-ascii?Q?3m86LpRjOe98xnT78eEvRc3w6rpt/QzQLhsSyRx1bQUdl9Ojl8fOrhrC/+br?=
 =?us-ascii?Q?Me3ffiSpRBnBVbgDgyy3EPTaWVzOVd8laqUCP2s/5Tyy7+Ozsp1TEtsAg0uO?=
 =?us-ascii?Q?c3iRxN8QyvBystisbpyeq2elId+T7o2wyGMtmQ1E4uSUJpi6T0bmA+EGaleL?=
 =?us-ascii?Q?unU0HYL7gNRbegiMMXRP/qzCPlGMtP8M3NvEFt0qGta6/kyqN0kD3NLgdnez?=
 =?us-ascii?Q?PkudcAQdqfBki9NnPe88H1N17f/umZmYNKPka2nNHFt9pkHZiyUhr9p7ceB9?=
 =?us-ascii?Q?Zk99+bJFU4JoJnQW12zUQk5EqHU8Y2AZb49Y+AqEDV1poC7VvYe7w/1/vyrg?=
 =?us-ascii?Q?U3Fe/bBc+fmHBhZZZAcSBq/3af1yzr2aK9/Ynv0wA+O6QD4DV/va6tjHrJTQ?=
 =?us-ascii?Q?egwWnMKppIP4dLmS4Lvu84MBBYqfbgmO7WCwkmdXdcJQyL2aGYpQ7PZm1suZ?=
 =?us-ascii?Q?pVSUSVhruG8YRDc8i08RnddCSRB5njRWzq7bWMVYiq0N2yyb8yhfvya097NJ?=
 =?us-ascii?Q?9kO9L1RtKdtlTWGhjuez7OulcASz/gxhSPiB9aG41iSrm+6jvnIzDFd/Eg+D?=
 =?us-ascii?Q?LnrAUu+Czwd58zKGtXtogvIwIRc75iDs5ytRLl1Km3MMNQ8JURZXPpDQ6s2K?=
 =?us-ascii?Q?TxEcHlDEL/EZYg/YkJ47MvOl2iG8t7t1IpuVFSBrelY/AnnF50meqZybpFK+?=
 =?us-ascii?Q?PD72xbXrc96xGAerXKu3kISyKdRsi4B06M9r2DB8LfcFQgA6+6v2cj0+fboK?=
 =?us-ascii?Q?i9WlthIjmmqXmHXXj9aaNdiUQ+5sQ5r0Jypy/Quihvr4hLfWoECl8u5shHQB?=
 =?us-ascii?Q?BoBY4exG85dtQa75X9o3+cEer85T+vc=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: bRx5x5NDy1Y7kG0dUyR4n6b/+UpduZ6GNCZtwazl2AaRwhJiz5xu+yOA+4Wqzpd1lPt3uYbhRcdVM9vzbl3hZFfcrRZFr30C6W6rwpVlH8q+Gpc6AlagfinqeOz0VfZxYeNRYfLCIxZFo5lqgxjOU9g51WWVXD2gFqzLWTQlvgqZ2wQeGfUYggLNG5hHgJL+TuYji/LM3O5e4o9qV9Zz+voaSUkXUlsiwKMui99JGqu27vJtn+ptgKU6kc3LBv0q6w071od/nfLrs86ua7tLVTgCYtvly2UY1PPIGsxF4abdBtzmEfpKmEoh7Z8a2nsd44t9O6Eyr/2cMtaw3MxJYg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9e05ea7-8bf7-480a-6937-08dedc2ce22b
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2026 13:37:26.4303 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KS8Hvq2/3F+TkFtn7MpmLr7yfLHhcDAgKrecTjMLaNB8I0uxeZOqAQEZ5cDb9bTY6fAMW2Nny5JLNOGC98tXYymZdf2KJjpiUsU/qUvjrkA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6348
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783431451; x=1814967451;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qyrA+ELgj9W5qYJK0RzBGtixOGIvLokzgdzbkxKxZhM=;
 b=h3ooG2EhoDLSnFKZAp1+Z4Wp0rI91e28zTDHocbUEEAt82eBegcQzoyO
 hIwZjQQqPz8vuBVMk06aqWMdYqGVe9L1lD2GMO8yvZDQWWQTikFP7uu5o
 UWWHbttNETH23XETVGFzhsbzwoZFiBZHe3UtaIgf2RAAWB8yhTmkLOd4+
 cb5AEPsZQzNFWBRa7ZZBJTlhmsOa4WKDHVJUjxEOOvtSIxPVw0BE7eALt
 QPP7wolgN8XSlMTE2k2N/s3WPh5zymCgoNGprjcT6GmLWAY6sEvUWoXEl
 SwMyt9xoU4RLoZMBAidFGBfIFFUklhnI07eb9/7XfNSnIsfq1v+Y+afsZ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h3ooG2Eh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 net 3/7] i40e: make ring pointers
 unreachable before freeing via rcu
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:maciej.fijalkowski@intel.com,m:netdev@vger.kernel.org,m:magnus.karlsson@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,m:sashiko-bot@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:from_smtp,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4AF2971BFF5



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Maciej Fijalkowski
> Sent: Wednesday, July 1, 2026 2:45 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Karlsson, Magnus
> <magnus.karlsson@intel.com>; kuba@kernel.org; pabeni@redhat.com;
> horms@kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> Keller, Jacob E <jacob.e.keller@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Sashiko AI Review <sashiko-
> bot@kernel.org>
> Subject: [Intel-wired-lan] [PATCH v5 net 3/7] i40e: make ring pointers
> unreachable before freeing via rcu
>=20
> Sashiko reports:
> ***
> >  err_config:
> > +	i40e_vsi_free_q_vectors(vsi);
> > +err_qvec:
> >  	i40e_vsi_clear_rings(vsi);
> This is a pre-existing issue, but can the sequence in
> i40e_vsi_clear_rings() lead to an RCU ordering violation?
> In i40e_vsi_clear_rings(), the rings are freed before the array
> pointers are
> nullified:
> 	kfree_rcu(vsi->tx_rings[i], rcu);
> 	WRITE_ONCE(vsi->tx_rings[i], NULL);
> Under RCU rules, a pointer must be made unreachable to new readers
> before it is handed off to kfree_rcu(). Could a new RCU reader (like
> i40e_get_netdev_stats_struct_tx()) fetch the pointer after kfree_rcu()
> is invoked, and access freed memory if the grace period expires while
> the reader is still active?
> ***
>=20
> Save the Tx ring pointer before clearing the published ring array
> slots and pass the saved pointer to kfree_rcu(). This preserves the
> intended RCU ordering, where new readers can no longer discover the
> ring through
> vsi->tx_rings/rx_rings/xdp_rings before the object is queued for
> deferred freeing, while avoiding a NULL kfree_rcu() argument after the
> slot has already been cleared. Since the Tx pointer is the base of the
> per-queue-pair allocation block, re-reading vsi->tx_rings[i] after
> WRITE_ONCE(..., NULL) would otherwise turn the free into a no-op and
> leak the whole ring block.
>=20
> Fixes: 9f65e15b4f98 ("i40e: Move rings from pointer to array to array
> of pointers")
> Reported-by: Sashiko AI Review <sashiko-bot@kernel.org>
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 471fa7f7b643..a29a89192a7a 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -11699,11 +11699,13 @@ static void i40e_vsi_clear_rings(struct
> i40e_vsi *vsi)
>=20
>  	if (vsi->tx_rings && vsi->tx_rings[0]) {
>  		for (i =3D 0; i < vsi->alloc_queue_pairs; i++) {
> -			kfree_rcu(vsi->tx_rings[i], rcu);
> +			struct i40e_ring *tx_ring =3D vsi->tx_rings[i];
> +
>  			WRITE_ONCE(vsi->tx_rings[i], NULL);
>  			WRITE_ONCE(vsi->rx_rings[i], NULL);
>  			if (vsi->xdp_rings)
>  				WRITE_ONCE(vsi->xdp_rings[i], NULL);
> +			kfree_rcu(tx_ring, rcu);
>  		}
>  	}
>  }
> --
> 2.43.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
