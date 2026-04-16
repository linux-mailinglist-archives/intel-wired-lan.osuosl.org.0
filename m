Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Ku6Bkf/4GkSoQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 17:24:55 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FFE410AC4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 17:24:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7FA356077C;
	Thu, 16 Apr 2026 15:24:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uWXKCQgHvep7; Thu, 16 Apr 2026 15:24:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA49D6077E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776353092;
	bh=fziFKi7A2NKNbblZ6JzNOupZuvanWBzzVHBvcXwrrMc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K46SyFH+Krnnr40xVGXjhk+kazxldh7LFl2amENl9H1OrPJ0vQVufe9/cHTqkbMHU
	 wJQKaD2sgH+YKU+buqcZaCg//Y2VkgFPi1c9LKHEYwh4BSUnVhPxObpza+7Qs+jcft
	 MUoquuq3L2oFmY4I1Tw84Hfm+vpsYaVekoQTLkJW7z64q4HK/5dltYE0BgZoutJUPx
	 r3yR4H0iWh1kFxbWeRwmZgfDRz6DpBHXJ2p7WNZhgZayza0/QPeLwqPfLvu9dM4hFs
	 jBvPmMxdJEp/0OoIwXkj1yXPwSnHfg3lALvpoQ6u8C++3rH6zLHET2XCzjBLzFNspK
	 cSifQrjfbGiOg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA49D6077E;
	Thu, 16 Apr 2026 15:24:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 82C76775
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 15:24:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6C2C0401A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 15:24:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kZKlJeOIyb7V for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2026 15:24:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org ADD3040121
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ADD3040121
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ADD3040121
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 15:24:49 +0000 (UTC)
X-CSE-ConnectionGUID: APGpoiQAQsinI3wBVJylpA==
X-CSE-MsgGUID: Gx6TlFqCQkaBfNX5BKug8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="77231454"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77231454"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 08:24:49 -0700
X-CSE-ConnectionGUID: 1tYs67IcRiKspki9X2vwTg==
X-CSE-MsgGUID: pe3qjCd7TziLVxQsKHOKWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="235729297"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 08:24:49 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 08:24:48 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 16 Apr 2026 08:24:48 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.55) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 08:24:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kBKTai4wIrMH+Hrq3b0fOlKMo+H5LUf9ZpkG+eeExnHeli0v+TKJOVd7k1Ws5HB6YSTT8pXlpZTjeQN72XGaNOSg1DvnbQfkNyGz4PCC/l5basqQgQv/0gkTlMdlg+bG9esU6YDHQkFfX3dZa1+htms/IQD+wVmk8CLH8BrPeLt8xCExSk0VnFeUBUlZn7QAABtEi58oCg3trpdxWkDb+rFoBI4twwjEO2IDLAl2ClJtfszoEnLANsFgvkbkch+C19VCgToNPTU4AsW+K3iM4pqNWiokwC9/5uPfmzRKhACaFrUS7sIduZEeuylCw7h8zjjfMIj/Z3HFWnoc9dhWoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fziFKi7A2NKNbblZ6JzNOupZuvanWBzzVHBvcXwrrMc=;
 b=bRs4SXiC38I547NUH7/8P5A9GehlzK+sCBkiRRFatPJJCnjoOE/Z+nDGYkcvlpll2YMn6KmjZ2pUlVfexbBR0sm8/K29EuxHoPoJJo+h9E6U5bHiWOEc1/q/CdR6qwJh5kkvh0F0wC7SePH50aGAm6vjH3yiTtFS71iL4ubnzXtsJ5vLj4nuXx69RqFEoE+hu/nAqy3Ev7wGc0GQTpTWqb3EarCa4qJYuGT9k4MvyOu2l1XbDyZGbAUMZF39rRivibGjaqVWq70vUUsQH5pozsSj5iAEpZ/TMQyxYAFxZHsSz7ScZUvBD9UN/Yx6SC3vGIwdbaxN7JaOzJp8t1ci/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by IA1PR11MB7318.namprd11.prod.outlook.com (2603:10b6:208:426::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.48; Thu, 16 Apr
 2026 15:24:35 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e%5]) with mapi id 15.20.9818.017; Thu, 16 Apr 2026
 15:24:35 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Hay, Joshua A"
 <joshua.a.hay@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 2/2] idpf: fix skb datapath
 queue based scheduling crashes and timeouts
