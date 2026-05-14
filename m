Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CK8dAxqRBWrfYgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 11:08:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ECF053F99A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 11:08:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D97E822F9;
	Thu, 14 May 2026 09:08:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Revrkr3v0-4E; Thu, 14 May 2026 09:08:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECE50821FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778749719;
	bh=C7Abvh2TJ1UkxSH8e8fB1H4RK8PRgi/Zxh5FdKifhNA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Z7+/ZyIUyFY8fBXcn5dA7xHWW141n8QMoSHx7Kn6mWrjTpfxI7ee+r8VnKK79gNol
	 qxx4rvE5Q3kcAM9NnMMTVr5uhYHLeOSgxt4V9zSYNno4WWsoHBMEx7AJIuHwYUnWPO
	 8gij4rSnWpVLGGY+SxCIJgS40DhtEfjSB7hs2mEthBEnBebiiWcwqL2q3le/Lk71o4
	 Q+KXGqCsZ9WaTPP0noFDpQ+kC86lCqLQOVzHCeBynfubUMWFZT77eRzvv3Q9oiiFb/
	 3UujQFpZU2Dy664OuvLmfOoizWi6WETj1Z1Q0zbsFh26DH6xKq20szA0IhzdgqejUR
	 b3vNd+U1udPsQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id ECE50821FB;
	Thu, 14 May 2026 09:08:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5AEC137D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 09:08:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4C28B406B3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 09:08:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M2B9g6JdGxKv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 May 2026 09:08:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2FCEE40445
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2FCEE40445
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2FCEE40445
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 09:08:35 +0000 (UTC)
X-CSE-ConnectionGUID: lfrIy1nmR726JVbre6uZDw==
X-CSE-MsgGUID: xD5/yzVRRLG7L/N1SbQGkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="79720019"
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="79720019"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 02:08:35 -0700
X-CSE-ConnectionGUID: hfGqJn08Q4eHGNOELfiZ1A==
X-CSE-MsgGUID: mPbHYgwEQp24xmfokwe02A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="233899489"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 02:08:35 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 02:08:34 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 14 May 2026 02:08:34 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.18) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 02:08:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XHmY9OxWGPxhm3yj/0qSB9A+pFWFgzJfO46bOnH7A0YmuuevqTorJx+bMZSJ4cCLKjjyoZfLZ/bMrwp5hcE2vVQyKE2vDvorl/LrrRnzk8npY14gV/xJWEx9QpVx8tdeabpgTsxqokUMCZTJyL0TnxIE61pjJ5Jelr10kgEQcruQRpRa4mVowH0dpecY5z6hWkxtcnN5awy+zx+ozP8EqWLLUkQfnc0EHtFZJn8fJ/i+p2ERJJZGtU6Np5sm+L4paGS19+RD6fYFNE0uoy+YhYqV6AaD/vcWXgbKnl/uTGrIVcZ7nEan8OZsDFbl/4RGufi2gNa0GWs8EtR3ChWbAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C7Abvh2TJ1UkxSH8e8fB1H4RK8PRgi/Zxh5FdKifhNA=;
 b=g/5qMTZwb87Z53y8EQ5ymgaZnAQxnCzCnmWkSpzV09ULFPn52NYmt5ZB1uOMM3W6aZ7YGIJ0TycT9Ht5XBu/2ixAD69Yal1jVY7YedtylPKEzzD6iOD9Cc058DsCcpL7nJUE6MMr71MOaEZasqi2ZeCkiqu3ljEoEM7fqbXyWl2cSLbffbrItIFuCmYAsXB8YcmI6mg4qHd1RvBuKnrFikdNH8jucvbhfR2bkpFY6BrVd6ZJv5TlzdbFsCVgwXr5UCN38h5Stg/sNJ3IkEYJwttC5XTdHG1yk8g8BPkfMvhVQVilwIBWyG1JG7jWT57ccYMGo4zQP8DeopVBUygCSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH0PR11MB4790.namprd11.prod.outlook.com (2603:10b6:510:40::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Thu, 14 May
 2026 09:08:25 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9891.021; Thu, 14 May 2026
 09:08:25 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: John Ousterhout <ouster@cs.stanford.edu>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] ice: fix packet corruption due
 to extraneous page flip
