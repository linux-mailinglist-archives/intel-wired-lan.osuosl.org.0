Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D08F9A56A73
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 15:34:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6BE928391F;
	Fri,  7 Mar 2025 14:34:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rh0E7WsLzZBx; Fri,  7 Mar 2025 14:33:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E99981B36
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741358039;
	bh=y1gv1CbYVK/9OxFnKqsDF0ZfEsNds3hLvpIgl/Dpank=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=b6zMXFyKe9y42NZyJlo0lRnTh9d5iKhbB/Re16dI/1/bI177BbbRnDEw6Qp5AbDBv
	 sjmHXJ3x8/NDeJ30A4TkrPltvGlCWngxDCMQg3VwwbR0QiPvj44ic9VFqUToCvQdKz
	 WW0mZVIMrvxTpSHheRU7DmAqmA+diFvCGKeBhC/ii+H9OkZVk9zVeO1UxYmXvaa2FY
	 zIUQmTw4nB4aA9sPWijmnpvjNVpkxOHO0WGjPF5ojdyTuM86T2Y7Y+qCP9lhHwCrtc
	 HXivPNYgjEqwEuwPIw9jHYNYJuXFY2ZIv9n1eC8AKhBtiBuaitEOuUTy34dQgciDTA
	 /q6FBTAOJzDtw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E99981B36;
	Fri,  7 Mar 2025 14:33:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 15D2C1C9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:33:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 107F540E4D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:33:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GZjKkIMPRTCy for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 14:33:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E697540852
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E697540852
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E697540852
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:33:55 +0000 (UTC)
X-CSE-ConnectionGUID: 2OHwOQg5Sx6dyMgXNOlpkQ==
X-CSE-MsgGUID: w9RnzEdgTyObMEvrZ8kNHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="52613608"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="52613608"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 06:33:55 -0800
X-CSE-ConnectionGUID: jpUTbppdSd+hmkdr/9i8XA==
X-CSE-MsgGUID: 9c9MiUi1QLKUfo5VhCWsAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="119165004"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 06:33:04 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Fri, 7 Mar 2025 06:33:03 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 7 Mar 2025 06:33:03 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 7 Mar 2025 06:33:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BRcPnYQeuQq4jM/PI0lyUCLWmTHEjKqzcl02s+gMr/48m1NO1ESoJUvf/s7HYmJXzIKg9LBXeyj+2eS5TH1oUh271YLOghDFJ/P9hZL7IuFXVYR654DM5HB8Jy0CCt07+xQbnv/o27uP4Ki3w64zdbsSjZ2V0Hz2Aaer0Qr+toB07+Iq9M8dTgVSBVTtDU7vf9PxfFpLeehiQ5g0wD3coeDOgUc3o1WaVDAH0x7JgSbfOmXgSyZSSDCHUECxUX5fLMpACM1VXfm84+DNG+UaB9lHNaUGWYzV7RW3Hamd5LvOHQCpWPH0hj/9h/JSIdViYDKDMOVmb6/REpYe+yOxbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y1gv1CbYVK/9OxFnKqsDF0ZfEsNds3hLvpIgl/Dpank=;
 b=XDKUd+/tkWohq6PO3Y2DmuFnSiv+QS7f7IYQROUAmQmPDTpi7hscyqw79fANm4MAu+BEt7Gp0gvmK1rivnh5+NKgS6rNwK/OOAn6LJq9OydTgxvOqoiOpKKW6SPaH2T5WG18CMrVdgHMNPcZZJRmZzLnBdILvgnNRqJKe8+0FZdtHFe0LIq1MCS3Uo7ZS5JMgmDZJtXezdZvbvbX4cd8uJo8GV/d5btBgqQ48Psc+hUvNGMKEyJFB7ZXfPD5apuc3kyoiDAihiQF4SQmr7KLVCnZg/Qsag4I03/qptiFjMFoaY28Z+J41LfDTZZ9ymxLX5dpT3L0LKjoriTEZO0qAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by SJ2PR11MB7669.namprd11.prod.outlook.com (2603:10b6:a03:4c3::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.20; Fri, 7 Mar
 2025 14:32:32 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%4]) with mapi id 15.20.8511.017; Fri, 7 Mar 2025
 14:32:32 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "andrew@lunn.ch" <andrew@lunn.ch>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 1/4] ixgbe: create E610
 specific ethtool_ops structure
