Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 59DADABBBF4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 May 2025 13:07:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C7F156FCD2;
	Mon, 19 May 2025 11:07:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hAInzfNZz67j; Mon, 19 May 2025 11:07:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8045B71317
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747652828;
	bh=2MYR7szBLFmVOW5eBPkf+DB6TlfonBNVd8hiM4mAnz8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tnOTuPwnhrjmsUOFeX21/3J1IQeX72+wZtQfWPcHwGTX62B9RiGO+6oczOXWxGSuv
	 fEcGEaK51nSaLuZc65sggAFjrM31yA9mc+3l0AJsgJlL5GWbYTEYdUdOmwV2XmlCtM
	 JMeSbEka/cbLTG86NE7hndrql4INM4RqICRLWC+FR+tL7dzvOszhS2jEX2/g96vX7a
	 BH+iATxBBEv6ku0TrAzyFk/ooNBSFDv6oeamOrgzcx0Y8eoBm//L4Fh722Gis6VS28
	 4hvxL5E8ZgWD2e0l/Gm11QyA+ifXbjJd7VwvNbHx/iQSnMUtQbKCYIGQZuw7I1IIB2
	 RO8qf1fDNqNag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8045B71317;
	Mon, 19 May 2025 11:07:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 30651E4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 11:05:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 211B64058C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 11:05:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hcH8oni4Az-g for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 May 2025 11:05:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=sarithax.sanigani@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7DC5C404E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7DC5C404E7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7DC5C404E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 11:05:25 +0000 (UTC)
X-CSE-ConnectionGUID: wKi805tfSmCLSYQPMoOvxQ==
X-CSE-MsgGUID: 5pp9a/3SSLS93mtdUBuxSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11437"; a="37165244"
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="37165244"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 04:05:25 -0700
X-CSE-ConnectionGUID: wFfjqjLHQS+M8yZqSxjMmg==
X-CSE-MsgGUID: oGoB8EMIT+iYItcCUDsytg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="170372406"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 04:05:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 19 May 2025 04:05:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 19 May 2025 04:05:24 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 19 May 2025 04:05:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sGMTggrbc508MP6mIQJQH/e8AHQsCSaNkT2mAEGVdLn8L8QTi/3JFeDznCXUQFRr6zZ/AMq9hE26L4tj3/ycBKjVe3izndig6B6vYA573BE3fWiM7hDY/dGHnMaiiLB651s7f7ymn1WdmNpXACDO+kPpueXH4r7lT3hhGaK4Zhyorn0kqvrF3ppFj+S+48Rxl1eHA1Xig+OA9y4eMN7D+ZGvQUxQ/xe0lmMPalGsCGC56Co1Pgx8SjBq16kXgdYtK7gmU1vJJpciAZuWr0d2jQkm3AlqS8dpk8VtTGKXG5bRAixCZKDeV6cl0wptpmiKAI7PhAyxLGRJfD0VIitFSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2MYR7szBLFmVOW5eBPkf+DB6TlfonBNVd8hiM4mAnz8=;
 b=afjSsV8afQA1aFjTzI8Q4UX7P4AZQhQ+bIWxEiwWSbXry2DRSiFpr0qp8n8aGUHBTTr/zREeweDmCmZSe6zTQCWv2SiQpC4TbySiopDHaVjAklmMICp5qWKfPRdHzFmwThO6f2dkCXwElmdzrHt4+vBdrwRHUbmoZ/DBvGCYH3xhvjqtpSqdc+K8RE4A1EwY0OoitjZ9fNIaQI4zYDg85D2/oVaxzLzV4V7KKFjxaTaGwyXT4JCwjdqsuDazCg1VPL/Cs5ceAKV4ACogdpeAP67jnclpa6HmSMtpTdMVhNvVZLqT7GNFVAKqRfynWJ7vTMhSZNpK+OPk2RoatkMlDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3542.namprd11.prod.outlook.com (2603:10b6:a03:b2::15)
 by PH7PR11MB8551.namprd11.prod.outlook.com (2603:10b6:510:30d::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Mon, 19 May
 2025 11:04:32 +0000
Received: from BYAPR11MB3542.namprd11.prod.outlook.com
 ([fe80::ac87:1b07:7cfd:dee4]) by BYAPR11MB3542.namprd11.prod.outlook.com
 ([fe80::ac87:1b07:7cfd:dee4%2]) with mapi id 15.20.8722.031; Mon, 19 May 2025
 11:04:32 +0000
From: "Sanigani, SarithaX" <sarithax.sanigani@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>, 
 "Kubiak, Michal" <michal.kubiak@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3 2/3] ice: create new Tx
 scheduler nodes for new queues only
