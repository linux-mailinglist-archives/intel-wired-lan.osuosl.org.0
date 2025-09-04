Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F8DB4432B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Sep 2025 18:42:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D87340089;
	Thu,  4 Sep 2025 16:42:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z5F24N28SkpH; Thu,  4 Sep 2025 16:42:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A0F7D4008C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757004137;
	bh=x5DblLPAGGXWSl2nYoqXr1dM9Rynnd8YbdSN55rQDMo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sopae1wIy7/cC3Mkc346i9cnypGBLx6vcD+NYbis9OLCI+Ps/5PjT15oqDAlOaCTK
	 3+rHYHmgt8xkM1UhmeiLQmtDWjqZ7L7Vxi7QHg2Li+MOEcQPVfFx2QBdwNGY3mrKUB
	 s2FcfDzLb8rNiD+uvVk0i97l/duLLlnixcACF72gsR6Y0o5WlHGMspcmW/Ji11VVfq
	 e3TUFBEAuxeW+/cg83VRTdChJbJ6Q+MaWdi8+5m75gGhV+a26IYJri8xkPSyX+cbJX
	 rSaz2vPstklynBuOeNqDcAL3UST7A5cqKkyTAl175M7/kQhawk1aGOkn6tUdEp24XT
	 /m1xBwdrd3T1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0F7D4008C;
	Thu,  4 Sep 2025 16:42:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5028BAE8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 16:42:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 36BDE4006B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 16:42:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sVohS0o1nt3t for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Sep 2025 16:42:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=ramu.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 854534005F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 854534005F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 854534005F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 16:42:15 +0000 (UTC)
X-CSE-ConnectionGUID: hEXolcXxSNC6qJ68zsh16w==
X-CSE-MsgGUID: SLvVAsjNR9KXwnjSlhBeeg==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="59460181"
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="59460181"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 09:42:15 -0700
X-CSE-ConnectionGUID: XC/djkgQStmpbjkM7x2QKg==
X-CSE-MsgGUID: t7CessPCTtO2GvYGdJ3l7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="176281358"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 09:42:14 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 09:42:14 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 09:42:14 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.43)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 09:42:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pEsVsZwwL1A3qxpjXRSQ+rtPvz9+UJMgXsMwRBkh3dvAJjceer4k4JeQBhldmCWTLQNzQFf9OvpHu+2iJxUvrDGpVuDxdugJIaKiAMUmX2ZmmRl7RctdMmtbZUalpeKAAblOtFOG69ACaz5caSFPGW60fakoN5SoGF7mrpqrSk7vRzB38BddvLCoSeMSQ063Y8YG2murGOGvxttabsDFDH8gTNYW54vN+xdOD0OiSoet1ZFFFFWDXFXOcaQFHfF8Z6F0xvehROBcMexQqVYBnu3HNWSLRcufn7nIxVAJveld2BOStOYFtQcqzgHD+enqhoyfANhoBKUDa2lEN9I39A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x5DblLPAGGXWSl2nYoqXr1dM9Rynnd8YbdSN55rQDMo=;
 b=carTLqPLBGVX77862qL9J7tuSWmUBilnw8/Vbaqe6XP8LSoxDo4VvNwIzCMX4hpShpyHNn44beJEs3xUhlyh6lwA+l09CFT1RlThkRawP1SjU9pjckbNyiS7hP4VPZQ1jePJeZH5LJySjbc+yXoFUkDIidshDCc/kyxZYtumXLN2nxZNyeVE0ZO2OhHX6GZLMxkEeTAtqaNJqFNVm3FakbT70cVNmmTmEc1VRFwOERVF9NuesYjGNc5JdXPWPyKSrZB6bxRVXkJCisSorYI4E3Nvw5+xvBulbtSvIDUhivrdgqi0ddGlSNQcSQX8dfYr7uO4lDqOXLTab30tQLRREA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6455.namprd11.prod.outlook.com (2603:10b6:8:ba::17) by
 PH3PPF9E162731D.namprd11.prod.outlook.com (2603:10b6:518:1::d3c) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.18; Thu, 4 Sep
 2025 16:42:11 +0000
Received: from DM4PR11MB6455.namprd11.prod.outlook.com
 ([fe80::304a:afb1:cd4:3425]) by DM4PR11MB6455.namprd11.prod.outlook.com
 ([fe80::304a:afb1:cd4:3425%6]) with mapi id 15.20.9009.013; Thu, 4 Sep 2025
 16:42:11 +0000
From: "R, Ramu" <ramu.r@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, "Simon
 Horman" <horms@kernel.org>, NXNE CNSE OSDT ITP Upstreaming
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, "bpf@vger.kernel.org"
 <bpf@vger.kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 03/13] idpf: use a saner
 limit for default number of queues to allocate
