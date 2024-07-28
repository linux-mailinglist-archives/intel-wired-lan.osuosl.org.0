Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D0993E725
	for <lists+intel-wired-lan@lfdr.de>; Sun, 28 Jul 2024 18:03:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 378FA81138;
	Sun, 28 Jul 2024 16:03:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id syoAtMellg-h; Sun, 28 Jul 2024 16:03:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C40881139
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722182631;
	bh=uByVjRLpBDxSEAcZGHnmVf44kNF7qnhu0vpZZg69d14=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bjrViHdBnIaxZqTAzZAT0wWBIvXlpB4QFl3WgIrsviWSU/nkJX2iKvWK6SxXyViEz
	 g607z0hM/f6HQsdY+6184+ApfoCOnlftXsIdJSCLoopBRVk2dVz6QeU1HOWZGuTqss
	 rO8y07xSpyyM/BW1t/95FZTDpbgsRXHdhF9SBdfIyMoQuSdRV/IGNVD4wlgPdT3/UF
	 1cJaraGw/q6XhwKWa11k4itHzGZrxsgIMGckzqay74v55zgkAmpMjGz3RICqAuSTOE
	 2dmFhV+HsiF8oqx+DRUgKlCheYNvgex6bLMI6nHzy5bC3KPbfawASnFn0KzUBXjYWr
	 7mevb0XsPfSVA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C40881139;
	Sun, 28 Jul 2024 16:03:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4DDA11BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Jul 2024 16:03:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4679140308
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Jul 2024 16:03:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0kUk0XmJ80EQ for <intel-wired-lan@lists.osuosl.org>;
 Sun, 28 Jul 2024 16:03:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CFFDA402DD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CFFDA402DD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CFFDA402DD
 for <intel-wired-lan@lists.osuosl.org>; Sun, 28 Jul 2024 16:03:46 +0000 (UTC)
X-CSE-ConnectionGUID: lEdcXiY6Qtu3i1o3y25LCA==
X-CSE-MsgGUID: 9c3ncaUlTUqbSKoW+74kQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11147"; a="19526574"
X-IronPort-AV: E=Sophos;i="6.09,244,1716274800"; d="scan'208";a="19526574"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2024 09:03:46 -0700
X-CSE-ConnectionGUID: 4LshcSfmRzqpHphnbFuznw==
X-CSE-MsgGUID: BttFbn8OSdmjS/Dcs8G6sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,244,1716274800"; d="scan'208";a="53398449"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Jul 2024 09:03:45 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 28 Jul 2024 09:03:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 28 Jul 2024 09:03:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 28 Jul 2024 09:03:44 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 28 Jul 2024 09:03:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wO+wDhbrMqZdLCe9a2VKHauR5aBYXrxMJKHRZ46TuhqydHxC2uX8Czq1ZCdurUniGwhS6JsyFUCJ3KocNXSHtFCSgIhW7d20bqcQJLofpYz6hJYvD3NKNL1GODKc0DmF83eaQCgGlqTNea4/M+F2M6Pka0H8DkbgLSA4o3DOxLUTX6E1MWStjbfc6MByQCgZPbLnLP59w4EIrs5guQvcVzWimwbic6CDAt2xxwM26krPamHGA+XIG2xzqaQtk7yp8C/uLJt85kxZFlBthBSaV9dILOw1e9E22W8luaMq+G2u/H30zsgNAZCsB/yQh6zL/F/ChC6h4LbdPpDIrViu7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uByVjRLpBDxSEAcZGHnmVf44kNF7qnhu0vpZZg69d14=;
 b=lSLtBEdLuIx8W6pKxf6RK7uVt1I/ddGX/kAD25fpzjSo+ee9N/tw0WIscyXJHV6CS1pBSSxLmBLn4cPeH5XD9C95Rw28ES4CtTYyEBhgjw4tq6WcoJrJ0NYJf4tJ2SSu0TbAsXhXEup5IICkjkJLXcnFv2zcMEkCZMY2XqHOTzvdcYCVuf84ESuBh4yGt7UfRV7Kt04m3tV6nQyTHdtP2k3ThDSSoQ9gpmn6ToUfdaDl5KvVaRYxNxnuOfmjH5eLgjsPdXOV7WQTO5FZCLbYzuGTNTsL42kdE7jjK4u5iz7sUDIDvEGtMb40UI1GONOI6E1vgSiM+wPBOlRFwkv66A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by LV8PR11MB8533.namprd11.prod.outlook.com (2603:10b6:408:1e5::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.32; Sun, 28 Jul
 2024 16:03:41 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7807.023; Sun, 28 Jul 2024
 16:03:41 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 1/2] ice: Fix reset handler
