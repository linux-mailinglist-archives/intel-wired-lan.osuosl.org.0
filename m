Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B026D18F28
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 13:54:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 27D636F598;
	Tue, 13 Jan 2026 12:54:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w0MLi3t8X1v0; Tue, 13 Jan 2026 12:54:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56CCF6F59D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768308871;
	bh=kM9h/YteBxAVzT70ZH8jKv9zDLf0413WTpQAn/pzQGA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=u2qH+FrF3gP2ttcjsapt22NAeh1HpT3yNOeq/1IfHFyfM2m0yIahf81Kf0PIR09Uj
	 zk6isfc9SdMA60fm9fY8Mxjlpt1dGvTWOcurGdGRzRXd+20xER5Y1yee9hqXi+TEeG
	 NR3NViYvPgZb25GYiUY+XgYoXKreARNW3tWfC7k4d5GUZdywcykWMMtOS2dxpa49yF
	 WIo4fThng/u4SI3OFfbwXGTYsxScRLiMSd4jRkraD4yR8bcomOW4v0whGkgvhOxr70
	 gudoRi2lInGp80vrzKLPpwIyS04ik50tNzebYDWBnmdB/QMDwBcVCcwZ7VlI0usf5Y
	 XeHw/+bYMnXZw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56CCF6F59D;
	Tue, 13 Jan 2026 12:54:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8CA0F231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 12:54:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 720AF42A86
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 12:54:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mR9d9H3SV8d2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 12:54:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BA57742A83
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA57742A83
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BA57742A83
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 12:54:28 +0000 (UTC)
X-CSE-ConnectionGUID: 7J4Q7dXUThysIr2GedfJuA==
X-CSE-MsgGUID: tp5iiDW9Siqom4eroJ4QlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="69749656"
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="69749656"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 04:54:28 -0800
X-CSE-ConnectionGUID: m5keRF9oQXy3yXu6DnKD4A==
X-CSE-MsgGUID: OWc4y9tkR2iNrtZV2AEfQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="203587810"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 04:54:27 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 04:54:27 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 13 Jan 2026 04:54:27 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.1) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 04:54:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qvTFOjWIvjZLJ9a7yiZFpapT6BGNduVbFhyiVvuITCSvtB3lhFxwb7NRs81jMMwUjEpdMt9oIHJQdBPiPSPj89epmQXpG6t1AaTZmfCBZpdaXti+Xp1dsruucOAB73tAqL2R+Nl/ot903L77Oq62XyxSCG2eUC6bZ6wFXnILfAvefN7Ijjkpp62x8I070lZUIdPXbBo7YDnUE4KKl3AByTJWls+FjOXcjJ92z6Pg6PJvgefmMeI7hYDB8I1689A8lr5GXw6Ev6lItbUXvlrLEarvGqHrIzeHXQib7fe39AJwwjcaS67M3iE5vI9ajIYNNSwxBWWCkmjHBgkKA9S/Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kM9h/YteBxAVzT70ZH8jKv9zDLf0413WTpQAn/pzQGA=;
 b=cQehYURgl3U/HWkPvBljqAF4s4YMQcAMiIa7BggBP+siJaFpDrSHU/JpxjxWRklHQNc+Pe4F9541o7lFRMjxbt41yme/2d3zu7iteF07I3t0KJAC+ZFpMw6Gl96UlQW+B0qIihLUro5WfxGh7SL73zEqHnem5uPNCjcmykKE41l1t9uHJhAWNUjBim9LTe6zOJBwsIvHh9hr4Sqn3J93gQG6fZ4vx+5fjnCdJJc08Jz4eD6ruF7WJAUF+PEriyAUlOpAHm2rYX9Ke8ZjksF8LdrNuBwCyZ3N25jshVPc+eDDYRUobbOMmE1mS3hfgYybDylu4fOB1DUB8/kFCrm0uQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5902.namprd11.prod.outlook.com (2603:10b6:510:14d::19)
 by BL3PR11MB6481.namprd11.prod.outlook.com (2603:10b6:208:3bc::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Tue, 13 Jan
 2026 12:54:19 +0000
Received: from PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::4a8e:9ecf:87d:f4ca]) by PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::4a8e:9ecf:87d:f4ca%4]) with mapi id 15.20.9499.005; Tue, 13 Jan 2026
 12:54:17 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Andrew Lunn <andrew@lunn.ch>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [PATCH iwl-next v1 7/7] ixgbe: E610: add EEE support
