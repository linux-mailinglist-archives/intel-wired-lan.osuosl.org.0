Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJ7TIjfdnWmuSQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 18:17:43 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6639218A6BA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 18:17:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDAA46140D;
	Tue, 24 Feb 2026 17:17:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1xzDOK-x8Gh2; Tue, 24 Feb 2026 17:17:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1DEC26140F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771953460;
	bh=s7PLwcVWhz9e6g8HR2hVCPJ2YfCf8VvrdsfLHM2BTHk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Sl5T2janOY63XH0egVFA3gyzyoiCiuitwuHvLBeKZO0VHlw2ylAuWLdvX7ZbgHEqS
	 GloORNUgW39EOHKjNdCZK3y7Mg7NC+qUK3ncQOKAIaU3kNLiG4UZS1bolcTzA3PeBJ
	 bMjRN5ICgFxix+YhkQvc9k7jD8b9JaaJBrWlhnlYeQpQ5hNTXy7teBw2gwe0a93lP3
	 LF2vYa5LYwGR7RY2sPJm3I7UDRicmo0arTl5Uqr+5jXi7CXTeqkLjGuGhf7wYtkcWg
	 2iU3tObMD4hYeFJ6NapkrPRagBbjFUR7XQUQ2A7JueAGECkGszpmUBXyQSRstG26Q5
	 dSMUZ4GjaoJzA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1DEC26140F;
	Tue, 24 Feb 2026 17:17:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5F4BD249
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 17:17:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5CEF46140C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 17:17:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qK5ThokZ2T3H for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 17:17:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6996F6140A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6996F6140A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6996F6140A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 17:17:37 +0000 (UTC)
X-CSE-ConnectionGUID: qFJK6QWWSLSv/q/x1d4pSQ==
X-CSE-MsgGUID: EvsCaryZRjyrwTUs0ErShg==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="72009599"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="72009599"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 09:17:37 -0800
X-CSE-ConnectionGUID: d62IYp2LTaS9CtW2Z68Prg==
X-CSE-MsgGUID: f2P8VNqIRGmJeEpYrR6lHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="220470974"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 09:17:37 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 09:17:36 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 09:17:36 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.19) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 09:17:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g9T9iDVdCZ1kGrc8RYdSJxFCLIFKkrsWS+90Gwc80o0CoSre84sotcqBC+mLtz19xZHZSWhG5OxGCSM8Cx6Oe6pnb+ggCKX00w2UCdydNmCmSn1lV75jeDTCcCljCgVuQrDpZo8ymxfTKrhIXBFdkCTWJsMEPYyOkxFqaCCJyBdMydGImT6LHvVpAduE1Ro7CChPA8JmKuQf2Qr0HIMBIRN783rWGr24Gpu0LCZsc8Qy9t916YE3VyLzAvs1RIbvjt1aAbRLDgqDW4EgxqzP6BKMlrZP9Ov/WELMJ1R9CPyx9f3hEm8xtZIiGVohamXLRA2AcDujqc5n+Fv/uBnMUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s7PLwcVWhz9e6g8HR2hVCPJ2YfCf8VvrdsfLHM2BTHk=;
 b=tcqhjmfW4Jb8Ey/2np0lWeMVeAiSERRFerLjZT6y7ZpTUcqCDqv0/cmKRJejl6fWftBpuhO+kvLn20+aGSKm96ZE7ntJQ8/2a5sAdvFEXsjjiw7Le9qL5aItjWPxa2nYUKYBSFGZZ/n5TWRiDSaYZnC+zLR2L/KFWLxiL/IxY79TKOlSYRfiANODkrvY7cPNwpGbo/qHJO9fgSL8nFMP3w8FCvk4TtzCf7vc/j2Zt+c2MeArBHJUmDBmXB0rT23U5QJLqYdWX/ox79MAaEweaM8RSGDx0vOSwBkxLVZ0om90AvtBeWX36/IPtsOL1oMULHAGOebc/tAtpBvDNePOXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by DM3PPFE9E88246B.namprd11.prod.outlook.com (2603:10b6:f:fc00::f5b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Tue, 24 Feb
 2026 17:17:33 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 17:17:33 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "R, Bharath" <bharath.r@intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, "Wochtman, Natalia"
 <natalia.wochtman@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Burra, Phani
 R" <phani.r.burra@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 03/15] libie: add PCI
 device initialization helpers to libie
Thread-Index: AQHcV8kNpahyxU7DUEuxpR5a4fhyS7WSDHwAgACmqFA=
Date: Tue, 24 Feb 2026 17:17:33 +0000
Message-ID: <SJ1PR11MB62975B1DB5EBDDD8D8E403379B74A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251117134912.18566-1-larysa.zaremba@intel.com>
 <20251117134912.18566-4-larysa.zaremba@intel.com>
 <PH8PR11MB796566CC0EA1F0684330D234F774A@PH8PR11MB7965.namprd11.prod.outlook.com>
In-Reply-To: <PH8PR11MB796566CC0EA1F0684330D234F774A@PH8PR11MB7965.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|DM3PPFE9E88246B:EE_
x-ms-office365-filtering-correlation-id: d59fdfe0-6e8b-46a0-44e3-08de73c8991f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?0A87yYQOKI0Ipd3eT46diI79sYKYDyh2uj37n8HR+R+gBbsqpHFceHLlnYrw?=
 =?us-ascii?Q?OXgBZo8YtWaddSo7MSP14O4PR7QRt9rYtCRQuWHDvPSW7IxTNr4zUwwPOWB2?=
 =?us-ascii?Q?ijymaIIKJUjqaorvgEjEQ+StdJdGvtzq+WRrEQOu9kcm++uZOHy9O8qpKG4p?=
 =?us-ascii?Q?JC7oysE2m66Rc4r1+cUWM+lOdAdekkTuxqm3HPlIElw35MFB7MROBL0O8Tee?=
 =?us-ascii?Q?6j+KdQV8vGoOb9/5JCZ9ih7nzz8V48UkCLXTOR7SDZshXXyPIS35hYIbJ2zE?=
 =?us-ascii?Q?25BtMfpd2EEBagjuj2aZ0Mm3AYejz/voKkHdV0oGaVTE7+ynImN6ApI9iIQ7?=
 =?us-ascii?Q?G60OJwleVzm+RmZfrohSttNQG4LyLs9ABzRytR1tHEa35asmuBtUibD2ukCf?=
 =?us-ascii?Q?a2If2EuEmz58ceeQj/HEq9/hDoxUM0GI2HOaPQ4R5hO0jKTckeZkFr1Uc94m?=
 =?us-ascii?Q?EU5EbgykpY01bu655ovgne+VTGsGicStVkg4WoO2b0LqxGx0PPcA1EEqlTf5?=
 =?us-ascii?Q?G584FH87dz/S3XVwApb6wIdhtIDm4gZ/6pghClhG+RADeYhpK5cKBCbxpsxO?=
 =?us-ascii?Q?NDNa1HrXN4miqiPds/7kD3JMA8fihNFJYFiTz0jo1YNpafMLMspdWHHleWxt?=
 =?us-ascii?Q?en8iHHFL+2E6r1c8lcXOidwxmwkQvH6P6JApdgJ1LAVX9UqmmAQQ3TSvyTm4?=
 =?us-ascii?Q?M8tLpVljYCXn2cVvXY/G5nzPV5XFH6uuZP51tTAmghjqCE253AJYMb2y4IZd?=
 =?us-ascii?Q?2B8z5lotoP9dBWQpV+XbujxxikLfB+yfQ7u425wxqboSwuRH2KPwMcPScL+j?=
 =?us-ascii?Q?3i5d6kn/IVCY2w1rHSSjnchapvwDLTovcOfvhNLCTJJ0izdCX+9nh3l9qISc?=
 =?us-ascii?Q?YGHAdLYKwtj83fO3dIOhYnNBaHY9oPP20oowlRflH/ybZpvAr1eiQsAX+ndV?=
 =?us-ascii?Q?QZbGvI+/j4sKuD3F/1XH5ePMdzvTLIxNgyMIr2AfWOnPRGDa0BGsp/WKC5A7?=
 =?us-ascii?Q?Z/OLmjnddJITEEvBuLpcD2XU+ewEcUJhKY08J7weuCQwnFtrSQy3S9J2u0W8?=
 =?us-ascii?Q?yJn3ckASbFYN/3GhCsY1+qPvJLWonctBUV5dCqd4mEjrw7CUHjIp83mYPwRl?=
 =?us-ascii?Q?QgTzICTqilVx3HK73sGJ4RUzTYWK4i8pTZ9tGAjceYt8Rt8r2LBX0Eb8cdlx?=
 =?us-ascii?Q?FDesodBPLyTYFIuZGZKEVa2iQlHBWEkrcWhakWfA2mrhYp2BfqOzIO02zxqY?=
 =?us-ascii?Q?rVaxqO3Z1aXDhCcSrrlglNpgglIGIkBjv4CIVluvaCSq4FXXTplMeuOCQM83?=
 =?us-ascii?Q?vxEfFzt1U7T4VFLuxX84DcVo+Kmr2RBd1C7EgZ96VuStgxf5Oypr+nLQITr0?=
 =?us-ascii?Q?feMwuAnBtpydz+Z9LCFuIJb2eNnNKJf3S0w6MplWVObXC7+zEZ4fhIIq1Uq6?=
 =?us-ascii?Q?QFhVGoA6BkVO4WyjZmN+n0K3PJf7zIUqVzY1/NRJczWJlDi9lIN7QxCG0p7B?=
 =?us-ascii?Q?neBlJl+Vh+7x0HhJH7HJznH7yqQDOvTUrIdAs2mAT637lhhxM7XeSHpQ9VJX?=
 =?us-ascii?Q?ouS3UZ9zrHRpZgdC9UHx0tYhOeB2LYinR5Ozw76TYFPpZbc09PN7QXCBzrbN?=
 =?us-ascii?Q?KyBDKN0UDJYMWlWMaRJc7SY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Z7M9HooKcvWrfT8J9RIB+NfKSXXGkbyQ2rd6HYMqjb0xqU5AR2nsKoIErIwF?=
 =?us-ascii?Q?AUaz0W488pWrEIxttp70Zy4kPpiRWFTtAj7ZDTjkMTEAoS748wMcnmgvlB5o?=
 =?us-ascii?Q?O/1hWZIKYSZ5sZoGG5Yy58aEQv2pYQ5B4GwYgW/GosEnqQD2t+PVGdXLOGub?=
 =?us-ascii?Q?FHqPMO4xmw664pdNoKuj5FsFZ6AbT1DVTOEYxCH+z65+1YaJ9TKYMFt46ObB?=
 =?us-ascii?Q?XO+EeZ3FxEpqhmH1iB2xElvi3G0luUGdDFUiJ7LC9JGgvEcVOvyW9+cNg0bv?=
 =?us-ascii?Q?p7fILgbXvwA170m+JhZl9otxtq0aqYlUDvF2MnRXl6KehTziycVQe6N6o7f2?=
 =?us-ascii?Q?uh3EGkpzhKILVF6xcArzmFFQkSkpDHKdPxHqX2o5cZRyXVjJd16vMEEWVW9L?=
 =?us-ascii?Q?3TtcphCOCkq9cjEDndLedzkb7bFBmk+JP3vU63L7xxhXjRZdRZCMakjk3t24?=
 =?us-ascii?Q?hsgLRtVoRVmjpSl4gqTaZlwj5RKDGp0mDoJDEXBO3nORQig4801vRK1RArY+?=
 =?us-ascii?Q?BsbmhWw8wjsiTRiEZM7/7jYOPEYspx1BvMTaMtVlu5SlvvDdPAtXkKstYcdL?=
 =?us-ascii?Q?ES8hRdqxr20U3CW+3E6MKm7TXRMHKfR0J9dOPRt+bjJC6Fk/1ZYq7FHvhwNo?=
 =?us-ascii?Q?hcrRHCMkFzisznMKU4JFboGcwg93hR2QtYjN0nQmizssLNn5rO0ujZZweo1d?=
 =?us-ascii?Q?wwIW7NtGAEKn0cfJ5Y8EPm7yoMBjZfLYtWPoJ7T8058YGR7/LEtrMw8VWaWY?=
 =?us-ascii?Q?TELdam4SlKdRHyq5oRR/6bBdGI1e8HQ9jV4vqMEl2ttPk1SbfBwlggJYtU2i?=
 =?us-ascii?Q?cNiz5+xMPDzBdJfKrKHk/eCWIj6qRaEzgqgyvLgpoIGZEZl/rw8LvEhWlV0h?=
 =?us-ascii?Q?+yOdfuDrRcwl2D8FHGaEhoNMmZ2XSlKcKOy2Vp1o8FOkrWETj07oZN4AKHRK?=
 =?us-ascii?Q?U0jqQ9aboHZRt1ceAXBLa1eNUcgZqrTslUvlH5AhOS5SCUvP5uPyVVE0goB/?=
 =?us-ascii?Q?FEOQ/Li4A7mCpusJmsWZWxlSKcSk9HorfNySOcSbhd/KIcEoCu4OC6ydueH2?=
 =?us-ascii?Q?F7AyHOo8iPzl0R4nv6VxOSsXj3JsbEsLXJVXHtOCpq2d8O6OON4icp329o6y?=
 =?us-ascii?Q?0U2DACmNWY3wg7OUKyTcDST7YEh1A0wZGVKjXoRgDiYHr4ytsYgpo7E+Q32J?=
 =?us-ascii?Q?4zIxxeFGpGST7n84EAaYyL5fcrNwrDZuM4YXqrDEgmwDh9Qdp0sUv1H/nQ16?=
 =?us-ascii?Q?OQOBx8j2j129kwLBrk7xNDICQ+h0UHcSGC3LRPkivWQiW00WfW1EY/awRnzq?=
 =?us-ascii?Q?nv8nS/XLazzfRmQoIA/ifowRr8svRXoelgvRHrQEPAlYqEDWAUzw4qWlK/HG?=
 =?us-ascii?Q?KPbgZWTWzIpNlc2u0ayrTnyAsjejptJSLCYeqqk7unG+D8zSp9s9QUJ9mosq?=
 =?us-ascii?Q?IDIC55mWw7pEg+XCAV22v7BtTyqBJffNlqahL5BG+GuHFiqTo73illLDywlp?=
 =?us-ascii?Q?C3mR9DTIFWNjEkw/Bbe39uvjcReqosuP6MnO3NZZ3k/CfvvpK7Qm2ktCaa3h?=
 =?us-ascii?Q?PkhNmJuGX14K1qyFZZCInVXvx0qrnrXa6loivR/b9HZNizW/0Fy2qXFYzT1S?=
 =?us-ascii?Q?xmYEDxWzp8LZ0PrTxUWJ/x/T6ide5RddN1FwP/HLorHGss1NeqK5SScp6Wpu?=
 =?us-ascii?Q?mnkXBS08yL/l8imRnD77rz2fhLszjevVoumlgA0yQcvOZuRwypANfCtmWjKf?=
 =?us-ascii?Q?7h3x3eMPcg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d59fdfe0-6e8b-46a0-44e3-08de73c8991f
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 17:17:33.2562 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ixwqNzSv01hp2RnvKqP0up6Coe5qBNdO+bmWmzl6mlK6qvNAUVzow3VbyAZP9Kv+HZJ/2xvvc8fyu7sP5yaKrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFE9E88246B
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771953457; x=1803489457;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MDlGh0qj1AlSAsfRVeUKJe9GJShXOYXWe8P9bzEhE4s=;
 b=BhCZfkVSvPi6Jbj6xbg4DzAziW00FLot0Bw9hVmm4yvRRsdsqvgbCPQM
 Dhg5pjl5dFRFhdWmg8po5A82FB5P1KyFxOSHEvcMVPcVCF9LhO21jHPAR
 k+/v/CP9Tl9V/+8ZKxwEo41UypqC2N7IFyTwSE7qLfpOC6rWaUgBmGQR0
 iFV8nBETdrB8gsjCeSxhlYiJtg79iLxQ8W8s6Xehi5WYrYkJmPExcZge4
 FR0N7CxRVWrTn3JYYymXO6XnmNFkNQ2GhEZI/QEC930zUZVgrbAxFTttI
 huqJXa54pyPUh2YiMj0fKmTsGsmNcjvlfPcWKv5gfn8XSOvsgCibreXjO
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BhCZfkVS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 03/15] libie: add PCI
 device initialization helpers to libie
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bharath.r@intel.com,m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:anjali.singhai@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:natalia.wochtman@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:phani.r.burra@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[samuel.salin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	NEURAL_HAM(-0.00)[-0.973];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 6639218A6BA
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of R=
,
> Bharath
> Sent: Monday, February 23, 2026 11:20 PM
> To: Zaremba, Larysa <larysa.zaremba@intel.com>; intel-wired-
> lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala, Sridha=
r
> <sridhar.samudrala@intel.com>; Singhai, Anjali <anjali.singhai@intel.com>=
;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S <emil.s.tantilov@intel.c=
om>;
> Chittim, Madhu <madhu.chittim@intel.com>; Hay, Joshua A
> <joshua.a.hay@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Shanmugam, Jayaprakash <jayaprakash.shanmugam@intel.com>;
> Wochtman, Natalia <natalia.wochtman@intel.com>; Jiri Pirko
> <jiri@resnulli.us>; David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan
> Corbet <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org; Burra, Phani R
> <phani.r.burra@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 03/15] libie: add PCI d=
evice
> initialization helpers to libie
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Larysa Zaremba
> > Sent: 17 November 2025 19:19
> > To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>
> > Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> > Sridhar <sridhar.samudrala@intel.com>; Singhai, Anjali
> > <anjali.singhai@intel.com>; Michal Swiatkowski
> > <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> > <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> > <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> > <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> > Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> > <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> > <jayaprakash.shanmugam@intel.com>;
> > Wochtman, Natalia <natalia.wochtman@intel.com>; Jiri Pirko
> > <jiri@resnulli.us>; David S. Miller <davem@davemloft.net>; Eric
> > Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>;
> Paolo
> > Abeni <pabeni@redhat.com>; Simon Horman <horms@kernel.org>;
> Jonathan
> > Corbet <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>;
> > Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> > <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> > doc@vger.kernel.org; linux-kernel@vger.kernel.org; Burra, Phani R
> > <phani.r.burra@intel.com>
> > Subject: [Intel-wired-lan] [PATCH iwl-next v5 03/15] libie: add PCI
> > device initialization helpers to libie
> >
> > From: Phani R Burra <phani.r.burra@intel.com>
> >
> > Add memory related support functions for drivers to access MMIO space
> > and allocate/free dma buffers.
> >
> > Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > Signed-off-by: Phani R Burra <phani.r.burra@intel.com>
> > Co-developed-by: Victor Raj <victor.raj@intel.com>
> > Signed-off-by: Victor Raj <victor.raj@intel.com>
> > Co-developed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> > Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> > Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > ---
> >  drivers/net/ethernet/intel/libie/Kconfig  |   6 +
> >  drivers/net/ethernet/intel/libie/Makefile |   4 +
> >  drivers/net/ethernet/intel/libie/pci.c    | 187 ++++++++++++++++++++++
> >  include/linux/intel/libie/pci.h           |  56 +++++++
> >  4 files changed, 253 insertions(+)
> >
>=20
> Tested-by: Bharath R <bharath.r@intel.com>

Tested-by: Samuel Salin <Samuel.salin@intel.com>