Thread-Index: AQHc4jwJ5MGPDG7oZEOL1cC69RycHLYNPeFA
Date: Thu, 14 May 2026 09:08:25 +0000
Message-ID: <IA3PR11MB89864AA71D194B25EE49662FE5072@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260512181953.1689-1-ouster@cs.stanford.edu>
In-Reply-To: <20260512181953.1689-1-ouster@cs.stanford.edu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH0PR11MB4790:EE_
x-ms-office365-filtering-correlation-id: bcaa94a1-49b7-4fc2-9aa0-08deb1985b0b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|18002099003|22082099003|11063799003|38070700021;
x-microsoft-antispam-message-info: 4cjeUyhVk3CyE+DsHY7tWI0pJWOmu5VjDbRKAtWeTAioLC9UczR9AnK5FTB+6rnGtPOZyW6Cmt2u3pusDdSGxGsCW4i1phjxBjyu3DYX0I+RquTdxaSj6NNQUG+7pK4BR+JzmO5jRtGpwLYM1/aBqdAnW9kIiZVASnvOz/HAYjWMq6ZfJpc9FeoRXPsl0WQKXst2efaQpmjoVSWAdC5xIsGzzCLUWztgQgx7JRjXHC8B+1Uhd/BtSPWaD5EpxSI4YTvtWE2GbRiPpkYtAj3snt4HTy0Th5d1E3DRnUI2Vu5efSGWxCGqyxnBnIBfIlvzFnv1WP6ouy+56t9QhQXbMgA+vwuaYUxj2WelQLEvwLHyDlfjtsz+HarAg8CpD9OlJgdUErXHwq4azkWYfeKfM0IiTYIu+/q/cNI3EGyCPWm+EhLNSORsaja2t1u1WKr+mf04c/GkeAR22CV+TpD0Pwk870y+DxFr4a0tW4/zjIi1Oxmt0ILagZznE3imrfVpjKQOjwQ+iVdKx/6twgXjdfIUncQGiID6WcUTNDz/FDcKO1WUzWeFfiEug4RmqYwLD6wk8qW5VXANksxXJ6Z+7NfCW0Y5AQO3xybq2NjqAznZgeG2t0MuBhZ5fADWdNMnlBm1OPJ/4vfKwkNBg4SkV5WCQU5ylkDShtaTTnQ0nS+iMVz4nYa/tz4xplNAsmD3XSjNgQviCzdmN4e+j45kiJdn2vbIidRmJAJ3fJnFS0Q8CPfvj+14zQYqTDXbaHC/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(18002099003)(22082099003)(11063799003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BoiAk70SFnl6esJtItxfenzo3FmnWmUGSZs24IUg/hQrxZqhrycef1w8DG8F?=
 =?us-ascii?Q?UEJAcztDqAkmwKSo8S0rSGh5PfFHSFMN1oVQsYOkdfQXjco+Gsk1MEzXODxH?=
 =?us-ascii?Q?VPk2uQRwkjQB1K+ZeBtYgxai98nIE3w4kN+iftTlwsEduivhYhGvEWQgplth?=
 =?us-ascii?Q?aJUSKfhhxdBpbh4sj2M91hC2sVXQKUkPDll3gGrfPDglt+FMZ4ut1nk8d+qk?=
 =?us-ascii?Q?kuj17MIiknlkcxzpK4fYiJWoG96XeS/PgdStCviTFUU/KNtPp6NF6shyuZ1Y?=
 =?us-ascii?Q?ohw2Tr+SOMwkEaeKZu36TcaxJ78YHetjza2fdq3s7PVGKHZmExXM0NlTa/j1?=
 =?us-ascii?Q?9u3er5k+6PIQsidLvr6sUp1c8cmCzQ3TyQCtEhw3NWz2wQZ5089OLSROU/17?=
 =?us-ascii?Q?cxnIkkWv1HXQrx3OZ5/a/q6qDYBjh29q09cHtlhSF1QU8+PUVATHHMNJJvHj?=
 =?us-ascii?Q?w4CBJeoK6yU72cB9iUPTcEZtUm3cq7tfBtc3g+lQB5jeVjJhOhRMt+BEGt/d?=
 =?us-ascii?Q?xnykkM4jqsQChOgLrqrHU3wEhQcepPf18rcmLl3RYq7pr5467RmUuITBRg4E?=
 =?us-ascii?Q?63DVz+P08Ti3FMMLGDzhk5p4AQM9T+oYjcfuLOHDfaD0SLvviK/nswsvTGIq?=
 =?us-ascii?Q?UtHkElCwIQPCir8aSZ+p0L+4n80I3yQe06AybZP0y/Q33oRzfR+H+2/jqcd0?=
 =?us-ascii?Q?6DNR+JxVQ6PiDPebYp+RVbsn8dxmKawVdjkwvxnJubysXfd78ql5WHv61/+0?=
 =?us-ascii?Q?hsabwrBqiik9AGO+ECz6mKQTu4ufOac7XpQJz7NUy+qgXK2O18PCb9fzcCla?=
 =?us-ascii?Q?as8xnjRhdSIMnysnZngOY9095bC5bqA0tEI/FeirUZ7V+FtKTQ84v1d5Asyi?=
 =?us-ascii?Q?QBPR5hzqI3YocGOXfexS9RPQ0/zqVxgubVcoS2qdDiPYAfObrgn27oruSVjj?=
 =?us-ascii?Q?Vcfw224uPlzlHAW4HJFR3+HMyiprzw/XinP44pgf7BJLSyVkCgfastH8bAGW?=
 =?us-ascii?Q?peDkX4KtNpWQYF+qhdLSn3C+PZBh0mlsvPtXCmKp/usWH+6ZmZpBQultfIRq?=
 =?us-ascii?Q?nBfZnXOf1Pn1NYird+GRvCDDVbp8TDTx1gMzJLXyUTCcj6/pEn5klELEJI3t?=
 =?us-ascii?Q?i2ElqX7ujrSToE0+ljJcE21aa21wv251lXNnkHbB50MObIvsB8SO2IJaoZnC?=
 =?us-ascii?Q?CyOLdlhDqvMiPf4Kth6Z7hqcpSxZIe5z/IMRATzyNtdcZNmMiFUgwVvQVcg2?=
 =?us-ascii?Q?xCiZLE58QRn0GwpP3wj/ktjpAyXMFCL2F+GzqTmV9Vh2tdhln5m4GnGH9ymU?=
 =?us-ascii?Q?F9O69THB6JUoJz3egmhih3XobLLkfj4RniTOsyhy2ZQaP56S/IlgpyxWLi61?=
 =?us-ascii?Q?A+y6p3vjNrm1jERVthgmX27sk2tu81igalXshCxqsH4sSrlRVvy1E8fND8nu?=
 =?us-ascii?Q?g49u/y7lbV1/iv9foZK+g84JLQNLKSV1j9QaNNJsuaKqrXYLNwNgsCYBigeM?=
 =?us-ascii?Q?vakTHqm1AvX+Zu/a8MEtNxYt8V9/FKAcgbQ0fyGBRnp3yVRh6Uvwk7dY5HTh?=
 =?us-ascii?Q?xXaG4g1QmpWBOIcMUatiu8LLKrjlIjtBT0W3cLo6svWAmZTZZGKq6O5l8WDd?=
 =?us-ascii?Q?X7X3bvM/IZiJJ73MBSbin9WgBttUBa/KnXOhhfNgwk0vTTgLRRXJNx+MwowH?=
 =?us-ascii?Q?pie2CLqJ3+mCU9q+M2Hga12paxaMv+M0xdHU4E+kpgV3tuJsDFF8biiMr8mQ?=
 =?us-ascii?Q?D0BYqV79/5Lbpzr5BvecGWYgpVut0po=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: OewwFSUO6IpWUCd1UDwN1W/IdbxNyTQO/A2X27aqhapGziF1nlPD0qqfvK5PDAkuqHYxCDMsExgR1mIVfm5Id+pBuLP98UqEDWp7rh+pRJUeyfSarz40PFz+WXDE+NLHEP1WDXwSNgzZgf/rQd5JOKCArqBTjBnlrrqCYwXD6DnxJYsC5cHgjap0LzlQUsEFpVDGBXqBzm+Ip1catcSu0pLWxKdAp4WgdTpRK6x/UoFG0IqooUcHWMnMIB+zYplOultouszyhIUf4mtxUxISHvUv3fBebwBQNw26B9SfGdWC6VArDyF0/2ufCnjCWJUsLKIQ/j4GyGlFgVuSuYb8nw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcaa94a1-49b7-4fc2-9aa0-08deb1985b0b
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2026 09:08:25.3397 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sGVZUer/4SAqsQesw+gX1bwS/ZdgBfOW93jhK8Fkgo/xJ8p1O/TkUhDw3XsVhIMiBiG/Lo9tZi6kWBpBZIzxf+WIA4tXVQEjlCUR2LAKVv8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4790
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778749716; x=1810285716;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F2UvW/aze0Jq8dpEOtsaHus3a8K6CuwfFeYUDB3mbiU=;
 b=YSnUj8N531XH/DJgUSwf6wIfdS8Zl7AubDIDA9sMU3D7p3SR/g0EQBZx
 fILbnSpDrGNDVLmQvhqUhSzItSXekXLyZHfKNZEiEOqRqxzfEpU4+Wr8d
 9H+AuW4bsjqtbGGAhdKMDukwKqHy3Orf5ISTKE6puz5D1gleLxjwaTRAv
 f5PCeVUnidWM9je3ohC9nAYNcrA9D5yTwAd/PCZd6vNUDVaPcWoryXYZr
 t2087PKWrdXNROKBli8VdA9phI/wIvqymOJepJ/OcSUwc7PF5FkGSFj86
 jZ888Ks4wZ89W4teG1fMBlwbSc5q+DtLCKEZS3irv8ivPMPODq9ds0e7n
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YSnUj8N5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] ice: fix packet corruption due
 to extraneous page flip
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
X-Rspamd-Queue-Id: 5ECF053F99A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:ouster@cs.stanford.edu,m:stable@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,m:jacob.e.keller@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid]
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of John Ousterhout
> Sent: Tuesday, May 12, 2026 8:20 PM
> To: stable@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-
> lan@lists.osuosl.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; netdev@vger.kernel.org; Keller, Jacob
> E <jacob.e.keller@intel.com>; John Ousterhout <ouster@cs.stanford.edu>
> Subject: [Intel-wired-lan] [PATCH net v3] ice: fix packet corruption
> due to extraneous page flip
>=20
> Consider the following sequence of events:
> * The bottom half of a buffer page is filled with data from
>   packet A. The page has a net reference count (reference count
>   - bias) of 1. The page is returned to the NIC, flipped to
>   use the top half.
> * Before the reference on the page is released, the NIC returns
>   the page with no data in it ('size' is zero in ice_clean_rx_irq).
>   In this case the bias does not get decremented. The page still
>   has a net reference count of 1, so it gets returned to the NIC.
>   However, ice_put_rx_mbuf flipped the page so that the bottom
>   half is active.
> * If the NIC stores another packet in the page before packet A
>   has released its reference, the data in packet A will be
>   overwritten with data from the new packet.
> * Unfortunately zero-length buffers occur frequently: they seem
>   to occur whenever a packet uses every available byte in a
>   buffer, ending precisely at the end of the buffer. When this
>   happens the NIC seems to generate an extra zero-length
>   buffer.
> The fix is for ice_put_rx_mbuf not to flip pages that have a size of
> 0.
>=20
> This patch applies directly to longterm stable versions 6.18.27 and
> 6.12.86; it also seems relevant for 6.6.137 but would need
> modifcations for that version. I have not examined earlier versions.
>=20
> Unfortunately there is no upstream commit id for this patch because
> the ICE driver has undergone a major revision (libeth refactor and
> pagepool conversion) that eliminated the buggy code. Thus the problem
> no longer exists in the main line.
>=20
> Cc: stable@vger.kernel.org # 6.12+
> Signed-off-by: John Ousterhout <ouster@cs.stanford.edu>
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.c | 23 ++++++++++++++++++++--
> -
>  1 file changed, 20 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c
> b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index 51c459a3e722..081c7a7392b7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -1215,6 +1215,13 @@ static void ice_put_rx_mbuf(struct ice_rx_ring
> *rx_ring, struct xdp_buff *xdp,
>  		xdp_frags =3D xdp_get_shared_info_from_buff(xdp)-
> >nr_frags;
>=20
>  	while (idx !=3D ntc) {
> +		union ice_32b_rx_flex_desc *rx_desc;
> +		unsigned int size;
> +
> +		rx_desc =3D ICE_RX_DESC(rx_ring, idx);
> +		size =3D le16_to_cpu(rx_desc->wb.pkt_len) &
> +		       ICE_RX_FLX_DESC_PKT_LEN_M;
> +
>  		buf =3D &rx_ring->rx_buf[idx];
>  		if (++idx =3D=3D cnt)
>  			idx =3D 0;
> @@ -1224,10 +1231,20 @@ static void ice_put_rx_mbuf(struct ice_rx_ring
> *rx_ring, struct xdp_buff *xdp,
>  		 * To do this, only adjust pagecnt_bias for fragments up
> to
>  		 * the total remaining after the XDP program has run.
>  		 */
> -		if (verdict !=3D ICE_XDP_CONSUMED)
> -			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
> -		else if (i++ <=3D xdp_frags)
> +		if (verdict !=3D ICE_XDP_CONSUMED) {
> +			/* Don't "flip" the page if size is 0: in this
> case
> +			 * the data in the current half will not be used
> so
> +			 * it's OK to reuse that half. And, since the
> bias
> +			 * didn't get decremented for this half, the page
> can
> +			 * be returned to the NIC even if the other half
> is
> +			 * still in use, so flipping the page could cause
> +			 * live packet data to be overwritten.
> +			 */
> +			if (size !=3D 0)
> +				ice_rx_buf_adjust_pg_offset(buf, xdp-
> >frame_sz);
> +		} else if (i++ <=3D xdp_frags) {
>  			buf->pagecnt_bias++;
> +		}
>=20
>  		ice_put_rx_buf(rx_ring, buf);
>  	}
> --
> 2.43.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

