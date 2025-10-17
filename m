Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FAEBE70BB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Oct 2025 10:03:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C623760BED;
	Fri, 17 Oct 2025 08:03:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SRJ6xham4b-0; Fri, 17 Oct 2025 08:03:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 301DE60BF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760688222;
	bh=xj50JAA6gq5UxFeapQWOj+prWxoZd9EDBO9VAIPsxaU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kLWbM+tB4B43j8ho+cLcHXK6BbBYksXbvEFkt9aMvvfk6dGORyW2ha0xJKjoZ3Cr7
	 87hlNTkkg8DD5M6a9fRXI77QHjlnSXXBS/Z1kqxmWRjeJI82hfoIajwd2Zyhm/rAu6
	 FBgjtC+TCCFYvGcPwjVToNE5l4FWhNCyyzpabb0SC64Q0dYumOvWnffGkkLaGUMDnC
	 x/K7nJAaZsjnAYyYbVBfNQA1RigoNXrmuKR4i4DjhCn0YQSfCkedthatePBPhk/Prs
	 pM8lMPAXTE7xnA6uGex+dPvS3aq4wYcJdRq0pqft3vxdJIjPkXb+LHj5xTGZsi0vGG
	 E1GNYHj6+Fypg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 301DE60BF8;
	Fri, 17 Oct 2025 08:03:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8D5981EB1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Oct 2025 08:03:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7F88640A8F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Oct 2025 08:03:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l067U_VOiYmQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Oct 2025 08:03:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 844A0404C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 844A0404C6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 844A0404C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Oct 2025 08:03:39 +0000 (UTC)
