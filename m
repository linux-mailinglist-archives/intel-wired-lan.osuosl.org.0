Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EHOaAOQCx2lORgUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 23:21:24 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EAAF134BEFA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 23:21:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7EE961094;
	Fri, 27 Mar 2026 22:21:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bzmRDNMf8Xtr; Fri, 27 Mar 2026 22:21:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C4FC60BFF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774650080;
	bh=AxoDHFqP5kws6UEMF31NZMNUuFxvbKv/4PWk0+CEytY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nlb3v5VfkjQ6gtNNFIYt0M3cmpvq86yaDIfB9gBw1OD+AnIKXiSZK46ObVwHTeT2e
	 C06DeASUOiFG6CcsSWXjZsAUcI3TL28endQV7yXQjmZnJYD2g0P8oZWHWBwJIMbGG7
	 TtDiynLFiumAR9xYd+Mq73NRS+gzegd/DV9oX3j/j1Vs5bixFkM9b745RpNE6m1dHp
	 mgtAtXUBwUqb3deQTkvGIKGBCmaYObs23JqPyt5rzVNEg9pWtAN+d11Jax9sYa1OtW
	 WRqBv4CroBKByMBvOVmZIVrDUp9l3dF3oRuugOGSMhkQZTRMLC77iqWjmhwGJUR8Cx
	 HWFSWkmfqcEyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C4FC60BFF;
	Fri, 27 Mar 2026 22:21:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0B7A010F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 22:21:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E5AF34072F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 22:21:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xCfWuNF2k1xO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Mar 2026 22:21:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DE9A940729
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DE9A940729
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DE9A940729
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 22:21:16 +0000 (UTC)
X-CSE-ConnectionGUID: Ej7R33hnRTyehfuhoL1kyw==
X-CSE-MsgGUID: SaWZ9lyDQOmooo4HQxohsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11742"; a="75633366"
X-IronPort-AV: E=Sophos;i="6.23,144,1770624000"; d="scan'208";a="75633366"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 15:21:15 -0700
X-CSE-ConnectionGUID: QEqxykU8Td6e1YbfsS0OTQ==
X-CSE-MsgGUID: 1oyg6uE+RuWu6KWtkbu3+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,145,1770624000"; d="scan'208";a="222123277"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 15:21:15 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Mar 2026 15:21:15 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 27 Mar 2026 15:21:15 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.42) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Mar 2026 15:21:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IKv68ogBNjqc2nme2pyJOiKui1d62KgnylVWYaxKcZ/jHeV7DtG9vAKBGAhtUglwG7Nj61RkhVdob0GeHUzWBBvRAzy+1068lGCsVxG9KlqNyw+Xu4Da24s6a/FdLoMvdlqeZuVCLhQzri87UZsSyJr6lN1RpipjireD7yL/wjis18Q26xYjjuOCNCsqM/umvBP0srag7yfAgSiOwJFFY9pDjVnHT6fhYkEha+co0gDG3kLLxTXxRKBR21peUg20n/PWxHDli0/bBlbZG2HRGmRFKobohSd2fl7guA9+xjyAppT8Z1nllQRkfUfr0MIJobpMyINDD+ACwL7Y2JuwFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AxoDHFqP5kws6UEMF31NZMNUuFxvbKv/4PWk0+CEytY=;
 b=CMY0pSnKZquZBQEmcdaO5nbcNnCI231ApCvKK4lvcijqeT5ZQRgWAtlG9KcMdunWaX9XhB3707Re8t14C7HXl7aPXvktc8SlD/hkMO7667+h8N8qp2rSNW9ziCstanTOx/lw1NvQRTUEzoNQWRxw1UpEaaWjBRziSqahpkFyi6ecmvblRQU0Mnre/S4pjRMsLFyO6AJWUrrl/nKSBetUKI6jRgOji7vlF3Z+4zVl6B8ijmw3Hsdvj8GAuzKIiQIJodCz2Fy5kYM21Qm/QEqIVJHruSZ2T2ibZYkt3ubisyvNDyXuzwYvdIFKqRvNfNEdCtfKu0HIJDLHaTcVscqAew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB8255.namprd11.prod.outlook.com (2603:10b6:806:252::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.8; Fri, 27 Mar
 2026 22:21:12 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Fri, 27 Mar 2026
 22:21:11 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-net] ice: fix PTP timestamping broken by SyncE code
 on E825C
