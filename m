Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id f34GJbmHM2q5DAYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 07:52:57 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D393469DC0C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 07:52:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=3TjcNj7G;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E48CC83DE2;
	Thu, 18 Jun 2026 05:52:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aWRv37gIrVxr; Thu, 18 Jun 2026 05:52:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6931783DFF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781761973;
	bh=/pMv23cZou+P33tiCLmB+AN7bmQpydGkfrl3d25v2/c=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3TjcNj7G+65nsg0KIBsFct0Qv5+Ezpr/jRvFnkUGqE349aBoA2BAqmwVRZyrVv9fA
	 nqgjxt7jYSfd9xAGwVUyznf/2gPFtIob5WwJPwrUNOTV4oNF1GhBxrROBE5uR8q3f0
	 AYRN70ls/7Zs8aw1k2Wod+Z7b8y9aeo8d9bZq+XEpihv9zWqlrFG0H4ULnGGVHAFJH
	 vumkr6iNYYNilBRpcsGBnj9UBQK8tmXoQQNkVoyxy78lt9Ttxy5BhzeUmS8sRT4+ds
	 6t9or838A5Nz4KNYZOFSSeFzVJyvNpHgixHlDZ5ix8/w5H+CsBW0kfBzYuCEc5JQ+1
	 c2iHYfMyurxtA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6931783DFF;
	Thu, 18 Jun 2026 05:52:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1769C131
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 05:52:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F15DB41319
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 05:52:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AQyhttSlvW5L for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jun 2026 05:52:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 12F40412F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12F40412F8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 12F40412F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 05:52:49 +0000 (UTC)
X-CSE-ConnectionGUID: gBaHeFuHSNOX0RQZRt1E5A==
X-CSE-MsgGUID: OWosQQoSQG+iEwEu4kWryw==
X-IronPort-AV: E=McAfee;i="6800,10657,11820"; a="105387093"
X-IronPort-AV: E=Sophos;i="6.24,210,1774335600"; d="scan'208";a="105387093"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 22:52:50 -0700
X-CSE-ConnectionGUID: ICZHo+NaRE6JpfWHlNRS2Q==
X-CSE-MsgGUID: GSZDUicPSiehPN5JAiKtpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,210,1774335600"; d="scan'208";a="245332266"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 22:52:49 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 22:52:48 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 22:52:48 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.14) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 22:52:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=raW1k9J9mef5Q81c3M2hMXSq0DE0WaDA+ETefxj9hDn7kZzQkOU3PahLmZkOOw6U8hpbsHOraPqP30e244uEWVK+cXRlS6BoC/DhoUFXIzyUiGeckpR3ZIJFRPlQCsBRcu8lz+eCOPW8Ng0CeFPzTPlYM5iQibzjkWVH2hhOslTrbW0AM6DTRuvuz4OpJss2mWySnkAlEKHVwBTB5UuiSt3YYpVo7BPXj3QeAZHAQEA19oISKRN93hOETf7Wmh1Tt2mhZMKBG8blLcY4AeL9UwFFWsxvFgFjLWt8ZGsmSqVvKJonGuzVYe7qK4eHNs77ter6RNaEfbvieQoYsClChA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/pMv23cZou+P33tiCLmB+AN7bmQpydGkfrl3d25v2/c=;
 b=u0oWQ91Jnr4WtM53oSlPL95t0yI2nnAdX7jcGMYFiWUA9IFV8dtOVdM6KKFmo+Mn+7TD8MGGuzLJj70IxZSR4uEab12hb7/66HsmlTvcWqm8dqgUDD5xnxla/d3bp5REuP9Xeq6UdM0iwMN/ZbvICyBmbQf4QQb4OOuqZ3qXPA+UaVN3PKHHVqJ/sxoTAQuxhDHxxymtDJ27TJvVLdpa69wUvEAYSeUVKgPi+TabGrY6PcqzNBOD2/G76Wu1l5XDQqP5YcqcJWz1mLp9hnaEP9zfl8NPN4sL6H36491i4NCJRqiMkgu5dkujgvNiS9Mju3pkECMnxrv0rH1GjKTQgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by LV2PR11MB5999.namprd11.prod.outlook.com (2603:10b6:408:17d::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Thu, 18 Jun
 2026 05:52:38 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%5]) with mapi id 15.21.0113.015; Thu, 18 Jun 2026
 05:52:36 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: ZhaoJinming <zhaojinming@uniontech.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S
 . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2 2/2] ice: dpll: fix memory leak
 in ice_dpll_init_info error paths
