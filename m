Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 376A7875F54
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Mar 2024 09:22:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9F8F60854;
	Fri,  8 Mar 2024 08:22:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZRUWSMk7Q3IV; Fri,  8 Mar 2024 08:22:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2854F60797
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709886131;
	bh=5C+b6xH6vYsf9Yi9ElPbOaju5XKqfogiODXw/wGjfgQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=49tm6O+IhZ/mCDN1/7Ok09QoiqZVnI1ja7xT/P46idnEvingxsmm6E79uVlpC+knZ
	 SNlbGS/cIJjMNeDz+QZ3aUQ8DBWEpHcEOGdh5DO8QLWRTRffPnT9ZFygLAjKtZsK0A
	 wmrr/sJ1XjxCuQm5pTEb99x48pGAG5IKIOF6THkvIIt7XrtsF87cssZBjrOsuMWK+V
	 /CdtELf/QyPkQrmAUe2ZHnF0f+XcrrahGu3exrQvxks2VQ7RDkteaRVzvn4pArvKWH
	 X5uH8aNBPG8QK9lU1yce8V3f3w5fZoCua7WLg9Jb0r5cC7DB3YoleRItpNbBcdZYay
	 Ot/U1MlMcevDA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2854F60797;
	Fri,  8 Mar 2024 08:22:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 81ED51BF990
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 08:22:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7AAC0402D0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 08:22:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s2atGItaY0oe for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Mar 2024 08:22:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5A2A0402A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A2A0402A8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5A2A0402A8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 08:22:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="15739162"
X-IronPort-AV: E=Sophos;i="6.07,108,1708416000"; d="scan'208";a="15739162"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 00:22:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,108,1708416000"; d="scan'208";a="15088758"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Mar 2024 00:22:06 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Mar 2024 00:22:05 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Mar 2024 00:22:05 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Mar 2024 00:22:05 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Mar 2024 00:22:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JlwUTQjBiMU7SGnJKyad98+Maos1sDcKOZ4EPVJU3y10UH5o+TGRZJ597s5EC5Vw9FDmn92pMtRwcGlqBotirrvtq4HQbLPpH9gywczo2DCIBWrQ5Ztq1cbPUq81qpQt0fMyawkC3lYVtXXFDEmYruyEI4TQMJTc/RsJx7emVgwNSlAjEeWghG0tg270tySEFYjETJOxhEGtRmsOdy6OA2EdkMY/1CuH9yFJKHS4BS3rUOw8lQ1hB3wdtJt/EFc95FeDCGMCDhIjzJKhmFmWzHebWCP1ni5U0hziZU36W0yCGkXY1dT44/R92RjOyP6+XxXfF9wytFegdNvUPESyww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5C+b6xH6vYsf9Yi9ElPbOaju5XKqfogiODXw/wGjfgQ=;
 b=HWkPiXhpQiMsxh5nD8qoG5at090jFScbjBs6Ug/RKQlK2vQQyRAbD8PkqFzK4/dU17ayhUUPK3W5AwMSbxG7SJUEF3aqRWybScStnD5MpxjqO2j2tdJVAzK3mf185KUsAs419sLuuXp0MLP2nmMF0SMCdvcAkyn0Z1c2FsPA3t/cM1WeskVTlPsMejAwgb8lHEiGzy2eeg6xuLgTQr64B1PJhGTBSemg/GXAfh+P01GXqfM/VYVmRU2XBEim/WZ7pDivX5E/fIVUOuSJnvdd3nGO8JrmeKPZwn9mef7UTuy5NRqHB2NwskK3dLrnsEdkxqt1HyGmNAe22j1fkqv7xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5009.namprd11.prod.outlook.com (2603:10b6:303:9e::11)
 by MN0PR11MB6232.namprd11.prod.outlook.com (2603:10b6:208:3c3::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.6; Fri, 8 Mar
 2024 08:21:55 +0000
Received: from CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::b792:3207:f838:98a1]) by CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::b792:3207:f838:98a1%4]) with mapi id 15.20.7386.009; Fri, 8 Mar 2024
 08:21:55 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Zou, Steven" <steven.zou@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: Refactor FW data type and
 fix bitmap casting issue
