Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8MMjBe0RDGoZVQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2026 09:31:57 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C13D2579218
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2026 09:31:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4397E81318;
	Tue, 19 May 2026 07:31:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qEuVuSA9u55D; Tue, 19 May 2026 07:31:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF23A81313
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779175911;
	bh=CNwCgPACtIY3FGgdlbPBh1u8xMfv3f/6h+oOGS4E90Q=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=O8wdmt7fIQV+X2ntaBrlRpO2f05XYGDQwhtqPpm11B0M7fuBHvDFVU4MBi1ojivvP
	 OtDzs6PtrdFognEEXSf+hZqxg0nXPUnxFT3zy3C9rCi8p7NYar7nX0nmOULy4wi81J
	 vV+WbwxKulWAlpvp8lzF34fvelK0GKWU6ho7+vsiKTA57KW7Xx9xzlTFMfbWmbuZih
	 apqPXHL3AoNdbhD7bneoe26DsGxJHpGpNSU9mFWLXic3zXd+cPPjiQrDFdv8LUJ/fM
	 OfbZmz7HONjH0aRePGZp/FjiBAeg5tJ+J0oqnBTzkVYJd0KmkPpcPVz8H9Gt8idDLC
	 vdTZKfn4w4y/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF23A81313;
	Tue, 19 May 2026 07:31:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id DD084265
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 07:31:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C1FA840378
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 07:31:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D-lXN8WeCssR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2026 07:31:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CD78940370
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD78940370
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CD78940370
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2026 07:31:48 +0000 (UTC)
X-CSE-ConnectionGUID: 7GNnLz3JR2+zlDGvpoOlig==
X-CSE-MsgGUID: 5yRbYxVCS16x4T4iwdKEFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="91509563"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="91509563"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 00:31:48 -0700
X-CSE-ConnectionGUID: 8pdeps3eTDuWdV6W5YIisg==
X-CSE-MsgGUID: aik99KR0TZiz53gmvlkDxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="239936617"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 00:31:47 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 19 May 2026 00:31:46 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 19 May 2026 00:31:46 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.19) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 19 May 2026 00:31:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CJU993Q81lUeYfwKAFDgyY+D5kGZrcClhFn/HRJeL57RjbrzsYu/JvgwNC1GmOrc+zYe/B5rDqA+EJAFAHiTW2P6PqzXSG0V1qXyeGN2EPJVZvwShVG5x4o6PUeff3DgVNiP2V5wDG0dz9ToNyLuMnYJmy4SASVCa0RmEU2TEt8hlSf1AHlazvlSgdfzHkTDx+vOD0Z2e67yEgZttP4cg7/eF835kjPNLnvQCbveV/4BmPYIphsJmblvtZL/vzDR+T4fKkkIl/34kH7bKKuw9Xuz/R+OCXm0JHvqpT22z6A6phY/v9YtHlkQoQXt5y1AIBfRFaizcdFpJ6lssIir/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CNwCgPACtIY3FGgdlbPBh1u8xMfv3f/6h+oOGS4E90Q=;
 b=iZuvbl8YmhmLuMEImdfqPePs8okwN0ygkQXJm9HHHQSLvTlsgnOYtmBF9sWWcDL79+LJO/ISMOzgdjzL+2aa/IpyuTjHSNf1acyOwcxCbgD3yan6bQY9PPffpM6r+iElQHjU/yT3iiSjjRqDUxv7aF86R/m5tRV4h85MOaUBDh+DsMEcUhnaidjE7gKOgF1B1LDTbojX1bjj2looPtD8x1/QBEXNDK1yN3pZnufulVeXtifFKw/QQkR61Y8Ap9B/5OXriqS/3oz/xx8D0iLJirAdkuBpd5OgV3FNjsBqJbip4j7JsLyo263bbiKaZiC6e0KTba/hlz9uQQMYkX+aOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by IA0PR11MB7840.namprd11.prod.outlook.com (2603:10b6:208:403::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.14; Tue, 19 May
 2026 07:31:42 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%6]) with mapi id 15.21.0048.013; Tue, 19 May 2026
 07:31:42 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Greenwalt, Paul"
 <paul.greenwalt@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 0/3] virtchnl: add extended VF
 capability flags
