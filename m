Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Cj3IXxrFWoBVAcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 11:44:28 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 116055D396E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 11:44:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D3B2830A8;
	Tue, 26 May 2026 09:44:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iZSYM9oozFHW; Tue, 26 May 2026 09:44:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 66A9383046
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779788662;
	bh=fOpQ0YHtaFgkpBY0T/sYxanN+o0EDh0XAIzrhVeEbtM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JaqUTx3iCmY380SlJgzC10IWePqCpnovTZAmGir6CEaPoLu0RYcPHBQ/DLjbax5hx
	 3WotykEhGa2qPveWdvDLlAS2wtzvTEFU4OY8Ut+BZ0dyocAzea0lhmiKIpQeNWr5U/
	 ybQtiR6MMsgsSpohsFoW9daIvHqzuBWnYThCL2dSIY2/xuLVQ7TxfhqarpP0ETAT1Z
	 BiZnC/vkswsx85+/c44owPJGpeV7twfPjp+BdrKvr/dlv9iwyJAzCAl2mHWYo9na8V
	 ssks961cEJS5bJf9U/OmNsZiOK6pdrUVpNywPK/qJMxGXXlkHYpV3HISiJR89ygKSt
	 d3sXZEdvQY/9Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 66A9383046;
	Tue, 26 May 2026 09:44:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C330C297
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 09:44:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A8A0640786
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 09:44:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2BlF1SIYeYZh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2026 09:44:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C9BA440183
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C9BA440183
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C9BA440183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 09:44:19 +0000 (UTC)
X-CSE-ConnectionGUID: ze4n9TTzTw6rWYBk6Cj6DQ==
X-CSE-MsgGUID: mqYRGLQGQqqmSqP6Y0ysrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="98173380"
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="98173380"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 02:44:17 -0700
X-CSE-ConnectionGUID: H9cwEsD/QFCQPFsQztuO2w==
X-CSE-MsgGUID: SDvq2JD7Qk246GLFZ57lzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="237687059"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 02:44:19 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 26 May 2026 02:44:18 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 26 May 2026 02:44:18 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.53) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 26 May 2026 02:44:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RyghZcD/5SRFy8xvwMs9T2ujVZX4BK50UfyDlotVyXFgPvnohRbZEK0pp5HDYsR65vFVEwijqTp3ScA0EZ1W1YGpIBg+g7GSlChWhiKYR/13NWXOo43dcsxL1KIcequpOsoedf7jiCJ3rhWRsZ+OC61nxsEBEIMDg57ydB6mAoV+myWZaQNa1D89nxFh6dj1UFD9tB0N3kXzTzP7sxoRSlr8r312i0jnP2Dtmla6oDDjnsq6RlorK0bd5G1GM6XszXJiKPcgKzZrjSh9vDaFaFLIIwCB5R0jNxnpUe7YOLGBrWINaJ3Eh/r2TCjcHEKgbiCX/X0nxjp+Yto0aIqqJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fOpQ0YHtaFgkpBY0T/sYxanN+o0EDh0XAIzrhVeEbtM=;
 b=TAWjnFXzR0pBH58sGB4K5x9WVX06z28kmYYgpBOSKkHGAYC5CQ0elrCf9k0idk2jdqrXc/si9YR99I0gaBPzjE13U46JLhv+sEgzZVi4ogH2iU8mtY7Nrzfdl7g7DihnXpEs8ITa6qta37zZFkG3vt0eHzdamaGwKtg8sLsVvjGV6m6jEVq8/L20MkNhprFlSLFsKAHyNMCFsV7DoIEUx0koEm3p6XPidjFIx03/iQ88Dm1pPKZgvYYYK4LmTFEuJq1zloIjbvRTLj3Hed/+bdo/S1+UPj8sXNk6c/i7sfvrCbfZ0obnz3AANW9DYFAV5am2+hRdksC2YVCqlVxE5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by SA3PR11MB7555.namprd11.prod.outlook.com (2603:10b6:806:311::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.20; Tue, 26 May
 2026 09:44:07 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%5]) with mapi id 15.21.0048.016; Tue, 26 May 2026
 09:44:07 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "kuba@kernel.org" <kuba@kernel.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "edumazet@google.com"
 <edumazet@google.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH v10 net-next 6/8] ice: implement CPI
 support for E825C
