Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 994A88AB0B4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Apr 2024 16:26:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2168841732;
	Fri, 19 Apr 2024 14:26:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TEad8-yOmfFN; Fri, 19 Apr 2024 14:26:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A88A94172F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713536772;
	bh=bWEV4vb/LCbj3FxpG8N/uCWidve33tjiPD34ArnXaIw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E1dFRa66XBjnR+8ysoXwDFH2yfSk3sXt/EBeEbzyEp9vCRrM7IP1XJnkpXshUXEh1
	 pjFTWXrbmaQgv7FNNURydCtRkjJShDTWyg+apfYQ8Hq/A5S8soPFsTJRL4Gi8Iukex
	 2DkcL4iPl44pYuQ+ipvXkOPuoGuLN0pXw+F0+Mta/e8eX1t9sSPhnNz+04ZqjJ/F+U
	 tEjF2DZX5awb4rXKR7QFhAavM+vxitxBVzxVaxSR9oYq6g3A5HqEueJwG0fWc7jfd2
	 N/uEt4gIw3QRc7YPfD/p1Ty7lqPrIjncWkQWOMZJpGJIaOSQ/nwhacthKrC1ic05/y
	 XIF1fPp2lCX3Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A88A94172F;
	Fri, 19 Apr 2024 14:26:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A134E1BF33C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 14:26:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8C2ED60D9D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 14:26:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6TUOA5zlr4K2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Apr 2024 14:26:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8B85460D93
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8B85460D93
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8B85460D93
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 14:26:09 +0000 (UTC)
X-CSE-ConnectionGUID: AdaTXnmHQRKr19Xd2Ezjxw==
X-CSE-MsgGUID: 0MbZNELhRaeSUBOibA+U8w==
X-IronPort-AV: E=McAfee;i="6600,9927,11049"; a="9264216"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; 
   d="scan'208";a="9264216"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 07:26:08 -0700
X-CSE-ConnectionGUID: WyfqeUmrQx2cnXDbQ5O52w==
X-CSE-MsgGUID: wIsq597YR6mfAUNFhuIt7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="54267010"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Apr 2024 07:26:08 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 19 Apr 2024 07:26:07 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 19 Apr 2024 07:26:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 19 Apr 2024 07:26:07 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 19 Apr 2024 07:26:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E3GuW1sXUV+2Z514rBR1FOf8zgp52wDDrohGDvSgbbi32L2YIy3ux29bsnlzO56gJRztBAS0VbdHLzEH2b+tUwaREDLFfQcbzMABDixTBoi1MyBMAHHO5bCjQ5YEWsx4k4KSv1p/yddjNb3QdNTvVYOCzXaEtXQPniqD/cz56nXH+8jUrThwWCxFzPB80UpeWUvHOzNmDXYXfqEa2BJV/XDPxuRXldCeENWNEvLj9Kjpxzdnn3rEHUVAj6YR0BpYSO8ub1heGanGtuNNZ1/xhI89DuFpiSimFGERqAwtiCVDsVZsQfbRXqWWWaUrGHpy6jGkBYu9KyckFQZFrSuLUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bWEV4vb/LCbj3FxpG8N/uCWidve33tjiPD34ArnXaIw=;
 b=YMRDwlBvfVP/zcjYJNXHhIR0LdDTexVu/gPzbv+1tM3oD0RfY3Jd40jQoamwsatsB9Pyh5sukGEZNETSLfPTiBchgST1uvzZpeEE+mg+s9wzPlISZ6TD7xDZstZLliTU1AYBy2ajIgxaAb1NORVetDH5pQ8zhubp7kzCD8o0v+CNcLcegsTIPnhanojHW1HWqMi1ct5aW+w0xopgXPmqy5P5JX4ubVHq7p2An/floXnhSBD5lSqtC80QtZ2bSZeOi/K2IF7IXIqsTgAISwv3AejlwKCppHwSe0SKRDklxYyzdXeHb3eStxKNrBnH/Zgu0L4ewuq71cjV3CSj50a1vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by BN9PR11MB5275.namprd11.prod.outlook.com (2603:10b6:408:134::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.12; Fri, 19 Apr
 2024 14:26:04 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7472.027; Fri, 19 Apr 2024
 14:26:04 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Erwan Velu <erwanaliasr1@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH v4 iwl-net] i40e: Prevent setting MTU
 if greater than MFS
