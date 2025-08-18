Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CFCB2AE19
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Aug 2025 18:28:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C2F87605F1;
	Mon, 18 Aug 2025 16:28:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RMRATGhkCPSn; Mon, 18 Aug 2025 16:28:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F09E605F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755534500;
	bh=fbGyi1zomGU9RzHEifjZuvkswxLjgZEPue4ILlwZwtE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mMG/bn0ELEJNWgnnElQ6Chnjeffl89sPoACT/fLhvvCUaDthI/MLhY3fnful2zY+C
	 rCofYmeT9ou3PrHF9TrQzO4aNRMgvbBL9+vXRaexG4h7NLocbXSCL+sYJtkEi6Ji2A
	 mB8XfdExEfQto34gVGhiN0EZVAfVqjR9bwsbqON6piFSAfQ+SI4PZYFyl4CszZZ3Cq
	 kAr35MJeDfoYDBOlcyxH9RU++EHCVSoQyTHzVjwEhrOlRlYyaZ4hIDRf4wLjkDcEy/
	 Us5bN5x/gaJkHNYwRh3PkWQxVwIysjvGdVVnh/nYINwGrK5ZZ2R5Q2vyd42jAduYW4
	 Xn4wm9xxa+mTg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F09E605F4;
	Mon, 18 Aug 2025 16:28:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BCF54196
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 16:28:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A6C8180A8D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 16:28:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3SFjD6Tsgf-3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Aug 2025 16:28:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E683D80A8C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E683D80A8C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E683D80A8C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 16:28:17 +0000 (UTC)
X-CSE-ConnectionGUID: sfaidyhYTZuUohhExuWXlA==
X-CSE-MsgGUID: hjxy0tyfSfaYP1uZF7vcrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="75331057"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="75331057"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 09:28:17 -0700
X-CSE-ConnectionGUID: cTBt3yJOTPqSljfQg4oGwg==
X-CSE-MsgGUID: Apo9BB+HQdWKsbf7B5HOfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="172952235"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 09:28:17 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 09:28:16 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 18 Aug 2025 09:28:16 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.88)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 09:28:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NViOi4b1/XDhcU9uOc8vEJwR4+xvockHYJ2wejbJKH0OkWMKmqNflBkbm3P3+tjm1DppXDNmzbhKdzKoCqUfSuA1ILXNIGWDWebaArDv3+IJMVflYUxaGOTqr7NvPsWlKd2DnNzGiX+jjNqD7FBWJgAAnuwjEO4drvc8VtFrrALBz8jkaHw2RYmpkLmXd0iXib707agz/tiASi8Vu0jWZmyelm++yyfB/Q77aXrlozlz+Fgz7+kAOIbj7r9dZLg/89gH8KdUz9Hp4sBUIIIsbGzXiT1WhSPYzD4ZeY3HCx4VcX6nkopPdz3dql9Rbh92AHmmvoWMnRLsnh3PAngmIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fbGyi1zomGU9RzHEifjZuvkswxLjgZEPue4ILlwZwtE=;
 b=yWkCZweabDLZkGYLhhV3QEzNabB864MNWCUfUbyOE2Wk8kLk9Tu9ch5b9WY6P3Jv2DqyJBEcoOGCce/jNmkAgH70gRrk7HnKfCIi1MNT5ohfFmSp0CytzbnveGNk+0jvMJ9fMlj+uXtp9f24IvLi+4eFIn8RgrK98MlMoXDMP3DZFcoKyD2JAjZ+b/UlWEgUfHYBwOTlMPJa6jTIgU4CNlZATaVGlgy6qG+XQxr0HkcU6MJrLtNVIuI+EN/lie5QBAqiV4y5icnOiOfikxkkQXg2nFlB1C+5JbW+DR6kmeOc1Bm7eZcrK4TN+EeYDFZ9hE2FZjSX/ouuUZtWDdyfdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA0PR11MB8301.namprd11.prod.outlook.com (2603:10b6:208:48d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Mon, 18 Aug
 2025 16:28:13 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9031.019; Mon, 18 Aug 2025
 16:28:13 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Schmidt, Michal" <mschmidt@redhat.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Jesse
 Brandeburg" <jesse.brandeburg@intel.com>, Alexander Duyck
 <alexander.h.duyck@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] i40e: fix IRQ freeing in
 i40e_vsi_request_irq_msix error path