Thread-Index: AQHc7y2EtvfqYLp9M0GVXSZgGwU1kbZCW1cw
Date: Thu, 18 Jun 2026 05:52:36 +0000
Message-ID: <IA1PR11MB624179EC8A32873EB561BB8C8BE32@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260528171202.2659491-3-horms@kernel.org>
 <20260529053733.764996-1-zhaojinming@uniontech.com>
 <20260529053733.764996-3-zhaojinming@uniontech.com>
In-Reply-To: <20260529053733.764996-3-zhaojinming@uniontech.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|LV2PR11MB5999:EE_
x-ms-office365-filtering-correlation-id: c03a9a0b-cfdb-4a82-be28-08deccfdcc9c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|366016|376014|38070700021|18002099003|22082099003|921020|3023799007|4143699003|11063799006|5023799004|56012099006;
x-microsoft-antispam-message-info: ylcmqXKhsunRVrjHqsrqEF8Tsv5cH0ZkjfbzgkJB3y2NjOBke1vCtGJ8nwjkJMfTJgvMYrZhcwtgRzz10hLvcUYZnTa7RPi+OuwKTbw5JhMF5PTFQr7hN0RuLYHGLkmcMBolfcZ8TDqt5PlpdGnazE1BZxjVUnPsdinrE0W9W+Jh0Z1aOJAwpXp9ASX000obAxIlTZiQ0LZU2t46IF6zUSEKbmEurjy1RrOuZzqYaY5i8ak3a+4THeGeDGiGyZ0iTM/Ot+CK73YmVwz/Fby4doKwrTmS9AUmhZbX91Frq8XI6KLvROfh4IwDqljDHvAO8s5LgMZ9FeGvSxUtxXgY83YrNftjAHKKCyx4O8pVO4vye53LxwYhi7sVyickvDSPZxVRTCnZnlYcBpfKVrWqU6XFkMWhw0l86+OobvErvFEjVuJLZ3K4SdbhD50UiWMVEl5NWTJjReYcHtfnqAifKyS4j8mcRDiZPD7898K9ifcsVKSotMEPeU1Xgh2fhi5A1wcuH9ZFVxh+1/N8b/Pl5xwdlavkocpiWIS8uVF5FCk+Tl3MDrUMCB81oiNkV+QghOm2Td1OhOU/r8QXdvCmXkWbsLavedKqkMBXBgLC5KYyL91LOwXxIU5niceWaL0EiLvBp0qqy64Rva982Rqjpo0lgWkQFLnATqmsY201yhi+ShTv1nQXoPgCWR3FxP72LW40ED2YwzTwm3WpQTlkQGR/n7iRbYa59xWxaNMDYcLMMpHUA1cJkzhJu0+DyTj38LLPGua8xotyv0ZmDjaDHw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(366016)(376014)(38070700021)(18002099003)(22082099003)(921020)(3023799007)(4143699003)(11063799006)(5023799004)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mphQNntr46d1wMO9kZC6B0yaC4RwedsCL4GdUtToOTJ023FyFxaJfFEvKxjO?=
 =?us-ascii?Q?KB+Bz5E02NUNrRGwvIH3K7D+Chpqec5D1k+AQMvdSdYdKxXdqo8tPcis05IJ?=
 =?us-ascii?Q?k3V9WSNwjf6qGhT++5fK5azQF0v1a/z6tQvkRRqWza9aONq1vGh2UHwd0suR?=
 =?us-ascii?Q?vdWb5+i6cIYrZoUoejiw/CrGVU6uNZmFHimsS+tJccyHvuVOxmN9dxHffnkc?=
 =?us-ascii?Q?2YKxHjHPwu8fq6ZEFAoCGKYQb8epNgw3fQkul/bYUj2dgCCfqOi9ponjnNbt?=
 =?us-ascii?Q?TdEtTcJ38ermKfryhduoDBbAyNjg0nqF+k4HYkwOMKG6YjNFkQUUaGSmXKi3?=
 =?us-ascii?Q?i3TU12YrDUupJWb8YdZovY44PBu1S1PtOpxV6SPzSbGE/B79nGTvSE/YlPqM?=
 =?us-ascii?Q?6/fm6/7G++s1H5wmvRQEpXScSCcYwoTA4MU9Vpc831OP4uoyK68WIQBG4a7f?=
 =?us-ascii?Q?IHy6BHfwTAl4hPlVBTMkw4S1WnAosE3pthDODfnzsC0qKCFIfyFSUlkG52i2?=
 =?us-ascii?Q?XfECQulOocQr9kqrvczGL7UR+HFxfuYUSj2ermICq1oNVrDtpw36uBVNK02T?=
 =?us-ascii?Q?BbRYryBg3w+LZLfLXp4GmeOH9BHiheNG6+z565kAu2c2T3dcocU95kjJgw1p?=
 =?us-ascii?Q?A2xisv0z3OjmB3bcP3fUKlRIcIRW26N0d7W/EOWi2/haCm22qXYaX08aNH+4?=
 =?us-ascii?Q?xzVjqAvjCbjU79/KUAqbywRVqgZKrsFtSA9h0CN7nk2YDFl6wZbGstjHweO8?=
 =?us-ascii?Q?1d0nPdyynBn16Oh7ONQ4RUHcwT1nKRtpbcFd5xchDKSJs6GFT9E+R6zrwtfm?=
 =?us-ascii?Q?kN3guYwfjiAOnKQxcgFtTdCEuq10lCX1T41LYz6x4fCJGhejl+IqXoulphMM?=
 =?us-ascii?Q?XpseL31a3fMaCG/8YirD2vSJxMc+AAZ0CeiZipcswSKsifSh9AwxWLrjuHhm?=
 =?us-ascii?Q?3JdrydeIG6/e3xa8x5ExZQptg8JtHWiPlAS3nKdGtOmiAsd17q5BBYpllDRT?=
 =?us-ascii?Q?5+zHVApegU0lRusZCGvexMbhG5SOVHCKus/vjVCcpwtPxW0ms4kEZaxoPONr?=
 =?us-ascii?Q?dokm2yPXrnLICMcjsK5pzaDvFbHXLV1xviBLeQ1CRcnjtGjC+4xBELr774lO?=
 =?us-ascii?Q?iccJ3xac+apDrDCJhBnZtXXe5MOlAPsnMN75JPmVA9tKrL2dsIx42oUBQUrR?=
 =?us-ascii?Q?k6HsdJzNH2BZZuKFXiHNC4/4IY4WpLEMzgt/rh0VBSAKwUz/oLSKqTZY8umM?=
 =?us-ascii?Q?JHc/GVELhqLiqqJLHaKGpbz16zpD3Wt7Dd7iMLIUqTlws9pbHQ4Nb+JQf80Y?=
 =?us-ascii?Q?QIuGRO19cQX8Cxf1yRNCSDm4aUg2RHQO5u+imIhtwBj/unlVM4aMbWflbz/B?=
 =?us-ascii?Q?1igFbDCFkr67jHzhRNZ0B6bevaDwNRFmPAkP48SMrKv8ZAtD+nZf77VDq/Nt?=
 =?us-ascii?Q?uS52F8YIzykLdX8Tn61mmaxgZkt7NEJrfP5ZEQ5bDbt3cANhOjlH4DYTU9Fa?=
 =?us-ascii?Q?MQ8f2MVZoApQmX/hAumb08RBbRbUaAIWM33lcZUpzAXs86TKZzweNhQz5oXo?=
 =?us-ascii?Q?NIOLKQAVsXqgvp6/xKTITsfYpk+i2Ju20yr7bI9nOmq1wdoqjKdLL3JeZYXa?=
 =?us-ascii?Q?kpmaLC4D4JFnMlZc2NMPrMLy23PO2ivnG8Q0KSJgfZupfajthOXgDTCg9zQT?=
 =?us-ascii?Q?5oLtDXKuUUe3AvlGwN4mDU6+Uji/14+fSB3UkPganlVUyHyp?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: bV30wGYCayDHBsxoDuIcCboBJ+aN9sbuUwBJjO/8wqTDD0ViH7Jm6r+36jzW84cpVXX9yf1ECcQ6iKmipV7wxslC377mF0QTiYIN+dU5ykmmxSO3i+Y/9TXuIUJtnyTxNcdBI/u0uBfvvqNTNiNkrY24AiPf9XJXEc3VqbfRgZ4MOwIg/eztKwGL4Wd1TBdnUq1o9a9oWLnVdMveRMo5Tq1CPCKLqcY+w0oTUbQydfyJdX+Y0OQBO/G+xh96Y9uWYuWFwzHKBBHpJ4dH5bm/IyKdlbigpQFW+8828PhvSDrg1W9qYvM78Q3ZTxYx7fJSgdqJrgKaZOE2fFFhVMZfAw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c03a9a0b-cfdb-4a82-be28-08deccfdcc9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2026 05:52:36.4317 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8tIVuF5Cnh+7Zzip3710+dOcdWNIziXBEDslMxR//hZ8OdtdN3KUYmjcZsyPqgRpUNkc05tAorBuOq5whfwrXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5999
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781761971; x=1813297971;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4P9S+K4qMInHbtVgbHgEXGFnYxvUsXiel67oqt8l0yE=;
 b=ME7kxfXkeuJirOLHfMuNMvcao+/klFiv2roUa4HKz5uHmjDluN/Sy6wo
 Zkm8zyxu0GUt7GcW8HVoz6V1avQeMX1lUMjvq1a43T0S7bYwNBiyFnCmM
 Qv33JzZZ+eN3SARuTYRjEGh2gJi2MVNVcSu7Z06Z09U5hYxohzlFXFb0Y
 YfTY9Hcs++sv+OnCshjuc2l0Ve6nRVW0+i1sQPM3c1g5HpGM5H9JqpQqa
 YbNCD0aikANMvjUHDWq32MiFg7Kzji1qTEqkmWpjCsomAyiX4mvbIoVkr
 52LaCB5wSIJOaHTlu32ZfCU16/k+9aIESoWbluFqLwVwWRrAArN75DGNp
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ME7kxfXk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 2/2] ice: dpll: fix memory leak
 in ice_dpll_init_info error paths
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:zhaojinming@uniontech.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA1PR11MB6241.namprd11.prod.outlook.com:mid,davemloft.net:email,osuosl.org:dkim,osuosl.org:email,osuosl.org:from_smtp,intel.com:from_mime,intel.com:email,lunn.ch:email,uniontech.com:email,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D393469DC0C

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Z=
haoJinming
> Sent: 29 May 2026 11:08
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>; David S=
 . Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub =
Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-kerne=
l@vger.kernel.org; ZhaoJinming <zhaojinming@uniontech.com>
> Subject: [Intel-wired-lan] [PATCH net v2 2/2] ice: dpll: fix memory leak =
in ice_dpll_init_info error paths
>
> Several error return paths in ice_dpll_init_info() directly return withou=
t freeing previously allocated resources, causing memory leaks:
>
> - When de->input_prio allocation fails, d->inputs is leaked
> - When dp->input_prio allocation fails, d->inputs and de->input_prio
>  are leaked
> - When ice_get_cgu_rclk_pin_info() fails, all previously allocated
>  inputs/outputs/input_prio are leaked
> - When ice_dpll_init_pins_info(RCLK_INPUT) fails, same resources
>  are leaked
>
> Fix this by jumping to the deinit_info label which properly calls
> ice_dpll_deinit_info() to free all allocated resources.
>
> Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
> Signed-off-by: ZhaoJinming <zhaojinming@uniontech.com>
> ---
> drivers/net/ethernet/intel/ice/ice_dpll.c | 16 ++++++++++------
> 1 file changed, 10 insertions(+), 6 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
