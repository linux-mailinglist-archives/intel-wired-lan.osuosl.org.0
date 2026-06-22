Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DreiD0v4OGoikwcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 10:54:35 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BFC06ADF5E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2026 10:54:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=DzJJ9VT1;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 12A614EEB0;
	Mon, 22 Jun 2026 08:54:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mN456SLqQfwm; Mon, 22 Jun 2026 08:54:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09CC04F089
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782118471;
	bh=7rFN02wRnhFZ+vWnurkS0any+jsNOMSvrJCt7vKadaE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DzJJ9VT1VSenFU5F+rr8c0laJDtWoblw7y/vdK8j/NTjxUe2jBxMgqgnETEmNnm0w
	 IPYoTjWb8znoxA5X6mO0PzF7uCNOKDI6g5sAIxMEqdkE73BDfJRSMXlkNRXIiGIsqC
	 UdqTkw4KWongFCcBMuDwEM7Zm6LM7k89Olza0nT38bhf58VuKJR30D+02tZ8OkzXes
	 Vp/Kfoz38n2NkQQ11a6OwNwlOo3LxjwVq27Vn6OFA1DA0g7qhH8HMC9cAeqnpkdRrW
	 Dg6c168/ROhHH/NgkARSKNcGmItxxhOjVIX3kYqFUEsV6yLrV8be+9eDvO5VZKqM90
	 SnzKHJ6T00hpw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 09CC04F089;
	Mon, 22 Jun 2026 08:54:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6CE0A367
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 08:54:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5E2654EEB0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 08:54:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 70ACA52exPRd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2026 08:54:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5C8C94EDAB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C8C94EDAB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5C8C94EDAB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2026 08:54:28 +0000 (UTC)
X-CSE-ConnectionGUID: huzGwNG/TI2RCkpHJ4kE9Q==
X-CSE-MsgGUID: caQf2dtjS9Wh/iPm9E7J7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11824"; a="94233847"
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="94233847"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 01:54:27 -0700
X-CSE-ConnectionGUID: xqEdVHA7TfyoQV9Ie2Iyug==
X-CSE-MsgGUID: mFK9UNA1QB2uGKAI2ZACLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="244818181"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 01:54:28 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 01:54:27 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 22 Jun 2026 01:54:27 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.3) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 01:54:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CmhB43qb1HI/eVNaQj9OJ3C1NP9OBoeI5zFJuH66tHUcd2XOPfZE8yqGt7sTsvro7UeNnd2S9rNSdCMqe3k6N7tpDFPSARBih5A76rESSng3JLlhoYerCrblRx8LMsBNa8RpMu/UjG+FHcUB3cqP6jRcwaXeVHn6B7mimcnI7Gaj11xyO7USPEwSBp36gG+kUrma0IYvI5nuTH8WzPtnFt2/BAb59jvT2uKlK0PxjwxGBgO9P72hCEPkA2LaFqlmOiOlF1uysva8tEof2yzR0iBDgzsvwtGxRhjb2vJQxmhihM0GUlbm8Ncax3wqTN0cQLnvxFdTMYBKhpZ28ZPE1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7rFN02wRnhFZ+vWnurkS0any+jsNOMSvrJCt7vKadaE=;
 b=ECb+9qEHY2GtAA9/xl4OS3kUAk9DzB8JKfW6n0FJL1imgWEUGsUG9sj7B960Uyvm+Lq1dTZTaJf0Yq0iztceagi+jXLSLO/vRc66fKpCQ6/8BQVUL+ks1VpCMlv+q0NSJVqhTypDwVoMYPhXxqdOIwTx6c9QpWWD/hMlUUtki69s83f9X4GSUewhxcdZBj5QiKAnI4c7ZlNBbYuMP+Lrg4xfEBczxseXkiqWlB8HQYFee78yvSToWlbqHHrhHUt6+e8ixt5775MJhIf7j3Ca+j5XedxmLjpDG0ryb/G3TDQZwlvc5QnplFw1Au3HFI99azMZIAyNIULl0rL57IdH+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH0PR11MB7633.namprd11.prod.outlook.com (2603:10b6:510:26c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.21; Mon, 22 Jun
 2026 08:54:22 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0139.011; Mon, 22 Jun 2026
 08:54:22 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "kao, acelan" <acelan.kao@canonical.com>, "Ruinskiy, Dima"
 <dima.ruinskiy@intel.com>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH 1/2] igc: Wait for MAC passthrough
 after reset
