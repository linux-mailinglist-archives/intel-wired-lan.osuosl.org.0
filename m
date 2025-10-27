Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C5BC0C130
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Oct 2025 08:17:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 38EBA40819;
	Mon, 27 Oct 2025 07:17:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gdelpUc3VCWA; Mon, 27 Oct 2025 07:17:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8A4F4092B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761549456;
	bh=5Bth7h9/adk4imAa5YJnrCj44udSuJy4/eW8AFBTGuE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KyPwYsYsgndJ/33KV8ZGjNYmVSQaQIFqm/bHAbUYjepnt7V2f1qmh4LywnCBlzBco
	 yaq+d68zSAWI1lsvcboxkvJScmxIZRK4fI2ENH0YaKf3ngGREybp4JPsiSzjT4BiyO
	 omh/9aMxDf6xscUoE4sZBpJ3ctbC3adz6W9RcIYrJ7nNwSVCbfkkeFO6O6r0Z+gIq0
	 J20gogJW4/CnBbLf/lDeupkOn0F0rjUw44FgWR+4nT3qPisQg/3FG1PtmDeouKDb2P
	 lMcNkZ23hJr38iqzs554P1O+AZghkBDLc4h98BxtV87/iAYRG0tg2J51yRkkY+v1xy
	 aXEAHDiDvw7Xg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D8A4F4092B;
	Mon, 27 Oct 2025 07:17:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7B86315F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 07:17:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6DBBB406BD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 07:17:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NkLQOTiN1kYb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Oct 2025 07:17:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 686FD40488
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 686FD40488
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 686FD40488
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 07:17:34 +0000 (UTC)
X-CSE-ConnectionGUID: 2tLpBS0CQdOI3ZQnAtaJKw==
X-CSE-MsgGUID: zGJvVX9+SGeXhjGUks+l9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="81048913"
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="81048913"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 00:17:34 -0700
X-CSE-ConnectionGUID: 8b72YvZ9TCSje7zKTUxQ4A==
X-CSE-MsgGUID: gS6nQgPmRvuk8NnW0Zt/QA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="184865485"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 00:17:33 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 00:17:33 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 27 Oct 2025 00:17:32 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.38) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 00:17:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jqe9fFzILlCOmB8YIhDLXgpSA3Sz4nHnicAlS+G4nbF+1ZH+FrnE9WBZG2xx8Z4WQN41u0ifuQ4z4wTRVae2O4RTvsPz9JEJPmKneVe78Ol6HEBx8AL428RAzJipyX5icXRCLhYGqql3ShzQ3TsjcuOq6C34aRISZHfrjZh16sGGZ9Brs/LfY8y1FEb3GfXXwk3uxJpoStwH3GsVkEKg+y3Skq2dtVcDvcO/qWdeDDXg5BBdWrxqCK5Cubmoy+zZhMBDzoFm3R46KsLB//hjXTMVeZI3ZUMdDqdHJYVt1go21/sSMxeCnuRjeZIPw81yoFYDvI0+Zp6nnHaNfKPvOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5Bth7h9/adk4imAa5YJnrCj44udSuJy4/eW8AFBTGuE=;
 b=lq+KspPggpPAt/1mAeajF32ZNimg4/Mic5Qcx2wyT2JK1V2KNEc1ZxRmUsonJ0gO2SbJBGznZHBEaqm0qiqOZGA11SMOnWmDwwT5SkYYYGwqMNkW6fUDySLGAxWq/Jp88elo8duCo9lzd7tt3epxCTQk7IHjnsA5wvvJunea9TncKs/8Sq2KPm5DPdjhmjuR48FdvSRGA/Q+8VhN2Br14GFrwt/eKhcjtfNqfZCOeq2bDZ9MhxRZbgWj2oHJB+HCsZoSQQiblnzx3D/CNb/T49xdxkA9C+gkomGdge1CGVktqQPR+G8B3ytD7/rRFPlhiXdOO0e7bpLlw+fP8i/jXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CY5PR11MB6533.namprd11.prod.outlook.com (2603:10b6:930:43::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Mon, 27 Oct
 2025 07:17:30 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9253.017; Mon, 27 Oct 2025
 07:17:30 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Alok Tiwari <alok.a.tiwari@oracle.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
 <edumazet@google.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "horms@kernel.org" <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "alok.a.tiwarilinux@gmail.com" <alok.a.tiwarilinux@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3] idpf: correct queue index
 in Rx allocation error messages
