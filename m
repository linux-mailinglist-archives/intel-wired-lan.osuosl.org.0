Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 54034BA81EB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Sep 2025 08:28:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC358406F2;
	Mon, 29 Sep 2025 06:28:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xt4dunYnOAmL; Mon, 29 Sep 2025 06:28:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65CB2406ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759127307;
	bh=4EfzdaKPsaCggGq3fnQrO1MMi19KYz74LjgYouPWsgs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NHpUtOHUbWioHslESc0TGLwPZ7d4GtEf6I8BdmLIXaxbtWVf2FTSd0hCdfeCbgFw6
	 j7dctfQzQztWs80+VTml/g471CK1sseDaqOX296ZcaGIbK0fwgQTZ+AlfPqYuIfbFM
	 EQiTM2/HTeYhw2KPxE2ABu0GaiR3cDQGByQW1QYSJDOGlXT1Q4U9TBMTCCec8e8fr+
	 bzd6xvpWo4hT6xEIPVpK3PwDfYPwiJvpxuGvj4z/XHS0SPB9xSGxZOPT9CSOM6xzUE
	 JvLlEf5JPzWpAPz2yMdMd567mIdG+rwx1dZ0oSQOZcXnF8kq4X7F0+59yEDLT3ExBq
	 rdkyMy9amiqMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 65CB2406ED;
	Mon, 29 Sep 2025 06:28:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B9606194
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 06:28:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B62EA60A45
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 06:28:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U4i8MHSxhaPw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Sep 2025 06:28:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CA3036070D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA3036070D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CA3036070D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 06:28:24 +0000 (UTC)
X-CSE-ConnectionGUID: b0tewk04TQCXuOK+5bvk4A==
X-CSE-MsgGUID: yH8m2z8cSquzSIrdgEJ3dQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11567"; a="61251572"
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="61251572"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2025 23:28:22 -0700
X-CSE-ConnectionGUID: /JVvL+ShR52VU8MFoL12Hg==
X-CSE-MsgGUID: fICMH1XcT4mhmuuATWff7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="182140238"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2025 23:28:24 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 28 Sep 2025 23:28:23 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Sun, 28 Sep 2025 23:28:23 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.68)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 28 Sep 2025 23:28:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q8RN5u0M119Xx3w5cpxNkBtXtJ//tv0CRllK6tbCMC/frLtdHO6SF/zPnmmVmpxRiryTN3hmienbI/q/9NV/IOtoof3PS5BCqiTmnNPw3YzeCNJtrXY5N73CXHSyuCIa3ljNCvLYFKGAnN44CdWco9rkxvINvtljZ6tg7iCZg3+N8txzMZJJi5cg8lic5qZI/xz6rO2S3/tgrfxsk2oq7ysCgUXAdGes8coHz025pLVT0PEWnbEmEZAWq9isYUWSToetv4mgAfJyUi0qKT10UhgQPestpD/4jfdJri+dQWU3aHA601cABS0VxlOwd4KqsLkMNaqpbO10VA7jaAkkog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4EfzdaKPsaCggGq3fnQrO1MMi19KYz74LjgYouPWsgs=;
 b=B+Pbi3m4gKGqPHCz0yBCRqBYJjP2y30biV1FW7VdiHFvxqVZk6ZNDTyJs+13QtWhB5sa3yI1QmQZkgi6RHGbqr0MzaAqx/p0lVNHqaHnBlNF/gIGBwZIdMrUu/F8A51n4j5UANjSKvhf9TEWBNilM+u9nUqk5kVuCIK4JDZ9FfYslkC0gqAymXQZ+Roivc18ySfurwrAd28klSwprtZ/RLA8KXfSpoGyQ7kIpMQViqfjONCo/QJiIQQ4HFJKOcqMxuRkiIVu9pyaXAtDfLaY+4BfuSYiRwIbi26y+YGtHm4djbpvHR+nYWUqjyE4gLQBbFmvtL94jbi0ptgvmWe0vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CH3PR11MB8384.namprd11.prod.outlook.com (2603:10b6:610:176::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.19; Mon, 29 Sep
 2025 06:28:20 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9137.018; Mon, 29 Sep 2025
 06:28:20 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Alok Tiwari <alok.a.tiwari@oracle.com>, "Singh, Krishneil K"
 <krishneil.k.singh@intel.com>, "alan.brady@intel.com" <alan.brady@intel.com>, 
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "horms@kernel.org" <horms@kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] idpf: fix mismatched free function
 for dma_alloc_coherent
