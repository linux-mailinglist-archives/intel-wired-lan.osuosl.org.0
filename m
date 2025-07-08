Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4ECAFD088
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 18:22:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C3A060FE5;
	Tue,  8 Jul 2025 16:22:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rnSg_kGliMIB; Tue,  8 Jul 2025 16:22:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 751E560FDD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751991729;
	bh=h2mqIOnSVhr+tRqPjKjkWRREVNxWBrqLizJEcjMrwkE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=soJ9M5JvU4VQikFPhB0DfoscztcjO/O+nYdyKslIVjmJsTPSA7790ruuOp0h+zrDE
	 EEEdX2bYPjKQWpZf4QdukJbS/PTwCP/ta2FbjbcnWdixLl51oGn0AMNpmxmvCR7HVv
	 gAxUo6j6X/fkTIrW/AH6EBHY/HBiRAJ6SrOf/p/9X6ecKTmvm2J/YvNeAXlrZ96LiS
	 9N2otjwOEwuQ8fsHxS+nEmIjogMMFCtOyaixPilzVBwvDmJQzKRLwNmHU2RAv+J2ih
	 OVl81BBe7fdhmqk0XUQc+m9ypRqnH1w4eB6JArk2FN0cPkOnn1wK3jS/9TRSdtqviw
	 SgS/Oof95R2aA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 751E560FDD;
	Tue,  8 Jul 2025 16:22:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6569915F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 16:22:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4B79060FBB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 16:22:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XOFGUSn1kMgS for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 16:22:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 93FEA60F95
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 93FEA60F95
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 93FEA60F95
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 16:22:07 +0000 (UTC)
X-CSE-ConnectionGUID: /s2byy5/Qbq8kaEVYqPfKA==
X-CSE-MsgGUID: 8NSDtWr2QDuht/jXj7VGPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="53353170"
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="53353170"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 09:22:07 -0700
X-CSE-ConnectionGUID: viON2fkvTeGCWCazICtMZw==
X-CSE-MsgGUID: qckFMA8xRzSR2nafkrUdBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="160073943"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 09:22:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 8 Jul 2025 09:22:06 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 8 Jul 2025 09:22:06 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.89)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 8 Jul 2025 09:22:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AGPVNHZ3UJ11UF/uRtzukDt9IMZ/i9HJ33rteNai4tTtOLxvVPyJHBIwXgqHFHmCB7d9Hph5bjRJtkjvHcaG3L9tJfMx341Ut9tTO8H/LhX1T+kF0YLD9T3tN9pXWjnP+vWeMkRq+Lt3xTxMD+D/DRwG19Tht7iMrgkgMJVpzAl8+gcC9kiXSpz/dF9UNGgbeGzNUzhNmHFsNwClbRiIcszufFtwOjbfvaJvOnKO5DGF/g8NEtxmQwqptNVr0ifUyftCVAYO6LtpHmy4lbwRdGYHn2KutzYkY1l8FVqu7MJz1kH0fNTzrqqZVgsonBJbvZMzwGOuJGyyauMimeIxQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h2mqIOnSVhr+tRqPjKjkWRREVNxWBrqLizJEcjMrwkE=;
 b=k/uIxl/3MZaAwiXk8Zy36cXq4gUi2h5uED1pVKr4M8ofNOwbmndIhDmtalJ6+d79+qYh2bnZTb0pdotbJZAvptGIWJ+0ugs7LvyPcEt0H3a9FiOK7w8wKVvjlp6+PoW/LCl2M0HQQ4+Aog6WXkxd41MNYYgRRHwbTPRicVYlUtRR35ylN5jLXIRzuchaUm3+5RvEbcXI7cOFnByF8yRc7IDWk6DudJs8xbsvdOpptr60CQesaFIDHrEUWRCS45cdF9Hy0MvKBbK2LafjlzDJWd4M6nDM5SV2kCw9SA2O+lNsqrdPfydjN0ozu6hfAIX0Scb6TcgBTr4kEj+KsDvyEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SJ5PPF57F27BA08.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::82b) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.26; Tue, 8 Jul
 2025 16:22:03 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%6]) with mapi id 15.20.8901.024; Tue, 8 Jul 2025
 16:22:03 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: check correct pointer
 in fwlog debugfs
