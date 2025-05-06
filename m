Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 220DAAABF66
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 May 2025 11:27:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 59B3480E28;
	Tue,  6 May 2025 09:27:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R9YsnKWnAJpX; Tue,  6 May 2025 09:27:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE03D80DAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746523630;
	bh=F/VxHQw6SBc3p8//afXY/SX4Ol7eN7JuLz4PhrV7T7k=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Km+hph2vUACDy8ByGL0iirIUARIqeGw/05YFkkCUuTgGnS6Dm1ujbSatFhR3mbrYR
	 PN42a59V5zd1MPwH4o432ThUSnCGSL5nHD3dHzQCm9xQnmIn2xHF0gMOx09OwJp8/n
	 Wtl66ygIufQohUe18SIgKhmM14dCOTxnNWQD5RzMmnYVll8jOO8pEJij0OSbQdNske
	 F98NI9yfU38Ht7PcY4l3tFcxNH3+24D5bgs+HDe0/xzjuaNGRv5SDFuKW77fsVMRlX
	 xyYXyfs5YIBwXlrI4qBth1dB3OPfsPvBxntsqOOM69iM00gozE+MIZsMow69lqQxhE
	 LneYSp/DVeYiw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE03D80DAA;
	Tue,  6 May 2025 09:27:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id DFDE320F8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 May 2025 09:27:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C5D524100D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 May 2025 09:27:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lDm0LnmaTmmj for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 May 2025 09:27:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 001F940AFD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 001F940AFD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 001F940AFD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 May 2025 09:27:07 +0000 (UTC)
X-CSE-ConnectionGUID: p66sZ1rqQHSjpvm71cnZiQ==
X-CSE-MsgGUID: ciS+Y9E3SR+MtiJVOnu/KQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11424"; a="48263296"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="48263296"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 02:27:06 -0700
X-CSE-ConnectionGUID: AwgJ14PySRmWveu8HGhiGg==
X-CSE-MsgGUID: 2dGX5eRsR6SIf6Aoi/XcPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="136506350"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 02:27:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 02:27:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 02:27:05 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 02:27:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jSJ7wI9xr9iFNwKSg/12w8gaC4Lur8uJ4hOGaqoiDjv8O9PhF/6h8WFY7//9txTDT7V1flihwkvLf9GPT5SlcYtv0iYTwcMJbVKZLBhnw3AOqIB5h7qLb3uRD7o3go8a5LBgY5sMKz4HvMA57hCPfBVOmA/96p5cP4jojNRblmNPU6BjBEpBJt0wQZyT9O9YvQI8qKaBZTSye5BlqMQvx90nniXyeYTEIF/2da1FN/i1avuSaApnAZpTXqTs2IEIHkvbaasnzDk1EaGYbOZ5yk4fxXjFYyJOixNdNxosIcTEDh7yBTmqaLAGEus5gNz2RHh5jFbeW0KRKYrbSrP31w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F/VxHQw6SBc3p8//afXY/SX4Ol7eN7JuLz4PhrV7T7k=;
 b=D0SNJQBWDcojfiSY9HyyuIRWnShCzWw1yzetDR4KyxUTK0Ug283o+cP5ID4FdgqnSK/gcziRZAVlpGsBOQIjOnSaatfKnelxodf0M1mStR3CLH5BkEOHz2uuH3PhEv2+2by1M/zPttCxO4SiQeLvqIEG7EWGQzf2c/V9lUl1prFHju3b8iAd3yXJJ6w8Lx1boJugANxT5LAJmc4KygY1iupbVvKwtOeyKmBDzNxntdDXYp6JOQzXI9H+VMDHSvU+VR+1LXOoDOGTRBuTTX5I0Tea4EL0JL8g2AB6EYPM238ui0M6GQ+CvpmabzB4wQqFin5HLvxeqBqPlMDg0Zjoyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by DS0PR11MB8184.namprd11.prod.outlook.com (2603:10b6:8:160::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.24; Tue, 6 May
 2025 09:26:40 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%3]) with mapi id 15.20.8699.019; Tue, 6 May 2025
 09:26:39 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Sasha Levin <sashal@kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>
CC: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Pucha Himasekhar Reddy
 <himasekharx.reddy.pucha@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH AUTOSEL 6.1 194/212] ice: count
 combined queues using Rx/Tx count
