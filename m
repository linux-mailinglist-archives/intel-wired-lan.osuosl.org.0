Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A85B430BD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Sep 2025 06:01:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF17984C2C;
	Thu,  4 Sep 2025 04:01:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ahR7saQiMbxE; Thu,  4 Sep 2025 04:01:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF7E684C2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756958504;
	bh=tKgIG07m+XA/Vu8On3udhbD2qYdcwEiwjZ8L7F7GC5w=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=k0kwuLuPNfXPa/ZEKYWSembEM9qWchC+bHkLHWmb+yKNKKwhi3dWdQ2yrjISKZ5YA
	 FoiFmIr3pLriPGZn01j+rniCQXiiaF/eF0nZm6LXxABUkhHk2eDTWd9hQRx+KWfE+G
	 OFGjGTpsMrIWxmpWMEBD7luGiFFK1hi6FjdGaYrywrQZ1L7gLoPkbj4cd9JPnzuuyC
	 lFmWfl9PKQygtwXXZoCP6v9mpBJ3ZhAYTK+niE22BCLTNHZo2EnQ3+WJHJOAvCXjjx
	 kRKJptWckefko6Xs37TKDPREpd37wbwpQXsGx9fnQF52XHOMPqllaFYpDRW/EMEU1N
	 Hx2BC8PmcTNdw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EF7E684C2F;
	Thu,  4 Sep 2025 04:01:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 41E91930
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 04:01:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2887C6F599
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 04:01:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9AisP3TjakZm for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Sep 2025 04:01:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3081A6F597
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3081A6F597
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3081A6F597
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 04:01:40 +0000 (UTC)
X-CSE-ConnectionGUID: UyLOEt9kSXiXTcQutTXwvw==
X-CSE-MsgGUID: anAT5mWVSMKTr6LxltT0+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="70659705"
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="70659705"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 21:01:40 -0700
X-CSE-ConnectionGUID: mOU3cItwRU+PkpszT715OQ==
X-CSE-MsgGUID: KxSXTEFMQOOmuyAgMUybiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="172142457"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 21:01:38 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 21:01:37 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 21:01:37 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.56)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 21:01:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zBDiB3uRGUfYc+x/Wj48fk6bHw35kXFH5OsOcLkts+QjA4Rr2RqrVsA8zf7JT8C+6UGE1nD6pXBsSVq/1AwxCipMH1KeuvrUPLr2cYJOPykt19vSQbk+DLXU5lfEHXcuGEkQZhoy0M4L7VR1fayIu2LDAg86xutXKXi/mYcuW4QwO0b5MY2e2fhdFRUT+GIE+Gvt+lfTFfXXYZNqhc2z6ZPCzoAYnFOgARErzs1MQzAv4/rAaA1HbRseQlTsFkEOgG3zjuELllM+qg/urKtq1SoYwlgDxiegpoQ0wOuZmgBw1y2GR5q3M2hnB3T1LBxkcPUHskFrFrSSbcs49vKrAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tKgIG07m+XA/Vu8On3udhbD2qYdcwEiwjZ8L7F7GC5w=;
 b=x1XN146RGu8UFflEzKOBFXPbxpPEPkfJiJQoFAB8uqBAXkpraE7omznTHpAYqvWzIsG1dspjc3jLMo58k6RmrccleEgd1Z+h8Wl2hdFCVUrBAERtpaMLHmD2Khh/cpsiuNWYjH6MglAbot5eky1HGi0UU6hjvk33qxI2DeR6kkL/+1+Jss59Xr1kj5Q4CQAd9wtcRiN49bhR3sL8rJ1DxvogoRB2OwE4c/BOQxuFFOzc+kRZVzut3hrqpglSUh2Q79sw9Sd4vXERIyzDH3LMNraSt/q9jh9e4mkkVF4RA1HBfgZH1Z+DqhlaCkpWy+ZkaqcLg6u/jxp3RIkzTn6NvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by PH0PR11MB4774.namprd11.prod.outlook.com (2603:10b6:510:40::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.18; Thu, 4 Sep
 2025 04:01:33 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9094.016; Thu, 4 Sep 2025
 04:01:33 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "dawid.osuchowski@linux.intel.com"
 <dawid.osuchowski@linux.intel.com>, "horms@kernel.org" <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 06/15] ice: allow calling
 custom send function in fwlog