Thread-Index: AQHbw/WyOJGrSUzzOUy3gNzz3BAm9rPZumfggAALuPA=
Date: Mon, 19 May 2025 11:04:32 +0000
Message-ID: <BYAPR11MB354217E7BCD145FEB4A66F4EF99CA@BYAPR11MB3542.namprd11.prod.outlook.com>
References: <20250513105529.241745-1-michal.kubiak@intel.com>
 <20250513105529.241745-3-michal.kubiak@intel.com>
 <PH0PR11MB501368762FA1E6CF8CF6646A969CA@PH0PR11MB5013.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB501368762FA1E6CF8CF6646A969CA@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3542:EE_|PH7PR11MB8551:EE_
x-ms-office365-filtering-correlation-id: 7a901ee6-3ce1-4907-4367-08dd96c4eee7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|10070799003|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?lQ7ZnxkBStFuQKeO+BhXJcX2ucdiUS+l7psDn+LYh4T/lV4bCTVFV7ERrzeT?=
 =?us-ascii?Q?Jihd8q/B+41PZm8IxHetZ8pi0HhjQBRjX4ZLCf3mgffVXjOG7Qcnv5DzyCTe?=
 =?us-ascii?Q?GzKfAbCz2rkvV1KKDWlpGVT/K9HPcC7Yqda8WqZuHROSuMcs3/WrRprZwuDB?=
 =?us-ascii?Q?ascRICZo+Uc7Md7iUlla84WrtDK1aJ5WuA8H6OEeaTwcGL9QVu2HO0mXGfdz?=
 =?us-ascii?Q?5khztJJccVC8MpMa18/MlfuRqKAKwL5D4SGQ1Jg+Yto6lXw9x2QF63E6rK/n?=
 =?us-ascii?Q?0jYcolxcYvJykTsHoy7NCPY9uN9JMfuGbVgJs/LTlyz9zapi1fN8TRZ9BxvC?=
 =?us-ascii?Q?ypq+fdZtjtaIeLlwjFSPWE9/6UlkAZQ1IqW75RSiGEAJeC9GzN5mV5BEPQ08?=
 =?us-ascii?Q?4hqYHMRZX4fjVQW/p6A5thgjbS16zHgSNu8t/ZvMx/nyytO9n/VcB7KDBhuc?=
 =?us-ascii?Q?SlVJ+nlsnNyle1fdROG6Ut1auK6tUjqAlMlxsd0t+zSBK5b8C033MA9DEcG1?=
 =?us-ascii?Q?A9AFQvAwrgbpyc3Wfg3z2XNu59tvJwPZuT0tPSLd9p7sHpjONnEBQWVxEwu7?=
 =?us-ascii?Q?Wd62P/NnjRX5MGjkBr6vA75jemwia+uc607JZHv6yPnT85OdpORrrpUNzEyy?=
 =?us-ascii?Q?RMX8mIXW0DsNliNzIRcO6COyWNMw2xeja8z0NezVzMFmNFxTqLLxO0GOaDCd?=
 =?us-ascii?Q?GqSvaY2WjrGe47GI6N2cpO/T6yTgoJnWFrbQa7QfCTcDxNgVgK8uVVjs6D8m?=
 =?us-ascii?Q?v2IbcyGJ1iKbJ9Z9uhIE6jMIjRW0DK4VQPhxnEPWSRYTApXEejV3cZYq6Ujw?=
 =?us-ascii?Q?s7gwe7cy444R7YChj6L1IpMNKHvHT8gX+IAb0FSzyXPWsKFKSMf6y5Y2TDZs?=
 =?us-ascii?Q?DdcVhHZDeQ8v5Xi0jr1Mu4Ogv1zQLi/60YlFTtV9tTGpsuTFW2AnMjbQi6ab?=
 =?us-ascii?Q?IUVCojnTaZf8CODXsjoMB4nt93ZChqXE5Lfn1zKVod+O1UNunjLD6M6qRLJF?=
 =?us-ascii?Q?6fNIgjSqqu5HTuA+9H0XGfGr6OGwUo0T+UWfJx1CYbmnvlMz9Y89IiU6Iim/?=
 =?us-ascii?Q?Ats/WBW9Jo/0LMgS7FfeDbCIQ8mDlSULsXi2WWuEAcyA2skLd2MNqsj+jyAm?=
 =?us-ascii?Q?z3gkdcCAK7vpQotPKpa0JS5+G4zFBvMVB1ZRON5nroigl5M480MmvySiU+jf?=
 =?us-ascii?Q?izIqkBg1kJD9N9ZVPIFKqPCKv/+saaRORePLZo2uInqdo6MUUp8dGMe2GlfB?=
 =?us-ascii?Q?wYvbWZsRx/tWHPCaEp6nLR+FVmvzesb2Zf+KvOSh3dLyqoFx92/5I7fA5WRy?=
 =?us-ascii?Q?U7LamSFd3OXrIMgCOrge77YhN3I227qHcccHensb0J1zHYeVCrLYP1ZNbrrW?=
 =?us-ascii?Q?IBJNdrKAGCZ5YMXaDY8YqzaH5zBsBbVQgA/3fUZS1iw2Ti8e4UMb5OigEPT/?=
 =?us-ascii?Q?cTERXpCtghP5eDuQF776YCraLTLQ8wZtTmvDZM9jnTz3F06aj5JH3Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3542.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DPv5RHciuwHcc4drR6UjKwf5ZvX5YJwo+9mgdLCng2m/gDKvELbWnmfsnUFN?=
 =?us-ascii?Q?ZBDm6PqF1q0L+syjkXaHPkWTjHQS/rfvd8JXDm1HcoRB9d0j2kG+Pj+JJmxA?=
 =?us-ascii?Q?k9zHkp+t2bCOWSCF1BTP6SxqD44N+asEq9AiYPS0PIs6wX/K65MuXOXtApXz?=
 =?us-ascii?Q?1h4jm/5tJlcMz5kn20wKWvslTl7ImlpTdQhKMhyY2M8SpJ/DmZKqyCJWQTzf?=
 =?us-ascii?Q?qwpK94v4UN7+Kxzav+nXIcjTn/zbQLnAuX+h7dSbPk87kVNE048RVT2OYcpN?=
 =?us-ascii?Q?2cLgjrmDODOBVkbi6f4gPVynz/tXXU9YWcL3BGrknsOIQtnP1bOv9+ctVfZx?=
 =?us-ascii?Q?BzEqjyCrx4u0vCJyIlgbeP0V7PVRNvhiWzt2JPCBVWvRmP9mskrdg0rGx4qO?=
 =?us-ascii?Q?C5uk+DAOgSese9OL8IDFP4JEy9jV7E1LoCu5A6AvllHqhDl0zPSOTQdzJhml?=
 =?us-ascii?Q?BIVKdo35lOzVuCLpR6NncRCAaGJUWWI4AOl2+7MyJUxb7ASHDwpabweuHb+/?=
 =?us-ascii?Q?R8dRNHdK4A6GRBpz8bVnOs1oLsrW6M5fZF/a6cLjBd4RMuodogJfwMcsxtCT?=
 =?us-ascii?Q?KCXzLHCcdVE7pIFGKfPcIegni+27HP8nII4Hacvo+kp3mSQDZIKpphqk0Two?=
 =?us-ascii?Q?objBiBkdb40/dk5AxNmmLymArww+0b3UNOyxFXoYdtKZzLhxmWCLqNv91meN?=
 =?us-ascii?Q?61C65cteoup8V43ySkVa2FoLzJVHLOH/Fy8UPjEio2TJuBFvtMhfAe2py+Ix?=
 =?us-ascii?Q?GIvwH9pS4j16rnWpaamSVVCyEx+JOqwK38/rEPeIlCYgA3iZlUm7gDTBJqQD?=
 =?us-ascii?Q?ZxF/G7EKVYn2GpRMfhOt3pnfnywPoplL19ofiH84/IXTSOC8DHizxRWTyx6e?=
 =?us-ascii?Q?2J2mRfwCpmMIxlEM2YTYPSEuM94Z5O+ziuHCeSz9l8yuipbX5TXClW5YRe23?=
 =?us-ascii?Q?iemK5DEVfNleoDRyK2A5cPpb38MeE3qTOYE3YMEPrQBhxmyjliDKHRo6Dm43?=
 =?us-ascii?Q?PWBaqmJBPcWVDObxVXzMz7/vn9ncJK3BTKGnBSkntko/DNgov8aEqGYXaJYO?=
 =?us-ascii?Q?pg8jB2uYM3G+xe5J2lv+o394+x5Qm4iY6ZjJ96c7NqAKHAnE5FzdzPbFsTDz?=
 =?us-ascii?Q?Q0fYUDLJGVcCQM4Q+phAHSYlsL/ItKdF+x09AdZT3XVi4wR6HnPL+2FR7C03?=
 =?us-ascii?Q?PhSfZFnPqPWxYpG6gAGvuAYqIuFpJ7SfPb6v9RQmBxtR1mUz97J5gEBVdEo0?=
 =?us-ascii?Q?j2O8003H+aYCcTEx+9W27v4z8GKi0SzOou011zshO8xNofXxlPMy0l5THv7k?=
 =?us-ascii?Q?szMPzRjtoAZ+9iABzR0kJrNvjShwQ1YfyepRkD3uq0dT/NJgmD8ZQcQZL/uh?=
 =?us-ascii?Q?dv3X4iCRflQkK8rW4nCdilxvHy485U0YMYE7JposQ/5PRudlOui/Tp3Vmc6B?=
 =?us-ascii?Q?UAvmM4EoU/vNhI0po/e2BpfcZ+t5tdZNg4Rq2Q6ze7TwhXg9H+AIsWsYA5mX?=
 =?us-ascii?Q?rKXPomuJLcj59PnURFrAYN0ENjzG1SgbEDIvU7BQ6HeTMNZPqPaaXsfGZebf?=
 =?us-ascii?Q?rK31sMW5uzma2vw4HY1T7VowIZbB9Eu28XpAb1aWZIe8qBge/UenxD+3RUKS?=
 =?us-ascii?Q?fKjzoG0WlOcz4E6aucp4ENsL4/mT8ciTbV3LvyjSWkQhd9CczTSiLuhbe2FZ?=
 =?us-ascii?Q?j/MRyA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3542.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a901ee6-3ce1-4907-4367-08dd96c4eee7
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2025 11:04:32.2094 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ettS5UFnFYjOAqYhbUMO2wtYTdzzam6ko+AiRIV+r/liHnVyUxK4Yy+PQTb28EPdVZMKjy62+R3HeItS/pPByseDER4IJfuvgPjWoZoGjHs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8551
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747652726; x=1779188726;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Sf3aolTLjVR9/aGduyrz+1WGj6DvYtoirL3d/cdlXx0=;
 b=UFW6REFmQpQEvNiJz6e1lshhijzAB0e9YEln79OqMEktYn2dCz7sEsxB
 IE7yY9ygob0tuYyOUyJlsFMay4jwksh7fezE+FCNV1OY3iR3zN/dxJWw8
 TKRJUgeT1glydgrGcbuLwqqFyQ4wxVZFqNOdQHvUq9kj9V9cFcPWIV05s
 mdKBIO13O2KgFGJ9Miyoiskx4pusinGq40KO8/QDCToi518+g2pWMwje5
 /AogBFjAKYl8sOr3f77MQaXot05XM1pEvg5RFhQ2iM7+1mXkKsOozvshJ
 GINtonm9AVwcckWUPgPue6++d5a+2g4Jb8cCRyuouuGCR18dmT9uYmRjw
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UFW6REFm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 2/3] ice: create new Tx
 scheduler nodes for new queues only
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
> Michal Kubiak
> Sent: Tuesday, May 13, 2025 4:25 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; Lobakin, Aleksand=
er
> <aleksander.lobakin@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; dawid.osuchowski@linux.intel.com; Keller,
> Jacob E <jacob.e.keller@intel.com>; Brandeburg, Jesse
> <jbrandeburg@cloudflare.com>; netdev@vger.kernel.org; Kubiak, Michal
> <michal.kubiak@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v3 2/3] ice: create new Tx sche=
duler
> nodes for new queues only
>=20
> The current implementation of the Tx scheduler tree attempts to create no=
des
> for all Tx queues, ignoring the fact that some queues may already exist i=
n the
> tree. For example, if the VSI already has 128 Tx queues and the user requ=
ests
> for 16 new queues, the Tx scheduler will compute the tree for 272 queues
> (128 existing queues + 144 new queues), instead of 144 queues (128 existi=
ng
> queues and 16 new queues).
> Fix that by modifying the node count calculation algorithm to skip the qu=
eues
> that already exist in the tree.
>=20
> Fixes: 5513b920a4f7 ("ice: Update Tx scheduler tree for VSI multi-Tx queu=
e
> support")
> Reviewed-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sched.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
>=20

Tested-by: Saritha Sanigani <sarithax.sanigani@intel.com> (A Contingent Wor=
ker at Intel)