Thread-Index: AQHcxhwtnTQn18/NY0OgLL+Y+AWyUbXUuAoAgA0ltBA=
Date: Thu, 16 Apr 2026 15:24:35 +0000
Message-ID: <SJ1PR11MB62974C8A1EBDD28A421F82F59B232@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20260406233236.3585504-1-joshua.a.hay@intel.com>
 <20260406233236.3585504-3-joshua.a.hay@intel.com>
 <IA3PR11MB8986B2581A07EC756D0D9186E55BA@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB8986B2581A07EC756D0D9186E55BA@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|IA1PR11MB7318:EE_
x-ms-office365-filtering-correlation-id: e09db44d-41cc-44c2-35de-08de9bcc4445
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: 5T8WLl/q3S4MG9oUwCwy5umMVoeDb9ADHwWz746RdDL2gLhib+e8BwnmFpoEXGtvr0Dad7iabAEz5uFvZKC/hmJgisRBJfJMPsX8MjaAGH3smizH3DTmxMVVcx9icPQy3iurUoEKHfKzfqXUd2LJ4C7HA/ynI4CKr/W+ggwNxEYyMMJlr3YU5zcemVtSCQKfO0Ovjk+oqIXTA7o/r/vFz0h7qYWGVesE2yJuBbP0olSQiEz++LPcUwKw40VjazEqVR7A7Ao2tWybzetlI51XlNxDAatf2hlB4s3zj0NYMD9Vm5S4bMohJmQ3gsWQDZBRy8iGNMcBeM9eavX5HuMtkmygDAskMrQ4EzKWQ7uj5wiMQzbJatVAZRgwvyq1J9ny3wgv+djNZNPMrrAkYXgcdv8thDPe7B9+b9Qfbfx08ZANPgi2v+BvHV7X38ZiV8rl1UixZ4pgSiT82wTpp5zUWJydc/gJS89FNTlZMdAypRzUTZIKzgD2bgFTHcrjtf7yshn1wF8QFLLDv+0CIDYsxWzSQYpCHA8eJ/We0GSYSEsI6pO2A7j71vVc2fZtfqGNnqfYxaypo5pN7339DVUZvtD6/exIgpxtTgUIatEuJ80QoCf3Ixc2hnkCeKBLM3RbqjHQ4LMDjAdaoQgyqgE2pzyBGw4OQjgTK7/qfskn4zBIbCR+K40HmLTDto20vDiPEVGqeEswr1SOE6jfuq0RIYq711dkD+efKvK++emTrmVkVsUmuFFMbJnV5sTyW47EsgwWHZuzQkFpZOee3BBQD1QsWKpRAUU8db6KZZpWDdA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tqjC96dDrbXlDYkJwv9FDes2HCS1FRgFJqGPYGoigGyqxs7QkLnK2w6pzrtu?=
 =?us-ascii?Q?no0SJHuiUD8GsHSW2D1NAuvWtmpWszkaiD35B+pAdvp29xzmchV0LQuPjOJQ?=
 =?us-ascii?Q?zv4UmipNOrJEmLgHZzcktX1IJd5uyMfK1vE1U40bQzVWGaaYf9+qwgNfEYXY?=
 =?us-ascii?Q?K3+5s5qk2ScL9lDR6rg2Zy8g6e5HztvSUQqyoFWoNkWRfv0G7pTVfShiAkBg?=
 =?us-ascii?Q?9GpQi9zXLR2o8lM3Re+i9UgjuW1LoZGu3TEvEqq2YWAFWRbdFur0d+leob/r?=
 =?us-ascii?Q?XHodFcnC0xNAWLT8v0ydC0vcqW2iUEL8FPCD8ZRiteINycPaHIwLKuqxtiqw?=
 =?us-ascii?Q?ZPRw0tBmUJKs60oroXYzbNS0fyD/Be2dxm4r4CgP4E6uPTBPI7FM2GrNukXJ?=
 =?us-ascii?Q?kT0NSgTRRE5g6dSIaoH6thwoASBxVMxdCaK0aLv7NcW0UmmEuNsPYqSjxFxj?=
 =?us-ascii?Q?rcCGVLk+mAaYG2WOPIN6JZRPDHrDOF8Y8ET2G7jrWn+ClgM1EwWfwKk26y0i?=
 =?us-ascii?Q?7qiyxtBGCJcX2E1chZDiBRiId9XUiNgO87jxg2bLpkCSNj/iN2evtlq1ZKPB?=
 =?us-ascii?Q?G+KyMwbplndeeEWy6uqlt+eQiiMxjbZ/QVkyPH5s78JBNV7SlBjKjDfnKGWo?=
 =?us-ascii?Q?JNGYEvIoHLSRuXuobvcsvfvcoW97L6/E9MnhlNAbignIRlRqitAffjRxBpBf?=
 =?us-ascii?Q?GRmx4z38hhEKOY/8VIWMzVdqWdo+k/vEEwmNLZr7VBLeMI/hX+LV1Lq0dyuL?=
 =?us-ascii?Q?iNtSTfRf16ZmCNaRs8L5drKovhRbIIG7bWjcARpF+FS1Xa6VWKZ+GNk3yFPp?=
 =?us-ascii?Q?2qWW0zrg8Pj/BmNvoRRu64VMG4usIeybEQBRByX1jbGBBCrg+jnc9dFmbhe7?=
 =?us-ascii?Q?8xB7CTlDanETVDdFZvmY/aCdxl3qYbmeYrGQuFaiN80uFr629VUElcIZ82+p?=
 =?us-ascii?Q?s/bjs0wH7OEj7kL0UVC5uPbaaEumAP0uutNY4MVydtrENvRN1W5r1pXzYPbl?=
 =?us-ascii?Q?G40fxwjrkExMRvNknKem4L70oeulTRJweseSZKggWRj/ZrdzlqCP17x2cPgh?=
 =?us-ascii?Q?AGjExbjpcQxLexJs7RJrE3JVDRHG3J9/84bzCSkda6v0a6aXN9Ua77qUN2u2?=
 =?us-ascii?Q?fnImWY64ozEZcV6BsC62N+Xyxzqrmfo/+9WExI4/C+t8cXb2GzAvw2AGUFU/?=
 =?us-ascii?Q?TaDpQQHHUcYUI4tW4c5YTjKZwwLRNMiu9GTkrU8gaF6Dwf15rcY1GHBkG7nD?=
 =?us-ascii?Q?yAFz1AF5oVATBaVZOPras157E22v5wwDvaNL79rP3cOU+IKxAYPraabyD+CR?=
 =?us-ascii?Q?W1ujAv1FnaskYFAZQuwym2M0bccusmMeK4Ustpjw2D2Oo4YqHykd3J44UEg5?=
 =?us-ascii?Q?PiJgjP6Au6RH9weB0zd86ovgSWAnISWzkRaTqTkFu2Ha3kVkNaq+KVwUKaPj?=
 =?us-ascii?Q?LieaC7b27OE+WcL4mAmwxEzaurcUNoR6Tp9+sV9UG4vBJ1bsuNztbSfztN5i?=
 =?us-ascii?Q?gzbhX6j/Mr8wmtBoF0OXLdp6eq1zbr2VJAn5lJQtrqDFt8PLCR7yG/6S0JT0?=
 =?us-ascii?Q?Obb/sOaGret+P9rFgNpHjgmlZ+kFE0gIc6XKKVMDhOFLF3tUb+nhSmSDIQ0t?=
 =?us-ascii?Q?wVKetowLioG2jZndfL5ZmuN+Nzim8kZrQdo9z5D4TrOVDZjxMUSlZLy08tlV?=
 =?us-ascii?Q?t57ixMonfG+nwHW4PwtsPP3+7N1vCV5MuazT/4w4C6gx61Aq?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: vcQzKb603Ui9DQ3I5PnzfBFkqw9HMnFq2o6tBsu9ZtpYqOqzfSyGWn9Z1mj0QjD0niYMpCXVATLz7f5+BOe4NCHvndwedeF/wjkgIq0j6R5ZM+B/a7JNZmgrScZCBN28fZnIdHTMDl3QAW7vCK9aVnG67uVpKXX3KjlPxlh7vBzuRB8yftkePBWLVNFzi9KP539PONHE8bFT1cJTVk1hmz+Zsoy8BYuYhPdkwXj7aq/RyeBNJh/Zl1KxFj/uu+2x3c82lckn+XhN7jj8v9AW0VepgHqRArr1jmu4e9UHd8jX4cTsk9cbn8vgnKqnPkFBd/e5cjbLm5qtUkI63W8YDQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e09db44d-41cc-44c2-35de-08de9bcc4445
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2026 15:24:35.4104 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B5MURcD22igrPEKV167uJiJ8UZsg0D9biblsK0JQacilSegn9p/55oa4qVcl8PnhB7R8EggkNDG06Xjy1rfVlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7318
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776353090; x=1807889090;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=T1E1sfj3QR0ZUsW7sOcLz3l0Bd/NcQ+Queee1xpBZO8=;
 b=Z83q4zx2FhSfihGiXNW7BavQ88szM9wyBt3E0xMaoj/Fmvj6aa/TRApm
 jncmg/0RVFPNiw7TKXrZdlcq88cRCizSgQwHRzSx9sFK/0BHElsnr0Qjs
 qKFfaQ3IXmuV5uQqpB4Ow0E47RiMTuWehvBL4u1yYXTePYDu651QuZWXC
 lfTCgadpc1Mkce233h7+SKe7CR+XIrP56kWQawI4SseW+A5zz6fZMHkbD
 gzGAIE+/bmEHEp6bVI3wFYCv8s0Tq1cWNkAqIZTa1xQcZv/aOW83NaXCk
 L3gXLl2cBfSU7CMdOsfvoftIS/NSmFBr4OIs8nvaTqZEfIoY14WQ+2a4S
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z83q4zx2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] idpf: fix skb datapath
 queue based scheduling crashes and timeouts
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:joshua.a.hay@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,SJ1PR11MB6297.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: E8FFE410AC4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Loktionov, Aleksandr
> Sent: Tuesday, April 7, 2026 11:37 PM
> To: Hay, Joshua A <joshua.a.hay@intel.com>; intel-wired-lan@lists.osuosl.=
org
> Cc: netdev@vger.kernel.org
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] idpf: fix skb datapath=
 queue
