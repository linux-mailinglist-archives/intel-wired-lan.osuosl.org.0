Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D48ABEC52
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 May 2025 08:47:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 736B5613AC;
	Wed, 21 May 2025 06:47:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y5M6un23N2Vf; Wed, 21 May 2025 06:47:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA68760E27
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747810075;
	bh=C0mQF6KfehLZeWbIrgA2OMu10IuRVYhMAxtLkDBxM9Q=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=h4bPr3b8EKBfw1FcnmYaJUzN/Cpirrk2RUducfz44UzHAjGSrAoUZHrhdnUyJ/9Qz
	 nYinCwNUkR2rj4DazOPUnBlGTQghWMXMCTqtEkLk0QEOyemHn65meIwuMrWS3Y2gEI
	 DovDxnA1kyphJx8lj12WGJ4jBwEvg8dfwmgPU8zGzxawj3B1QHE/n15WYNXiyJ2u9x
	 hWyDNr3wOKqrgfZK4q4JLHQ9IsdM9XkXyOkA3MiMaM6M7JDJDrot+QaqfzvngL1ZZx
	 BDQDm7p4Bj51D6f+/J2jHwe5sn4urPhzogvKAjmW+fbJInBLuJbb5HtY79OCIIayzL
	 LyNtByKvxQ9uA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA68760E27;
	Wed, 21 May 2025 06:47:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 058CD1BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 06:47:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 02ABA80C9D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 06:47:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LktgqVIyXcfX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 May 2025 06:47:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4E58B81F24
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E58B81F24
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4E58B81F24
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 06:47:52 +0000 (UTC)
X-CSE-ConnectionGUID: WyNNkSPLQcmL5xfqk9wuaA==
X-CSE-MsgGUID: kJ/xHyNAT9u8126KwAr7DQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="49908151"
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="49908151"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 23:47:51 -0700
X-CSE-ConnectionGUID: ZPzEZZu+QRKDM2FnFlpH/Q==
X-CSE-MsgGUID: FsyMHk9CTFKCUDDeyrmOOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="139777962"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 23:47:52 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 23:47:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 23:47:51 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 23:47:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HvnWIzxHE/hqa+bbIT2nyzHD0ZeFj5mXEEO38p0CtLd6A7ybgV6Qe+ktLFiFiC24+H635bz/HQJyLEBwyj6lDXqFkjtbWAM0CkSpOfm9l3wydFVXbFsr6ADFBG1oN74WFvGSPQLr2f7ca1Jdok3NPeXrXV1cS/pbvAwvpPB2rvOreif132sPaA4XH4yTWyIgOMa1T7Y8Q55FlUnTbg3IXdc4GNAprieSLRpnY4O10ZubJllcraR+JT983Ml0TJJb759aXGG5THy5C2sn9DuEZCnN5gFzVOlMz1LxH406In+90iTrnH08jhWSGd3bZ0XdYTp/tSl3GRukCmHFjsdQrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C0mQF6KfehLZeWbIrgA2OMu10IuRVYhMAxtLkDBxM9Q=;
 b=jHSR4z7gk9zm7AvY+wHEwGeOGrjQoUc/XZxiaCkwKvxKoSwY+xE1n4UtL/wIhCM9xhUWzyH8rBy/mpwKrnyKaQ0scUDp4Njnd2drKaJmacZHvA0QPe9ESNwdFU68pzfVkwCUz/GY+ydo0z1V77BEMSUosu8ZKdUm+NUlB0kcJYEQxckqOdO7EBt9+q+3SiwuYvpoAmaD0jyftyOY9HbyykiWSa/Gba3bS3uIIoB+/EMOwrcKf6asg1bzSivEjw8zOpRWaE4EW8dbWhJoLfsNnE4Q9fb50nqEx0yhVLLiJE207inNbCkv+q9I/7Pf/T02o4FVbH/PxAlbOCipsWoSsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DM6PR11MB4529.namprd11.prod.outlook.com (2603:10b6:5:2ae::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.31; Wed, 21 May
 2025 06:47:34 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8746.030; Wed, 21 May 2025
 06:47:34 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-next v3 6/8] ice: use libie_aq_str
