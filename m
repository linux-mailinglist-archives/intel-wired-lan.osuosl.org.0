Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UHdrE/dDwmnvbAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 08:57:43 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D868304419
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 08:57:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2806381854;
	Tue, 24 Mar 2026 07:57:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A_KwCRJzLvrY; Tue, 24 Mar 2026 07:57:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 60B1081EA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774339060;
	bh=ffP6JMNdnn1lnYny6N1D5En/rhjQ7oGYgpf5JXTwrzM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QXM/bLSAs2sxsYgxkFhsRlRqX+wyTvznvpMPcfCrFUxTnvkdGn+kaLWkjV+lnk173
	 cd66L587ZoZ/uK6EfGq9m9OqigcajCyBbKYaInppZT9mYS4cdfOjaMpDZL68cAkHJW
	 58ucr1kExwZJgcMH4BT03ECfCD1T7W+hOOLU3/3LuJUYlL/ljkn6JIOWSPzYCH8sdV
	 QqJCSMxM5BeUpenQIS8wd5e3rnWCa19xxIxkQuVa8/u0MOyqOoUvR8Zam2onlhXkwh
	 P5vJH17V9fYvUauCPTjjqwUyjefVZP+YuTrkbP9Xd4BTPZafhaiFAyFNW08VHT2bil
	 jqH6KxrcUdP3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 60B1081EA0;
	Tue, 24 Mar 2026 07:57:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id F262B1D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 07:57:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D7F8940156
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 07:57:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z2h8jIariAw2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 07:57:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org ED7E140072
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED7E140072
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ED7E140072
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 07:57:37 +0000 (UTC)
X-CSE-ConnectionGUID: 1J4F8WXqQFmbmO52Letneg==
X-CSE-MsgGUID: Cusr2ILbRZiJIt6M6Q6XaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="85656079"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="85656079"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 00:57:37 -0700
X-CSE-ConnectionGUID: bQpn0XT7RyS8EoQuhVXUcQ==
X-CSE-MsgGUID: WcgJHS9eQjSMHQ/y5HBYAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="224251451"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 00:57:37 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 00:57:36 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 24 Mar 2026 00:57:36 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.63) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 00:57:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d/+yWa/FrYk/x82YsLAsKr756LxgpXWTEQSgHFlcj0sBidijHCJ3QpDUeNcChjr91Imnwm3pnQ75GXq7BSxiyG8qE6NPKjW9WpaJntONvBFKzj6vTTUy0KNS0i5l6B/eUsOaCZjAc3VbQFst8NvErFh97kZ5aCSNZFys5XSHj47jRywthd5cgOPWpKq47gxzA0FqFJkIOjjAtYxO4shQ4wKCcc0wr8fIDBZ4iQ0uPKRA4etVLVzo3hLCZ/9Z6PRl3OGYChxBA4PKbmqRVUWO3dk3i6fnPmvkDI6UJGzQF8IwKdoQh39p1e/5+if2D3R2gdMHqG7mcP+e7iWS2DQTkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ffP6JMNdnn1lnYny6N1D5En/rhjQ7oGYgpf5JXTwrzM=;
 b=lXc8eJs8Fp4wFIo7QMj17YHtEqll9syK/JPed7PQHGXyNrPAXnYh9OXIlvCB/1o0GOpZ5om2F6iz6GhTpthCyOHCNxijjTSCnGi9rfrouHJInnwWz2OVM4q+U0YAhk6wKpPS8bmO3eK98oEE7JK/U4sqSiS4XyFKUqBPljUL74UMYRD28YlPZf/0ck3lmkasGlrvGUaCkPcUGF3z3O62sOJ+SAfyI0avl3TT2fUW+2icXnLEIt486e0ZjdQqd4tE8KLz6K4PRzDnn8hH5oj+yADLTQHuAN5bC8d9F2diZ6dVEQ4mG1+5hwtXA+43oSF9E66OCJBafPKUI4Com2hBzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS4PPF2AD6B04BA.namprd11.prod.outlook.com (2603:10b6:f:fc02::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Tue, 24 Mar
 2026 07:57:29 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Tue, 24 Mar 2026
 07:57:29 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 09/14] idpf: make mbx_task
 queueing and cancelling more consistent
