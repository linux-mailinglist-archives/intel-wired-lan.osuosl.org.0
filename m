Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DB0AC7761
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 May 2025 07:02:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0FDDF80976;
	Thu, 29 May 2025 05:02:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iiH3v4aBJGTT; Thu, 29 May 2025 05:02:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 79BD6809B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748494954;
	bh=SLTxi7Z8x/QlCYeoa7+/SqJKd9AzpYziFdcO6/ORCm8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CqRdpPsR15XNfb7BqjOse1lmskvYxhCaCQvSXWP1UN1F0xHnFAxPQXtCH9jbuEzyH
	 202Mll2n2fpF8kjVEASNwrQq4yR511ekpDNRIatucnM2kRG6VSMKfm/LVCuDOYMPVT
	 eN5f0Of0pZeSpexz5m5Usb5Zo2N3pOFx8m1JPIeGChvhnbh//h69TNVp4kRlZiIMTE
	 t8scL7NyqkpV0JfOA42gcC+bv7IDPj3J+kUFKrExBD1DYsRNFhxNz9UbNxo9X5jPSF
	 2IwtUMM5oVj+TnljBllyWtdBYK8HE2tIuK/edAPPFVbH9IBLJuxwxhl7QbGg0Zo8x6
	 J6UrVfELC1btA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 79BD6809B9;
	Thu, 29 May 2025 05:02:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id BA63A443
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 05:02:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AB0DD6102A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 05:02:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 79D8JnEaMuSV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 May 2025 05:02:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0DE6C61027
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DE6C61027
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0DE6C61027
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 05:02:31 +0000 (UTC)
X-CSE-ConnectionGUID: Nt60i9z5RrGdsZKuVj4cOw==
X-CSE-MsgGUID: PqM7tCYFQGCbKIGt+679OQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11447"; a="49789437"
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="49789437"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2025 22:02:30 -0700
X-CSE-ConnectionGUID: 1uVMWGVKTHa9B0m7QfEYIA==
X-CSE-MsgGUID: 2p0u3wJdQsOP0SSqwHGRqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="144088715"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2025 22:02:31 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 28 May 2025 22:02:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 28 May 2025 22:02:30 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.51)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 28 May 2025 22:02:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s4XzHVK/xGf6hPsGjWXx0U6Z/Adp51YP/msHiVHMiHWEw4okCQME3tZs5RCQ+xu1TIXWduVvuF50gwx5xJnlyzdwgXMi5/0ebVBcvmUKYqBrVqSTM+AGwnr/TQ8NJNN/npcxeJ+XZx6ynFjC89r3Xz59clFtC5w0M7OTROHY+WAtfMnHX69h7n3zaF4DEm7ESfEFFd9qL4L8cva/COsBhbC1ftM+q5HPAlhn/PVZyd6PKTkxaE2o9+7avPnm+pPyZvWo7/khH+jlawwZsIyh0ZX3xUyUHtp5ZtXpk3SxQpFZgti11LqxyX9p+1ULbMy5dprVMJfEHb3KqSFVB8GFSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SLTxi7Z8x/QlCYeoa7+/SqJKd9AzpYziFdcO6/ORCm8=;
 b=O3vt+1R4v0vnZ843IUfVtaN0ddGSS4brYfh0CEuR9r6bsWyZ9zAiNf6hbDvcaW4PFdWEvVTKluqEqUNmimrXqSXNbEM5jUnAQr5HBpEt3A9e8mEVVgYYES2Yrh1DgefXmhX7p6wsJY/tB0ziygsafubOYYPzxndcE45TUxmaCcfiWv6l438iLUxFtUjyiTgsn6WLoK26dVp2fnCxFsjj58sYeTW8Qja+Zf/BHnQ+KcxIgsm27aBBj+E3N/XIyzhGtIX238iwCGCRPWGpJUIWVzAYwqGlXuGofr/UiM2dpIp5PaY0UYQe97MaFETFJMzSnrMaG1B8CdvtDrRau7CiWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5009.namprd11.prod.outlook.com (2603:10b6:303:9e::11)
 by SA2PR11MB5036.namprd11.prod.outlook.com (2603:10b6:806:114::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.31; Thu, 29 May
 2025 05:02:25 +0000
Received: from CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::b03a:b02:c24e:b976]) by CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::b03a:b02:c24e:b976%4]) with mapi id 15.20.8722.027; Thu, 29 May 2025
 05:02:24 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Pandey, Atul" <atul.pandey@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH linux-firmware 1/3] ice: update package
 to 1.3.43.0
