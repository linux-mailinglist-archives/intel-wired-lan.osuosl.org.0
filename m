Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3319CB449AF
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 00:34:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E099F60811;
	Thu,  4 Sep 2025 22:34:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IUVoALqKT7Cm; Thu,  4 Sep 2025 22:34:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1EB1E60812
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757025270;
	bh=7uRbLnOTkAQte4ccwN41jH/DzNP65Gsmg+hxwVQLUeI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WVPXfYrkFha50oVg6inlHvEtrf+tp6uwYJKRz0NhWpYHO8DYWpT8t0f6RuBPhl7LR
	 sjnrR5aaOMZ9Zlz4HXMWn5ctQ0sA4XaiMLU2T5/OsGX1RR76N2AjPq/aFJz2Hdls8+
	 IIylpYZTNDbBz5INdj0meIUbZUKJBgn3IZlPbR1lTTL0Zm2ifCMZ6TWikDdWxlxo5H
	 Ox6t4nal6ety/GdvwgAinFqnVkI4RRXtZCsqMq1v6WyrQ2ry3uFcoNAvKBpK3ScFTF
	 LlnKDSr+gXMUbvevR+0ufm2t1n26Aet7w1Z9hiJVvYlTGdv7B+hPkxEXhh/59oqps6
	 s+DpHP5ZSROtA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1EB1E60812;
	Thu,  4 Sep 2025 22:34:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6F58CB69
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:34:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6166760811
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:34:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qg96PgNieaqy for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Sep 2025 22:34:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5C7896080C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C7896080C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5C7896080C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:34:27 +0000 (UTC)
X-CSE-ConnectionGUID: /DWO+jWPQ3uR160b69ln2g==
X-CSE-MsgGUID: jrJMdP3STnG/7n3N3djFYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59300175"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59300175"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 15:34:27 -0700
X-CSE-ConnectionGUID: jCz7KipkS5GpnmmjvGy6BQ==
X-CSE-MsgGUID: OdW1RjflQM2ipSDOtiBgvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,239,1751266800"; d="scan'208";a="171903302"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 15:34:26 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 15:34:26 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 15:34:26 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.82)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 15:34:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wSULEnFCAuNSn3VcmpHTSuuJ0N4mhex5OerN+Rx/FHTjQfAGFtseJy+1kaoAIvkXnPOdaH+w/KwrmWNbLlFC5fHYZurZqx7xAa9zIqJb2i7TNFI7OrDWGoeK2Xd09ucyQ5ns8D/VB+jiFcutKrBOutij9FjScUZT7w8A0u5iocVCZ6FjVuWN2mbipAd5TAmVe2mkFlgCOeG2l7zAUMC7aqkudj5MyyRFabrgCCwDOSy992KFL/v3A7uxNPiqpfV9UHNuy93C81DnqPkQiA6lIuyo3ksTZsJJ6zIqI2e8CZNvniI39EOnVTeQ+bsS4tAG2VJpTkwOdv3Yyw/mNOHUBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7uRbLnOTkAQte4ccwN41jH/DzNP65Gsmg+hxwVQLUeI=;
 b=xjXYfS8Zci1gLyXDVJPAUETeps7B3Q5Pzrs3/Pdjkud4SQovjWiBpYRCa+A1H0yu2AzSoN1puqf0zBk7rppCIljstB7rkgaEg9ZEEFOYpdmVVBGQo8oLb+/sPZ0Ufacm6k7rybHfv8XOGTDgIgVeN3Oex/kjp/Ck8Ky+/ZuhLtDAAnJZMjiGOxX9YwasBWTqcpazahCElMu2ysTwEpVdh8pDrvoH2G3iCI/pbOWMdRyIysstA99aAo+ZGVGypudlYuZ/Azpqu2kRDrC9UCoSUFgFc16fOx4iKMUejZuGxfTT75LVj9xGoj/iq97k3ApRRl6yvphdagQ/TOwzZSOwjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by MW3PR11MB4635.namprd11.prod.outlook.com (2603:10b6:303:2c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Thu, 4 Sep
 2025 22:34:24 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9073.026; Thu, 4 Sep 2025
 22:34:23 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Chittim, Madhu" <madhu.chittim@intel.com>, "Linga, Pavan Kumar"
 <pavan.kumar.linga@intel.com>, "Nadezhdin, Anton" <anton.nadezhdin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v7 5/9] idpf: reshuffle
 idpf_vport struct members to avoid holes