Thread-Index: AQHcRROkYgzm8tY8TUevd7QSXKadxrTVmU2g
Date: Mon, 27 Oct 2025 07:17:30 +0000
Message-ID: <IA3PR11MB8986E4E62044241BC2A9C770E5FCA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251024182528.1480729-1-alok.a.tiwari@oracle.com>
In-Reply-To: <20251024182528.1480729-1-alok.a.tiwari@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CY5PR11MB6533:EE_
x-ms-office365-filtering-correlation-id: 811c8dad-9c43-4132-8a4f-08de1528e419
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|921020|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?gytHVofdmVHN5MTXe+Sg1N66AONQTgpO3pAgWjhi8nOVCl4uj64fDh1JYNdu?=
 =?us-ascii?Q?t/3BVgJaU72FobNJ6EuBqU3s0SN72W6WuTIIytvImkrDHCmXp1VtmWflvx3W?=
 =?us-ascii?Q?7lyRJp2MhklQgAA/uieWd2MhZzmn8BHwo9Bd3RQziiBwlrq4DHCsX3hGXC7q?=
 =?us-ascii?Q?OB+kj/fsIrrOS918bshIf7aecuESIrXdnYecqPRAab517IUexRrCh1GNfqdw?=
 =?us-ascii?Q?9W2r/I8ZLGfPRGlgfEZ2tDTnjPYcVWDUYGjWAfe6QogQhV14KP2kckFppv08?=
 =?us-ascii?Q?42lVgrNUybkUdIqNEJyJ6BjYm/YsDEoZYB86nxV3XuQMBTAqc9m10T7f1bRg?=
 =?us-ascii?Q?arhKSVFxyhed+UL5/y/gTCPsg3rU+8jprUidlCcyBSLemcwStsVfaTTqWzhr?=
 =?us-ascii?Q?UZ0QFlno5PodC0Sx9HDy6t2QXOCSE7nF9mkz/Mj8Ijx4pCN1+yJJpH6UUdWR?=
 =?us-ascii?Q?VxdLaLtuje8+E8mn3mXm/OyuzYDtFUgd2wSHxNMqo+KjTiY/bHZqJumh40o+?=
 =?us-ascii?Q?NpSyOC5SG+8Lp3Mc+Iq2dTUDCM/Fy1bKozVj+o50Cv6/0WwlupquWHkOyXxx?=
 =?us-ascii?Q?fD0g2wBPMWpAzhRk6AuVrrdy/rg/t1xRqfimwKfjqjdbUeSusB0jXwai//QE?=
 =?us-ascii?Q?Q2IcZFp5q8tZnOhex7yRGG+qvDc2Tnj5fMPl53XRWj9UCgXKkLkCP7p5y7m4?=
 =?us-ascii?Q?CCHQ+2xBqtESjPZbcDAV1bHcYgEnglVwIVM88+qHXU6A6r8bdS+XMs+HrzVF?=
 =?us-ascii?Q?XuuXxM2ak+wZw7LHKi1rOP43F/iuVvV5D2vRU78waGs91dZYEYr2xdJO8YnG?=
 =?us-ascii?Q?RTFeINu+/z4onMidkWYRmIE/D3cLwsPuSOpwaQ0BM5XxL5JQWwyRUek4vtlY?=
 =?us-ascii?Q?5ohJZnjUGxx6+0V8SLIvaSPp+CiP+s7T+sOc7dJIQ/aY8Lc25OqGq9TPQoPd?=
 =?us-ascii?Q?uDKSRKa83f5RdRjQh7sr6fPMAI5DPZkMVW56do0rEPm69AQMRnPe2XVdfZxT?=
 =?us-ascii?Q?4rRk8xoKSLFmHAUNX7UWJOZINVAOyY9kTupUqpDjiFgFXFL4q0K2nA4/uC38?=
 =?us-ascii?Q?urD+u5u30mcO5PcxzCwbo0pMUOBO4YnBBMqzG7tNjD+9+ys1QyWtY/ZlFClx?=
 =?us-ascii?Q?BkYi6dqHDS1y3hZ4hUwZKO1vVWRZVOK/aOcCcxvQ4MS+3jgO/gzCMKG+3tvx?=
 =?us-ascii?Q?xdbLgi8wTgqRKWB+NB/gGIPtWDSOuG0Y0F7T/uSgoPFfAdjgtebzFglpNDrZ?=
 =?us-ascii?Q?YVb4eXm1NOmx9PUFK0lHwjTRQ4OCNrTjsvDzBOaUXtawV1AMzwfm9nHGMVab?=
 =?us-ascii?Q?e28AkBeKXGrIkCqJpkn9SyGaKixdz5RrJLdGWCHRJuMoPcwdKADNtdZgq9GC?=
 =?us-ascii?Q?jkb7vZSWVtS/R0eVC7H6emxH2IMASX6IJP69rYb1eb4h2t0gJchP+PC5BzvT?=
 =?us-ascii?Q?AaWbKESJfMLPWOTvJgo0oVFDn97I7A3nyKujsESrytO/OghFPUxl8bA66GcL?=
 =?us-ascii?Q?ufSJYLdu0OsDn47L0fTntZXzgAAeOWdZPqGxCJbrHtKEZEl+/EEt3InpEg?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(921020)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PaDixwRTZGKmOIcOzro2F57F9PxjCjN1Wk31o2t3BUmvGcwZdbec+97LpTFo?=
 =?us-ascii?Q?tc23vjbyYb6ZhWye6FS3btA0ePW9rLj1tOoIgVz/PAxIvYxUPXvRGR9myOq0?=
 =?us-ascii?Q?U5GN+vbg4a6VQwOaTMmc94cek43rO19NZx7Hcog1aeGvxKprv0lQzgZnIrX+?=
 =?us-ascii?Q?H/C8c29rYQOfjHfwrnRaA3HCQmw5W31Q31pd+JMitJLKFuglTKaux3h/sitj?=
 =?us-ascii?Q?MRl+SBNOzGEHl6+bIMYcKVCcfEW6QWGKVEG2R9m7EdWYn9Vr02i6+TLINBzM?=
 =?us-ascii?Q?rxrBPXcl1xj1KKF5PK4ImDekNEyrDndLVCGx6XAapxRWfeANuoFiYBRmMfVf?=
 =?us-ascii?Q?Tm2pzt1QAZ1OyC5WAPbYOqEr+wBrzXyYDH99XuOf3yD7qlKtbIBmtH17QumW?=
 =?us-ascii?Q?/G+sbIniQo3oWo/XXnnPEOremHi2wWBDXG0/ocslF7VujKecQjWpi91Jcelc?=
 =?us-ascii?Q?/GqAUMaIJFb65JeWQUrZlJNPfzeH6Xe4T7T/V6BNk/X0VEegl5Ye/hNVQ/Z/?=
 =?us-ascii?Q?qKzbMTLvtHZ8zCFWj8PABUEQwVosHuGIY4HLPmawP4epQPkzqdfNNfZJV8X6?=
 =?us-ascii?Q?yRaspFs2s9FDbRPRYXviPVAuYUX5ay6nKlPRWbsm0oe87QQbQf60ejMMbeoA?=
 =?us-ascii?Q?Ct5vt0B+FQJnWsXrD6WKyCuawzPynLvkTVc0afFJAD34jnZVgAoeeP91XNv3?=
 =?us-ascii?Q?xo37HbiTKnoKBiiYiyv+s9QAa+6BsjR1nbK26ib94sTHNlbQq4I2GBX3WFuq?=
 =?us-ascii?Q?kcOLtfjxtkMaXJJrN8IJwSM4VrbnPbrQlx0OVi1s88dBKKF2xxYlqQ7OgG7W?=
 =?us-ascii?Q?DY2jz/uhfz63c1TfNAmlNl8ybvdNBurJAuVdA67VLqCzsldxAh1ON9ybd/EH?=
 =?us-ascii?Q?3d73EvNls+JOGUW1TZqjZzXLqJAvmHAe2qWhqcdOBQS5I1/wd8NBVUTQSKvT?=
 =?us-ascii?Q?V1A2OBQsCDsftmcEJz6gNXmGW5iGjbiLRz7CdKugdKZu80HxbeATS95WKICb?=
 =?us-ascii?Q?EJyGCKvL/kGeGlZsuexJmW2ove5sg9uLINUgmG9zwdh2Gj42p5/GezWFF64y?=
 =?us-ascii?Q?GIuf3Fak404YJw23AYCCBwvkKNG4q8Ffs3DRCIkn+1aiId1npcWAK3gpjCOd?=
 =?us-ascii?Q?duMtVE3avur7ty2Z7aT06AULhZc09lUE7ntYT0NjDt5kUeMlZcJ+wpRYTa4P?=
 =?us-ascii?Q?uXiS3cDJTBwSk5cwjUF015tQ82qmt/4F1qAjmSz8iXIc4N19nIH6IUiC1wRC?=
 =?us-ascii?Q?m47OfxWpxWvHg+SGIrwIU1Rd1C85wJPifTtm2ALz8BlmBeZ2APGDqoreTmiz?=
 =?us-ascii?Q?FCllPlZuy6KTRIV7yXb1WNN72+0DkF9BFRpRRbSBpXXfJ4cOqfgCRz5bXaow?=
 =?us-ascii?Q?tGL3OePQQW0f3+JHyl7GoGxT48d4ts+/gy4uuYdzT+eGWE1U/MKyBRxD4coG?=
 =?us-ascii?Q?cc4jRwXjWvjBaI//ym7sG9J4IMyyN9k5s6VUAJle2WdW/+8Ld+Xk3Nlqicto?=
 =?us-ascii?Q?4gs0qzYf8wKytLk70BIwgDnGO4Qe20mRM0BuWalLuvQUK4iEl3r8eWJhpE/Q?=
 =?us-ascii?Q?/coPP4uLi/VzbrGQJUyKB6fGH1W6hBCduzwxeKmmNoJQQRaOlgVG1q0zJmbX?=
 =?us-ascii?Q?AQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 811c8dad-9c43-4132-8a4f-08de1528e419
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2025 07:17:30.2567 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G13H5qCexpav1XxZQNg2mzgqRTOLUcElARAlqAF9PY6F0TUQLpjbQeejzpmBo5dBP81gGheIFeOZ62nhizzWR3UMMo2AtE73Qhl/jOO3nuI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6533
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761549454; x=1793085454;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QhEfBxr6y+xZBL/mRP8iTI1wLz9b7KleqMzKl5NqzbU=;
 b=Mj1gWFntQq2+UgX5INQCW4IbyDudMIAtQx6SI5szUounb5qPDJ9pfua0
 9JcLOFCSNuzJFW6EVYsexIci9hopfkgi1op5HKnk7SEHgkb5EgQ6kP5ne
 D8ln9DlEm1taD9ztubTpLfjV9RJ9NwWvNLUWrFB4iKQxK7MoTXrPx00dA
 /XlZ7NL+TcGfGxMn3aWzK40jgR4lMkHnWGmey15i5CGgz8fIB/9fNqvf1
 P5DtkpPicv+zQq5NFRm2AOEVEPMlpkkOV48pqmUSFvIxfA1FPhjgXkzPq
 4q+rxEXd3/YpoIveW1SzCE0/RxqmSI0ARcFSkcHzLPOYaIfTI81xmPpnQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Mj1gWFnt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] idpf: correct queue index
 in Rx allocation error messages
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
> Of Alok Tiwari
> Sent: Friday, October 24, 2025 8:25 PM
> To: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> kuba@kernel.org; davem@davemloft.net; edumazet@google.com;
> pabeni@redhat.com; horms@kernel.org; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org
> Cc: alok.a.tiwarilinux@gmail.com; alok.a.tiwari@oracle.com
> Subject: [Intel-wired-lan] [PATCH net-next v3] idpf: correct queue
> index in Rx allocation error messages
>=20
> The error messages in idpf_rx_desc_alloc_all() used the group index i
> when reporting memory allocation failures for individual Rx and Rx
> buffer queues. This is incorrect.
>=20
> Update the messages to use the correct queue index j and include the
> queue group index i for clearer identification of the affected Rx and
> Rx buffer queues.
>=20
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
> v1 -> v2
> no change added Reviewed-by: Simon
> v2 -> v3
> added queue group index i as suggested by Alexander.
> ---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index 828f7c444d30..ed0383ab5979 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -922,8 +922,8 @@ static int idpf_rx_desc_alloc_all(struct
> idpf_vport *vport)
>  			err =3D idpf_rx_desc_alloc(vport, q);
>  			if (err) {
>  				pci_err(vport->adapter->pdev,
> -					"Memory allocation for Rx Queue %u
> failed\n",
> -					i);
> +					"Memory allocation for Rx queue %u
> from queue group %u failed\n",
> +					j, i);
>  				goto err_out;
>  			}
>  		}
> @@ -939,8 +939,8 @@ static int idpf_rx_desc_alloc_all(struct
> idpf_vport *vport)
>  			err =3D idpf_bufq_desc_alloc(vport, q);
>  			if (err) {
>  				pci_err(vport->adapter->pdev,
> -					"Memory allocation for Rx Buffer
> Queue %u failed\n",
> -					i);
> +					"Memory allocation for Rx Buffer
> Queue %u from queue group %u failed\n",
> +					j, i);
>  				goto err_out;
>  			}
>  		}
> --
> 2.50.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