Thread-Index: AQHcvb376UD8uJ0WX06zNf53QLCEVbXC9Hlg
Date: Fri, 27 Mar 2026 22:21:11 +0000
Message-ID: <IA3PR11MB8986B9F57709CE54974A2BAEE557A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260327074658.2963328-1-poros@redhat.com>
In-Reply-To: <20260327074658.2963328-1-poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB8255:EE_
x-ms-office365-filtering-correlation-id: f23f5052-c13b-4005-8fc6-08de8c4f2707
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: JIttUSeTOP9OboTNj8szwmN9GoJVRvZ9XeT0BoLaADauC7MPYRPxKIxPixz0daurtoiif4aq/Ig6rLhOGTV2700VCj1GP/Js3FN18BVoaOdSjbmfse1CXOh9aWVaqyfjIhhF1wAv7AuvI+4kvuYzl/4qx1KgWbHA/+op4EtdxixCKE3Sm+ZOxTUpAOp3sOA0lOFaWPxxn1yYAy5OFM5Yyd3FfVh68xJkEI3kUrsH/dcVakKPlVcnMHJI/i7V8vJjmGdGVgd/S9kY8HWpry1G5LaR4q/7qSc15zEeNycXKI69s1lJHAzUYACyVqqypzJ20sDbsjQTrCGIbh/eV4NSxUff0DwYwGbc5UBbxpwrKV5JpjUO5QfXVL8p9YqJzAtUaOGB4lqo8P+ZqL5/GPW4Rf6/41zWI3MZweyqL3WF7xVWCeurfsodOezTcoiCpY/tw/P1DG2WeKe/Y2eBNPcFi5IuFKGtLaIRUS5mhtzFoXuZH9yK0kupepbzsDCfcvmmCdvcI6pS45jabusAEADVhYcOMrjSS0Ga0h6TTSQStXzcTp6mWboloU3A8Oc9aKaTHgCXG2MJBKnb6O5fsV3y4EJCNHOqoPBt9s2gTSaPdvy/1xyk7SZMWFbIzrOybl2vT6eXO0qm/ZnzXITRK96g3BGpQkzunpvpFf4aXgzd73zWhwdpVPJIuQDQ6W57yXgnmdo+4lKmWGqsnG4SAfJkg572ekJMuiOUZf/r4RguF49rb8CdWq8o1+UzE8rG3zXD1gr9Hne8+JLpKIkE2DtWuWzZwu98kL07vGIhkVF6aEc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?m8ubmlAWQMy6Hd2SXASzfyPMWIJd1pZogDIfQ18ZRSaQ46vhKUapaekD0GMX?=
 =?us-ascii?Q?70alRdgvNscpYPXPsK1XEpfQXBxHIvhI14noEwooIQ/3tOPy1also7oFTLWD?=
 =?us-ascii?Q?q0RqR5bBanguGMiS2LzoeRH4lbz4f4Ci41U2e6ZAAtqgAlLYUwBJp7qlvNrB?=
 =?us-ascii?Q?FwWV8jxkk2bVPGDmLcr/GQ0y5Z0kqUFRC40X1Ackg+IR/kvsGMflqcW62lWN?=
 =?us-ascii?Q?p/oAi66ZxAl+RB77RaMxRQpzegoX5UUqr3O1jIUoTjG+nUVpFnFbPcR66qW8?=
 =?us-ascii?Q?lzQiG5y/idnsdDdFA3PSzxyp6bGD3WZhD8BrnsQSuOGazC2o4IwnjwRqIu+0?=
 =?us-ascii?Q?XbGiKQGQcYH7zX0vuOGR77xjlE/2NRBX6Xb5RRyp0xNS07wqAPVyTfpN4a93?=
 =?us-ascii?Q?UR9fex08rpm6N5B4qtiOKfI2RGd4RqUQWwObMbdnNlZOIuz9DboLZghfwt09?=
 =?us-ascii?Q?9MUiyO3ZQXhIIPDmlgk8mkKUkLJPz4fDZMwPYQ/IOT2iY03seV4eMmR3uSDw?=
 =?us-ascii?Q?fL6ECvvyA6cmKfbuyWj3IbSNCBMDSCTa9kAuIbuqpObeGsXv7mkQ50GOT06K?=
 =?us-ascii?Q?26HrvTcaplaW4BWwHMhQFoQ3MCNVKE/zEHQQ0/jgHtbhcJu/Pp28wJSSzXYd?=
 =?us-ascii?Q?VLQg26+3L2YEgn47kWtF204BtPH7/pdDMiNch5kPD9ATEO9XCGAKvLUxgdr8?=
 =?us-ascii?Q?x85nu3vvyjq8wdD3kNJ7LXfYJ/y8xDO0IhgWq6fYH7IlyIOkxlg28jk+6yAT?=
 =?us-ascii?Q?7078EmoVEm8wt5kF84t4AV1cxYusTGLIgK9Qi7jjzHa5lFscyH8csxLPi1cZ?=
 =?us-ascii?Q?QhfQVhHbe895QHdvJc6+3ejlokwTX89fxPOBx7XGiQbdX5PsX9hiikRNLLEd?=
 =?us-ascii?Q?ga7+yHr63D0/Pmtx66FgSxaRP8oBtgswbEDvwcmcLQcWV6c8Z792danqaK2N?=
 =?us-ascii?Q?QDfdHbjo9sR4bCr9UTmW8c1jGK+rTS/BuWd9JRKcjh2vH9Pyx+zMOoXOHgiw?=
 =?us-ascii?Q?85cfwibnWPs6R7QNBRduSAtv81ut7xhDGvEj8q0HBJJGOWwN8tr4BHIMnTPl?=
 =?us-ascii?Q?yg09JAN/MXWVN5c4Q0eI7EMbXG2lQyQ+Gmb7APW/4mgp/otOvu6Os+CaF3hX?=
 =?us-ascii?Q?fgzKetfkpFB9ZC9AWSrIz9QaSMO5bZEHRXgJ0gljgA6kCzcEHL19DtSofFDN?=
 =?us-ascii?Q?cx/amMh7IT3JdABCaaUB+RHrRyZTNWD3w0O4rXL9R28a64IL8vtE3XHz0KiL?=
 =?us-ascii?Q?a1NhziXIpectdlE1eaUQBbVM31Gk+154cG8zshTEEkzed6GkqUb0cJsxt7S4?=
 =?us-ascii?Q?As3ra4kH1r9arBnweVzXLWxpPo23Lnz9Evek+2uHTOsK52d1ZTZt81ltsNZe?=
 =?us-ascii?Q?GZZHZQQ5lZsdHCdsV4Qk3EveRFOukckxmIuJwiNL1OOMXJpbwyODaZ76PPM5?=
 =?us-ascii?Q?Ej05kiu7RZUmFJR6EzlOulboTrZzZKWQeu5j0aiVH0/Sndc2fnOLFYEba5e2?=
 =?us-ascii?Q?7z8L5M/8wizix1gMStdA07zhUSTgBaVY0ViWVTcgj6fCQ/d95nKQcMBwoCC+?=
 =?us-ascii?Q?Ib+2IZPJV7ZWl7kDOd1wlXLjjpH3P6lNsyL8vGr05PvMVouFb/MOMK2Dn6Gx?=
 =?us-ascii?Q?BxltslrfnnxINX40ITJ6hg+wRm5mOLCJPvjWA0/2cRUsVoHDQUrwH2joDs4g?=
 =?us-ascii?Q?rbdM+wLMKCiyzgSIf4tKSkXQ5ZnDH4GaBcVdnrEPR8j8gWxAyOMCPaPqJgSU?=
 =?us-ascii?Q?AYSWJ8IJwSfaJ/cIiZ8i2T22rLl5rxg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: cvD9DOPFMR2ljSonL91ouPF+enFT9GNwS4k/CRK1Et249CzH/J6psAjnlWbOUFIUh4fWKJ7i5IcYpfCotDNSRvvsZ3Cm5yV9slI6WsIUpV47iX5PHdp8py90AfyGE4KsM45nmcTnGMTn7wi4RQvE2gmxGIBzuOC2zfVkIbPUrproaJMLBi7DRpQvbMK2OoXcdK/tBu715CH3vKOdedLHn+bqjm7tPIycnyiRI3u8DV0+pmEYxHmtM1UrMiCpmuI9NWigmZCqq4QEgVoRf18oUdHPrjl//2hFGlZHMVImPCxMLwp93p34sHR83DIACWlhUV+idyT2iZM+EZQB4nJxxg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f23f5052-c13b-4005-8fc6-08de8c4f2707
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2026 22:21:11.8155 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4/wuBkbBCXCoo220O29z0jYj9tiHXHvkY62cnTH1uHiYbtmFwQ7s4J6vifAMJlUFxOonuj+h2kVc5UDcH6YLS2gzNqZ5dGYYefrk24+8HqQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8255
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774650077; x=1806186077;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S396I80K2RY2uimb+s8jKqxWm2NpI5JPGL6xCoAlZJ0=;
 b=WNcIWcTR5nVJlThxO+BCJDFu9F9GJbguSxw/49/f9NYZ1nk+6JBWB9mV
 0Za/i36fQAANOf6OZ1+tzniCf4fjoPYVu21U8uPVO2ci7bT9bbNTN3sdL
 enH35VYvE1EI6XtKOnk3FkTUZpcNnCcVJxF/t53PqCHH26koWaSKhauKy
 Q7Hgi2Vm91OC3p0ZMoiqYviX6tNrozV231zq4Ye/J18M/RLU9HSnXEz1z
 S00ixKr/j3CFsWTWP1mDy3Hq5jcMr0DSM4FXeBjUGQ6SDpJGqQeIPqWBN
 ZB3ur1ZFLOWSCvMFVH0WIfRxUhZ8NCfKX/E/JhQFJ5h52hzXqZLB7hZ76
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WNcIWcTR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix PTP timestamping
 broken by SyncE code on E825C
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
Cc: "Vecera, Ivan" <ivecera@redhat.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>, Eric
 Dumazet <edumazet@google.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>, "Kubalewski, 
 Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
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
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:edumazet@google.com,m:stable@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,intel.com,gmail.com,google.com,vger.kernel.org,lunn.ch,lists.osuosl.org,kernel.org,davemloft.net];
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
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: EAAF134BEFA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Petr Oros <poros@redhat.com>
> Sent: Friday, March 27, 2026 8:47 AM
> To: netdev@vger.kernel.org
> Cc: stable@vger.kernel.org; Oros, Petr <poros@redhat.com>; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Richard Cochran <richardcochran@gmail.com>;
> Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>; Nitka,
> Grzegorz <grzegorz.nitka@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Vecera, Ivan <ivecera@redhat.com>;
> intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org
> Subject: [PATCH iwl-net] ice: fix PTP timestamping broken by SyncE
> code on E825C
>=20
> The E825C SyncE support added in commit ad1df4f2d591 ("ice: dpll:
> Support E825-C SyncE and dynamic pin discovery") introduced a SyncE
> reconfiguration block in ice_ptp_link_change() that prevents
> ice_ptp_port_phy_restart() from being called in several error paths.
> Without the PHY restart, PTP timestamps stop working after any link
> change event.
>=20
> There are three ways the PHY restart gets blocked:
>=20
> 1. When DPLL initialization fails (e.g. missing ACPI firmware node
>    properties), ICE_FLAG_DPLL is not set and the function returns
> early
>    before reaching the PHY restart.
>=20
> 2. When ice_tspll_bypass_mux_active_e825c() fails to read the CGU
>    register, WARN_ON_ONCE fires and the function returns early.
>=20
> 3. When ice_tspll_cfg_synce_ethdiv_e825c() fails to configure the
>    clock divider for an active pin, same early return.
>=20
> SyncE and PTP are independent features. SyncE reconfiguration failures
> must not prevent the PTP PHY restart that is essential for timestamp
> recovery after link changes.
>=20
> Fix by making the entire SyncE block conditional on ICE_FLAG_DPLL
> without an early return, and replacing the WARN_ON_ONCE + return error
> handling inside the loop with dev_err_once + break. The function
> always proceeds to ice_ptp_port_phy_restart() regardless of SyncE
> errors.
>=20
> Fixes: ad1df4f2d591 ("ice: dpll: Support E825-C SyncE and dynamic pin
> discovery")
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 22 ++++++++++++----------
>  1 file changed, 12 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c
> b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 094e96219f4565..60bc47099432a2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -1296,12 +1296,10 @@ void ice_ptp_link_change(struct ice_pf *pf,
> bool linkup)
>  	if (pf->hw.reset_ongoing)
>  		return;
>=20
> -	if (hw->mac_type =3D=3D ICE_MAC_GENERIC_3K_E825) {
> +	if (hw->mac_type =3D=3D ICE_MAC_GENERIC_3K_E825 &&
> +	    test_bit(ICE_FLAG_DPLL, pf->flags)) {
>  		int pin, err;
>=20
> -		if (!test_bit(ICE_FLAG_DPLL, pf->flags))
> -			return;
> -
>  		mutex_lock(&pf->dplls.lock);
>  		for (pin =3D 0; pin < ICE_SYNCE_CLK_NUM; pin++) {
>  			enum ice_synce_clk clk_pin;
> @@ -1314,15 +1312,19 @@ void ice_ptp_link_change(struct ice_pf *pf,
> bool linkup)
>  								port_num,
>  								&active,
>  								clk_pin);
> -			if (WARN_ON_ONCE(err)) {
> -				mutex_unlock(&pf->dplls.lock);
> -				return;
> +			if (err) {
> +				dev_err_once(ice_pf_to_dev(pf),
> +					     "Failed to read SyncE bypass
> mux for pin %d, err %d\n",
> +					     pin, err);
> +				break;
>  			}
>=20
>  			err =3D ice_tspll_cfg_synce_ethdiv_e825c(hw,
> clk_pin);
> -			if (active && WARN_ON_ONCE(err)) {
> -				mutex_unlock(&pf->dplls.lock);
> -				return;
> +			if (active && err) {
> +				dev_err_once(ice_pf_to_dev(pf),
> +					     "Failed to configure SyncE ETH
> divider for pin %d, err %d\n",
> +					     pin, err);
> +				break;
>  			}
>  		}
>  		mutex_unlock(&pf->dplls.lock);
> --
> 2.52.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
