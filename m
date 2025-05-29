Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C94AC776A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 May 2025 07:05:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 550C640E01;
	Thu, 29 May 2025 05:05:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6wTNXn6PTLMO; Thu, 29 May 2025 05:05:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7AC440E07
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748495156;
	bh=2LPchVghRegjlcyiTfcSduex73og7ouJldsTnfIG9oA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3T/NtmacElRm4AfqrvLjvOtXKbNgdlYD5o5XEoTmNsJySTzexndEW536yvj/UStK9
	 V0BrlJ5gfaIG9H6K5dRsJLPFNOyHWmHonxVUk0EyaOoQtCEOf1gB+yqsThNKCC58sG
	 MNagTq0Y0MqEL/mmZNEuPYD1P2pBu8qBIfgwvLraoswP71t66KRGXMH8HyTdf7ySrV
	 mDJfv8DhbfaeDk+mqFwv4G6eze/DRLF4Kyyag/JchflKImK9k4jaHedswuwBN3NKza
	 uiTUPuwkD+jlCtTKZDtFlgeDyu6gvu8mTm8/PdQ4JzHkllEwmYic/xMtehuiT/qkWa
	 YkwnkfsyEMp6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7AC440E07;
	Thu, 29 May 2025 05:05:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 154C7443
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 05:05:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 062E940DFD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 05:05:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xijBLtRzdFD7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 May 2025 05:05:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5DF1240D27
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5DF1240D27
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5DF1240D27
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 05:05:54 +0000 (UTC)
X-CSE-ConnectionGUID: Wkb9a7kqRSuhAPAUN/dx0g==
X-CSE-MsgGUID: xbav0QbiRj6Z0Q0NKKAgwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11447"; a="50541477"
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="50541477"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2025 22:05:54 -0700
X-CSE-ConnectionGUID: lqoNKQ+7SyC/zJBfK0aPxA==
X-CSE-MsgGUID: vrEEdkHjQ4SFOaXKOmhKJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="144089883"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2025 22:05:54 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 28 May 2025 22:05:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 28 May 2025 22:05:53 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.63) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 28 May 2025 22:05:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yXvcI6Z2If6B5BXJwWgY3vC5NkFgpC/V7xgKHrhgl3kmJUs9OO8B4Ql9jhbirmJA1nrxnDYyOPzmJR5mLFNwlI5GSu3YUPt7a5X53S8RU+ZdrhAP/AGrU/v6HTz0b8h+nnRCcypLrop5GgNhKLg+hH/kqr8w4Zzr+RXaEXB9BC0Xsq3Zrdokjbp0MA+UQNid0vU6qpEntiUTOiwzbUFiPvXj1Xi/KF5mjYnw7/Y7umwHd2UtpIn7JxrN30Vdpfy2V6k737rgppD1JxzqxlIZ+ffDBPCocjla0VN4ybhVtsTbPwt+vj/CmRESn5OTKlZzpdi0f3jGY8n44GpQ71pg1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2LPchVghRegjlcyiTfcSduex73og7ouJldsTnfIG9oA=;
 b=RMURGpS4Y0XA4BipiIANdBlBJmu5SAAAJm4c8/xNytWceJ0nxwkpmZRi/+J+CF2lJXEXykgJrU8Ri7KbU7/oAaB5dB69LZj/ldLJCP0i+zR/r0UFeBS/GusIELNMNuclm0vxUMci3SmnICn26YPGi0i1Pofsx8vkDBTUdny7OGswr3W8YekqMaismkNZJ87xe4ecUfUsEptfEBavrAX1u9lHNMqu1MQa9fOkUGzfArfPzzIEAw9E8MT1E9nCi5IR3pzpBveKKnMhocL1ej66GbSewdIN4uJQgKghE4Mhu/q/c7LD62qMNJe5tVDdpuf6uaaQ2vhpVAATMx5UajPBeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5009.namprd11.prod.outlook.com (2603:10b6:303:9e::11)
 by SA2PR11MB5036.namprd11.prod.outlook.com (2603:10b6:806:114::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.31; Thu, 29 May
 2025 05:05:34 +0000
Received: from CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::b03a:b02:c24e:b976]) by CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::b03a:b02:c24e:b976%4]) with mapi id 15.20.8722.027; Thu, 29 May 2025
 05:05:34 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH linux-firmware 3/3] ice: update
 wireless_edge package to 1.3.23.0