Thread-Index: AQHadSYFc04RgPtII0iMq+CRVHx6vLFv3Slg
Date: Fri, 19 Apr 2024 14:26:04 +0000
Message-ID: <CYYPR11MB84296C9EE9AFC32766E65630BD0D2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240313090719.33627-2-e.velu@criteo.com>
In-Reply-To: <20240313090719.33627-2-e.velu@criteo.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|BN9PR11MB5275:EE_
x-ms-office365-filtering-correlation-id: 2e0d2c22-cd5c-416b-3f5f-08dc607ca544
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: S9hFJL4uX4GYoryBVqNq9NZ86qijgK4nf50dStzKCP45jYkFyljSkSXzqOHh1mOUZ7/T9FBJMFCkjgfCKCUAruZDAGcn3i3oGdRQK4qrNXWaYMHMx5pcLan4Gb6cyHZY+Hy6qAdQZ0SO1iyXffuGNQ+jrHeZXxGato1YwFBs3QM/7BGJUfRoH4VeJHTZGSz0PtvyLAahEchIOD3yafCERjcaUhyChGMFkzCRYoBuaNjSBxmOxE2efpRpXi64OsuOm/oJWz/li4RPED0cXpq07sjM9Tbh+rvemiOdGpLLDMJxDyDFo4UqDZ39pLbBovJw3HtN3LgQquUWpAILFK9RPDvapnD3lh3FjKJWikvQfDvgrZtE1qqK68yNeH4xQlPfzRHoVIFG6FIN2RwVIKoavH3e2ZX9Xo+VHg2G1a1N5mc4sRRbeLWs+VR5HjY9fqeHfkof/EHrreQAlaO8IEN6ms7U4uTF2oT4ccIPA8qoLso/bmX741xQXbH0bnCibA2fd2Is1iZC07SC7JtCbczsM9aR41ZnskxmTe9+9Cc9m8hl5FWVx5wQWzfT+h/ossCrYTwMdYIMUylZJ5zOhRLgrulY33Qi3zGTtL7XUHkjHEA1xqCbtRPU3qTFSOVvvK2NhWJzCiYgkoscchKW2KpZkzM8A63lPa9jxK6wleotZCf7iSp7cAcDgg4z3m5pj5G7a0tVLMMi9RnfJUT7P6+wYGzcQkjlqvKkvbRAfwxwwUI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hjK48+caE38/xrFRErkM3fo9j/ZGtvyDsyzDEtAhG7OffDThdhrTuNld29YX?=
 =?us-ascii?Q?kP7q+ZBjySRjyLBcaE4H0qukyKSTAn+fVPUiq3y2ClKNM5Yq+KT/t9BMVVE+?=
 =?us-ascii?Q?AJKmANHCrMQHTYUK10+OwioKzW5nWE3lLLjIACra9bv1M1Hke6D0Fk4Oh9p4?=
 =?us-ascii?Q?30OYg/n/MJ4FXxQ3cnFBuEHWOsqx5DQ5ZUt5cdeeB7tfU1ofbjCZz1UzUmet?=
 =?us-ascii?Q?x6XFsZ0cgJvBQuVWMyggzS5tLGhq59pFik1HGeGHwOiapMmLVsrS99Hvp3Op?=
 =?us-ascii?Q?kP0lHR7OwlV9mlmdG6aetaihu2OA8QaxgihhvqrGeIhX2GJ4EhGscETXXXOo?=
 =?us-ascii?Q?+9uKzbD/TXXxUw9GE+iEIAwhZ4Xg1RoTwWgNPSkOVQF9+c1eMkhM49YJVbgV?=
 =?us-ascii?Q?RicoPk2pDUQZ2VtaAoePYh+4PO7GOJn8N/X12skKQmfhl7djm6P7cKdAjlKb?=
 =?us-ascii?Q?81Kp9kCe0sknOyN5T1bQ+SGaLogs9QniV+0AcySQgtYxr5w/3H6OWLysE38w?=
 =?us-ascii?Q?VVyBuFtOulM0aF9z1QDwfmZCCtb2EV8aixnig95ed1Tu4bK/jj/+2XegakXm?=
 =?us-ascii?Q?VTogO1FGxNs1SOGuPe7NKZJBzytghd6EBa2lJqrOLS2Pl4ej4+/ReyGV1j8e?=
 =?us-ascii?Q?8fTPR0XvmLQ94cDzM6uDPd1JvCACd1+5mao+U9VlE8Mchfp+bmVFKbCaqUAj?=
 =?us-ascii?Q?xLkP/PiRnIcNz+U9knlnd8D+hJwFCJkuZvlhP7mJTbAinecLQRDXS00JX33W?=
 =?us-ascii?Q?2Cxkt/Q5fF1IeLE0dnI13e/b9ZZt+Y8Dkma8hXs59r2PIZhKNl5DvgG0dOhO?=
 =?us-ascii?Q?nAf3pCBLZrssjqpZfylzRZgc7aGTh0iU+czflDdsiy+SECNsel4cQ5hMnlu9?=
 =?us-ascii?Q?R1Xuc6+/bfbeYugVqPlAKpla3hA3eMcyvURI55ys0Dmg+UMZ673rAf9Tz5lf?=
 =?us-ascii?Q?LCQhAnbmVOSw+ivIrLgu93YTkoYOHf2p3g5KKL0uMv0+Iv2QsfS/LNV9Dm4z?=
 =?us-ascii?Q?5nPk40H7CwhkO7aSkRurGFdSGCpCE8+qW1KuvfTT8snx2uAgDR5/519Ye/Mq?=
 =?us-ascii?Q?Y+z6nzCLwyxxaFRiZs9IoAGqO03w0maslcMYVMS2b3oorsMtRw4fPt7rrP6w?=
 =?us-ascii?Q?48jNvYqEOt2SsYnepkjvlnM3PmDCe4xzUYBT/7QnM4C0tX/8fMqkIBiKdC/r?=
 =?us-ascii?Q?ITeYVnABSaM59ikNeOyq01HS3jAumdf1R/3dO/graKUk/T5vvbNQ60PtlCsO?=
 =?us-ascii?Q?MbcYGJ64wyE2uzJfpATUrBJOQ225yop+xcwn3Xr7R0XMEItUia/nCSQ+R8RV?=
 =?us-ascii?Q?JvceeNAgWgFlbo9uS5Cr+h6UzU6dakxBYTszsZTqsoRd0iq+PbGX4jaO7lFA?=
 =?us-ascii?Q?Vq6e2C07+maFdtbJ84fuiW3pEZ5p+xLxx42LwIhEn3JXKUAsb2aoaQ6dNA2x?=
 =?us-ascii?Q?INlvuXZwYA22Z11zM8rxO4WxVTE0XkV35/c4uYgIHkY1MO/yXus4nEzD/t0/?=
 =?us-ascii?Q?hSugGThB96vNIA1/oIke2m6CbdfX3KLnjYirbqI+r1++hb+uRLAMe6N7sXOU?=
 =?us-ascii?Q?zVy4oI2PjDgHPMLttM3LClIaWQmfScR4741VgtMtqNGyNJ0RMQD15a/lwe2Z?=
 =?us-ascii?Q?Uw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e0d2c22-cd5c-416b-3f5f-08dc607ca544
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2024 14:26:04.4094 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0N7NGp/zizEiJ7GqVyOFvGpS/PIbmbTHwgjQqp5inzFE3B5g3HTuxPwLD2jtvl4E7j5HDF+35Idqp5SlP0iAP09PKruoDdDuvJGpqIgGMstjajnSASBQe5Tp6GCDG5NR
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5275
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713536770; x=1745072770;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=R7EN57Pn8cjN+SIlowc5LqiEhp5lkevu+a2ySszilZk=;
 b=a81j/DbJ+M3b0gEvwlYkZ2vEJKpHbJJe1ZXr9XgPcJ8AMJGRVpFdHgNA
 YyKRMUpbmluvJVYO/IHHu+AywmzGUzCbABHo873/88jUdDkc2Hbb014SU
 FmKl4npbR2fD23tmBjYsjnmwnfqCp3rbg7GxS94QULAtZ2hIE3mpg6CtW
 E2F4jhrUpIKJiZJrBy5wS5czCFUVG5HBDxzO1PAUoh39u8ed3xx8fqsSR
 /5O5SVX+gHWplbEhvj1ISDgZYsoxtHXjKLP7NzJDF0Pz1xqNjVTenOgZ8
 TmMpzUHhVjTOvJoq4bW6GPLsVcm4Yd9LnLIbRatd8qRA16fnVotJ3u6OM
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a81j/DbJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-net] i40e: Prevent setting MTU
 if greater than MFS
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "Velu, Erwan" <e.velu@criteo.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of E=
rwan Velu
> Sent: Wednesday, March 13, 2024 2:37 PM
> Cc: Velu, Erwan <e.velu@criteo.com>; linux-kernel@vger.kernel.org; Eric D=
umazet <edumazet@google.com>; netdev@vger.kernel.org; Nguyen, Anthony L <an=
thony.l.nguyen@intel.com>; intel-wired-lan@lists.osuosl.org; Jakub Kicinski=
 <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller <davem=
