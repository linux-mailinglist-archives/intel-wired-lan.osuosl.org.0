Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A76B984CE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Sep 2025 07:50:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 41E5280CBE;
	Wed, 24 Sep 2025 05:50:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sK8BREkmhnkX; Wed, 24 Sep 2025 05:50:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F12980CAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758693009;
	bh=/WdCvkvHMNZcKT2DCe1YYJYq9rIOuJTGTQAY3OeXKBc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jbRO7r2hRVQyKbBcCikJKTn9lQFSFiIBTAj6qIpgR00VlXc9y6zTHVlVsAqjjEK9N
	 rn29989DdcGQyzxVcG25PKrlBbteTjhrheiP6DQmjkl+VdZ9AxpAfBNIpqrlAWSXx6
	 wr9QpMC+idtedUjWNl0ucIv5GiHF/0mE8eCXLBdOncqxGTMq4udK2dvffHIM70lhCj
	 OCHtJyEjkxvM99Sq0pvJa/xrPZd4owLfBkKAq0NsUVmwtumYhljUJyJeatir7e47LS
	 1OiJlVkiYZ1qlyJjqXp6psh+K5jGBN5NWOGKBy1l0b2rQIGS4T6sM6wPeBugKcIZgd
	 yr40y3z9uf/1w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F12980CAC;
	Wed, 24 Sep 2025 05:50:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A2525177
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 05:50:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9448940231
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 05:50:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RPp-DIjsoMwR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Sep 2025 05:50:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=ramu.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 985BC4022D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 985BC4022D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 985BC4022D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 05:50:05 +0000 (UTC)
X-CSE-ConnectionGUID: VZX+ENU+RtKLehSL5PA6qQ==
X-CSE-MsgGUID: xFlCxsq/TISPCfVuER4lNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="48547376"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="48547376"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 22:50:05 -0700
X-CSE-ConnectionGUID: YrvMd8cKTImC8Z1gGcNSZw==
X-CSE-MsgGUID: mmw0unKaQkC7W/29pQMFUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="176779886"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 22:50:04 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 23 Sep 2025 22:50:02 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 23 Sep 2025 22:50:02 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.62) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 22:49:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XESjSNpd/R4VsfYkMVIzBoBHAuYb3cVFv1omqnFxLalHxYX3anDwf2wOoKGxItlPXTvdP2TYyJlBbZ/gDXHUeAy6wW9yREFOe5MLbyGpizkNmmnGyMqu/xECx9cGIIy4L5Al5lLTJghqHM/lTo9FT3xeoLmHwcI7dC5IMmndsxUEfvh8X8vgL5AzfHXplh6WDsoSkEhWrUCpFh4qsSPuuSgDSfQ7fb1AOeI9WCyZrO25E6Wv9eL45YxURMqLNVZ/zpfXqLSqph3eWlvPnRBbjfozU5ixHRCl1/DY0MT7LhgRZgDRvdVDonHoVLrrkELFEvsYxKctHYRWh2ONGVqv/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/WdCvkvHMNZcKT2DCe1YYJYq9rIOuJTGTQAY3OeXKBc=;
 b=dgzq2c7jIH2HWGTSh2gTUKhQ5y7dP5Hhqwu7m2aYcFbYZAG/jNweLi45CT79pQj/IPqUVqrX3JC5H7fJ+SML5csagXyiXaJiSGM0s8hWV3QKFkYNvf4D5nNtQ4Br6Gvd/pIUT+LDAH415Lpbeo60Ztghm115vtVio/DH9kma8cDOJ4DNglSGAlSAR5WlI1Uo85oCYkvQr4gIYzKxRpIHz/zh3bE2CLE+uQWOHrm6nY39sGmtttxNHKhtEvBlzk7k61jkO0jhHvZp0jq5W4oJsIow3Tn0XTx/OS0EOdWsw0lRoI8k5og5Vxtia1nNip6Gcgd14jbjrnOI8MQ1QVJp8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6455.namprd11.prod.outlook.com (2603:10b6:8:ba::17) by
 DS0PR11MB9502.namprd11.prod.outlook.com (2603:10b6:8:295::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9137.20; Wed, 24 Sep 2025 05:49:52 +0000
Received: from DM4PR11MB6455.namprd11.prod.outlook.com
 ([fe80::304a:afb1:cd4:3425]) by DM4PR11MB6455.namprd11.prod.outlook.com
 ([fe80::304a:afb1:cd4:3425%7]) with mapi id 15.20.9137.018; Wed, 24 Sep 2025
 05:49:52 +0000
From: "R, Ramu" <ramu.r@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, "Simon
 Horman" <horms@kernel.org>, NXNE CNSE OSDT ITP Upstreaming
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, "bpf@vger.kernel.org"
 <bpf@vger.kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 3/5] idpf: implement XSk xmit