Thread-Index: AQHbyzURKXXEnzjz/UWXalCAVDsRkLPpGBPg
Date: Thu, 29 May 2025 05:05:34 +0000
Message-ID: <CO1PR11MB5009EAA49B1FE2240E4F8A299666A@CO1PR11MB5009.namprd11.prod.outlook.com>
References: <20250522160139.2662031-1-anthony.l.nguyen@intel.com>
 <20250522160139.2662031-4-anthony.l.nguyen@intel.com>
In-Reply-To: <20250522160139.2662031-4-anthony.l.nguyen@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5009:EE_|SA2PR11MB5036:EE_
x-ms-office365-filtering-correlation-id: 9a56a5e2-818e-4f79-37bc-08dd9e6e71b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?uOe+WU8mL+NrESslhQCHjkH9yz32n6tGY460SsfhR5XPc8QU+KsmB2FdCHci?=
 =?us-ascii?Q?uaxCa8VyfxJbArC/v5OmEHdP+7VIbZLzAYje9MKwT6oVho9oalPKNEKNKL22?=
 =?us-ascii?Q?VXMEO2tD7xi29NC0VJiKayu0ifSc4dxokKkbsyDjb0axPD9ncQoG5vz1M5hy?=
 =?us-ascii?Q?YeKKm6RFFHqR6j7Zc/JxiwfWG0vNesXwxxLvXrgezcNRIqGsavA813RIN4yk?=
 =?us-ascii?Q?GllvUNMEe87TY1P7KDlb2rEL0ZJyVqZoKL6citlcIuGd8iofzSGycpYZdB9e?=
 =?us-ascii?Q?GNDa6/0BSTIb0G7QiNUfWSUFOb8INAEvtKvOjf9J5nR4ieptcW+Kkx7/9TuN?=
 =?us-ascii?Q?C62C6L5pKsQ07ZGcfme9tPQwpd3UUzXp5ABDCmFEzkUKRWE2uGaZ8/IRQMy5?=
 =?us-ascii?Q?3v2TGNWajDCV7ZGbPQtksuijKfWWmTFfHZDZZLkpSe1VbQtP79W8yaV+ECeW?=
 =?us-ascii?Q?iyAF1kkMbMvT6xoDJhexkr3S9urYENCGdbCPUn/vDoZOD6/nnsKckzZePy36?=
 =?us-ascii?Q?WSI4pznLTgILo0/OK6woj5RT3d03rPx9PxWpmHlB+BNGWooiuARuiyePv7NZ?=
 =?us-ascii?Q?YyYLTOFseZrfdghOVm8/rcbDgjDk9sTYb54R9v7FZWkeLtXoHWUsruS4x5ZM?=
 =?us-ascii?Q?LNs0EdlggJ/20i2G1t5L52uaQ/aKiW5wxnSV/xq29CWx6p7I5VijyVyub4bW?=
 =?us-ascii?Q?U/xT2RJEgMAJTbGdA1cMCC6J/O3KTr5as9GQRhDQvFC03tw6eu/65fYafnRT?=
 =?us-ascii?Q?f8xlOf73g/NmaQV+Jhsw//a5yL0l+NuMl3ithGyilwyDGebc5yca1qy5tIGX?=
 =?us-ascii?Q?fEayCRXS8WY1FxZSDFCMybUOx4nbh+vv1ucfeFTU7QpeqJBnaepE08JfCsbA?=
 =?us-ascii?Q?0oqoupZIn/qe9gdRj2bF8eXMzPVY5f2iseZB8AThSsZWUD4HVmHf47caB9OI?=
 =?us-ascii?Q?vSYzkK/VaWFESpq6kVWlTiLmD9vGl1CYykLE8s/441leKdgFIKtrqcPLJaj0?=
 =?us-ascii?Q?XFpnfW/Db9izV9ziETqFn7L7nV/67ssyMTlBj4QQxEFqP0piYiJyJGUZB0nE?=
 =?us-ascii?Q?mN9G0tr3MeHpqZ/lzPcZjtwktKpszRNHW3sqtJs6bPaDjOR8O76thnZKDc4V?=
 =?us-ascii?Q?EAlpKyk/qss5g+J3F51AaRm0ZczeNw/Ghfe5V5d6+02Rw9L+XByblQp14orK?=
 =?us-ascii?Q?jJlBnq53nn8HfOHTDEfXZml2rFi/lFfJeUjb4bB+8aJspeSoHLdbThYzCJqH?=
 =?us-ascii?Q?7vSAvyg3cK6laP9oOgL50PlLNQKxSfI4HweGffaJdU1lY3v6yG/aaEGxY2tn?=
 =?us-ascii?Q?JDibdmcA+zxvHfph0wkYRAZROrk0rSRDxJGsa0xd5YUO5IzWrJ3iPdrDRzOE?=
 =?us-ascii?Q?t6Du+kYxpYV5YinLGMzgD/yHj77Q2OhQdt8zS/5tNbS6v/PBHlbRvITCTRHP?=
 =?us-ascii?Q?c/WXoHJVrjGg/XmpkOfClDnVTj3WdG3d368NGBD2AyXzYD9yH6rz67GhBHwA?=
 =?us-ascii?Q?+f4mpQQP+4sOJ20=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5009.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5nORufk9l3Gn+S8lNTyzPVoPymFTLZ9ObZqKIIXgxmKUqdPNJ9YOBf77W0UN?=
 =?us-ascii?Q?kTPYDmeclt7hD/3P8F9C4UUA0fjYV6HURautQSFwz039rpSGfefoxz0t49AJ?=
 =?us-ascii?Q?ZuaklQHYDcfIvPYE5pSqNcJTVqzvVBZ4qNJVCZEzfsdOT24S1of1UCMII9mf?=
 =?us-ascii?Q?Dp5DEMUh1MhFgXirF80uGH5GGurh0oqsTPwLkhRqSMq/gfTF8vhVBemqrUc/?=
 =?us-ascii?Q?UYo1xjtN4WxLZE6ihPAp9pkfZicNKFaN21Gsb7YUxmT8q/yFVoa6/0kgCJFr?=
 =?us-ascii?Q?OzwmD7d/3mv4Oqgk0BqYdbiF34TQi8GTg/9We+elVQLznkqLSJhMhXUSITgW?=
 =?us-ascii?Q?o6ENkMvxfQoN+bEHmh1XpWM1XIHineTtJ3KpsCnxTB20Ok4OtFO6NIvi4gdL?=
 =?us-ascii?Q?nLvZbNxgDBurwMbTzYprZ5FWO2SKciUNiBKYAtClyFNHyKwj1MzH6yiRchJU?=
 =?us-ascii?Q?T1C68GDI78vLAR39jVwOccBqhPKrmJOdtjkb/HNfKF/BCF5SYJA+29GHH23i?=
 =?us-ascii?Q?kC3FEyaMZcd29FfbTzDijriGLJkEfOCOjVPdCTHNkHlAeFDe3VTky/9I9G85?=
 =?us-ascii?Q?2bsiq5xlvz7dfZZhk6sBoLVEszCZGETM/+0q248HXskqgPcIc5/ZHYI4rskW?=
 =?us-ascii?Q?kg+H+wlPjyZZI8vJUthdjXd9NegA8HL0Ds5TvjbbW3/NzDu05FSHncsc84ZA?=
 =?us-ascii?Q?OxjG+YT19Lz6+WsjIlpXQ7Y91r3DR/Ny6De+4p0sEktNI3t2+26ut8xPNKQ6?=
 =?us-ascii?Q?R2GNml02baZShP0WQssi+GcbnBNviku6uCX3eewnBonJv3jLS5NRDTCBjyjo?=
 =?us-ascii?Q?ruCQb8Zwdm3mkj0Qb+kbzkRhntGCI4q70EArozDVdagcnxak8j3pAnDb+RWd?=
 =?us-ascii?Q?84dMVRhbZjacgLsgzRycN4B/84D5A0G5IoCUW+6JUdRKWPBlsTjH8IAjW5Q3?=
 =?us-ascii?Q?MiL4HBXv0+E1Yv93iJTGe/gfWmVB31qwQxZWDhH0OOQj0+7zZGNIoahhCZBu?=
 =?us-ascii?Q?Jl7AyIjaS0RVC/fJVQIctNhCeb5y0rESnfLi5Dg3rkWOu8PhzZNcJdWdwL78?=
 =?us-ascii?Q?D8iBythDOhTO2YkscbsXE7kZQ/llREKcw0RbAIbhqyvWr6+rtW01S8myHX34?=
 =?us-ascii?Q?Rz0J8lQeGVFKIyZlOIcexbeQGTZnTuSWFN7eKaHwlrD93leae8/sSYOeTsf3?=
 =?us-ascii?Q?r8irws8k0uQE43eJ+F1V9LS1RhJO8wiOfG8oH3fdMfitiT+asw7TqbkyjDBs?=
 =?us-ascii?Q?/Pm2EeByaNtlGtGqyOvGOFXxFNgV0HtPLReh+gM2Egbu7czRCWxGPdVD0oIZ?=
 =?us-ascii?Q?pF9QIfMfIvzk8RFxFYewl9Lp3gvHmW+VSlS6EaCZ7wBv0qg0NyjyQHD0GXrW?=
 =?us-ascii?Q?6eQshFYJ//eZcu4vZdoEoYt8ysvu/yD28UbD0rKdQnM/vnyEJazgwyyS9Xz+?=
 =?us-ascii?Q?SantEiFiT8J8G2IaeBHYJOPvNH7xvFXs+K7v63bXGK6XUxkyssd9mzJE37Js?=
 =?us-ascii?Q?6BZqazGYKql41ZFZxyG8GE2BX9UDZFed/3g4YMqdTQh+opkLw+DuoLn06IPC?=
 =?us-ascii?Q?saxvObEl+OQThlPOzrjmP49qfyvP885NUyEkL1yY65cX0f2dhJLJHRqFaVm1?=
 =?us-ascii?Q?Hw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5009.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a56a5e2-818e-4f79-37bc-08dd9e6e71b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2025 05:05:34.7297 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KAttPnuQg+HqnFuyKQrwleMjnslNpY4mrFLHjGFBaSFEb6nuoAS2rnIbtxzoTOpSV3UNDJw0IAaXxolnLF+Fv7rTxtASc5PHucTt+mdtTrI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5036
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748495154; x=1780031154;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aWpbTmhsS4A/7vTOrpPFf3A+WnXdDdmXrs+aYBv6ZTk=;
 b=Hvj98VcqdoQX1w29mkxv0vI9P5LwxzlOddRwOX5sCjl2YmVejEbyOG+O
 FdR04TJLOpRNG+EBBZDLH/KniPdU+S8ZM/6spDuwfPleOWLKTg/0eZCdx
 c7KW294PgMFWKbjojx8E4hhNAs6au+1+j8zwFehpCvqVt50hMUv96+I9G
 CrIWK6DBF04RwrXAqaXIvrzV+dHXVt03FFgIP05VMoDFONbXbzN4drpvk
 EdWb46nwkLYBsbr8NQpQm+tgNDZPaFMH5KNPzEO19Q6eoJI1vomcLtX8A
 lHsm2fGxw6l/dnu6hpODy8/wMH5oEsi2WpgWFOL3RN1E7B8YNArW0Jigw
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Hvj98Vcq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH linux-firmware 3/3] ice: update
 wireless_edge package to 1.3.23.0
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
> Subject: [Intel-wired-lan] [PATCH linux-firmware 3/3] ice: update
> wireless_edge package to 1.3.23.0
>=20
> Update wireless_edge package to 1.3.23.0 which adds support for E825-C
> devices.
>=20
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  WHENCE                                        |   2 +-
>  ...0.0.pkg =3D> ice_wireless_edge-1.3.23.0.pkg} | Bin 1442692 -> 1442692=
 bytes
>  2 files changed, 1 insertion(+), 1 deletion(-)  rename intel/ice/ddp-

Tested-by: Atul Pandey <atul.pandey@intel.com>