@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH v4 iwl-net] i40e: Prevent setting MTU i=
f greater than MFS
>
> Commit 6871a7de705 ("[intelxl] Use admin queue to set port MAC address an=
d maximum frame size") from iPXE project set the MFS to 0x600 =3D 1536.
> See https://github.com/ipxe/ipxe/commit/6871a7de705
>
> At boot time the i40e driver complains about it with the following messag=
e but continues.
>
>	MFS for port 1 has been set below the default: 600
>
> If the MTU size is increased, the driver accepts it but large packets wil=
l not be processed by the firmware generating tx_errors. The issue is prett=
y silent for users. i.e doing TCP in such context will generates lots of re=
transmissions until the proper > window size (below 1500) will be used.
>
> To fix this case, it would have been ideal to increase the MFS, via i40e_=
aqc_opc_set_mac_config, incoming patch will take care of it.
>
> At least, commit prevents setting up an MTU greater than the current MFS.
> It will avoid being in the position of having an MTU set to 9000 on the n=
etdev with a firmware refusing packets larger than 1536.
>
> A typical trace looks like:
> [  377.548696] i40e 0000:5d:00.0 eno5: Error changing mtu to 9000, Max is=
 1500. MFS is too small.
>=20
> Signed-off-by: Erwan Velu <e.velu@criteo.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
>


With patch when we set the MFS to 1700 (5888) in the NVM (as seen below) an=
d then set the MTU on PF0 to 9000 and it set it to 9000 with no errors and =
no messages in dmesg. =20

[root@localhost user]# ip link set mtu 9000 dev enp131s0f0np0
[root@localhost user]# ip link show dev enp131s0f0np0
9: enp131s0f0np0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc mq state=
 UP mode DEFAULT group default qlen 1000
    link/ether 00:00:00:00:01:00 brd ff:ff:ff:ff:ff:ff

dmesg when loading the driver:
[257.035823] 140e 0000:83:00.1: MFS for port 1 (5888) has been set below th=
e default (9728)