Thread-Index: AQHcg85mGdPyN9rrUEKCvn5x6C7DdLVOsGEAgAFeHuA=
Date: Tue, 13 Jan 2026 12:54:17 +0000
Message-ID: <PH0PR11MB5902F35989E72643B7B1173AF08EA@PH0PR11MB5902.namprd11.prod.outlook.com>
References: <20260112140108.1173835-1-jedrzej.jagielski@intel.com>
 <20260112140108.1173835-8-jedrzej.jagielski@intel.com>
 <8ca1bd29-a736-40bf-8d53-39c9577228c0@lunn.ch>
In-Reply-To: <8ca1bd29-a736-40bf-8d53-39c9577228c0@lunn.ch>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5902:EE_|BL3PR11MB6481:EE_
x-ms-office365-filtering-correlation-id: 94312f66-6c8b-4718-740e-08de52a2dcde
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?/fqqjtdaQeg4IFwWJ+OGM4fWMnmjnYufeM8q+oStZOctVT+tSElyfrnEDblL?=
 =?us-ascii?Q?fyrdJI4lB5G3oK43wtO/IEAaJ3y0qZldx8ij9GjR5EZ5Ee5CtGr0li5w7+Ci?=
 =?us-ascii?Q?mrpd5MQ6bawYXQoGAt2/dtmrLcHbZMj8wfM/DRqFnHRBCZCwuD2arJTC6sx/?=
 =?us-ascii?Q?uB9qaMGJjH/yaVVXjLaCzzAIaTxCjvuF1gtjFWzQnCsdcg9lcx4vGSESHSB1?=
 =?us-ascii?Q?2N0uBTaWsobE7LPLBQz7pCl1aMuSjRUXOYSh34TeiuI1RFRHgJF8Pao4m4+r?=
 =?us-ascii?Q?951Q2EgK/FHKCjZCb3NsDMQfjRxJcc7HZyjG6SViY3LVdbNGt6fCEk9yhWCO?=
 =?us-ascii?Q?Jgg3/EZmh5V+UCmdmhEHbZcdfj25PaLqrUkXJRPI1t9yp+omTqpiWq9m0h7K?=
 =?us-ascii?Q?kRfM9oIQx+4vOb/ePzqilhN/863vvzV0uf3gqmftveVozafxqVmi+SgAMQBN?=
 =?us-ascii?Q?W61WPs8bKSkivnfdVjGRxdeDE9rAdBZxZ+3jTpBguwEvzxlAqjQHekzPFB5A?=
 =?us-ascii?Q?vaeF2FANvU/3Vxg3inz/U+QvzEO87fdgFxWO7ePjoiVSewSSkbWx5vQikDkS?=
 =?us-ascii?Q?+u+fqrg2qgc4INxsETMHvjaHq7vBcHH8S71S8doEFTS9KvZSBkcpTgGPIc8d?=
 =?us-ascii?Q?+jVh/g5fDkpL8yIwmz1srRuHrgbLTZ5jcjAPd/uT+n8R2kkB0a6yiATriVPF?=
 =?us-ascii?Q?c5QAyCrOPVxwRVaIYpPX6g5/8Jx1sxLl4zegNrxZKkb7g+vPoxQlnMWMebPO?=
 =?us-ascii?Q?/HoceisI3eVR0ZsAWP11tiXSr/4rDEXiIkQz2VhevVFrT7alRwV2rI5ebVQo?=
 =?us-ascii?Q?39Mh6abZWA7x+R9k9EQEzzG9wk8kLQGVYGDdUIk0uMzcGAnAa7/Dk2qh6224?=
 =?us-ascii?Q?NBNzSIKpdkdmxGhrGMdGK4oFhGS2WFjDA1aINO01nEkhjf2udHANT32SnfnG?=
 =?us-ascii?Q?q8T7Y49uICNjWLrjOVZvyhzuRg27ZLokopWjV/Pwq7dsX0oMdayLiJ7qPElx?=
 =?us-ascii?Q?pIjwm03DlF0Yv7hd48suNeGld6OFXxJZBMRo+LcPgXWAaNAEZRb/oz26ek94?=
 =?us-ascii?Q?PfJ9uO+7CrfcmXYUooLBRETKHNirFyS/OVkJTG7G4kKPy3uSO1om5fVrPeEk?=
 =?us-ascii?Q?54l6c8RXERm3fGptQm2EusJVM2iDKtdyyWuEOY1AtaIJZlq2eE3ykTW69B5P?=
 =?us-ascii?Q?fRd2eeCG88mQkYdvAlZAT38cSpo4mVJ/8L3CZlf/JbcVo32j3bGBF5nQoqLQ?=
 =?us-ascii?Q?vJaf37Zntxp2oomSV3tthjxFg7KnYRSU3KZUfDwlCl0KN0wYptJCxPlXtO4X?=
 =?us-ascii?Q?SFH+vI5PyDlWle/0SOUUtyAd2Z3y4yHxbyPZREVfPCqKoSMsucsiswqga2AX?=
 =?us-ascii?Q?qV7UHRFZLzvh/Zml8aIpufQe5KMOojbTy6VGTrYULhkdJ1Ahip+CCK9+fXpu?=
 =?us-ascii?Q?LQd5/gm2uBR4V6KkMtsfnCsQ7OAX1sPuvz9sLAdg2Wv96o2suWYOrU+8Ogj3?=
 =?us-ascii?Q?9OYReie8dP5Sk0mjvzSb9Ue+Y4E/R+L2QdWC?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5902.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Dfh+O5PIjitzTHBaQHq0a3m2dTg8Eq2RzIh7qjohjS2NpYAA7NEG5lrnxDkB?=
 =?us-ascii?Q?oYnTaPfmU6m6i/ipTCeiuBvroOY7FXLKY81K0e3OWqbJ1bhKX0sEoLhk7jxu?=
 =?us-ascii?Q?lMI3HjR9YCfdy5rZqL3Ku98VUNXmJ8N1Pj3PRG6dlQhjTb3rS/2vVXysq+mp?=
 =?us-ascii?Q?SX1IobD+W1WIF32OEl0hGP3sqWU3sT3ENtCL4mdz149q8K53hqmT8z4iDMZ9?=
 =?us-ascii?Q?zIiq0TSJkotSDlTCj3TvT7YUtAWdBkhnywDRvtn1rOccKbx2K4Kz4NxjcZ8f?=
 =?us-ascii?Q?WEOB4Z6RV4Yk8MrhlcKzZyl5yCqkkKNBXP4M9k0ca60w/0zRELhcK/iKPBvL?=
 =?us-ascii?Q?g9q+9D/G4XoX2/kdI6+HU/3sq+KU6TNoqakMZ2Lzl5tYQISPK4HwJ5GhKd3G?=
 =?us-ascii?Q?L5IhzvWnnXAy+C1PRLEgNTrWDr0MxseIGq1jm8111uBZ6NigiPsaaE1llZym?=
 =?us-ascii?Q?M2wEbx2M9tE5RuNp92KcBh0/tRfOjyF97xy70bXFHlBTmyz9c7iZvUwY3feA?=
 =?us-ascii?Q?z9I2IFqJqMJ5bHyLza4ELt8MowqSpY9zbSWD2qhQacig8Tgw84+3K9kEICSb?=
 =?us-ascii?Q?Vx9yufK0xPizZmxCiOTNlP5upo8r1jHLInpz3APAKF0lcL8NtASEdYY/6pO3?=
 =?us-ascii?Q?n0JOz7EikaP/dr5z0s+jtUOZZ0v5b42SlNKLRzEWszHF1sB95+6QHAwSmznV?=
 =?us-ascii?Q?5sxBFhq5WVAi3Ch1YSgRv66Hq1fYi1PSf/BuMtK4i5brqAryJtKgm6lkf2Ke?=
 =?us-ascii?Q?3ug9FRMITNH9Ew7kxMxi60u8vEY0Xi4KNgCHJgps17WFMhxV8UJH6yQ0OrjW?=
 =?us-ascii?Q?EY0wo1TKBM3KXQxODAY6lc/Il/SoTJb4M1r1MQvqQoNfNW/qTWJUFrSJlgxb?=
 =?us-ascii?Q?J8yePzPXd2shXXh14N+CzkZUV48kANUFYOWZeICPiI34ClIhAZ3mK/dWYY2p?=
 =?us-ascii?Q?NsH6XpHgHqD6xwYvns771kAUawfJY0V3+PXjR9e+r7pupqG6wnwGY5VHvwHF?=
 =?us-ascii?Q?VZQ8Dh/YQu/dcMCZOG8QWQfJpl8tZbStGW9oJ648/6/pxXvHx+EGrCi3gaov?=
 =?us-ascii?Q?5KrnBCmFQQbxhjlXs+oPmnnT6G6EfYTjoae8pUkX3F78juTGmWeSWyQFF64i?=
 =?us-ascii?Q?U7+C9CZqT6mY1Gy31nDuTfOoDxCUbPBQzHZjteQTP3E6E+X6QNLZ0oSRmjwE?=
 =?us-ascii?Q?Eay9d6G36UZvBzzar+DM0cUpTF7zwFiNmvNARSuJBcuiQjxFB8/m3w+c+f2a?=
 =?us-ascii?Q?p3w1SO916ZGh+75zxzUCDDSLQL6Ruwnh0P8YyruOzBR78ADMLgul/OvdkgVB?=
 =?us-ascii?Q?acplg9KIHOuAZnFtvXRIvxEKYHD/QMeQ9s5ij5J52rwdV64SnQtawV5DGyp6?=
 =?us-ascii?Q?oNzI3Dr8nUMH3/b8j8+WyocLurZapPdDa6lAbC0W2+UMbOCDro/shK/Qxfy/?=
 =?us-ascii?Q?qhvLTOfPHaXhb+P9d5E114XPdupOnLgrQXKeQce9xae06dsfdhujUTpTq9TR?=
 =?us-ascii?Q?XifrSKdrF9arjn6onMiPdhJpE+zK0y/Ho+kHznqt0bXTXV6tXgkf0fV8qYUq?=
 =?us-ascii?Q?kwMvw5OFPV7UNDAN6dgRUJvrR1u6DlrQTfn9IAQFkI+JsExjZfcPB5KhK7sy?=
 =?us-ascii?Q?7k0zxyJ8Axi5ryXe9MKEctWvbywZDkrapgCTzzJ9GmoHvN5HV4ZngHEx20yG?=
 =?us-ascii?Q?GajEDVjuRo3Lsnk/Cm2bAwDkduF74J6iuYTloCSCEosYgp5MjD0xk+LAF8nh?=
 =?us-ascii?Q?rKATr5lZBw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5902.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94312f66-6c8b-4718-740e-08de52a2dcde
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2026 12:54:17.6618 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Lqx13EwUidOXNDgBrBdnvPnmItPxGrWnpYQ7Q7dKephM0FLdEFni/tTM+30CgHgCdCvv+cADmdi9Empp3KlHAgq5Pt9Dk7kGotnC2HMehrE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6481
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768308868; x=1799844868;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bigKjLJzbkCRyDdCPRgUjwxB7IXnd5a7t0dCub5T6Pg=;
 b=WwStXEDi9SsDi97rT1dClmW1Hwd66A+2s3aJpD7IHK0+DGF8MUysz4av
 ctRYgX1AYjBy6TR/K5Ia1IIttD9dc3IZ+7LazxMw5cAnUi+3SgZyN7rqM
 oiBDZooQPC3uOdMeowne8nMjAWdwvo3oFx1RX7b7DZ9CxTTUPJpcCojBT
 nC5kE6cuLOXoHrppL8pZ9CS6SKvBelDdl4rJ7JDuFNY4+41ORlKfYDii+
 bHq14b3UKaaBdsmgToT8n/zJMtE2mA1YpR4bpinFHwXsLuA4RVVB+PRw0
 qBADfp4slWU+6oZu3vUVAJX32rEOY0TNZqZtqr9cohV8xVyAvy+zu5X6L
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WwStXEDi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 7/7] ixgbe: E610: add EEE
 support
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