Thread-Index: AQHc/vTUlEkOP48iDECS1E/JP5nT7bZD8VzggAAQD4CABdXAgIAAc8/Q
Date: Mon, 22 Jun 2026 08:54:22 +0000
Message-ID: <IA3PR11MB89866CE465F2548BC1B8C269E5EF2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260618073324.1843310-1-acelan.kao@canonical.com>
 <IA3PR11MB8986B77F49DF672178FEE4BCE5E32@IA3PR11MB8986.namprd11.prod.outlook.com>
 <c3030882-55c8-486f-8ff3-571d001b99a1@intel.com>
 <ajiHH-RaHUjgraMh@acelan-Precision-5480>
In-Reply-To: <ajiHH-RaHUjgraMh@acelan-Precision-5480>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH0PR11MB7633:EE_
x-ms-office365-filtering-correlation-id: 0baab390-d394-49d3-4ef9-08ded03bdaca
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|366016|376014|18002099003|22082099003|3023799007|56012099006|4143699003|5023799004|11063799006|38070700021|6133799003;
x-microsoft-antispam-message-info: l/RpGACpOUcJbaZU7arHy/hpbxmJNroXkeD2wuZF83aHWq+DX3oetue+TEb7iBOtwfvswpaMuTr2C9oiBt7eek58McKrirSBYT1iDiXvOB/Ef7oFhgFkIu/y0hc/iA56+SXsMJO0EjM24Gd7QTKfpEOmh7uwBcGx8jNH9YO6h4pUa7lwll2GnGyMDQstp3gKmWVKLE1m6KxqN1jRufuWsmLo+23o1sbqMmlFMBMVY6JR9Iml6gTPXzFqhuYnOrvcsqYqubaf+lF6voDSk8sUDL2S+o/CFcz25PpDvMF2qOf83tO/nhNJPI8WAxVhAdgqmjzh863ZvT0gM+zl0XPVsmOnDxUqcs0PBE5s5VPa/91uLzog5dv+cTZZVAe7w1AuS+LiKRqoKn76Rbm3XhP6FWcigMr09Kcrc/AQNrUisBbLxrQZBPrF+y5xfvhNOe0Q3bE0xadCc0lv3lqX/0YzjxpoWAxpUKANXnJmEMJ/1nMeP+kkiyMuNPBjr+1s8nJvp9GJlQJPRLlZuu8inOxcSB9lZjFAEjoL6wZY2hs+bplMw782E4wnChd9CSlTSfxpfr5uf4xC1jqRiQtiE5C8anUHViAYJVzo58BLhUayKHJiUIiNU7ALLXAOb+H0dDWiI3lr+5mdEzq+EjRCeX2mbP/7UgJNLyC9WCvlh+m3ZfVh2vPrmSr4hz7eWoZRFO7Tv3ovXvCtstkuQAvoRQcsoq2S7GbATBf60m5ANnNSs2E=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(366016)(376014)(18002099003)(22082099003)(3023799007)(56012099006)(4143699003)(5023799004)(11063799006)(38070700021)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?txUtiWIRg7TNoqY433EzhkENSga1LV0vhVXS4s7vXNE5MSsk2JFAtiYO0v9A?=
 =?us-ascii?Q?CPV9fEmniJwc9Wske6QZk+nEIIAWhJoiu9tv7w2/XYOO3BEeq4+IbyptzxVU?=
 =?us-ascii?Q?FnsNfYTqhQmGAeDrlwEGzV2CJpu5zkoOXYk6/j5zgifoAu9s02/IcD36508A?=
 =?us-ascii?Q?m4AFjnTAN2NOr7w8jmnS63vUe18RSyEnqmopXpOi8tZhi7UTXO/4qyFs2tgB?=
 =?us-ascii?Q?cKnuFsuk+iCqiMVk4zRUAL2nmN6swWo55HFR2rQcImVJwjAtZ35xiShobHgM?=
 =?us-ascii?Q?sOSTEdoH7BeEfzpk8wQsw3PPkpN7CdJvL8kw53mU+1V8ER6OSzZOAv6UuoQW?=
 =?us-ascii?Q?hVQkCN/MFmrHYSpEAL3ZWBEz9Vf80gmNuSYfglufJUsxGzVApsCym+QdDqBC?=
 =?us-ascii?Q?f45sAIt8LAMXy0f6ounmDU5YO1CYlV4krEd17AUF2Ri8FxxLe0Z2bcM+0Pmb?=
 =?us-ascii?Q?39SeI8xvYqGnAy8TVexGI2tx/9BVyL35aA/sPg6hUAt8WQlOtMGr9OZj1fER?=
 =?us-ascii?Q?hpZD1hm8RUtx99i6SUcVoZVT3KRG/OgN7TxeAOm99T7vfOvJzFAWjdoBE0hf?=
 =?us-ascii?Q?TDt013G1STHP05lXSyHIAGKMpbciPpppHQG8sERLzF0ijvkD/ouPOxUfN1lX?=
 =?us-ascii?Q?CF9SZ5UugwsHzJJmiYBguYs4l+iEUkXklYmzAOPZCiEmdHbnNEMha++H3HJL?=
 =?us-ascii?Q?mXmP9yrKl1kKtu5CAJkid1fzrjrJxCnQfH5Rk1ihlZvUj2p+urSNcXzqMUlt?=
 =?us-ascii?Q?DMbzTLisH8pT2gQBHWS61K0filUxoyXJe00DlZfWr6KQ9rQYDMqm/moxFRRd?=
 =?us-ascii?Q?QH8knfrtlCdGdbA2mE+Cs2FIapTJLZQmYMaoNaKNGc3pXmq8yQ9mxAMRSMQf?=
 =?us-ascii?Q?PxCY6zwT/Lv0DtBAJH1JVfIWQs9OcyJIIiAmq3okCfF1pgGxk9M6TrEauC+T?=
 =?us-ascii?Q?9nYfp838KmxOuFxGk5NByFuMe/FPhOOgt+RGOY6C49E3UjU8deYqtaVwKPtj?=
 =?us-ascii?Q?NFWy5lI4/8yFUkzaPF7vhy1QkcAyQLkqBzkdWYEKbAUpj5khViB8JvfberYo?=
 =?us-ascii?Q?GQXa5+AziuqsK1Xuho4f24uxvXIR2eOLsi/SIFNY9fs3fZeGP4WetAv5cmnW?=
 =?us-ascii?Q?/UOo8/GvUQ+c/W6XSKJH3xC5glXZj+GYKn7rpT5TddTbnyLKEEFWnRkasweB?=
 =?us-ascii?Q?hbTgRD/o48fL82cTMg36yHmuh4OfEW1jB2llGidydvIX+AM2ueC+i4DnCLS9?=
 =?us-ascii?Q?92DbpXE1YUrT3sPuw0EShhER6RPBftka/P3nTFtjexWvQ/WzkSuFSlODOFop?=
 =?us-ascii?Q?z2ORXSTa0Vv8TnpWayEqNMg/hOOGx1EstBYw+jZTM4kJeq4N1oB4f8OOivbc?=
 =?us-ascii?Q?apPM8pqyFRQOCWXhqDPv+zxjaacquTy2Ptc46yFzbyVeFiUOU5TjIGtAzx3p?=
 =?us-ascii?Q?+Jcjw04Nkfgz0oU2XvcD4UETFYNcuNDaRDn6MC8dzqvoiaRwun2U4aHsBQkT?=
 =?us-ascii?Q?sLUL8OJAMFARyXpkztx+N15VzKZyG6/2DU5QBPcVXirs02l1Xm3nYnh7Oyk3?=
 =?us-ascii?Q?DcNZsk2+cpyHbfKOkLnooDi87xFmiaIq5YFIgNej7byrDZhfwFgk+PnfkDYN?=
 =?us-ascii?Q?panlwjd6QVCcQYEWdQoogNyr8zZtG53KqUTbChX/MyLxIevHu2v+FjwkZEOl?=
 =?us-ascii?Q?V1/pnYfu3KQOwDnD1Lps4Vnh/UcaaWaND2uiUYvAIXHXEABmgaNgUENE88Km?=
 =?us-ascii?Q?CqejZSDMlGjZVslZwtM5s+APH0C+lcY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: YxJ8b7d6W2bq/9yQmqpHRuHmCYmGuxYIzKCsW0j8iyc09PJEwlsBqutXFAOJz648lu3sgVMC0XEEhpSGnR7b/5DKGti+5zIHBFSuYXqpXvonKgU8cai0lwRAAMVj1KJ/a5/xnlgdPgZyQlqmahacGyeGJr97mHcpEaDJPbvHJNmNgDzlqdjcKAZj78nPVq6Knj3MLysGY4PtQt6ijILQS2gCce/DPhsnLko+DymapWF4nOy+tkCJI88RD2v7QRMjBIt0hE8lsNwm1KPz8U+rsyWSS4YTRHTYSeKoQY+7Q2H+KBuyIOTxjDuKfOQt0o38Zh+9+DZB1TYNN9hcMg3Rhg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0baab390-d394-49d3-4ef9-08ded03bdaca
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2026 08:54:22.5466 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gx4VhP01lhUGt0sWkJj64pI0o1hlqqFAy+7RHVEsRIOTFTwHphsh57/KP9ACnE5dMoSc3AYZ5iIH1/9jXC8AAWi6YD6WC4dKEcGiP/L+vHk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7633
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782118468; x=1813654468;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n9XDInWe4Yi/gGyW3jZbJMvmeJBOeDt6gtOA8GidQdo=;
 b=BNAvXX+rNBTZxM0aPpGMsEd3L5ybKQesNt5RFRQhuCs2zwYe9vEn0E+O
 HBW4zpvYSHFZLMNcGulaQE0Fgu7DwqAQqglckhQSr/RoPr75D9FDitb1A
 pb9rq6IWvyduckj0Fbq57Q7EkH7zfenAy3jjl9p6Ahw8S9FswggLChaTj
 Bzf/GFH6ltmQT8tWArdssTioqBMlr3qqtiqpVdpmojJzRZxUxGMjEapla
 Jbas/ylbGAftpNoLQJrDtV4JIrNKWdyCbjHRZ1g9am8b1A3NPX/A+RTMK
 K4XLU/lNCkUxkUDMdBG0o6QjIJJNTsoxnQsGX6fV0D5wJYZ5qy+je1TT5
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BNAvXX+r
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/2] igc: Wait for MAC passthrough
 after reset
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:acelan.kao@canonical.com,m:dima.ruinskiy@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0BFC06ADF5E