Thread-Index: AQHbvhNQiqY8ABnZhkyP3iaOujx4SLPFVa7Q
Date: Tue, 6 May 2025 09:26:39 +0000
Message-ID: <SJ0PR11MB586611FAF885ED575D41A90FE5892@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20250505230624.2692522-1-sashal@kernel.org>
 <20250505230624.2692522-194-sashal@kernel.org>
In-Reply-To: <20250505230624.2692522-194-sashal@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|DS0PR11MB8184:EE_
x-ms-office365-filtering-correlation-id: b0a1118b-72e4-46d4-bcb9-08dd8c801b42
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?tAiz/uO9daGF1y4ulJPdsPiwjLgvbzRzSMntMHqThD8KhNudofkskowT3xBN?=
 =?us-ascii?Q?GTsD+s2uH4+pV4H8fpSRMvGozUQj6o94U+KDAe+4OprO2lZbm1XEVxGbuSe+?=
 =?us-ascii?Q?eFhLSc2/aZ0k0P8vuZZhYaMbkKHswdg2B3cpZ6GbeujfhIMPbv9vxHD3CyGa?=
 =?us-ascii?Q?Aqcl4r/Kmt/ini2gp6ChBb4YciE3J+EW5ax9vqJBorDSZ7fxJimzFXWvDDDX?=
 =?us-ascii?Q?cKenf6Y1MWtVksa51xn3XaflhLywEvA7cTLfgy8bG9orqn3HXhQrxm8tMCRW?=
 =?us-ascii?Q?pAmt83LpiLxO3gu0sEoquIPWrfR+rOmzWAunVZUbM4kvyKXlcg81LTQkKTy6?=
 =?us-ascii?Q?AJYc8/eUMFGah47nULaKbgy9zI4jR26AqWulw/xSLUxC49McB9a8+7t8uDf9?=
 =?us-ascii?Q?q3O3ItOtFwrRv0UzepIJGCMY8yFNXRtghn3GhtkST6tS9dFof/SlnLhYHAlu?=
 =?us-ascii?Q?CCdVVUjsEdTsAaFnYOzkpLw+noqT8Gmqj2J5ET9aiyMtnscrnjC6XuLkMRB/?=
 =?us-ascii?Q?Qi5iCgOlLlIEvK4EYCazljlbAtUhmjvyt6WQLnnRrIYa1dyMrnsGLoiYHEM0?=
 =?us-ascii?Q?YUGgf9dZJHmmaoqGtqM2adVQ9mp1R/G9EsnAWK1U7fNb0CziWx+AN8mXMYy7?=
 =?us-ascii?Q?E3ogNHt6OsRk0ohl0B10YYYIYItiTFxrauHumKmDTaUEiM6S+Mrs/ZhGJgr7?=
 =?us-ascii?Q?v2D0U+j6lwkEfcezXHhkPBmKaGCm3Oi2KAlHTI7IQke5vMMUw9U9upWC8NQs?=
 =?us-ascii?Q?8GkU5jONd25o2O04IUS/U+P0DowqWVemXRrvOzT8ompbo6mGMotlKc40X84L?=
 =?us-ascii?Q?b6HEUnRVyUp0meDlKNM1mbEU30SiAVIoctxls8l2in5gDy3Hj7UdPQBIiJiP?=
 =?us-ascii?Q?6FTXpRfRWdc2Qy4oA5duy6uobf1+ZE1RWb6/xGuKU6S7XX54Wj5pFQM1cdeB?=
 =?us-ascii?Q?rSIn/fhidquXUTOrEBU93jFsNSYzJnfdtjSScPcxJv914INnjWrlwIc0cQqx?=
 =?us-ascii?Q?2F+fv9S4IavdR+VUojPxmiuFXYo/JMDHNzYmzsUoSaYNQfMjabVt8pRiE7Zm?=
 =?us-ascii?Q?vdbF7CsNz1jwOalC2hgVKdBA5XemhdA9acCBN2ifiZcSYzwTTbOw+N3bEEVJ?=
 =?us-ascii?Q?uygBbN8+kTbaTNV5hiUsamWEaQR8sES4MwbFz5wFbS8MlLuciYfuK9Vsfw9e?=
 =?us-ascii?Q?w+pO/lJVOAY6xb7v7uq2jzmIQQtI5u1taxwTK5eWFtwIoS/BXxK3D8cnqsli?=
 =?us-ascii?Q?wnCw22jFQwdml74qlAC4MSRetbYU1U6m1In6KBWZy2PsbCacmqqMqKgqOlJM?=
 =?us-ascii?Q?Pt2D7HzGJHQD6whKl2UdqJ2Sp0WU/ro9/NJE9xmrF7W3xGoyRnJAH7hqckPN?=
 =?us-ascii?Q?/18OR+d1VDEKJ8o+Ff7Op6VVgkRmkTHMo+Z7wkCmfjq96733npOMEVLuAeOc?=
 =?us-ascii?Q?DrIcV8XuKK1l2mBXH9kFFj9T0J3YV0hreDsKnGA+VZSNiccoCnl/tQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?y3LL5ECIEqXviAZ/OkcJmqGCemeo+PjwtowYRW/2QwCH8iLNtUlEG8/1Wppn?=
 =?us-ascii?Q?PTZz3hYEWkoKm0qfqhP43oZf/8RP2wsIsI9FRSW4TkOeojLeppQf4zFFEI8q?=
 =?us-ascii?Q?SpDW9ZFGcL35PkyF5tIZYt0cMpfLDnSnS7/eoP1FsFdnFZ2O0PkslLbFrLln?=
 =?us-ascii?Q?pUYE1MDFq3F6xZWeyL+Frr8xOAxh2Z6hOydL2Lhka1kD+WpAIozpXAnOilOB?=
 =?us-ascii?Q?yxV4zYCFlTmD/jpWDJIzF//Qjk5kKs0WC+xiWpRukdn5Sx/INr3jJxhgW77K?=
 =?us-ascii?Q?qrLSjTwa0wLrgjLGhDxFE7yIRYPdO/D5u2e6OtANAQ3/v6viRW90ldIVsIws?=
 =?us-ascii?Q?WJY9LakNPertbdne2mPadXCUHbYLGwdQ1iK6PIy57rOPjVl+68hPmMov2Vqc?=
 =?us-ascii?Q?IotWP69UKnvFGOT9P78HNmfXk2AG0xyG805onpHM3/Rqce9+/Rhye3bIEwHR?=
 =?us-ascii?Q?NRupNP3wBIU4A52vO2bfGPkV5zLvXJAjAWLL/EA0CPCOg+yeCOYDBL5jrnds?=
 =?us-ascii?Q?7IlNkM6souzLE3E3UsVqCR2Xm4ecCnLB0cOq9zX6MTIkY8MpMXT6HKNBoD/r?=
 =?us-ascii?Q?J7haUiYALVBUbwEHj5YovoY2iOar5sUaDz/ri82zQnuJ667UhQoU2V3pouwr?=
 =?us-ascii?Q?f6529ZZtKD+Ff9N5fRGN7sI2bvN+iiPb6VpZF4gHpywrubTumqrjFGUNcqBU?=
 =?us-ascii?Q?/RK3KzwHQKlPOUhyhACNgFcGqkDX4rIb5mYtLKZ7VDCyO00EkOHyL8qEkUWD?=
 =?us-ascii?Q?DZvCcwrqUF2beEOWAKcZTRlaKweRdb64zkUx8MaEG/JLK5p18nmB2mR5ckiN?=
 =?us-ascii?Q?sG7YcWajfhtkXQxKqUDqia5FO/ftcZXTG1V2I9LWlefoJj0hbGdZ8PIkw+KM?=
 =?us-ascii?Q?DkeihF0lw6BwBYKfjjJtEh85tnD8E+XkaF2Wmfnm3DmVzRLef7fgREmVSxiW?=
 =?us-ascii?Q?s0VKhRUEEEOdRpEK24vJ1kQXFeqOzA7uQuirJIfx6x2HbtDSMXQPEeaSm2Bg?=
 =?us-ascii?Q?4QIXcJHWA81USgHE2GgTs+mKS/p+Ivl3SYtmhT3JJRSNR7k1q+uh5TO5YiFO?=
 =?us-ascii?Q?cb/mE59Zou1KKkRYDJIgkYeRGZrgAJznI3NHmcBhQGtM/bRVLTYgmllV/Ndc?=
 =?us-ascii?Q?1hYxekxPRCY3xsKFUifvsapd1CiwRKd0QPFoOU2HPrPjESrHJMZ4TH4w5oeV?=
 =?us-ascii?Q?/HCup1MAksF3nXVcGbtp6ij7wnoWAeZ96DcW6aRzdJkyZ2RUae+3shphvtA+?=
 =?us-ascii?Q?iGuOh657YmV6YP9XqJCYrsB3EGZ10jUW3SGcqOu1gfSWsBg6yGjVbeDKlQVB?=
 =?us-ascii?Q?KAd/O9+BUuOi509f+7zvpZZiwXwzeQy0f+32RgBQN6Ieb13CIjr07S4DmQt4?=
 =?us-ascii?Q?HHSBazg0mG3cDl5L86P/a+QZEoyMwnLy1qMBKE4kOeaUXcFRucHlcVnlJ7W6?=
 =?us-ascii?Q?KaA7d2OOqYdkYHKLJP3vkR803GeKOf7qlOi+R5zhR044PwPbhZxpU2R9VQMg?=
 =?us-ascii?Q?ninr//HwVuJB3ycGItAa2tlYZr+Bp12LDiy/EvmCgIm+t+Qmudkx8AGQzxnx?=
 =?us-ascii?Q?9PiOiYQoHCuLS1xOVqFMY9g3ub1tX6MYz0FfIlMY3h8RQ28AT5ofAG6tFRlb?=
 =?us-ascii?Q?Xw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0a1118b-72e4-46d4-bcb9-08dd8c801b42
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2025 09:26:39.7260 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ij62gzVuQd8T+MMk8OXC2154nJOEtS37iS4lkI6/BOW01gdcc+QIE9ZmAENBzCd9SGURA5NIvoDJfxTKY0UuxA1RtQQd67DTsmZncLiTCqM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8184
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746523628; x=1778059628;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8oq6KqB6YKB6Zb7UR01qs61ylSzP1Sgg9pl2KeMs4Wo=;
 b=Nl0yoXzGfKUmz/0EZ511UCGgoDZsTP6TYRSTzIR97QqN4rc8LV5cjXAY
 OHpm2D9mUVYCYc/On8tdnPenA1pksM9hFPU8KCWkS3y/QG6BjRdG+JYCM
 nyKX3vFtvjvB0CFAQ3kCRMm6IPijW3dESpatNFX1ORT/JPVaHTbYQbZ9D
 ooV+O4rZc68SLvPOQXqq1BwWN2LlV6fHGr8BsJOJy5u7JFGVs55TIVxNK
 FyzAbyONijDM52I5qsyaDb70/WII4ZAo4jI08LiaqwSZUJaycd9wCtNyi
 jn1uEGOpkHYXAxKKu28DGagfoVcLtRVuB3sXJ8zDXQDqEsrZuhbVTEyJy
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Nl0yoXzG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH AUTOSEL 6.1 194/212] ice: count
 combined queues using Rx/Tx count
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
> Sasha Levin
> Sent: Tuesday, May 6, 2025 1:06 AM
> To: linux-kernel@vger.kernel.org; stable@vger.kernel.org
> Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Keller, Jaco=
b E
> <jacob.e.keller@intel.com>; Pucha Himasekhar Reddy
> <himasekharx.reddy.pucha@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Sasha Levin <sashal@kernel.org>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.1 194/212] ice: count combine=
d
> queues using Rx/Tx count
>=20
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>=20
> [ Upstream commit c3a392bdd31adc474f1009ee85c13fdd01fe800d ]
>=20
> Previous implementation assumes that there is 1:1 matching between vector=
s
> and queues. It isn't always true.
>=20
> Get minimum value from Rx/Tx queues to determine combined queues
> number.
>=20
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Signed-off-by: Sasha Levin <sashal@kernel.org>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index a163e7717a534..1f62d11831567 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -3373,8 +3373,7 @@ static u32 ice_get_combined_cnt(struct ice_vsi
> *vsi)
>  	ice_for_each_q_vector(vsi, q_idx) {
>  		struct ice_q_vector *q_vector =3D vsi->q_vectors[q_idx];
>=20
> -		if (q_vector->rx.rx_ring && q_vector->tx.tx_ring)
> -			combined++;
> +		combined +=3D min(q_vector->num_ring_tx, q_vector-
> >num_ring_rx);
>  	}
>=20
>  	return combined;
> --
> 2.39.5

