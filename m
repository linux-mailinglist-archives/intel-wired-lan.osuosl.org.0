Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C95C9BABE5
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 05:58:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42A0580F2A;
	Mon,  4 Nov 2024 04:58:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9YstTwQBcO6b; Mon,  4 Nov 2024 04:58:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7CEAF80F2B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730696324;
	bh=9Ipp0EgKi6v59mm8zYKOE6Qkwpm87qfeXvQ8YSz1wjA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=m6wN2YY/09EcFWsd6duQKU25xYxksXJLwDF8rcq2eb7o1PVRJuhLikdcgaKVKkosE
	 kUFzsPopJzPNDj2E6wwMWco29Vrt5DBJ0PeCmiUpaahdqG8SlAsP20WQ8LnMMMeH7F
	 4WXLTG//M6NFLjYZPQ1kGDKVA5jVu8QFuBEy3AWoCyoOC81M1XRnf2uGBr89ZNML8e
	 DDdiNldOV8ufxO1cLeA/hmQOSdOZudlWvrqOLNSXbPyw2Kg5aKdF7qpB4bb71u+0Pz
	 aY/BLQ3OY7XRBqCVaaavWvhWjJQkjb1xhkd/c5VrFUTAyNcplK9K2CGML2LLxgDUIg
	 PgRG81cgJb0eg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7CEAF80F2B;
	Mon,  4 Nov 2024 04:58:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7603A723
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 04:58:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 561EA403EA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 04:58:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z0etelx7yUR6 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 04:58:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DA525403D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA525403D2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DA525403D2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 04:58:40 +0000 (UTC)
X-CSE-ConnectionGUID: KYp9DH/8TKiUPvOOfV2VTQ==
X-CSE-MsgGUID: yBwqY6r8TiOitO1TYU0LNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11245"; a="30482946"
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="30482946"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2024 20:58:39 -0800
X-CSE-ConnectionGUID: O7za8zuTSTq/sufPGitNRA==
X-CSE-MsgGUID: sFNqqTkKQG+GOOAzNbaKBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="88053810"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Nov 2024 20:58:39 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 3 Nov 2024 20:58:38 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 3 Nov 2024 20:58:38 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 3 Nov 2024 20:58:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ie88zjt54IthzrWUvVv0svXzy8imvPjyXPRpX0tLWA/IMr5CkPs+gVqVdfwWzFelV72g9xJO6UKRatSj/6IIr5XQty6HaxUCnxg8Y9/9mSwvEnCQfY2n2LumWqfeGYp6+apcfgqACpfCWhNUpMBbqmw8VKndcnD1MDFnAqaY3ngKpmle6hEmyxPRytBRS8y31sR93Q/davbzTn1IihuklKO4O30cjqg57HfusZxn9wKMHi4xyn0RRXJB/ezY7lAY+dxWBbZORxGyZ00tWc9B2HHWTfLtrtABsLHil3DgIJAkX1Nxr47XvuZZE5GYAlqQZmJlmGBaYHRtKEIj2rAY9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9Ipp0EgKi6v59mm8zYKOE6Qkwpm87qfeXvQ8YSz1wjA=;
 b=Sbr81inI7ZJxzbCE8QLpsT6iBpMIO8z8NUrKciybSfxwJrc3IuYLOd1aUaT7KuScxzmrBAnZIRJ4aAhTNf0TcV77Jj7IE6bHUJ4yB+WJQOAIcU5V/TTHRkN+R+CTnXvODcPbd48iZjOKmvHpr0cUUKaUebDdtKqtDsTlWmY6RV3SBvwXOcRux9eTIaVb2Ye7pZVzIM2x7KfjB1puuE4Q67EPso8ewqHYka+5/Ts8kneUoWXniSZzhcJd7zsJvvK0P3rNM/pqJFryGYhI7Xf4Cz7d+0lZEi57MbqDA8xBHWw+C1dCWcy7pyt9NqAHC2L2su+HXpgvtAWcSns9Ufke6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Mon, 4 Nov
 2024 04:58:33 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 04:58:33 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Ertman, David M" <david.m.ertman@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: change q_index variable
 type to s16 to store -1 value