Thread-Index: AQHbtaiFKf5MmX5Dw0GSMgJykRjlObPcykxw
Date: Wed, 21 May 2025 06:47:34 +0000
Message-ID: <IA1PR11MB624114A77C832B9B90148BC58B9EA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250425060809.3966772-1-michal.swiatkowski@linux.intel.com>
 <20250425060809.3966772-7-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20250425060809.3966772-7-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DM6PR11MB4529:EE_
x-ms-office365-filtering-correlation-id: 185eadf4-47e5-47f4-429e-08dd98335dfb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?izzbY8psvxmcErojCaW5BfTu2J5MV6KwiOtEjQ3+DddNNbgfJdyFmO57bkh4?=
 =?us-ascii?Q?tezzjv+IrlWSdzQ7YvI/O7d5Pcv9Vk1e1R9/dt8y/bgGIKXoWeQ27EHn+88g?=
 =?us-ascii?Q?mCvsHIswJwB0vZyUsTo2gvXEVd9UaAImVuBiT6NZ4FqYmyqKTkgQo7l0DbNx?=
 =?us-ascii?Q?j2Zs8RZg5gi9olZMWaSXKHKhvK0gnSE1jDX/HLyxqCO+c94KTbl0rplDzWjx?=
 =?us-ascii?Q?lz7u7iektnYxaPWBUf9/pERBTwKCy7HRcX8xEJqtc6y2qfkr830csEj55PkU?=
 =?us-ascii?Q?2J8RXGYmniCVHQjXjfVLyp11Pa9HX7kDrxiv/2pE30xHCHqgAVPDvDG2KiAD?=
 =?us-ascii?Q?si2dJRqgi4k1Hu9PHlSJcX/CTG8CJBGFxdGVh3zUNtNAvO/TQtcRowSHIWvj?=
 =?us-ascii?Q?Rr2EIEbqum7tde8CT16SgUk0upKjJz9Yfg5S3gZDjF2fqJ6WTsyY8xcHcbx1?=
 =?us-ascii?Q?JRNtHtDFwpecQE/slY7AWPREwq5GyIsw48AP+lYjNSEsiRfne8tIrCTBtgj7?=
 =?us-ascii?Q?3vp3A6fP0W81W0R/PmsvksOSfSVnGOhfp1WXZ1O0hW5fmcd6JjT/d9x17dCc?=
 =?us-ascii?Q?rL5qFEw7bMNO6sHTwNJ4pkfmhHNJ5s6h8iXQGxPMilMNYi7ZllsLPLhWXOoe?=
 =?us-ascii?Q?zSlWtNl9XuHc6kKuUz0us8e7V4s0g9JKXJzQ7/nQHR3t2NKFtIBMTYZae2HT?=
 =?us-ascii?Q?hfBHbiB6OkFHRisjaHyaGiKmYQqUpT2BtW2+N3tvFzF813FmrOpk90YhYXOq?=
 =?us-ascii?Q?Wz7IJWOc6qEcP3SZFglODaWIQENlJMzQONuM+igDSk7C7fVTH1p8PwPdcGe/?=
 =?us-ascii?Q?SITYq40wIFSddS4b73DUFJ4NIjfeJkqXqhBk+9ch4tqPsdh8YJFd9CZB4tES?=
 =?us-ascii?Q?CMkeOZfm5BvtD09Z8rHdtOfPdwqoqqX2B7ICTatupmqINwqbAtzuyn/y8KHj?=
 =?us-ascii?Q?aU2L8VPwouBToR2AShgpRFdSUfNoFX35N17O607WRyJGo9xfwocbdrYNNSkJ?=
 =?us-ascii?Q?5KONZY2SjZ2gqW+jpzGNJ7ToshcLYHN/sVOnlDy6fmS9dyyUz2Jyk5rpSJCk?=
 =?us-ascii?Q?4rMi4X4UboYLm+1b/U3+3TaSMUACf3g8+t2Ea0mcxFp4dwsBw75bsj1F7XAO?=
 =?us-ascii?Q?UEGWXF1py3S8SSwmD3lQ7DBXgJRgiSRSDtw0l6yoOgf3qtxN19sgBuhN3XVQ?=
 =?us-ascii?Q?dgsazPI+WUyRGAg2AeY2zTKD/LfafbiETusNW8evpUrnPDTwb6D3QytE4bHh?=
 =?us-ascii?Q?//0AVuQrxK5yFpc0RM7bj9Sydp5ajTJai9TLip7cnD2vqe9zfjzKK0R6n0fU?=
 =?us-ascii?Q?KWSwA461CaOVKZhxILOZQEt+on412/7p13dp6jjtRqN0y/3KGsvkrFWXT/5E?=
 =?us-ascii?Q?pkw8URI6uCMmpRF2GAH8+RZw1SAbFGSElUnSnnMCUEk/39N1K3tG4BHMcrVD?=
 =?us-ascii?Q?PvWWX0VqcChevLO9JiTT5VJEsEnkTsquksBlhbOvkZHGzKVKTILPdoc7xPr6?=
 =?us-ascii?Q?nBa2wuYQ1WXC7a4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?P7HcgGsJGSBn98rzmrrynUc46TubEpXx1tYvuEm2KzTOQtTfkdYKFsLBQwR7?=
 =?us-ascii?Q?z2Oiulh7wRdoMMpWAtWk9k5nSYtKnzUbn5Y2G6P4jOxL4ffi503rShaBAUHU?=
 =?us-ascii?Q?W2MxtLLHXlL8vxNNY0257STV9k3Uk9z/QW/mfvsESaCOMQpNzy4+iLiAMIDH?=
 =?us-ascii?Q?m2iL7tAW2M9LxVMrUfNM+Z8si01ZsgMG2b4y1e6cMTioRmFv522pVE1TR+dG?=
 =?us-ascii?Q?eLKQB9T3AZix7T6XcicoUjXPjCI0k10BEhhimUaY3OzjdfuEV1TTMmVq4YW1?=
 =?us-ascii?Q?XpHtnLUui/1H6EUU7iS/AEQzeDEwrAjxjCLp8i+qzm5t06B5GpP9ygx6j9Eb?=
 =?us-ascii?Q?3AAw2ZrfYRMqNLT6v3bEDe/QNQAmDj7cfCaxXwf/tr3f/Yudr7b2EcOXwgbj?=
 =?us-ascii?Q?6Mh49oy/M42tXdOFuDWPeMdlJmrWygHmP1N6iuZzp26w+I1/CQL76HU2atlb?=
 =?us-ascii?Q?z4ll9t3Pth0QFDFFvNVk9mghD4KEh754h3laNPGPV/bM/hfSidwTGaqIc+Fl?=
 =?us-ascii?Q?BYgMgUVXcNrvj1hGJ8GhZiDiQhPAXtCOHL9HyJTQqZgr/0/y2lN7+CmohR5I?=
 =?us-ascii?Q?mbOy94vIdOVxp5T6ALOeCZGY+7hOFZGSyybN2HLTmPVYM67+QiLz+hPQHjBt?=
 =?us-ascii?Q?YmPQ33+NJoBZa9mNvHRyFbYFM0CwyEwpzWfPDs4TVr9AJr9r3OF0g9vikSMC?=
 =?us-ascii?Q?3eVfSVmaD0iOqTStH1sHdw/RTYBfZ5QjooPpzfLMBSM6edZzphTx7fxIUGFj?=
 =?us-ascii?Q?p35vJ1yTr3+V+LUkriNQ1wSaaK3qeFklHSTTQFxEuK5K+M6vUzoOFP9FKxOk?=
 =?us-ascii?Q?7z1AVnVEwkAKVCQRG2GNBHXiufFeCeKXLO2CdLIU4LHgyrdTkMXOvwWcRahl?=
 =?us-ascii?Q?ANNY9hxEOqWYg5kiMl7IRw7Psnb0Dc0L2XERgBB0/LeYTGMJnoDeR5V0hOHu?=
 =?us-ascii?Q?KJM32kpj3zb87w1IflU527A7ELRejLBzd1xj4VN8aMkv+IUAcHpY8WB/w4n9?=
 =?us-ascii?Q?P812vbKbcJA6sQM7mCn51PgT30Y/S2XnQPhRlwVnR/9c456cCt6SOU3FMJqU?=
 =?us-ascii?Q?PJIdrwhD3I1h9BhFY9a8NUZltN0F5+6Qj1NNE0AkIJ1a1YRef4TL5BkCpSvp?=
 =?us-ascii?Q?2ByEDF9+dMrSfjZ/mOYKagWRtss0JbA0iXuqFPuqGFAOKPffAaLkhRqQ2JA3?=
 =?us-ascii?Q?WgAeGJiNnVz0lAy0IfdObSRKgwKOWrifznQEHrXVyFdl347/FPsPNkKActZS?=
 =?us-ascii?Q?Nif+4EVSTTY1SYaQIR9JmqqKxNn+4rAz3rqXw4qgTWa1e0AkewElCGNsI4IN?=
 =?us-ascii?Q?EiR0nUce9btnoAVPFqsZBWORWEGp/7T0yCp2eBQrSXoV+9lqKeRi2jmLvDbz?=
 =?us-ascii?Q?qkDzDNMzhJJtDXt5YlIbBNPHMJVnpPC7MktbNTNizTZF3SMb6NcbSaLp1Pg+?=
 =?us-ascii?Q?WRG/HNMinC4HxXJkuXwWwGKqCxQB9JlOxGhdALLJ/ifd+Q8UCuzEqb+mgHYW?=
 =?us-ascii?Q?wuPNk15F+ifNjPS+6dsaAjFkvKH+kSFbLcmkqG0xqHAp0I9d7C7eaXB5uROo?=
 =?us-ascii?Q?6aodjvmQB/5PM2wbCaSRWeNjTDj96uan+zZqLYuV?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 185eadf4-47e5-47f4-429e-08dd98335dfb
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2025 06:47:34.3463 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SbuyTjA8yLIvYKzbWqN+EYSZlcvHjUpDdlZ48rJvC/SE800vQIy7vvqUxbXp4Pe9QCrrWn/hMkwWXXQBwR1K1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4529
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747810072; x=1779346072;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/O2o54lrFsYKx8y81k1TcKNnzkABDyw35SGbSBXP2iQ=;
 b=a8ee/ZWKxGU9+Gd5teu6x7NHnbnQ+pdaKaNbtg5cbNhD4UpNlyvB+obj
 489cCmOQipxFjSbozP4u9b57bEtrOmKOsrQ5lrS6FRgE+GfEyyUSp5Ita
 rwcNbSTbhaek+O1pTG7HQbwyJWZelscAWEO075Vc7jJiLXdSEGVRKnWmN
 T3heUg+96m8Kb/SJnynATHvrH9r7WGWAlF/2zhCBpLIbJgf3sfSSLalt9
 OSl8GDzXPsUF4Ub8AU4d6TuzRrNMSN3jDWUdFEQ/K1G53C7u2FSfoo5/q
 SzZv18HSudVyUmK0nLlRHTV46XZDuH2u9DBhU8U4dCht8gFFkg0Lzs9cc
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a8ee/ZWK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v3 6/8] ice: use libie_aq_str
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
ichal Swiatkowski
> Sent: 25 April 2025 11:38
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Lobakin, Aleksander <aleksander.lobakin@intel=
.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Kwapulinski, Pio=
tr <piotr.kwapulinski@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov=
@intel.com>; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Zaremba, Lar=
ysa <larysa.zaremba@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.c=
om>
> Subject: [Intel-wired-lan] [iwl-next v3 6/8] ice: use libie_aq_str
>
> Simple:
> s/ice_aq_str/libie_aq_str
>
> Add libie_aminq module in ice Kconfig.
>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> drivers/net/ethernet/intel/Kconfig            |  1 +
> drivers/net/ethernet/intel/ice/ice.h          |  1 -
> .../net/ethernet/intel/ice/devlink/devlink.c  | 10 +--
> .../net/ethernet/intel/ice/devlink/health.c   |  2 +-
> drivers/net/ethernet/intel/ice/ice_dpll.c     | 20 +++---
> drivers/net/ethernet/intel/ice/ice_ethtool.c  | 12 ++--
> .../net/ethernet/intel/ice/ice_fw_update.c    | 20 +++---
> drivers/net/ethernet/intel/ice/ice_lib.c      |  4 +-
> drivers/net/ethernet/intel/ice/ice_main.c     | 69 +++----------------
> drivers/net/ethernet/intel/ice/ice_virtchnl.c |  4 +-  .../net/ethernet/i=
ntel/ice/ice_vsi_vlan_lib.c | 24 +++----
> 11 files changed, 59 insertions(+), 108 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)

