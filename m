Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 65529B449AC
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 00:32:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C130660814;
	Thu,  4 Sep 2025 22:32:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lJnAo2S8TrfI; Thu,  4 Sep 2025 22:32:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C33346080B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757025162;
	bh=KG6mY2S2Nx2Z3hG+pTH1mupc4ngHHt/ZWWeiDEA7CXY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=o5pd0F8m0HYcbXP+9cZ+yW9TO0L57pAIRiC6NQmKyGWEylOkhCd6db5unkzr4awll
	 8EnpBgrGsZ05LapqW4ZsbBMSCEcoEgCNxpAvQE3PKeowrFOZSF4KmRFBFC/YrqJDve
	 jNRRfniRl22QcUmXVU/IhoYgMn6z7VOBg00jYnh5fjncFdR2A9Wz1iqsnrXxlXWM4R
	 snQ73nhiKR0TW33Vbs4EuhQFH4zGTKSZDYiiVx5vMXea74hnckY5Km2FEqSrZ4JPUf
	 9SLRU6S3Hxug72aymwQFCXZX+vsrMIkxyRw1EmkblQXbQ0+GlTPNc3o9mVGPg9a72y
	 6fU0a7n3HHyKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C33346080B;
	Thu,  4 Sep 2025 22:32:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E4E36B69
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:32:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D516680ED1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:32:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BpZNXw6vvcoF for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Sep 2025 22:32:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2A81D80ED0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A81D80ED0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2A81D80ED0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:32:40 +0000 (UTC)
X-CSE-ConnectionGUID: eOz29RHWSg6fLPlMkOpung==
X-CSE-MsgGUID: 8vuAvN2MTZibvmC2r+WnVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59330861"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59330861"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 15:32:41 -0700
X-CSE-ConnectionGUID: oeNDR0gPSYmdK7A5woE7Gg==
X-CSE-MsgGUID: 8ED730buQ/is8SjSDjAGqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,239,1751266800"; d="scan'208";a="176349700"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 15:32:40 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 15:32:39 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 15:32:39 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.78) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 15:32:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HRSViWjjKsWf1RfZhAgzoWIvGVk4o4PNsexmRsD3NEy1a5ZvrqDRH7mH9z750zhRbYkTSBdyAvuj1H0fQp58J1MiKgeg5mpOWkqLbxqxqLfNIyyYbrc/ukibYitUUgXP3EIjjePIIM/oQe1Oud92eliMSnmyHUDFUlDnCKD/HjCE9MWMtDcAizCZA+yc925asRP/OxxZA1y2bSr8hcF1NrHZEJ1oxlP359mheHQcvM/0vCQqgWSQYfNoqIuyz+Iyi4YgW3fBEEmnYarRT3uYio3N6zsGa5+XgR5rGltQqBQjTk6b4WU6u3JRqi74MTsO20t6cSTfyl+MVwe9VSdUqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KG6mY2S2Nx2Z3hG+pTH1mupc4ngHHt/ZWWeiDEA7CXY=;
 b=YjAXMU2znEyy6EBdY5NcDoSqM45lBmVTXv8xjG4h0j2bruRfqcMrEkKPvtw79jdaaYibfwDPVfVON2JWHMHhgJ9MAopkTCl9wiWr3EwT3k1s+jfyf8RDHb5JhfFkBG1/WxSbjy+Rjc07PKxUR0NaJaaKEgIgWe3/C0fxu4czreJVei0h0sCUcsGcwYreyaISbENgos9kqAMIEVtUGJmZxE83evWoBybbf/ZjWkD4YreywR4PiAWXC5CoHUA8OedFQ52jQclfDTfnuHwOhgKk0aspbUbHTU1wHAsX+BbNjlzSTcQpHFfjQvDO4cwdSHhst+7XMfMyvvhALu1SOlvvPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by MW3PR11MB4635.namprd11.prod.outlook.com (2603:10b6:303:2c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Thu, 4 Sep
 2025 22:32:37 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9073.026; Thu, 4 Sep 2025
 22:32:36 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Chittim, Madhu" <madhu.chittim@intel.com>, "Linga, Pavan Kumar"
 <pavan.kumar.linga@intel.com>, "Nadezhdin, Anton" <anton.nadezhdin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v7 2/9] idpf: use existing
 queue chunk info instead of preparing it