> -----Original Message-----
> From: Chia-Lin Kao (AceLan) <acelan.kao@canonical.com>
> Sent: Monday, June 22, 2026 3:58 AM
> To: Ruinskiy, Dima <dima.ruinskiy@intel.com>
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: Re: [Intel-wired-lan] [PATCH 1/2] igc: Wait for MAC
> passthrough after reset
>=20
> On Thu, Jun 18, 2026 at 11:51:35AM +0300, Ruinskiy, Dima wrote:
> > On 18/06/2026 10:55, Loktionov, Aleksandr wrote:
> > >
> > >
> > > > -----Original Message-----
> > > > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On
> > > > Behalf Of Chia-Lin Kao (AceLan) via Intel-wired-lan
> > > > Sent: Thursday, June 18, 2026 9:33 AM
> > > > To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> > > > Przemyslaw <przemyslaw.kitszel@intel.com>
> > > > Cc: Andrew Lunn <andrew+netdev@lunn.ch>; David S. Miller
> > > > <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
> > > > Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;
> > > > intel- wired-lan@lists.osuosl.org; netdev@vger.kernel.org;
> linux-
> > > > kernel@vger.kernel.org
> > > > Subject: [Intel-wired-lan] [PATCH 1/2] igc: Wait for MAC
> > > > passthrough after reset
> > > >
> > > > Some systems support MAC passthrough for dock Ethernet
> controllers
> > > > by having firmware rewrite the receive address registers after
> the
> > > > controller reset completes.
> > > >
> > > > igc resets the controller before reading RAL0/RAH0, so that
> reset
> > > > can restore the controller native MAC address temporarily. If
> the
> > > > driver reads the registers immediately, it can race the firmware
> > > > rewrite and keep the native dock MAC instead of the host
> passthrough MAC.
> > > >
> > > > For LMVP devices, poll RAL0/RAH0 after reset and before reading
> > > > the MAC address. Stop once the address registers change to
> another
> > > > valid Ethernet address, allowing firmware a bounded window to
> > > > complete the passthrough update.
> > > >
> Hi Aleksandr and Dima,
>=20
> Let me answer your questions below.
>=20
> > > Good day, Chia-Lin
> > >
> > > It'd be great if you could share more details on how to reproduce
> the issue.
> > >
> > > What exact hardware setup is affected (dock model, NIC, system)?
> We've observed this issue for a long time, and encountered the issue
> on Lenovo's P15 Gen 2 (type 20YQ, 20YR) Laptops (ThinkPad) the first
> time at 2021 and added 600ms delay.
> Recently, we encountered the same issue on Dell, too, and then
> increased the delay to 1000ms.
> And now, the issue occurs again.
>=20
> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1942999
> https://lore.kernel.org/lkml/20210702045120.22855-2-
> aaron.ma@canonical.com/
> https://bugs.launchpad.net/ubuntu/+source/linux-oem-6.17/+bug/2143197
>=20
> > > Which firmware/BIOS version?
> It doesn't happen on a single firmware or BIOS, and not a single
> hardware or a single brand.
>=20
> > > How often does the race trigger?
> It may happen when re-plug the dock cable.
> With the mainline kernel, it's easy to reproduce the issue by re-
> plugging the dock cable.
>=20
> > > Do you have a way to reliably reproduce it?
> Yes, I can find some machines to reproduce the issue reliably.
>=20
> > >
> > > Also, what is the observed behavior vs. expected behavior? For
> > > example, which MAC address is seen and which one should be used?
> Here is the debugging logs, fc:4c:ea:ae:a1:e3 is the MAC address of
> the machine, and c4:d6:d3:83:75:d1 is the MAC of the dock.
>=20
> It gets the correct passthrough MAC address after bootup and the first
> re-plug at 40s, and fails to update the MAC address in time after
> couple of re-plugs.
>=20
> [    0.689873] igc 0000:70:00.0: MAC debug before reset_hw:
> RAL0=3D0xaeea4cfc RAH0=3D0x8000e3a1 RAR0=3Dfc:4c:ea:ae:a1:e3 valid=3D1
> [    0.755187] igc 0000:70:00.0: MAC debug after reset_hw:
> RAL0=3D0x83d3d6c4 RAH0=3D0x8000d175 RAR0=3Dc4:d6:d3:83:75:d1 valid=3D1
> [    0.755576] igc 0000:70:00.0: MAC debug:
> eth_platform_get_mac_address ret=3D-19, reading RAR0/NVM fallback
> [    0.755582] igc 0000:70:00.0: MAC debug: read_mac_addr ret=3D0
> addr=3Dfc:4c:ea:ae:a1:e3 perm_addr=3Dfc:4c:ea:ae:a1:e3
> [    4.687730] igc 0000:70:00.0: MAC debug firmware: fwnode=3D<none>
> props(mac=3D0 local=3D0 address=3D0) fwnode_ret=3D-19
> fwnode_mac=3D00:00:00:00:00:00 device_ret=3D-2
> device_mac=3D00:00:00:00:00:00 is_tbt=3D0 external=3D0 hotplug_bridge=3D0
> [    4.687739] igc 0000:70:00.0: MAC debug before reset_hw:
> RAL0=3D0xaeea4cfc RAH0=3D0x8000e3a1 RAR0=3Dfc:4c:ea:ae:a1:e3 valid=3D1
> [    4.748545] igc 0000:70:00.0: MAC debug after reset_hw:
> RAL0=3D0x83d3d6c4 RAH0=3D0x8000d175 RAR0=3Dc4:d6:d3:83:75:d1 valid=3D1
> [    4.748937] igc 0000:70:00.0: MAC debug:
> eth_platform_get_mac_address ret=3D-19, reading RAR0/NVM fallback
> [    4.748944] igc 0000:70:00.0: MAC debug: read_mac_addr ret=3D0
> addr=3Dfc:4c:ea:ae:a1:e3 perm_addr=3Dfc:4c:ea:ae:a1:e3
> [   40.892715] igc 0000:70:00.0: MAC debug firmware: fwnode=3D<none>
> props(mac=3D0 local=3D0 address=3D0) fwnode_ret=3D-19
> fwnode_mac=3D00:00:00:00:00:00 device_ret=3D-2
> device_mac=3D00:00:00:00:00:00 is_tbt=3D0 external=3D0 hotplug_bridge=3D0
> [   40.892724] igc 0000:70:00.0: MAC debug before reset_hw:
> RAL0=3D0x83d3d6c4 RAH0=3D0x8000d175 RAR0=3Dc4:d6:d3:83:75:d1 valid=3D1
> [   40.953524] igc 0000:70:00.0: MAC debug after reset_hw:
> RAL0=3D0x83d3d6c4 RAH0=3D0x8000d175 RAR0=3Dc4:d6:d3:83:75:d1 valid=3D1
> [   40.953933] igc 0000:70:00.0: MAC debug:
> eth_platform_get_mac_address ret=3D-19, reading RAR0/NVM fallback
> [   40.953941] igc 0000:70:00.0: MAC debug: read_mac_addr ret=3D0
> addr=3Dc4:d6:d3:83:75:d1 perm_addr=3Dc4:d6:d3:83:75:d1
> ...
> [  307.387282] igc 0000:70:00.0: MAC poll change at 700ms:
> RAL0=3D0xaeea4cfc RAH0=3D0x8000e3a1 RAR0=3Dfc:4c:ea:ae:a1:e3 valid=3D1
> prev=3Dc4:d6:d3:83:75:d1 [  328.826084] igc 0000:38:00.0: MAC poll
> change at 1000ms: RAL0=3D0xaeea4cfc RAH0=3D0x8000e3a1
> RAR0=3Dfc:4c:ea:ae:a1:e3 valid=3D1 prev=3Dc4:d6:d3:83:75:d1 [  429.070519=
]
> igc 0000:38:00.0: MAC poll change at 1100ms: RAL0=3D0xaeea4cfc
> RAH0=3D0x8000e3a1 RAR0=3Dfc:4c:ea:ae:a1:e3 valid=3D1 prev=3Dc4:d6:d3:83:7=
5:d1
> [  466.509571] igc 0000:70:00.0: MAC poll change at 1000ms:
> RAL0=3D0xaeea4cfc RAH0=3D0x8000e3a1 RAR0=3Dfc:4c:ea:ae:a1:e3 valid=3D1
> prev=3Dc4:d6:d3:83:75:d1
>=20

Please include the info into commit message, so users can grep error and fi=
nd the fix.
Exact bash commands for reproduction can also help administrators to decide=
 whether they need to patch their OS.

Thank you

...

