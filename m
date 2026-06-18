Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JWaHMSqAM2rrCwYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 07:20:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD4069DACD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2026 07:20:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=QdUQWrpu;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 414F1412AE;
	Thu, 18 Jun 2026 05:20:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gkjyZOAlESOj; Thu, 18 Jun 2026 05:20:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A1D54130F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781760039;
	bh=Pb6KIsXutw2pjCBl2i6XBUyRunTRy/XtoXiZhmRL7YA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QdUQWrpuxcTE7kwNnfOcx7MhHUDyNewZzpEfztXLsiROvhAynPUzcQejR4c0sJzNP
	 eCgipWjf4qA+wne3L0nthEvbsp8PQO4MFo1vkr1u9EqzrE/jnvtFjpHQf4MdkyG3xi
	 307wG9bBOeAZ3p3engEqNhdKfu3gQri2n7iUzOQT62gZX1roncnszjIkyEhMSfoGOe
	 mHoFb6vwJO4p02M6/i8AXS+BWzG3DI7CRQtDDtBKhILs8MPStgttwVnKaj82IPGBwr
	 pUHbAWFz1cBBFbRQQTPBxWwoMaNvEjXSCPs1hfEqQXRTKy8Rqs9VNOqHM7DTThmwWy
	 DRGHN3s/fXDyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A1D54130F;
	Thu, 18 Jun 2026 05:20:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8C737131
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 05:20:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 72F2B6108A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 05:20:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eOZE4NZ0S713 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jun 2026 05:20:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 05D4861089
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05D4861089
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 05D4861089
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2026 05:20:34 +0000 (UTC)
X-CSE-ConnectionGUID: zK3LIUScR9WSLC+UJwa/Rg==
X-CSE-MsgGUID: iuMuysyGTKSONTVe9VmgEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11820"; a="100141794"
X-IronPort-AV: E=Sophos;i="6.24,210,1774335600"; d="scan'208";a="100141794"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 22:20:34 -0700
X-CSE-ConnectionGUID: TMX3HDjQSa2pCkMXQYiG2g==
X-CSE-MsgGUID: Mn2ruCSFQcqz+Fq9HIjeow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,210,1774335600"; d="scan'208";a="272348977"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 22:20:34 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 22:20:33 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 22:20:33 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.21) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 22:20:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w02NwVMcU1lVwEOKca/WsgdjtF7XsxZ1OpiVbUyqggWssw/l8Q91A7o2HkYvUcjOKwulrN7zmIeKrdF1fXrpLS6NVogaKgl/ugnKGuXH92IdlHsx80e9xiovwaO5bMKE139hOaBqQrbI8ghWM+A5eCOSeiHQXloynJDpZhM0R2xKrYql/3BsP7F+Yr5vvksaQ9ocOog4InDK1dlL8cezWnPzVfSxd/szZYEb1jIBv4t+RIy2WpRJ9KlX0ZH4MY+9iZikoOGEbBdNqkv8OZUU9P2x/CwW6lUj6iHSLIXEq76s/JAN2IdRcSrvtHTGToYroteebGgue/v+eu69QmdQ4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pb6KIsXutw2pjCBl2i6XBUyRunTRy/XtoXiZhmRL7YA=;
 b=p4D/LxRsuxOKCZUZt0sTOtEX5Hh4HcFqEWhQ1BXTRoLEwppxg7Hhl801Rmon0l6YWma4Nh4iO9cXM/nZR9kGouhXuv6oWMFLZl/GWWEOWrcfyjUN4/Umc2vYVdW+stTO+K6rQwUzATChGll4Ue2Nj82OST4gyuy2vJQB4xBJXbIguxEl63rWjNJhzwL6gXoFHSYVtQYVUPhCV7k4IhIKB5wmmuhPMtZAljn6CwHUuO53CQ+qXDNnznnuPNRw0FMKkaaTm9ZUaJ+WBc5Cj84Vtar90EvqzJY26uN19rtOG9fJiGyNB7fSmkmN5nhGipEAJt0cvG5Q7ucG4/17L56dAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ0PR11MB5791.namprd11.prod.outlook.com (2603:10b6:a03:423::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Thu, 18 Jun
 2026 05:20:23 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0139.011; Thu, 18 Jun 2026
 05:20:16 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Doruk Tan Ozturk <doruk@0sec.ai>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
CC: "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>, 
 "Drewek, Wojciech" <wojciech.drewek@intel.com>, "horms@kernel.org"
 <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: eswitch: fix
 use-after-free of metadata_dst in repr release
Thread-Index: AQHc/kD0W1TFWwCLSkO91tH6ke8pEbZDx7UQ
Date: Thu, 18 Jun 2026 05:20:16 +0000
Message-ID: <IA3PR11MB89869732344362C21C49895CE5E32@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260617100556.83620-1-doruk@0sec.ai>
In-Reply-To: <20260617100556.83620-1-doruk@0sec.ai>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ0PR11MB5791:EE_
x-ms-office365-filtering-correlation-id: a685dbe7-6c86-4f6a-a9f8-08deccf94883
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|23010399003|921020|56012099006|11063799006|38070700021|22082099003|18002099003;
x-microsoft-antispam-message-info: ukHn69yUxbrKAXUFTHkIjuY3d3Kk7eEAkUftw4Yupvg/p3ssKEC7JrAUjhG0e7SCKfKXOzA5FXAQGFA8VSUWTRG8bHU1VWVaBAYnM2ldEhd8gJyOm26O0wyTDjd7mT6KtUVC86k8rSi+gPYQ7QoL9Vekq75erRGTgG8jGcU8jgAveRG8Hz/4ToURilmm33o4FoXEivsZS5D52f7U54nWKzN6WLbNw2quGWkAZsKJwMPhVemvz+ZlP0FMnJVdrA3sTt7xmAQEMDL/XvQxmr04pv+Ql9HwWSd1xWUjh0f6eep9kg15bXKFcKvDNnYFxz3Ss//OO06uULrtU+c+1j8pGnyZ1jM5JQqYTVLR5CA+F78ktv5/x4BXKafOhmTAXWhdNVDgw3u6LKuPPmsYNLiUST/zzzUQd9fQY6T9HSsAsib9OoB1IEbqq5IVygEkb8ID7SU+a5El8ocb6SCVqb8mISGJ7GMkIk18kis4OaRpo71fWjQiVRI3s2c7LzoclWChKMVyL1Yw/8lo6ptGmqbKTXzHXMezXNU5y86pjx245Jk9sBGw4IxTTfV1Zs9As99rk8boyANsKcZ/66SuiwcHFkkLZoPKFJ0FAuNNDFTgXNui1ZUMMPEeXL26sX/X0pouMCeRoV/0Q+x5h2BN6beCbULYJvSrE4t8V8inqbFHrd6fXFh/PevHSQV9h2YZi2LB+prBIHppg4ODW2LDyxkJKoWopUpXTCHuMx5sVKnaYVwXq4b/NzybqEiZdbBE6pX5U5QX6L9d+V0l2usQJzEoiQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(23010399003)(921020)(56012099006)(11063799006)(38070700021)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RzaWOrfN4iBpoHwQ1lUSd1DuQI02Mnn1Hx7OqlQChwEwKRtEkEFoSv9vRQSt?=
 =?us-ascii?Q?aOJVnvihJoJ5WhnA7stxGUvWsoiW218HdK1POlOh2lUAbbGr6VDjl398VwU5?=
 =?us-ascii?Q?Sp7xIUKp1/BXix+hG7GAkt1Bkj5Y4VuvE9kt6QSxdPNS59n6n1QrFkN3PdUQ?=
 =?us-ascii?Q?M3LGfPGxMVEUrLwgo8XmVDZVhx6/dEoXT8ArMJbnJvr61QQl5zVTd+znDyS+?=
 =?us-ascii?Q?r6fIe7vk5BFbBkO7IXfjBSt++siS9W8MvuDv4mrnYHUtZpZwCuqXRkidBaVL?=
 =?us-ascii?Q?y9lzrkxc91UK/TpYnYl9yVRDbMBg4jB1MNM0kyHmUY3XkoO+yg3Cejc1JW1A?=
 =?us-ascii?Q?xqK78Tfiby6kEUBiHdrKCgKAL8pLi0e54iOs+uhpPBBLMUaPx7NCdLiVhOEK?=
 =?us-ascii?Q?UooIlp8ZBvU8oyGMYYIH5is9gH77x6JtdpmDChm4ldeS3EgjbwHze+mEsdri?=
 =?us-ascii?Q?dW7nYId2/ofxcFCRwU3ZebsczEEvvuAE3n6M8m3Cqr6ocAFpQhsQc3+1KcGu?=
 =?us-ascii?Q?OIkv5QczxwZFYYcMm1WHYTUwYK/2JPK+2A/MaDAS4geuRKyDU+VwkzV+XBCH?=
 =?us-ascii?Q?x0EYFrtyi/SHfcqpLMTPEhP27MhOeKLkz7ZUbq6WhgIaQTERK3C4zJ9ZYRqG?=
 =?us-ascii?Q?ipnO7vUQQqjpfGvHLhXbDWWRD90+42dolcdjb6QQwCJqMaeb0St3AhQR0Xp4?=
 =?us-ascii?Q?Idlk8pC+kNHJEPEoEUzTND+lL2Q0F0tr7WTWu1O6c0CuU6dPnjqQXtYR28dl?=
 =?us-ascii?Q?q9KxeFAShfjVfuILnDlbNouWU6D5AUevIJlX9E9JpdDcRVpSWknxiw7J0SbX?=
 =?us-ascii?Q?1MUQuWQbeK9P/1lyVH2D4qNXXkGq5Q1Uk3ZYzby1vyB+OB1BDkncJlyPmP42?=
 =?us-ascii?Q?inKwcE/6YgAgN9xaRp98ejm9bC3HMZeUaTEJWKExfvwOGsxt78PZyJIBV7fN?=
 =?us-ascii?Q?C2essvK2ACCNyzw/Ih5V48kbcgXwz59JtkK5VhNyLzps3vkPzYfw5IXDYzjB?=
 =?us-ascii?Q?NOXdg2vRKHgMawUwoL48Dh8Q3NfWKYHfMM8d1Kcnf+kHdmx+EAjMLL8tDFoq?=
 =?us-ascii?Q?gEKfwSfbY1ikrssucSf+WnUuIDYZ5w0T4dIfeLCOrRXUT/78ZcsuJgs6nO6P?=
 =?us-ascii?Q?43J86M+ecVknVXxK6wffziUm4PX7X78oZWCQlBS85kFeVNyo2ik3uXPS2qig?=
 =?us-ascii?Q?ZSjDEAbdPpytDGjBiRaQ0MPvzDWg9oi//ALT8uVnymYE+Fk4hvrusAWuGKw5?=
 =?us-ascii?Q?odl3eklEaq/jrjfK4qBMS538RxvdTVraPDkAxIfRGwxH5Ixe4+LQNRBzleF9?=
 =?us-ascii?Q?CuwzaHAKnIfRdVq4Khr0EKjkkVZqNbv18j+JxcQmjByMJ7zO1ANSm0hdBHhY?=
 =?us-ascii?Q?PnDvkJ9NZr7M2t/1UufgCepTDiUL4FbWi66ydOyP+ex3lRuJGeub/H/755/j?=
 =?us-ascii?Q?8n5gQP3rOk6m8dGYSVGXM0672ysoND0Qa8iNmNVzoMWX7lf5+UBb6a7lntPp?=
 =?us-ascii?Q?Mh8Pc53Yd6z3PTh+4Y7Pv6zDDZQTF3d3uP1aLd/my/8HvX9L+47jTSBv3oie?=
 =?us-ascii?Q?AjtyheZGOZ3Qis/WCzI3FcVPjMiexMoY2Pq0Gu2JrD+MLq2B+McHVW4mH9iy?=
 =?us-ascii?Q?O/pDbD4rAxpNyGf1uheYB8HxMp7pSv790n9dGtaMEbJfIbsjkZT7D/oTqNKf?=
 =?us-ascii?Q?ifu8s6halPoetF10msRucR8tuK+73cJhujbZJdfC2lrooPPxuFNwMGO+lv/r?=
 =?us-ascii?Q?OKPwz6KrkosseUnsdKi0NjtFl6nDzAs=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: p6FI1JMJ87W77wExRyWbVb5s7Dn2y/3UqY4t1FbjyijZhiPm4fWfivGms5//bnyMbEc9093m70p/BhUDFF/Mzqfjpk0Yshz+FP8HMg/XRJShLA2/4Tkb6W+Df7BFZ2HKbZEcWVaK39XZh4T++nF50qHw6N7tng+gdoo6csiOLGftJMrEcZRIMajEfJRqijQmoZ7bjNSLuWTjurEkWo9KqAxaEMP6j4Xb64s6JnjO19xG0w4+BymYPMZ+gjmHQpefQdJnd8n7LlLyauJ5U8DxNj12LL5iryG7Wjql7IYe8xjLlA72IpTHoESuDb/6cC+qhxez5XkRT0rRUOzxBVKYNg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a685dbe7-6c86-4f6a-a9f8-08deccf94883
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2026 05:20:16.8644 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NX1wS9qy5hfSpU/tqHvh45GqWsC0aQgJwHShSyjGm9kuXHuDtsKvoLcAU7nTZhQ1mYztOf1B6DzafB/3MLqanDuSKrDo+oWNQw7X+Nruoms=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5791
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781760035; x=1813296035;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=l3RwaX4xFzTu2DJ3Bs4tvI4tuuE6hlN1ICAmyJmzV8Q=;
 b=Yucv+yjBOsK/z9zpmXTmbN+9KdawlQ+EppTMrtDdSx6wtXwqzCDIEFEA
 ka5+PLbLzjzuuaxb/bil91sOdLFLgOihBc8ftwGM9DMwmlf5VvjgoXWB3
 4/cLhJ8PoTXxQpBBwQiCezHqjeybsi8imWeOFN7PsB9pT9VAJO/4Jb0BK
 t3PrbXK9Yl+fWreM3GUPfza2I0yot8MzFvEZjS9Td9sMK9lHHQG7ebnhG
 0B6zs6D7F0AdLSacSp1dKhRRdzCnGqAQFIlIBFKVEFcYJb2OXAppCt85x
 47MDJjdS0nUEBERY2SX0//jUi1W2eoV05e5XqOVcxHUW9FfMokJKJy+nx
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Yucv+yjB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: eswitch: fix
 use-after-free of metadata_dst in repr release
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:doruk@0sec.ai,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:michal.swiatkowski@linux.intel.com,m:wojciech.drewek@intel.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0FD4069DACD



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Doruk Tan Ozturk
> Sent: Wednesday, June 17, 2026 12:06 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com
> Cc: michal.swiatkowski@linux.intel.com; Drewek, Wojciech
> <wojciech.drewek@intel.com>; horms@kernel.org; intel-wired-
> lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; Doruk Tan Ozturk <doruk@0sec.ai>;
> stable@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH net v2] ice: eswitch: fix use-after-
> free of metadata_dst in repr release
>=20
> ice_eswitch_release_repr() frees the port representor metadata_dst via
> metadata_dst_free(), which directly kfree()s the object and ignores
> the dst_entry refcount. The eswitch slow-path TX routine
> ice_eswitch_port_start_xmit() takes a reference on this dst with
> dst_hold() and attaches it to the skb via skb_dst_set(). If such an
> skb is still in flight (e.g. queued in a qdisc) when the representor
> is torn down, the metadata_dst is freed while the skb still points at
> it. When the skb is later freed, dst_release() operates on already-
> freed memory.
>=20
> Replace metadata_dst_free() with dst_release() so the metadata_dst is
> freed only after the last reference is dropped. The dst subsystem
> frees metadata_dst objects from dst_destroy() once the refcount
> reaches zero (DST_METADATA is set by metadata_dst_alloc()).
>=20
> Same class of bug and fix as commit c32b26aaa2f9 ("netfilter:
> nft_tunnel: fix use-after-free on object destroy").
>=20
> Fixes: 1a1c40df2e80 ("ice: set and release switchdev environment")
> Cc: stable@vger.kernel.org
> Signed-off-by: Doruk Tan Ozturk <doruk@0sec.ai>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
>  v2:
>   - Correct the Fixes: tag to the commit that introduced the switchdev
>     teardown (Simon Horman); add his Reviewed-by. No functional
> change.
>  v1: https://lore.kernel.org/netdev/20260615140532.52676-1-
> doruk@0sec.ai/
>=20
>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> index 2e4f0969035f..41b30a7ca4a9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
> +++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
> @@ -95,7 +95,7 @@ ice_eswitch_release_repr(struct ice_pf *pf, struct
> ice_repr *repr)
>  		return;
>=20
>  	ice_vsi_update_security(vsi, ice_vsi_ctx_set_antispoof);
> -	metadata_dst_free(repr->dst);
> +	dst_release(&repr->dst->dst);
>  	repr->dst =3D NULL;
>  	ice_fltr_add_mac_and_broadcast(vsi, repr->parent_mac,
>  				       ICE_FWD_TO_VSI);
> --
> 2.43.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

