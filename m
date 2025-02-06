Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E8DA2A908
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2025 14:06:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E0E9280DD5;
	Thu,  6 Feb 2025 13:06:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ztDYtRhilQLD; Thu,  6 Feb 2025 13:06:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3166480DF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738847187;
	bh=j/nVeR6IfHykh3+18bql4TKYLF7C/YHZKrs//h0DYeo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=y7bl/ScCgMIe1DRvqTSo8zStvrKNuKHIZyd8jrAM3Xf20yiwSoNmSrhOCKeSWeqGA
	 CdZ13ButJdOsPr/KWGpj/tu4Ghvln2MTyoadu5M0HtlVSs6rV+Yghen1KMJ8kbRyAu
	 OO2J6WzRZZNWx52QEG9+deyVvC1fVOYa3rP2HJAaSFxF1Izmn+Mvm1XaXnzidE65v5
	 u4jmWSoyardiwxoP4QLdELBpjxt71c9EZg9YU8SFoPfIxESf1PiG7nTTLw0yvos5F7
	 qQhWNr7/IofOioCxkReDsaalGu2JzU8NfgdQj7ZeW/zQB2/p+Qy2pF4tOtW4bIt6Ed
	 g4zHT2dHeLOmw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3166480DF1;
	Thu,  6 Feb 2025 13:06:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D93ECE2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 13:06:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D4B1A400B9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 13:06:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s0of0Y-kmUrc for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2025 13:06:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D230840383
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D230840383
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D230840383
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 13:06:23 +0000 (UTC)
X-CSE-ConnectionGUID: LDx03a+bQX+OULHc6+q+Ew==
X-CSE-MsgGUID: iQdpRHmkQJWe3mgzoBJsYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="43202390"
X-IronPort-AV: E=Sophos;i="6.13,264,1732608000"; d="scan'208";a="43202390"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 05:06:22 -0800
X-CSE-ConnectionGUID: e+qXrp4DRcGbwf6bic7s0Q==
X-CSE-MsgGUID: LdJKOpWmRDin+mQKH76aww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,264,1732608000"; d="scan'208";a="111736400"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2025 05:06:22 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 6 Feb 2025 05:06:21 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 6 Feb 2025 05:06:21 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 6 Feb 2025 05:06:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IxYSC4KzVRonAaZXuppqWJWLm7c/1p0N4nJYqtssXn3YNmFKz7Q9YmMboWUKCvyvD+kKGej5f5ZCQ+M0QSFzvSAfrML7jVlfno2Bt21P/A2MstiWLbtxbFtV2OuI/GyKn4g57kG5XFmS8tN9OA30wcNsDZqotskMSDmUInDGR3wcOL9jQTLcyxqxO31qwM4LxC7nRyNMzjUxL22I91bF8Uk8y/tb26cnxO4uvaaMH3vnXuLmBTM1C07FvyN1C/jNqxP0DRQEebjefK0h/bJRp75k8qN0J03/QbSSCmmY99hQeOUxZ5rr5vvfgOXDNbNHHN+62O9zDFLCHv8X+k16qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j/nVeR6IfHykh3+18bql4TKYLF7C/YHZKrs//h0DYeo=;
 b=t2nxiatcifqcmtgvpKh6CHjjJd/xxwBFzrWJkQRtbaLsVxz/bVPiSnXv6VFJTDksYOKH22X1FBvDX84svCbU1i9VTjAip7lKU4mg88rIQrzt24VokmCCpuT5iWnxhUOdbU4b7t63yvM/RukfdG1oagefikkpmoyWH9G522v3ppYUpz9tB1S3QkbdREcEZmnZOH4GWIMz3aPFMI5Wdyr/FzroEw4ZFE2MIMUwVWPq2SdM/iIMarOln4ZR43jMncrbi3dUkRvCQVNhj8M4S4/IotCEaiCIeq+p9Hwiw/l4uYt4VJF/JAVdwtkGmAARf9dfR1W5XimP1uR7YK6prcMzdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 SJ0PR11MB4830.namprd11.prod.outlook.com (2603:10b6:a03:2d7::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8422.10; Thu, 6 Feb 2025 13:05:28 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18%5]) with mapi id 15.20.8398.025; Thu, 6 Feb 2025
 13:05:28 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Andrew Lunn <andrew@lunn.ch>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [PATCH iwl-next v2] ixgbe: add support for thermal sensor event
 reception