From: Andrew Lunn <andrew@lunn.ch>=20
Sent: Monday, January 12, 2026 4:56 PM

>> +/**
>> + * ixgbe_setup_eee_e610 - Enable/disable EEE support
>> + * @hw: pointer to the HW structure
>> + * @enable_eee: boolean flag to enable EEE
>> + *
>> + * Enable/disable EEE based on @enable_eee.
>> + *
>> + * Return: the exit code of the operation.
>> + */
>> +int ixgbe_setup_eee_e610(struct ixgbe_hw *hw, bool enable_eee)
>> +{
>> +	struct ixgbe_aci_cmd_get_phy_caps_data phy_caps =3D {};
>> +	struct ixgbe_aci_cmd_set_phy_cfg_data phy_cfg =3D {};
>> +	u16 eee_cap =3D 0;
>> +	int err;
>> +
>> +	err =3D ixgbe_aci_get_phy_caps(hw, false,
>> +		IXGBE_ACI_REPORT_ACTIVE_CFG, &phy_caps);
>> +	if (err)
>> +		return err;
>> +
>> +	ixgbe_copy_phy_caps_to_cfg(&phy_caps, &phy_cfg);
>> +	phy_cfg.caps |=3D (IXGBE_ACI_PHY_ENA_LINK |
>> +			IXGBE_ACI_PHY_ENA_AUTO_LINK_UPDT);
>> +
>> +	if (enable_eee) {
>> +		if (hw->phy.eee_speeds_advertised & IXGBE_LINK_SPEED_100_FULL)
>> +			eee_cap |=3D IXGBE_ACI_PHY_EEE_EN_100BASE_TX;
>> +		if (hw->phy.eee_speeds_advertised & IXGBE_LINK_SPEED_1GB_FULL)
>> +			eee_cap |=3D IXGBE_ACI_PHY_EEE_EN_1000BASE_T;
>
>You say in a few different places that EEE is not supported for <=3D
>1G. So why have this? It should never happen.

You're right, it was implemented in more general manner, every possible bit
value was taken under consideration here.
I will reduce it under next revision.

>
>> +bool ixgbe_is_eee_link_speed_supported_e610(struct ixgbe_adapter *adapt=
er,
>> +					    bool print_msg)
>> +{
>> +	switch (adapter->link_speed) {
>> +	case IXGBE_LINK_SPEED_10GB_FULL:
>> +	case IXGBE_LINK_SPEED_2_5GB_FULL:
>> +	case IXGBE_LINK_SPEED_5GB_FULL:
>> +		return true;
>> +	case IXGBE_LINK_SPEED_10_FULL:
>
>I don't think IEEE defines EEE for 10Mbs. So this should be in your
>default case, where you handle 10_HALF, 100_HALF, 1G_HALF which also
>are not defined in 802.3.

Thanks for noting that, will be corrected.

>
>> +	case IXGBE_LINK_SPEED_100_FULL:
>> +	case IXGBE_LINK_SPEED_1GB_FULL:
>> +		if (print_msg)
>> +			e_dev_info("Energy Efficient Ethernet (EEE) feature is not supported=
 on link speeds equal to or below 1Gbps. EEE is supported on speeds above 1=
Gbps.\n");
>> +		fallthrough;
>> +	default:
>> +		return false;
>> +	}
>> +}
>
>	Andrew
>
Thanks for notes Andrew!

Jedrek