> based scheduling crashes and timeouts
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Joshua Hay
> > Sent: Tuesday, April 7, 2026 1:33 AM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: netdev@vger.kernel.org
> > Subject: [Intel-wired-lan] [PATCH iwl-net 2/2] idpf: fix skb datapath
> > queue based scheduling crashes and timeouts
> >
> > The splitq Tx resource checks were assuming that the queues were using
> > flow based scheduling and checking the refillqs for free buffers.
> > However, the Tx refillqs are not allocated when using queue based
> > scheduling resulting in a NULL ptr dereference. Adjust the Tx resource
> > checks to only check available descriptor resources when using queue
> > based scheduling. Because queue based scheduling does not have any
> > notion of descriptor only completions, there cannot be any packets in
> > flight, meaning there is no need to check for pending completions.
> >
> > The driver also only supported 8 byte completion descriptors in the
> > skb datapath previously. However, currently the FW only supports 4
> > byte completion descriptors when using queue based scheduling. This
> > meant we were skipping over completions, resulting in Tx timeouts.
> > Add support to process both 4 and 8 byte completion descriptors,
> > depending on the scheduling mode. Cache the next_to_clean completion
> > descriptor in the completion queue struct, and fetch this descriptor
> > before the start of each cleaning loop. Access the next descriptor in
> > the loop by calculating the index based on raw byte count.
> >
> > Fixes: 0c3f135e840d ("idpf: stop Tx if there are insufficient buffer
> > resources")
> > Fixes: 1c325aac10a8 ("idpf: configure resources for TX queues")
> > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> > ---
> >  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 49 +++++++++++++-------
> > -  drivers/net/ethernet/intel/idpf/idpf_txrx.h |  6 ++-
> >  2 files changed, 36 insertions(+), 19 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > index f6b3b15364ff..4fc0bb14c5b1 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > @@ -270,11 +270,9 @@ static int idpf_tx_desc_alloc(const struct
> > idpf_vport *vport,  static int idpf_compl_desc_alloc(const struct
> > idpf_vport *vport,
> >  				 struct idpf_compl_queue *complq)  {
>=20
> ...
>=20
> >
> >  /**
> >   * struct idpf_sw_queue
> > --
> > 2.39.2
>=20
>=20
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Tested-by: Samuel Salin <Samuel.salin@intel.com>
