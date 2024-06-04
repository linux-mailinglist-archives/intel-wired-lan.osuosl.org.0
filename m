Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 173328FAB33
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2024 08:48:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BAD9361163;
	Tue,  4 Jun 2024 06:48:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SYsaoCMoTwL1; Tue,  4 Jun 2024 06:48:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7F4661186
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717483688;
	bh=6xFyF37Cpj0m5I/fGQ5olK8wp1Bz2G7rxvlbGMnGcJU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yBdJhn1YwhzHPR1IHj2pr0nSSYT0tEKcIt3coWmLMkpEot+o2ra1tt30FlaCVw/kt
	 NQSuG9XJR3Aykj/b7b/puaLl2aEccpZ37HE8ges2RxVNy0czjV33bXz4D/CTx9N2/w
	 40/akB/AjW6p+AWZxYJI+UTpoIwGt0M0SA6vLjvFvSUXORFVSt5lLy+pFnP0yLnSZd
	 0q+bUVljI2uIUCZ3yZ0KhGIZ8YdgO8r+J5McSdWt/zL2zjtCz51mxCiSnTcWO5GX2E
	 nOFK6AG89JAgZO1hwP3Y/Fwb2UDPzG3VHE9v+UqB4/ex+gqvcQDvtaon1Khb2VqEje
	 HEAklHCSAHvhw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7F4661186;
	Tue,  4 Jun 2024 06:48:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B5E881BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 06:48:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A1BD0408B0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 06:48:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L0RmA5INbdTj for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 06:48:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=chandanx.rout@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 26A0D40342
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 26A0D40342
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 26A0D40342
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 06:48:05 +0000 (UTC)
X-CSE-ConnectionGUID: 3GaFPi0QRF2jt3pX8lBp8g==
X-CSE-MsgGUID: HfpC8io2Rc+m+6Nh++xuzA==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="13813483"
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="13813483"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 23:48:04 -0700
X-CSE-ConnectionGUID: fL1E+OZUTu2b9v6XdN7vEA==
X-CSE-MsgGUID: m/yVYb7HThW+tjE0fJC6Jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="37725286"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jun 2024 23:48:04 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 3 Jun 2024 23:48:03 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 3 Jun 2024 23:48:03 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 3 Jun 2024 23:48:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ac8KQJ5vGH6bjLmc8bZFu1rUvNCOZP1WUKk0+Mlharf6LtQeM/s6idV9fM9cfkKt7OU+TO3vPlFSwVHwIfnYU4VAhe94imhhOoNRLYGgKYOSxvNbaIUxPBq3qVaKQfNQzkQfTqyKuOf5iq7ZP9D+SF7vML+y+3JPR/Ekm851vIlHPw1J+DJ942OBiks/KA+KWJVG7ah4sAbqpSOVfLIbZCthsQADsqYnKLiJZz7tWJ8BUm1d32IdWRe9OrYei2+lTjDAitnUkvcjyGlwbQSwB7LbrIAjEgPM37sv/fqa+8Ebld3qS4Ihg9LkdEqDL9ryDJT7P03XM6WV/aoK/FIMSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6xFyF37Cpj0m5I/fGQ5olK8wp1Bz2G7rxvlbGMnGcJU=;
 b=g70oHXjq3bAJFg4Br5wYePJ6fABsq92MNLa5v6Lh9un4hz03TNFT7Wva98/1xM5LJudqxgYEwp/V7+wCfDjSBDKi6/UxP+rTPPEgqBhvZfmLlJ6Zv1/sdUCW5I9ipVGzsvF2Qyq1wsslWyC7ILxNWfZ4kaBN+A2mCwzj3r+j1ns7L5FExULlWqr4SSGl/N468zQ5B6Ov8AGgTMQ4K+j8oUux7iOVr0du+Ky+Ojac5LA6S0Dfdzr8PYZEAgKznHzIfsL5A3htGgYnOshjabyXXgeRoAXJbiKTGYrkPx3B9+IyhgKiriPQpF/7vWSxjSrf6mmY3l+xRG9ATfyLidN3hQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB8297.namprd11.prod.outlook.com (2603:10b6:a03:539::8)
 by IA1PR11MB6244.namprd11.prod.outlook.com (2603:10b6:208:3e6::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.25; Tue, 4 Jun
 2024 06:47:59 +0000
Received: from SJ2PR11MB8297.namprd11.prod.outlook.com
 ([fe80::f3af:9f9e:33fd:8b22]) by SJ2PR11MB8297.namprd11.prod.outlook.com
 ([fe80::f3af:9f9e:33fd:8b22%5]) with mapi id 15.20.7633.021; Tue, 4 Jun 2024
 06:47:59 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-net 1/8] ice: respect netif
 readiness in AF_XDP ZC related ndo's