Thread-Index: AQHcLkad8vDkx9SiDkOx1dMjN5Xeg7Spt9oQ
Date: Mon, 29 Sep 2025 06:28:20 +0000
Message-ID: <IA3PR11MB89861412BAEF2275D26AA95DE51BA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250925180212.415093-1-alok.a.tiwari@oracle.com>
In-Reply-To: <20250925180212.415093-1-alok.a.tiwari@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CH3PR11MB8384:EE_
x-ms-office365-filtering-correlation-id: bcd0db0f-75e6-4875-39f6-08ddff21624f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|921020|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?xyjHcf7jajbBKKxJDq+Pm1vwFgyPElDdsp4jdXacjt7iIqJIBEK4IecGUQ8b?=
 =?us-ascii?Q?YUvx1jtPpISza5mcW7eUHM0XP3xmVdLXv9qugvCTRH3w7pFQ5JFzYHVVWlVx?=
 =?us-ascii?Q?NAmXUTikTAWWKKCL/XrroqNiYcEEqgwk20KIBQbxijNQGYS/TbW83/4g/g1a?=
 =?us-ascii?Q?mRyQZsGd5yPG5em0oVA6EYktPbnegXrK+5Kda2Qj7788ir0HxxxC1228Rzui?=
 =?us-ascii?Q?Kft7ZuwU3qkU7fu2gQOBd0gp3Jk4R6TKsEEGwE6nT70lSN6hYQJazmdLqNaV?=
 =?us-ascii?Q?AG5dPrM/iHkeVkXQi5e1aomK099lECaNTARlYOdN/xbt707r0HmZA4P4rxGt?=
 =?us-ascii?Q?2+hCcutd60SpI6Bo0kwQew0syZQBHT9i3N+LmlH722+3HbLITL4M8twN6wOA?=
 =?us-ascii?Q?cONnkAPnDueR+gU3IK1U4EcpbbhJhAjeLcR6HsmNumcbHYe7XwQpdCoNQfNW?=
 =?us-ascii?Q?OB2cR9/kHb+QbWvqKuy/F1nwYzRuRVyLwzYIsgObjVpRl1Ky4gETHlrKkx2J?=
 =?us-ascii?Q?NL80ayJg0KUdQIxVhadwG48Co4jFSZoY7YoGlltmLYPulN9AAv4/MUN6NO8A?=
 =?us-ascii?Q?v1MmQr+dWrMRHGMnXGkJNDA3H1IXUiSb5RNo26OWRRUjJ5Xy5u8dc648BTIF?=
 =?us-ascii?Q?wgdbvmRrDxlq44fGginLmrVG24bKxL9yP97ejcBcLnOPrD2XfPsTDwQA/jo8?=
 =?us-ascii?Q?IC71aRU4LToX1OaPyeDa4InCkR9Gbyvv5I2nab+EOOn1QaZilElmFIbrORsQ?=
 =?us-ascii?Q?ITDhydRgA6Z4yxLmWt9ubRzU5PXRljFum5pD3QVj8bL59NRdxbiVmGamPOpv?=
 =?us-ascii?Q?kzfBSi2OC47zgphwipGaFafk0eXvm7GzVlJj57FQYrJNphhCiu7P9T/QyZhU?=
 =?us-ascii?Q?gknN42IZEA9107JQdTwQWBQxz/TDP6/AqgLoXBzhsxDOFhVFRhZ3YWEnbvUN?=
 =?us-ascii?Q?TMusH0yEB2yUlH5HtP+1v8gcgDX9jP0SnbVWOK3+u+6Tx248jpxn/EfsQVDw?=
 =?us-ascii?Q?h6UJ7yUcKIIFsNYGL39yalCULaYgyIRucI/mpA5drQc+VyPOJwNRyNm9c9z/?=
 =?us-ascii?Q?N88NjK7CN6WUNFRJgi+9ek11xzhc72LKqKp5UB3sQlA4mOlDpE3wZQ4sCrAS?=
 =?us-ascii?Q?Mq1RlJrFgZw2ZGLIuEroJzp/ElS3xvMCZ27raPCxWex9aR14sQZJo4Tj5PrL?=
 =?us-ascii?Q?9+vtzeTtxzZlZSLZAy/6soSwebnS8GY6Rz2I3ZdIkq8OFL4PkyVXeunaj0eh?=
 =?us-ascii?Q?GFK6EusSviVW3J3dLph6jWfiuBn/ppFpN2LAyxPjwESg2+l3TkUxVbqlrtIN?=
 =?us-ascii?Q?RjfI5ibZ2I81HwnDDow1gxOu4ImoA4jV1Q3NAisBrxjmXFWE889f51a/2VfE?=
 =?us-ascii?Q?qu/vAMmLvm9vnJSMV1RorC6U+1pgg2MZkVbgB+/y2DmUIAfaPRQthVQxZ2go?=
 =?us-ascii?Q?tZatbEG8R1ONKNmuOlKxqcwgqAQJU2oZxEq9gPJRHY2E/peqE0BJpHp6TvNX?=
 =?us-ascii?Q?THn3A5g5AgCBqDpb+kxrhx5QB3pZ5hX6vnTi5uL6rUIUsgxCgM4RVrTZwA?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(921020)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cAoDx9hogLBXGgHT8SL49mglu7b633ezi3AbEXXczbgz5C2sR41nMfTg16it?=
 =?us-ascii?Q?FYaePIfwU8cMpRdbDhUEnz7YvPp5hztar0CCjetr37soXJI3Y1VxGkAw6CFd?=
 =?us-ascii?Q?63xTdGmhNQm7QNEXakh/Zm3UPI+e8yxFMPtF7++qNLtE+YaXxIs2CHNL4Wb5?=
 =?us-ascii?Q?0KW+ecdMoPN0VXL6YKOo6eH3zapdVhVfOgxnyBp4tUBTb7ZoySKSUf0mqoYl?=
 =?us-ascii?Q?89hmkqwv7M03M1KuuTWmTTYRLdkzGdMVAEByzh/IKjVIsH5zpjzFKz51JqWW?=
 =?us-ascii?Q?GxMdcq1ours+x0Hxgocf8clIwjM0OtwQJZroxgyJycUbWVQ778cfBHrPvEnZ?=
 =?us-ascii?Q?hpwVocttX6RZPfBYPtL1ohXe23RX0p1xcTqC4lxFZYk7DzYTIMHtjGXOoG3y?=
 =?us-ascii?Q?P333Zp8psuqvG/QcgGndBDqox/IHrujPdk0d8McH21nemW9lMUiW0wAF26jb?=
 =?us-ascii?Q?PN1Pso5N+s5OIRnPbWXx/v7FCE97nNSfxvcEHiiOyHo+bulHY7ciywQ4ugCy?=
 =?us-ascii?Q?OoU1ZRbKhdIf96lg/MtNyo9WcgV+HqRwl/Hon43n4FBr5uDoZlx3MLgFYdA/?=
 =?us-ascii?Q?GCe+O5d1jYTHBbOm4VeYASpG8A3WPcoIIx/t804NOzjUJz4bmVP/p5+6EFbU?=
 =?us-ascii?Q?LJbW/+bAh0vjqO/qPDllTeiuW7gkR72oGpgKDPyE0XTXhX+vsZMAm1rKUjZF?=
 =?us-ascii?Q?sflKd6LkwPuiMVnP6ADH+QM3m6VnyFfeQQmuCutg7qtEqppxj46lLIJOlI4V?=
 =?us-ascii?Q?5pOQxSXRph3ELH16gTkh5j7vPVdilK8HeaO8SMDOZw/S2E4QR2H41nTBkUqH?=
 =?us-ascii?Q?oOy8NjPZgmiucHCoWFhXOy15PIKQW0GdFQoLYl/z688vs83BLrTAQYvp3ocA?=
 =?us-ascii?Q?KPLExplnT4Z4w0kdjBB2BFlC8H6HeQ1OGcA8Yjr6lXZK/mqVhvuLWWm0ntx0?=
 =?us-ascii?Q?oJArQw/9mnCtIrmzSKWTVVvNbNd0tmFj7POnOImffjnveFHWXVjifrm2WONq?=
 =?us-ascii?Q?fFbRsGAsNUWk0UOVkFj2EhpLavN6ZHFpd+XF/7N/wRH8tqk5SM/W4fZ1a9ds?=
 =?us-ascii?Q?IhG/ZvPJh+Wh5efNkz4P/QC8uT8ckzs9lRHblgaBcxSNinW8HuZh1MOLnX94?=
 =?us-ascii?Q?1Yk0c/4gFcGNoi4loKsH/Uf2DtaPeglawSa4YK7+dWa0n/cNfeb4MDc5JR3z?=
 =?us-ascii?Q?5kyV5Rmj0Mg6o3eGCSEOJFGO2c9XvJMtx+adtloFsUQKx9rDkynIinas753+?=
 =?us-ascii?Q?o+fD2ncagkWDODuwp02Q/2qTGWTHJX7ANs0jwyaCUOuu4V8WLFhA/rLYCXa/?=
 =?us-ascii?Q?wmLHIJo8KGByqFRiuDu0RKdpnfglTrrDpPjUyw08LJXyQKHMTap5YIpD6BS1?=
 =?us-ascii?Q?1LcIDHfl1ZJfDy43ubjdI729E1ZE7J/iAYwEBokq8Dw3o/Cz7psStwZiLRGj?=
 =?us-ascii?Q?+ZO97VjzSLCwMO13qGRmyjanV2uBqVdOFb+/iqNDHCB5AUBM6G8amtfIFuYO?=
 =?us-ascii?Q?dq8J6M4iMzUEH2glskMPSGj6G25zJ4F2lL5FEPn4dSLV7aptlazDeaw7rjCB?=
 =?us-ascii?Q?/m7uxNdapN5vmgC48EpivnhmfTdictPMTjorqKYZOqJLQGUZmXxXWBrHfoyD?=
 =?us-ascii?Q?Aw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcd0db0f-75e6-4875-39f6-08ddff21624f
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2025 06:28:20.4279 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DEESMtkrakkexqT6+njP3U9y6E74lYiTlezhbQRNnrcCooKR6z3Ofb+5i9aUjQRzc9EAOJFz1t0PeQ7jEnJ4snVzn8nvS3HJ7diMZl8ZE9A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8384
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759127303; x=1790663303;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=cM5XB0uLLQwN5VvdEKusBkHP4HJEDTtMuCbZfr4Ta0E=;
 b=kZAhT9BsjzQH7WQAtUwAxJaU2OYMlAFZDH9/VcG1z5cRKwISXSuXDZgE
 3zLdHU98aTfvwGUhHR7PPapCmL3jsJQX9xmgsrw3EOAgqfcYvHmuXPxnB
 cECdCvDasvAeSBS6OOd0oyI1hZB7majZkgSOjC4bteGjyYPDamMWOJsgm
 nhXEeLyvFyRUfU5yifM5W09noslRXASlG6EiiPflJOM1CcJb7t2JHHNWz
 FmaGslhYA3tg/SlwNarFH3QEw/LlumhCUJWnhKgDVFdUB04FFXjlckTdw
 6LJCV7/jx3gZov1VUJLWiYPIYt3LOlMnqLqw90jI8u6esqsc83kzLavDU
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kZAhT9Bs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] idpf: fix mismatched free
 function for dma_alloc_coherent
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Alok Tiwari
> Sent: Thursday, September 25, 2025 8:02 PM
> To: Singh, Krishneil K <krishneil.k.singh@intel.com>;
> alan.brady@intel.com; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; andrew+netdev@lunn.ch; Nguyen, Anthony
> L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; davem@davemloft.net;
> edumazet@google.com; kuba@kernel.org; pabeni@redhat.com;
> horms@kernel.org; netdev@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org
> Cc: alok.a.tiwari@oracle.com
> Subject: [Intel-wired-lan] [PATCH net] idpf: fix mismatched free
> function for dma_alloc_coherent
>=20
> The mailbox receive path allocates coherent DMA memory with
> dma_alloc_coherent(), but frees it with dmam_free_coherent().
> This is incorrect since dmam_free_coherent() is only valid for buffers
> allocated with dmam_alloc_coherent().
>=20
> Fix the mismatch by using dma_free_coherent() instead of
> dmam_free_coherent
>=20
> Fixes: e54232da1238 ("idpf: refactor idpf_recv_mb_msg")
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index 6330d4a0ae07..c1f34381333d 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -702,9 +702,9 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter)
>  		/* If post failed clear the only buffer we supplied */
>  		if (post_err) {
>  			if (dma_mem)
> -				dmam_free_coherent(&adapter->pdev->dev,
> -						   dma_mem->size, dma_mem-
> >va,
> -						   dma_mem->pa);
> +				dma_free_coherent(&adapter->pdev->dev,
> +						  dma_mem->size, dma_mem->va,
> +						  dma_mem->pa);
>  			break;
>  		}
>=20
> --
> 2.50.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
