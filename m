Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Dr9BpCLnGl8JQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 18:17:04 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9D517A8F5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Feb 2026 18:17:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E78B4608EB;
	Mon, 23 Feb 2026 17:17:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s9Urq380YqIb; Mon, 23 Feb 2026 17:17:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4307D608F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771867021;
	bh=vSfpc6eWxpnC2Bn1qd0faFGsyMN39QAFhkiXZIzTsT8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=d7n6pw8CHOyE8l+LJx4Nr2TEUS6N3UPYjIlNl2b7YC0Hms10ix2GxGpc+oHW+EB4/
	 TRcKAK0GsD65lx85b1sWYUiNEY35LTr8Z7lr5dYfMIj3yzlaybXN4lhVC/WchVfDvq
	 wHG+FYR4vK3kYpTA/wU1oVXgec1wH8Zt7JFh+BmCIY1YrWsUlELo7gM+IUt1x9d2vT
	 X7p3o0x6IDnqxOVkHqRQp7jWFN0NkLI+oDcJUOWDSFtAqgoMFT3WfStPq6TuB9Ch1T
	 pwaVnH+GudtgUgArEVW3LRfxihHCGgkRTL45dWIAPftz8MRzNBwcwqhTmc+D7uVwwP
	 O0GQSn0rY+AkQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4307D608F0;
	Mon, 23 Feb 2026 17:17:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 24929249
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 17:16:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0A74D40831
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 17:16:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0S0bEnVjc5ZD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Feb 2026 17:16:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4DCE740830
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4DCE740830
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4DCE740830
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Feb 2026 17:16:58 +0000 (UTC)
X-CSE-ConnectionGUID: MAlusGRlThe8qgJIxTv8qg==
X-CSE-MsgGUID: zmkn7SVtT3WLy/SLxbxkbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="83966124"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="83966124"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 09:16:57 -0800
X-CSE-ConnectionGUID: W5ggCQJ9RD2UuU4O2Jc5nw==
X-CSE-MsgGUID: dt7G9BvDTtS4GevfPPiALA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="215649016"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 09:16:58 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 09:16:57 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 09:16:57 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.18) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 09:16:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MtSdXwtmBrIToKsZ0K0O8Xtu5TZOzXXPdzjOXGPM8Psus4ndwfxCvq+EQ0NLrmdXWeMVqJYelvsWgOREDWj+ZVyQoGzdu+ER1Zc5wt91OkpPopC8Hu2ZTtNBgpSjNUiYTL2Gt26quaa9BaPF4ckBDlr+MMKbs0OYRxQObM41wBAfkkSLVWxh/dtGnP09BJakMeApELcqoQ/Z06t6qYlyUJT+mtYpaSxyOmqGb1MSmOMRgycA516OlmX8qYMnmBpWmuFptf6sALSyZdjTCJ5aGLGE+BEXa6YrFQ2mcvL3qsREyCvtxPG0Hs+XkT3KVoYFh60gVkgpwJmLYn/lpwJAyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vSfpc6eWxpnC2Bn1qd0faFGsyMN39QAFhkiXZIzTsT8=;
 b=duO56riatUTPPPJiDp7VNC8ZO6IX17OeaNldAkPvcWdVxE8kTNjHHidcu+v6YCdby718zEvMvVW4DM0g1MLhlHWGiDVXx9NLEAhibPPZoqTMfZpWdpGFkGz9IFBIsFyEfHOXt5nKnE58h5hstpJFxHYEJGknmoVUx08nqzG72lydXuLtaWzoCekSSFo22t7Vooiq4RiiqhjprO4jrcp/5bkdd/lTFcYjpAXqP7XzN5Y/aw4ubJ2TMYYUlBWgIfWnSoNckR9PTVWgCug3It9qc2r4dymw+4M3yJXzMQHiVBtoomNoBL460/o1P+0Ei/3sGkaNBVJtRHZOGpaNtry5vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SA1PR11MB6688.namprd11.prod.outlook.com (2603:10b6:806:25b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Mon, 23 Feb
 2026 17:16:52 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::6f05:5b37:2440:556e%6]) with mapi id 15.20.9632.017; Mon, 23 Feb 2026
 17:16:52 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 11/15] idpf: print a debug
 message and bail in case of non-event ctlq message