Thread-Index: AQHcEFZXcrRmBpixlU+vh9GSTGqoD7RomWUA
Date: Mon, 18 Aug 2025 16:28:13 +0000
Message-ID: <IA3PR11MB898608D2CD911C0F903B6EC7E531A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250818153903.189079-1-mschmidt@redhat.com>
In-Reply-To: <20250818153903.189079-1-mschmidt@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA0PR11MB8301:EE_
x-ms-office365-filtering-correlation-id: c0b17d54-8d75-4caf-92b0-08ddde743a8e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?FK0QBV4naFbzXg2Am3O5EjPIs0acYW5GRSpHoXzgD9II7Eq0cPco0DWpj2bf?=
 =?us-ascii?Q?x7k+cDQipFl+IEiEFt1kAlrBTUfs8LT0XW95p860Pvjo8j3pKQf85I/30GXF?=
 =?us-ascii?Q?Zxs1Uz2H1zaEhlIRwOcat3Xe+Xo3+BR4HpP70zwbdIzNTuOy3xQyyxDXZLJG?=
 =?us-ascii?Q?FQcFpc1Q0W/AfP9NxwspS6oURXTU2K1561KqD6BhtI5MflFmQDKzRgUYMiC1?=
 =?us-ascii?Q?l/jqAodA0y57bSfbtGO7a4DRTI8G2Lp2xTNoNwzLukpyrA4Aj/QvtDXHJID0?=
 =?us-ascii?Q?WaZj3DAzcmGHGlQrx8CyS1A1g9b9MkFI9BO9hme17scrGO4i3T9raNu8F0K/?=
 =?us-ascii?Q?YHeScm7tqkGKFdcdCP5zy9U7tojYlzZZ4YcXR4SXc4a1xL6fvlaLbmLLY7fO?=
 =?us-ascii?Q?po7sEhbMehXgHeuE4ME272BYPUJDzyOsk3Oh/FqKanEgGfO7CppbTcyFVoq1?=
 =?us-ascii?Q?6z4skzjnR8is0q03zUpq0mwBl1IlElX+cPyUvUxRQIv110CRLn0Gctdk8ZCX?=
 =?us-ascii?Q?62qC1mapCYnMdD/NEyPvbC8xfOb6P7LvL/QOTU9hZj3OVHCzSB+/7p/GCovf?=
 =?us-ascii?Q?uXoJCokmJNarPgBDIQa/GjWmkyLql4y1VtY1Cua5w7S6eBoXNgAGln6G9iZm?=
 =?us-ascii?Q?ENjOO+5aFtqEWjuK5SD1bBUfAz58Dg8Md/osw0u4etElxq876zhZBhwf1hLF?=
 =?us-ascii?Q?f294lMzS964XhaRD+SUBZBZ8xr2fDRJvJD9MX0WMF/jzRdFUjPfIe9nPylBl?=
 =?us-ascii?Q?YtLYMcEjRa0Sz4iW3GG/vECR6VSE5kBJqaIo0pPqixYozyThCI8hhxHpxgRd?=
 =?us-ascii?Q?dKNa1O2f+oKmomV3SZd/sDVW61sKxlNpm1oBPP6J5do3pA97Lw3XwYMmM12p?=
 =?us-ascii?Q?zJfaBgmb9DqZeNbVs+TqvWQBs7foRyRGeaOLVV9Ebeql+Mc1oAb9EZo3UuF1?=
 =?us-ascii?Q?uMKPCP4EO5vCnuoETgWeqS7j4Ru64ITkKW9GiuMa0D7UZiiDT5Hvcn5IByHP?=
 =?us-ascii?Q?tUbj9r5eS4GbnuM4/hUlz1Vu32d+cQE4apy2hxuV/z+Rue8icsAMHioyNwXC?=
 =?us-ascii?Q?vx6QhB/E3sBxFU0TdMWCsjuc4+wlPnT8Rqo65YqAIl3aMdJQUc679r+Yzxnh?=
 =?us-ascii?Q?rwnIv5wIKxIVbhRPnO9pNFU7Z2QeiHuuRaino8pjXFrrCmwF+Te+1uIabsSb?=
 =?us-ascii?Q?jspAyzXUuaSMTJwpJMlhTdXnY0VgAU/JsZzzQvcluqutxNUgyA0P3CQcEji7?=
 =?us-ascii?Q?dsGzhR/3gFifAvvKEi6afQPjdNQtAPs2U8XDBzpDm94bCZFQ7m8pQZFvBOfz?=
 =?us-ascii?Q?1+zcht4hZVO/Jbzg0adJqzV+ChcJq18khuK2vM0TrmELzb5zrAGO/CJKnOnz?=
 =?us-ascii?Q?jUFtoKKg6YM2y1wPxdfub/Wm9K3ObPP5MQpGkWucGVgwyqq8r/1fVEBmZ69b?=
 =?us-ascii?Q?VdWKNNp9pROG41qP8CEP2/uGemXKy+bl5Kng8Fwhgq54Ll0vOnnfzU6LNrXn?=
 =?us-ascii?Q?9Qt883zdrQ8DGl4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6Jnwsn4tLKU4axFTC+H74pEKfwrCvZqb+hxZLEh05koiPK068MvY74ET3dZA?=
 =?us-ascii?Q?G8U+zhrEtcId2fB/RA0QVoHLd8pDNUcD2hHoWPHpl9mcUSR2kircJQX5Bzz2?=
 =?us-ascii?Q?cg7IK/1FAlwmM9VJ6CN4nk9gwsOJrn1CT81/MB+gTIigXdBF4oBbLbee8kUv?=
 =?us-ascii?Q?l6DNrqBtEniWs3GOL2jP9J9W9Cbhrvv05iQIbbQk3/jyycucoe9HKrSnM6tR?=
 =?us-ascii?Q?0sA0bAnl3d90F2bM8jIm+iY1IhF30uh5GF2ovKkMeFtZpO5x0c11AFU8OTX0?=
 =?us-ascii?Q?M4G3KIRPHcHDvOPix21CTLa/6WsQZRAzQu1RkjHYPmSXsqKs1kyCXLDMXEM6?=
 =?us-ascii?Q?xvVo2HjtVKm9mcLnZ9UxWLGtKIlucfPo8HGtKAusFGlLKi2hYSkhuruRCQYX?=
 =?us-ascii?Q?Jm3I6N/g/1FJ4gDUS48ftbCxkNi2PJCOMCvVXTFmb+eU/+xH/Q+Palprg8U6?=
 =?us-ascii?Q?U3gR8e7G9N8mmV7mdcKkBEX0FWFTnEbuK7o3GETp8cEsWzEo8OCVrRi+PqVF?=
 =?us-ascii?Q?3hp4x2Rp7eDyA0H27CZ99YLm7PRHeLW6gT+Qrov7Omhei8bysvvz+y+XY0sH?=
 =?us-ascii?Q?JXjAvDsMnla3c182hVbOKduLyVnM95OGdTGXAmghjM0Q/dVkHwyaoY/Tu5SD?=
 =?us-ascii?Q?LovxpZskTK2+uOckDE8KML+DHrEqTnVgTFDhwTge7exEOuz2yj6IIm9d05Bn?=
 =?us-ascii?Q?H32pQPlpevwEw2Vll1SUMQHP4OK/lR01LFxN9wb+6jaZmoWm+0CX+5SGEjTz?=
 =?us-ascii?Q?x6RjimyGnbzEZ2y2raj6JLLg6RVIXD+4jP67VeDtdLreWXmpjvm07qWcXPkR?=
 =?us-ascii?Q?hfulHmNJw1xiNeY3xLX0b1Li7UbDcjD0XtFMFMQkPx+LrayMC+n+2NNQuJWu?=
 =?us-ascii?Q?kepHu9AYsxtkprlq9deGmUp6t/wT12dvzqzDPZOaNPHcGiJanvLo6MdAPpBd?=
 =?us-ascii?Q?nAErFQ6+6BgLDUnfamaj7A4TqWoZ9iskrNMHqegyuI/lj2A4Sg9wwtkCIBZD?=
 =?us-ascii?Q?A9eHyx1mN3Ypn7xFa4rc14w1FTQQmcBtJLbweD527tCLysM5qpR92orftAbc?=
 =?us-ascii?Q?ovMOPFOcqs7GSXXvvw+iWhG6gdQlOwHgE+1mUXJmrQZSuhW6BjxtrBH2LMZ6?=
 =?us-ascii?Q?tSW7hHYMGV02MjqIP3l2N35IzvrD7KIvQJo0Cn6B+XN89dxLJrwMrjjTMBTe?=
 =?us-ascii?Q?Yvr4PBQ5svjiurMHbmXILq8e9oLyLANb9KqBh4pFLZPsNAeG2vSJGPBrxuqy?=
 =?us-ascii?Q?Pk90Yuizv0No90jT5nP0ffpse7VxUhreR8niFWw/dfc66jaF7mi3w13EGqAX?=
 =?us-ascii?Q?BZVDvVKfQhYqL35WKHC00duduLsvULg8krcIw3AFcKYoaff21tVRW6fyO18k?=
 =?us-ascii?Q?Jn7mCQ7rw3KIpZ7w+pYI/2WkM0RjJpnrprU/WdL1CFCFBr1UdWvrxgS819Te?=
 =?us-ascii?Q?zxjhnboHH2Xna5kHKdH6w8r0JiiL3t26V7o6wwfSNY/Ov8e56xRGhiLHwM2h?=
 =?us-ascii?Q?WYt4pT+iwRW+keNDqxPGOeSmTBHbjRGmWuWXDOYLIBeKlmWDKMznWhV5y1vr?=
 =?us-ascii?Q?SzMfhqKe2VnSUTS3PmPcMjn1e2eClLPuI/qtEIHLmkyXLK+EnT0Svp0wpHCk?=
 =?us-ascii?Q?Ug=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0b17d54-8d75-4caf-92b0-08ddde743a8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2025 16:28:13.5837 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aym1xZPXh+78OnFZb9yh0Tum12/89LW243D3iplnDbCgoCZbZLdkl1my/WS0XQN+rr0hiDsBH5bfrfQgKCP5UuLabLSAA7s5/gDlfmW0M04=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8301
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755534498; x=1787070498;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=APpyJtkJtjhWW9otMjKTtO4lzXCiBwpa+o8G4j0Doos=;
 b=K/es2bJzyoSpnfetT2y7/DbD+GN+yAnzzkVIdEsbSCVQXRYQ1faIBCBa
 ZbXj90vfPIgw/JoZ44XSzlC6xDDYPU1QnolHPpFwp9nbI6eSxopysB8w0
 3tLBoTdv45DDpP52sq7YzJuhG3FuiB0KqJU6mHbNuvaGhNQLRdNw2iXf2
 ReC8C8J71kWrC1PENvU6kNeiZlLGO0Bc2bL4B1/lB5CnGVxYFoiJzdIQ2
 Z2Bo7rXKEIWzmT+NCq+6VTc8kkYKDiWmtHNmBDhPyOIhKAi5QyWNSe6+Y
 Nq3mJEa15Ik1l/lj/uLXVNBBVzx2QrNDE3mGhMqKEgzUMEPLaT4ceR35k
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K/es2bJz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: fix IRQ freeing in
 i40e_vsi_request_irq_msix error path
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Michal Schmidt
> Sent: Monday, August 18, 2025 5:39 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Jesse Brandeburg
> <jesse.brandeburg@intel.com>; Alexander Duyck
> <alexander.h.duyck@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH net] i40e: fix IRQ freeing in
> i40e_vsi_request_irq_msix error path
>=20
> If request_irq() in i40e_vsi_request_irq_msix() fails in an iteration
> later than the first, the error path wants to free the IRQs requested
> so far. However, it uses the wrong dev_id argument for free_irq(), so
> it does not free the IRQs correctly and instead triggers the warning:
>=20
>  Trying to free already-free IRQ 173
>  WARNING: CPU: 25 PID: 1091 at kernel/irq/manage.c:1829
> __free_irq+0x192/0x2c0
>  Modules linked in: i40e(+) [...]
>  CPU: 25 UID: 0 PID: 1091 Comm: NetworkManager Not tainted 6.17.0-rc1+
> #1 PREEMPT(lazy)
>  Hardware name: [...]
>  RIP: 0010:__free_irq+0x192/0x2c0
>  [...]
>  Call Trace:
>   <TASK>
>   free_irq+0x32/0x70
>   i40e_vsi_request_irq_msix.cold+0x63/0x8b [i40e]
>   i40e_vsi_request_irq+0x79/0x80 [i40e]
>   i40e_vsi_open+0x21f/0x2f0 [i40e]
>   i40e_open+0x63/0x130 [i40e]
>   __dev_open+0xfc/0x210
>   __dev_change_flags+0x1fc/0x240
>   netif_change_flags+0x27/0x70
>   do_setlink.isra.0+0x341/0xc70
>   rtnl_newlink+0x468/0x860
>   rtnetlink_rcv_msg+0x375/0x450
>   netlink_rcv_skb+0x5c/0x110
>   netlink_unicast+0x288/0x3c0
>   netlink_sendmsg+0x20d/0x430
>   ____sys_sendmsg+0x3a2/0x3d0
>   ___sys_sendmsg+0x99/0xe0
>   __sys_sendmsg+0x8a/0xf0
>   do_syscall_64+0x82/0x2c0
>   entry_SYSCALL_64_after_hwframe+0x76/0x7e
>   [...]
>   </TASK>
>  ---[ end trace 0000000000000000 ]---
>=20
> Use the same dev_id for free_irq() as for request_irq().
>=20
> I tested this with inserting code to fail intentionally.
>=20
> Fixes: 493fb30011b3 ("i40e: Move q_vectors from pointer to array to
> array of pointers")
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index b83f823e4917..dd21d93d39dd 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -4156,7 +4156,7 @@ static int i40e_vsi_request_irq_msix(struct
> i40e_vsi *vsi, char *basename)
>  		irq_num =3D pf->msix_entries[base + vector].vector;
>  		irq_set_affinity_notifier(irq_num, NULL);
>  		irq_update_affinity_hint(irq_num, NULL);
> -		free_irq(irq_num, &vsi->q_vectors[vector]);
> +		free_irq(irq_num, vsi->q_vectors[vector]);
>  	}
>  	return err;
>  }
> --
> 2.50.1

