Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKpJIlFK3WmmbwkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 21:56:01 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E153F2F2B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 21:56:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A785A40F6F;
	Mon, 13 Apr 2026 19:55:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0MyTJyQJaTSf; Mon, 13 Apr 2026 19:55:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 294F440F6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776110158;
	bh=Fa41VzFLM5izpWd8cSLILcgpPimzXYbFLcxS3THdMwk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AJYdwRVMorTygkdkb+QZucR+DugZ6B/LGJokJEZiTB9XuJVAw/HkgDq98p4Mi9YCe
	 58zJcOn3GetFIR1il31aBtdKpTPnSbZqaZzmze1d4cUOjji7PWKNz58cH/PuRZgLS4
	 +ePg+U+I9+evaYDED1KcIo+vIZDu94F5iwwr+QEJh6swY4rTYCl9dENkShVmdXvDf5
	 YdPvsusJcWhoeYGKET0c3nE1pPz+YJ0SP12J09wO7Bp9L7vFP/3lL8Jfqg0PIPvG1i
	 9brRVutkeN9brKom3gb7Kre0FrNjKJZX/ohHxJ+Je2FJKhTjnoOdFW7MmMXQHVFknI
	 W0kIYr30wVrxA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 294F440F6B;
	Mon, 13 Apr 2026 19:55:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4C8A3283
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 19:55:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3E42F40F62
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 19:55:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tERWZHUj0JE7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2026 19:55:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=sunithax.d.mekala@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5F85E407E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F85E407E7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5F85E407E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 19:55:55 +0000 (UTC)
X-CSE-ConnectionGUID: 9NZUsEbmRtKPhqgMJMseRg==
X-CSE-MsgGUID: A0xpSv5kRBysMbWPCg+b4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="79640538"
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="79640538"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 12:55:54 -0700
X-CSE-ConnectionGUID: /KMGlabFSPGTQeW6AjcAtQ==
X-CSE-MsgGUID: YleZp+ICSWOdsrk8uVjqMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="229757027"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 12:55:54 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 12:55:54 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 12:55:54 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.16) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 12:55:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OYtbkPG5+GvmdMFF7Xmgd+7VEne2LyB96bLe4j509m2AED7JMs+U1R81QfFGfiaX6A3/jX/ezzfV73rXDIbJk0eVJYqXyCiYZDT9ECTEuwUk+XsMqqDzU0LEhnelXWNcDILNpjm+gTsh1vIBufg12KDnNB2dQS33aFIjEsslS2GoytOHEEFWtPa41V0klSX0udlBCbPNRaxcE4g31VTz13aGAhB4TbyKCAAgRlEMfvPHHFtna4XJVEbOcvFXsluxdnbuJ3fvfyMX6T8qM8S3RB/DOC2bxdEV6O3rZxqzw9LDUMD7fJsceuQ4eATU2L/kU6yVN3RxWHs+c2sxWrchhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fa41VzFLM5izpWd8cSLILcgpPimzXYbFLcxS3THdMwk=;
 b=Ger9T2PgGCQrmSY6xEvYToXJzAG3nP/spLe26i16iaBhEO3SY+/45seLLtvhE2fEHC1ditcSdrElU08eIPyrIyS4K57CxXy0c2Qa+n4deXkTGhg+cURF8Otjvqsr+8HElYOD1cTdraGJCjtS27XzKE61NeXCiYR0K7mveVPHMDJe+On5YiKPM0LlS3Nns4DJ2TVkAIUHB0//BvQ4bbCkVwb0xLsdh76IB20ql7vaMc68dFEE5CHc88Od6DN/3Mr4MJBVZQ5p8EA4fsMAZL4saysD60QDw5eRT59M9Emg5bNO3jNH40z8SuR77tHAWLmyky3r7Vqg+HLslOZaeEauCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7522.namprd11.prod.outlook.com (2603:10b6:510:289::8)
 by PH3PPFA061B3868.namprd11.prod.outlook.com (2603:10b6:518:1::d3d)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.17; Mon, 13 Apr
 2026 19:55:51 +0000