Thread-Index: AQHbyzL4YAyWDUj67Eeg/BQbquYHn7PpFvXQ
Date: Thu, 29 May 2025 05:02:24 +0000
Message-ID: <CO1PR11MB5009B593F550AD7E4B4972239666A@CO1PR11MB5009.namprd11.prod.outlook.com>
References: <20250522160139.2662031-1-anthony.l.nguyen@intel.com>
 <20250522160139.2662031-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20250522160139.2662031-2-anthony.l.nguyen@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5009:EE_|SA2PR11MB5036:EE_
x-ms-office365-filtering-correlation-id: 5bf211c2-34eb-4f6f-009a-08dd9e6e0085
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?byhMBbt2dFm7mE6FWJejdKhwxnG1k131u8Rtd3F8IIW2DwAl+hBuA2spAR8G?=
 =?us-ascii?Q?BtA8lFVm0+K0QN07lkdRC8djwurMNDUj7SpziGZvfN4xIOEMQu74sKqTHA8N?=
 =?us-ascii?Q?v05U5lgWIQ+UP/DQgiOfbO+x+O8vc6RJVjNMAWMhZW+efNLh51PMxe99d4ll?=
 =?us-ascii?Q?iTsl+xG3puWywW3ia3WVy1yxrxtBGYKkU9ULv2OnH5QGZWhVY7qyw1Psb3bv?=
 =?us-ascii?Q?9v0zhhD3bhc2M6Kcff4oVWw1Rtl2tGhQdOQJKi0k5ZGlqGTt5htIeXc1dXxQ?=
 =?us-ascii?Q?Sg/LtN0DoY6e7hHpYf98O3D/TdaCDKDF0E48QdJR7kkxTilapTcGdvWzyIWs?=
 =?us-ascii?Q?SRgOApxktG2JUCRs7sXnd9jFcpIvGaukrSgOAhvPGEOknttyjLa0k7eRRdN8?=
 =?us-ascii?Q?z60fkpZ5d/nX+q5HFdbtQN5Fiv/pXm4vrEZoJjhKv1H4gtqnMF7HMZIz3ClC?=
 =?us-ascii?Q?TG5j0+sMWOrkTtMnwksc6Y6txNrKHSQ0LmjyQg+bUfCWwfhbLS3aHN4tz0/G?=
 =?us-ascii?Q?YqvicyNTEVRcYmVTZe1IHALazSKs7J8WS2cqJVeQiYPfQdPJju8u2R6B63HX?=
 =?us-ascii?Q?W25ywnMGxgUO7x+CNJ4m9kDK2Ja8XKX2XrCgIKr2+dYBeF1U2cSN5xbF4rLh?=
 =?us-ascii?Q?qBXswS2Tb0Yid+LIc91Lv+yNUlhAzQmbqfMeVst5EGGgVyf5bZZ5CjqCQk/l?=
 =?us-ascii?Q?ccN7a0KPW1Pl5WZCCYopbq2xqJn9LcdudjgBkWbFyxbvFMz5++jnyyF8XlP/?=
 =?us-ascii?Q?+pV+7KIdupOVAUI+gbwHoOKCOnCwul8bOdHAdsnKWUwOZuA8yNrjJbUxIWOS?=
 =?us-ascii?Q?lB8HWOLzJ9Xthdw6hZtgeTag8bG5ZlGzbpF4AJ8qRu6HEsS0VwgJyCuHFqZ4?=
 =?us-ascii?Q?cMH0/Q23+B5NbOJikKRw2WPyKql0KWdmdcOywXEmX1RQTuyGUVnSlROFNvaJ?=
 =?us-ascii?Q?xturTSmowIM7f0ETR+oTIxsZgGfrXysS5Vicr1qPZhNwAw4ho/MNRtaan8Qu?=
 =?us-ascii?Q?QYNUaQzcgswh3r9kS3yDIQoKIQQ7kzgzVcUcWMh/BfkKPdtPoeZBbexZmVNl?=
 =?us-ascii?Q?edQAQ0nhBXug56BMT4mTpRdfYmDz/6SSCpgqD4U8yx2qbpqeG3CRXI6FQCLa?=
 =?us-ascii?Q?++p8uOazOQToAG6fAT/Ln5l4Z24IqWc4g3/wJnq8Ol/IUyuMSk3uOljWm4ET?=
 =?us-ascii?Q?oJHU4YlophNiV+Xuy+RvLUrxixM+T8z27k2ccSphyuekIJ7F4v8V5WdkOMEK?=
 =?us-ascii?Q?liLpNqSD70qabExxMEHgh9vryQAoAoL/3+ZFU7v79o1M4JXw2mTBVJapKkID?=
 =?us-ascii?Q?yWTIsKy3eeKd+YZhwVKAL8vcUR0RvBie8ZLW5mVmRIwxXObIz1uoW2DlcsAj?=
 =?us-ascii?Q?PFmB1KWBWg3rRgusxnb9pqY9OZLQAk/omWLCsWEmIPKEd2m9y+zQFFN0rXq1?=
 =?us-ascii?Q?WBXLlR5gWfIqgqk9Lx5ztX4QZY84RWD14zpYPcRoui83Dr449S/wAjILNQNF?=
 =?us-ascii?Q?lexhPem7zg/xIhs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5009.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Y1gg4gQ/wUUAuSOCAvd3+jnEyPx06rAI6BVKBeDmh9v2ftShgC/4El7GebrK?=
 =?us-ascii?Q?HpFSjZwb9sq17ZUeL/8JFwDYmTltMyb8v0OtpHy4/CHQqEr4ttNfzpUv4heg?=
 =?us-ascii?Q?YTaHiyThqcDGAZLRbmNHr1iRnL6PKXuptQ1laMt1k12/HfHQwlyGvXsB8xzo?=
 =?us-ascii?Q?bRZJ9G4nwJex9g5Q9qlSmEv08LlejxveRrSaEGefGtvNGA1TcMSbRMmV+B/O?=
 =?us-ascii?Q?9zCENx+/qgfFWDKKZELCkRwLkGWSwldW19A8EoiqpLDvmGYYHTjL3GSXejAX?=
 =?us-ascii?Q?/fytluXBLCokoGEEhty5CXF8+0O3wyLyxdxgVBCLRQLzC1w0Sff2uNgMF/mz?=
 =?us-ascii?Q?b5Aq5YecMsVenyAIchN9cAg1gzil/tOJHULMhYaN31TkPSoS0zM/qhRdj+y4?=
 =?us-ascii?Q?SZe+IE0rZB0bRkhCP4CwrWlyitx/2hAT5iAbsheqqDzrowjpYPyjiRbm29+0?=
 =?us-ascii?Q?iU/UGh5UEi8TAj4MK17t3yCeuMkzLv76CLytpe8Sah/MXWiZNhQHkeyGsX3V?=
 =?us-ascii?Q?xZYFuMlS1WACkeWn+6D0y4kOsxf/sH9WYWtO2EYTejU07oEXbfkA+0gSqdBF?=
 =?us-ascii?Q?h/GWuzcsTtUjFkuqxvDumZtlJuPvdAfBAWtjL/jV2/mqLHaxyXuGixMpLkWj?=
 =?us-ascii?Q?7+69uAHBRpWwmWt587hBX4JB/dj5MP+oBLEbuO/nhVxx1uHP/pMnPxS0OZPw?=
 =?us-ascii?Q?x3UTdXq0kBNqH9HdOYP2taVCpOR7f+Yd2RtGQ1i1I/+aNJcXVEKQ2xA0pyAN?=
 =?us-ascii?Q?lk0eRPhQSuV0p6RMkb8bdC2MMQ25PZvIT2Vi3rSYTlesYra9j0QpgCbWOdVU?=
 =?us-ascii?Q?k8Jw3eZC+8JPeYrZtslZPAgP4bHQqVc58Q2+zQ3TnXbQOBRD9BXxNZmNs17E?=
 =?us-ascii?Q?qiybah24JbeASyKqxqe8dM4h/9Osy7oU3HH8qtp6ZWeQT1lB4hO14pG58uUw?=
 =?us-ascii?Q?JnR9x0Wt5CtpYzmagu1bnBG+YUuR+Oyf5BZaDSFRzs25InbkXwfZMx5qekV6?=
 =?us-ascii?Q?Y49tE7ip2WkgdlhRi0lgXnSpAuXlYzM8ru/ZvJSsz2/FWhbrT6fWCmRUmUy0?=
 =?us-ascii?Q?LchC8jelxCLK+QKN1BuF3f8YDfPQ3vUY2nlA2iI8vf8vJLr4K68ShNWWdl1e?=
 =?us-ascii?Q?LHkFDugUdfiYX7vyNJwqQF7Tbx1qz3lmx2glMcEGO2AmJAFIcOn6xaX4/EWL?=
 =?us-ascii?Q?0iZjyBz8OllFt7WmyEyGyL8mmPqedt6uRfiaj3Wkd/UFTF2PxeQeyWhPK+lT?=
 =?us-ascii?Q?UQ3mvLI6lqK40ICPhqJRwyfG5hcKiB6k9vvfXXVAY77nSxIWfgpYpdcudSOM?=
 =?us-ascii?Q?6ANyOGm0UVzYxxzjbpFcWOCupOcw8vkXwQ9fbzGaae9Q+S4ta3hXoSJrvlps?=
 =?us-ascii?Q?HgK1oAHoG9jCdpJTAcBdHLxOTz6UsEE3qHT17tvCCDIxdr8XJRtQ6ufrf9xB?=
 =?us-ascii?Q?3xr7Vvpyzk9pac0pKrzmMwGOJWemuMA29iN0zhBW8GqU0NzuMmtjqFGfR4hm?=
 =?us-ascii?Q?PujP6PfHz1jk7+KJxrysACNoDaRVfMvUs5wkrxaZGF3u7j3nqamrzr/yPPnU?=
 =?us-ascii?Q?EeBXpd5s661yYWDQIcuILpyclfZP8JxmCKswvLRTvA7uppbB0wKEyrtQHGzz?=
 =?us-ascii?Q?YA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5009.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bf211c2-34eb-4f6f-009a-08dd9e6e0085
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2025 05:02:24.7998 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7oSeQF14dlaUGXIT6mSv6hieZwB6Tmg1UaQDu++gNCMBtHKvnlzh+/b4QhN3R2lKE+b+pjHAo63jhcuqM07kaOhUR3mGOnTjbj0k+rreI3I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5036
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748494952; x=1780030952;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sBISIr9i+0BKlU63AwA4Oen6PWrNfEXSqQa5IeyAGXU=;
 b=IRbbyMqPOTpotSZN9HbZmYj/V+Hhwpw14+jqvmNuzA3Tk481BlenbKd7
 3zxL8T88NgJlsrMfdtdrLJCBxR4m08cmlwMSW8iZ8kplrEDFJfyYt2QhY
 ADGcNSLEUfOka9+5/9WqeImvIEwlfpdSjiso6XlYz8gwtLSxcM1W6qb48
 oj1n49Qnu1nj2UHzmFjHobNTyfNmjBgzRYX5YqiMXFrWNxT9z50I844E/
 f2Y6RyyW6I53KBXKxD1Z4y8H5lqIPP8f1FY1aEb/Un8MX2wDiTMWb/q3X
 nDMHy/Z9ADpDBnpUa/ceZyeuwYhE2YzRaYrfQjxnlkX12ryzMkJqS2wp3
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IRbbyMqP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH linux-firmware 1/3] ice: update
 package to 1.3.43.0
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
> Tony Nguyen
> Sent: Thursday, May 22, 2025 9:32 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>
> Subject: [Intel-wired-lan] [PATCH linux-firmware 1/3] ice: update package=
 to
> 1.3.43.0
>=20
> Update package file to 1.3.43.0 which adds support for E825-C devices.
>=20
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  WHENCE                                        |   4 ++--
>  .../{ice-1.3.41.0.pkg =3D> ice-1.3.43.0.pkg}    | Bin 1352580 -> 1352580=
 bytes
>  2 files changed, 2 insertions(+), 2 deletions(-)  rename intel/ice/ddp/{=
ice-

Tested-by: Atul Pandey <atul.pandey@intel.com>