Thread-Index: AQHcEy+TTmpDlYbl70CmxnGyCZx1p7SDsReA
Date: Thu, 4 Sep 2025 22:32:36 +0000
Message-ID: <SJ1PR11MB6297157DD5D0688A9FF35C3C9B00A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250822063215.3911-1-pavan.kumar.linga@intel.com>
 <20250822063215.3911-3-pavan.kumar.linga@intel.com>
In-Reply-To: <20250822063215.3911-3-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|MW3PR11MB4635:EE_
x-ms-office365-filtering-correlation-id: 3b4b8733-2af3-4414-81e5-08ddec02f302
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?OJU8tA+OapW8EuM10XQ+LnSj8yfoFCdj+Silzgealv5JsGuPs2u+mnGLaUgt?=
 =?us-ascii?Q?/6XPtCVWmZUBKjuN5UZ06bgYCwzrKAYB3HDKpGMwsfca0QLMqV59FUCl46hg?=
 =?us-ascii?Q?GblO1j76FwvC0UOlFThH6yM3VsJfFWixpZ80Vve+KN0nas6c7gtTU5AU4fDK?=
 =?us-ascii?Q?6jmDV+W6DbU3gy4R9NRxyC9MJvVfuRUaYuSnQPUN0H2dfxPIw4ZyZr23gBKM?=
 =?us-ascii?Q?YJdRn+EK66FCEdqDktGkH6rYn214A7hfnOeARQ6FSH/C1PGv32x0Ka2Q8wYp?=
 =?us-ascii?Q?17D6mS0ZzTZuqtGHQpXjUT5BrQBXFW75lQOG79/kTrR2myJJSoFFjeQVBRlt?=
 =?us-ascii?Q?AuhD1a3/RgIYc53PeKlQQGoojj0C8aIP39/cJ+jtIObvPnxKABbbVKVHAIfh?=
 =?us-ascii?Q?A8P7GJ120YKYJekcEdMdDdHf9+5WybPux1cJH2zaecXuNkYOJMr8SKvkGrNr?=
 =?us-ascii?Q?SLoUYkffuYlbzb9J6wmi79m3XXStHrmDpakMvsFRwpsJnH2+GEYUvh82Cshh?=
 =?us-ascii?Q?MTHZgeqoB6V5EEZae4JbAuw5WS6xOzoFiISwhNQM/a8jN7BCxn6HXom4SCJm?=
 =?us-ascii?Q?JcklX1B+fNhjBqqEQHyR6zzd2wX///zifWWriLsjSGrHF1kBQUWP0Y7yiSts?=
 =?us-ascii?Q?KHD0ETJlV4wIQ2bTDBILMbe7RbAXVEcIOETBvTBzZbOceYp1jpoYy4s0VROp?=
 =?us-ascii?Q?XN/1XfuZbT3YqydrSZRuxqSWlCRK+QT1ohrlvTPZFL9WEKo7kErejR62iKO0?=
 =?us-ascii?Q?anxojSt6aW8ZRJVuCkum5FUE+ySN0Z8W5V3a0rto23Ivs3xlmaF+Y+ySzyZ6?=
 =?us-ascii?Q?wMc0mPdXbdiVz16OIFkO/qWLJekW+w0ZI+FEYWPy5nPDhM5I0ERMLpnSI7Aj?=
 =?us-ascii?Q?tMW1K2HvEM+z9In//kHKHZ1ivyRu/L6YzQSAQuvqqlLUG6A+Ofle+GEpNnkR?=
 =?us-ascii?Q?JBPcQ7yKe9SF0C3PxvM/xbMwxKHmOFwORGWM7nomenDuzV7/l5eoV3aPosj0?=
 =?us-ascii?Q?wW5clRobVOijpW1cMjkXyXHHgCSLTqaIJknanBJj/fDqkNiYwOMiAXqqNohy?=
 =?us-ascii?Q?7tSgpTSUtVGS0lSSl9hy6k5bIT2YfnCJHJtl62R8BRqq3b7I3aASfbxOV9UN?=
 =?us-ascii?Q?LXIUM9kXb85Nj9nBvIYPthEDCxyIJi9cxCRv0X0m66c9+PBpQy++aqmHh2M0?=
 =?us-ascii?Q?UjrXST9E6SRPSeG4LdtThhE2M+meV288FwuAB9an1IYBf8fWu3+GnfG5TeLo?=
 =?us-ascii?Q?btoPq3Xl42SUUF4EfEltcpe+g2BG865I4J54XAv0hyTdC18oh1SM968fywAE?=
 =?us-ascii?Q?6RsIvilecotTsq4keSDPVrQnh14aHRvzFBPkujyn5L0+ABxQ8ReTUHcnprVr?=
 =?us-ascii?Q?h304bBIGbJp9GqVW+h+NhLKkP1e6r1i5h3m/r53DSGAlgoMcui286Eq0GqNd?=
 =?us-ascii?Q?ziNVC2mOQVatCssYlEm1ATFfI5MxfWiz1Xy2hRmeiYDdsQWTCJO7HQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?a1xHIcNODTYuSYsyrcsghvuORgYNsbv3c8VuBaZPCL01rN/uRjQW++qLHdT0?=
 =?us-ascii?Q?SSYlSZRMh+J3BMVQaHHjYQSP7g92h6CkdP5wNMC+f1PdEt9ySIds8D2jHoJf?=
 =?us-ascii?Q?wl0JsM2He7TYacXFkWbuMmNvShu9COt9Zjco+C2+euGjBomWi0APhp1yNDoI?=
 =?us-ascii?Q?dmsc/xpfsxOuOgWRCK+qh/0en2+X7ds+B6EYLsNltcSxqkmqycAA2q/KkSvG?=
 =?us-ascii?Q?AeXAjzXsKfvWsyiHGgiUJTtWxZRAiE43tipFw8TZ7p9bK/zykUXGr4EcFFJa?=
 =?us-ascii?Q?E93863LJ13gQWQP4JrNtCXsj9/rwZki2dvX7ixuRY5mZhGL3rHJqk0g22zvZ?=
 =?us-ascii?Q?yBjl0vfYkZsj3Y0KcHiCApEb/Ms7uP4fkSZTZgopZ3etIjsHW6zYhReXSTpf?=
 =?us-ascii?Q?ZXC9DENYfLYT/Xyf+elqNBtHhV8LHYFZat+DiO2NPPRtDdRgTXNeW4vEs9+7?=
 =?us-ascii?Q?P6/OK0wlfVwWs1IlijIqObfrj1QbfNVL48tDQi0mODwvN1sby+EhS4B4Hyhe?=
 =?us-ascii?Q?zV1/qs2Ldif9wvqwuc2mPf60e4G/3xYRKdLNdCpVVf6z+wzijmSq2QioEKoo?=
 =?us-ascii?Q?j3dQTpTbp2zXEtNLtOwbM5juEPhtzzwV1Od2mCFv+HlWVcG5vW+mNW2snEpt?=
 =?us-ascii?Q?vjWsYOxyCoaU84y1orQ8coa4Y7Zp1L9HhJeobsrwQ/NflU2cdu+Q0kzsAghy?=
 =?us-ascii?Q?H4qHyiFcYX2AYGekHbxCDzuPwsQtETHVIzW4mNuZtzP+6+C0OZbWIsCvK0xM?=
 =?us-ascii?Q?8s094AoKh/nsqeUFEWOGsuMAon7IGatAmuzTJfDI7FoAMXFmG+uHCG3aG76t?=
 =?us-ascii?Q?sMv/XO88on9RVqe5e7nE9OWBHypSNaHZlZDeaYQob+I2jOXQr8VyYT/qbeOm?=
 =?us-ascii?Q?IFUn6SzwjIic10oAoLq7tK8VZQussApdCPlSsXooAuadFNgMdj0pkSAxr2AX?=
 =?us-ascii?Q?TcvWyz6wdfVYzBrrTHcVQf37t86sacUejih4CsIxlOGXoI62aW4Ba8kDVucv?=
 =?us-ascii?Q?J1Fa1PBOLR/cVQ1pSDN/NeR2vPasht5LRKGQ+YyEoaMAYn2aSJEboGpSsirk?=
 =?us-ascii?Q?cJAtIyBc4dDRK0f+ZNS9RzSPXduTT2O5DO6d2bfXfcegLYLME5HJkNv2hesn?=
 =?us-ascii?Q?83zbbzxIwPE17AYr/cQJKohKUs1852Qp7bn2qEHHWPDtFW8mUvnyQ6KZfSod?=
 =?us-ascii?Q?Kk18F35B1eVb87zI1kFDj74cvXXYaXIzEMAkUPAJ5+MA0Y9YxtEZSMe8W/Yx?=
 =?us-ascii?Q?hjrtNNRxhySQxZEM1zM/nDkWvXb72PpH3+OrI4XNQ7DRlIAUdgDeJ2zP0I3K?=
 =?us-ascii?Q?cYP2QjMklcFXnFWY+03ldb85K8v9Fi07xPeBTB1hcfcTfMWheV0GxN39Cm52?=
 =?us-ascii?Q?QOxcUIPHJzBM3uaPpPZZH1NbQGqvhKIUKHyWcZRGD8Ya/3qU7++OThUZsUc8?=
 =?us-ascii?Q?Z5Y0f/IvAbN0SXrAU+zl6oS46TJhMMXcaHUPrLxWOs7vlIE7YOTUEujxkSIV?=
 =?us-ascii?Q?FcGKmaDCCSNIjh/bBFMZL+P5jRreF2wkvr91SqKUm2P+6FusIQQOXkW1WzBJ?=
 =?us-ascii?Q?ea4GTrMEUvZP9bSrOP2xEPK8DbeU3IYIXDGZuHbZ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b4b8733-2af3-4414-81e5-08ddec02f302
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 22:32:36.7492 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xJ2WsXs+ha/WmgG6MGst4pP9oZeSymfRLLzPyPHcDA8OPUR6UKJ3t998Ucg4kk8jjCLwyl0y21nVEO5XSW45dw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4635
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757025162; x=1788561162;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KG6mY2S2Nx2Z3hG+pTH1mupc4ngHHt/ZWWeiDEA7CXY=;
 b=ThGDRfXDzjE9/Sj3Amm8tKYlekhyN1IxUegrDCpTdIqTvHA/GEepFXMH
 w9/IHs4+C4MyNO4/CDKRRlGex2nB51sJaJaSRjStJUssGKKkaDClyYRoT
 q9i887Hf+zM/hHs3sJYdqb5AZpjOLEroeD8IUO/MFNm/9GdNcBqZ1XCUn
 q8p6LRuyPzd0iwYzYF+H4+pvNYllMCEDiTPgxDGCk0QEWT5G4fvkT4P+Z
 4iOD5gUOmZuwJRcG1Ku3JizZaaKAbNLZHHtawl8p4d72215PHBAr/WFN9
 GX6m4Lr6YCcSPkNVlfVLSKA0xT8HfRfhdpPqRcdxLIYuyPo7rvOoeQqDA
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ThGDRfXD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 2/9] idpf: use existing
 queue chunk info instead of preparing it
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
> Subject: [Intel-wired-lan] [PATCH net-next v7 2/9] idpf: use existing que=
ue
> chunk info instead of preparing it
>=20
> Queue chunk info received from the device control plane is stored in the
> persistent data section. Necessary info from these chunks is parsed and s=
tored
> in the queue structure. While sending the enable/disable queues virtchnl
> message, queue chunk info is prepared using the stored queue info. Instea=
d of
> that, use the stored queue chunks directly which has info about all the q=
ueues
> that needs to be enabled/disabled.
>=20
> Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> ---
> 2.43.0

Tested-by: Samuel Salin <Samuel.salin@intel.com>