Thread-Index: AQHcC0Ve3F7FCxhH/0GIwKsCy9RMALSA/K2A
Date: Thu, 4 Sep 2025 04:01:33 +0000
Message-ID: <IA1PR11MB6241C34823466E597FCB6CA08B00A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
 <20250812042337.1356907-7-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20250812042337.1356907-7-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|PH0PR11MB4774:EE_
x-ms-office365-filtering-correlation-id: 3bbc69e6-c861-454d-9aba-08ddeb67bc93
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?0WgTkOJTLE/6hK8qF6xc9LIrKHVMncS+N5AA/0Gj3UX8KIQRq5xrZHB1u00S?=
 =?us-ascii?Q?NSBYPoaObF1qHI4qQzaumLRH96Wgc8rF8s6f1q3G/Z6B0A52QQz/pFbvCm4V?=
 =?us-ascii?Q?X3zshfpIAXuZuvlP5liIOSbQuz+3Iqds8hIMl/RMLPxcVqMOVRR0bnesDyfP?=
 =?us-ascii?Q?0g8aMD7aVYCuTdzZkrlWhiXJV4zw+G/4Yov5oAvT03IiHOCQHDXmwtROXUo/?=
 =?us-ascii?Q?c03805CKVzjUf6Q3nHKf2buahpHq2+nU4myACL8Yd8ilhi4uqKPokRMafrPR?=
 =?us-ascii?Q?efcYie6rNao4B8cZG3zJ1Zf5+YTeDlTUtjVichNkRiFZ6LFdJhOGOZHIF6wD?=
 =?us-ascii?Q?FhIb8xN/F4/Z7cBE9kOdhuRCUlDDsQrMZnHxgpwLkYTVNDbWLVt8AzLlic9y?=
 =?us-ascii?Q?v1tVHwx0zQE1vBzZ6det8oOYMHxv2GKGlTDE/HcKK4NCHOKrHhJAZ2uNQe7Q?=
 =?us-ascii?Q?5auap3pjJV6ZDBJXBWpwTxorpveND9XY0qCovT8p5JjHsZhCgLaaFPSewEfJ?=
 =?us-ascii?Q?t7iX5apHU3rRBkY4lVC8YhHwhwcId+vPVz9CIvAbgJeyyu1UaBAQ8WyN33dO?=
 =?us-ascii?Q?HDo0RdaNQNqM/52In3atG6hgAM9hu4E9WQeOrYvVggNp1E6xdhp/joJV1al6?=
 =?us-ascii?Q?KMiUcO395s1eG53LCckRSs46clSXz1GkGmOCpQ0fGx4HTLUm+66LEWuD6J3G?=
 =?us-ascii?Q?IvnHjjRLFGSnUejnfpU20UBS29wtxqC6rQfWqZnSKfrJTNyUjV3wN3YwGiN/?=
 =?us-ascii?Q?NwIVWfKHHBsYnEwYElcVICEhzF5ncl+Q12qncWmuFGEestvx8FeciY+CqBVM?=
 =?us-ascii?Q?/grNU4aMg4SBNbPYOpFhFrEkFWek5mTmQTN4zC+U2XOQR40IkS72eo5sBQLp?=
 =?us-ascii?Q?aRCnzsBC1r/GXI7NiH9ufPjPq1ArXCchN+Exksx4eI1bn2fXZ5p/Fl8fV1EO?=
 =?us-ascii?Q?WgTRU4MK5l4sd5xG7Cf6gARpklGky8qkmlRjPSBp5LCiMc+F0r2h5ZHrHf12?=
 =?us-ascii?Q?8s7N2j/7NXnmJzqT/9AoLPz4FZOSmSb6WUUV8Caw9JSMTur7DxgzOX19aEW0?=
 =?us-ascii?Q?7dQrbhbE+DICRJH6foXT8lOvCVTMtBvjHMKLz7hzaNhCjmPNr3+GNQXkLv0/?=
 =?us-ascii?Q?ZvRgs+XOsafj2Pe/MMe0bjd/VbSQCMbd67XtEWqPyKJ8P6ierFGY2c/IlWH/?=
 =?us-ascii?Q?cu8RG2bVRX1LKNd7VD3O/PSArjXB9cgsV40D2nJThNc8FXdb6B4w0ITMHhGQ?=
 =?us-ascii?Q?/m3EVueGOMevYLVKYR0nmgvfVG4k3qnxaLcif/TdxTFitNGsyYaCYJPappgr?=
 =?us-ascii?Q?zaCsXsddROnkfn0ghQEOBekzUgR6Chcy4cnrzWoa7IU4epe12xEkoDTQdNf/?=
 =?us-ascii?Q?R7JTvrPIluYzUnrczFsjrO/KK6ktIzu9vnLVGFGw/vSqo6keoTp3Hbs/zhrs?=
 =?us-ascii?Q?cKZxwu7zhfQcJQ0vvzgQKdQV81WTA8r/I43gk7wbvXYrUNXmwNmZ9w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ck+mNLhdFiWv1eYOMAXax2UjyaQDjMWTeVwyOxyF95EJxzJT/AiEQ2+hVfcC?=
 =?us-ascii?Q?hkczTQZlYxWKfEaaaD1ip6y/ttQsui4tnJqh7XbLMkZrtQ8aLbbZu/nI72ne?=
 =?us-ascii?Q?enccJz8Pu84EFkubgiXgCWFhFmNOXceYd3RjIFcD76X64xvGKVHwLVUEhVeu?=
 =?us-ascii?Q?wAw7jbgpGAo3SqZWiWAF5LtP8uFUMCJbZiRg1c75GfyuXmcB3cPh55u3e1S7?=
 =?us-ascii?Q?9lJq9SYCAnDM1VoeWYKzdZZpV/S6DAsXM5C08Y017s6G+IPD3lUwgpkABbc9?=
 =?us-ascii?Q?gfTmaiyGvDwHI3aGZL4kHsufdlm49W39LOWYONjHj1DmeSkJq0/uncEd00sw?=
 =?us-ascii?Q?Z3kGubcHk5viz25yE7NKcsoMYRGaYH5PNhgBUr+KT/AG7djconX/gqJpa1eY?=
 =?us-ascii?Q?t+JsLH3UKsmk3Hf7vGlN7Y9VFRwm6v2t9orJjPM1hm8OERJ37MKl6DpQ3A07?=
 =?us-ascii?Q?G/JB4TNAz7yBL6i7MEI2BsWHZgXrQnkypOnVY1YcYx2c6SrqhI8nqvj2UsFL?=
 =?us-ascii?Q?+QpKK5qzHkxogoa8T7K65onIFzzicIQCuyf8SVG+7wuV0UHATnTeYwZhTlQj?=
 =?us-ascii?Q?RIwd99xycRWamIPCoKjfes7ac269JOjc3V6yWn8+YHecWeMwmdBizUlwcK3J?=
 =?us-ascii?Q?rITgC92HBLYSpxgblqaogl+bpxH9uaW9D3pgYLO3ZDY4hhnLUBIHBN1On5LI?=
 =?us-ascii?Q?5/bCtFWFbe5yoSpQI41oNBvXH93BFFCACGw1xxZ91xl4Q/7ZeUtiZimzAs3p?=
 =?us-ascii?Q?4xh5iaV1qGjsQHvO85HvEpSG5N75REfqGKWCH2Hl6uHrZrmAACnvSSIyrpT1?=
 =?us-ascii?Q?EAaVoADrZb/+AoJcqKeTYTWDO/2AAZjgCxCLUrTLXVe3G8MkAudEyrybfgKJ?=
 =?us-ascii?Q?l8G8v0SMVKAqUsAGEC/ABJRDi/chh2fq6poUk50GWO0S+XHN0To+Cat1PVW0?=
 =?us-ascii?Q?R+nhtYZwQWzJKkrIW9XBAPifqjFlO3Q5M3LZNUXrmxublptY2wxD9fEXG8j5?=
 =?us-ascii?Q?Zir2h0BngoxR26Zykhq48BHYVPYw5LJ8ovVE52uRJol9BA7B3mZW8hcVFd74?=
 =?us-ascii?Q?GOdu3OkQ3fwZuigJw62eZuWdTUhFeTXuDS94KAtZDlS4OrFnnYC/EZ1isvbO?=
 =?us-ascii?Q?G1+cjO70BEaF15VkH8XH2KNB6+gU+wnWb0yYg3SzCzGnJsmk6URv8o7JtyXz?=
 =?us-ascii?Q?heDFwI7h3NNYqvJjq6uwA7dTtJ6jGa3AT5XoFhIhNkQK/bd8eGTb3mTeFuma?=
 =?us-ascii?Q?qvF1FxhtqfOvxw6giVJ/pm4RNVe1MZ3qqs5F1B5i95hG+o9DzxPJpLR4ZEzy?=
 =?us-ascii?Q?F+wOVwzRM/+7DVf8nGAG3WV5Ym7yrzLWaMNGghWfUcY2Nkry7C1Q2BBy6ipN?=
 =?us-ascii?Q?YAZSFXc5CPFohKLQvqW39lIamyVvnbdeV/j7TM+gXLPgv7CZFwwKn9G78MF+?=
 =?us-ascii?Q?Xy1Lz6UVmpKEOaPE1GlpU0LD+Kuhi6hTD+8piO4LGmk1UGU/sfeHsjlRs06l?=
 =?us-ascii?Q?mSVk74TIGlCDJp9pNTNSZ4TjniTaAgYbZ4eJNl0G0j6fHfVRLwwHCjiDf3J/?=
 =?us-ascii?Q?ccZQgGNy42Y5IgibIkNqlrto7fNQAbSKvrhTqyPK?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bbc69e6-c861-454d-9aba-08ddeb67bc93
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 04:01:33.4133 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KFjIKvuZzi2ZX+utaL8bHoX6DQB0O2fdEdKPbWvZ2j2dJpAg/PhOUk6EzfFjXgiqQxX/8bYXfZM0vnCr1PVlTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4774
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756958501; x=1788494501;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SfKdh6jjM3ePUAwkil2lnZaZIXP8e+1cbw4lXn6lG+g=;
 b=lQgGB0pKEktcLfYg5E9ac1t5DWjROgDx9VBrQgHDHSFOAkWb8jTKvqsm
 v8bLoTgzedcPqX2IZmHs8hr1n2+ez6+lMI9pneUjTbXYiWQWCxUOXZEqd
 msBb4SIJf0OPO/CLluln0AYwZczQbu8YRUtPRhg2xSEiSwQxGBmHeiz5T
 P2aduYWAYyHRf6MdrV3GwtM9n7YrHGc/cx3ScHaDBP2FDDqNfJd+YXCBs
 hyfmjtZSCaLLqGlv7y0WuuKVrumY1D3wEIjTze96kxZMGeFpRPEekiOMd
 Yh0hLT97TDe4FIQpqwEcGRgdo6llMs2vvs7I+QKKE5ClFg1RpL2cvqFu7
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lQgGB0pK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 06/15] ice: allow calling
 custom send function in fwlog
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Swiatkowski
> Sent: 12 August 2025 09:53
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel=
.com>; dawid.osuchowski@linux.intel.com; horms@kernel.org; Michal Swiatkows=
ki <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 06/15] ice: allow calling c=
ustom send function in fwlog
>
> Fwlog code needs to communicate with FW. In ice it is done through admin =
queue command. Allow indirect calling the send function to move the specifi=
c admin queue send function from fwlog core code.
>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_common.c  | 23 ++++++-  drivers/net/et=
hernet/intel/ice/ice_debugfs.c |  6 +-
> drivers/net/ethernet/intel/ice/ice_fwlog.c   | 67 ++++++++++----------
> drivers/net/ethernet/intel/ice/ice_fwlog.h   | 14 ++--
> 4 files changed, 65 insertions(+), 45 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