Received: from PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::ba5b:e8f1:5eb8:3ca3]) by PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::ba5b:e8f1:5eb8:3ca3%6]) with mapi id 15.20.9769.046; Mon, 13 Apr 2026
 19:55:51 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Greenwalt, Paul"
 <paul.greenwalt@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH] ice: fix ICE_AQ_LINK_SPEED_M for 200G
Thread-Index: AQHcuCc7cYkV6X3OF06HukOVvLm+TLXdjC6w
Date: Mon, 13 Apr 2026 19:55:51 +0000
Message-ID: <PH0PR11MB7522AA123E1A1D9CD62E024BA0242@PH0PR11MB7522.namprd11.prod.outlook.com>
References: <20260320050537.422528-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20260320050537.422528-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB7522:EE_|PH3PPFA061B3868:EE_
x-ms-office365-filtering-correlation-id: 0af2cafa-64c6-4812-4250-08de9996aa19
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: q53eOmcKFVe4AXHT19VBT8Li47N957XyXHO3Mubqfv6uPxdN161+L+6rjK1iJIlU9uXn7wDRMd/fBn409uoPe7IWlQ+RU9uupLwbcIvhaU6g1CaMRvAjiJVxZfpvgB4WcJkxvXhn8dN+3Y1NQOxn7RnKE6n2f2kwT3t7D7oo5EBvAbDsq41nHKjBlSoDC40rh7eJzjNqwJnydEQzXPVickifd2lxaE62ARgqcKV1A9XejP5UXH+pGgJBwH+/MUtgZGwsyxWNUxO23k9Mj7WUXTYmSGNsUBbwVe2dOTkprYez++m/btK9CgEWM6lGhVMdFpi2VJhu65oY0NoQ9tGL7abItLV0UzoTj1GCZJA8FfffDYQ8KtVqhKDXgo5TFa1jwDlkrHAYhotaJwghphp+N13rifIIhzwza4vQp+MBkOKuMOPZ9XITp5DWoAt7kF953V2zsqwkUe6EE05YAf/NIXXbNCAyJiMDVcxK5MshAVon8L4+jUFiyH+UO/fhSnHZLIJVa4LUPufB3xe3WKcWERgOIi1CjpZ9feHOto0DtYZBUX8FqOunsy7AWgRWf0zBmoVR0UBIHT4RVbjotuixJxx/9UFIGzHytVr2i1eSfv6286U4bg2kBTDkborU5L57l4zH378PzvYE1QC0lXLZbRolV+nKJGa14hMR50D/MjHJeNGF4U7s0qYNHR8UaA49q/lssn0h7MQPYTFEakBDRBg41x5bc7KF3hHcGPXVGZfU78dXWpAkcrhs82Depe0yIvYYWrmO/0y6zsTEywb9UmJv4DPg07aow/ffpYPoQh4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?w79xr7voUneXpfwpUTbIZRVTWWQdmiz74OOmzYcUF2f64ydO1OWZKv8ZydnH?=
 =?us-ascii?Q?X9nGUAlQFF7PCpiXpK4dqatMhFXQoA0qSBS2dMxP0NfiFdi16ZsnCZNfITMy?=
 =?us-ascii?Q?MTXZ5NQg4cahVJ+A6J/Pjykpaqw2pMAx6YxjEaBo5pQWcBVqQPO86BB3OBd6?=
 =?us-ascii?Q?cWQBv23WDyGcvZxIMfD9b1mZm4z5IxJNQWsRsM3RMBWgpv2hGPbwd7vr4fMH?=
 =?us-ascii?Q?0MNPkLaLLjp9dkPABiMUzHAorRPZDKiPZSVosZvvepVFsUjcRS5giyfjcsE3?=
 =?us-ascii?Q?N5ctMPY7Q0gAsBu8j5oS3CNfR2UQx7lkR4qeZvlKugosbkrlXUr3QqsLMD4A?=
 =?us-ascii?Q?QmX4x/s/4PfwhRytORFlF3hFaCenyK/vb8jDOjVS887eLPz/bq7bnKPq9PCd?=
 =?us-ascii?Q?VwDPBU9o3Wcx48+RcAn5lBaPjFZfE2a3lGxJzgwA7G2wCzcliV7mWV0dbl2r?=
 =?us-ascii?Q?GJAfSYK5k4+DwGFhJ1i9cUtNsLQu4X6COwxMtO9Khls/wPTAX1pMibpH87/Q?=
 =?us-ascii?Q?H0mZr3ge3X/eg2q/MYchInHhCbqPDUaUU2wOUI84O12iys6vqWJw0hBmW9Wn?=
 =?us-ascii?Q?puOX9dJJlP/e8alIdYP/SCMjo1wLrMT4AXdE21MrL5XpN303t6XkPjmjC9PX?=
 =?us-ascii?Q?nhb6YkhDAF1wYcJeuU0fWpkauHO5RloC4/KtxhBsfSZ4R0S0etlk4SvAlSlx?=
 =?us-ascii?Q?MSGunMPQKcfL1Zwro2jixSgdhKuSyOYOrzy1SjVEyRc3I1AKAAVcsEhTchoP?=
 =?us-ascii?Q?+MU4hZMcGjq9xK/hzo3SNooIp2DQQKJF0VlDJDe5tQ+jFcZ7d44ZU7oHYCL9?=
 =?us-ascii?Q?fZj5cSVJQvdz7/xVJMawsdXMfVj2G4gzZ0E6ZA85QOLsk+IBrXf62BJtoja0?=
 =?us-ascii?Q?SWm+0p5BobQ1TBuf+sX7YqZP4l346fo+U06m9IOUZdRpsUucORgioT2+3R2o?=
 =?us-ascii?Q?GHjpNvt65djtvjPTU+15kXS+LJ2u9UK3b2v/8oAH36c4wZpphEq25U05sJzo?=
 =?us-ascii?Q?Ntg0yZS9ysrXAgdGxe/uwvQuS3sgX7qB+3aj7p0ZAbm6cM/j7KBBBfZFgxL5?=
 =?us-ascii?Q?3B3cGOivQIRMOwvTiVwPBYv2jSX+6BoBgrwsZYnPlBMaARtfAjMsUBMurxp3?=
 =?us-ascii?Q?S22u4achJryXf0Agpo+C9oyxZ1aBCO9nnZyiF5qqZJ0aMFy3l4HcIpI4OcJc?=
 =?us-ascii?Q?6bRajdguBqFyH6fRiRHJ6w64g1X5ub3pjpsntDp02/3PprPRqdJk9aZSjuk/?=
 =?us-ascii?Q?LcY7wEgK6+Hg8igI960NWp0DmM+TPo2yjbVza3x1TIYNmJiQ7l08ORDCv2Zm?=
 =?us-ascii?Q?QE7LnhWOwQe2PyBkLt35y/4MeAuvuNjtvUNjtiPXqsDHLP941ZI4xoTWqFgA?=
 =?us-ascii?Q?e+hmcKlc+T4Fucnlsd27V52BtZ7UvjGRlI6iQrEWLLd4d1D4xgIinZvP5XZ1?=
 =?us-ascii?Q?QH3o51UEROUtnC/zhcaLKZdATbhP1eD21HptrHPgSoD1J+FmvyBxI0zsH3py?=
 =?us-ascii?Q?1H33K+Bs1lNrhSmFlA+oEvM5jgmUv6K1F86mJ9is++kWWFheuy/nX787lIXa?=
 =?us-ascii?Q?3WtUg/GbPs3DD2PFfqLpIuQn9ee4HAeeZpbboEa5tJfslH18G9p7ow938YAA?=
 =?us-ascii?Q?Q+MLdsMX9cFNim412tpOCtN+2cyjEFDbkjZJ1WG5XUZQT5GcTbmI4o681q2p?=
 =?us-ascii?Q?6BiAdsN91dQI4BYrQ1XtmsoX70eTPr50U6BxwluKdT8wG8kPB3yKu3WIbI6S?=
 =?us-ascii?Q?8EkpkrLXg5/6cLM4TfGSPN8ZrPxB44Y=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: lnuqzbjIg98ikHvZOYsLUlEGdCsDSnbBwP5Cii7z2V5MEtzGh9kcbKsr/odaA+3Eii9v5uEYYwROV8cHgC9pCUQdo6d/m5rnYsLWgATIwtAdZ9X/r6jB94kZWkYXR0jcbu6A5NqSTHbvXAp48CG843AddtqghIW/JA1msHXgTu148T5W4VADl76BE2S57Aqel3zKhm9YmjtuAOtLqfYEWD0/cM1NFJi11w+LC6MDaLmHztvcGvwhQV+WDH1ly5MG+8V/LZ6rZhQwG+yx2Bozoaq4pQTjm+YbGvxM4SphIfVTbvrLxt8j3xzag86VR8e3Vu14bYLydnBpRQ6EXTg/sg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0af2cafa-64c6-4812-4250-08de9996aa19
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2026 19:55:51.0960 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wf4xIPNQ+uMVGMB1d+/MOqHX5HrJkOnLfXGYPtnSa6OgnMKATR+IV8PWK5anJi8IoBFJ3erNBRCcNdE6y7WPTpPbplB94E0F6fBZGDq2B9Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFA061B3868
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776110155; x=1807646155;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rISUGriciG6SSmw7BICCRUZ9rVEmsuHL5tTVEFY3H9o=;
 b=DoabnLoS7MHO+X5IReS3z4EYhdXbvKMjdnPa1HxQa2e2MG3d34Tj6x56
 L46JeWQ8ydgYA+DFcU8oGaRNs6kGDoQQ35Wo7AtGqbHbmseNeJ62k/vsO
 BQ0WQZTMB49b2Gm6eA+vZ4EyvJ0oxWClyJ4E3r0dqJ+mnonTb62CeRtz0
 gTWz9fjvAONwzzWuMM75kJ2JkAJl+vxg9Aj6VDHQqIKQiBhAp6QT3j0Jo
 3gKoVdQx4MCNAiYlmOg4c5egtubZ/SCD2vkw0PZygmiC+h43zeFYA+HBl
 2lHPCQZhEP+H1VN9a9mb3sXag755F1seiXkmu6FdRpeKvadq9RPREVKrT
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DoabnLoS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: fix ICE_AQ_LINK_SPEED_M for 200G
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:paul.greenwalt@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,osuosl.org:email]
X-Rspamd-Queue-Id: C5E153F2F2B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: Thursday, March 19, 2026 10:06 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Greenwalt, Paul <paul.greenwalt@intel.com>
> Subject: [Intel-wired-lan] [PATCH] ice: fix ICE_AQ_LINK_SPEED_M for 200G
>
> From: Paul Greenwalt <paul.greenwalt@intel.com>
>
> When setting PHY configuration during driver initialization, 200G link
> speed is not being advertised even when the PHY is capable. This is
> because the get PHY capabilities link speed response is being masked by
> ICE_AQ_LINK_SPEED_M, which does not include the 200G link speed bit.
>
> ICE_AQ_LINK_SPEED_200GB is defined as BIT(11), but the mask 0x7FF only
> covers bits 0-10. Fix ICE_AQ_LINK_SPEED_M to use GENMASK(11, 0) so
> that it covers all defined link speed bits including 200G.
>
> Fixes: 24407a01e57c ("ice: Add 200G speed/phy type use")
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worke=
r at Intel)