Thread-Index: AQHc1yUHXimOs6cgkE2FskrL7PzCYrYVFLYA
Date: Tue, 19 May 2026 07:31:42 +0000
Message-ID: <IA3PR11MB8985FCC2021E902596EA4D688F002@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20260428143716.9653-1-marcin.szycik@linux.intel.com>
In-Reply-To: <20260428143716.9653-1-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|IA0PR11MB7840:EE_
x-ms-office365-filtering-correlation-id: 98358d82-3368-493a-72e0-08deb578ac2d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|18002099003|22082099003|56012099003|11063799003;
x-microsoft-antispam-message-info: eANYLcJYu2mbwKU6z4IoDb7lh+qQAWG4Rwo3OOpgdH1iGOGnJuDkyN2PfiBZ+E9bWusvzUl6jjkpTPjm7CgtlgxX/54L3vKH4hvyT+B+6Fpl5x2i72HkcV4WqOrUEaQRbcQ1T1V1VJFWLeAAjB7+4ECjzvq+HTuYNImqJD85elbwvH6uKl7mWGQ303Xy2fwlLcEOFAeNIyt3+aaoTeOEgbXw8TkyNPTqhfuA6UZXXjgzRg6bbzQTgoTft/cF5txcUacm2L7rUupJOvaAij1++3mK6ncntC+oySPis5DWaa3FthyZlbT+PvmgAzX5YgnfyuzPTdSIxzaI8uteiRQs/If0Pt0kQz9htTJtSlvvp27WU/ciosDv0blgrI50QRUvlJZ7N7Qpa2WutgNEdwDU9AarmvI7RlDDLALak70S1d/nWwiJjmlOb78sawsxachuOOmmPL1ZXFPJC3FdAtEiKMDCyxCGRg4Vee9hfehPJBdrin4LJPmjhttkTTP4fYy06mmeOMcBLAQIipMd2r/1ncG2lqCXg56ZDXpVwttZtN+cfNFIqW6C+cJJ+69uWier370NCBt7MA9jO+DHeWv+lMO3QPHCbeiJp+pg3LjV1BEl9RKeeZO20XIP9s6tyVEJSjwpElWVTLUyTkfK3ALPWL0UsL8kHpIV5IKNikH8AswdX3wIEAHFWd/g4I2+lxBeNuFHU9tfIiHB/T1pW+/9k8S3PuModb0tozjJ0WrV+e/BHaplL8rLizeR+vZ1v6aV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(18002099003)(22082099003)(56012099003)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hDOe/1L9clBvI0grjH63fTwMRI1CiGrgOsWKuRWvyVRmmsixI/WuIg2gbCga?=
 =?us-ascii?Q?lIKkZwg1Ad0syV7+HlJREho2ZNHBsuVEPEQp64YPbLXKIL++/nrrl4jVCowK?=
 =?us-ascii?Q?GrgG9kmmR+xR6VR3JpKhVgMZioGyWMLI9sP1fd5o5ZDCg4D3aElcKgWmwFg+?=
 =?us-ascii?Q?WM4cgFsu/VrGCxW3c7jTypmokyKNCKo4VY0rPB5mRoXzdug1QYqHx4xfW+2o?=
 =?us-ascii?Q?yTQ0mH6jdobW7OHMoApt+uwlRG6iZiUj8WXq52Tp1vsmTtPlN6j/LtFKe1kw?=
 =?us-ascii?Q?83fhuAJK2xfvoXXeo5kUUoUtyHmxz8xHjobWdx3Xs6/HcFgNXB7L3MEBGtTv?=
 =?us-ascii?Q?JsDeciomon8EVFstQKUaKIdaIZ4cfiZ4mbdbgMTu68z+PtTtfhU9vkrmwwp/?=
 =?us-ascii?Q?cq3rKvpkolWnPT1JUpsSZAoSM3KMXmrvhcPrt11Q8aWIFsiiis+YI/598bXY?=
 =?us-ascii?Q?dPyPiuFVeO89mfzSnF+WOtvXpYIAm+zV87AnbbMuvwCEp8UdBxny0XgMHU+x?=
 =?us-ascii?Q?nzqqMJziQJtp4gKJVaz5rJVMTLfvEXBmZ2xbyW2t3kspJGq+kuO4DSz24Cdf?=
 =?us-ascii?Q?Zp1a3zV9jkXEKLkDiNCH3gVJA90ADw7RSZBfHChdhAyTMHLw+hra4RDNlUWj?=
 =?us-ascii?Q?1lJEccvdPll3bVFEx3pAZ3eMYcMxQQdKMzGjSYivq4ZIsPwamaDgCIQ4lp+a?=
 =?us-ascii?Q?yhw1x+auB+amG4CwJe2ov2iVpDo6RnttUoqUot2jQbMma3Ac+KPP+Wus4HIV?=
 =?us-ascii?Q?Zt2QFnZZEVd8XoL/E2GgGx+8mlER3spAh/DimWO8+lVfBHdDFReIr92Q2Iji?=
 =?us-ascii?Q?+2jzTqAJGQ3QjVboIItFT/CaOOadkY8ca1cHlDgWiztc4ihD5xwCk7kqXt3I?=
 =?us-ascii?Q?VonCMAoNK+2r8MrBnuYc4gNYVHqtymlNFLWN94skXAyOO5clwaBQ3+pwd475?=
 =?us-ascii?Q?VyvRUAR4WPezRlxj7wrIUsM4JLAJsNtQ/8qann/V/LU5Y1D+6jll2UnWux75?=
 =?us-ascii?Q?AI+G1zYoJMPhnLNLFy71XpqVj3ZpvHoNvXkAvlVGgveiw+QcNMoC/yKSaC6H?=
 =?us-ascii?Q?HqYpfhdLewk5WIWLveEY57CiqlcN9ezcoqjiaLr4cKphxnfCdYLlxABlKeyQ?=
 =?us-ascii?Q?DnRwZb0tG6jupts7VWGiPvYojzGNO5AEgpW+zbx0Dj+NUFnvwaNuWXjfh0bs?=
 =?us-ascii?Q?SwIGEZVSQ4ODo9A3BVOCpcPO0aMrsAJF264DuADPlglTYiFZSSU2gQCEalTJ?=
 =?us-ascii?Q?YPq0KhKjw/jmxg5ClaB5ZtAuYmpItwDW8/Lii4kz0k/2t9tpnrwu+hbxAsHM?=
 =?us-ascii?Q?78SMAJzilyIavUqITiaQn3iZP82TPC0hPg0tJjOQKnoyQV3dZU0jwiVq4zTm?=
 =?us-ascii?Q?ogf0W9M3z9l2C+GpDHi1PB9zJL3B6rIHDBUxYnztk9dANZEO8Reh/Hq34pWp?=
 =?us-ascii?Q?412ZuopBAGpS2hJglhi6qVIZk7/xSvnxgHC3NBcU/O4zs/BZl+jGWFNlrK83?=
 =?us-ascii?Q?0a++AkhU5R0Mkc11wwZjKsXk/J5o0N0AHWFXamch57FY1vNwkrOxhswf0ZvH?=
 =?us-ascii?Q?7Gb5ubOBQLxPOjg3pmIneI1CI95erMjzZngsrCE5P1YFz1I0m1MC89l+XP7n?=
 =?us-ascii?Q?5yIh5XbsqLveaXenuCiCTvIgCRKLZuEJZr1iZfV64d+R5Knas/bczALOWAnf?=
 =?us-ascii?Q?mXSiTkpIjn46/dQVVKXlla6PCfHi4s9ujU7UcD9h6dFg8v+J1+rsqSm8seKV?=
 =?us-ascii?Q?kaGS32e4bQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: mpoziG8BVx+ULD0gAJYGhsXDWaMQXkoC4Z8gS2TYRid2jQibNzRDrodOKSohBKQFq0hO2u/NHOtB1rIlh+7Qf/5CpVrmeMYpyIPyHk5QQ1w4TNY+cOKmuu7qRFOtnIT+WIw5/iSPW2lKmOoKadtF8zf6afFelVrfiOo+7H73xFlTYmqhdvr13G5ZWDIFutLT+ephaeklqGgdQbAtCSx+GhlKwBOCDk37u7sNtEma6NhQpHqI/IDDVAhDQe+xdJNSCsEAWj5jB2dpoooehMIzmF/5vcDnt8zmkVUevv1vomM25oNUuVUap449cPfdtGb/GxpYLjlaSfou9/WCGSrSxQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98358d82-3368-493a-72e0-08deb578ac2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 07:31:42.2433 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ak2u4Uub8aCaArcMMj7Tl6pXQyi67F1A5Z36ZKav1pN7gMm41/bATa53YINsffd5gFLTcWAwESe6mQOnQIi9kXn4lmYc9Idj/Em08HU05rM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7840
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779175909; x=1810711909;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cqjqoKGIboLUHffJlxKvlVrYTG2QBKZrCPchLATfdtQ=;
 b=NwoUta9xrp44Bxcy8bg/4hXtFect9rnXLJGIQDfdFgDVFH7uyEOuPQHn
 8RpkR8Du51ckkQN0G9o0t/7l+w+SGBnCcJdWEx5N3oRgKNPCPod9eoN9q
 JgrAcLIXzM76S+qUezN+zYx1mewAD8/zwF8HlU77QVyR4WMZMbUkorAlW
 LEHi9Q5s4/+eMHEU30lajwmuTMv4Dtv4U6NnUotayxgwz+jcNCHS7HPy8
 iAxixwdleNqoH/vvpIIjCk/Zlj5Wif9VOwQB0FJDajhlIBwbr0F1Hbc3r
 sS37Cot3Xz95gyuomuvt/YArJpigXCREZO9wXH5bmxoffUwO0h8kcbOEz
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NwoUta9x
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/3] virtchnl: add extended
 VF capability flags
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:netdev@vger.kernel.org,m:paul.greenwalt@intel.com,m:jacob.e.keller@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:email,osuosl.org:dkim,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo]
X-Rspamd-Queue-Id: C13D2579218
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Marcin Szycik
> Sent: Tuesday, April 28, 2026 4:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Greenwalt, Paul <paul.greenwalt@intel.com>;
> Keller, Jacob E <jacob.e.keller@intel.com>; Marcin Szycik
> <marcin.szycik@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 0/3] virtchnl: add extended VF
> capability flags
>=20
> VF capability flags in struct virtchnl_vf_resource::vf_cap_flags have all=
 been used
