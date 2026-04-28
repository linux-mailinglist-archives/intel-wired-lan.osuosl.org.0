Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +G1EGdmH8GnuUQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 12:11:37 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A70B14824F9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 12:11:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A3F881778;
	Tue, 28 Apr 2026 10:11:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6wiUZaf2YHhu; Tue, 28 Apr 2026 10:11:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A3FB881786
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777371094;
	bh=gT/b4dz3Qd8P3PEnKwrSwedenN4eSG/DlnJZBj7pTpY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PHI6YFyUsl8cCUh4MgwpN2g5zwi2ADiDBhsZsjpENQOksxwbclHUDoZ3Mx7c3bJs9
	 Oxkei1cM/Eej3C+xLkOj0zL8/sUNHPXCi6RYYGEo0/s1OwbOKELj7T3relpBwQBUHA
	 4KOBfkV/Tsz8o4GnoLnk8qLk2jFkz+rrAs66WiC6obDTiB1gWyUuQJ/dCNJbZASdjC
	 gpmJxOkmXvmOTZfgT/IcQZPEzByGF+deYQGGmvGOyitMVn/d4P/EbecmS0B4GehvaZ
	 gnQHEQhpT4aMCSue1c68So0Aftnqw3Qwc1OeAaLf+q4vjvCthgCdYC458upl6RZ7Nu
	 IjHZ1kNO+hTTw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3FB881786;
	Tue, 28 Apr 2026 10:11:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C96BB231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:11:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BB557406BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:11:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yOVb_tFAo0l2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 10:11:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BAC51406B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BAC51406B5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BAC51406B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:11:31 +0000 (UTC)