Thread-Index: AQHcIzh6uvvI8RWxrU2WDautA93dCrSggQcAgAFmMHA=
Date: Wed, 24 Sep 2025 05:49:52 +0000
Message-ID: <DM4PR11MB645563F1FAA13275576E2420981CA@DM4PR11MB6455.namprd11.prod.outlook.com>
References: <20250911162233.1238034-1-aleksander.lobakin@intel.com>
 <20250911162233.1238034-4-aleksander.lobakin@intel.com>
 <PH0PR11MB501396D4B46250A8D3D88869961DA@PH0PR11MB5013.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB501396D4B46250A8D3D88869961DA@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6455:EE_|DS0PR11MB9502:EE_
x-ms-office365-filtering-correlation-id: 2343f173-e359-4036-fe72-08ddfb2e2e79
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?u8wnY3SFEKO9PGlRWz92dYVEX3wLoWQ6FrCuGXEd36PYTWItF/vZNzHBnHlZ?=
 =?us-ascii?Q?iB6h52vDF33PeWAgCl/hOeL9ryroQDFBvk09nFANlEs9oY+PRRlHDLR8QGFW?=
 =?us-ascii?Q?ENNGFNZW4D2GJbRhJUZ68sSXOoVq0rX9a36PxTuHhGHNb65KNvRZI4KE6Zys?=
 =?us-ascii?Q?6pHVjxvTVYHwb6Q6D0nRqPgWDhVgBW5GJSvaXw6fBs6yHPD+803kRyRUcpyK?=
 =?us-ascii?Q?oO5m/+9YyP/kHHLcAwrdXqxEToAlgkBBvVziIzv2U1ov0z3L+Gy7WBOK/1NW?=
 =?us-ascii?Q?vbmBDc9zKkl9eBtewrFhxjoRnlSIX8i5ZwfPXNMcacywyM1YiCmbApyCKFn5?=
 =?us-ascii?Q?kAaPn2FktQLDIlXvmlBTgJnEmrZX12WKLntb/FtPg4zcGLzeOq6xm4T2Ij7B?=
 =?us-ascii?Q?Bm4bOxtZxK+W3KIZxAbjxNIeX9p/6WmlFTvhLfyA7fr+ex8qwGsmIH0zTUYz?=
 =?us-ascii?Q?0kxX0PaDMQqJ0C5yxEN2ucfRH8WBW1H8BTqdBdTeKYyNeGyKXrWJF8s9TjIa?=
 =?us-ascii?Q?YYyWf3RcQK7NXlocxd2F9dVzb+Fq/PJ+DojiK7h1WP9NdCjOnhyis+qNg5pQ?=
 =?us-ascii?Q?jGSaSXN5rr/brG3RcJIPK4VYwD+4x8tLOav9dmv/cQQXEQQoWDzHejkfIoXy?=
 =?us-ascii?Q?7RTlbqL+/241gYUGVx0Jsg55UrTNThuDrtBQYov0WHqQ9ClWG4huEzk0z1cH?=
 =?us-ascii?Q?jLTpgFso5skno6Hnz5Ijucd/Emt9pBNCyBA4Ne9EGEzqCa/cf4TuO8jvhMSc?=
 =?us-ascii?Q?aWvtxFsiZ30iTQTe/ztmxPTcg7zX8SBOnhTYKyS+T2I8suxEUTWrCEmhZ0LZ?=
 =?us-ascii?Q?RroOkqKv7jTGDjvlQ3Oq9ZT7CdQVPhkFXICL4jrgLkUy8zuhgb4Y3eoWEk0i?=
 =?us-ascii?Q?YTy6e1ioyN7f2oT951XwvCsDB/zEya+1AYiWdBLTQ1Wqrg/RzfkPMhCoSoxc?=
 =?us-ascii?Q?/96jcm0B6+Qgqw/NB3FUprBe/T0xIvWl3HdXPD1A5y2yRxuXRl8BK/OMNFy0?=
 =?us-ascii?Q?Jt5G17IWRmjeRF7qYfMx+qS5Vp8CXbz4hXqjLDbtfjpTOK5Ay0HibOvp7D8u?=
 =?us-ascii?Q?gGKv6xd5K8C9LAlMNaeW8i44xLH7vPCb3FZORhX21WtSlWRFoI1rmGcmtpDZ?=
 =?us-ascii?Q?oVPscKL5oZ5qlr7OWSQ5OtuXajtVJcCt4WNyJxbdMHsBArX7eQZRlzui8mxv?=
 =?us-ascii?Q?mNVBnjzU1UVOb3nVFCDataKdZUY8N/eo4pVJPBq3Hz2AU2K+4vjUCkQfT2V9?=
 =?us-ascii?Q?ybI3dn/oS+iB25fAMAx4qPFeBCuaozjHwpmQfpD5BCFwGqdMSBLBR7z4+ciL?=
 =?us-ascii?Q?YnbGZnNgF4A8snkRWw24xj5vUiVbCvMlU5vDryfxPSKWqxSX/NUSUvJtG0nH?=
 =?us-ascii?Q?JKWQtQ/hNuHyOAJ7xmSrWHh183VWWcbQUkguVzuX/2g/AJpBBXLThtduXqbJ?=
 =?us-ascii?Q?8qsmYaEZERXgv9L+CbB6rnrLxvH6YgP83xhEkrTWOtbqWjZQH4er3pVZy95J?=
 =?us-ascii?Q?AHEYMedOGAyH73E=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6455.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SBGA3MoHfymwnyXLrbTlaiLsCcuiaj2K3OHYn/aNhxiq2cHPi1ssNA9zHkE3?=
 =?us-ascii?Q?CO/OULMnVw2ykvYDogI6wE/AuMaQXkLjLtiOWT3TQBZjUymYw+vXGoObVSH5?=
 =?us-ascii?Q?73jhwN1hGTNWin+onGucXwCqJBZpOjZBC2zUNmUm4ZnVY4JHclKH5hafqStj?=
 =?us-ascii?Q?/oF7j0I6N2R/bZILgnisATYICMjG9c8I7YiTbNeCql637LzyNQsmsKKyV25y?=
 =?us-ascii?Q?VsvBbR2ygCRI3a2G/Va+toaNlcpjYjAxhG8PlqSrMlMW89nU1vqWJCrr89vL?=
 =?us-ascii?Q?ltOsgLGGGC61KocWjqv/+KroEFFFW1DseMbPFJ2W83uP0snpNM4LvvyYPgDU?=
 =?us-ascii?Q?YhF493wPTjxyLH2Wu2l8Q2qeu9CFJ2Pe2zFoxC+Tug3T96UhaMWn5GJNkMqo?=
 =?us-ascii?Q?6LvwG0Wk5VzXD3U1hGxiLzcg/ESEiawUpNG1CgTswrP/G2xZQ8pyWhfWGkos?=
 =?us-ascii?Q?6oYj/EuCDyoYsmFvV0VOfeGW6ZkcP2KgyaDWHBSYfAnpZlmdkXo0kqhmTHHg?=
 =?us-ascii?Q?GKiSDUUKAmLx4wOCSSGzP0V6cJ6ua8YlInVKzuQ/XSb43PkTBX1ckCeA1+iA?=
 =?us-ascii?Q?x86BMLv4WYZkEagOYsefqzA3BLDTbEvv9e7F8aIFBKPk4tcq9fRcTsdLywbW?=
 =?us-ascii?Q?UdjKtZ7sg2+st30zUc1KifQpEn0RPD7ZeG+mS9sbRjEdhe1qXDgTbv6rSjQu?=
 =?us-ascii?Q?45LeRGVIANoArYCBpz/+QXs+9nm9HuOauU1dZQ3QdMgbUKPeAv+fr8jvA1+e?=
 =?us-ascii?Q?5Loap8QY6EWW1olPrrUU4M1Q1K9BbNhPxlKRhv06Aq0MA7NBvgQ0o/GMhqUV?=
 =?us-ascii?Q?D6ubJYQmsiYIAhtKJLe9mEl63NyMCMhjxr8vk40GYUafStKhvt8TrwHugA5S?=
 =?us-ascii?Q?KAO9YPGKFUmD8hA9iAs+6arWPkLbhfDMlCNfKkmS1jyxwDuVoMk6GfqNr0Ja?=
 =?us-ascii?Q?m66tPzRtTMRpKBcX2OvGTf56BWHNBprfIHIFA0/Gq4Qs4EqnVwCCaOwjD1o3?=
 =?us-ascii?Q?+z1Gc59MmIQ4cJvbLOtLeOYpdLyNTJ/Et4F4q2mWlJqXPFJqcv9sCSYi00oW?=
 =?us-ascii?Q?dWkxVIJYJZpiQ2KHwL2iFfYVK9Itj2cy5cQsNBGWRE4jh8PRfiU6qmBYs2oR?=
 =?us-ascii?Q?Zt/ibax3U+yVtx8k5mZ04V+ADOAhENO2dC56IvdB4TRZ3iJhGEXSKJiiv5kF?=
 =?us-ascii?Q?oce8NV9DWL6AwH2iPDQasMLF4JraJRhRJbidCwC/QS46engXsbkzfNQOPQjW?=
 =?us-ascii?Q?PH+EHbdaGGTy2LMXYR4uFaSFK79UoxdTeelw+0V9SxdGMTtc1I/W3+0gSQZ0?=
 =?us-ascii?Q?KAafdX6uDpAzMZppPoBqx5H4xDXRUZeQYXXgFGHQRFmiFjfPRmT4g+Lwm+89?=
 =?us-ascii?Q?eaZXCqJaOhVx1z4tCpxChuZEwwh1vGggh6vHuR+nLWkjFSSLxKMFzkC8niSt?=
 =?us-ascii?Q?sa/URiU5DdG03J7Y0pArVlLxnlON2FjBTsTve9+x7uuzhztd9vL34Vc7pqCz?=
 =?us-ascii?Q?1+K2HZzmnmYovimmbPgx7PCn/0y27NNUYiIp+mnTkI8oe0EGkBeDfo7MpDX9?=
 =?us-ascii?Q?4ybMNh0hysL0ra55y9Y=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6455.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2343f173-e359-4036-fe72-08ddfb2e2e79
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2025 05:49:52.3051 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fuhnJbwjph3NbOwYqX5KS9zKrGY8CSpcgF/rb2ECiz0dbfg+OSmL18+418CBiXE5IYKORyPMPTk8V7LGYoLRuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB9502
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758693007; x=1790229007;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=A37QmJaBvye4+3QSY/HTAoke1mblLgsQoSM4LWF/cmI=;
 b=ghLtJli1h2EIt+a/XAYtCH3iYw/kldP59q9OpW/1fpWUDBYPpmSqZe2W
 +vi4rH+mZSs9s3lDhxOFXR7Xew4o5F5KlzSMi+l//sf929W2Mjfsq4V6u
 f7a3WaY4R5hARihwi1f7yiO3MWvynXbfcEzUYUCzlFZJSnBOBAkclGeRE
 6fCzvObRPQjSFVWIgD7+O1nnbM5umeeMLhnRTXLt/hWazM4xqv9fcVm+N
 Hv/XtIc6icij+O9/TJDLDhcNpoIS7iGAqhZ2XcxuN1ckDNl+eiEIdr+1A
 ES8UDubSMucOfLdNCzlzbW5SfP/hIe2fQmRGmakkmrhcKd6/+F71vTmo2
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ghLtJli1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/5] idpf: implement XSk xmit
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Alexander Lobakin
> Sent: Thursday, September 11, 2025 9:53 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Kubiak, Michal
> <michal.kubiak@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Alexei Starovoitov <ast@kernel.org>; Daniel
> Borkmann <daniel@iogearbox.net>; Simon Horman <horms@kernel.org>;
> NXNE CNSE OSDT ITP Upstreaming
> <nxne.cnse.osdt.itp.upstreaming@intel.com>; bpf@vger.kernel.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next 3/5] idpf: implement XSk xmit
>=20
> Implement the XSk transmit path using the libeth (libeth_xdp) XSk infra.
> When the NAPI poll is called, XSk Tx queues are polled first, before regu=
lar Tx
> and Rx. They're generally faster to serve and have higher priority compar=
ing
> to regular traffic.
>=20
> Co-developed-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h |  14 +-
>  drivers/net/ethernet/intel/idpf/xdp.h       |   1 +
>  drivers/net/ethernet/intel/idpf/xsk.h       |   9 +
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 117 ++++++++--
>  drivers/net/ethernet/intel/idpf/xdp.c       |   2 +-
>  drivers/net/ethernet/intel/idpf/xsk.c       | 232 ++++++++++++++++++++
>  6 files changed, 354 insertions(+), 21 deletions(-)
>=20
Tested-by: Ramu R <ramu.r@intel.com>