Thread-Index: AQHcuuxVqpDie9wo0UmOdY946VczmLW9Ucew
Date: Tue, 24 Mar 2026 07:57:29 +0000
Message-ID: <IA3PR11MB8986671C35567568235A2E63E548A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260323174052.5355-1-larysa.zaremba@intel.com>
 <20260323174052.5355-10-larysa.zaremba@intel.com>
In-Reply-To: <20260323174052.5355-10-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS4PPF2AD6B04BA:EE_
x-ms-office365-filtering-correlation-id: 1f1ecf89-3283-4565-1e8f-08de897aff03
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|7416014|366016|38070700021|18002099003|7053199007|56012099003|22082099003;
x-microsoft-antispam-message-info: 9wNPOKFcHNhSj+gjFYVTa5/s6BjVOYT6XVdcUIIS2tfnteBEbffULwv0KA+LmbUvTjflPxI/ykYVWjtXSocNlSiyoCzDL/67sw/5qTFAuL94OQRPZDBfaDLx/9kewgAdifr2ZrEYhwAhhQYeRe7ofOeuXvIaEyvDMW7U+AyBSP5ySjFjYSmQyH3BCW5AnYd//f8drNrJOuiOiYlBO0FpnNZQXwIa5LqpJhXh3UMkNqO+osxQKTRQ8gr2S2wCoiMxxysD/e8DOIP/tZkXKhRcf3nutcdei7x7TwrnctkdqhjkbCdluqVLfK4CczD/EVLYKRLWxYcRc7Wpn53m8qbLkDHk8QJrnXwfoI1setJWWBh1jl3W22w+Wpt3zXqGVA87u6IvDYerE/+D26y86P72vPveVpZNuKnOiWk/MXF8+2Hc1jgQ4lP4ATySrDvUuxOaTWjTGclUxgZ4U4uRXyTqi6h7G+MmIdkOroEXDowifJyYFahtNepYLPR35vvAAqmfDmTbq7WGEcB6cman2TXNY/MqwgZNdTKEEIKNmw5KdM+t7+qCwH2KvWLfFG+nJlneRdHZdG6ijzsBwQ/QzkdhO7IUSkgcDUkcSnV1UX+HJJl77uI9hlI8HjGljBVKDt37JmkDjFAPYsgQsxzxk6z3eCXt1E/k8LCTvNYhq7BUm2oWiFU+8xjkSn35Jtac/BmjGzzQxzx/UV5sgzs5c6BHBozqv9d+00kUM9upi43B5w9NpvNODc+ZfueVI1yi7DFnXO+45piigzVbL+ufhDaF0lnZQEKoy3Ezkol5VBx/RsE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(7416014)(366016)(38070700021)(18002099003)(7053199007)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SlliIRCCRYLbstJo7SO+z5GyueQ6IeRDSA0AI2nZyl5iOKmO1OaeZFgdEKA1?=
 =?us-ascii?Q?K8ffxa/Jrw5wYLYqVEgmkahu4l42VsgUck/M1XNcL6w2cix9NmdZd+31nknI?=
 =?us-ascii?Q?4nI+vJ6Q5C/w+AUPsPCUghkUsbh7TbTKqImH1riGBNL4/kRZ30NYDK420wGU?=
 =?us-ascii?Q?Hk3HDir64/qj3hcQ7N0fslpQyq+zOGPosWxHb/NsMi69CiXIxWG5+Ij/yhyS?=
 =?us-ascii?Q?1oHCXmdtS0JElnZ76OmldHgeSWGeudd+fwBDqw7bfCh2FlV1IMF5F3N/oBT4?=
 =?us-ascii?Q?GAy68LVn2shz9JhyIbxXbm97gDKiT+PHr8jakUm124sPQYl7yLFV3M81bsJL?=
 =?us-ascii?Q?lStKm31qUcHFgfrWY59qRZOiJgrh0dNjreNOTBgbRKph8tOWDt2PHQX1jO7A?=
 =?us-ascii?Q?ZVY8vLyXc6BerBc4XvVIw4RNF0caQFwhKRGQovs5v6YC+VVugDt90gRIbD/d?=
 =?us-ascii?Q?R5RxLik80HBAGsPWB6eRNkNMtYCwKXcMOMt/Zt3lKQ16urNcCdvwW3dlQIYe?=
 =?us-ascii?Q?Y8ooBGOKwKBvg1GQIKRpn1fXg/C38Qdf/qnpf6Y0WVDUj/UQWLkiLr23/bCB?=
 =?us-ascii?Q?e4Toopc09+vUixfN622EXI2WIwFjAmfcCoTwQYKP+Vd7kASd9ABOEAGE1gJQ?=
 =?us-ascii?Q?qVulvsVMOSln75/02hQsE+G068h889iz9GIevumbcfDEVxMZL+R7vqoWuSKj?=
 =?us-ascii?Q?HBfhK331Sh4IKv+U8GWL9lCwkMIf/LmfTKN0G6lPhVQ3MTcWZTgBYFMF2UsC?=
 =?us-ascii?Q?dGb/jTYTXVdLqb2+rkcYOey0mnaTurWj5W3Osr50enfmCRKIvV8yxZvUpqwF?=
 =?us-ascii?Q?crPQt5B1knQrIZC4HUw/8jBCcjFBChU9dbjyg5cCOV5QyCg3aey1lwoUFRC8?=
 =?us-ascii?Q?TxmE51nkTVkCUTaWQ4D0SKutoSAgK8TPaMXUKhOe63nuJkDi+0q12cGQIr7K?=
 =?us-ascii?Q?ZurvF3BItJP9x5VsRAigTgUgro3dmWx+zMMkeL7Q0u0dhJ6wZs7PMlr2RTJf?=
 =?us-ascii?Q?IfqWOVT9u2vJXKmPj5YwgNkX3ujP37JsV0y5VsD2o2Mt7kMUWXWiLD4ByY8g?=
 =?us-ascii?Q?VcCgIgvwwPKrkkgRpB4ibK8Hi/uAK085ig7vV5AN1972ATWVKT3RvHd839nu?=
 =?us-ascii?Q?e8N8Al/Z6JpNvX61+VRCsPk7aHljsc8V87rij1pxlnpq/7c/Fslv6OKVekr4?=
 =?us-ascii?Q?S0hxfKCYhx+ASTxNgBfyOc6bj2pb1AUs1C8TIB2ZUF7zqYbGwMJnhmQ5xt/r?=
 =?us-ascii?Q?ucE+lnK8+MIi/1U/aBp6mKSkOQVrZGWPh18OOJ2KpGiMKq81twvcoCDVuZqH?=
 =?us-ascii?Q?bO+gtOvH28BgsRsirhPH3pP8wEquzzuONRaHPXlO+hoWUwcekhF8kKgJh4Dz?=
 =?us-ascii?Q?W6emThnWtYYIN265TnhJSLohO1aTK8CgKulSeeH6i9qqN8XdweqQMSdjAtnQ?=
 =?us-ascii?Q?O6NJEq66OVaT/KMpzurbC0pveEXepLvPovFq3jepNcx4o36T1nfb7nlNMgRu?=
 =?us-ascii?Q?TWNtz2A43Ef9yu0GsgzXUPOGAraqIwMokkOHSUMtBdCT92HMrC9l6T/wIS/m?=
 =?us-ascii?Q?x/2S9qypjetGX/PjWHFLRtE3KOcreL78WW8QbXC1Qi606l7Ud72Bmgn97eIm?=
 =?us-ascii?Q?do2RnKcsafCDV3jQhXRaxmT7dEfm9/ggg8JJuO+LUUsmm41cktc1/hHQV9RI?=
 =?us-ascii?Q?uPDeFwhUgtOfLXUrtLdyK+4Ylgt3twkoEMCovmzwtLAMFLnt+bV/LAaXEoT0?=
 =?us-ascii?Q?iotF3OoGkqoUUvNcdlS+mUXPRCf3JZk=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: uUQlAXp0DbzZZladMsz97BiTkLnD7tXgpTGE8Eo5DoQdNDIpWV9jwZ+fnffXgTZN5Pmf4Sgb2LOHqxYv+GUFXnUP+Hym1yXElL47BXLgeg8mHCetjDK2WLGjZyu6WXcEaUC/7W+WXx36ImM8X++uyZ63PYGSCRL8L+hxj2aC57oIyKkqmDzBlG7lZamEpxkZc+kmSVWcD3cpyPHJbkIKyVipSmHr+HohFQOjZGe6xupae7lyaFQ/2qPvp8sZyJIMtaYDXg9PnGaNv1nOkiKabBhrRqwhDH6wBT8HtzYyWqiCwxCL/zrwGFE1JYISCd8fivcnyoBWt8Kk4ovPe2OfEA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f1ecf89-3283-4565-1e8f-08de897aff03
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2026 07:57:29.0165 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y3JmNIL6Ap8OWpW69i+v1kGbVUtAqnhsbuGyix4PUFkcFf4Ov1f+sh6VfLRYfYWTkyWSHSH1+E4PI4OREfKjIgyQwcJD9FK6APjseUeF3Pw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF2AD6B04BA
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774339058; x=1805875058;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OOi/ihQPSHdJwLpyGOi813LStFL39abVmU32qWOxOTE=;
 b=e3wzL9xkatWK1zsyMeC2LOzTwYGRN/qKzQyefxB6Odv7CrkeysTTGy7z
 jKWkA8zsPcKSbi07VxUKYF0bPN2bgEvKdn6imVA0/wh0Tzw9Hm2GWCK5r
 064g4XWAI+eXElTA6NUImvE/wfHBC0Ubo2wraqvfxQHgJNf4iLEGvKvDx
 27GOPApDS3MHXVeWKnB+IjtsmOrmtr5j0NQ794uRhC68e7JcM5s1VZz87
 8ZwqjA6AnRNz+kOiWyUMjBuThepoSBCpzOIchqMx0XgXJoVmz7n4LNZNH
 crutsH/qQf4Aj4HjVZGigzVgfzG0zXurxKci3D0syx5V4gFomYMAla93W
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e3wzL9xk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 09/14] idpf: make mbx_task
 queueing and cancelling more consistent
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:anjali.singhai@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 7D868304419
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Larysa Zaremba
> Sent: Monday, March 23, 2026 6:41 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> Sridhar <sridhar.samudrala@intel.com>; Singhai, Anjali
> <anjali.singhai@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> <jayaprakash.shanmugam@intel.com>; Jiri Pirko <jiri@resnulli.us>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan Corbet
> <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 09/14] idpf: make
> mbx_task queueing and cancelling more consistent
>=20
> As a consequence of refactoring idpf code to use libeth APIs,
> idpf_vc_xn_shutdown was merged with and replaced by
> idpf_deinit_dflt_mbx.
> This does not affect the Tx path, as it checked for a presence of an
> xn manager anyway. Rx processing is handled by the mbx_task that is
> not always cancelled before calling the new consolidated mailbox
> deinit function.
> Moreover, in the reset path idpf_intr_rel() reschedules it after the
> deinit is done. This leads to mbx_task referencing the freed mailbox
> and causing KASAN warnings.
>=20
> To remedy this, in the init path, do the first queueing of mbx_task in
> idpf_init_dflt_mbx(), in deinit and reset, always cancel the task in
> idpf_deinit_dflt_mbx() and in every flow first call
> idpf_mb_intr_rel_irq().
>=20
> Reviewed-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Tested-by: Samuel Salin <Samuel.salin@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf.h          | 1 +
>  drivers/net/ethernet/intel/idpf/idpf_lib.c      | 9 ++++-----
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 6 +++++-
>  3 files changed, 10 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h
> b/drivers/net/ethernet/intel/idpf/idpf.h
> index b06640925fb9..9606c0de018f 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf.h
> @@ -984,6 +984,7 @@ void idpf_vc_event_task(struct work_struct *work);
> void idpf_dev_ops_init(struct idpf_adapter *adapter);  void
> idpf_vf_dev_ops_init(struct idpf_adapter *adapter);  int
> idpf_intr_req(struct idpf_adapter *adapter);
> +void idpf_mb_intr_rel_irq(struct idpf_adapter *adapter);
>  void idpf_intr_rel(struct idpf_adapter *adapter);
>  u16 idpf_get_max_tx_hdr_size(struct idpf_adapter *adapter);  int
> idpf_initiate_soft_reset(struct idpf_vport *vport, diff --git
> a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> index 0d131bf0993e..7988836fbae0 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> @@ -68,9 +68,11 @@ static void idpf_deinit_vector_stack(struct
> idpf_adapter *adapter)
>   * This will also disable interrupt mode and queue up mailbox task.
> Mailbox
>   * task will reschedule itself if not in interrupt mode.
>   */
> -static void idpf_mb_intr_rel_irq(struct idpf_adapter *adapter)
> +void idpf_mb_intr_rel_irq(struct idpf_adapter *adapter)
>  {
> -	clear_bit(IDPF_MB_INTR_MODE, adapter->flags);
> +	if (!test_and_clear_bit(IDPF_MB_INTR_MODE, adapter->flags))
> +		return;
> +
>  	kfree(free_irq(adapter->msix_entries[0].vector, adapter));
>  	queue_delayed_work(adapter->mbx_wq, &adapter->mbx_task, 0);  }
> @@ -1938,14 +1940,11 @@ static void idpf_init_hard_reset(struct
> idpf_adapter *adapter)
>  		goto unlock_mutex;
>  	}
>=20
> -	queue_delayed_work(adapter->mbx_wq, &adapter->mbx_task, 0);
> -
>  	/* Initialize the state machine, also allocate memory and
> request
>  	 * resources
>  	 */
>  	err =3D idpf_vc_core_init(adapter);
>  	if (err) {
> -		cancel_delayed_work_sync(&adapter->mbx_task);
>  		idpf_deinit_dflt_mbx(adapter);
>  		goto unlock_mutex;
>  	}
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index 6d847aea00e4..38d119147ab6 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -2974,6 +2974,8 @@ int idpf_init_dflt_mbx(struct idpf_adapter
> *adapter)
>  	adapter->xnm =3D params.xnm;
>  	adapter->state =3D __IDPF_VER_CHECK;
>=20
> +	queue_delayed_work(adapter->mbx_wq, &adapter->mbx_task, 0);
> +
>  	return 0;
>  }
>=20
> @@ -2983,6 +2985,9 @@ int idpf_init_dflt_mbx(struct idpf_adapter
> *adapter)
>   */
>  void idpf_deinit_dflt_mbx(struct idpf_adapter *adapter)  {
> +	idpf_mb_intr_rel_irq(adapter);
> +	cancel_delayed_work_sync(&adapter->mbx_task);
> +
>  	if (adapter->arq && adapter->asq) {
>  		idpf_mb_clean(adapter, adapter->asq, true);
>  		libie_ctlq_xn_deinit(adapter->xnm, &adapter->ctlq_ctx);
> @@ -3237,7 +3242,6 @@ void idpf_vc_core_deinit(struct idpf_adapter
> *adapter)
>  		idpf_deinit_dflt_mbx(adapter);
>=20
>  	cancel_delayed_work_sync(&adapter->serv_task);
> -	cancel_delayed_work_sync(&adapter->mbx_task);
>=20
>  	idpf_vport_params_buf_rel(adapter);
>=20
> --
> 2.47.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