Thread-Index: AQHbKSh+Qbe8TGemDEaihb47b6l0x7KmmZEw
Date: Mon, 4 Nov 2024 04:58:33 +0000
Message-ID: <CYYPR11MB84291DCF4A64EC7DE16B88C7BD512@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20241028165922.7188-1-mateusz.polchlopek@intel.com>
In-Reply-To: <20241028165922.7188-1-mateusz.polchlopek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DS0PR11MB8718:EE_
x-ms-office365-filtering-correlation-id: 51b71ad7-2272-4bee-e304-08dcfc8d557f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?bFU28yC94HMLhN73GWO4B6bFXXXPG1T86XARYa4f7xWKMMIHcBqHLD8JVKvL?=
 =?us-ascii?Q?nSSgFjVZWhHqxE6Vv67kLejU0tL7TPZnXU42Ejzgs1HagLLgIWpRjjuFTuwh?=
 =?us-ascii?Q?ek9hBOK3y+vnWflhzERS2m0m615oIgi/8DmINAOjbAIj38CYjXEPIYiOoQD5?=
 =?us-ascii?Q?gehFtd0pTVRJDNYPe0Aw69wTMnVOomy9Q4k7HbLbUROF7c85BCiwlyM6FoaR?=
 =?us-ascii?Q?v5JYp/GqdEfxfGLG3ImjyvweaVu7XsHnbRWUpAB683nvpxbHEO62RzwMED9M?=
 =?us-ascii?Q?T/AKfl0WpVxfHy/RV24nglRrpP2vyn9g2UDAsaRz9aZSGpiVG5N7SbpymErY?=
 =?us-ascii?Q?HXBM+G7TCz1SghsvT0D1rCI5i+L5UrDtTbOzKsuwudTb8d47RKOi6CoZOW20?=
 =?us-ascii?Q?ctpNDwum/ymH3EAnUWf9Ju/Vpsl1a0g6B3cEf/rCqIgMR7R6yOmfKiJYl+7i?=
 =?us-ascii?Q?iO9Uo/vl2DHxHpCe4ZHzVfz+5o/8hjwijTltz5Jn7bpSEAeTQEKfxwq6ie7M?=
 =?us-ascii?Q?zwdoNPun5K/MG7B2a0+tnJALHo4LrVgGO8p87KB0wI22YmVy3TZnhTsJh3MJ?=
 =?us-ascii?Q?8ZrzunxNZ5Nt0r1SJ4CsYNIbcfx37SFwA3R3SBySquH9jcxy13vRq4TkWfdY?=
 =?us-ascii?Q?45/nTG7h6i9SdMLZ0ECErzL2JSpGinHyYPRl9B8ocrl9jDlzIWMZKWt0CmXK?=
 =?us-ascii?Q?h2ykF3UBQijwZ0u1HHH0DJ/jt0QwrNWsh2uca3gUWYNmyfzStjeUC4OPy9Xx?=
 =?us-ascii?Q?qNV0M7RYsMQEDLY65IcDmsBCBy+zLP6Pt7KXFIlui0NZ+6WoVBf9DBsWLCh6?=
 =?us-ascii?Q?a6TS1sTvr463wLIrsNuCWAW7mUQ/RURdu50L/dtBnTYNhUf8WgDZS2DlbUVc?=
 =?us-ascii?Q?Z98rif9Sb97q+RUPwhRt4CWfMBMGrJ8d21XWyvvOpj3lWim2N47mHJRd7XbF?=
 =?us-ascii?Q?1tPu2pxFa5aTXP1O3BWgeQRGLgvSo8Sq35Hz+S7LE9KumvQKOYAkjordZruk?=
 =?us-ascii?Q?vZytuGmZG3M6Bl48Z3Iz2dITbYQp7Y4iV0hUgWzQgfFNswakZPxum2NLsR5I?=
 =?us-ascii?Q?8TjS9pkPnQg9DxOfZY/muizTayP7KflswiufwPED9OYYh0eP9KtzN+bHDhaQ?=
 =?us-ascii?Q?2ReS07M11sH2adFjzSNKSzcR/ow8bZlR2fAZA1Mp4wtGZCMo4OgjSXw2LDfZ?=
 =?us-ascii?Q?6v6KuwEXYnVmkC31OpDMW/idRMarhkdXdfs4noC6AJwuycKUyF3Aw4IzqIqu?=
 =?us-ascii?Q?EhAn5mxsJYd1yyF4jU5YG59ZIFnkh6qCJoHgBACTyfrTGs8f83RpRcD/hpLM?=
 =?us-ascii?Q?v7sbWz2NSEWPuFNPvxRp/fHSgvYc7BW3EcKpfZwjsqsbAlS76NWvxlPDHSmW?=
 =?us-ascii?Q?+K1IfE4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Uwy8XOHv8uzhJ/h66ZawyYaeFQPQAogQB+OZ0w81jzLYYgrnmfYF5VM3lYRU?=
 =?us-ascii?Q?BniVMAN683wst78vbJNSpF86BQ2td1LSsK09OlIMFrruIJZepLnlLFIHudvV?=
 =?us-ascii?Q?8Se+Qbzsd3efBqbsK4ZyvuEjTDugP/YP9SdIwOOR9HVaM4r0MtIjEdGh8W5k?=
 =?us-ascii?Q?C7MfklZTOkj7dgUz31oSgBlJkP33K0HPWBM0EnodrHj1aWbDWDu9h7kIitdx?=
 =?us-ascii?Q?5e/l49Zvc7tOnN1jkA1JHEffngLMxcMzcFp/7z+dRUK6ePhdoBQhz9pnP0VQ?=
 =?us-ascii?Q?DtpQGNCJDlwByVYSxokC5fkOxm4B2YzcUFSPUYGZJglHYGXj8Lwt8anhl8mE?=
 =?us-ascii?Q?xQkKeSdoE1qhBw0GlqIu/m71olASJSoJelZD37FzZgdqvDB59FBbsNz+JDnx?=
 =?us-ascii?Q?63Z8xHgaaStK/9zLYbrsoASFFoXqrPEzKYrEJge41bUmRTtBJGzg+g+ep+Yt?=
 =?us-ascii?Q?nq92KZcO+DFs+RWEw5uQzaZ/jqfNIxsTr72fr4lSTyIO6MhJwXdIOjjznoP+?=
 =?us-ascii?Q?vl58d3sDlUuN0gKjtO3Xy96jidg5y0LL09IMwepdowm2bXD4Dhsm8lZjUegv?=
 =?us-ascii?Q?zbk0FtKpZx9IOQvCkF8xDXs23abdIoCYw6+BAF0nVcEvXeXCR+NNCVBqCMFy?=
 =?us-ascii?Q?ZZL2o3bNKaYcZfLKs35s+18v4ukayVRIFxq+FTU3cxgldULcALrkR37L8ISK?=
 =?us-ascii?Q?VPv23wsuFUXoYAQm9k/uzUWK5+z5oRDzMR8p3afZRmNfa7foAM+KgMLj0HqY?=
 =?us-ascii?Q?cV7D660l3Hxx2tE5o6JYliHEd7s+PAJsSgH3KKaQgjYMv+h5Rk96GfR187bC?=
 =?us-ascii?Q?DyXm+ERz0NCntKMd4wfKssFtpPSvAtfjOjMNoC2pPRw3CgEN4Ixnd/ndKqja?=
 =?us-ascii?Q?pVGYF/2yJnAb+bO4M8Zjf6E71zoGhOySw7VFO6WeI96eyx5h819gY+hQgwAG?=
 =?us-ascii?Q?FpIbO1pxK9xRXwM+ZpFGqbUMaO0C7EVmvVonLVgAjy7ntpaV4T7XWGXBqEfK?=
 =?us-ascii?Q?zzvTER9UJPg2JislgToCThfEL2n+a+YvcWo6alc+nxfgUpoIRyq89ZgHfjx0?=
 =?us-ascii?Q?k67ryU4Q+SFAHNazzL1TJhkurHPwXi7W2DVuh/JG1XDcyg3Qrz8f7cAskBgu?=
 =?us-ascii?Q?POzVkTHwxO1YixwuoQP9P1NCq4fz+XnZ7k6gPSak76nrTe5vHl/i3SDfWQnR?=
 =?us-ascii?Q?wLR+BpH05TuH3zWZVgYXxakDBSZ1G82moEG1q8bgGAuYAG5biu+fjCV/7XQ9?=
 =?us-ascii?Q?TNm4N5PVuU1lpUr4b4cfxp8ZtjVEL5rq+07pcq3zFl1DNXgcUa/j/3th1hBG?=
 =?us-ascii?Q?yPLSxz73hbchsPkPl2gGOd4ZOg2Kj1fMKw7Ck2SbGFOKwlqZliq8lV67EjWu?=
 =?us-ascii?Q?TzOwhi33gihwotC13/lJ9fdV3l3oJjacMqAUBMWtyA5K9kIitGcXiF5sdfG6?=
 =?us-ascii?Q?527YTDHirfA3wHZp1J1MYiWXKoBrkaNtPqCsTC24BBJjieWqq6uYzMvXOHFm?=
 =?us-ascii?Q?9PhGuDpNSk6ipMrVOoWeymegocAV6VL61OaNmKo8zBRf6wsDWFLryl/SRFbf?=
 =?us-ascii?Q?gGgjXZHL9AX9uN/wcg/jRY3MDxa2wzJ/y+UrC6kKiuHMrnRR75DDdf4g48Rl?=
 =?us-ascii?Q?vg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51b71ad7-2272-4bee-e304-08dcfc8d557f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 04:58:33.4439 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hVphCW38JJRhAiDEvmvmY4y3JWjjleEeuVMXTSBtgp4BGmkMHMx0n2JNWpx+x/bLGAUVGgnklItvH9BG2Vt0PxbwmXSYBavyfCrM5ikMMaH3+d3K79UWO88ZAvhQYBgz
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8718
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730696321; x=1762232321;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wcUTDMWob42wE8VUgxfaGUmgwKSkqPJwvAVVwFKy2RE=;
 b=XzBGlgtGxXLYigZbt2MxbYIFq7LQS59d+NOxlJFWCoKfbVzjcwqrXdhL
 H01xk60ltOHRGN9o1iOb+M6uRN1ThhAI2vm+bLZAooZt9wN3wr0lAhtyZ
 g3ByrgqpIu2XWWBJO939sYzFK37EI8QPkuaUb1Wa2IwcM37MT2/WgdOz7
 gLwHXX51CJwe124/MKJ1zWwSk24Uj0GGgv531S8H3cAEcxAKpX1vmRIcF
 eN4HVK8AZcietMO7vngU0REItvx/hwsdmDWq/e1YdmC4EtZFyJArmwXTw
 XwF7UGCr0edILZfkzRlQtyghQTXOkCCwd2d6eW9gNsfNJUjnQRpifPt59
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XzBGlgtG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: change q_index variable
 type to s16 to store -1 value
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ateusz Polchlopek
> Sent: 28 October 2024 22:29
> To: intel-wired-lan@lists.osuosl.org
> Cc: Ertman, David M <david.m.ertman@intel.com>; netdev@vger.kernel.org; P=
olchlopek, Mateusz <mateusz.polchlopek@intel.com>; Kitszel, Przemyslaw <prz=
emyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: change q_index variable t=
ype to s16 to store -1 value
>
> Fix Flow Director not allowing to re-map traffic to 0th queue when action=
 is configured to drop (and vice versa).