Thread-Index: AQHcV8kf0JTpHhK1YkWLcXniIvC/0LWRH+PA
Date: Mon, 23 Feb 2026 17:16:52 +0000
Message-ID: <SJ1PR11MB62976F14D1ABAA465E4B47809B77A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251117134912.18566-1-larysa.zaremba@intel.com>
 <20251117134912.18566-12-larysa.zaremba@intel.com>
In-Reply-To: <20251117134912.18566-12-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SA1PR11MB6688:EE_
x-ms-office365-filtering-correlation-id: 878c64a7-7657-421f-d679-08de72ff5651
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?oG1QLDSXlpHGU7s4q4j1KuCECzY4AJPB2s/VFPzaSMeuM6bT8SxhNAdzwKPW?=
 =?us-ascii?Q?+ots40N5NIascSNm2zEqpFlRgG3pPLfHuwnzCc9fj1XHqMwiYMq42BCos945?=
 =?us-ascii?Q?Sio2C1y83CxX5MSyzoztnQaT78qNmCiW6bsqvqgB2mQaSVUwJ+k767Jp5sze?=
 =?us-ascii?Q?fMonXvfOFXn8K2wvjq5tjO3dhkR/zNziQcdEqt5yUSfCl6HcfVoQI0ftAIMc?=
 =?us-ascii?Q?XCtibsAa+p2uzo6csTWlHM3ufaPt76/4jK6+EQMn0b65tD96LH/sr8FQR9j8?=
 =?us-ascii?Q?Gf+apKeorXcVrdxHxC7XD8Ttte6VVCKvxF90eJwIwDJUR40okvGNQd2ojaCI?=
 =?us-ascii?Q?t/ioAVfGhyc12CNQPCchBZmc81Giu4jiwUsk/yu1zN/5Le8/F4mWpaVqtYit?=
 =?us-ascii?Q?5OSYDAANu/Fxylihr4RmMExQOiV1LHUkJoOWUNNN2oiXAGf3Z0Z/4pL4xJis?=
 =?us-ascii?Q?AaSAq5FaA/Os1+rHzo1Z3vA2PsXJPpQ5Pe4oL/D73J+wz/UioaLOLSL0kPe0?=
 =?us-ascii?Q?pMXL+CH9RWPM0/eq9getYR2Z4QKYMkW8orPMZAqffKFQF9LXacpvR39Tw4VI?=
 =?us-ascii?Q?Y5Mgd1nPqdH0SYz1nIxRcW9lQybXMZ+hORqgXZk9eXN07ffbInrVtrwDGW6a?=
 =?us-ascii?Q?Qv1NR/dTNy8w0ThbnSQuMqOV9VHTsd67Io2Yd/LzV9H9Tuaayah67/1MwIWN?=
 =?us-ascii?Q?ufkN/Kw6RQsyHAnzJzeaFt+Kr8xPyt+/T0PGg0jdgsh+C2ptVup1l2pF5rXr?=
 =?us-ascii?Q?uDsA8haz5bjRM5ZrOQ5UE99muNnphWSYZLca91We71UrTgR7jhfjQXhq+4KK?=
 =?us-ascii?Q?QfRZVJvFBsjIU0lDdc4ktKSFT7r7LBBek/dH84n4ohmDeTwQoRUaQ14hiZEl?=
 =?us-ascii?Q?vP2GYbZ9nryCCFhUYlSHHJNfmINwo/CjhShiIk8Eo5ka85lJnWyTqwi1TUUz?=
 =?us-ascii?Q?MISTFz/9tLWE8nAU/AgJ3IRiruOev/ceC9Mi1VSLdObYdw8FfXyzO2FObkQM?=
 =?us-ascii?Q?g3rHP7ehHxmzpHD+UoNAAEBb4Q4NUV3sMwHZDLQmqrZaRR3M1pRqZ5yFT6OE?=
 =?us-ascii?Q?W7kUtpGMYoww3P21XOHLq+9XOFNI1lHR94e6ErPu7vpUCMsJAuLLYThshbb5?=
 =?us-ascii?Q?yTF7xuV9wI1Y1RqEqt0g7MvinnQoWBmoKre3sM3B7/56ebAgxlRF8tldOng5?=
 =?us-ascii?Q?1beNvZBSq2gRW1HmT1yBGFbCozWe80aEG1j5iyYMCagx+UiCQr3cgtfXKC5E?=
 =?us-ascii?Q?m/pW//c4LjYcEEWJ3y6pvGlte9Oec4/wlo7p0qhJw3gEjmbalovu92LigqfB?=
 =?us-ascii?Q?5vAnCnGpPDQURhp+E1EYJeDwPcazG4Gg2r6hwJwQU/z7PxjpFbAPFxe/IVz7?=
 =?us-ascii?Q?yhaBlYYV/aNcsmwYD1gnl1ovcG9W57LDUqQejdCa+Vbmm77u/x7GwLZcihVI?=
 =?us-ascii?Q?hSnO34KOQ5t3zZkeWqyjCVFurEJC9+hDi5JjTlLbPXG2B5YifTblEDCGZlHp?=
 =?us-ascii?Q?VNFt1S0jgRAdgVE4A7QjZhW3JhlUWBlpFKwk45pEXE4mnYrE1pVMcKLIJhbA?=
 =?us-ascii?Q?OTlBWEjZBnJgeOx2qkqIYuAfok5ph85AOfDkaF7STq9hsHSdq3g7gq79Yf/Q?=
 =?us-ascii?Q?YMRKOLuP+sxW7tmd/2e7VpQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?058QESIGDtcl497I1PVIMnB7lfosX4VhU2jeatKXobDpaa1iidXPsRCJUI1R?=
 =?us-ascii?Q?qo481xgT67wc3dJhNUwfpuwoXOYEFAjoaZhj/zC+9X1lENqTBVI98h0PEqgd?=
 =?us-ascii?Q?yRdrQ0thxAcUXU6R5TADGuNDR/oGok43RbKAa5gaWPa1RjxIA4i1MXXMvl86?=
 =?us-ascii?Q?I4/wH+al5Qu4lWIc/Lgr+UkNfIl7OIWJntnx1e9nxX/pKiyd0VbfL+YIf2uH?=
 =?us-ascii?Q?WSYQg6z61JdT1+hLjmTBi7qPLCCT0A8RbPjugf/PnSaHsfAwe5qD0nYwj8u2?=
 =?us-ascii?Q?MQASTh544yb41iTcT3MdWccCG71xtWU8NXKge3O86Bq9TmYPdyHckCaNsi09?=
 =?us-ascii?Q?J4twGzrX9S6vZG3+WqRWVlTkiqS0mSsg7N3JVsKInl2f3yK4Ft0q2OzHo+nt?=
 =?us-ascii?Q?06oDG5x6/TIM8+IyAETBa2ZLizqUYuoKdXmQzDD0p0DH1jqXxPUNjH1hePT7?=
 =?us-ascii?Q?tqlO6rg2iEQqNh8uUGfC6AtDizG4apvRYWB+9Z2alCphrMiTaye6w45Ait4w?=
 =?us-ascii?Q?y7I9IEsiqEEBox5+3GM5Tz5zYoEegIeDGdvVClBhrxZgTi6tUCGbvqJVc87O?=
 =?us-ascii?Q?3Ut8xC4VWPYgHjx0PEtEi+/XuTdpkMBk82y0xnr543vPXB4eV+F7NbgInVxI?=
 =?us-ascii?Q?p4sO8T3BpHyxRuENVcPQbS53YDf0jqaZxLEw79Yo74p4owvIcm+5iQRHQUKJ?=
 =?us-ascii?Q?PNfeL8z34c7kzAY40rlWpMl7OM9wN2wzkZhaFIcsTgwq8TagmKsrNjCye6/N?=
 =?us-ascii?Q?hUmow1uS+L4ty29wt+4jdR9ajJhybJs9agPnNB5gpILmm7zMjaqoIrUqyhYC?=
 =?us-ascii?Q?2exgr6hCRDfJkx9BX6brUPjsedKIfaj5BP5OEbmFpCJcBSzXl2PrDA/dMEfU?=
 =?us-ascii?Q?qP13iMno0VXD7XlLYp6THgFeU1QvgoQWj8KVUesNDct8clqZsNlcOafEzbxO?=
 =?us-ascii?Q?GYsKqw1FqDkKMDnHzqQwrHFE2b3mFOIrsssfY/f4RsPvgkkcJDd4/DOOiZ1B?=
 =?us-ascii?Q?gVMCobCIcCRiehnIxhT2Moe3lAxU3AdM93EKjUMXF1/pT4AeM464OeLKphLW?=
 =?us-ascii?Q?74kdOVvyk0Hq5e7ifpL/QUKIFlnIYmS0JPmtwr3T9iY9OqrfO3KfRRG/OrKN?=
 =?us-ascii?Q?3uRdvE4wZs6BPAW45OeFdyvHTEn9BRv6+n8ETQJ7NJBPt91FejuUBiKOo0VD?=
 =?us-ascii?Q?FM4gh3wW0r15uyn/mJlDmtMgZyqDr1RLZ7m40TG1louMt4ZVKewzsqHyD6Pv?=
 =?us-ascii?Q?DbvkmJt95KLdRlpD7UsSh+SPfGq750LG2iES2UTG+CjtvCkj0RtJdX8eU0MC?=
 =?us-ascii?Q?38YOWQIn6V06GaKvDC2TfqcL9Py3uM69at/LFlFOr3qagxmuVW8p/opBfyqw?=
 =?us-ascii?Q?VTY71623KmHG/uDBCSE6KwJMcy60FcdiUsFp3xdzPl4GA2uBanN5YC6V8U1o?=
 =?us-ascii?Q?Q9xQ5ime8FyInrjZElLJiEA6gl8HKyYA50XAonxBhy5MFd8s6/JRWPMIUNLS?=
 =?us-ascii?Q?wF2uVgYqany0DPQ580GcyysQBwnVWpf7mtU0pQH3QVmqSoBUyEW9/FPTfa9Z?=
 =?us-ascii?Q?rN5q7rGA2bZ499PPiZYcO2pwETDrphBXYlnIjwJaasiks1I0mK6Go+Nme+HB?=
 =?us-ascii?Q?xfGaqLxx74p1NxfFFz/xS/13c2Rx2cPH7KcjZlOTB+sp7mAp9/So5ZvT7CR1?=
 =?us-ascii?Q?XzxfCQ0517kcy54uGZ+n3DHT90HFFwEMuSpJ2GGlmoar9dd0SYEbb8MB/4A4?=
 =?us-ascii?Q?yS7QojUT9w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 878c64a7-7657-421f-d679-08de72ff5651
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2026 17:16:52.3318 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FD62zNc2kRum7gXcZb5iJcIIoo5Tf2XI5uFoCPTbv3NGSlubOjou74dBt5Onc1iZXjjrHoeQ0RVMSJsDsroCUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6688
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771867018; x=1803403018;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vSfpc6eWxpnC2Bn1qd0faFGsyMN39QAFhkiXZIzTsT8=;
 b=S24XokRKePceFqzSz5gpfAmx8HcpbEr9N3HTec2mEPMHgme1yLTlg9Bm
 i7wdtOYGB//PnPjG2jMibAy7ubRrjfJvCoJtHRNim8Cmyo/HuPpkNzRic
 Vg5KBEJD0zeDPIR2AhwEt9yqMtTFnJzwcQGBU8uNyuLmwXDIG+adfl5Pv
 hWUeZWBe59/QNYpjvIQoCfFE0IzYqv15inm3/zImbt/J8X1nYM3IEZSxT
 PYVTL5aG9VPjayzpA5UEFJP3L6p+Bf4WlUljNVBKPS5/yob5wV2vZXI2F
 uYB43kbLPyJpq2hqG7YUVYk8aROf3ZeaByefza4rLsiaqUFiMVOcKTX4L
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S24XokRK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 11/15] idpf: print a debug
 message and bail in case of non-event ctlq message
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
	RCPT_COUNT_TWELVE(0.00)[29];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:anjali.singhai@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:natalia.wochtman@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 6E9D517A8F5
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Larysa Zaremba
> Sent: Monday, November 17, 2025 5:49 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
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
> doc@vger.kernel.org; linux-kernel@vger.kernel.org; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 11/15] idpf: print a debug
> message and bail in case of non-event ctlq message
>=20
> Unlike previous internal idpf ctlq implementation, idpf calls the default
> message handler for all received messages that do not have a matching xn
> transaction, not only for VIRTCHNL2_OP_EVENT. This leads to many error
> messages printing garbage, because the parsing expected a valid event
> message, but got e.g. a delayed response for a timed-out transaction.
>=20
> The information about timed-out transactions and otherwise unhandleable
> messages can still be valuable for developers, so print the information w=
ith
> dynamic debug and exit the function, so the following functions can parse
> valid events in peace.
>=20
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
> 2.47.0

Tested-by: Samuel Salin <Samuel.salin@intel.com>
