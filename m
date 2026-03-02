Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cEsmFIQ4pWnt5wUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 08:13:08 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 251A81D3B1A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 08:13:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57A3041817;
	Mon,  2 Mar 2026 07:13:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QJ4SlurYCjfj; Mon,  2 Mar 2026 07:13:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9BAA4180D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772435584;
	bh=e/hk+1/UEyscLB6V9XSTwmEPejzXY1pHyLDmOsRttXk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hgVoTlXEyzgQRsupN/oG4t7vOozF2LP/rk+57Ar+WYM3tPt/2P9KcARzZhr+1HKLR
	 DzE0tZyWmgEpI4oMzPQyAL9Kt06BAbbgP9Goy4vqtkxZhIl6tE7JMT/HRXImwzKJR3
	 BeXS89nDFFlU/bnPxH6c7K57L90MguhPu5Dfxk3PnHg6F4nn3+y4llKlPdiOFhvB4t
	 /SDlbsdAZtZWR2jBgwrs3BuqicV+gnZxKu86TFYERxOvZc7sh0LDO00HutmyxNsdPJ
	 7HBya8tMr807SH9FFXgDzdKRebhPZ917UwFLjMht+oxVw3KD6JZ90tL+MQkd1nqnsC
	 gouT3mrF60O5Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9BAA4180D;
	Mon,  2 Mar 2026 07:13:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id F39E41EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 07:13:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D904B4068B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 07:13:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C0KLJiNwFO2A for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2026 07:13:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D7C6D40059
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D7C6D40059
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D7C6D40059
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 07:13:01 +0000 (UTC)
X-CSE-ConnectionGUID: +Ow1wazSS8CQvNy8LJaGDg==
X-CSE-MsgGUID: 6Qde3N91Qge4F8juzYiomQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="84901760"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="84901760"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2026 23:13:01 -0800
X-CSE-ConnectionGUID: xlOZPcILQk6BvbRa0uf3Cw==
X-CSE-MsgGUID: lcEJF/+qR+etY5KutiA7cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="217466048"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2026 23:13:01 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 1 Mar 2026 23:13:00 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 1 Mar 2026 23:13:00 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.56) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 1 Mar 2026 23:12:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RjC7f7xI4J+JZ2ds7TTR6NXZTrHDSuJqNjVMrTjTIrXHASv5EoNUWWW3icwKZHlq/ByZhUaZnTevXqRuQik6StEJfn90PA/oZ9XmrcnhqNLX3h11tD655XycFJ6zWOd9Osv20oKIA/SrV3zsRTNVV/PdyDc7znCLllT03hNHWrAD8bqBrWCiu6bKDXtjiiY5i8uwxNJnxHrI7kccomb4YYRl7vEXMz+Uv0g4E5jgJSMRe/QiLuYAxzz/rr/egwKaiQkXKLfTVHoqgQYmixUwwTOrOXN4HqoYxvuCj/XJQpYIEqbDDYcks28YxKfe06/5Rizf3afhqs20i0FXMT6zAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e/hk+1/UEyscLB6V9XSTwmEPejzXY1pHyLDmOsRttXk=;
 b=u/c/d00t19JG8vkaByH3IM97jFkYvSxUxXRMYg/bFNl+n5nu7KC2pIn6wyYiWJs/8ZdGaIOVKYIHmasIFHUkDlOUSo7eUXvZSBLMD3U9ZYlugrZVtS52yDKC7y8gqxM0pH9PHtKHqfGkIOZisOoZyjwcO2LoXutJulTjNptPJksCU3xsqvlhKz++QxB0Br6h7vDyKRsVjhtXN41bLKg+l3/eYz1oN67JZuH+G7IWAIlrsMFYdpeNDaGp88pdSkih3rO9aULOCv0FihztOAlRi3WniYx1S00acXPEBsgt7Cxu6HUOQwPAxrvct07nzHw9IbwNxj5ATRd+QEo2HCRBsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by LV3PR11MB8532.namprd11.prod.outlook.com (2603:10b6:408:1ae::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.20; Mon, 2 Mar
 2026 07:12:57 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9632.010; Mon, 2 Mar 2026
 07:12:57 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Yury Norov <ynorov@nvidia.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>,
 =?iso-8859-1?Q?Thomas_Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Andrew Morton
 <akpm@linux-foundation.org>, David Airlie <airlied@gmail.com>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Brost, Matthew"
 <matthew.brost@intel.com>, Paolo Abeni <pabeni@redhat.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, Simona Vetter <simona@ffwll.ch>, Yury Norov
 <yury.norov@gmail.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: Simon Horman <horms@kernel.org>, David Laight
 <david.laight.linux@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH v2 1/4] bitmap: introduce
 bitmap_weighted_xor()