Thread-Index: AQHasbq8+ndEoO3ZW0ePHzRPGyIDNLG3Mogg
Date: Tue, 4 Jun 2024 06:47:58 +0000
Message-ID: <SJ2PR11MB8297F9B9E0EA71A33443C8FDEAF82@SJ2PR11MB8297.namprd11.prod.outlook.com>
References: <20240529112337.3639084-1-maciej.fijalkowski@intel.com>
 <20240529112337.3639084-2-maciej.fijalkowski@intel.com>
In-Reply-To: <20240529112337.3639084-2-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB8297:EE_|IA1PR11MB6244:EE_
x-ms-office365-filtering-correlation-id: a30df996-6deb-4074-1768-08dc846245ae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?MDl0s45l6OYhdmzeg8gekOTCOEssZVg59DiKjYhBCU/OuAFwYeiIoYklUr3E?=
 =?us-ascii?Q?m9bxvSDUgc1Bpf4iXb81nQrIte4qWn0SaAUkWvUmZnH4GcfSO36muuBW/K6T?=
 =?us-ascii?Q?vGgy3NCgTfzLdNcbHSkkvyGhnPAkiihwTOuGQtRq2e4lpJsosH68evyUvZaO?=
 =?us-ascii?Q?ypycYOEIuEpciE1mnUgMmvQ1arKwvy8zFJL0pR+mF14umUDAwYNYKddkKe3Y?=
 =?us-ascii?Q?4+a9GtS2aEfBude0aYOs16gqqHVVICU9Z0oDoHM/ji6OWcdSP9lMD1E5AZg8?=
 =?us-ascii?Q?Qpwy+kklJ5bFqjcmMIZTDcQMAU2DwHqLplmagRctyg8wIwoL6WrftbEl93wf?=
 =?us-ascii?Q?zgnMn/r7fNwocDtgVtsnONuMofqLn5g+ZGZNeR9t+xW6G01V81dlWyZCQCzm?=
 =?us-ascii?Q?ZAYXrk6VSAUJv61ObZKYq2hlc/4Lt6oa/la0gfUi9s+W03GlHCZrOzfcIpvF?=
 =?us-ascii?Q?sWJxea0+g8GJvEktsJ0TF9fidmgOoLIwdnEEwjIv49vl2GanbNMTxvmV4bRg?=
 =?us-ascii?Q?aOSR6ZnBEy01eYAjCFyNMevCuMj7dexwJIlNEbtfDo9TT9TZUtBOo+KYGK/o?=
 =?us-ascii?Q?r2E12DrvMAvATLA/f1zcWkd6tRvOk5mH9LIdi7J9syTvbcr6TT8ny3YPJQf/?=
 =?us-ascii?Q?4OOyj11vy824OSBPC6bnAHu8PzkecgVYDx9QcFcW4Bm1roMPQ88ue/36vetx?=
 =?us-ascii?Q?at1SbeKodgt19OZGt2A7jIFAxhx5oBphgNhDd9Lzfp77QjdlkHrQhvbsOI2j?=
 =?us-ascii?Q?Hlp7XdaExbhcRhl60b344/onX7WHRW2wEuW+O/moS97pvC5Du9PYq5di+16i?=
 =?us-ascii?Q?OAMACp9agRQ0hRw/Q4GFnaYfSsnh2oN9+rCIBKkaSDqiER08Zdto5c4DXWpi?=
 =?us-ascii?Q?TJEnVaX3qv0QtSXjJl0GIW4tFLtCrq7sbMPjjZnz/rfl2RVtTAnA1V7u7sdO?=
 =?us-ascii?Q?CVYm3oPWQJrZay/WWLzYckTkYwonnAC4WsPQg0rfTxnW7jAVWnWLpK62nlIL?=
 =?us-ascii?Q?m3wzXK33YqJAjFQf2oPtIJIMEdVGqlKz2Dhuw02fwKdEhc77tN0kCyorRHRX?=
 =?us-ascii?Q?OhwU5rDd+ZvbDtYgvXMRAjX6XbOvalrGyTb1bCjBTwn8tVTW1KX3jd3pUVwl?=
 =?us-ascii?Q?QMFaCpy1e0vU2ynIj+6d7PWNvUtQuF5gtmNl669YBg4w+1iC0wce/hnQol6d?=
 =?us-ascii?Q?0Zzm8d3CUlSE8I52invUo8hNHRqRiM/z+4ZQgxbFm3neTUoBZ+gFlL1srn02?=
 =?us-ascii?Q?kxX9sLtAkagdyYEmn+XUj180U0kXiEg3JLHTPsnQxXkLj60eBUx39pppgyL9?=
 =?us-ascii?Q?pFFbrrHTErVMoHuJqclaNXQgJXQYFVQkTf3DRx6fEU7IVw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB8297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3uj9a6F1HhG/8wkl2s8CkagrrTZCxR0OLgXGiOkS9pverb1u+t2I+Gxhcet1?=
 =?us-ascii?Q?JF8rEWjPskKpgaQIMhdb6nUsMkic4COCwHwVMCzttVMScgkKDx2cHxJ2yvy5?=
 =?us-ascii?Q?Eyk3TptMaDvnEWzSHHm/y8k4X5iMW2pRRYJmW6T9U4nVP30y0rbvyKtBtIXj?=
 =?us-ascii?Q?ZIZOe5kXlzVzqvdnQsif1JVr56mBGmeTaSmIKY8jrDdIAf8TSJlVWVFNVX6i?=
 =?us-ascii?Q?LYWijw3YpNQqYKI38xWxsedrTYuxwkhqpJzRdq9hId3FfTo0hQOD4qYymulh?=
 =?us-ascii?Q?3YumqlKEL2HVyPSDSSBso0yJ0e3ubVTXjXmk0QSCpCuGomW0v5xak9ovEQDa?=
 =?us-ascii?Q?/Om8EYw7AnbYbte4mY8xqEMMXjIh70ihOdEigJ1XdvagCv7juREOQOwHFfh2?=
 =?us-ascii?Q?7botMdZ/7qhBQb74/SnSMvJQ5gkN54nVd74wuYhgKIa/WwnaqjwepfXL/KKb?=
 =?us-ascii?Q?annbQdtIGIQng63chqAFfFBDv/rdZ8whi7xF0CGfTZzzj7kk6qq6NLjVQuE+?=
 =?us-ascii?Q?pgIDZp/W4chrR4PUwXT+pw+0us247wT/+gftFbT8l3NUwgWIoNjXr5P0Ydu3?=
 =?us-ascii?Q?ZpEx8p8IS3QIK1+b65C0uIQUdImeKCY/qq1h4gjNePe9A9EYPOPWPAqnVQeH?=
 =?us-ascii?Q?Elvm5rWiKJNfddYUR414FdumfLoszV0uqQMFpABS8wkhyclDOutMvEzNkx3R?=
 =?us-ascii?Q?Bb4DFgJPQmaWMYi4opqr+yX28hbmHRbIyJ2jPHb6n9rJNRurAjfIyro09mHl?=
 =?us-ascii?Q?BqIdcIRNMlOheg/kOMG4VxZFocKwEJQZfFJa5XDY0z/NV8SJucGZUQZFWpxy?=
 =?us-ascii?Q?xolAda9gkDEviaA4H61ItEGWCmNyKmdyuPF0ri/DJP+KSpMcRkC5ZnRPYq5G?=
 =?us-ascii?Q?RcQ/Gd71yZDKvrH5u5bzTEP0PpshZYPMsu9VZApBTwB2MmAXkKDpKQ1jT5Cl?=
 =?us-ascii?Q?vbioej409PLIcyyDaEwNi3IbEhyFi95aADSygt0vMI3umj0qQwbd+JC8ZZF1?=
 =?us-ascii?Q?lgb2ffNk6x3f/yl01ejkG74AHzNZtT8JpNDWl459ORdZa7zYugsITWqjXL1m?=
 =?us-ascii?Q?tR0R52L1p0S8rjp56qvUo44wpTrS/DgFXdkDXRqiLp2OvRRbrnNmZlIKHhWN?=
 =?us-ascii?Q?1ZfdX4XIstZCkzh+xOeSbtKPKTPZsqKsrxe9vsnlKvcbu9lVphwB/qRfeefW?=
 =?us-ascii?Q?/qKHBAzhHsE5yBod9LqHOQ8N5/Cv0SDYlb/+YM6tXFB32n1JQR7jTmJ3y1rN?=
 =?us-ascii?Q?wNZ4Zoe5/YuMlyn75MkhQhRHuyrNTNLHGerpys0Ay4cPN+ghe3rQhUvB2jte?=
 =?us-ascii?Q?S5AB6TnrgroDKW+w3zsGB0VmAPD7LqhL4eYOCzkODz5F0b9L9u+nIpKzhZFc?=
 =?us-ascii?Q?RXL9/G61DSiN8br4FamwY8QFI4dbOER57BVSyypUFSPe2QR3bshqt00Stm19?=
 =?us-ascii?Q?thIygDfPNeXOTMBdpRKPuNk84DskOi4yVkJVLVsJQaj7kVfpE/c8gjSUgE7E?=
 =?us-ascii?Q?9xVJ4b0Fp4fyQzacQyikmBXs9hzas/vPyt496dIS79DMiUtneBUVstNoBJxl?=
 =?us-ascii?Q?yWr/7QwU/Aq4izmstlBOnbCRdbOSYzY8CNqhkbaw?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB8297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a30df996-6deb-4074-1768-08dc846245ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2024 06:47:59.0312 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3+vexUwY/kWuGcLvIrQHEvoAiEr+Pthbl6P+mIo+Ic4+hqHYnnsOGoA/yl6ACzX97wymg0Jqj/oIwgFF9f8XdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6244
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717483685; x=1749019685;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6xFyF37Cpj0m5I/fGQ5olK8wp1Bz2G7rxvlbGMnGcJU=;
 b=R/q6VRAZYX30GSOySgv242WYTyJhJfdalbU5zZDJx/EWYHddlb+oLIHp
 Qe4RGfBFmjn4P22OeY4TOO2dAjmJQha2XYMpbiMPLKPBLhm3iVYmB/EnF
 XuifIApyzSALmNSsArPLpLvqIRzNke1qQo2k0iwaSD05RwYF1CcxsyHsW
 NX/Y8rYXC6x5RaTYP5w422Xw9VP6Oin5v4E39QVvlaBcWf+h/NPwl5Hiy
 dPoOe5NxJK/lv+jJGuXzBwF/dkVLuC6VeghuO1PWtIIwp+v0KNDA/0U/2
 GlVHd2J1Uo83Jax7Dt2SQ7fLkqjzF8R062Civ4qAWD2h5UoSPJlHBraIT
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=R/q6VRAZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 1/8] ice: respect netif
 readiness in AF_XDP ZC related ndo's
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
Cc: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Pandey,
 Atul" <atul.pandey@intel.com>, "Kubiak, Michal" <michal.kubiak@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>, "Kuruvinakunnel,
 George" <george.kuruvinakunnel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Fijalkowski, Maciej