Thread-Index: AQHcEy+Rrx2YaH+upkqcT+2aXOAUtrSDsa3w
Date: Thu, 4 Sep 2025 22:34:23 +0000
Message-ID: <SJ1PR11MB6297BEF49DDE82369899CFDA9B00A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250822063215.3911-1-pavan.kumar.linga@intel.com>
 <20250822063215.3911-6-pavan.kumar.linga@intel.com>
In-Reply-To: <20250822063215.3911-6-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|MW3PR11MB4635:EE_
x-ms-office365-filtering-correlation-id: 6360e454-be3f-41e0-09d1-08ddec0332ca
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?6+oSIkpmk0tz5PAM790LMf7ZY1p9gVJXpR8dxFSoHFBbCVSdiud/vGvFul7q?=
 =?us-ascii?Q?w5dF0tz++iCQ5GWWFkUU8oRD66QiKjFCaxcZigDF4u5faWlm8q1xB2WUxV1H?=
 =?us-ascii?Q?TWbhFaGDLDtG1RIPFT1Alz8gG4s/VBpPzxeM0mM9WmO60Pf7hNvwKJdwrzAr?=
 =?us-ascii?Q?AZtcyli5mjNwn0Q1J3V8E//Ikmu1bpw0qJERBUUfs2MCnd7XIZTU5vW+Wuwv?=
 =?us-ascii?Q?XIqe1Oud+3ccREB7w6bNJ+oR5yskQdJspao1080OibqBVPWjzO78S/K5gQLD?=
 =?us-ascii?Q?+IVF+wTQ+sETCZfsuMELHtOWdrKecIHxkjNZJgs2C9wfHvQeLf3Py9dGYSe7?=
 =?us-ascii?Q?Au7rkaGYWcNt9nVB29uMbkk/Xk1JbleN+UFUfJrN32OHV+MkS06oIxJKgPuX?=
 =?us-ascii?Q?Ec0fr74i+zt/FHJ+2j1N7YNm3uLZRYWAJxpzT4DroxwBIereBHP/Zbeutplc?=
 =?us-ascii?Q?rQKnRqSAH2W2GGUe/Z/17P7LfhgZd49PzCbN6UZoYwpw0Fo13Wl3bM5cFzoG?=
 =?us-ascii?Q?PmusHKMWgxD1P4qYgC3ls2uBFdP6a8D6lPYySvF7LM0cGCrYrEvpyPzEdPZP?=
 =?us-ascii?Q?vIEyPb9PgtKXd25LsRIeLhbaubBRUFd8lLuX8+6zbk4U8YTpYH46Lj0FjctR?=
 =?us-ascii?Q?a4Hlbvr/qeMH3TG1wXmG+eV/x1TrameuQpjK4ZnC8IJyhKDB26tq9Zuu6VS4?=
 =?us-ascii?Q?DSGXaPQOdGj3E+1qLn4HN+eqREqI0J165ec2ktA+jnEValeh8mHiHTjQiCw0?=
 =?us-ascii?Q?c+bwdSqRFXqBf70U6Pw+ele8QcMV+zWrXGOrHKy95brtAbHHq2Kl/0LLwkkU?=
 =?us-ascii?Q?C3EMzTvoSB28ELym7JNcf0NQeLwfraJir8yIWW+Y7ssYJNY1I6ZdRE96FLtz?=
 =?us-ascii?Q?nR1DyHn7rNg963meYo0jhRu8J6k27S5foFmGT9W2rkRg9UkIe5cRumSx2mlx?=
 =?us-ascii?Q?yVaqUttIFjUbXukkqb5B/oxsu5BUbbIn0scLuKIygP40n7ihXZaHh4+FHU5k?=
 =?us-ascii?Q?fHjEgMNkFQXJHLXwXo2k1b5dTjJei3QKSQbVU++tSMM9NIG2DAdlfF18Fsll?=
 =?us-ascii?Q?7vjl63VreVK1S40ciwADutVgyg+6KOmWLhNAuIs5h8swKFHyW4lAO2TWu7//?=
 =?us-ascii?Q?QRuCvWhzcyLPqwOfvwRTJeGk9QFjd5G3u9uJklegxIxJjC4vkCmTNeQhfXsC?=
 =?us-ascii?Q?XLimHf3LX8Pp5UFWDA8u1pp1HxvipXN5pKoUS0vnQP+dzpCpX1h2HQ8q88Kx?=
 =?us-ascii?Q?ONf6ZNDId/5JWZ0vKzt82peVAsIvnAyEJzxOscLvLibf5wgPOC84sWFQkok6?=
 =?us-ascii?Q?AmD4llFflFakkT9XjRjBHUIDCYn08TyI+aNzCghZX/VvAZejBiDDy7arY/I5?=
 =?us-ascii?Q?UXLBQ+W2kxOJnqaLeAgsDC4RAKNJbGnkcdiaZTuS7VXEhreFHonYTMHwbggj?=
 =?us-ascii?Q?EqBamesA8pru0Q7wx61QPHulL5hq1IcnTfnhh45cN7xVBENaXO69eA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rk00PZvU575jsJcjYDIyWCB8inWbZVBDtSx8wYCJcDIRS0prsqc5sPIj569W?=
 =?us-ascii?Q?MfLNe9TKstgtHPcotGPkpwqthIyB+H1Dt+WKsY8ACGBPnyePjyoNi2WtdSQ9?=
 =?us-ascii?Q?utVGGa20On4cE5uKPDHlMw0NJwZ0uIKL9sWZtpmQei5GNyeJkfJsu7wva429?=
 =?us-ascii?Q?WvG4OuQZqUfKj67eCdAkHL0z/pFpE/Melon4UBqE8TeaSryDKSkZCkpelO61?=
 =?us-ascii?Q?f/ZKH5MdG3nDlwMd9cLEAlCoi02b84lfmTnosVRjgVxBMk9SPl7RXkJqBqmq?=
 =?us-ascii?Q?ugVEhNgFPcRHW3+hWragIgGk8ijZzBWvyWckUuDL+MbIkJZa9IurNTlZGCKS?=
 =?us-ascii?Q?i47cpx/MWdafUbbUA8s0lJVqtfgHTMuwB8+jqLCedF29+Pi9UdZEbqSMSXlF?=
 =?us-ascii?Q?tUD8+XDwASIWa2fRQt1/QTpXcxr6vY59EqyEoFR+k3mHhfD3JpmLDaz0bqqq?=
 =?us-ascii?Q?miV3wHw/TwLOpIeebvJibMl8CQsabyNB5GSJBfqepEKeQd/Z3Vo7zJPQSz9o?=
 =?us-ascii?Q?8uSBnybQgQ1zFcVq1ZiPe72a9J1lBS0YhTC9whfuVfiSgRZrNpWXDWUZzyY5?=
 =?us-ascii?Q?NFymTprF/wOxXiSz9HLP1N8O+YNbs1XcL/w/v1o7ShPGfCDm7Lwx1sFR+1/w?=
 =?us-ascii?Q?HD+PGMA5NC9FRR9I/8cIa7AmtP8bB+QeBrSD4EyssyfvCU6w2lcFXip7UM85?=
 =?us-ascii?Q?RP6WIodKEqdFXmOmxwx+Lmlh5NdrGvOCyv2xQXNBQ+l5JBmQRiKVa2xxQNV5?=
 =?us-ascii?Q?9kmO0t0HqOhBGoCYMGcZBgKVhdYvSSpVA8L1ZF9vutuaRXZVPEiP6k2umtWD?=
 =?us-ascii?Q?/XHgYJm8uvKk6VdmWA89oDJKD/A8ezqVRuuhaJEdLpBfh5OHAV3odn+qd/Am?=
 =?us-ascii?Q?29th3vGHc76RoC+BUaW6920RptnNuPMcDPAmm+ZECvvh7yHBppVtiCDY8uw3?=
 =?us-ascii?Q?nxqxjUYxW+WYMjmK3Hu+nc1GewB8dOSElx+NXQGLFwg475K26Aal96p5xqyV?=
 =?us-ascii?Q?5Ej2A3YuIm0iGRw5Y0BbPNfSIhFFQ1h9udP6ST/yIMvVi1pWPSHsbuH1Yhaf?=
 =?us-ascii?Q?rt6tGpga2pucrYbl3GTeTCYVVhr9U2CSzTVvuVPUAF4z40mltuA233MQeJbn?=
 =?us-ascii?Q?vBTj0L3JXRxp/WCq8KTUV2fz4f6Wp2fPwIysSWMk1nQOz2TGBpDTtICcUhcF?=
 =?us-ascii?Q?dTj+OoG05hzVP93K4Ghm47/AG+nhcwPwnre8ql42XFrv6broMYdU0UC4Niz1?=
 =?us-ascii?Q?l0EQR0WbDugkVMkwG7KMzwEY4Z52Atfve1zcJFjCNMngNQ4iPnq1R4GCdGZp?=
 =?us-ascii?Q?2gwLUqeYEG9wIyOh4Rrs+3FL4GVsBdc9ju8Z3Kd+U2YdtSiVyDEhgrbGP+eG?=
 =?us-ascii?Q?Vm3uLPt7UgZEQF5FYBQT3yy+DIduaGrVuv12W+zacGGMJj9WdzOcyGuPPC7m?=
 =?us-ascii?Q?4B3up7U3LvFJG0tZFITcZtqBzGCOHNO/7YfjrJeIfbBbCg25NSRdwf5Z+k0l?=
 =?us-ascii?Q?s6o6nL7hBtD0oCAduANYBnm+jvAwMFkH51JQqHiiLQg7bbU9yXhuV/i0PZno?=
 =?us-ascii?Q?2lK+8Ve/bfiJR5+eafrnuCv8AHPsgcpjGzT4+FK0?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6360e454-be3f-41e0-09d1-08ddec0332ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 22:34:23.7340 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5N3cTIj3LE1XA0Y6IyE0O85tVH/9FT1NCcx7wE1ALgzFWztwv/Up9QmMlkoiTjSW3U3T9mgigL4JDCDKCCLg1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4635
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757025267; x=1788561267;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7uRbLnOTkAQte4ccwN41jH/DzNP65Gsmg+hxwVQLUeI=;
 b=meWraD+J1Ijs+Ftk9NBiHEirZ/tVn/LpLIhux9EFoRgahwTaJeZHe2Gt
 CUAMVLYF9b3xAfgZ182JoSVBsdj9blc2gYP+msL1k9m0W6IO3uuPYOhzY
 tRRSsKcWYS5SuHTra7Vjusg7p533JaEi97uFaXj0a8DTfTR2TsD2b1C3O
 6PzrScfvswGS4N4oystmJm66ePNFnnoaUatYCqcADI+fXtNUd8xcBTmb2
 rC77mzUHm7tHRO5AHh0j2L4VCRkl6B7OENn1mPEmCOvyAOTgbun14vzhW
 40buAOc5fQfjFP6dbh6gW4POPmluQjh1ByxrAsslzIWaz6Xjps6NKROZs
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=meWraD+J
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 5/9] idpf: reshuffle
 idpf_vport struct members to avoid holes
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
> Pavan Kumar Linga
> Sent: Thursday, August 21, 2025 11:32 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Chittim, Madhu <madhu.chittim@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>; Nadezhdin, Anton
> <anton.nadezhdin@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v7 5/9] idpf: reshuffle idpf_v=
port
> struct members to avoid holes
>=20
> The previous refactor of moving queue and vector resources out of the
> idpf_vport structure, created few holes. Reshuffle the existing members t=
o
> avoid holes as much as possible.
>=20
> Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> ---
> 2.43.0

Tested-by: Samuel Salin <Samuel.salin@intel.com>
