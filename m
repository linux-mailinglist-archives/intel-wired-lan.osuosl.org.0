Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8LxEGB3rt2mzWwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 12:35:57 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D1C298C37
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 12:35:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7629782B3E;
	Mon, 16 Mar 2026 11:35:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kOpj6WHOpOX8; Mon, 16 Mar 2026 11:35:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DAB3382948
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773660954;
	bh=Iczvogv5lDfLgDLK1StwbRXBnKGRet1ZOBCmitbJato=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JPy9lTBmZ6HpVi65T0dOLFMQ+yQxJGODSIwqRum2omI8ndr+HNJcVlDZ12kumKUo8
	 OcTyJgJVVYvH/mOS4Y7OK1y7SzUSyAUDqXrhpbTYmqFETzgFCuHIuvT+mi6dksTvMH
	 DWuk3FAqQfm1hx5XM8H0lO3PQ/LP4TPXxHZMHVfVDeHS9HkV4+KQKwtt0m4GbcgrbS
	 lwo4jipjQL0BPPiNwuHPj7J8j2T3qVTwCAD+grQlmGwVVS/dU0kJmDAdW3Yez3FgXD
	 LYtHy0za36G7fA2LiDwnVHCK5Lb5+UOo6RYgsQ6DUQoIWDo94JNIANmZt/hlma4QZs
	 H3+7hpJ/8tfqw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DAB3382948;
	Mon, 16 Mar 2026 11:35:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D3F363BE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 11:35:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B95F940414
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 11:35:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N5o9u7EE0iGv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2026 11:35:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 75B6240366
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 75B6240366
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 75B6240366
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 11:35:51 +0000 (UTC)
X-CSE-ConnectionGUID: 1SklZaOEQmu5u+D3eI2b6g==
X-CSE-MsgGUID: yuQM3Ve9Qv+WyXpzu+4jxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="86026002"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="86026002"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 04:35:51 -0700
X-CSE-ConnectionGUID: J4sG7FiXQnOMGP57XbkF8A==
X-CSE-MsgGUID: g+YeG1LRRe+kNc5d5+ELfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="222091598"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 04:35:51 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 04:35:49 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 16 Mar 2026 04:35:49 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.38) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 04:35:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=brCmND7dTWqHy7NIquNuame/ClocvuRzKycpAcl/rZja+qM+vY73uvp+tvH/HwGJ0kqWJeajQr1Fn/jM+evyqxxWCOGSWeHHmD+M/nKk0On4HQ2h+9EggZ2H/8vhOhfWmKxswROtm8BmI4xAHjHed6qShK1cbF6+WXUbzlxVboRCoZ5EqVAp6V137Y2yj27Q3g+NRBV4w9k3+6/XeaIh57olPbah6NXdImKNpR0W9EUkm2kTTWejIw0JzBJUNjyPJrXgsojP9UHhxqdphrhiXktGoT30pXVPYzKlXamPiU966fZ/9QaUdU9MWLPDITlS2CvN26+zPeNI/IUiBBT9OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Iczvogv5lDfLgDLK1StwbRXBnKGRet1ZOBCmitbJato=;
 b=I+tjw3f+CxYBmQEPBDS5I7IDtuXgn21cePiNNdJg5Ly6O5tjV6iBAizLgVCS2r9cmsMvPDV+urbnc0k2n7WiHUciywrgRrZFGnDqxItwta0fI/ih0GEmgmFZmKY+0RaAM5TOzYzGGALBJpokvt2P+xScckXFKoKvud6aj3vDFdJbMbaPSOnDNwbVtgju4b3BriVfp0TbAjOGTPvKIfvGHinJEyixDvYnqvxu1ictmjT0zo9TpqfO1zhfmxAzK4tygmhyDClo8BYlQhsw24qLFhyehDpWnpJUZhEn75ub6yskEgHR/fUoKtPqVbXLb++GbL6m/ZQN8FO0vg9P13VtcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB9657.namprd11.prod.outlook.com (2603:10b6:806:4dd::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.18; Mon, 16 Mar
 2026 11:35:45 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Mon, 16 Mar 2026
 11:35:45 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Eric Dumazet
 <edumazet@google.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "Nguyen, 
 Anthony L" <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH RFC iwl-next 2/4] iavf: stop removing
 VLAN filters from PF on interface down
Thread-Index: AQHcqjl1XDBq4i4cMUWYQctPPRK4nrWxHYIw
Date: Mon, 16 Mar 2026 11:35:45 +0000
Message-ID: <IA3PR11MB89869578F3395CC857FFFCB6E540A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260302114025.1017985-1-poros@redhat.com>
 <20260302114025.1017985-3-poros@redhat.com>
In-Reply-To: <20260302114025.1017985-3-poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB9657:EE_
x-ms-office365-filtering-correlation-id: 98d98c94-6bf9-422c-ac9c-08de835029cf
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: sOlD/sSdVubl9j7R4Y6NRaus0PZH4mbyAPyWndGIGW+gEVJE8BeHKxa2KOxE+iaQZMrk0JUF9UCnUn1EY/76dfLLpkADhgspcGI7f6O89xz06obQDVF3SeulOZc9UZ0QqQNhbvfiT9xRjPrxBrYp5L2b6mXr7hgnPcZpG97Q39ELgDGBVPts1AkDO1kcoyVX1hg5fsE+yKaW0fw1fJHX5xRppzH9Qo7lxzel3YSs/l0gfeJ4ljx67KUKIRzvbXJ2hh+GdqK3xVv/CWXkyKcGCDlMQBFTtLg1UVh0mGYatTE4uRssYp1MjA22WF67525QKD1K/ozG2IlE5av4FniJl/44p3tksl7oNhYfUd30RoXmTXtG2311Wx+kAK37zOBVv7NhGf+1lArzNo2hVcabFpdpcwKYf53/2UExbi6IQoRRzte39UHjgPT9LwRL8SQM5DdIWx6mToxtKJn3Kb18p0HIMHSO9Q78WgLy1VNYatA1vOSTIFXkTMk82ihWCoKL856MOK+GB4eo1QnzkifddxhWElbXYCWx8YceXmCqqNwQTRNvqsppAeO+CCKqvmtogCRG7Rx39gBt7v2T0lb68yQg3DuQWxzqgAOYWY0VHQxp2UHoAVHVzZ0C0kseWIVksm6qs1TQaBc3qZpfqY4zwT4kQv55HZCYYn9vY6Q+MGuCumsIlNCYW9VsVm/dCcZWFMu7z9wi1yKqhX9j7guXRqcfKirvNOQLqKkn3cafTnKhuYpNp6au7KO9dsfZkwSuEZXziX3I8OZdUoa2TUSQaFgXfGH4yt4PXc1ReMSw9vc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SwZec9X8lURAD3IRcwIgwbpxoxNIHLpzLyxyVKovAP2n+pQ3R1CleYRrC+iJ?=
 =?us-ascii?Q?bSo6AFoAP16QiuP5M4MC3/XpobJ2iOIKd2rdTqUG5ZvgvA8p78M2nWtQyzZw?=
 =?us-ascii?Q?0k79ir7Zb9NKQl8BZJ/RgWLhb9z5Mz96iTQWFcOpyMnFXrgM62pGdv7lTL1l?=
 =?us-ascii?Q?D5+9dLYrzQvRkhQoZG5a/kNxOfv5cSHJWNv927ZGD4Tv0bdhsks3dP1OCzDO?=
 =?us-ascii?Q?XFwd76vz0YdIUTU/oE6fRcrgzu1oI2ufNImNkF5akGE+zJvlejmza28kFsdf?=
 =?us-ascii?Q?w7LeBQMEq/3znh0APGCLOI6jcWyQfA9rwW/RsKSFlYkaQkMlF8C6R1RgJZtk?=
 =?us-ascii?Q?KZJlCJPe0m1W5Wum+3ALOTYeg05RTBR5xXpARU/LAIswlpErqhpgW8sNi1I3?=
 =?us-ascii?Q?23/+yQxoLPDABOzqeFloTDisXSiLNpF/d7SSctCZgfRqwQBzJbxqL4rfnyAI?=
 =?us-ascii?Q?Df+WtLjnE+/Hecadj4pfp4zOvfvCAs8BVEdrWSlJzifFrkgSsQ1y5qAhnXav?=
 =?us-ascii?Q?Vdz64OvjFLKKvdYzPSJWR3EOM9E/SpeJAsMnbUaOff7ECnyZ1nqCYTMrc7+u?=
 =?us-ascii?Q?C8lrKrIXUyLtMi3BBAxULFq3PD0RQDjJLDcdXw6Thoe60dOsxR2Hd9Wes5Fz?=
 =?us-ascii?Q?Nss3d4K/xkbo3JSUoHJ4PHvJmJ3ZPAUkAtzONOMnTOFj79qu6UtTRMf6GlPb?=
 =?us-ascii?Q?RnKRuU/tGCFbSbFqN/xfqvY8Y0qrVojsBMHj+0sl2jDHYF6tgVgoh348S2Fo?=
 =?us-ascii?Q?4XOgqBMi2H0rJPxVg6f5jVcffhA04oNsIwhswQEoGqtURVQUDt8YwZaXT67o?=
 =?us-ascii?Q?CRSMacwGOTOBc9nfsC9qtSxI9ccac0BLyuwAYM67cmYKIAkz1B75eQMvBUc5?=
 =?us-ascii?Q?j/bMuKrlhh+Ugm+sG8GWw7dye4solhrGxi+DOUq1mIZtGRuvQ4Vggr41NPB4?=
 =?us-ascii?Q?lL0++L8VKB5LKhcdTIe8zsMp/0DqWHbECvUjP87B8P+hxoYR6wv2th3IbuLe?=
 =?us-ascii?Q?KtnTm9UjzzhPTKnnGVFqDKH3FAlDppcDYDHJINgXTF7vhYJGKDM3uDUewv3j?=
 =?us-ascii?Q?lFptKRu7Z3OJWixoI3wLeoyn60IqWPwPrYqKXdcc8m0tD0WXsGFsDpsgWBma?=
 =?us-ascii?Q?oweLh+bB5TDIz4Ib1WR+SJqKPGO0MH54+MB95saUkWZvj2RNpDQbl0GJGBY7?=
 =?us-ascii?Q?1AUtwAp2gFQZs6AY7eWHtLZkL6mfJKXng9NZMNuE6Sz1svYpCbyjruLF538n?=
 =?us-ascii?Q?qTbi16hYl7RvYrR4DRD2uT7pEwZLs0vMyiiJc5KW2bcTqxudQAYUVqUhhCqh?=
 =?us-ascii?Q?Ec7Q1/7HiBCXCqyOWXUoy/rQWba6Yrztk8Fcz1LtyFcSqvIlXF9PGziRoaxI?=
 =?us-ascii?Q?nkr9NQsd/kaM1vJLodWN9F0rxFmg3i7KeRhhhh3huh/IFCtwvmCAWs51xKVM?=
 =?us-ascii?Q?wLuXDieKNGkkTO8R4RVXDBQBDNkXfv4ZP5tpPP7LaT/c0bwGINPIIfzDO7ce?=
 =?us-ascii?Q?eS8OpZSodAK/PxrjN2ucMwGXPJyqWgN5BtllZDtFFMQF+9WtH9wX+gIp4ao4?=
 =?us-ascii?Q?qvLx6tLpMbJLRmvvWwBvb4H8dKG+VPEwZBGQqJGh4tXExYx0Tr9os9eugA2a?=
 =?us-ascii?Q?8QgUEhx5l3g2t0dufQGad/IVteWDBvd1uD6g8JJbOpn9um3ajkMQtJn/kXCS?=
 =?us-ascii?Q?Ogu1z2Z+N/P46d9DebsxhZN4Xj+l111BBLaE3vScHj9/3/FbYMouyipt8p02?=
 =?us-ascii?Q?jK1fTw3b7JQq1KuZUkWTK2Uhw0PvJoY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: dNsE+SCkpDKORUwDjh/bsOhBrFpmytKRE/vel5XY/TLRDMq0pjdUlnAJm5c6NXU7yqFy7s9l4fWjcI3S5PpYhU+8XkH2oczOvHoZjxhUWrWDnCZYO5+F9hkLe6Cv+AHAHw9wad3AhClIpoNWLZEMSgzqpHUoZmzxIkguuBFaGf0SFKv/jXuERJmU+e1P46ZNxDwgQk5R+widjk5BJynTb7Ir8gvm0lqUV7PG6/jAkUcjqlYEtTJdIIu1cAB7ZOplwJpduch008vsyKM/vA0nxNiZrgNaSo9/GCyCDZPSDVFZic2d43fc+qq60IVtnOlEmAwWz6zeqsVmNQyC/USFhg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98d98c94-6bf9-422c-ac9c-08de835029cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2026 11:35:45.4714 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iaYiRCptQqUKpRaay7hvjFXfEn33yoBMZcqrO66vWW04jcbwBifi0t3ZOh0IJ46HOJwHE4+7xN6b+coTmx915RiZeftRp+q1s+GaNK9GNDA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB9657
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773660952; x=1805196952;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=U2SpafVAbZsmdw8UhRvx7P7i+3MrtDcAjyGVS2Dq4fc=;
 b=Dii3Tromts3sCAcp8AtHPZgeUxqrXRmMIW1F9oO7wCtNx8emG7KRvWJC
 XF28M4+dGe411uRi74zY3FgeIBMD7+U8veiD97l2bTQKrD0LKYjFn6dqy
 zZ8Iezdfs0PUjwsG0+Z7BXuguz10pm4ioGtMZSYpOk5f5hwJdmT/r6lLs
 T5WcJ6DufiY/VAK1GFq3CssWw2LNWyvMhaCkvQQN06GOwAT2+YIxVWhZn
 do8HmdEp8480LkFqK0k0+VRIz0Ul+hP58y1HCyP5uUDbPX0BBB4F7PCni
 YTu+3oQsJuOMrrx73mfalQs9bAIhiUnAaKbeWFBcLsMPNRPAtzCGQcmo9
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Dii3Trom
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RFC iwl-next 2/4] iavf: stop removing
 VLAN filters from PF on interface down
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
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,davemloft.net:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,intel.com:email,lunn.ch:email]
X-Rspamd-Queue-Id: C2D1C298C37
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Petr Oros
> Sent: Monday, March 2, 2026 12:40 PM
> To: netdev@vger.kernel.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Eric Dumazet
> <edumazet@google.com>; linux-kernel@vger.kernel.org; Andrew Lunn
> <andrew+netdev@lunn.ch>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; intel-wired-lan@lists.osuosl.org;
> Keller, Jacob E <jacob.e.keller@intel.com>; Jakub Kicinski
> <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller
> <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH RFC iwl-next 2/4] iavf: stop
> removing VLAN filters from PF on interface down
>=20
> When a VF goes down, the driver currently sends DEL_VLAN to the PF for
> every VLAN filter (ACTIVE -> DISABLE -> send DEL -> INACTIVE), then
> re-adds them all on UP (INACTIVE -> ADD -> send ADD -> ADDING ->
> ACTIVE). This round-trip is unnecessary because:
>=20
>  1. The PF disables the VF's queues via VIRTCHNL_OP_DISABLE_QUEUES,
>     which already prevents all RX/TX traffic regardless of VLAN filter
>     state.
>=20
>  2. The VLAN filters remaining in PF HW while the VF is down is
>     harmless - packets matching those filters have nowhere to go with
>     queues disabled.
>=20
>  3. The DEL+ADD cycle during down/up creates race windows where the
>     VLAN filter list is incomplete. With spoofcheck enabled, the PF
>     enables TX VLAN filtering on the first non-zero VLAN add, blocking
>     traffic for any VLANs not yet re-added.
>=20
> Remove the entire DISABLE/INACTIVE state machinery:
>  - Remove IAVF_VLAN_DISABLE and IAVF_VLAN_INACTIVE enum values
>  - Remove iavf_restore_filters() and its call from iavf_open()
>  - Remove VLAN filter handling from iavf_clear_mac_vlan_filters(),
>    rename it to iavf_clear_mac_filters()
>  - Remove DEL_VLAN_FILTER scheduling from iavf_down()
>  - Remove all DISABLE/INACTIVE handling from iavf_del_vlans()
>=20
> VLAN filters now stay ACTIVE across down/up cycles. Only explicit user
> removal (ndo_vlan_rx_kill_vid) or PF/VF reset triggers VLAN filter
> deletion/re-addition.
>=20
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |  6 +--
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 39 ++----------------
> -
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 33 +++-------------
>  3 files changed, 12 insertions(+), 66 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 8e6db72828ae14..1ad00690622c8e 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -159,10 +159,8 @@ enum iavf_vlan_state_t {
>  	IAVF_VLAN_INVALID,
>  	IAVF_VLAN_ADD,		/* filter needs to be added */
>  	IAVF_VLAN_ADDING,	/* ADD sent to PF, waiting for response */

...

>  				if (i =3D=3D count)
>  					break;
> --
> 2.52.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