>Sent: Wednesday, May 29, 2024 4:54 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; Zaremba, Larysa
><larysa.zaremba@intel.com>; netdev@vger.kernel.org; Kubiak, Michal
><michal.kubiak@intel.com>; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; Karlsson, Magnus
><magnus.karlsson@intel.com>
>Subject: [Intel-wired-lan] [PATCH v2 iwl-net 1/8] ice: respect netif readi=
ness in
>AF_XDP ZC related ndo's
>
>From: Michal Kubiak <michal.kubiak@intel.com>
>
>Address a scenario in which XSK ZC Tx produces descriptors to XDP Tx ring
>when link is either not yet fully initialized or process of stopping the n=
etdev has
>already started. To avoid this, add checks against carrier readiness in
>ice_xsk_wakeup() and in ice_xmit_zc().
>One could argue that bailing out early in ice_xsk_wakeup() would be suffic=
ient
>but given the fact that we produce Tx descriptors on behalf of NAPI that i=
s
>triggered for Rx traffic, the latter is also needed.
>
>Bringing link up is an asynchronous event executed within ice_service_task=
 so
>even though interface has been brought up there is still a time frame wher=
e link
>is not yet ok.
>
>Without this patch, when AF_XDP ZC Tx is used simultaneously with stack Tx=
, Tx
>timeouts occur after going through link flap (admin brings interface down =
then
>up again). HW seem to be unable to transmit descriptor to the wire after H=
W
>tail register bump which in turn causes bit __QUEUE_STATE_STACK_XOFF to be
>set forever as
>netdev_tx_completed_queue() sees no cleaned bytes on the input.
>
>Fixes: 126cdfe1007a ("ice: xsk: Improve AF_XDP ZC Tx and use batching API"=
)
>Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
>Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
>Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_xsk.c | 6 +++++-
> 1 file changed, 5 insertions(+), 1 deletion(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worke=
r at Intel)