Thread-Index: AQHaWWrAzGAqJ0YuE0KvK0OXYI+ff7EtsGyQ
Date: Fri, 8 Mar 2024 08:21:55 +0000
Message-ID: <CO1PR11MB50096F0FA34CBC6F632DEE0B96272@CO1PR11MB5009.namprd11.prod.outlook.com>
References: <20240207014959.24012-1-steven.zou@intel.com>
In-Reply-To: <20240207014959.24012-1-steven.zou@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5009:EE_|MN0PR11MB6232:EE_
x-ms-office365-filtering-correlation-id: e0cef37a-8a87-4c3a-3f14-08dc3f48d0de
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JqKX/dObijouXCt1fLb83FbPa+9Fcnjb8rv4NcvoPlfMkxAJiSmeRM4Wo6jS6w0hug4gCMqWPsIcCC9Lu5RghpfOlaCRzSyvi/WgT7Wb5qY6b62QoyzIoSm9sXQfDRvA5JY4XK+g/usERXIr+9dvlXd5WQptyLHi0cRfXZm+iUGOw4NGkh6CdQ7V2MLu9Bk+R5hvneUdtQl+qtwjzY1P1HeosuZ2AQPlES4MTI/7jpmovScf3ogrG0XUmdfJx1Kvd71dR08yZAiSJcxIJB7AL403+e5gIlwBCrYbgLHz7rvNxcN5LNS1hCuO6DgboY+cKjX8GQRpg6OOpEY69I33zeRksDSdkFcJklm5w9+Fai4vtGVNzk+tdLY+rdAnmNeQZlFK80NseDNLYsZqUI37/XVB0nr8q157QG5j/l/tu5SumyU30ZDeHA2YG0FLO3X8Ba3731gprvZ7Y2sB7viZzvVKSj0GBiB4LPUs7Is3O2pHCxn2O1EqqpoXCD+b6nsCpj1sgfHBlGJn+lJ8jf28oCeOyPg5h7hn5jH2oY/GpErF0K6hDi9VZZPfaxdG0dnRCjFLofJLNIXRQkZ5EHv52G2HcErq10Ig6Nfc7S9Gk8Jum/a6zSds6QRxyLIrNud3pcNwoLS/16SbRPKQkWGyVTOZ/WmArFFzeoig8NXQV7MrOKs/Tx/lgEULTK6L9jObg36ELxa2pz3zZOHspBGEcQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5009.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qGmfqeXAUL7fCEUUgaubkE/MzUKaK/r4Ffc9pJX6QKFP0xMZjtdNlb1mBtoQ?=
 =?us-ascii?Q?ZbwxPuKFRdVOGX/OUA6mDfaad02GfF4U79yq2m3aJgo6uiI3537V0zxk0+b8?=
 =?us-ascii?Q?sFDq7SqH/rbga4ZXssU/lLTk/RVxZhsbIIvT4R065VaXW/8uFmv/KnqtPcVV?=
 =?us-ascii?Q?TRACLKqkN0kGPLasoIoaXG5GClgtW822mtKWwjKxsQiwQkreSZFqiIWPb7wY?=
 =?us-ascii?Q?rMzgTczDyiEUzs0yu37Ni+UcOmPFOyuRV+zJo2fMyx/LHoot7iB29WaTK5xw?=
 =?us-ascii?Q?4hQZ1aOA0Qq2i3bFosSal+3FwIUB15qz+/3mdqr0Wa/HKaY0gnLT0Dp6tKQ2?=
 =?us-ascii?Q?fsnqugoSTrI4Ok1azi+R3oMPcJR09Jl02FNZxaA6RnOh+U2teu7Zm8iARd28?=
 =?us-ascii?Q?vVE7JwUUrbxnA/mRIrylWGJuG6WRAX3TPyeqaypF34T2mxTBuIYCk0tv57Es?=
 =?us-ascii?Q?5ijJI3cY8bZtaXIcBBm8VJOZ6kZoUUE8wuImryYzf9mVWSEN3/1zdoeHt1Df?=
 =?us-ascii?Q?qBffu4LoleM3bfSSkRH8Off+eoazm+XJTXCOPo03wCap6oVTcMrjXQz0kb/2?=
 =?us-ascii?Q?YPYPqz65jQJRfOmixKcj2nxr+oE2K+wFokS1XD+nae0r9+KU00BWyZ6AOghM?=
 =?us-ascii?Q?87TasVYq3s4g6HnAFwMAGaEv1aPkNiti5qi4O7ZLqYi9U4z9CI6xjeipOSR2?=
 =?us-ascii?Q?iUtbB0HJ2728qV5ocjVLMwPNrbRoLCuJdElT0cXefOd1Y1JmBBxLycTkSrI6?=
 =?us-ascii?Q?JUTCIQXyg57jN0Puje4LUWJFAtnouEw37WQkqGNieXYzrboykoIWuPlR1uNl?=
 =?us-ascii?Q?WTFzSiuv69mm0BU24pZg53uH67f7wY3lr86w1vJnWfdSi5Lnhl1WZWGtCvOG?=
 =?us-ascii?Q?6PhF5rRUoDbIx3AUoMAtY/NapTC/0aeJ+o+/B7ELIswoQqyFE9e5Cib23gTO?=
 =?us-ascii?Q?98DoC8Qf2vHD9Xhdkup6A48O60TyEeIfC8ghVFGDZSy1ifezqxE8YJXJc3rQ?=
 =?us-ascii?Q?pJIC+bFF3veFpXwWh+wvuy4gCbDed2CyWsOry5dRzo9YtZvVfIqqQw55Z2z/?=
 =?us-ascii?Q?15Ok+c5AVsycDSaUmoq8cE0/mertDTTCRsn+lzsUxJ3T93a23XsS+w3LMezk?=
 =?us-ascii?Q?eOqXFT+zUS8gamWxqwTckK+L658at8Ruu6CVAQjHeTgS93WphJY7fAPqLOKl?=
 =?us-ascii?Q?oejVzwheopu/rT3PmvMqbPlKbq08ew54nZDwvK3pf2/yuzw4H7+XetZ8Y+nv?=
 =?us-ascii?Q?T/PYpSSROd7SmQqSSvJfl6qcB8JG0B+GV7nj7Ufivygju6va/8X7jlivGcI5?=
 =?us-ascii?Q?3Y5id9WoIkyOhpJyRYGP7hQeD/hbEOv6Rqi0qMOcsHoBG3e8guOwdmXPssQU?=
 =?us-ascii?Q?qaQnAjjQbGsfyGnbDz9CFv2S5PHFjOkD8tZVxWFXyeLnbFp2x6wAuU4rDLdd?=
 =?us-ascii?Q?jX8TlU6Ixok7o8M1NuEh2bkOahP2qea1tgUI5+TozmLG6ww5lnlksqYgXRJV?=
 =?us-ascii?Q?AtFfHvtEIn+DPXAczSQmC5nh0qrySzMJHiRoDUJpN7QGzjUwYwkw996h/1E1?=
 =?us-ascii?Q?EGipDU/Pky17U6z6rCcQ0Z05D1fQmHHRaQ8A6RUB?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5009.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0cef37a-8a87-4c3a-3f14-08dc3f48d0de
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2024 08:21:55.3691 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tTueRau8njmPP0tuqWXmeJe2S1nf5LvsR9As0Ti8HyWA3y2+xoFCrU53MbDDsXfe7LlcHk1xvZDZBjji11JBGnGtklI0G+TVmYz+oZ2nA+w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6232
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709886129; x=1741422129;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jfvqX8zXB3vA2j74iDQ4mnIVieEEB8jZF0ECuvyBWdQ=;
 b=Ex8QdtD75a3LhAkqfiagrWsq39DJb58P9xs1xugTfUMKXTssdYkIxDW+
 JhSTtxt2Zoum0sTHV7nEBM9lOVziNayyKsjqT+Ok4UDL2bYPnE3GhJqZm
 twKM2dZ5txAZiVhXAg47AnzTz2PKEfqrntyQ+mSyTiEc8HmKiPpJ0p51f
 LsNkw7rag8ORhTihnutourPKTwmLlFVOOmE7WdvRa5P/qdyupBm47jtV9
 zjBNyGfAtciv/erezOv5Lws2v7qRHsrX3nvKykeHwNrlPYu76LCciuKSh
 yigoeUSCpu6D4CrRu+tDRoAgFMIBsn+Qu1Uey1JZvDR4GhjEeNnNORA1u
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ex8QdtD7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Refactor FW data type
 and fix bitmap casting issue
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
Cc: "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "daniel.machon@microchip.com" <daniel.machon@microchip.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Zou,
 Steven" <steven.zou@intel.com>, "Staikov, Andrii" <andrii.staikov@intel.com>,
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Ertman, 
 David M" <david.m.ertman@intel.com>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Steven Zou