Thread-Index: AQHb5O/YA250IDDapUCpCU0Mx6GhsLQoJEVw
Date: Tue, 8 Jul 2025 16:22:03 +0000
Message-ID: <IA1PR11MB6241A55022C9FA1A930385E28B4EA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250624092636.798390-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20250624092636.798390-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SJ5PPF57F27BA08:EE_
x-ms-office365-filtering-correlation-id: 1427ac6d-c797-4088-9b09-08ddbe3b92fc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?W98rakulNmlWXCc5ExjQQxXgVIhJPyaUvpBTCbvHsbIhFHoR7hS27fEnQM1n?=
 =?us-ascii?Q?AvTzXlvsbDbz8gmP0O/cqYbuHsQOStmHdYoeYIXDSyIeBSjFUeKR++ODyGKk?=
 =?us-ascii?Q?mrbI5gIDGakYLREEllZ0i391andBB/rHeKChbOzwN6odfgJ8JnOZDutCAcbl?=
 =?us-ascii?Q?W46BYF2kjIQfnV7xWN7zny2X7mPoegqgDqTvhqvDzfOOktt3Uir5w0GUOZJH?=
 =?us-ascii?Q?Y8c2LpLJeNtc0M7AGwmfL2Tg45d7Q1UdQBKQSC2snQJYQB/I8cHhuXbjPLKX?=
 =?us-ascii?Q?Ub68TjNQhs+vV4fDW/K3fZhIddGWVOFZJCvWN56MsoeNzMU18yegxWP/dd7I?=
 =?us-ascii?Q?kyBENwAQu5fvUWFAXfZcURF8AE0ySoxxRyECE3jTRNaE5U+8O8Tyq8iZ7skx?=
 =?us-ascii?Q?+Ub2cft73UslCDbd/24+P+a8xYYaQg+e4CzCtz4KNlI4V4Djf5GvwppQ+CYo?=
 =?us-ascii?Q?yzwu/d6y3Ye8df9+wiiVoW5XjnMP+gyKalS5H1FwxtDMdGDQnoy1kQX6Hzje?=
 =?us-ascii?Q?l3z/1+SYyZeqwwUt1ttSk2DQAgNprYs+MPDDX55KJ+M9JJ68fuu8fDiig7bC?=
 =?us-ascii?Q?cQofR0Nl4SWboPkG4nUE78p2lGlTLcWn59CJUFyHOoCptLlNYB0BvgTsfp8s?=
 =?us-ascii?Q?oQd7e/tzZwnCgWfAuEx61z16Uvx4xQCNd7cbKswQ6pSnoTlC3zSt7A1/eaeH?=
 =?us-ascii?Q?cYjX16CtPXjUawgpqmu7e0P+0OY3v+PUcYrdJWq1kDdTEMDO9QvxDriWUn3S?=
 =?us-ascii?Q?7Ahifi/R1+Ke9TiY0t75ySPMTvAgHPEnTmhF36cmumG6n0KKycKrQzGO0HgL?=
 =?us-ascii?Q?autzTSZYYTXfV1hQyQGWybqpm7Jhb07al/uMcZ0YkYEP9cJxB0xkzUkY4VuA?=
 =?us-ascii?Q?L4H11kk0aJmtvT/gyBHfYLahAV/bnoLHDiMpLoqgLzEa5SPzU9SiZI1xBwxJ?=
 =?us-ascii?Q?9iWDxB4DbNVrXhGAXV2Jn71beGiCjSY6Wqv+cAU9Tysud2rPFUHjsyLczDzQ?=
 =?us-ascii?Q?+yQnGsrEAkTTStMpA0bnr78mPxlbz852lHk8y3+5/l9wfWK8j4hgqDcjB7vj?=
 =?us-ascii?Q?uzVpKBXW6pwqaMqBS+6ZEHGVNtn3TPfygUHP8P+cMIAlO50tgcyBwQA4x8zo?=
 =?us-ascii?Q?JFg4sLGGKrkzrbPPiSGIdwFp93IGgPflA6jQiCHbOtKOSIqBg6zUoAGKgE/X?=
 =?us-ascii?Q?2tA2v/frH2Z+jZrppPciqW2bEg9/t2VpLdKx+Rtyx5vZ5vXaKf+3by7zcz9C?=
 =?us-ascii?Q?7Rtq/Aoo1itp8LzOiknNk1Vnp5511zf3Z1EkMVRg6XADeIVBdrfTb3n+D6WB?=
 =?us-ascii?Q?W26vFMjh8nMK128YM4TnrQepas9BnxVcMh+jL5/LWZQ/0BEtr19K7VRg9wVk?=
 =?us-ascii?Q?J0k58GMWGJL1Cbu0e6XbGWPcYVUQ9UDtt1PGEEAxz6i2KS5oELA8lbQBRMEf?=
 =?us-ascii?Q?naJnp1dqwaHos2chEgFl9pjBH2WD9OJ+3d0zUZU6bwY5D2wgiZ678A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lR5tgXZNwVQVyQtAAlZLZzCnYkTAStXq4E4bAhqroE+rSGZa1+jIdU7WrJsR?=
 =?us-ascii?Q?Gt2Gvgp/0klXQSS0iM4JY/DyI1wPMRGcDMP5uIF6e+D1ImZc2LdjQMIfBwPV?=
 =?us-ascii?Q?s1EmZ74PYQju+upI10bqYE8ToPBtqZz0frU1rc5fTNxknz5O/haMUaL63KZ8?=
 =?us-ascii?Q?ve2h5PoCk9QE7Jhqcnfyru8xUJBH9m8Usf9KoxqOD0djHBA/e+6xnLUzpw/h?=
 =?us-ascii?Q?fNdHGqYPqT3pOo/9mBATpLAv24p9l0G2xwN22RUlPSM81lS1eCONOyb1Ojyq?=
 =?us-ascii?Q?8KFcbMbQxEs/xil8fI5ljg9BEx7yiOeZ+8ofzWBOWrMealJCGR0yVKF0R1gh?=
 =?us-ascii?Q?0gc9xTcw3VogoOv7QMe5z18+xpYd5gufKyZgSONWMWqUHqZ2ZSi2OiSazH5E?=
 =?us-ascii?Q?gRQvLAINX2Ml9lCOs0VC5xK71E6sIetyLvbT4uXgIs76t8ZUWJWPfLR4a4lF?=
 =?us-ascii?Q?lcKtq1mJkA2dvbR8C4Oo4+182L+hjXfF+Qb7DAgU48O4RiCl6GwCbDQ+7N7h?=
 =?us-ascii?Q?NHNOQwjVnJVVI2JEqcs1uQb9Btuq2z8Cx/9vhx0IOWec+FRiWiCRYqK6IBjX?=
 =?us-ascii?Q?k9h8bjvNRbqp5a9kbdNb/AC+DJOeGbAaKGZPvPOLcfA6DN7Ub0nsazyq+BWd?=
 =?us-ascii?Q?L7z1GtVUYnghp7abhbQN0uJEpOFIttlBkq6zXdHRZ0iqMUY2kw2hHwsHKRd6?=
 =?us-ascii?Q?EtvP4Zz/rti3vZVZ2BrCjuqSeeKT6uEQoYKU1wSpC41v356EbLQF6KepbfNF?=
 =?us-ascii?Q?Gfs816LCGzW1KPR/jAA4yAzyUHviO6HCgAbch7BycpBKaRtDPIBTLlV/6zTK?=
 =?us-ascii?Q?sMNr5RO0BlFZZIpEpQ+gFrUa8FL+cGdbV0uZa8RixCH9wY3x9YNXXBtbo3Np?=
 =?us-ascii?Q?ZfhlnER7dwh5xNnchgI8NGF4TFADKTOP99I/1BI5W6YADsORecwOm2VOiI0F?=
 =?us-ascii?Q?2jhcndeY9IKTdKDm5ctDD2KrGQK0j/YvYZ2k0IgBBHQFZOruvv90PLONMT7s?=
 =?us-ascii?Q?orXzOD86ZlCHTpxTqfRVLJBBYYT2GTKfgcHHDO8Tbvw/EM9Inj1MqPn9Cf0n?=
 =?us-ascii?Q?kQCS+zWDqtadipdDL4ipKXUyuURaP1P4EubSKYch9e/k8cp/cP74hkWtBITm?=
 =?us-ascii?Q?ss1SY8U4369/iMZwxisEH4J1Hypve9U8Kk2VRUbkzuPNJRUD7Hdkv+9q5gd5?=
 =?us-ascii?Q?8MW1bxU0zuQOUUBPSflMPnniJpRDhgGX6BlF0/4jDvHmsX1JOhKrgKwyi2/U?=
 =?us-ascii?Q?QjLzuURMXvrd5Qd7AyH+irJ3WFHCU0mdF/1wacFASjdlD4pTQicLN+x4NYw2?=
 =?us-ascii?Q?mrdYG6k8BhH9vErt8jIncsO5Rgu0lRmk54kjf5FgaOfq+ePn9y/MLYz3S1mr?=
 =?us-ascii?Q?zZJYXaeEhZUx2+eh6xYUy0PBC1xtrki6wNm0rwRBOglBdOWkBJ9frG54RREG?=
 =?us-ascii?Q?0un2EnrAZuY3+VzKqHTAqpy+1KxqvakrrbFUTM3uXIPOVE6JWKW6ngQAtKyo?=
 =?us-ascii?Q?fu0+dXGeYtSL9QrBHEEQG5cGYHzdp5fatnhf6TbHYJ3+00FlfnP3bTxsDlRW?=
 =?us-ascii?Q?fIqOCAp2Jr4TB+FClMtYewCoxz71a7sd70033kfj?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1427ac6d-c797-4088-9b09-08ddbe3b92fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2025 16:22:03.4540 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aCjEmvrT2Y90NFLR9pH0nHtNLp1qgyzRGWgyaqDNaGWPAvy3DZm5fXqinN47luLV0+Q3GeS7wYaslV0ZXJ/sqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF57F27BA08
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751991727; x=1783527727;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=h2mqIOnSVhr+tRqPjKjkWRREVNxWBrqLizJEcjMrwkE=;
 b=SE7RKEWoaUxCMdmar4xzKEI5+b7yGn7Ab/SKTqFl/3KLdKrwSowr3M76
 TIaJNk8wjB7NBgD6Z76Ho068mEnh49LJIyFW2oLnd+Nojd8ZiA03G4q7Y
 kVD+jPg+bODFTMO48byP0/9R65/IUq+02TCVtNRiq9scZiOlfpgajOerB
 sA3awsMqul9t1RU9UHVZcskVnJ4W9FWTalYod6ws1ekHWBrBs9XMyOVT/
 8bYcYZLV4HBgRkfc91RjDfkesSnnDQ5/RmGctM9NM/mLiOo5EJ7jXBVCh
 mVDGfXKUj6pcPHqNgYsv/cQOyod4eZ6SbgizghAboqR1qCgZDdsoi2HqD
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SE7RKEWo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: check correct pointer
 in fwlog debugfs
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Swiatkowski
> Sent: 24 June 2025 14:57
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel=
.com>; Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: check correct pointer in=
 fwlog debugfs
>
> pf->ice_debugfs_pf_fwlog should be check for an error here.
>
> Fixes: 96a9a9341cda ("ice: configure FW logging")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_debugfs.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
