Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B4429939C3D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 10:06:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C8C580BD5;
	Tue, 23 Jul 2024 08:06:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y2ZL6-A5ad80; Tue, 23 Jul 2024 08:06:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85CB280BD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721722005;
	bh=QO3oqj7eM5hOdqYnLj53VtP30+ajtutPWFUECyPx6tc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MyxTiLUbpV7a9NxgymptgewbD0pzjEyBo++63Yrn9WbAE+dGwqBDYYYJ/spq9FEFH
	 JVClhbxukCVuMRLYYB7soER6Bjv4yjRxXaN8R8Np/Z3Mg5SSiwpqZI/AN8l7u6Q84T
	 0X+kgCxIqnnGAQ0F7IJqYwTK4uyv//a5gV3BV9FLaSt5DSiZN4ywiYVuIx2GjX7HML
	 g/I8Oidt23T2tKWX3aLcVyR04cdw3NIr29+gkAJ1G7Z9nPCxU5cqJ958/y+YlYl6Mp
	 uYFISA1y/z5OJ9I+N7gCQFzh8zDdGlkDvA3EudJtjFMeBIUf1bEu4jr3re8nAR98oB
	 UJX5DT/9tI1+w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85CB280BD6;
	Tue, 23 Jul 2024 08:06:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 626521BF29D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 08:06:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5A4D14014D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 08:06:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NuoOxQJfdV8A for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 08:06:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A95E440111
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A95E440111
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A95E440111
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 08:06:38 +0000 (UTC)
X-CSE-ConnectionGUID: hUOLem9HQ46oqWO9JVqzdQ==
X-CSE-MsgGUID: S93t48ilSDamXvYKpQLIHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="19463711"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="19463711"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 01:06:38 -0700
X-CSE-ConnectionGUID: kdAsPSeSTI2gQcnBUoj+7g==
X-CSE-MsgGUID: BdfYa1xbTUykbdFhgmO92Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="56458263"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 01:06:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 01:06:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 01:06:36 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 01:06:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wOaDM7lAh73k2xe8AlMfMKO5uT95LQf23FwaZbEXzCIVZLNvhdmbi97oVQwZLdB5VX84zEJSohUQstd5BEFxUiWjwL9V+6tf4dXLxAf/Wm8koUA+ym7AdeW/YaVv9gr/L4a0eLmzafu24BIDzh6jK3xVuae/KcMizHBGnVtUcvf9Nijsv9AWTiVGSp86ZiyvtRLn3upExZYFz+sdFrvUaO0COupcqYXKDHAYhJNsI5yGVI0DTOrynuXEdhhmj36+WQ6nFBslW706iQ18Re6VPTBMVbnFX39kHraxurlwo6CZEiTcnDoVXrVVFwhX0Z/u3NCcoCsYAxRthmhalzzibg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QO3oqj7eM5hOdqYnLj53VtP30+ajtutPWFUECyPx6tc=;
 b=jIAX3T8J/tW72ti0zbpkWnTWQkXXW170guAhMFF2fO26C8IuTVIba9qAVCN5Y3vLh3A9KeB8xUrdkGb1A+bfUYkBvNe+U3Wb30yAZWpXJdBFHMe/tBekODQcd1dGbwYyqwysLxwkeQljsNak53dCmfSkqvx08vxpBTDensLzDXEzbgef5tldyL7xnU/z77BNLDyhh1eQ79j5ny9lWEOMUORiaYJA9/3ZD7hqKDMVBhyDLW/sf/pULzbBn/4U2q05eySCvDkZiEr8LDR5V02bvcyqGOVrlyO9YEBx4F1rxPgJnHmKwiTe6CEKsrXQvYd0WCgeE5UjpqxfhiUSB2f9xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by SA0PR11MB4591.namprd11.prod.outlook.com (2603:10b6:806:9c::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.14; Tue, 23 Jul
 2024 08:06:30 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 08:06:30 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Zaki, Ahmed" <ahmed.zaki@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 13/13] iavf: add support
 for offloading tc U32 cls filters
Thread-Index: AQHasGg+nUJL1E8RV0Op+9tiduaBNbIETYrw
Date: Tue, 23 Jul 2024 08:06:30 +0000
Message-ID: <SJ0PR11MB58650FE7993E320F98EAEC538FA92@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240527185810.3077299-1-ahmed.zaki@intel.com>
 <20240527185810.3077299-14-ahmed.zaki@intel.com>
In-Reply-To: <20240527185810.3077299-14-ahmed.zaki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|SA0PR11MB4591:EE_
x-ms-office365-filtering-correlation-id: df580ec4-b70d-40a5-451c-08dcaaee5c0f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?bpZ6uUp1jXpIxJBZ5HfUJPQgD43x9MrCk4+9OqFFNW0MyRksJHg8wXRW4qrp?=
 =?us-ascii?Q?+PKMThOT+UNoLUqAH95921iVkxLdcGWgRi6UUwawArJuX4OveIvoAc1yG0Lp?=
 =?us-ascii?Q?/xs/IEQbwp0XyNbKPKc0DGG26QW7jLHXjB2ZX/0Yvm0lQaCT96DV5GdqdU/G?=
 =?us-ascii?Q?bGCxJDlBqgJaj73y8ewpdsq6oDpeK1dL26AYRCa7LW9gTdYfsJcilDjPQfIG?=
 =?us-ascii?Q?6uYrceMdMyPUQCGFgvn/CW5O5aLR98GMRsjX19Lqv/aQIyWTdq7Zr8sW9pTq?=
 =?us-ascii?Q?cryKcjmTGyPcteGAUjkEW3y1PfYgS6z/ZbbJhMdOixd4XotQLE0xAQ++gQx9?=
 =?us-ascii?Q?tozhfy50bUG2LQbGLpbr09ZuVRy8BQgQwUu0yrsRnYhvJNFET60bEMxgPeGt?=
 =?us-ascii?Q?cXfXZ324ipjD29dQuQKqbK9afYbyL8HpU8T4Bdp1scsfJjdLFL/vzocjkbhG?=
 =?us-ascii?Q?zC5aAE7+OLVA3Hckj6t8sSuIaID7EN8Dn3qqrqDvCew3DrJYv/PxSYEZQSXz?=
 =?us-ascii?Q?AbEdsNjPWABQm55vpqFnB+vh2XIh5uaMqOtpgmjoGsoQAHZ68GHZH+6mkRKO?=
 =?us-ascii?Q?KvX4U8qe9jEEhmal1AVIVNfmUHdunyGiywuZInTpkPeQTEnDjjI+1vN2mw/o?=
 =?us-ascii?Q?9l4AqvrwK5weYzGwiT1Pn6rqOccKJR4lx2iDhBZjfte3b3opPFGHjVKGe6Yp?=
 =?us-ascii?Q?y/MZphwLMJThCsoM7DhxP/pXqrEO48J/Yq52tcOnKXdV8BzB5i0y9P/v9qgF?=
 =?us-ascii?Q?CdYlHGxDg/8q7CQofgZpz3ujUABDewzglwsgdzShd0t9ayEOuusDkNY27BDZ?=
 =?us-ascii?Q?OauoCU3Sw4aPuwGlu9HnDFKkil+HYxFO8QPL+6I6z3N8zWp6+pmJRkV0bZbt?=
 =?us-ascii?Q?iJr3pElA4iv6nM0RtjyYbbuevBWKsscHuvAruu/dUunlOs3iwWIgwzNyI+K5?=
 =?us-ascii?Q?xKmdDEyiUkkyR/QZN/2tobr1wMYUCoDulA4ghetqfgYOvVN8Kzr/Nvn4xAlG?=
 =?us-ascii?Q?42eqPc0MnIvjw6FGI4Hd7kbdxf+TUf/dKRlvAziaCxH03MxGttaZeuBCjHb0?=
 =?us-ascii?Q?vhGY38xWMQKsZY04JNrg0CizKS4NL3ptSsb8nbuniQi4PoLKN53C6KWP3EYF?=
 =?us-ascii?Q?FmWA7rbOIwYPZ6/xqJpJUtiK4gLKmfl/HeeSGTp2tezE+KiJ0hX2AC4IL1b5?=
 =?us-ascii?Q?pOpzcBou/AaEjLKFGMLukZWRpu+sOKB5Az90z4tcc+cU4An0DFmDA2+8uo4X?=
 =?us-ascii?Q?V+rYfOc3kvMD5TasWayhgHiAtxjEkVv3ti2KxoyImnJJJlqUqb5YwLySU+ED?=
 =?us-ascii?Q?wqggY8R6zvJXVHdAfXfrR2Fnf4gpEPyLtVHw+/YZ0Qu13hpVt3I8KFexQrQX?=
 =?us-ascii?Q?lQ17CndlVoQQo1mPE24NAi/Skfk1Sl2MgI9S6haAPDloYyk+4A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YmWcFAqgQa8Soj3M2Y/oYyaStSf7L7jZlPT7YT6P6fH9GTOwLJU5rw/KGz0A?=
 =?us-ascii?Q?cok/oj7vL0Ii7iwOcQA88BsDG+98q6VuuAo/KGPHTWS/qJVlYbXOiZoNBxjz?=
 =?us-ascii?Q?XtZIN5ORiF5kTsu83n7fzNozH7r6BBwqwVYx8dR/dRFIs9LspjR9/B6CqpP7?=
 =?us-ascii?Q?bovrD3kvSe4j2RPVK54Kfgnme/vwAlqvOlLkLSMEBjFxwwLk2qZ2K8TcRv3Q?=
 =?us-ascii?Q?3z51wNk5Yds995rcz2cQ3jNlAw24t58iH8uFittSAnozB4o+3f3/uNo+qQyr?=
 =?us-ascii?Q?PVDMrBf3bYuqvu3BUT3Xww9SrNIaP8lri14thumg0gwm28sG51xTovbw0mmP?=
 =?us-ascii?Q?U5RI4WbTJX+hbPAeZaWqRPamR53nHL3njPGlGAUwpjJIOxcOX/FRFJdKVKvz?=
 =?us-ascii?Q?i60CeZl3tRTxYZM+01goXLTLCoiG1VKxoQcJXxX/kiBMyzcdLexVM2NIl4Fd?=
 =?us-ascii?Q?/ezE31GtqL9ek+HU8cK3AEHoeObmHc9ZvI+OY4Za7eQLkDLZ1tpGBXj9WNJI?=
 =?us-ascii?Q?aZIP5mJwqS5G/I3ENGkKOqMn8ooaOpXkih7gq2BflvYJTXEwMb2xe8uOqchV?=
 =?us-ascii?Q?VtrtO0MNSIkfzUfD105H9dpMM2FcHuKa+02wx1jF1yX9RXGqhA8pcF7IbkLT?=
 =?us-ascii?Q?G4EynLFFvSC5MDIJeXj0gQo60Zt9w1ZulRlJW8oPI3isyTYpA30Uixmi43PK?=
 =?us-ascii?Q?r+yjFk28vJr+eIMQx98qxtgZeLn2I5csDwB38fkovJUEqRR+P6r4yX+zyGHL?=
 =?us-ascii?Q?hhGMOIQU/qeEr32AAtSr+ex7FQfR6DNOZp6Eu6T1YVSJ4mWd/Qs2n0n3qv/F?=
 =?us-ascii?Q?+JKnfugbfUvcKjwJnKbmjBhkgUS98gmhNpTJH4gg/PJIIvJbcoVNBX7PiJxQ?=
 =?us-ascii?Q?IErDylUJ8aSvNSgR/8g4jdUQhO8YlJuf0PV0WwTex/lkId2iv+ETHuDNYQ99?=
 =?us-ascii?Q?25R7jd6p6eluD3/jE8oBu4g0G+IS0tRyB5dJqqWG3+GWmBmdu72GO6bj3NQn?=
 =?us-ascii?Q?eNtXjKEZaFJHOFjuYtwR1FIdNlVLudL7V6i1AgdNG9teSzfua6qe72DWYME+?=
 =?us-ascii?Q?cpURNb91R4uMxHaYtU2BPvZlsSkHyGlvh80dnxmdIdMBxvidQFcx2muv3vYf?=
 =?us-ascii?Q?SDKdl441Dfbg7YASEpp4gNRh+ifAGxV9d+q7Emxr2Rq48ySZmbF/QYTML2Iq?=
 =?us-ascii?Q?ZGtkeCzUcQ29yGztsr0vYQoMObUVUOF8gbQMwnQESTROyIWAUsH0MARJ8qZb?=
 =?us-ascii?Q?9IBHmvXIqYXQL1WhsMwMw858BHxYTB9UdvnM7LHFtyrnaHlKH64zRwscxZNo?=
 =?us-ascii?Q?BG2nP2E3btMqbsdSpIXW7oUSvLEq5pBIS/Dm/n5p+Uhaatf4MluRPEob2rWF?=
 =?us-ascii?Q?/vpi0pzyah/sHn4G6vGtErNbIzMpqx46LmK30UcNFH97YmVGhIkMlQn6cCh3?=
 =?us-ascii?Q?4nQRR3isOxDKtKfvEj2VQ7GFFCN4uL3JgMgOcneHm9dDCyvbBBkOqC7+rgBF?=
 =?us-ascii?Q?AMNm5zKHE+3moZ5/VFPq/rV9QZUZAW5A8e8h/34wQxgqTciuoWz25IwelW5b?=
 =?us-ascii?Q?T+ZI68RiUP2EQA3R1zZ20K/SdfT9pusaIGAqxml1V1OTes3b6KIWdYVsIlw7?=
 =?us-ascii?Q?EQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df580ec4-b70d-40a5-451c-08dcaaee5c0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 08:06:30.2862 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SsH1JFMZjYIe6jPEHjPrhBsW2tdqIXpjos2df6ollecQVsxP1JogO4wXtqrGlVTLsJRKGVFm1wqmiV3IA+ro/MYUiBkcodzgl8ziWodouJk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4591
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721721999; x=1753257999;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IdGWTkG2h4niwjvd3nLoaCRAwnM/7YEqdhDdDOuXsRA=;
 b=ksvERDmzn8S6CKLc4Y/Y2uQaJMgWg6oeJbGy08IZRfjiruH++3Oix/Q0
 9Obp8eNKSvDoBIsfgxjlnyrKPErW/fcjzZ6HEr6HEK/yddMpHr+wFXTnV
 LtvQRtsNASWS0Grf0m5AZK42t+7mKv6G8vLCZXvHYnOTimOvDbbG9c5Ip
 EAvVaHocwkC2XX/amgjV7LbzHq8K7ENsfNfK0arR7qODUEbcIAzJd6i2k
 F6hEO7R6jr+P7n5q69H5CXgcVBwsHKGbwBDOD7Qx/Ti/Qx7jQSKnyVx+D
 QPy6BAn6vjbyKs+s0Pzob4mcbyiXdzubIAH/E9livxyPJL51/+a7vik8K
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ksvERDmz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 13/13] iavf: add support
 for offloading tc U32 cls filters
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>, Marcin Szycik <marcin.szycik@linux.intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Ahmed Zaki
> Sent: Monday, May 27, 2024 8:58 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Zaki, Ahmed <ahmed.zaki@intel.com>; Marcin
> Szycik <marcin.szycik@linux.intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 13/13] iavf: add support fo=
r
> offloading tc U32 cls filters
>=20
> Add support for offloading cls U32 filters. Only "skbedit queue_mapping"
> and "drop" actions are supported. Also, only "ip" and "802_3" tc protocol=
s are
> allowed. The PF must advertise the VIRTCHNL_VF_OFFLOAD_TC_U32 capability
> flag.
>=20
> Since the filters will be enabled via the FD stage at the PF, a new type =
of FDIR
> filters is added and the existing list and state machine are used.
>=20
> The new filters can be used to configure flow directors based on raw
> (binary) pattern in the rx packet.
>=20
> Examples:
>=20
> 0. # tc qdisc add dev enp175s0v0  ingress
>=20
> 1. Redirect UDP from src IP 192.168.2.1 to queue 12:
>=20
>     # tc filter add dev <dev> protocol ip ingress u32 \
> 	match u32 0x45000000 0xff000000 at 0  \
> 	match u32 0x00110000 0x00ff0000 at 8  \
> 	match u32 0xC0A80201 0xffffffff at 12 \
> 	match u32 0x00000000 0x00000000 at 24 \
> 	action skbedit queue_mapping 12 skip_sw
>=20
> 2. Drop all ICMP:
>=20
>     # tc filter add dev <dev> protocol ip ingress u32 \
> 	match u32 0x45000000 0xff000000 at 0  \
> 	match u32 0x00010000 0x00ff0000 at 8  \
> 	match u32 0x00000000 0x00000000 at 24 \
> 	action drop skip_sw
>=20
> 3. Redirect ICMP traffic from MAC 3c:fd:fe:a5:47:e0 to queue 7
>    (note proto: 802_3):
>=20
>    # tc filter add dev <dev> protocol 802_3 ingress u32 \
> 	match u32 0x00003CFD 0x0000ffff at 4   \
> 	match u32 0xFEA547E0 0xffffffff at 8   \
> 	match u32 0x08004500 0xffffff00 at 12  \
> 	match u32 0x00000001 0x000000ff at 20  \
> 	match u32 0x0000 0x0000 at 40          \
> 	action skbedit queue_mapping 7 skip_sw
>=20
> Notes on matches:
> 1 - All intermediate fields that are needed to parse the correct PTYPE
>     must be provided (in e.g. 3: Ethernet Type 0x0800 in MAC, IP version
>     and IP length: 0x45 and protocol: 0x01 (ICMP)).
> 2 - The last match must provide an offset that guarantees all required
>     headers are accounted for, even if the last header is not matched.
>     For example, in #2, the last match is 4 bytes at offset 24 starting
>     from IP header, so the total is 14 (MAC) + 24 + 4 =3D 42, which is th=
e
>     sum of MAC+IP+ICMP headers.
>=20
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |  27 +++-
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    |   9 +-
>  drivers/net/ethernet/intel/iavf/iavf_fdir.c   |  29 ++--
>  drivers/net/ethernet/intel/iavf/iavf_fdir.h   |  10 +-
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 148 +++++++++++++++++-
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  25 ++-
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c |   4 +
>  include/linux/avf/virtchnl.h                  |   1 +
>  8 files changed, 226 insertions(+), 27 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 85bd6a85cf2d..fb6f1b644d3b 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -33,6 +33,7 @@


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