Thread-Index: AQHc6DzsQ0uD5J3Sm0qO3G11Gyv84rYW2maAgAk9a6A=
Date: Tue, 26 May 2026 09:44:07 +0000
Message-ID: <IA1PR11MB6219C195C03B2D5FF1A951F1920B2@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20260520093628.3930705-1-grzegorz.nitka@intel.com>
 <20260520093628.3930705-7-grzegorz.nitka@intel.com>
 <IA3PR11MB89869D3D47DE538225AD222BE5012@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB89869D3D47DE538225AD222BE5012@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|SA3PR11MB7555:EE_
x-ms-office365-filtering-correlation-id: ae30377e-fa39-4f6a-a635-08debb0b54ce
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|1800799024|366016|376014|38070700021|22082099003|56012099003|18002099003|3023799007|4143699003|11063799006|6133799003;
x-microsoft-antispam-message-info: bzlnww3kZnXskunXOlcyy0TjwPYA3nmuH6GBnCtsyNHsIUJPJOPmFda+OGOKfhgBEcsvTbFWJ5vktgiFTTNcjBQqvsypDS2LnZAPkzwph969FDmJs6PI7doWdqiqP9TV9PQSoqk4E7Y/Af7Gw3r8b1vdzkwApUNMl+msK5PFTchO0jh5FE51dWilvJXyfNy5ira8eIBMaYbczSHUB8RlbtBjML9hOTKFMEF3ehkZt8vv/mMINB3nGslt/eztCK1xb2QqE/V0RrUIpKW2Dtt8OZvfz9VGfBnMHnr70QDWDwUfNJgBIOygbBoh29ze/KI0PopIBgXMxWpTPE3p7m3UZSKxyHgsSaDuj5xI2BAWR2RWS2qrDL+eWfWxDqTScAYEcirwYq77dTGsQH1W8RiTJhXRy0iJSQCEjvBoveOfVXNG1/7BsLyL74oAxIOrtuiSAuYL49y6DbrsNoZ0T7gbQhVqcJs59BhlH/OmE+sCjTA1ns4jsxbk2ertlrmAUm6getQcWKCrwB/wFGrHwQoOf+ms3bwvgssPvOi6lBP1EFYruwmN0srIZeKmxRMiG5HxfmLmadt2f3TQCKCH76TgagdJozAn/JI6QmPzWs9ocGq/PtTfdsp0f5/1Ne7pEP4zLf+mfmCY8xC/tJVfbL5d/6JyMVMeI91WOVRs6YAD4STj8VYwd8su/w0HB8L+/RN0XNkwZMeyQ0Q75rQ3J//jUlSJzKGCUtnN11ijEW/12j45Nj0rU1ql7NmVIvjCmZrF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(366016)(376014)(38070700021)(22082099003)(56012099003)(18002099003)(3023799007)(4143699003)(11063799006)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9m5gEy10ANTolyDoBMMZWkJyySX3kwYBOVXurQJYu7eJpNhptbOCoost6AjX?=
 =?us-ascii?Q?N96zr40yP0in/lTrKUDMZ5vYTE8gDXTjRIK8QpXN8dd1mgrNvujNfT8c0CbG?=
 =?us-ascii?Q?nZdgrucWBuU59UYUjrYFEejjP/YrgdVoIXiOEKpWRs2H6eY/ePO8T0ZbIk0a?=
 =?us-ascii?Q?OStP4Pnq2EF9h8QO4eJv7z56cNh0Oxh48KsW7aJfq8HWjULigknMYZuvH9Cr?=
 =?us-ascii?Q?fblkvDdPm2T2Pi2+oKMc0jj53Q6pFSN86gEeBqxtftHYsdZRQPrd5ESY0XYR?=
 =?us-ascii?Q?VsBnja3INGOh2mj37aKUPikXSjz5fGQeJ+fpOsk2WBM0izUg1ruMs7gjV0KT?=
 =?us-ascii?Q?O14CJLUqjQFl2fh46gXfZnyUeO0UzQre+aMN3jzrt/z1BTehM+xSHWwLbjpd?=
 =?us-ascii?Q?TqEiV1+vuyYtvpIyFMrEhpd4h+06DvMCdzHwMhZycxSeBe7L+NcIVn9fJnEn?=
 =?us-ascii?Q?b+QYXqU6P0keb+5/D4nNROGmLIOgXqfJN9BwEF43ReD+0fTpuyO0QRhvfNLp?=
 =?us-ascii?Q?kAFZifcLTfpP7mxbRoaISZJp4vT1HaUTxfi8kDLlpG90loeOF/5+he6XU4TD?=
 =?us-ascii?Q?SAF4Hic3aho1SmV7Agr0W/gEn1x7p7csoon16m8/0FoTHoNhUSdKX/lkIP2D?=
 =?us-ascii?Q?HAwaBu/v+PjPcjAb9EGZ+Wu4MmcXFTxk+Spqnii++gKQIddo+i88HghRHj/7?=
 =?us-ascii?Q?KkAuiWWLiNmDA30i6NhyoVkblCsOCf0JcLFVHRpBIREXFPkIBf6tufmx7P6i?=
 =?us-ascii?Q?0+FvDXlc2JOnIHxmgZoFQuD4cReGm/eX7hCBgugQD3niRaXNndN/2oFF35EW?=
 =?us-ascii?Q?eIlnBucBHRLCihld+anSR7o3XWvzze90U/1AsR7+4dgRtZsYa0U4okbuAzug?=
 =?us-ascii?Q?JZHNS6kYS8prQ/z6hQl3JuRYSQjjI9R31TL8bpkMi3Eu8qM+zAqhubXKcNvs?=
 =?us-ascii?Q?DAtNKOGWYU5WxlVyR2nDoQhTB7hzySM6B0XeboQc9I8CNcKMz9bmyyED5fVb?=
 =?us-ascii?Q?uq7o/JdS4iSrNBAPBTUxIfYq6bRsjM4iT/SiD2OIMFhL/57ec6eL4tZZR0eL?=
 =?us-ascii?Q?Zbpcqr2kRHFnemVOBHYDElFAZ7qkd8x/y5uGTcDINVo+KRCH+pDh6h7zUGQk?=
 =?us-ascii?Q?afesGppyefbIGpt+PLmJOsOviDU0ET4HdYsSb8asPU6uYaYZxTTSF2aFAqTd?=
 =?us-ascii?Q?KUO5VYyXbN0fjB8stDj4r632v1+1jHWFUZvHKrRdQw1jVTvpAaYIk3mr9IYA?=
 =?us-ascii?Q?hrEWtFrCFOKpi5v+EdGDpic2tVMtyvx30Bl4/fpoO5z78/MjTwexm8JRGu6O?=
 =?us-ascii?Q?zEVRWusBxFIZli36Oq9pJM6KeYlIWYcFLDBGQVvt9oYa5wfFAXz7GOp7FyMi?=
 =?us-ascii?Q?mtH6n+kyjedlnSv7kM9gQthreEV9dGkaAN7TFkVAkxIHBtUfGelRh0MXrOKP?=
 =?us-ascii?Q?0RqF2zakXG8NSN3c5OvoiHN5GE63BhMbXG+g/ICSoSslcA92RODX1KLSrmap?=
 =?us-ascii?Q?mawlWWmeu98T/hWT0ipfhu/+0dpWM2ZcF+FetONwQ9GhGDvc8MWFCpPIRfMw?=
 =?us-ascii?Q?c4MAijdACZQZdU5MmzR9sFmHHCP/5aLQB6l5AXzK47VPbohjLdZLwZFAH0z3?=
 =?us-ascii?Q?ZY4kgccI2/34vmCwb7tLSNtOuzkMLw5tYY9OSu1zOBaV16iI9z/eaebIn3aE?=
 =?us-ascii?Q?jdRph0ItvxzbVJSKm6gcxK/b6or/7AdGmTVmB8+XLBmGgwcZcjw44TdxRHPe?=
 =?us-ascii?Q?K18cDYa55A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: HV5EyggIBxzwsZvITZkT50yytonxhYs6nx5mvfoZATUgYzMRiTQyAHij/m2H0WMkxIYDtHbgjwgfcaoCzu/fhGnBJXw7P5MzEFtO5SyIilR0zqS4KdvHUGq54TU+o2c3I3SMP5FQd7I3qwhc3F3fieYOFgjJR9D5a+HPrI4NJIHWm1S96jRXfLiLoge4mI8h6MM7as0noek4uKEDOT2u1pt/MNGVZMY13+vM0xVan80VEHQegusqDOMd3j4RqSLXTckQK0K7N4fusvKNkVIOx+JnEeoOX7RpY5hCPjDvTCWbFkQTrpzwfv0jkBfI0FXuD8mjsYNqHW/XUQWnSkanMw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae30377e-fa39-4f6a-a635-08debb0b54ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2026 09:44:07.4965 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 03M8uLnzzDZUZOOZq8U6i99zEczCqjyPElXD0TOVAMDSnhV0WTEzKCuibO7FyPC46j8KDEvceT3mrSS5motSS8RFQwPM9SThWCA9s1gs1lI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7555
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779788658; x=1811324658;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jradOPT+BRD0pKgyi6ksQPQItXQwwhALo6bRpO7N/1I=;
 b=LqTkzyLHqNZryJqDBEPRnbCe2b9JqTxfReL2wK8Qps00k26q3RgWLnbB
 Fx9kxpXw9kCTD9fNf8JzpyUi4zOGdQHN+7tFlf9cveFoyqceu1E2MGssb
 MXOropxPYW6bGoCli0IkuOlBt/B10fTx8v5x/HVAn0i+rJFTOg0WOGs3y
 RqksBtOyYM5WENVkjKPAUdtoU2oeoc6/ZEQRVql3+Cv2WoOuT5hQWc8n5
 Ka4aYJwze+2LYASCu8x6bEfEgaekeg8sePpqLGMEZlD64iZfdRxg3KTXz
 vMv/ym8fPcrbgADWshw+BC/8Tb+Lt9nzRPEmj7e+ZjvDaV3dGDDDWBtBF
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LqTkzyLH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 net-next 6/8] ice: implement CPI
 support for E825C
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	NEURAL_HAM(-0.00)[-0.993];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo]
X-Rspamd-Queue-Id: 116055D396E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Sent: Wednesday, May 20, 2026 2:38 PM
> To: Nitka, Grzegorz <grzegorz.nitka@intel.com>; netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> donald.hunter@gmail.com; linux-kernel@vger.kernel.org; Kubalewski,
> Arkadiusz <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch;
> intel-wired-lan@lists.osuosl.org; horms@kernel.org;
> Prathosh.Satish@microchip.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; pabeni@redhat.com;
> davem@davemloft.net
> Subject: RE: [Intel-wired-lan] [PATCH v10 net-next 6/8] ice: implement CP=
I
> support for E825C
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Grzegorz Nitka
> > Sent: Wednesday, May 20, 2026 11:36 AM
> > To: netdev@vger.kernel.org
> > Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> > kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> > donald.hunter@gmail.com; linux-kernel@vger.kernel.org; Kubalewski,
> > Arkadiusz <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch;
> > intel-wired-lan@lists.osuosl.org; horms@kernel.org;
> > Prathosh.Satish@microchip.com; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; pabeni@redhat.com;
> davem@davemloft.net
> > Subject: [Intel-wired-lan] [PATCH v10 net-next 6/8] ice: implement CPI
> > support for E825C
> >
> > Add full CPI (Converged PHY Interface) command handling required for
> > E825C devices. The CPI interface allows the driver to interact with
> > PHY-side control logic through the LM/PHY command registers, including
> > enabling/disabling/selection of PHY reference clock.
> >
> > This patch introduces:
> >  - a new CPI subsystem (ice_cpi.c / ice_cpi.h) implementing the CPI
> >    request/acknowledge state machine, including REQ/ACK protocol,
> >    command execution, and response handling
> >  - helper functions for reading/writing PHY registers over Sideband
> >    Queue
> >  - CPI command execution API (ice_cpi_exec) and a helper for enabling
> > or
> >    disabling Tx reference clocks (CPI 0xF1 opcode 'Config PHY
> > clocking')
> >  - assurance of CPI transaction serialization into the CPI core.
> >    CPI REQ/ACK is a multi-step handshake    and must be executed
> >    atomically per PHY. Centralize the lock in ice_cpi_exec() and
> >    use adapter-scoped per-PHY mutexes, which match the hardware
> > sharing
> >    model across PFs.
> >  - addition of the non-posted write opcode (wr_np) to SBQ
> >  - Makefile integration to build CPI support together with the PTP
> > stack
> >
> > This provides the infrastructure necessary to support PHY-side
> > configuration flows on E825C and is required for advanced link control
> > and Tx reference clock management.
> >
> > Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> > Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/Makefile      |   2 +-
> >  drivers/net/ethernet/intel/ice/ice_adapter.c |   4 +
> >  drivers/net/ethernet/intel/ice/ice_adapter.h |   7 +
> >  drivers/net/ethernet/intel/ice/ice_cpi.c     | 362
> > +++++++++++++++++++
> >  drivers/net/ethernet/intel/ice/ice_cpi.h     |  58 +++
> >  drivers/net/ethernet/intel/ice/ice_sbq_cmd.h |   5 +-
> >  drivers/net/ethernet/intel/ice/ice_type.h    |   2 +
> >  7 files changed, 437 insertions(+), 3 deletions(-)  create mode
> > 100644 drivers/net/ethernet/intel/ice/ice_cpi.c
> >  create mode 100644 drivers/net/ethernet/intel/ice/ice_cpi.h
> >
> > diff --git a/drivers/net/ethernet/intel/ice/Makefile
> > b/drivers/net/ethernet/intel/ice/Makefile
> > index 5b2c666496e7..38db476ab2ec 100644
> > --- a/drivers/net/ethernet/intel/ice/Makefile
> > +++ b/drivers/net/ethernet/intel/ice/Makefile
> > @@ -54,7 +54,7 @@ ice-$(CONFIG_PCI_IOV) +=3D	\
> >  	ice_vf_mbx.o		\
> >  	ice_vf_vsi_vlan_ops.o	\
> >  	ice_vf_lib.o
> > -ice-$(CONFIG_PTP_1588_CLOCK) +=3D ice_ptp.o ice_ptp_hw.o ice_dpll.o
> > ice_tspll.o
> > +ice-$(CONFIG_PTP_1588_CLOCK) +=3D ice_ptp.o ice_ptp_hw.o ice_dpll.o
> > +ice_tspll.o ice_cpi.o
> >  ice-$(CONFIG_DCB) +=3D ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
> >  ice-$(CONFIG_RFS_ACCEL) +=3D ice_arfs.o
> >  ice-$(CONFIG_XDP_SOCKETS) +=3D ice_xsk.o
> > diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c
> > b/drivers/net/ethernet/intel/ice/ice_adapter.c
> > index cbb57060bd56..2dc3629d6d0f 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_adapter.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
> > @@ -62,6 +62,8 @@ static struct ice_adapter *ice_adapter_new(struct
> > pci_dev *pdev)
> >  	adapter->index =3D ice_adapter_index(pdev);
> >  	spin_lock_init(&adapter->ptp_gltsyn_time_lock);
> >  	spin_lock_init(&adapter->txq_ctx_lock);
>=20
> ...
>=20
>=20
> > +/* CPI PHY CMD DATA register (CPI0_PHY1_CMD_DATA) */
> > +#define CPI_PHY_CMD_DATA_M	GENMASK(15, 0)
> > +#define CPI_PHY_CMD_OPCODE_M	GENMASK(23, 16)
> > +#define CPI_PHY_CMD_PORTLANE_M	GENMASK(26, 24)
> > +#define CPI_PHY_CMD_RSVD_M	GENMASK(29, 27)
> > +#define CPI_PHY_CMD_ERROR_M	BIT(30)
> > +#define CPI_PHY_CMD_ACK_M	BIT(31)
> > +
> > +/* CPI LM CMD DATA register (CPI0_LM1_CMD_DATA) */
> > +#define CPI_LM_CMD_DATA_M	GENMASK(15, 0)
> > +#define CPI_LM_CMD_OPCODE_M	GENMASK(23, 16)
> > +#define CPI_LM_CMD_PORTLANE_M	GENMASK(26, 24)
> > +#define CPI_LM_CMD_RSVD_M	GENMASK(28, 27)
> > +#define CPI_LM_CMD_GET_SET_M	BIT(29)
> > +#define CPI_LM_CMD_REQ_M        BIT(31)
> Indent inconsistency spaces instead of TAB

Fixed in v11.

>=20
> > +
> > +#define CPI_OPCODE_PHY_CLK			0xF1
> > +#define CPI_OPCODE_PHY_CLK_PHY_SEL_M		GENMASK(9, 6)
> > +#define CPI_OPCODE_PHY_CLK_REF_CTRL_M		GENMASK(5,
> 4)
> > +#define CPI_OPCODE_PHY_CLK_DISABLE		1
> > +#define CPI_OPCODE_PHY_CLK_ENABLE		2
> > +#define CPI_OPCODE_PHY_CLK_REF_SEL_M		GENMASK(3, 0)
>=20
> ...
>=20
> >  /* Port hardware description */
> >  struct ice_hw {
> >  	u8 __iomem *hw_addr;
> > --
> > 2.39.3