Thread-Index: AQHbjDay+eXvfaF+/EqyiO5yUaQFzLNnwscQ
Date: Fri, 7 Mar 2025 14:32:32 +0000
Message-ID: <PH8PR11MB796533DF89DDA533B73A1D63F7D52@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20250303120630.226353-1-jedrzej.jagielski@intel.com>
 <20250303120630.226353-2-jedrzej.jagielski@intel.com>
In-Reply-To: <20250303120630.226353-2-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|SJ2PR11MB7669:EE_
x-ms-office365-filtering-correlation-id: ff121128-7d93-410e-50f2-08dd5d84e568
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?1ipAm6A07huIDu5tyihT0Kru2firuCSHjNkQ2MYjldZ5LdiGBav+EJbX1qVa?=
 =?us-ascii?Q?DJaEHaRff25jqHsqH0/9VM4ELZGoUmWTj6ZzFgBQCHefRqIDTarGkszLQB41?=
 =?us-ascii?Q?Xjpa54fVEWeMcKNcTnVmbljm+ovSQ4Wq3Xe8a/uPtm3CoVQyaTpFSAKmAGG0?=
 =?us-ascii?Q?30HDseOz1R6c9wGNFDJVLvQdAhfTdwIeCZK/QoXxuumA8eNszG/9Xuo9qhdT?=
 =?us-ascii?Q?90VL08ZDlW8bor6YNz4gMNLb+L4Ik2KrzXRrfWBV3C0+nvTP6qBJ73yR9SxH?=
 =?us-ascii?Q?PEnaob1UUPACflNrA+8DEgOrUA8tZvqBJFNv+Q5FKqZ4t79+lvVMViNOAAyI?=
 =?us-ascii?Q?AcCaNeDYKvU6GmA0WtqQ6WwZ7R38xMwGEPRJzTSeLuDRUbDDUPrvKnKb3Vh+?=
 =?us-ascii?Q?xm+wL+fLRvDvthfFgUtKOwF+RyHWDa8bqFVaCWnJrmQa4dZuGv3NyQn5gPH+?=
 =?us-ascii?Q?U6aNo5FmnKEDwTg9Jn95bGy/jCnbWIiMSEGc8VVgrC8Vbi6j5gaLMcMfXO+E?=
 =?us-ascii?Q?YcrybmgzC7e386nbMSMvCKhDtQ9sKzP5bPhA9HS4pfgmsiINa7Eox2iORwDq?=
 =?us-ascii?Q?B9SPGiQVC3w0NJrafgu7v2Hx+AfjGm27Q8/MEI0G0w3kSm2Tbgo9Hl/fBgrz?=
 =?us-ascii?Q?UD/IOvVzRxd7zGUl/milkyAN+MbRmdDQfPbGQbP3ImEY9iLNP0MRnxccSZ79?=
 =?us-ascii?Q?yBU474S5g2hKFIZmZhlYTIMrhhvTp4cNbowrKxwG8f3jiguIPYwVc/DMCUe7?=
 =?us-ascii?Q?SN5srIvW4fM7psotaFrHLBF7DQOGwUU1DRPzzzOmJ7kjgPmFWH0Lq+8UTyZ6?=
 =?us-ascii?Q?B202n4c/tPBqDIJajOrIiMPvZVLm85vjjPfpxzCYVnXwmK+IyRBsVmvnvvN7?=
 =?us-ascii?Q?vt6RqjD6x/FVTCi+FL6oynuEaczsP8z6P8+jhvmEzrsLPDBYiFVYil4GrOm4?=
 =?us-ascii?Q?4jdSog2KmVIVN1gILoGDOsD6kI+Zja2zZpUcqndc67ZJbDwI6Mj4VdfELOOl?=
 =?us-ascii?Q?RcySG9ppoAYDGz7287wHStB0fJ2b/fUYzl+5YE6/+uBVluCpo9K7fn6wttQT?=
 =?us-ascii?Q?q6PoHQTqq8k2dOOBfI/kiBq5FfufXkh3fQrTYIxOyvrsGt/qt/ZCGTlLX6V8?=
 =?us-ascii?Q?iklZP/QA6lfk2dMsz0aijW+l2Q7OQijBabX2grUdG0CmnoWkH3aVjn6OawRl?=
 =?us-ascii?Q?uz8X4SGi5OkDKP2xJJgn83WsdCDft4e60U5YvR+T+91QQ1TQFZ5kxerJqQei?=
 =?us-ascii?Q?CxQKtu4GSbiH7U0FWcGl268beX2AVjH7sCkBDWbAvo+5HDbsB6gp+gYMvkfa?=
 =?us-ascii?Q?CIiZdlF1E8YAjEsiiPLWMn7C+533//5laxqT9lS1/VhiS0FQakVD/0Gf/KVQ?=
 =?us-ascii?Q?1u4JMeNPUHeMkxACh+IS/7daCMNxzkVqW2FPAjvMzbSfL1gkysDZoYqN17Vc?=
 =?us-ascii?Q?73OQ9QCESDUd/KQSINaaHojPgzCxkVEJ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nrMKKAB65Y85wTuLwOF/eUa/Br7oEoVvIjh5FqCZM0gNnw6r0LMuPtpxGvTa?=
 =?us-ascii?Q?J1VBoCyjL4ZLPkP9QFeCCQxmjMOkz2oe8+64mZ5S9nCSYw6rFdaJ6PC2bdgd?=
 =?us-ascii?Q?O8Bu7TZEoLWsq2m0iHKe1Ys41hN9Ux0MzNrrscLJOOVTKl5mJTFW7P+UDSmb?=
 =?us-ascii?Q?SUms52FkiwRi53aAk8zosxBrCMlx3wtb24wFVpyobdh1K6KxKtHS2v6raREJ?=
 =?us-ascii?Q?0aGvK+ztHNmUJtAlqOOAvpUYGYdEUHdM6dv0Bke1u1cyZX+ojv/5Am1KkRcL?=
 =?us-ascii?Q?+O/YawDa5iI4xmPRmoXYFRIjA1xay/9bMr6RbVqJQ4v5Ew+ktN14M3ztutrH?=
 =?us-ascii?Q?K5PBKF527alBYA615xvgoHi34qZdDt0LcwI67Qn4bYymtYfP1t1fCFyorYiP?=
 =?us-ascii?Q?p8UZXpYtCrplP9PPs4+9o+WoD0qJU9jri9Rf380ZcpAACY9F2gbrYcDdT4mz?=
 =?us-ascii?Q?TZfSKmKJ1cYokIMKBT6GTZxR2iRd9oid/XPIG1ZvAR6Q1E+brhgt+WcGB3qk?=
 =?us-ascii?Q?9/QToAMOWSw544oc5a511hNfdgakw/WyoiVJg/55gkvYfOlGyo+CrOm+rytr?=
 =?us-ascii?Q?K4cd/G7RZxPSTVGzVvf7YeUsqXJjVoR7qG2W+D335c/N6/Hdt/W8PaqNoc4Q?=
 =?us-ascii?Q?guAZgVjsvu8IP5Bp4ZwTWMl15Ytd9LaIaaPobwbfxZbKC7xsD4JyKj+pWSk5?=
 =?us-ascii?Q?T4kbdpsZFh/Wuu2WRcLYyf1JcFi5Q6EMsZdubL/DUgww8ID16RYwX17/N7ty?=
 =?us-ascii?Q?nvk+01hsIgOF3qMZQ2qi0YdLPbTAYyVbllPl/Z6MpIzfKSIDVDTSUSoO5ePh?=
 =?us-ascii?Q?edE6FyYjuPumKMSxpJy+XcHc2aSDGdriGURGSef6lNjvWNEw2uTMbdIvVtYN?=
 =?us-ascii?Q?RFtVmqgH0gP3ww90jMw9Cn3/278SMEUAcdMAEP7s7iIdJWMzzVQK2EiGcBML?=
 =?us-ascii?Q?URdw36NOKiQIF1h3iAtaFe0l81p11jNRSY6kLk4L/uUQxuE0rmL231/LV51A?=
 =?us-ascii?Q?2YGVwAQtFPr0BOzW7L35Unkygh8OAxgPru+0gb4rHIqTgYvMNWKZl/gw5956?=
 =?us-ascii?Q?U6F6La7/cojiEoUolHhp0d9ZbvMSqw4eNWEV/DE8fBM+actmVkscehSPvY8H?=
 =?us-ascii?Q?7WnjlAcHqvHJtaQ/bZyFMrQseOnGFpU9WS8lg5fv7iXZJANZ1OBn/eSXkSbk?=
 =?us-ascii?Q?KBwfbD842ZsGvz7bBqvQOKZfVokF/meNYFnYGhuSDXt03Cc3HEQvmKRLQL7v?=
 =?us-ascii?Q?cUZP4RaCAYQ1EmrY88kIUE+K2yJBCV5A2U10WZV+gzG+aboNozWFw+m51AYW?=
 =?us-ascii?Q?QwiGfIEgVW67Gco4Z7Ql5QZ5jZDG7IrXEvXV2E0vNSRo+edmUVWdh2gQSW/W?=
 =?us-ascii?Q?1I/2SxT14ORaDbjhaKqG180B/CBQ/jCJlAUKF2TeKFuaHibpcXwzAderLDfb?=
 =?us-ascii?Q?j0LOr53c6BNEpVfmQmdqapm8/DX9U9xYIynMJVS5USwbRO/l+X/80dc9JeiJ?=
 =?us-ascii?Q?fMWHOf2VXVob9giLuj1yqoNyoSfCPAPTE1m7juQZf6Y0DSgwlhO6hoP+APWj?=
 =?us-ascii?Q?yYneiDoNpitVgg5iElY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff121128-7d93-410e-50f2-08dd5d84e568
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2025 14:32:32.1969 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bfrX72rxtYab12HCCVEWuBY4Q/jfdUlh5JrLjQWkbyPOajZtBZCKDU6IjBENScXTOyHfDuNaz/VxFGiCT3LLbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7669
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741358036; x=1772894036;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4hpvCKTgDRzEEEm8Ojo4HDg6mV21mSkfqVSxTdRrYc4=;
 b=lk2l1msaHYrbP3QiuHrrL42Kjl421bEN648aLJ6URYAb+mvQCGcEna9i
 4U5QAEPpHwSdu6kyj+gol3HpDSiN7+ADkHcPeD13UqVigbLTVqDq0Qhzl
 e3TXuBnHDlCwrUMsa3BB489fRIENoaxh1sb33U7LN6M2F+vux1rJsQUPf
 lYoYaedmx4Ffe4CkyFPu92j50hiInmb1TyFN+5X8xrGiaJlz5Cig/u2dC
 QddaQLCiTFvjZBrcUh3cCddaG/rwD2Bz/xNqnR2Hb1eEEdVIHq5aQrVQW
 oc/jAN5CSHePjzz9RIX3rKOipztg3h6Txb7SlZBq+gQW6H6NMbAG+CsRA
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lk2l1msa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/4] ixgbe: create E610
 specific ethtool_ops structure
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
> Jedrzej Jagielski
> Sent: Monday, March 3, 2025 5:36 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> netdev@vger.kernel.org; andrew@lunn.ch; pmenzel@molgen.mpg.de;
> Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/4] ixgbe: create E610 spe=
cific
> ethtool_ops structure
>=20
> E610's implementation of various ethtool ops is different than the ones
> corresponding to ixgbe legacy products. Therefore create separate E610
> ethtool_ops struct which will be filled out in the forthcoming patches.
>=20
> Add adequate ops struct basing on MAC type. This step requires changing a=
 bit
> the flow of probing by placing ixgbe_set_ethtool_ops after hw.mac.type is
> assigned. So move the whole netdev assignment block after hw.mac.type is
> known. This step doesn't have any additional impact on probing sequence.
>=20
> Suggested-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v3: correct the commit msg
> ---
>  .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 52 ++++++++++++++++++-
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 10 ++--
>  2 files changed, 56 insertions(+), 6 deletions(-)
>=20

Tested-by: Bharath R <bharath.r@intel.com>
