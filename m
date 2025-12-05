Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FAFBCA95B1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Dec 2025 22:09:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD4FE84C47;
	Fri,  5 Dec 2025 21:09:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eSzmqPzrTyPo; Fri,  5 Dec 2025 21:09:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1D35884C48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764968957;
	bh=YQdRoJBuoXaaecginQWpOlmyGCZSEnNOaAdRODgNcDY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XDrErrCp6G036unWOmFMNSxUE08MzFknS2HVzyf7CiYFrNrY012CTQQtDc1qnMW83
	 RnCxyXpw9M4MlZOSUR5W9vOXG6mgDXHuHSTo2GGcOc/Lp0WzgOi3jYY8AZ5K3UthWy
	 VqWIEILaOYh+Yl0slk2ipEFLmqMJdUVxkdwFQ/OVc/HJC8VaXPu2ElhjGdvnpmuWJA
	 jQwfG8Z6N8BMWWpipPYRhYK7FHrmxr2bunuLg1E9adewFDM1VCr21ifMRtbhc7nCdl
	 FtabbX4+BOPPDA9q+I90wMeBOlH2JIFYa1gp+GB7zPJ8oP1ITWdSOGLMxxf2uwjifS
	 ucpvcF/CDjgXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1D35884C48;
	Fri,  5 Dec 2025 21:09:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5066E1A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 21:09:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3F0B6607E5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 21:09:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rz5Fg9QGMp6R for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Dec 2025 21:09:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6302B606EF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6302B606EF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6302B606EF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 21:09:13 +0000 (UTC)