> Sent: Wednesday, February 7, 2024 7:20 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Sokolowski, Jan <jan.sokolowski@intel.com>; jiri@resnulli.us;
> daniel.machon@microchip.com; netdev@vger.kernel.org; Zou, Steven
> <steven.zou@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>;
> Staikov, Andrii <andrii.staikov@intel.com>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; horms@kernel.org; Ertman, David M
> <david.m.ertman@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; andriy.shevchenko@linux.intel.com; Kitsze=
l,
> Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Refactor FW data type and=
 fix
> bitmap casting issue
>=20
> According to the datasheet, the recipe association data is an 8-byte litt=
le-
> endian value. It is described as 'Bitmap of the recipe indexes associated=
 with
> this profile', it is from 24 to 31 byte area in FW.
> Therefore, it is defined to '__le64 recipe_assoc' in struct
> ice_aqc_recipe_to_profile. And then fix the bitmap casting issue, as we m=
ust
> never ever use castings for bitmap type.
>=20
> Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for SRIOV =
on
> bonded interface")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Andrii Staikov <andrii.staikov@intel.com>
> Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Steven Zou <steven.zou@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  3 ++-
>  drivers/net/ethernet/intel/ice/ice_lag.c      |  4 ++--
>  drivers/net/ethernet/intel/ice/ice_switch.c   | 24 +++++++++++--------
>  drivers/net/ethernet/intel/ice/ice_switch.h   |  4 ++--
>  4 files changed, 20 insertions(+), 15 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