> up, preventing new flags from being added. Unfortunately, flags size cann=
ot be
> easily increased, as virtchnl message size and structure must remain unch=
anged
> to not break ABI. Instead, add a new virtchnl message to handle passing
> extended caps. Make it flexible size, so new flags can be freely added in=
 the
> future, without changing virtchnl interface.
>=20
> Overview:
> 1: Clean up unused defines that are in the way
> 2: Do most of the mechanical changes required to store flags in bitmaps
> 3: Add the new virtchnl message
>=20
> Marcin Szycik (3):
>   virtchnl: remove unused defines
>   virtchnl, iavf, ice, i40e: store VIRTCHNL_VF_* flags in bitmaps
>   virtchnl, iavf, ice, i40e: add extended generic VF capability flags
>=20
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |   4 +-
>  drivers/net/ethernet/intel/iavf/iavf.h        |  68 +++---
>  .../net/ethernet/intel/iavf/iavf_prototype.h  |   3 +-
>  drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   5 +-
>  .../net/ethernet/intel/ice/virt/virtchnl.h    |   2 +
>  include/linux/intel/virtchnl.h                | 120 ++++++++---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 160 ++++++++++----
>  drivers/net/ethernet/intel/iavf/iavf_common.c |   7 +-
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    |   2 +-
>  drivers/net/ethernet/intel/iavf/iavf_main.c   |  96 +++++++--
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 185 ++++++++++++++---
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   4 +-
>  .../net/ethernet/intel/ice/virt/allowlist.c   |  11 +-
>  drivers/net/ethernet/intel/ice/virt/fdir.c    |   2 +-
>  drivers/net/ethernet/intel/ice/virt/queues.c  |  13 +-
>  drivers/net/ethernet/intel/ice/virt/rss.c     |   4 +-
>  .../net/ethernet/intel/ice/virt/virtchnl.c    | 195 +++++++++++++-----
>  17 files changed, 667 insertions(+), 214 deletions(-)
>=20
> --
> 2.49.0

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