Thread-Index: AQHa1s1uXBlOoWMP4kqH+qblhdL54LIMYXBA
Date: Sun, 28 Jul 2024 16:03:41 +0000
Message-ID: <CYYPR11MB84299EF1F015D333C168C7F6BDB62@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240715153911.53208-1-sergey.temerkhanov@intel.com>
 <20240715153911.53208-2-sergey.temerkhanov@intel.com>
In-Reply-To: <20240715153911.53208-2-sergey.temerkhanov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|LV8PR11MB8533:EE_
x-ms-office365-filtering-correlation-id: af1eee5b-7c3f-4ef7-f60d-08dcaf1ed986
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?0liHZ0qiuDffRnsbhbqc7YR9J0XqOm1VBuEGEh63xAGLcnu3nlUBXs3iO9Hk?=
 =?us-ascii?Q?SRYQrHNey1lt/acvSPOB5TJtDdwax2OlV9aXx6LG/a/FunXDzVOAabZPRQKy?=
 =?us-ascii?Q?XGoY1mjfljiBtPfRnTPCTLNvspQjm1yGp947plW9HEcFCRWWIc7+E9bBpTO2?=
 =?us-ascii?Q?ihUFIXdf1cnIdnOXvD8B5sC9FXlL8QwWBUwoMT1pNspu36P+Fe3zlJbh5OaZ?=
 =?us-ascii?Q?jxYeSop+vd5GWKYIZaRsWxpmMBTOJGim35mMxPQFS9/8DckpaV8s+xtPY3JA?=
 =?us-ascii?Q?U55XAC2Dgz6hvrBMkJkDCMfbuCH5/NlNoejTLrY8lvUz3GoRIRYrsB9aQp3E?=
 =?us-ascii?Q?uy1LNC7n99qbWdmtb+/jWSq2xwBCM1sSvrNlNCfAH5zjV7lNM+rqdmOL9R3X?=
 =?us-ascii?Q?p+1py077iA1ce1uX9hlcZa+AKg/jNVcVDkIZ6HCURSrNUsePbmIg7ZsS0/+p?=
 =?us-ascii?Q?UulQN0cx914WjxQLSTSLaBdx+M4rKBTnvC/N3w7kLTwotdx4DtuLUvc+lc4h?=
 =?us-ascii?Q?ir2RqcKWJdu5791VbYHfc0slzvU5W3KLEBQGm0taoa2JvNZTVEmglrZ71gIh?=
 =?us-ascii?Q?kMTsAheSv6akablXtwXkdXliO3vQXSYHkws56/UbsHHQBJc0XX7cQZQBJ1um?=
 =?us-ascii?Q?Y0idq4Q2IWrAXikRRbI0nDd5/1Xy3XDZXfp1hsgAE8zrgeCrLomp73oX1PLn?=
 =?us-ascii?Q?AJ3/S21AlmpAE8Hrwr270aWGGsvasylZpeyopUCtke/MyvxWFgeY1SUimuLk?=
 =?us-ascii?Q?wZiMY2wObqYTRLMuo5dc55DDwbmVBk1mK19+eAphZYYTHJ/PH9u6wwZ6ciV0?=
 =?us-ascii?Q?1unQX+Frs+/KJLj8Bdq+zMxCu2gbeSMcyY3PxpAFyqVNjFH6ZoFzygBY3ie4?=
 =?us-ascii?Q?5yL4nm//YF/LE5gqnM7/f2WuDlggOLtd/N81dgX3OnDx6o9fx1c/Bi3l4p2b?=
 =?us-ascii?Q?IjjVHJBpeqoHBsBZWa7m1yBiEw5TY+l+tqqy2SKY6EeKKlFeKp5TiGs4wiuU?=
 =?us-ascii?Q?+IJxozmc7d7Z2Rduiv69nmKMieFhvofdsM8Z7t14pOzywhYyjwt7lzyK/ZR3?=
 =?us-ascii?Q?KXHC62E4GlqEZAQVPV9KoxRI+Iug445XhAKLJunVwsl0Akk8ER1k3zjJSao5?=
 =?us-ascii?Q?uf5CkT9PMKO7kiqtNsJZ8E9o1YfaQFBghtD0Q3oIqIVAmnjYEB2vuvpDY/oW?=
 =?us-ascii?Q?DM1Xrh0eT2OoUnjYvZMpN5dkYrAxaN/MF3zeGbn55NEkH6wjKRmjj5y0vYWR?=
 =?us-ascii?Q?KfXcz18fFBT9RqPLwi+cEG5fburHVmiUk626N6AbkLvqQSS8/Eaeia+6Yw+D?=
 =?us-ascii?Q?uyPDyJ5uiFfP9LVTedrgASZFni3566Aso3cQHmlNZPGLda/yBkDYgih4VSZl?=
 =?us-ascii?Q?nIkAcIPesFkRVZ+lP7vXIcNGspr+tzqbWnk850GgiLzT6h4tYQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?K1ThO6PtEw8GSuim0U4UitYCGEGxG2BvSllanEsfDetDYCGgrvhs3SdSM0Kn?=
 =?us-ascii?Q?9RYAFyhbkHudxapYdZ+okRHEy/RlyIpFto/KuNtT3sWZ6vkNGrzd6NDBfXmq?=
 =?us-ascii?Q?B+TRF09rDmMzb761R5t5HsIBa1+EO/SOXxHJWliDQGnqlknrBlO/kuvByBDf?=
 =?us-ascii?Q?PddE+Hzq1N1pc7idrZ0v3Ffpy/lWNSTA6Us+hRCtbp0XEwGw4rOvWbhvoVu7?=
 =?us-ascii?Q?FefuRc2KHD/DVv6fQJ+tFgSUhuTjIwE1xFRZ6gurs3VqsBQjLooBD4vDPdtL?=
 =?us-ascii?Q?cHrZoVCLFAMXHVobSO4BERGsw6M1EY4MQp+8HI/UC6L6q4jXZAsd1wJuRCSt?=
 =?us-ascii?Q?JiGhrvGWt8gZciM97CDaCROZ1csLuB4xbZpFMkfMKySrN4kdaYXjweBiajah?=
 =?us-ascii?Q?RwNYtfxs+DE15zfBw1AHm/oF275M1rYv4iP8rrVHC4BNKLzKsSLc+KDLWy38?=
 =?us-ascii?Q?sMkRpvl+tFIhyDomfEoL5MjRP/MA0l/38peWwM4jhyXoK5x05P08Jaoiwn8w?=
 =?us-ascii?Q?RoBgCZyhiqSaUzBBAQ4LVK/AcjKGU42ymb2gWO9glGd45zyi7mmybICjFOAb?=
 =?us-ascii?Q?NqvLWioYDfqEo/XIde44mvuhDD9XrU4FqrUbE5A6Wlt4kwMEfuBURcgFXUbQ?=
 =?us-ascii?Q?B/Sn+HRWMGEYpi1UQxzFaUisWtyOommKGpOz2ernG680snuo5KqNgYG061Yg?=
 =?us-ascii?Q?ZVW1UCwlRVG6scMwg4FGgTiBRDFNRycyhinHAg4rNbzwR2TW2tWDfnyTXH0/?=
 =?us-ascii?Q?y0wEVomXfxSrhmWCxf1IWOifTftVeFaEPmPZEiRhNQGXJfpVrITZ4ZFPhHuJ?=
 =?us-ascii?Q?l/tVgQe76sT8mzZ/utM6AO9b+7tzAuDAB9EbYxEiEKOkpeZIp2mFdnraIB2p?=
 =?us-ascii?Q?gbEbFno9DPLua5pQLlQN5UyMFRAFCjIJUEsQpZ/wtWRq04VWHyZebwWLloa0?=
 =?us-ascii?Q?Co+2Hw+Gf68AWyhi5khQPuDc4avZQPnnXLhE74qsX0/FKfaqG7+ZnW2hFzjr?=
 =?us-ascii?Q?6yOrRolx+GlZNhkl/Z7r5l9tQo0nCtJYE5az/zzwk37FypPWxoRmcEiQBOOC?=
 =?us-ascii?Q?CHA2hPdlMEWYbs3vN3+QtDvSq6uxZ4F1l3pHL7yHt4HZCU0v3Ang2YctqRt0?=
 =?us-ascii?Q?pvjlTuMSlsw0ipy6d4y+o8D74GB0F5iNrofe2esRIEggWXJzGX+RZOB8uoGK?=
 =?us-ascii?Q?v5w/NqV9V5M1UtIuBwMj2CyoRfHW9F4KVciQr1Yr6QV/wHVXQ8iwrBP04cCu?=
 =?us-ascii?Q?dE7spd3fjBjX7rQh6TZFtD6q7SwXxvKy7EE41xyDXZ1dsgqlHYEa5TsvleJJ?=
 =?us-ascii?Q?FcZ3iwKSF7XFcgswOjXd11sLkpaFQQClL3O5sLFJtcjRciLESzabHuUzTuLK?=
 =?us-ascii?Q?aaXOYSVnnTwIWt2XQtEJYyr4CsyfTX/bpTQxKCzTL1ezpHMhdVt6B248yBqi?=
 =?us-ascii?Q?GXHMsE3CdhpRHoeKfJEiLKfR9WIBrAROh2zqB4PbKbyS7Ei/m0vU4eg8ZPgO?=
 =?us-ascii?Q?ieM1KuFJw8gUvQu/AAYFb9ezgI5J1J34G53IpR/t4JLUR9/mICOM2uBGf1lf?=
 =?us-ascii?Q?VP+9FoQ2MsyExcmVEVsrB0qYLISkzzNrYdvFY8cMH3xUy4y3pG/XtHUxZnhB?=
 =?us-ascii?Q?Pw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af1eee5b-7c3f-4ef7-f60d-08dcaf1ed986
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2024 16:03:41.2815 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RugVldxv96Odgxw5KYg1A6S8FsgjKPUWbSdygwGim7xbPAsDma+O/Ph4GnuOzaW3MPGc7U4jP+RPBRdwavcOqs3USQPsuah11SEXgxdtfH0PnvoZPWqFp7yho30B3Cqq
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8533
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722182628; x=1753718628;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o3gJSctmkU/r5QZwaQEaAniUWPl1sKW+9MtkVt5psrM=;
 b=e2erJkrnv18bBgx4Dqap3XgNxrDYUawHx6bqh5V92u+4Y73cONfmMvK0
 adcLCxBOno9b6GrzmBucp7GW5r2veTtq0SJl6b/8RRI7uVtFn9xn0F+64
 NH2QKpG4cgYfgy6FIO+gCpqm3f7qcnZtIz9PBcXcnOUCz1CSs+8Xbgpqh
 EvXyeFnZLl+Ql0esXKIYsLh+wP7HAOWxQfDpwuAyPwgqdfEXii2H6BZ2R
 fW/Zbkxm8kFer1tdRz6Q0etS/5qX9QvFu+TJxJdv2dNWOCCpHCK05cz4X
 lQJTVYTie9K4/DccUte9/zOPTJQr35J6dCLn6O0e0xDex2aGmzq5yM/vM
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=e2erJkrn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/2] ice: Fix reset handler
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
ergey Temerkhanov
> Sent: Monday, July 15, 2024 9:09 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>; netdev@vger.kerne=
l.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/2] ice: Fix reset handler
>
> From: Grzegorz Nitka <grzegorz.nitka@intel.com>
>
> Synchronize OICR IRQ when preparing for reset to avoid potential race con=
ditions between the reset procedure and OICR
>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Fixes: 4aad5335969f ("ice: add individual interrupt allocation")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 2 ++
>  1 file changed, 2 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)