X-CSE-ConnectionGUID: ceFb2egpSeSBkGOWQIwOnA==
X-CSE-MsgGUID: PxTB/LnHQVO9gLsFG6v2GQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11633"; a="54552905"
X-IronPort-AV: E=Sophos;i="6.20,252,1758610800"; d="scan'208";a="54552905"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 13:09:13 -0800
X-CSE-ConnectionGUID: 0fix7HPzS0Otg/fGczX9iA==
X-CSE-MsgGUID: b8xHWUzBRViqCgMatwqEhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,252,1758610800"; d="scan'208";a="226396535"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 13:09:13 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 5 Dec 2025 13:09:12 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 5 Dec 2025 13:09:12 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.33) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 5 Dec 2025 13:09:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zE+dHoqJkAqOnvaFUGQLBzwwf+J66K7WOSS80aG9H9qkEM4/08V85N5s48LtRyUGmEsRxzqblu5uIrzC9yGKPwV/R1iaUXEVfMsIpIZ4XezB6Hvn41/Y+D9nObFu0Dz4wLIMHfWl5jcsfaH2WN1vcBBdmZXQTqYbUlWPerpNxq9ojJZkNnEEYAq1W0NfbNelP9/h0lc/dOziybUGirUH3xNks/Z6Zi8iDQHFc77/EnP8pzTBjaaIBnjEATbPx/9aMaZCY1IsBUDu4NuGF80A/GyQYkzu2aXrfzx67tpN/2yOj9KO9K4XluZdOeOP/pAZpglxVF6t/2KwLzz//zvcRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YQdRoJBuoXaaecginQWpOlmyGCZSEnNOaAdRODgNcDY=;
 b=yNvF9njmGYsC9hxSgynAydrYllVKzvx2LNZUHlbMH8QiqrXydzGrpXZEaA0tLslcGK0j0C5hLp4HyNFL5xRCoernVfJU/6KsEFXLU/9rJQd4H3AkLoHnj4lV79pQAgcxTdp9xnKorLMNgajUrfB1pXLazgwO/YW7klKndjALOkRsLjLVyPQezLMYLuUzPzMH+ONw+Kbbdg/LFkdo7nH4JoVnMmWnFimscApPgoyTZQX0CFh8aTPbCFS9mbxHcBN3BtSXIWO6hH5kauDdl9++zNmoeBLwgiaBPc5HND6afx4jqahe32BOcoO7dvLtKUbpvKUC4WYAYhd82nhLOpoVsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SN7PR11MB7668.namprd11.prod.outlook.com (2603:10b6:806:341::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.12; Fri, 5 Dec
 2025 21:09:09 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9388.011; Fri, 5 Dec 2025
 21:09:09 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Ding, Hui" <dinghui@sangfor.com.cn>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Ding, Hui"
 <dinghui@sangfor.com.cn>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Fix incorrect timeout in
 ice_release_res()
Thread-Index: AQHcZcBGQSqr2T6ag0m+UehD4sQQsrUTiu/A
Date: Fri, 5 Dec 2025 21:09:09 +0000
Message-ID: <IA3PR11MB898665810DD47854F80941A7E5A7A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251205081609.23091-1-dinghui@sangfor.com.cn>
In-Reply-To: <20251205081609.23091-1-dinghui@sangfor.com.cn>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SN7PR11MB7668:EE_
x-ms-office365-filtering-correlation-id: 6361bebc-ee0a-437b-4af9-08de34428862
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|921020|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ASJWC6EnylbBFu3lMqa5H7PwQ41vBfvVj0p1HyG4eViHA4knJqrOMbBzkIVW?=
 =?us-ascii?Q?LascyntU5bA14Rxd0RXP/aMI5d2Id17veE26zk6NXhex/ZN7mYjOWpcULQE9?=
 =?us-ascii?Q?eTlvQoX6+aO3l1SHg43Liv7eOnuC+P14myy1LgfE7AFVQIDh9Ybkctsbwc2g?=
 =?us-ascii?Q?V5w8BrdBMW4qVA6PJHwnhNY1HQQEBBeze7o7fuh2Df67GRIOAYII/AcUr3vf?=
 =?us-ascii?Q?0yBnMard04pJ7VKDLibDlIZ0xKYoqeblgOKqTYnV+4MKiCi76/ITMNAzrM+1?=
 =?us-ascii?Q?4rt7qgl8XvuCviDQf6nyR6JBPZoP04yRUJlGU55WSXItXuiKLtJOu3ydQ8+M?=
 =?us-ascii?Q?xGWapmMbFXVBDJu0xiLlOHVI85tynfRMwGayN7uC6pFdmAH0WTDtBLakvu71?=
 =?us-ascii?Q?HfmS+nihC1dP/tGB2jpBNQz7S2UPEwtRkaBUDIySiL7TuX0uoz8QEObV1FrX?=
 =?us-ascii?Q?v1FyUX585yTtxPUIyXDMBDpFtg60gKL6jciKRdldbHJvZOkJfHJlMtT1B2MY?=
 =?us-ascii?Q?nahMd2z+aYBL7rLpr4EiidEslcrFVgCJCsR3tnGVSEs9vPyzcDiGb1LiuRVd?=
 =?us-ascii?Q?EomoVveQbWYGGBXi/IZztO3tNxGHejpQ3BGMiSLfaHP4/RmKybdo+MGyGVtv?=
 =?us-ascii?Q?9yqi/BLyBLr4Tz/8GDuyud34OXlUyzPHDKPHANVbrGkkYJlr3OjT70KibNr5?=
 =?us-ascii?Q?ipSsXmn3CwjndYPgtDS8HVqcL8j7hnofijtst2cCeE3XybhHrDe02jvdUmmz?=
 =?us-ascii?Q?RNITdA0u1UZlJsb9KjYQtMWydzIm61gtV6DJtNRMgYmD+FDtZZqriIebp+MU?=
 =?us-ascii?Q?ElZjVMkLs4Wqu91wb4CErIkY0kxWKZ/46zWLL/jm8Ys6Bz6S9WF8PhkSHQ5h?=
 =?us-ascii?Q?hJtS5BgG51hAoV6Ek7jrP8LtfH07cBdfm99o1+KgezSZtqVovoRliy37WGa1?=
 =?us-ascii?Q?8pEtlhjfRYJAAeZYm29q8L7sghMoaUVhL1qKJOdDHsHB1m7AvmwBUFhQPWfq?=
 =?us-ascii?Q?wK1A6y0OTpJmeLbK46L87xONfxMT1LpLCRqc9LNV5NL4msFRme12VrFaj6eE?=
 =?us-ascii?Q?KarYya0G5KJLtKEUEqVUtrK6R+LRiWiZoMpeIWE7vWKQnOI2m1pRShwS0Cu3?=
 =?us-ascii?Q?/i0J4TFUe869uyPGY4FMhLi6E4Z2RHQpBLSAM40b57Ng6+Jf1iZw4sY3C36V?=
 =?us-ascii?Q?7vewZU0cHvz7UucdhnI6HCC/5/4nQSGVs3NDwfBuTc+p0ySZyr+oNoazSx8q?=
 =?us-ascii?Q?66Ts7GTLMY6EJiftoyNm1DBqrnTVzhq+f8KZj3DmWwVps4jOR3n5a2Ov2WY/?=
 =?us-ascii?Q?5sDFPJruNrXHjaxelv5rTN7conUKhxzyUkVKOD+xn3WSd21k/vTQdzJLsaHV?=
 =?us-ascii?Q?7snVXkopfF/NllAyyxPC/7Vhy/Ve/8jwsTlIN9uEVd+d3F4Oy0GNELP3ugyy?=
 =?us-ascii?Q?/dLnXMmqv5/TQGtV0Os6IadkY21h5SyYlEmw2gfXRRRhck4ZWcgiaCfKiUiS?=
 =?us-ascii?Q?WChVNwNtDbEu7w7b3c/qZXOTl1u8Rz13+34htMVGLos9mWVq5cnpn8CC8g?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(921020)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eNhJ/T/boPsDG0y3513BObRUL7BDay5j55raCrdq2eWZSJ/gQtuNm0ITO70d?=
 =?us-ascii?Q?4X822ps2sPBHJzdFqZ1mHwSxv80716EJjJ2qgjqswI2QFitGhBqpuCNyHGpa?=
 =?us-ascii?Q?7aavw/HmuUq1dYnCI4P+rghhqRlPh5WgNaO5WhQCSgRHco5pA4aJHz7FvD03?=
 =?us-ascii?Q?SBZRsymFujT3svu2bdkBlX51FTcgOCHHiDAYt5mfJHpE3rSUKXjpjFdzeq9i?=
 =?us-ascii?Q?L4oPTXhQciq2dxzfYDnRguVZZGq8O0xolg0KCT2ZE+CwBtlWQldFwf+JalVD?=
 =?us-ascii?Q?qbqsADOxN6M4IMBnGyfl0FKx5ll4iU7sW1gAwYzuQ0NST955mplFIx6baiLX?=
 =?us-ascii?Q?cI0SCFkTqbqP4Hy/U0hrlIfkdUL/Ps56kxji1SJ2jMTyxLlDAaq1vSBPtvkC?=
 =?us-ascii?Q?QlIZoWUE+iOC618tEYJiHKKWo8g89olDPquKskgZ8FmqvH77werzHispWJ4F?=
 =?us-ascii?Q?0Z14ZevN7QyzMB1+A19Ag9e5jiO3VS+CXDZ/bTqSHJiavv+HTkmVuAxV2DJz?=
 =?us-ascii?Q?dWVG1D2NGjaP+v7c3N53VlzZtzuMKu7hFrExrOyuR4kbWdBnv22Lwe3twfEn?=
 =?us-ascii?Q?sL2MvvR3hymmv6HW7Pp5RP7QnaOvIcWGhmMp4eX1+Lj7QdL4r/953o2Wzfhs?=
 =?us-ascii?Q?4bRRFEtN8BGPlUmnKvtuGCFZMmP6ZEviHY5otkssEof3IKqCB+SZRirRQTbX?=
 =?us-ascii?Q?kkuj+u1Zqt5QCyPEaF+Lu3hMp9Xpp4aasuZnGzD/L8KkdBCIrdhU2vGQy5EF?=
 =?us-ascii?Q?EeEoKTbzxHnmwd6+cTetzRhhrQ+M4y912VDRdlGkAbV9rhbcs/DBX6iN8xGd?=
 =?us-ascii?Q?Nw4fqsqr49GUc5l5VTHe62M0ZIqXSLuXm64qfKfn1yfS5M22zj8syQuywHLC?=
 =?us-ascii?Q?oLdygT86udT92khoq8G34wqdFVXAU76ZbZITfQcthJgSk98b+ToXl+9DP8Nc?=
 =?us-ascii?Q?YsLX7LdvxIUW92FMSKZN1ysFHt4olKJo9f2qwjjKhxNKao8oVsoTBjurdZG2?=
 =?us-ascii?Q?USQCe8YVxC/LOmDjezeOScwCDczK727Grdas4Ztl9294qciBMNkpSzMIjXtL?=
 =?us-ascii?Q?3rOsVfRoziJ8GneOGardtgCPPMGixXVVZB4swGo27uUPPnjsIfisjK5mc96V?=
 =?us-ascii?Q?bJObGUasXyyDywOYxwaGzTBSxNMS72cUQgbkpw0zqglqlut7EXmAib5vQw+7?=
 =?us-ascii?Q?PRnSgo28sy5eLnrM6ZB4b28OluVS4qJhaj7jwqEFEaaKL4diw63IDFriYnTm?=
 =?us-ascii?Q?oAk58es/X70t5PaDEymBr+bsPCuyrqahINJfLoQ6fAy+zpFpoE/WmCEG1eZ4?=
 =?us-ascii?Q?lgtuN/oT4IfAMiGP/Iyx9thYREzbFnkomm9znkmjwDYYAk1GMmTf/jjmHYVJ?=
 =?us-ascii?Q?m7jaiMWM5N3xm2U1AU/PgbYsuEDa/dndnP8/mSi03PgNPkyaXS+jlJc9F+k4?=
 =?us-ascii?Q?BgbhrWoJ9oOl1Irabb+b+//5wrZ/nd+6tGKDRw0N4d607Wt89CwsozJ86VwK?=
 =?us-ascii?Q?lGbCYjqSJlHZtTmHo2RZ3WD/KhaRwuklJ9SADQk97zjWMYrY5pPfgF0AcGLc?=
 =?us-ascii?Q?hNNizM2v592rLrpyXTqvmfE0Fp/89pAnH0fW4aOZQMJKHT9/b908MgVF/C0H?=
 =?us-ascii?Q?Fw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6361bebc-ee0a-437b-4af9-08de34428862
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2025 21:09:09.3758 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qAOzLUqrYe8GS2F8oIIw4ADR2iWKon9d1ETUo/0zpLbC7VRVdTQXDIFNYg0Uw03XI6VCZEjxcCfoqSydtMU2x/0K+oiK76I6hlTt76fhuKQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7668
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764968955; x=1796504955;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qhopTCDEyMvZb9Xifu0HJLxd+Hf2XAwM2KzPtUAW9fI=;
 b=gEyL5EToy5eikWNqibnf3vbwy9PPLAdwa77h8k+RbZtqTyTO4fd3WNrI
 2NqujT7zY+ZnO3DeeeQyuSQwqpylc7l4gU/o4j8z0b3Q8edI848cgyOHf
 /shh1kk57C4CwrxhPVB5XI8LZ1u43p80c/DTNx3cllRLLhNddb3Eio6rK
 pFHb4IJU5v+/UVNPIWhhtAZUfhknex75XPylp0F8FCNkr2x1d0Ud/A207
 qpsvzUdpO7WjG35h56lm2GrzQK6BhwIvvwIJM/bDO8+S8DVfmIS87ZDtb
 /TIb8AZ5TSZ4BqG3qKgGfBLjX0SzwaaUWLYrpwPscrK1QRUjtBKyKcr0h
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gEyL5ETo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix incorrect timeout
 in ice_release_res()
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
> Of Ding Hui
> Sent: Friday, December 5, 2025 9:16 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; Keller, Jacob E <jacob.e.keller@intel.com>; intel-
> wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Ding, Hui
> <dinghui@sangfor.com.cn>
> Subject: [Intel-wired-lan] [PATCH net-next] ice: Fix incorrect timeout
> in ice_release_res()
>=20
> The commit 5f6df173f92e ("ice: implement and use rd32_poll_timeout for
> ice_sq_done timeout") converted ICE_CTL_Q_SQ_CMD_TIMEOUT from jiffies
> to microseconds.
>=20
> But the ice_release_res() function was missed, and its logic still
> treats ICE_CTL_Q_SQ_CMD_TIMEOUT as a jiffies value.
>=20
> So correct the issue by usecs_to_jiffies().
>=20

Please add a brief "how verified" paragraph (platform + steps).
This is a unit-conversion fix in a timeout path; a short test description h=
elps reviewers and stable backports validate the change.

And you can add my:
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>


> Fixes: 5f6df173f92e ("ice: implement and use rd32_poll_timeout for
> ice_sq_done timeout")
> Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
> b/drivers/net/ethernet/intel/ice/ice_common.c
> index 6fb0c1e8ae7c..5005c299deb1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -1885,7 +1885,7 @@ void ice_release_res(struct ice_hw *hw, enum
> ice_aq_res_ids res)
>  	/* there are some rare cases when trying to release the
> resource
>  	 * results in an admin queue timeout, so handle them correctly
>  	 */
> -	timeout =3D jiffies + 10 * ICE_CTL_Q_SQ_CMD_TIMEOUT;
> +	timeout =3D jiffies + 10 *
> usecs_to_jiffies(ICE_CTL_Q_SQ_CMD_TIMEOUT);
>  	do {
>  		status =3D ice_aq_release_res(hw, res, 0, NULL);
>  		if (status !=3D -EIO)
> --
> 2.17.1