Thread-Index: AQHcFqVwvNnjhMMv9U2VZ8RTyLQrerSDMwAQgAAVDZA=
Date: Thu, 4 Sep 2025 16:42:11 +0000
Message-ID: <DM4PR11MB64556AAED5AC02461285ECEE9800A@DM4PR11MB6455.namprd11.prod.outlook.com>
References: <20250826155507.2138401-1-aleksander.lobakin@intel.com>
 <20250826155507.2138401-4-aleksander.lobakin@intel.com>
 <PH0PR11MB5013FF9A3B773061512583C39600A@PH0PR11MB5013.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB5013FF9A3B773061512583C39600A@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6455:EE_|PH3PPF9E162731D:EE_
x-ms-office365-filtering-correlation-id: 665b8f10-35a6-4b42-be98-08ddebd1fed3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?c/96XbXnAhV0wVBl1QPQk0brI9wdrtMj9294hQ2GAiP5U0kHVM05Bk4emC61?=
 =?us-ascii?Q?z2H9GPtIPfw6p8knpWcI7jIi8g/pWDWjgzLag0US646QJgiliMSw+W+zNsFy?=
 =?us-ascii?Q?JTVImA89B0GuWePQv1lC1lvV5TkxlxIF2e5A6wmVA16TNbUuIWd/JBNuuJ5y?=
 =?us-ascii?Q?sd9Sgcp3KHPv2njclWkctWOU9LGhJSOu/jvNXlCfjaUyf4qJddesMQn1wLyP?=
 =?us-ascii?Q?LbNKDZB5+pIRPIefEw0Wq51dtc+Qib3GF00lhNGqiLCcZD+ZAsXmTm8lRkdy?=
 =?us-ascii?Q?BfwNIM/x6syRAqW38nyMXG8I5vDs2kpJ5iZDTpK1ZdoA7WLOk7UtYUkYP616?=
 =?us-ascii?Q?O7bUDO+NZT5oU9HyceRKtqm+UKu+Zio4HZnP5VYRkoNZZLk5j2lcCKhaCUtQ?=
 =?us-ascii?Q?NaqyxgUVN1Rz30vijdgSdDIXG246GkNRbwIt5DpGxXjZG2Bn6gjo6w7I+ngR?=
 =?us-ascii?Q?bOuhzSHjbiMMJbA9MatGcLuQWPBpIIFkLpDdv/Oe1kZbU70mksfgseZ4ple4?=
 =?us-ascii?Q?yp657AeaTXqRTUZ7P3Sacdwl89NpaeI+4xN4NN0AlHQQAbjf7XtCC9DMTTMN?=
 =?us-ascii?Q?Gu1aY2FujgMiOZ/Xwxdrxeu17OoMPLlI363YAYNuFgkYvulqzkrC2nr4JFa4?=
 =?us-ascii?Q?WGdpf+KyuQ+NNGemQGIYf3x8Nf8CDdConCpDqoca6Jc9CBfY8CW11ea+ws7t?=
 =?us-ascii?Q?L8mSNiDJ7NIPM8FBfDSBD3ad8N0tntY3INNHMpXx0NFuFqzVFQaZVLvMG/RA?=
 =?us-ascii?Q?rGfP1wUK1v6c5t629TVfwgaRc+u3O69pLVWlPxZHDqeHFqhrVK2CjUglcBgT?=
 =?us-ascii?Q?OsIOFvjBj+OQQIbnDYTVLRdlHzx7oCiLjLetp63OUCDKwFQeB1C+eu/3cmIi?=
 =?us-ascii?Q?ZxTX0L6sgR0cyzkRx6rJtc5XicWfOqNp1ZadBNaJaGqC4nDfK9tqo3eoMksS?=
 =?us-ascii?Q?BSdERTTZZLuuxvQhJo6ujFasaOMXXlw3wpjkO9TGU6winL+YzA3bQHrYZGas?=
 =?us-ascii?Q?MCOUa4CESlzslOJMwLQiZXRClqqjGIJbIUDCyFlSEZ0C3+0Th/tUV3xX4D8G?=
 =?us-ascii?Q?b1uiaQay3UqOCq6NxiC5ri/XiOxBCpfsvFySS7E0DjtFmjwXT+4v68q0JF2x?=
 =?us-ascii?Q?7IbQgov/IpqNphmOW4ddFw25Y6lucNNazYNe/rGlbAu/wKXS2ABjRrL3BplM?=
 =?us-ascii?Q?L+LWlGPIs+sibITr9pSXzBnzWhYTfzplRR7O/VLhah5JMfzKNC0h1kHd8N/u?=
 =?us-ascii?Q?jSdL2MpnPFT1Am4DMdhQ6vWZXBqFgP5aNu8qSrglEovKGXZdFcPckdOwaJwc?=
 =?us-ascii?Q?VHa2puEBMd9o8vst39NsZRTk2XfFH+9LaPwN0TORCpPgicLGu/+kGWxf1LOa?=
 =?us-ascii?Q?l9ze0HAJgRHrKHJeGmRfGPJI0hVjgBv+MNd/fZEX21DJasbev1RcvgQ/Dp7u?=
 =?us-ascii?Q?4JvCl7GgHkwdAXH8B6vT3/Harxh47Bbafo7Xwc5TEHxQF3dDDz5U0g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6455.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DgDzTW8E0RT5K40A73WahAdSRZUlr1wgYFg42P5pV2M+qT5zkGTJ7g9zcW78?=
 =?us-ascii?Q?1U+k7N+SCmBH+IrirXnO3wWuW8tXu+KKvm7AOWPp5g11F/k0ngCR59OiABwA?=
 =?us-ascii?Q?zSq8F1C4wFYmVn13NCK2fEvFmpUfxSbI8m98liFUH+u23jdbdaXCTY4Hr0o2?=
 =?us-ascii?Q?VsGlC7UTf2pnEvj2t+lG8CYmFyUIXtaxCNdME86/8cmbYfu2ePIuvHSnJuBw?=
 =?us-ascii?Q?1atkM6mNMjUREtXtIEjthjgEFCFXsXxyJt9PN/fZcg+j0juuva2yFJ88xRNG?=
 =?us-ascii?Q?NoJUIHj/X0Ht/0swjYWJyZH5ST3obxnjLd5UvYCjuDXZC+oyOC6BY1o5pZkq?=
 =?us-ascii?Q?q9ju9rYvguw/w1g6nCoUpe9me7VOUPFIRu+0CsZZxDfhELoiHz1fXR2wB6Ga?=
 =?us-ascii?Q?9VthhGqoYt5AYuIpa3B27woXSnZ5RQ9I5scWu4OnNfTurIuk2uE52DNrVx6g?=
 =?us-ascii?Q?8r18ViBR9z9YltOgpEhg597etM/BgCw3eWqU2DPYql0YBh2g6JgxXY5DsKPp?=
 =?us-ascii?Q?Go4N5bpLzeIn5xGoFY29CuijXyCD5sUDYCc2qzwf177Q0G9nHUikw11MUe7E?=
 =?us-ascii?Q?ra73nX5Qxq5JXPz2S7zIHduOgdw1yWORSeJu/PhNKCzPw51TuI8XmvJiuvfy?=
 =?us-ascii?Q?n9EUkYgu7pxDe5BzazF4nlrfq9Qc/Xr0iF6eeIHrv4qYoOUtiV/n5e410knO?=
 =?us-ascii?Q?Yys3sSKAgVx3Y9+cuWuR90fJFLfD5/0hlJs3+faAj/4aIsE1Os2rEX0NdVLl?=
 =?us-ascii?Q?KPzsoHuskYACAlZpQTZoZmHOOQLgetZ/SkOK/81v3CboUVRyo6O6OgnLcAtm?=
 =?us-ascii?Q?YSenySjIsdWdJ8InKpZ5YvmP03SlXt5pkmTDvHMa602oO6fsbavXsUPCrfnG?=
 =?us-ascii?Q?YM+A9wm3axkeHa2vRShOr1uzZn9hE3cMP0dDqiAm2Q7SUhLBGC4BMp2xbSOQ?=
 =?us-ascii?Q?TJAg7LBStVAHySiYFdZa26zErvc4tEkBh44/BwPl5a9NmjFcigGapBg7q3O6?=
 =?us-ascii?Q?FwqLKSALXnKkjyfhX5RSclds9OEeoMmaxJbIiwWu61/Yr2z0ZTDQK7uaI0S6?=
 =?us-ascii?Q?qe9y9Vkg++LA4JFPJXKxQD02HcAHqqyi4ZxN6BpyYzwGH/KK4t2E9aV44bvY?=
 =?us-ascii?Q?f6gkgDDxU1YnbsO+YVCeZypDdpdV3vOk8bqtphBN155GIingv+GpnlwHsRfm?=
 =?us-ascii?Q?KLD14wurHEztJncUZ6BuPFjzlwMNK0KDJ9+B9JnEvM5Fg21umJejrGP5gt7m?=
 =?us-ascii?Q?nIN8nGWNtX/RdQ1mbOgzRxsK8T2ALMC2vbAv5B8lSfrSNvug+xhdC25Werne?=
 =?us-ascii?Q?nSW9jw2DA9a0xBc0oI3YoLn//U2plcFjYAbWq0VSsTr8XC2mGjyu6K1J3YQ1?=
 =?us-ascii?Q?PiTSoqNbl+1e/nUJ8q8mjPJkGayPKr7oBwYfc7Kp+IWXYaBUrLjKXsXiRcQc?=
 =?us-ascii?Q?Gru4hhXbeksXKyw6IaU6tJ39qy0RY/pbF8GKZthGN1ku2ubr6Rta1ypFo77A?=
 =?us-ascii?Q?RKul/R/TU1E+fsr7qb7oeaTtR3gLFxkBdWNiGW4PBk3Zzw8ajvsHuFRYCXXP?=
 =?us-ascii?Q?gmcG/3Qpx6n+jBpjRpY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6455.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 665b8f10-35a6-4b42-be98-08ddebd1fed3
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 16:42:11.2258 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0LIC8JemTWfkqSrvg7i1r4ab8QrJfEQuA6RdFBj+lsjg65DcY1uieIQBAPjDji7WTG5cZUz9Pte0cBdeK5iOMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF9E162731D
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757004135; x=1788540135;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TVU8g2CZB8u+dRkXvDv9I215DO2j4svChQD2kY2MaHA=;
 b=IhGIiuIOPhUIhiNssqKj0S9b4SuJKEY3Wrt8BHlktfAAeqpsnrm0hGQV
 5T5bfSfVMgp1FqtkrWi6dt0CC499BCU8bkmmH+hLgyZG4jsHtMolCQEhH
 uyG/fAaEvqHXgMQrPl/f6gQ0qB6pd8ySlQZRcGbFGpFQFZ7n0KRQifZZw
 VN1ryibU8fjPfBenvw1sn9MCGUo3e4hTIxFhi/LI2SJ1Oih+ZUbkd001Y
 n5pNjNT84t5ykWsEooKLN5G0vqQI4C5LLekNFil4MbNe4hoL4vLj0ip3y
 cDJsOcHdHLQlj2OepyTqHLCpRgReAoefoKKtwu5x2F7x5gZCGa35iDWC+
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IhGIiuIO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 03/13] idpf: use a saner
 limit for default number of queues to allocate
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
> Alexander Lobakin
> Sent: Tuesday, August 26, 2025 9:25 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Kubiak, Michal
> <michal.kubiak@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Alexei Starovoitov <ast@kernel.org>; Daniel
> Borkmann <daniel@iogearbox.net>; Simon Horman <horms@kernel.org>;
> NXNE CNSE OSDT ITP Upstreaming
> <nxne.cnse.osdt.itp.upstreaming@intel.com>; bpf@vger.kernel.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 03/13] idpf: use a saner li=
mit for
> default number of queues to allocate
>=20
> Currently, the maximum number of queues available for one vport is 16.
> This is hardcoded, but then the function calculating the optimal number o=
f
> queues takes min(16, num_online_cpus()).
> In order to be able to allocate more queues, which will be then used for =
XDP,
> stop hardcoding 16 and rely on what the device gives us[*]. Instead of
> num_online_cpus(), which is considered suboptimal since at least 2013, us=
e
> netif_get_num_default_rss_queues() to still have free queues in the pool.
>=20
> [*] With the note:
>=20
> Currently, idpf always allocates `IDPF_MAX_BUFQS_PER_RXQ_GRP` (=3D=3D 2)
> buffer queues for each Rx queue and one completion queue for each Tx for
> best performance. But there was no check whether such number is availabe,
> IOW the assumption was not backed by any "harmonizing" / actual checks.
> Fix this while at it.
>=20
> nr_cpu_ids number of Tx queues are needed only for lockless XDP sending,
> the regular stack doesn't benefit from that anyhow.
> On a 128-thread Xeon, this now gives me 32 regular Tx queues and leaves
> 224 free for XDP (128 of which will handle XDP_TX, .ndo_xdp_xmit(), and X=
Sk
> xmit when enabled).
>=20
> Note 2:
>=20
> Unfortunately, some CP/FW versions are not able to
> reconfigure/enable/disable large amount of queues within the minimum
> timeout (2 seconds). For now, fall back to the default timeout for every
> operation until this is resolved.
>=20
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  .../net/ethernet/intel/idpf/idpf_virtchnl.h   |  1 -
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  8 +--
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 62 +++++++++++--------
>  3 files changed, 38 insertions(+), 33 deletions(-)
>=20
Tested-by: R,Ramu <ramu.r@intel.com>