Thread-Index: AQHcqeGjiZIWvUSrC0OPU3+3UYuL9rWa1CBQ
Date: Mon, 2 Mar 2026 07:12:57 +0000
Message-ID: <IA3PR11MB89860CAC89B9A811650A0F16E57EA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260302011159.61778-1-ynorov@nvidia.com>
 <20260302011159.61778-2-ynorov@nvidia.com>
In-Reply-To: <20260302011159.61778-2-ynorov@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|LV3PR11MB8532:EE_
x-ms-office365-filtering-correlation-id: ae1fb95d-7a15-4c44-2d08-08de782b2167
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7416014|38070700021|921020; 
x-microsoft-antispam-message-info: LTF09E/HVyjKKWEjRSq7HBvP6VaIQ02bjr8qYovLXEFMch/5IIRgBc3XgkvIP/gE7tajV2M788R+Vp77GvzQGZOha/peiaLeGJ81UWZF9xXi3HKmqmqLbmnpekorFt6HTcBj/ewpOIVjYl1chL/KbwN0RqwsGc4MB4Jr6jBytrzet8+/wKEJO/xEFZEpVf09LzA0FIKlgTPF5sNRIdDTjzHQ4WERkQ8hwL9oIDcYUAPq3joQzePiJPY0Ji0AIUge8T+ez5ZfRtcyxj+DemGTJ7PYtPead4ozer7RmkewTszKCWCqVYYN2FSD4uWR871rEk5Wuz6F9b33tc+P7VNruQhAcUf/BzKw37aSPF1EUD8PWqVGXUwmw1xyYQpCCAo+ZuZBRLIuX1FDy7TAikGja/Iciiepi79v1UF0xO3p3m5PtsZNMNRbVEoQiaMtCEfKIKyLw+NgQeeSqHm0VZAAFLUGw7YTSr9CCoJzGKFDO4+nehXsvEEDr8CJtZiyy3GbXNPtRyUCXcPbXOs7zYrtDVF/uXz4B17Ie1lvmKJQ1psWmWyoLFDTLzFgrxXteWogvxVlV/P+ZNi+YyPDbrRn/gjFzoPvgi8SkzvSHw7k0jchAgvJGaFMN+LiYocxa5gQrS3tuXRLAe8s9wYMq8cF/YbjiLuQoHv8p53U53OXV7xE6/aES3lCo7o+6+/bUjBUMSWaEwdma2kB3I38ukCXo4bT4RxlzU6sCe7jpWVUnDq2UrRzsEAyTrRZxaZVK09VxYfOMYZ+UoKgNpNJ4RLSfQsUukeaua03XAWkGaNEDrnPzKqSos3Q+h78n5LBNnEZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7416014)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?FvIElxyAvnxmW6nXoEX6LB3wQzlrMTZ1UVYa/YUjOMPWkNeFY1U5yUifgc?=
 =?iso-8859-1?Q?201ggJyg4yd3DtczCl5NBT/si+4ShjRzm6ki27nsv4uh0q8owafrELm0hc?=
 =?iso-8859-1?Q?qHIMt9mP5Cla6J3CHS4PC9hBVMp+/N+TXHHLiZC01tqmyzptGtUhenEf6G?=
 =?iso-8859-1?Q?1iq12GWe/kgNZRMj8qIvyQ+pW0TIUsHm74M2NUM8RBDEta2R8jn2L0E9GL?=
 =?iso-8859-1?Q?JKoEHN8aCk+moPIS/ee18l8qRvG3WiRuAuJ09msDGJEHjHZNgIM/o9yo/q?=
 =?iso-8859-1?Q?9o9cSHfoq5FL99APzxFScD806otOeO0gOU80JKJR0Ci6r2Wqact1IPmrsJ?=
 =?iso-8859-1?Q?+0o9XCulgnLsb/mxn2MbuaClLYxLKkoy5VmxgyILpPBWlCGVMgTTkL4vOp?=
 =?iso-8859-1?Q?WV4LtBOu6K53zvzM6p2ndBT4fqZEvld4il/aSsDILyHC1uphUHAxIrVHVT?=
 =?iso-8859-1?Q?H16MDV2POxDuttHf/2dh9a2PrzxUQeRqaS3vhypsW/DpRhZqtPWvM8zjlz?=
 =?iso-8859-1?Q?UCOcxgYVxFVXV5G8KjOsJJFxSSbZG3PKeCPKrw3OO69GhOT2u85xyOu/M8?=
 =?iso-8859-1?Q?g580HdpFo2UlLEdTfWQe55inq6k0K5U4PZSx+mMFg6a6Kw2q0+KfyGRJ7y?=
 =?iso-8859-1?Q?U2CMe6wo6GiMfTr+qpiG45mNgwbGbMbGxQXi12dPHJXK0m2tu+Im/2Nvq5?=
 =?iso-8859-1?Q?jGs4j9nR6q6T6CBrxzH56l0wel91wvai+IRcnqWI5SHzjKWKVukGgV3lY+?=
 =?iso-8859-1?Q?fCzZj9ASCvva4tSuwSVsmfWw22NOIpCLcNa0dbyNAddwa2/MSybQrsCdwX?=
 =?iso-8859-1?Q?jC9n+IvVIzaehiJKo5B/U8djzMPzC1Eiv+fsB8UrPEfqEL3lKrPZ7Cweh9?=
 =?iso-8859-1?Q?d1ifVg0FfToXuiXYZX5/hqFadI/r/V1v3ZgHr5ClrJ1UF3mu8JZdKkHaHu?=
 =?iso-8859-1?Q?Xhu3YV7jqRvBvNazk4VQDasliIlouaAJ30PpACj1tMba/MDU1T1FVCnsLc?=
 =?iso-8859-1?Q?nuh2RLxrb30eu3QmQ8r9Eqm2WiOmxB7QW6UXy2g8qHPYDL3sW4pJ0gJ5lm?=
 =?iso-8859-1?Q?lJWH/FmMgektH5YovgPr6Gm/tNiEhEpeElduVEGkDtnmpkmu3F8tEELTL7?=
 =?iso-8859-1?Q?jqmz/pO/KnQMkg69+Z/S5SvPcqeSDgJA/Iybe2UvSuyawPUeabZxQw/DjQ?=
 =?iso-8859-1?Q?ox3e394l+NX8vxTKKCBYu0JvBaWTysGjC/WEaPV8I+InP852E+m42iQwBL?=
 =?iso-8859-1?Q?eWEQuMY5mgiUc8u5gl0jiWbp2Ht1aYl65LV66GhFWHrMnqCCi3BlzLDXKU?=
 =?iso-8859-1?Q?orI08NwL8uXVyTGgLaT7zEUHHBXq0jPq9fH8hmLXx6zHXcseuKG+NnF44M?=
 =?iso-8859-1?Q?CNtt/kq71Q2iT8egKSuCM1e3iWMS+x7zTQMI3iHs/HhjnD0XeGoNjHEK4X?=
 =?iso-8859-1?Q?SQT8CD1rUkc3KovCxzuOvMBBD9e0UyuEVMUTqRUg4gFE2KaLkES3NP6zsO?=
 =?iso-8859-1?Q?Dvj9i4ZvCQMs3xmQGuj6UK/tyRkhBhe5ZIaCasdsj67GBei3zGkgX46sWb?=
 =?iso-8859-1?Q?/CjYAGt/O7uEv2fO90p2pMbhZ1n3048RzsLp41QDv+IeN787lBw9hLxneH?=
 =?iso-8859-1?Q?Of4IVqGfduNAlWZxE1tpuP96DcJegyG9a1RkV3YM2/LQSlTyu62hfczw+D?=
 =?iso-8859-1?Q?B11wUSpcIBqtFLLuhSykicuiWHNfMcs2YPciDRNt5YNVwhVg5AeKYgMoyn?=
 =?iso-8859-1?Q?LiWBJl+vWPl7o/8uSNSHdEsNr1lA2qxOZ4uB7nNBCOBcWdxM4dL+9Sk2lm?=
 =?iso-8859-1?Q?etKqxA9HB6lx+Etx6Iiyjs2wZQ+ckwQ=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae1fb95d-7a15-4c44-2d08-08de782b2167
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2026 07:12:57.2271 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m9lyzFeuiQ6NONJHHybzKU7s6wCxYbmfDs3U1wwk+Hd0HbhrKk2LwnGoICFjxodvenyg2IjKrklvaUMN9iT7BXEhPAFDI4tvdHi5fvAvvzQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8532
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772435582; x=1803971582;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cYaoYXAfg3L5Hf4QWl3ouq1fnXzOnLsoaC03nVVbmZI=;
 b=kv/uo+WM/qVRhrc5pNtSYiizrcK4BSo+yE5Wcyyyq/+yaktDT430hDTF
 7QtE99zTZIHVY6aLBawCqnKTquZ5xDQRzgel67J2M/bmf28i1I77S9bbR
 sc22N8065OiEVF+NCWZwA8BYrUqQwyo85WEStmpqFJeXHAlUJQJP9/7vm
 P75WQPeDIvvB3Q5E5T5l8S+dIWQQE8U8Y37IfbuAVZLEdbgvAeb4OsLxs
 0xMXBKVx8/Uq+VPtN+TkEZCqktY7nnLjU9FAhj2NON+pqPJIycjJwzTnv
 +n2bb/j6sJUsHqbJzRSKp1FnmOzQZi6k5PmQMcNH2Z+BP0UFxN32rcw3m
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kv/uo+WM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 1/4] bitmap: introduce
 bitmap_weighted_xor()
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:ynorov@nvidia.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:thomas.hellstrom@linux.intel.com,m:andrew+netdev@lunn.ch,m:akpm@linux-foundation.org,m:airlied@gmail.com,m:edumazet@google.com,m:kuba@kernel.org,m:matthew.brost@intel.com,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:rodrigo.vivi@intel.com,m:simona@ffwll.ch,m:yury.norov@gmail.com,m:linux@rasmusvillemoes.dk,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:horms@kernel.org,m:david.laight.linux@gmail.com,m:andrew@lunn.ch,m:yurynorov@gmail.com,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_TO(0.00)[nvidia.com,intel.com,davemloft.net,linux.intel.com,lunn.ch,linux-foundation.org,gmail.com,google.com,kernel.org,redhat.com,ffwll.ch,rasmusvillemoes.dk,lists.freedesktop.org,vger.kernel.org,lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 251A81D3B1A
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Yury Norov via Intel-wired-lan
> Sent: Monday, March 2, 2026 2:12 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; David S. Miller
> <davem@davemloft.net>; Thomas Hellstr=F6m
> <thomas.hellstrom@linux.intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; Andrew Morton <akpm@linux-foundation.org>;
> David Airlie <airlied@gmail.com>; Eric Dumazet <edumazet@google.com>;
> Jakub Kicinski <kuba@kernel.org>; Brost, Matthew
> <matthew.brost@intel.com>; Paolo Abeni <pabeni@redhat.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Vivi, Rodrigo
> <rodrigo.vivi@intel.com>; Simona Vetter <simona@ffwll.ch>; Yury Norov
> <yury.norov@gmail.com>; Rasmus Villemoes <linux@rasmusvillemoes.dk>;
> dri-devel@lists.freedesktop.org; intel-xe@lists.freedesktop.org;
> linux-kernel@vger.kernel.org; netdev@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org
> Cc: Yury Norov <ynorov@nvidia.com>; Simon Horman <horms@kernel.org>;
> David Laight <david.laight.linux@gmail.com>
> Subject: [Intel-wired-lan] [PATCH v2 1/4] bitmap: introduce
> bitmap_weighted_xor()
>=20
> The function helps to XOR bitmaps and calculate Hamming weight of the
> result in one pass.
>=20
> Signed-off-by: Yury Norov <ynorov@nvidia.com>
> ---
>  include/linux/bitmap.h | 15 +++++++++++++++
>  lib/bitmap.c           |  7 +++++++
>  2 files changed, 22 insertions(+)
>=20
> diff --git a/include/linux/bitmap.h b/include/linux/bitmap.h index
> b0395e4ccf90..874f744870ef 100644
> --- a/include/linux/bitmap.h
> +++ b/include/linux/bitmap.h
> @@ -46,6 +46,7 @@ struct device;
>   *  bitmap_and(dst, src1, src2, nbits)          *dst =3D *src1 & *src2
>   *  bitmap_or(dst, src1, src2, nbits)           *dst =3D *src1 | *src2
>   *  bitmap_weighted_or(dst, src1, src2, nbits)	*dst =3D *src1 | *src2.
> Returns Hamming Weight of dst
> + *  bitmap_weighted_xor(dst, src1, src2, nbits)	*dst =3D *src1 ^
> *src2. Returns Hamming Weight of dst
>   *  bitmap_xor(dst, src1, src2, nbits)          *dst =3D *src1 ^ *src2
>   *  bitmap_andnot(dst, src1, src2, nbits)       *dst =3D *src1 &
> ~(*src2)
>   *  bitmap_complement(dst, src, nbits)          *dst =3D ~(*src)
> @@ -168,6 +169,8 @@ void __bitmap_or(unsigned long *dst, const
> unsigned long *bitmap1,
>  		 const unsigned long *bitmap2, unsigned int nbits);
> unsigned int __bitmap_weighted_or(unsigned long *dst, const unsigned
> long *bitmap1,
>  				  const unsigned long *bitmap2, unsigned
> int nbits);
> +unsigned int __bitmap_weighted_xor(unsigned long *dst, const unsigned
> long *bitmap1,
> +				  const unsigned long *bitmap2, unsigned
> int nbits);
>  void __bitmap_xor(unsigned long *dst, const unsigned long *bitmap1,
>  		  const unsigned long *bitmap2, unsigned int nbits);
> bool __bitmap_andnot(unsigned long *dst, const unsigned long *bitmap1,
> @@ -352,6 +355,18 @@ unsigned int bitmap_weighted_or(unsigned long
> *dst, const unsigned long *src1,
>  	}
>  }
>=20
> +static __always_inline
> +unsigned int bitmap_weighted_xor(unsigned long *dst, const unsigned
> long *src1,
> +				const unsigned long *src2, unsigned int
> nbits) {
> +	if (small_const_nbits(nbits)) {
> +		*dst =3D *src1 ^ *src2;
> +		return hweight_long(*dst &
> BITMAP_LAST_WORD_MASK(nbits));
> +	} else {
> +		return __bitmap_weighted_xor(dst, src1, src2, nbits);
> +	}
> +}
> +
>  static __always_inline
>  void bitmap_xor(unsigned long *dst, const unsigned long *src1,
>  		const unsigned long *src2, unsigned int nbits) diff --
> git a/lib/bitmap.c b/lib/bitmap.c index 9dc526507875..a2bcb5b1fe99
> 100644
> --- a/lib/bitmap.c
> +++ b/lib/bitmap.c
> @@ -361,6 +361,13 @@ unsigned int __bitmap_weighted_or(unsigned long
> *dst, const unsigned long *bitma
>  	return BITMAP_WEIGHT(({dst[idx] =3D bitmap1[idx] | bitmap2[idx];
> dst[idx]; }), bits);  }
>=20
> +unsigned int __bitmap_weighted_xor(unsigned long *dst, const unsigned
> long *bitmap1,
> +				  const unsigned long *bitmap2, unsigned
> int bits) {
> +	return BITMAP_WEIGHT(({dst[idx] =3D bitmap1[idx] ^ bitmap2[idx];
> +dst[idx]; }), bits); } EXPORT_SYMBOL(__bitmap_weighted_xor);
> +
>  void __bitmap_set(unsigned long *map, unsigned int start, int len)  {
>  	unsigned long *p =3D map + BIT_WORD(start);
> --
> 2.43.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
