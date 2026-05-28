Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHwgF8QBGGrUYwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 10:50:12 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED6B5EEF25
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 10:50:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3283761ACD;
	Thu, 28 May 2026 08:50:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wmj-RU2QuW9y; Thu, 28 May 2026 08:50:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92D1661ABC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779958207;
	bh=74htAMagRD2c/wP7yIpohK4ANiAO/cHiKI/vctNTDPI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=X1tfL6H3q8f3dV5cr3+eRZcjpGrRNSKdXk1IDMquw7l37J8c/uynE/d8ConrKeEaP
	 yIH1eP0ZSkB4IXRA0qjjrGo1Fxguolqg3rsHQcaoxcb6VSTcAtgAF+e+UO8n6HTeio
	 jKr/kVTdWIUuhMD43C58uHZSYFxm8Lk7gcwWNKx78iCu0h4kaymre49IeFSheOuJfA
	 mq9OrdcboGq9X8SyaKdOK72mIS+IM9B0VCzxh12+ble0x18wyhTuPVsU8txaoan83h
	 iA3bA9cBfgOeUCqlH5E83nNBA8zt0c9HKJbyg6PPLDWTRvBVPGzQgxYZBuokzATgv8
	 4+lzk74617BKg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92D1661ABC;
	Thu, 28 May 2026 08:50:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 89C0E2E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 08:50:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7B8B0616BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 08:50:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hova4l7fDKIX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2026 08:50:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7970A60865
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7970A60865
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7970A60865
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 08:50:03 +0000 (UTC)
X-CSE-ConnectionGUID: fNpPDXR8Qt+s4nmT29ScBA==
X-CSE-MsgGUID: qxBCJL0pQF+Cgj5vRw3UfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="83375952"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="83375952"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 01:50:03 -0700
X-CSE-ConnectionGUID: xSxbObifRa6oR4RLz0ZuYw==
X-CSE-MsgGUID: BGTX040JTAGBOcI2aIg6Ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="239486070"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 01:50:03 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 01:50:02 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 28 May 2026 01:50:02 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.40) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 01:50:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BC+zqGDaB5GHJAO0PUP4WuS7jxAOk6oRSaRIEMlXDcLMSN6oJ783lSYWzHm+V+oV2VQcNxsovezAtZSYZLNrfSDkU7YbfXuNXnNaC9TOn9E7EBgCUf2rC8mItUo6Y1X6DscJ7SaARXlhyNJluNAijyx2d36Es7FbQQgeTSaXzcG0Z87gAEPWT2aF8y2J7OhExSpFS2G1pDltZvYYhuetfj/oyGvgK8o3zRvlno0+3XmVUQ0HczVHNPUGpHSXGY19/0PbkLhZMxv6r6kJ6jSUoYs7c5S91nkat6CxSqdOiJe2H2VXrXAZRxK20heR++sHhZTQrnECfKlWqUUMPye8qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=74htAMagRD2c/wP7yIpohK4ANiAO/cHiKI/vctNTDPI=;
 b=g47sPhBtvQjeA7vzgSVaMecbqQ1825KbbZ5nNJEtLX2kvURIFkxl1MbuYixiWTjllyWxZKFzqQs9jSw4jFUyj1YpriPlq6xz4t/lSkN9jP0muRJ69+vDcppC8NbZMWCVTxAha3HIzZffh+J9P63qrwanpaZ/CI0tBcpwFPMic9HOy6JswBt7Wm/KhPOpVdDUVpcC8E3yuLljgGZYemm+uKmvdAcLcdjBs73MxkP2qEdNm0e3aYnBA19eBSeGcdl1cvQ8lJkCF1r/eeMH5OAzhTspeH+NT2evYNylaCbpwXAPpt4c9WS9xa50PS7gkyEhZ73tNqlSQSDksdD+ihBBLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MW4PR11MB7104.namprd11.prod.outlook.com (2603:10b6:303:22e::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Thu, 28 May
 2026 08:49:52 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 08:49:52 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Dawei Feng <dawei.feng@seu.edu.cn>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>, "sln@onemain.com"
 <sln@onemain.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "jianhao.xu@seu.edu.cn"
 <jianhao.xu@seu.edu.cn>, "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Zilin Guan <zilin@seu.edu.cn>
Thread-Topic: [Intel-wired-lan] [PATCH net] i40e: fix netdev leak in
 i40e_vsi_setup() error paths
Thread-Index: AQHc7eyk//uII9Hh2U2lJ6QVe4TH+rYjIf5g
Date: Thu, 28 May 2026 08:49:52 +0000
Message-ID: <IA3PR11MB89860869ABD5A159C01A5634E5092@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260527110205.1780595-1-dawei.feng@seu.edu.cn>
In-Reply-To: <20260527110205.1780595-1-dawei.feng@seu.edu.cn>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MW4PR11MB7104:EE_
x-ms-office365-filtering-correlation-id: 06fda906-6442-4d94-ac4e-08debc961574
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|38070700021|11063799006|56012099006|18002099003|22082099003;
x-microsoft-antispam-message-info: SXhejM+liuqmrPwqxuiKc5mX/oL124oom/+8sMmTDSVOsICYUBFxCdaxgQmwZMY2rzavXhuDXMnkU7VkbP4Oruuo7Y/riGGy9zDL6GEwmWpEMLgD8CyO3++CTn9Il6dIUq2nmBGgydnnMefjXxLqWjb+iX1M/cfhyNmkU7Ysdh85wN4NAb84hq/PAI4jeqxS0xDAZ9QEHcFmxKaevCxdx/JLtiXH+6iLeCsIXZWB/hJpHKwv+2WW+d8HVePZcqLqG38wT9wbXgU/ZbeellIqpW4Ug4F9PnAxWHAlOln4HiYE0V6XgmelpXQDB6zff/niCVVCYN1K5HX3mV8lDGE/huvNrAgKb3ZhHvz95ddi+FVQyJPMx2iuAh+aMe7bLKynRfhw9yZcJCl6J8PSeRKNqY9115vR94mfiAw87ewGqiUbktqNIw4pPPcQDvVS7svCygZRmqqbFzW4b8SjqbIRAbamQtRmHgfQsyKHGj8VdUQQsbfCaiGmJhhxqFWlGsSDbwtnL0mR5t2zJ9G3mbAk8his+J3Srnr3Ta9QYnE35iBmgrAlyeF5u6oaBhYnc3Hn5b1G5TWSK/xCVTNAyQA3A1wWQbHywsKyH9yCitKwNvZIhdhulrC1CYfT0fK/n/1O517Rjnzm475rXH8fq57JiHklVz1pEDCG/hGjS/ZbpsamfwV6tQcROYLhWQO9tVT7NJwYRP5qgncQp5JM7SJnUzujKY39S/iGQgegVkWPldxQPHUwBbJl4JA9XCOi0WDo
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700021)(11063799006)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RMPdfcOG1Vc3s/Hx7eOnFwdYWX4cFEiXBEUSDTl6V4Dq1aPnf/zjKU9sydnF?=
 =?us-ascii?Q?6KRZesQ1XmFZWVwnnyavKfq8KJkWcSpMpVdT8WV0n6ZSajB2W7buyOCGx2mO?=
 =?us-ascii?Q?2t0bgEHK6aecO674zrfhglaWnmk0FACqaAr3Jy/OoouBhrT6GDxvqSX4ekEP?=
 =?us-ascii?Q?PPzHYqftY0YyX7yi6ty2a9XAnig9kmT1LD09mvLUzd8Nh5Rdfo6WF4wvEzFO?=
 =?us-ascii?Q?E8FEEJBfDIpKRs13OLecq8yrAO+Q0UZOkh64O8pRhyiHzYrw6AZCpjMvzm2U?=
 =?us-ascii?Q?/yvt5+o0TDGz27etyi+B9ET/48UKCv+dvsZCqRyp7NV+SxLYvp+OayFtK52+?=
 =?us-ascii?Q?vWkaH6wyMASADKsJSo822NJvF5FDGVw2sR3ezgigknSVLEDIJeQmksC2Qd+u?=
 =?us-ascii?Q?ACcLRNYviGvWNek7gnKwIayOQiUgm2PLvQFTJUsV9SEmi6qMGft6THoZLaXx?=
 =?us-ascii?Q?cOKAXn59zrWYmdUg9GlnO5X+2YLO426zHj+AoSYqk/SuAc50xj+auj4gBeF4?=
 =?us-ascii?Q?zN2Yl4bgKdmB3JU6tY0NOAW9KU04g5FQXhqjMygC5jZ9OUZyqca+X8/TEA4Y?=
 =?us-ascii?Q?0dvxm/ug5fpo7LplpQ4F6PWApAsWXAyXleWP9aG7UZoxTfjcu7XjzspYctcG?=
 =?us-ascii?Q?BsBY6Vitbz51bsxiLOMOPPhe48Arpqj3ns3zaNfpaE/GW58S2B2Z5n3EcsLb?=
 =?us-ascii?Q?89LAvS8bnR4N6mWxNAFUpToCaiXADhdC+j6mIFbAkTzLz2RzMBAOM9HtUowZ?=
 =?us-ascii?Q?ZyBIzQirFRQUx0qE4+XeLQxBDDVwyzIzL1BmRBSjhOH2Sm0heT7o927m9isL?=
 =?us-ascii?Q?9D8vna63/vv1EGtsG33fuFeQOKLZMnWTc+d6c7cd4TgAnzUy4ec99WdzJw7C?=
 =?us-ascii?Q?cdsTT5C36fPRXrhFDc9pN5/L9tqe0OR/FkXKwM76+wLHkiPfbbaLOuX1Je5c?=
 =?us-ascii?Q?j55S7DnryoxYGtLRzwv5yUSkgE7ww4gxxehDVDlyPukDN0/+SRneZVL0nbUy?=
 =?us-ascii?Q?NFmZTlqCea4rsgFwo7jOpXn0ii7KpauFwXIVnLRQLqt+PLEkD6PXk+mPXnox?=
 =?us-ascii?Q?03n8RWMkJf5XbsYP3onNtDWrKY9FyOJEI14abV4YUbLZzZ4MVcdG12oWrPgC?=
 =?us-ascii?Q?1xSLBWf81K6sSSkoFBD6wvGs5ocI2g+D4U1TuNrR4neJoO7E+56DIDydgsbP?=
 =?us-ascii?Q?gfazbpcciBidZxk3+gX5U3EUqCdqJtcG1CqpUKiB5Yj3PzHxf8UNDOgyrC/l?=
 =?us-ascii?Q?RfVUX+zOVm+QMdDkrHBJT/dja4HYGpZ+20fVRAg69P19+bfjDVLNjOCTj7zG?=
 =?us-ascii?Q?iPNaiK1Jq/0o5vkStnQI7V1B+65lWth2cVU3QtH7OOe0O6KE+oynHXyNAsaI?=
 =?us-ascii?Q?VYEeWyCm6Vc0RuK3tu/PCg4VPIOC7zZVi0nxQV09m7vGKfUEsvL+AhX8sXew?=
 =?us-ascii?Q?Et6p/4S6AQaikrv6pWKYxRgqFRPt7Iudy5dndwOercF39M9M9oJ37VjX9ZaB?=
 =?us-ascii?Q?gduDo24mH40dKnfx23y7cFwGRyDc/J5QHZGPeF5ycUj6HPXKvurcAokeaEjm?=
 =?us-ascii?Q?dH5q4vDtVQuLzx4YIz861lceOU2HzpgmY4OyJd6dLDAdfBLo8/Fqz4wT7MnQ?=
 =?us-ascii?Q?d0Q+q+ZIiF2A/8gP5kjXCL8TOkgv863tApv5B5Y94I7ALKHjMKwQbbMI+D8y?=
 =?us-ascii?Q?IN0wejoaoNNC5dQfLZ5fme/mEPGsIc8EIRKQ1kQTmfzmXVmXLLV5RResCDGa?=
 =?us-ascii?Q?OPPOtAGPsso1aWDZNEcMuOOyFum4DfU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: YWA/3zX58ouG/OVhVBZw0nwUA2PFGldWYWz01r8bFwBmJWvdLPO1wawtyB0TTWbllcEIAIMAtCzHs5yAiI0lCT0nD28hD9ydXJ2WfZJnPUJQHyvlA3VwmoUUQVqkBfE5yFTcPWxNDgVDQZMXTthaVphPtasvGJli3stpjmuMbKwwgVaXGbnCZR0DUeNm60T7jNEDPUKG777flCYLk3ZOjA+De2yQh5sHNOf5f7KUAsFplnMe8VKQTwqT78I4C/aHPJHoKYBQZrObe3IVnS66o9z/K++MiS1lrPkCgZEPgBG4A4SAplikhm/BNd6KugLH91+9wNVU7eesENeLNdCN8A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06fda906-6442-4d94-ac4e-08debc961574
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2026 08:49:52.4204 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xiUuso6XXoNdWkuOIxpUVfYmMVRUt1bDicwVtw4tZXnmzX/9vmXD3AaO4xRyxLmX7ZzjnE2vcLFvzEmjOKJeFQIJHSKCpjUF44fIAdMBcSI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7104
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779958205; x=1811494205;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Vr88t1NxZoKlwA39kOONvULUQMjF1omau5H6V6nsIx4=;
 b=SAI85UXB106BdMk/zWYv++vxQXjf0bxmHlhCi0WF0AcKE8iuE0MFhQsd
 bfvwKyWxFkl+BrbTotmZTtuGw6sOTJYhzHFZlRaWP7jO7UjUS9BxMv9uB
 XF+yy38W9wp/2GzMCkV7SPGyzt0td62xx8J4VMl7VWl+ILma2FfAs11pk
 pNOt2o2+h/c7ub2e6NduLJ7MOBJB4C4wOf//wP8Y9Oo/epIIm0+9B1ejr
 QccO/d72eIzngI75tT2tNtjzJ+OS3b1AaDkaAAR1N8w1o6Dgf5/Y59+AF
 8a5EdWw1WCHDCEUcv0s77bGRVz6BfX6u7bK6Vn+6Cumm/6GhMP5FdubjH
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SAI85UXB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: fix netdev leak in
 i40e_vsi_setup() error paths
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:dawei.feng@seu.edu.cn,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jesse.brandeburg@intel.com,m:sln@onemain.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jianhao.xu@seu.edu.cn,m:stable@vger.kernel.org,m:zilin@seu.edu.cn,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 2ED6B5EEF25
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Dawei Feng
> Sent: Wednesday, May 27, 2026 1:02 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> andrew+netdev@lunn.ch; davem@davemloft.net; edumazet@google.com;
> kuba@kernel.org; pabeni@redhat.com; jesse.brandeburg@intel.com;
> sln@onemain.com; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org;
> jianhao.xu@seu.edu.cn; Dawei Feng <dawei.feng@seu.edu.cn>;
> stable@vger.kernel.org; Zilin Guan <zilin@seu.edu.cn>
> Subject: [Intel-wired-lan] [PATCH net] i40e: fix netdev leak in
> i40e_vsi_setup() error paths
>=20
> i40e_config_netdev() allocates vsi->netdev for main and VMDQ VSIs. If
> i40e_netif_set_realnum_tx_rx_queues(), i40e_devlink_create_port(), or
> register_netdev() fails, i40e_vsi_setup() goes to err_netdev without
> releasing the netdev. The existing cleanup only frees the netdev after
> a successful register_netdev(), so these error paths leak the
> allocation.
>=20
> Reorder the error paths at err_netdev to ensure proper cleanup of the
> allocated device.
>=20
> The bug was first flagged by an experimental analysis tool we are
> developing for kernel memory-management bugs while analyzing v6.13-
> rc1. The tool is still under development and is not yet publicly
> available. Manual inspection confirms that the bug is still present in
> v7.1-rc5.
>=20
> An x86_64 allyesconfig build showed no new warnings. As we do not have
> an Intel Ethernet Controller XL710 family adapter to test with, no
> runtime testing was able to be performed.
>=20
> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Cc: stable@vger.kernel.org
>=20
> Signed-off-by: Zilin Guan <zilin@seu.edu.cn>
> Signed-off-by: Dawei Feng <dawei.feng@seu.edu.cn>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 6d4f9218dc68..1ced01b0cc09 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -14491,13 +14491,15 @@ struct i40e_vsi *i40e_vsi_setup(struct
> i40e_pf *pf, u8 type,
>  	if (vsi->netdev_registered) {
>  		vsi->netdev_registered =3D false;
>  		unregister_netdev(vsi->netdev);
> -		free_netdev(vsi->netdev);
> -		vsi->netdev =3D NULL;
>  	}
>  err_dl_port:
>  	if (vsi->type =3D=3D I40E_VSI_MAIN)
>  		i40e_devlink_destroy_port(pf);
>  err_netdev:
> +	if (vsi->netdev) {
> +		free_netdev(vsi->netdev);
> +		vsi->netdev =3D NULL;
> +	}
>  	i40e_aq_delete_element(&pf->hw, vsi->seid, NULL);
>  err_vsi:
>  	i40e_vsi_clear(vsi);
> --
> 2.34.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