X-CSE-ConnectionGUID: Qh+t95MfRPiyzHO40JMVvQ==
X-CSE-MsgGUID: EF8gKgKLRyye+wZ4dOTf2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="65805282"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="65805282"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 03:11:31 -0700
X-CSE-ConnectionGUID: 7npIRChjSYWZSTYqhFRf2Q==
X-CSE-MsgGUID: N7zfUBT5Q2aLfVUjdl8x7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="257223626"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 03:11:31 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 03:11:30 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 03:11:30 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.51)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 03:11:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YpuVi6oJTit8INsJW3Fene+MQ3aolD1g9KIfnazBzk140ClhlwGprH6uKOKcV5dLKUpbQlFeBjReYzb7+tnsgX+hBj09RvmQqZw5RKicpbMHO3Kc0qbDBzqxOodwQHYJkRqpwouOMXhf7M4+iJH5R5Zo9h8LtymVkpOk9cfuJcNvfEwj3YuYLeSGRRc7SWHmLydx/dKHZFVCE3S7ebr5cokdeYM5/Ecx0gMUTbqiG9wy4NSIpkgqSPSUS5J6CCocwc2DCfSDLEAoRYWk8Jj1GLMs4L7Z+gaNZXrayfEiILPVAltMS0RwvKwSw4BAKgFC5s+Eow3Hf08HlmorWAiDrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gT/b4dz3Qd8P3PEnKwrSwedenN4eSG/DlnJZBj7pTpY=;
 b=maO+tWNt0I4ZNbXGcY3Hv2cfM4GnyrMwfMTnX4XSlcUUPxpPCs3PXisQtCmTBpgmn+KXPAqo7HgmkduodebhnpKxnTsq00hMo59xnVpgZ6ZCTBKep6Q6eEl7xGbP4A2yXasnIaVbcocwftekJ05ayBc6f8w9Ph1+b+33gW2IPGRGdoF7zBjYBWC2uCwFfodADcJa04xPOgMPzdz6088JvGhV+cKBrL7+sMT0uJs1vtkJ0dT86oxfQXAXvB4qwE8fgAvBGRGCVpcsOPqo0zbwF9u1yZPBb5HxvYHIQdrPrxSZggRuBBDAAsmQEUkDINukdjEWq4UC80LDPHtYz/yFIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MW3PR11MB4716.namprd11.prod.outlook.com (2603:10b6:303:53::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.18; Tue, 28 Apr
 2026 10:11:28 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.013; Tue, 28 Apr 2026
 10:11:28 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Salin,
 Samuel" <samuel.salin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v7 09/14] idpf: make mbx_task
 queueing and cancelling more consistent
Thread-Index: AQHc1ujrRn8SYixNeE2oi9pXfZqfY7X0QNiA
Date: Tue, 28 Apr 2026 10:11:27 +0000
Message-ID: <IA3PR11MB89867A33B8133A1F0DC30384E5372@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260428082654.44364-1-larysa.zaremba@intel.com>
 <20260428082654.44364-10-larysa.zaremba@intel.com>
In-Reply-To: <20260428082654.44364-10-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MW3PR11MB4716:EE_
x-ms-office365-filtering-correlation-id: 09161ab9-de45-4aaf-9c41-08dea50e8315
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|22082099003|18002099003|38070700021|56012099003;
x-microsoft-antispam-message-info: KCIX9JPtJjQ2k5WOE0DlXGSHCwnmi5xvFCxOndOq8n9/GnmkRZUigcx4IEdUziVoDTUIaZfdnrq3oxM5PDrMr/w3gNCrzS8lSgGJAFvRRDoCjCZnbYxygIftl2RP9Q7sL3zOHveP1eTYUW4W8ipvdHVSZQb4+Curu1aCdsh4xb9ABqHzPgvaX+ESllQRWqa8wNG+cd445E+ikyfzpEbMHGRMkCWrs4+6DciUcZVJYeaJa2OIo69rCulHqDARZWOCFYWD6omVv43CRhhtOmJjldYF8a2y6speXnROEQ2CeMaCAhQErJXuXMOuF29ap7b37Vl6y61+c5X9Fj0HPoIjU2J9gCdGDXse8lhlowLqY4+Jdqv6DaGE6j4eVQx0fhUkt5pEPndsFpKgLrOk8qZLrNWG2Xz+Xi3byIYXcNZiPBo+nEXleY6TGOt4UHFgYVVZLZiZKWaj1hiTaWxOljkok0JzP6eR4+40DxzabMmTvnxbOaDlB3CbM2AN6gRGR1FSJukGU2Abjzd2bl044JSBxK4kC697sUq0QUfjOt9fT48AnoPYAF6WHuSzDC3P/qF2wFVj04Te43oqUulFs6yxFmMwYCZcRlnhrxVCcO1LkxOWjV5lok4G8fBPRANBoUUkDJkqH3GAchxa1Ni5ZNI/S5XjqDwFKgkS+apMy1FFyo0SDP4tZzezzF/uDnPdGGFTgBL3CuSkN9e3OY1xIaBwJFqP2PlWwkE90D0JSer+QnLEIbUSiMVka0jiRnzZ9hBoogwZ0oqUMuEQhu4yrH4T+iySCw6R4hxIklhSIk59tp4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(22082099003)(18002099003)(38070700021)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3RgOyE3sKI567kWsRcTHvIIduTkiWAdcURPQbDUiRbU7yPTAX5a5DPd8pFxz?=
 =?us-ascii?Q?tYHSdFUvVoMlFAeXGgWUtikvWfGoO5YY4DSy/7gA0lPcrDuow4JywNdcvHRW?=
 =?us-ascii?Q?rycH4TESu7gxN9pw32+tQLd0rIk5O6D2c1Sg2Sm7+NmsarlttJNFiUJFhzyr?=
 =?us-ascii?Q?HFxfNlMMe2xtpuSpjqzIPuq7OI52M4EvfcJU/FPpXTTGV5+SRxOE1Qfka+PY?=
 =?us-ascii?Q?PZjWCFKmf/5cwC9sRzKemGn0ctBdQZR/TO52U2b1xiDnBTcdsyKApEucllGS?=
 =?us-ascii?Q?AaL3rqjPDqXyI3oLq+zntDUnIrN3HuTkBYrYVAWuG09tbU0/F1UpA/d0dwf/?=
 =?us-ascii?Q?C8OSleUFk9wfBkKUiKbtPp5hbpQS9XNBUYk+Z1o5zBBug4zybrAI72mKJz7E?=
 =?us-ascii?Q?xIEVwZ2N/bciOImFHvnvl+UZO9ZirtGD5OnedK5fusYv5RSncjUFw2xtzAFP?=
 =?us-ascii?Q?8Q4LlQcwyImsCbV7Ra+gVIOLSuCvrOfxAMChvj3CPrZZji0FKDjzNZnAjxn+?=
 =?us-ascii?Q?3QmQikRH2XyxhpsthZn6DgymRg6luMEjuCHsoZofhwoYv7JnzVVzlB9UOjPj?=
 =?us-ascii?Q?xddLXAisCKaGD6KFcebkySWp3DnP2TaSYC7x9OoL0NC2yPVEj+Hnq/e6VkO9?=
 =?us-ascii?Q?cWfyLPcTagivO4eeqO5LB173vjcJckoXrW4lwU9WcGGMl/DInrMOqRL37UJm?=
 =?us-ascii?Q?sAwLOOoPlJ0iwYed2kDqqxKiwndf/KgH5rYSkhHoiNdLTkfJ9JeutDyZ1hf7?=
 =?us-ascii?Q?GJjuVZ4pavPZHOGjjUBrrnXhdvbEE+UWZjRYGhoP7LDmOUN46844HlLj2ZOu?=
 =?us-ascii?Q?mJtfal73zAgol0NJbdBFtIteIfR0a7sbhjaBJeWjMCx+UZjFAd2Ks4rpZRa2?=
 =?us-ascii?Q?VXD8QU9Q8ciK4YbqsqFDaFyFfaN3LrOKt6viTNlj/wsRKWMQe61M6qFoO+j8?=
 =?us-ascii?Q?G403uGE88vL8oXpV20AGd5v33BFAS+/LYtN/3a8cc3apizJxi0Abrmjjq2vI?=
 =?us-ascii?Q?2KpUBQwF08NOcH7tQo6gxRFVVvfOz5ITFMbkbjKnYkgAIaLlVt0axNvl7/lZ?=
 =?us-ascii?Q?myW8Y4+gbaP4o5ebr7WsRi+gV/Lg5eTPuQL1vSTDZu6w45tknfRwsFTClVQk?=
 =?us-ascii?Q?mBa7TAa/Owo4GOehkCr4h/PjCjyrONy6icsKk+2fiR6oCpS7VUr+07QXtgHS?=
 =?us-ascii?Q?eqJ21arqlApotIoHkq/dG+08pCzsm/X2YqF1PXJXyUzkjbt46GkJJUEhWnwE?=
 =?us-ascii?Q?FME59IJfcBbFuLPvy3u6W7voI6vzsJe9yOarUIbMGCUN7lV7zcPj2Q1rSZWy?=
 =?us-ascii?Q?UrlW4iI8EZeplMzcMTkELyPq+tBf28e0A+V5urJ8qc4MHtPeDMkJd0U/3iqF?=
 =?us-ascii?Q?pC9wqcVOJkZTROGWAPrVL4mcbibpfup1RJabiDXP15FmANL8Y2wydlUfiKs4?=
 =?us-ascii?Q?ZtWJ+ZpKxv6Q4puq3IxMTkxM7hI/Ed3Etbz7pZd+mb8Pww9RJ2IBQsJe9Gna?=
 =?us-ascii?Q?YpXXh/xjUHFyyq4iUJed2/Hg4xwXTWLu5m68VTP9nLi1WOwjRiE0Cansj1Nc?=
 =?us-ascii?Q?ZWCWPyh7xDOcOHawncPyXdHU28s74Mnck5lsqUe3JEnIBdnT5XjeckTi5pTf?=
 =?us-ascii?Q?0O+C9/XoJ/4DoEq/B38zWAQ5hpxF+Qo7B0z6KMXa6wmpB5eG38uWXhP/eD1R?=
 =?us-ascii?Q?j+QOro5yLCXiMhAK1EtMFAKitExhQMGz+TcAvmhhIdTCivE77IEhQn8udx6/?=
 =?us-ascii?Q?0lcQ+NLDuUVh1GpWPTY/hnV3HQu5Q88=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: GTqaMTn8u9lNoOMWDn+VW8D4VbAFHbOc2ZgaE+DJvfy0gjsuagjrMDM29Fyfp/QPpWX8MNi9LNykXdjGl3J1cEBPb/tQd+nEXXY6UkSEkr8igHP1cKj1IJ5kut5Wpw+p9Ak/aukWKhBQv9fV1U0YKBIqAvdjTaPw6qoAXsBpMJ/0qsAmYuXn5QmqhVDUoALP275kw5jWSUwFu8pEGa6bSuiCBT7ih4uF+vPYvOtptSO48qPrKxQOM2slm3JjegSVTogqU5MzEl8XHXDnR2wQPVUEisyc9x/4/ai3ShHjIF3YDxGxx5FmRvHJF99Z8haMvDV/f16pUHZ3qmVmIplrhg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09161ab9-de45-4aaf-9c41-08dea50e8315
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2026 10:11:27.9991 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CDoMvkRCgtd010ExUo9dGrWOFdrh3fzryy0pDiv2jW+7SJhtW+kk5ZnuQ79bFA47TIrDoCGevWWyvTnj7/sNZLPAAQnDYuJRGiRE3hxndN0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4716
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777371091; x=1808907091;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VKT+9ZroM/gSr/vxivpfJroU+z4j8TwNaBo23XjVsDA=;
 b=BZRDyfGIIKpCHjiGg8ZKnDDlxuT1e+XWgLG1vA9lJkB6jgQhRRuOT35Y
 YTeiqrp+qre91D4DvVeFFYRCeuDeBHZe3Cy7ZaOvBCxUmlfU9XQP9ryZY
 tnUOF/EwoPPfxk6oqLf9s89TcH9LxtwvFS24UDCzEs909VWcextHfp9HJ
 0a4yVGow2Jm5ZTV5Hqe6A2gTEEKojdmqWdAxUTd07ym/c8zDKy2ZWBsOP
 ElMSatXSF/x+sAcnVqQvsnmv9mVeblxYolkgt4sJDHQmN6B/oVyAX764p
 8TDsOO2Y4RofBlM6VYhVzPXAugN/5OFIx0pTwH+/X4OB4TJYu32vW+o2g
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BZRDyfGI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 09/14] idpf: make mbx_task
 queueing and cancelling more consistent
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
X-Rspamd-Queue-Id: A70B14824F9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:samuel.salin@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	NEURAL_HAM(-0.00)[-0.946];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Larysa Zaremba
> Sent: Tuesday, April 28, 2026 10:27 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> Sridhar <sridhar.samudrala@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> <jayaprakash.shanmugam@intel.com>; Jiri Pirko <jiri@resnulli.us>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan Corbet
> <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org; Salin, Samuel
> <samuel.salin@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v7 09/14] idpf: make
> mbx_task queueing and cancelling more consistent
>=20
> As a consequence of refactoring idpf code to use libeth APIs,
> idpf_vc_xn_shutdown was merged with and replaced by
> idpf_deinit_dflt_mbx.
> This does not affect the Tx path, as it checked for a presence of an
> xn manager anyway. Rx processing is handled by the mbx_task that is
> not always cancelled before calling the new consolidated mailbox
> deinit function.
> Moreover, in the reset path idpf_intr_rel() reschedules it after the
> deinit is done. This leads to mbx_task referencing the freed mailbox
> and causing KASAN warnings.
>=20
> To remedy this, in the init path, do the first queueing of mbx_task in
> idpf_init_dflt_mbx(), in deinit and reset, always cancel the task in
> idpf_deinit_dflt_mbx() and in every flow first call
> idpf_mb_intr_rel_irq().
>=20
> Reviewed-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Tested-by: Samuel Salin <Samuel.salin@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf.h          | 1 +
>  drivers/net/ethernet/intel/idpf/idpf_lib.c      | 9 ++++-----
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 6 +++++-
>  3 files changed, 10 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h
> b/drivers/net/ethernet/intel/idpf/idpf.h
> index 679539a1b947..1d0e32e47e87 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf.h
> @@ -984,6 +984,7 @@ void idpf_vc_event_task(struct work_struct *work);
> void idpf_dev_ops_init(struct idpf_adapter *adapter);  void
> idpf_vf_dev_ops_init(struct idpf_adapter *adapter);  int
> idpf_intr_req(struct idpf_adapter *adapter);
> +void idpf_mb_intr_rel_irq(struct idpf_adapter *adapter);
>  void idpf_intr_rel(struct idpf_adapter *adapter);
>  u16 idpf_get_max_tx_hdr_size(struct idpf_adapter *adapter);  int
> idpf_initiate_soft_reset(struct idpf_vport *vport, diff --git
> a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> index 0d131bf0993e..7988836fbae0 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> @@ -68,9 +68,11 @@ static void idpf_deinit_vector_stack(struct
> idpf_adapter *adapter)
>   * This will also disable interrupt mode and queue up mailbox task.
> Mailbox
>   * task will reschedule itself if not in interrupt mode.
>   */

...

>=20
>  	idpf_vport_params_buf_rel(adapter);
>=20
> --
> 2.47.0


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