X-CSE-ConnectionGUID: Gwk7kqrbSheYf8YuSAoIzQ==
X-CSE-MsgGUID: UJmAYJX0RhW5ZOLvFFHFKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="61925801"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="61925801"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 01:03:38 -0700
X-CSE-ConnectionGUID: uGd+S/Y3SLSRFL1lVxFSZg==
X-CSE-MsgGUID: r8+ltYq/Qg+ISA1ykW6S8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="187953349"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 01:03:38 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 01:03:38 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 17 Oct 2025 01:03:38 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.11) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 01:03:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tziJn18378UPEmfpoz0/rPJ3/KGfQsPn2L0VLXsjMKrNOu95UBBOsdypdetMp5AVGVCRquYUTavVhUhk/PgAYarn8gWSSZ8RrNCEh4GZaJJH+e0KqhvkRaXNXE8DnmMdadycf/CR3C0muCcZGr3oHVAjGa2kSF40Ye/L81+AYG5vs4IG6Jc86NoXkyqyTK/o3qJW8hgtPb8cXpXgu5JbJyzK57DyRKQTkMd+D+edpj4bX72CZS8jdZ1Zrf50+jN/BakZLH3/FVjGzw0AiVdvKGU8slNdRKgRffWC67Uv51XE4uxCx0pIYq0rQOXbaqIXOzc/m861WW36Du+F/Zat7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xj50JAA6gq5UxFeapQWOj+prWxoZd9EDBO9VAIPsxaU=;
 b=Wy7n36tGiWkPLuqyzWkf+4Kv/0sG6hheZmUq+4oP+LPixT7A2JEtgXdEQcpmxDLuf4PCvZduSm079NaacZYl7+MwS5VGecMkF9eX/yxvsKPPGuw43SPt7eBO9MdMKFgkk4Of/DQKEnjDvrqRpo4NWKPQwqf92YOziaW4tGMUhEX1d1ykkVYv0jOyhkvwrWp/u0RId+IhyEIqP7N7IWv0V+Yn0sf/7ricwcfi7Er4kfq+lxO03uOYU9BsvSMxay7jjxpGU77MWZnNXuVAwvzW0iNfvUlmqAYdRTUTTI4d3GCAwYZzfF/27dthNf3D2TDLJbN1ar179zIXIG5x8GWqRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SJ0PR11MB4781.namprd11.prod.outlook.com (2603:10b6:a03:2d8::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.13; Fri, 17 Oct
 2025 08:03:30 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9228.012; Fri, 17 Oct 2025
 08:03:30 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nowlin, Dan" <dan.nowlin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix usage of logical PF id
Thread-Index: AQHcOD69pAcBP3mX/E+S2QOBxQhbIrTGB3Mg
Date: Fri, 17 Oct 2025 08:03:30 +0000
Message-ID: <IA1PR11MB62416F38A0CA8C5CBDD3F7568BF6A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20251008102853.1058695-1-grzegorz.nitka@intel.com>
In-Reply-To: <20251008102853.1058695-1-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SJ0PR11MB4781:EE_
x-ms-office365-filtering-correlation-id: 374ffa09-c9b1-4816-0199-08de0d53a949
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?B2ZYVN1He2xeXpO6a3smPtqqNSMY0NkoZUWvlAgduhU20zXZQkqiDg+U6aP1?=
 =?us-ascii?Q?7CXf5QC6qdczTe4sczTEiq8xPtV4FflHZhmxnqQIN7lLOTjZvE8u2v92OBlY?=
 =?us-ascii?Q?hw9yRqUPn0rHTX5nC7hcgjTFJDw+7cqDqD5Sf5Ft5MOrd82BeWIQ3Zf7cxqt?=
 =?us-ascii?Q?IDp+zRfLFUFj+N599ta5wg1/Jb9txvlBUIK8KXTvekONq9CsdUO+7zqL7MOL?=
 =?us-ascii?Q?tdpoCgwycefpYxULPLrtHPtcN1Lzwy0IqrWYpc0EiNKHdfdc4AVN1AUPRUoj?=
 =?us-ascii?Q?zWAAvy5CS1byAR4HIqZz+TJs5hICR4CUEz1+6rK0CpWSCxCmszubw2S36KbE?=
 =?us-ascii?Q?9b7lc52S0g3PpckWdpk2hx2DveyTXENGpuygP9Edfngw490fTIR891gWaa3i?=
 =?us-ascii?Q?QlD3JIWS60cTQu3IAgDkqhUEP0/CobLQIohyjHCSlMlPfITeYMCiaQTCDeEC?=
 =?us-ascii?Q?1Xau9tGwdlDNdDmPDoOWUjNaI7cjYvKucgyLFc8Iw4MGdxFsm5vzAdM5dH5b?=
 =?us-ascii?Q?5vcUB2tB/vx7gC5NlRRn6aSlnw1brXA5Ns6miBqe66zSZeOWcD35D8NoziyW?=
 =?us-ascii?Q?SPTsmGdpa0/ADJV9muPzXf9jW5u7qFYD9YUwcRPkHAxP6qJixY8SfZpu3i9F?=
 =?us-ascii?Q?BLV81JXjf+8AGOA/j29vnWZ2YCTvYtunU8oAhY13bQkQhHJV/0uq5SquG0iB?=
 =?us-ascii?Q?jrIvoMfjbt5aAt85BVDkk7UpDxUOnEFclSZ6EVwoWwxHVQx3CRziNwWbV4gO?=
 =?us-ascii?Q?fTxkIvwW6azhud0xW1h6Ivm4zfllZK4f4tsxn9xu0MbTli+f8AnQh5qv9EV0?=
 =?us-ascii?Q?KyiFWv09qNyrAJM/wi4S/VokbWvJsMM0JwCbJGb2sKXLaFKnTvOKjPxiYSOu?=
 =?us-ascii?Q?QGsBmbku59mmNMZ13r4IeMVWvjConjxlWb0Zlftyw2xudXqUzEupeZBVyJWK?=
 =?us-ascii?Q?DG0dXgm19U18Z/KEfZjelATk7nP7PCEO7nG5VuDytWgR7dyHrzmhx7vVanxt?=
 =?us-ascii?Q?nE9jwT2iS+sWZSzdwdCKdOnAuh66X7yPfFBYMZ12HVOxV/WTIY3hcjckYGGt?=
 =?us-ascii?Q?Lgani4uVyonxn29CokUehjErCgCGiUXID3/VD/KfI/O4MAkxuHhLkcQ7Kvve?=
 =?us-ascii?Q?Fj5F41ZoPveIgAHE+4CtXOGW9xQ5h35RNOpMw61L2EFXdFgPhEWHJrc7gr5+?=
 =?us-ascii?Q?4alXp+93o8WhETOwNGvPpf90XgFBYSDAFvTtQd3ti4oY+BcEV9xfQvPJklnP?=
 =?us-ascii?Q?FhCsCZBe8isft5I1iFd4bpzJF/s8jILwC6LluUDfSoFt/qjlNNTpWlJTcv8F?=
 =?us-ascii?Q?010+oRObF5EcEvRr4xjK+M4AkMdO3VISuEZugv2QcUc9qSOsv0uGs2xa7ioc?=
 =?us-ascii?Q?nDRn215yOYXsQuN/NugE6xOloMTjP9nYwKZc897Wj7dku29Ruv0GEMHduZCi?=
 =?us-ascii?Q?jZHHpf3u3x3gx4X+HRGEfxQs1SuNvVuTYC+1kQ/NfS2KaYUGS/2NMCWIcDuz?=
 =?us-ascii?Q?oEs8MJb+ze50uF94y1KMX2TOIsSc8tFh+YYs?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(376014)(366016)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/+ZbwtL9wMFp5vlvwxPY/kuL+y06R4QzRzraLFsClLk8JvbLLl+kncCRfN2b?=
 =?us-ascii?Q?XA8sNCH3mTADjPd5eDrFXGFJI3zUHhmPLyo8iVNG+qjwTcWOtPfiAbIjWSj4?=
 =?us-ascii?Q?Ka2yvFqxfbfuP/pL9+b6ZPQc4i3/bBPE07+DlJ0ByGXPNVEmya44GtaOv37+?=
 =?us-ascii?Q?5zi3Sn3SPkJdIdnXW0r3D/3MKVUMbIhlDxA6iVcQTB9YInXAwysQIAkmYWsW?=
 =?us-ascii?Q?HH19Bc5QQ64LvlabFbyE8REZTdY2lAGlCBj8r+ZPG4PyTCCEf/ad6Gh8ps42?=
 =?us-ascii?Q?UXOsEi+doKpptyTQzjPJ5Kseep5oagzQXfW8gZbqo6oaVJ1OSVqxiPP3STYY?=
 =?us-ascii?Q?LTCRI6Lh/sGkOSfXHsSfRHpMjKyX5DVIYVZicZjCT2ewu141uMMdeduW3G2G?=
 =?us-ascii?Q?/InHR+CVQ5WQcmtuLDSKY2t4tIsXox+LZx6vXG7TXPUBRFIAh2r31+J8QTem?=
 =?us-ascii?Q?nPtRdi6h0ctmBByzXWrG68MjDfQJ/CWwtxRlw9tVpNHCj8Bihq1hWdkpYmHu?=
 =?us-ascii?Q?+k3mEZiM5btCGajJDsXvH/8iax946NndDynYYm+8/jF8x9HUf+/tWohLegfL?=
 =?us-ascii?Q?06pTlThMEHRb8BLMbt0O0lkcyfW8BpzHWLCK6JkAV0P5qu+xkFgq39LjFYFT?=
 =?us-ascii?Q?qIV+XKKfGP1AsA2Z8xduIUOacw3rmtfxbH+QuqjTSTnhkf5ghZMnDiG95Dcq?=
 =?us-ascii?Q?XBkKPLdX3CG5H1PdO3HK6roTDvxjpfAJOf+LqSv2wnuoMBha7/VJTTwaDeHh?=
 =?us-ascii?Q?3g9mQmH5mxVTrDAb0bi5pj6xyChRdLE5/bn59AF5PT2s7r15NBGXdB0vwf+7?=
 =?us-ascii?Q?5h8OIhPttI9mvhaAA32BWa9lGVZF6sVnP2gkU/mdlhpnHfSdSV+lmxLI+F0j?=
 =?us-ascii?Q?anrmuThL4l//VmC72TIUI2SaiWP5LWrbOT3th/YsPKKB/GvVd1qEvTbraAeT?=
 =?us-ascii?Q?iOeAd1Doeo9P3ROETpyQlTJpfBvhm4qmwhNX3B8jNV/PgR6Fb5QsShchGDDs?=
 =?us-ascii?Q?93dV+Mo1GKL11T5R/XF8n3D+YpaSHd9b12vzuSf/p+CspwSJqfyk0PeaVBpW?=
 =?us-ascii?Q?zgz4FDSO56IHx8LYLhJ4Uaz7ZkS/GVZpy1otMCw68R2EVDqFU3YZ3rR5+RbO?=
 =?us-ascii?Q?CF7h5G65d0/Z7mx+a/5yXc9jnGLUVUd8Y0ay3xYCL0Oe4S5FduVwXzmeU6Cv?=
 =?us-ascii?Q?xQWtaA0dB+zvwuAUKFDKIYD5EqX57MK2KbU7qCuI/tGJVoYKCjlqqVsz5Ke7?=
 =?us-ascii?Q?HxNN3WHWDY7eWV/HDSTekM/ettd9M9RpYcpdXCoTkRxAC13wD63223Hyep6P?=
 =?us-ascii?Q?uYjxsYrSuq5l8jZjEzyz+B1e+W91g8j1Y5VE+hjxdYA0oeuZXocI3iRxiiW1?=
 =?us-ascii?Q?5fs8fZKm8v0+xOyCRkXhbuXvnpMGLFaLHEVdOvR2r4LCzqdMaziYszig5kzY?=
 =?us-ascii?Q?pCFjcK43sKP7qnYQK6ziT4B95U79gXt+5Y7hlo1PeU+PPYo/NJS0+AJ9zvNd?=
 =?us-ascii?Q?6orVdM4dQXTQJlHbazciKTj3HrGXUrWaizwhs/+qgCWMT13B1JDZPJb/o+6w?=
 =?us-ascii?Q?s0zwKNda+Pt6wtjOf6KcjMdfvB8R7+FCx3O2wStMgnFu32aLphvSWJ6o/pGX?=
 =?us-ascii?Q?vbvEsrn633U7eWePAjmfP0vbk9SYxVF2fURyVN1/HYf4?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 374ffa09-c9b1-4816-0199-08de0d53a949
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2025 08:03:30.6294 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RI7yR2PE44Dsbmq23xWaqdZ3foNQhz7dDZQoNNSr+vJlrmWODMX9adVbvfcPXbxv9iAc8NU0ZU6VMaMXlj5+kA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4781
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760688219; x=1792224219;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=US2VMQ4lERmOPIiYVETIw4pDSetH6qdeQ743ZXmngOk=;
 b=CTjLriX5bKvdM5RsFCIKUMAM7sxq9RRj9oiklA+0H3COCh60UKD9IuZW
 hDcIau+47oxYFikAs3UoLR0H3FwKhXE/8Th6/uDp0YZFHUy6rTd0t+WtP
 Gf24FfC3rzVaOEX2Wl+DvRtabeShzGFJ7KqCDj292QfBf4/c2vN+AdnRq
 QDGl8A+bpr9wRO6AFCT5DZx9QfnZByoCxOuB6E+YA+kAKRLcpEQWovpfk
 X+qSYJYCUlztZEceGgucahNFBIy9JQ//QTROulbDdpr3F0+HIKn8ZlGhY
 3xAeThk1sI1q7SlfOBmDsm9yg4j7n3lfbCXvp0EC74+XbIXThwxvVN22D
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CTjLriX5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix usage of logical PF
 id
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of G=
rzegorz Nitka
> Sent: 08 October 2025 15:59
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; netdev@vger.ker=
nel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Nowlin, Dan <d=
an.nowlin@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix usage of logical PF i=
d
>
> In some devices, the function numbers used are non-contiguous. For exampl=
e, here is such configuration for E825 device:
>=20
> root@/home/root# lspci -v | grep Eth
> 0a:00.0 Ethernet controller: Intel Corporation Ethernet Connection E825-C=
 for backplane (rev 04)
> 0a:00.1 Ethernet controller: Intel Corporation Ethernet Connection E825-C=
 for backplane (rev 04)
> 0a:00.4 Ethernet controller: Intel Corporation Ethernet Connection E825-C=
 10GbE (rev 04)
> 0a:00.5 Ethernet controller: Intel Corporation Ethernet Connection E825-C=
 10GbE (rev 04)
>
> When distributing RSS and FDIR masks, which are global resources across t=
he active devices, it is required to have a contiguous PF id, which can be =
described as a logical PF id. In the case above, function 0 would have > a =
logical PF id of 0, function 1 would have a logical PF id of 1, and functio=
ns 4 and 5 would have a logical PF ids 2 and 3 respectively.
> Using logical PF id can properly describe which slice of resources can be=
 used by a particular PF.
>
> The 'function id' to 'logical id' mapping has been introduced with the co=
mmit 015307754a19 ("ice: Support VF queue rate limit and quanta size config=
uration"). However, the usage of 'logical_pf_id' field was unintentionally =
skipped for profile mask configuration.
> Fix it by using 'logical_pf_id' instead of 'pf_id' value when configuring=
 masks.
>=20
> Without that patch, wrong indexes, i.e. out of range for given PF, can be=
 used while configuring resources masks, which might lead to memory corrupt=
ion and undefined driver behavior.
> The call trace below is one of the examples of such error:
>
> [  +0.000008] WARNING: CPU: 39 PID: 3830 at drivers/base/devres.c:1095
> devm_kfree+0x70/0xa0
> [  +0.000002] RIP: 0010:devm_kfree+0x70/0xa0 [  +0.000001] Call Trace:
> [  +0.000002]  <TASK>
> [  +0.000002]  ice_free_hw_tbls+0x183/0x710 [ice] [  +0.000106]  ice_dein=
it_hw+0x67/0x90 [ice] [  +0.000091]  ice_deinit+0x20d/0x2f0 [ice] [  +0.000=
076]  ice_remove+0x1fa/0x6a0 [ice] [  +0.000075]  pci_device_remove+0xa7/0x=
1d0 [  +0.000010]  device_release_driver_internal+0x365/0x530
> [  +0.000006]  driver_detach+0xbb/0x170
> [  +0.000003]  bus_remove_driver+0x117/0x290 [  +0.000007]  pci_unregiste=
r_driver+0x26/0x250
>
> Fixes: 015307754a19 ("ice: Support VF queue rate limit and quanta size co=
nfiguration")
> Suggested-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