Thread-Index: AQHbdta7xAZOXWLD/EuwSFeTRBNAMrM3HkcAgAMhq9A=
Date: Thu, 6 Feb 2025 13:05:27 +0000
Message-ID: <DS0PR11MB7785AA7575BBA0E6FD576B31F0F62@DS0PR11MB7785.namprd11.prod.outlook.com>
References: <20250204071700.8028-1-jedrzej.jagielski@intel.com>
 <0a921f6c-a63d-4255-ba0e-ea7f83b8b497@lunn.ch>
In-Reply-To: <0a921f6c-a63d-4255-ba0e-ea7f83b8b497@lunn.ch>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|SJ0PR11MB4830:EE_
x-ms-office365-filtering-correlation-id: b9845e4d-f48a-4edc-00d5-08dd46aeedb5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?S0rsGMDsdwFBrAfEg6xEVN7wh96hIf4Ksgks65ojGGXWrjE1JPJ/h+W94wgV?=
 =?us-ascii?Q?Z/EysqarORAWKrWytWHJaJaV9ZOZqyjsSDwmoGa0BIl5Jeng+fjFVDnjkEq0?=
 =?us-ascii?Q?T9tKXH1nQvFTCMjrNQxQ2r3dOVZRT8g2l36CVB2l4aNa2JjImTG35RpKSssI?=
 =?us-ascii?Q?D+tn7Ybv+4RIfgyoBLLtgn8TquSOS1Al/PBPoZASkrqxiTXybmlFebhA9JTd?=
 =?us-ascii?Q?WZDxFcK505xRb8dEnbP3rRA1sdOhvO9RdfrKLyHRH8HHz2gr4He2BBFuuvMA?=
 =?us-ascii?Q?LeG5cDSbHkZ7dEPtqAd3nI5y1O5yziUkhgPFx60ufvnUgKt9ttCULEJY8e10?=
 =?us-ascii?Q?Hw3ajbVRhSmzOInsZRzeuNliqIhhMLrHcSdA5d2ks8J9hop4+bSIE9GweJhB?=
 =?us-ascii?Q?fRoM5ZLhPrhyvAnvlNgf8BMBzTqhGDpJqny9KqjI31diJ+LsxnpWhgR6v5gL?=
 =?us-ascii?Q?G7+mFxm2WaIvi61t6MxZl+X8GvafY+bzsCEEw4MgW3Aa3Z/2vSVT0RDAvw12?=
 =?us-ascii?Q?2anKxDhYXoSp5p+NpPdjbpFqbD3PBxh41tsyL3BS6EPA2cPPV7rIbspLmxRc?=
 =?us-ascii?Q?9bTyVlTI/gF+Y3wCIZwRj40W2mZmBi2e/f2My2Wr+Iq4rM7uNvY2tOP7lKbF?=
 =?us-ascii?Q?AotpYfwgFb4nCoejpFgNw7fzJ0OF4YE5RzP9dBh9pjX++eBPDEf08FHJuTBV?=
 =?us-ascii?Q?nXzTciJeu2JHQRX6l7J2MDQf2K8URWLpvt6mj0wVG0gBZvhMaeIpM+FtLkMO?=
 =?us-ascii?Q?t+RVCChx9uM8YfbCCD8cIG9dQ8L7E7OfUAg8B2xwA6tNpT0p4y+Ja+IrNl0W?=
 =?us-ascii?Q?MnsvpdstcRnOvX+5oozv4fkj3htKbB0OfzHhWqi1XzZwjR4sqxVNeco4HDDY?=
 =?us-ascii?Q?Do+YpJWLEB3v0KfqI2KpEaKnJVS5Qs1yf1SSIgZDd4fhdUW0iiWXODZcj8rT?=
 =?us-ascii?Q?B6xLnsFXT61mep6qihVtY0MMPrkJ9dWoWaeEci5uCFwUhkc++ALz/NfIRPep?=
 =?us-ascii?Q?UqGYeT3Vo1O8lK/c7ODEKxFb1sjRiA99oFRHExWRKjSnlbJD99ctxYuofoD9?=
 =?us-ascii?Q?DPm3+pezf2QrWjczuX3715zBvrG1az2DjbhxQdXW6vnf59C9Qkf0pj2rRPOl?=
 =?us-ascii?Q?GZ8NI7y8fJdxJw05AA2NJhXgE5RrNcu6UAfB4QAc/YhsUbLdv1cmdmQIinun?=
 =?us-ascii?Q?5q1NdJsvzkf7Am1wWfXIoFhNdodfhsgqjkA8Lgstk2wDi6Bf2mEmnHEuuOrf?=
 =?us-ascii?Q?6WJMM+xuJT1LzA5QrxVysjr/+I8wZwwyeyDP5sV5tNGp4o1LOQzQpOV50dSe?=
 =?us-ascii?Q?j+8MfIMOBVjQtzdRw+yQkRMK9G4zDIjJE0aQ6QRLp8iryMoB03/vl0we29KJ?=
 =?us-ascii?Q?AFxAPekQGwEByUedo4jH4zVACMbhVPZw5bRkOW8F9uBilZlU1LhwlzUtQcjC?=
 =?us-ascii?Q?ZNZAxdzYu5QrtcerozfjA/dYNlLvojSY?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1F0gbZf7mHkw/H+sRkrOoZDMyoUAKKOLGPGP+1LOztSa4JOYH+VGFeKRUZRA?=
 =?us-ascii?Q?Iw4mbujMnavKLcZJKupCqYa9fh7mMemaCJFlGQ+3eRlUu3Z+7pV2LqBiscsm?=
 =?us-ascii?Q?a3aBVY1KMOZaCQiBoVafmdlbee6YAIoyTlt6RCAFa+dXtH2J1FnrYETSiVUF?=
 =?us-ascii?Q?rB0XyfLH9q/HAKKW4XRn9TNF7jyagCpgKLpEAwhOkjdjFK1AUCbf/Ho5Sm76?=
 =?us-ascii?Q?vjEpPJuxmA8CR1LXNybQmDESLiMm5gk1au2K1j+li+JLpbJDR/q2ZvjFkjbV?=
 =?us-ascii?Q?Ic1W439VK1YjCso15N26NNUqrVKx1Qq4tmUGD1fqCCZ4eVgqQlp7uLgbMJSS?=
 =?us-ascii?Q?1YqD4CDv3zRfWq+rnfMmHtsim+yPaNpz6QnVJ9O8QSUIs9mU0Iz/gxALjU/Q?=
 =?us-ascii?Q?MSwMyx2ik99FfpL8uZiC3IZq34xf99ZsXKyn/9Kc4SncFsT0j6VKUN9+Y04J?=
 =?us-ascii?Q?qB4JzAAPOtDqNaFX3SFjzSc69wi28rAK0Tv4t7iE+s6W6uQFiadhDcrc8swx?=
 =?us-ascii?Q?OH1y3mJb1L3UJeHRdbBP798IPupjuvd3pazDxej20g81NdJb0WLbfx982rmo?=
 =?us-ascii?Q?7uReOMzg8J00bR+xealEXvoNAmTzmQ9Bt9k9THB1IS4GrTOD2lgm/5IccrUI?=
 =?us-ascii?Q?82Fv4Xq3QLIYpfx3r40k6QAc0IVg6/3sMhpyuzwS8GZ09Sp7fZUthCZrx4OR?=
 =?us-ascii?Q?XuuxT2Us7CdFkMR/Ey6XIwRMQNqZTH2oNU38Eo38Av6evhVmvYXRljag/ecR?=
 =?us-ascii?Q?yxjTyos7JjfATL5ZhQaWbCtwG31hF9nB3k+EH2J63GTdAmU+mu+MUQqogR1s?=
 =?us-ascii?Q?zZv+tTo8PFcy/zBVGombWSs2HhLGUURpu9TzjVN42wCZhtjqZ8/u1//dSiT/?=
 =?us-ascii?Q?+sz9FyfKRczEm7kD6xpy1+NpLHExu/to9XfuYo7urYYreSv9UkWEWRZ5J/ln?=
 =?us-ascii?Q?s/tJgHdkZ/7EaTz64f+LpRGGN+l/AtVOwnfpvmNTbQ81Kn/Alb/x6C94TaOx?=
 =?us-ascii?Q?DYkzSTL4GSYwXEF0LlQ/dvmiqxC1rITw/+nVzxD66pQTgDoOD7uL+7s51sha?=
 =?us-ascii?Q?6Zh1d9iA0buQZdvBgX7YkwwKubTUBFnlpUJzwLhCaQfgrzdHIOavlJczF8Tq?=
 =?us-ascii?Q?fZTpTJiN2Wr9C/g+A3qjIUOBYrFNCgIkVJZgu+ea6BlRfET86F073p2884nB?=
 =?us-ascii?Q?9QExHzsp6y1Y+rXQ12hX8DaW7PuFxoiRYfmKX6Z5lwDIjtzVjb/RRNsRH5tw?=
 =?us-ascii?Q?OSkKNK6JHxqgfGgqrkRoAE5VlISGnwjPtbI5VskvdijKPpT8/u3tmE+hRfeD?=
 =?us-ascii?Q?P5lUpBJkmp75yZF8efdYObPxPMlA++eKqmLXxk+dfqDjBzxguLRr9Fh1I3SF?=
 =?us-ascii?Q?YcgtHHO5YFDDzH6hAApqXTthjNtlEwaJwNNKZtHBm9KovElE7xdzOlCNvMLQ?=
 =?us-ascii?Q?IOgZkt87dNQ+SIGb1ySM+LgekJgfRRwkFVLy5W8wKD4pR9LQKAvre3wQmiUi?=
 =?us-ascii?Q?CCpk/sxleSTkiGIAIiH1j20brOewBBL5Ra8+p0AExtZigqx9H1Fbo61s6XDF?=
 =?us-ascii?Q?nPQ+eqG5fa19SmaI8+b+3/pc8SaQJ8rRUFajE8ZH?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9845e4d-f48a-4edc-00d5-08dd46aeedb5
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2025 13:05:28.2181 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PG0j8PsiWCBkOafGZvbdEZ+graACc3XmvSt1F5rHIWP1gFDJNwWlxLzW/E2kO3gMN0udHeFdlIwy8cgY1tAiw24nf9NE7ERhwsQ7K194Tb0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4830
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738847183; x=1770383183;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BF84ThYwNQSVbxtQ036Z2mFMeiBMN1H8yxGarv2iMWI=;
 b=X5DooYolB/suaMiO3DBObsRN2fRX7lUywR0TAGzNXxlNLxTS8Zztctaq
 iuxxOJtqI7gihByrTFN35riPpHUZSdNfEvK/Mw9n7cD2+OnXO5KQaWlmh
 C45bvgbwztjPQOawmdrDwQjVAiykdDguufXvYYBPeq0vOkQFycMES8GOi
 HQ7s/B3O4DVNWGN/1FKEca58/qOq+zNB6Epg1dhj3/N4x0b4KJEVeWLVB
 +zB/iil8Evv5qm1TYz+Ii5WJ8t9GwOiSn37eE3a19TZSpMEDSF4kqLHq4
 61dwZ+h4U1TlcFDNi1/q8JrKF1qzLO2mDf8e0thnRuKyOuwDvxE4+DZ6u
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=X5DooYol
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: add support for
 thermal sensor event reception
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

From: Andrew Lunn <andrew@lunn.ch>=20
Sent: Tuesday, February 4, 2025 2:09 PM
>On Tue, Feb 04, 2025 at 08:17:00AM +0100, Jedrzej Jagielski wrote:
>> E610 NICs unlike the previous devices utilising ixgbe driver
>> are notified in the case of overheatning by the FW ACI event.
>>=20
>> In event of overheat when treshold is exceeded, FW suspends all
>> traffic and sends overtemp event to the driver. Then driver
>> logs appropriate message and closes the adapter instance.
>> The card remains in that state until the platform is rebooted.
>
>There is also an HWMON temp[1-*]_emergency_alarm you can set. I
>_think_ that should also cause a udev event, so user space knows the
>print^h^h^h^h^hnetwork is on fire.
>
>	Andrew

I am not sure whether HWMON is applicable in that case.
Driver receives an async notification from the FW that an overheating
occurred, so has to handle it. In that case - by printing msg
and making the interface disabled for the user.
FW is responsible for monitoring temperature itself.
There's even no possibility to read temperature by the driver

Thanks
Jedrek