>
> The current implementation of ethtool callback in the ice driver forbids =
change Flow Director action from 0 to -1 and from -1 to 0 with an error,
> e.g:
>
> # ethtool -U eth2 flow-type tcp4 src-ip 1.1.1.1 loc 1 action 0  # ethtool=
 -U eth2 flow-type tcp4 src-ip 1.1.1.1 loc 1 action -1
>  rmgr: Cannot insert RX class rule: Invalid argument
>
> We set the value of `u16 q_index =3D 0` at the beginning of the function =
ice_set_fdir_input_set(). In case of "drop traffic" action (which is equal =
to -1 in ethtool) we store the 0 value. Later, when want to change traffic =
rule to redirect to queue with index 0 it returns an error caused by duplic=
ate found.
>
> Fix this behaviour by change of the type of field `q_index` from u16 to s=
16 in `struct ice_fdir_fltr`. This allows to store -1 in the field in case =
of "drop traffic" action. What is more, change the variable type > in the f=
unction ice_set_fdir_input_set() and assign at the beginning the new `#defi=
ne ICE_FDIR_NO_QUEUE_IDX` which is -1. Later, if the action is set to anoth=
er value (point specific queue index) the variable value is overwritten in =
the function.
>
> Fixes: cac2a27cd9ab ("ice: Support IPv4 Flow Director filters")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c | 3 ++-
>  drivers/net/ethernet/intel/ice/ice_fdir.h         | 4 +++-
>  2 files changed, 5 insertions(+), 2 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

