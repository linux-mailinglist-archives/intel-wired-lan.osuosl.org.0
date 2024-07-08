Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 89ABA92AC44
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jul 2024 00:51:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3533D40686;
	Mon,  8 Jul 2024 22:51:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p9mAMhlHeBb5; Mon,  8 Jul 2024 22:51:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 233C140621
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720479061;
	bh=HojHtnIoacplKUOSo0eHv4FsXasYMeB6mMxcZn9Z+go=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3Mzkbf1GREE0MEeFjsYwCOer1zEFfKtPFuXdhCI4rxWMxQGYKNbwxNABJeJzUj3WL
	 Pegy8MOUuIeorSnFzGQlkXHbhuTqs4oy1DuxOdppJdu0mE4yjeXwlmxG69IcBpgxxA
	 Piuj6sCfdUjRvptTuJ5kSgKrBT/J2rLnVJvxCu+ssFcRMGaA9gOKMtLmmTTWjyc3M3
	 0FBVasD91jfrO5qIcJGI5NLm/ez2lH8Ee6mLq6UMTe41m4Js69limkjszqk54+hkjS
	 xTWpgjFwemD+3xA2I0OwXTqccA99TNaFBqXrrdVza57qIZqjQvS7NfysoCYn8wTHfT
	 XDRbQ4+paP1Cw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 233C140621;
	Mon,  8 Jul 2024 22:51:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5FF791BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 22:50:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 588FC403C4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 22:50:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sqlx1CMnE47h for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2024 22:50:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 17E5740154
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 17E5740154
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 17E5740154
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 22:50:56 +0000 (UTC)
X-CSE-ConnectionGUID: 2CMRtCt/RwmwaGUfvWC9+A==
X-CSE-MsgGUID: Qqmx/lFUQ5eaA4Pac97yiw==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="12439831"
X-IronPort-AV: E=Sophos;i="6.09,193,1716274800"; d="scan'208";a="12439831"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 15:50:57 -0700
X-CSE-ConnectionGUID: hYOnEMwpQIOliyyZ/tu27Q==
X-CSE-MsgGUID: nZLzjX6ARdacMcEPFk4eFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,193,1716274800"; d="scan'208";a="52244458"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jul 2024 15:50:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 8 Jul 2024 15:50:55 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 8 Jul 2024 15:50:55 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 8 Jul 2024 15:50:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hrNWulDWXRNtoiMQyJIvTkV3rjONTZTbD3ZHjekZHXtbT90Ih4mTipIm3G/duSDZcaFVti2wv31uANYM5UskhO8DEgoi6JWk4xwCwRABg9kW2kynzFbjdUuy5ADFNRSTX41/rNximn++U1C1/mF02YP+4mTowg6hcp4mUQzMTXxG1svTKCdaxKkZqhXZ2Fy2LOWTNPLQNun0dzOMSt3KGLCO7Q7+XBcL1O/dzC6mSgV0HSwzt1tULHNLkGLjsPdvHyMI72gUZTQME1/N4DfesPZWW3C2JjMG1iIN/cBew1gP2FQ8SX3h+Ob0rS8BQtiWUIRG3pHk8FZfIkqtb9Nl6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HojHtnIoacplKUOSo0eHv4FsXasYMeB6mMxcZn9Z+go=;
 b=HzZIG4HajMphRDwxmJgl8kSXZM6sxusJj5gm/Yv8VyG1RAEOllpaCcgsjVnOEKbddt+S6ziUGgLueq40GvIOwQnhLCLjBpSJiZJ2eItNeYgHNE/2KpcWVAWKNPnWPft326+rIyjFtpwsto8bzmTLUqfDx4+jGDSMuiNiVvu3Rl9pZDirYXd9J2YDeL6bS/phjbEOeQjSLdiFsuw8GKMVcStlR78BZsZEPu/QXDEofaZ5Bm6FNDOckpCxXD20TsZX4OsMMIW1XpsXP/aId9w5tG0Qx8rrjLEitsC4X2ay5g8wgd+p6Mqg+Fb8LgZiP0STc2PRAqDUNDF6IPYaOSEwDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SN7PR11MB6897.namprd11.prod.outlook.com (2603:10b6:806:2a5::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.34; Mon, 8 Jul
 2024 22:50:53 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%3]) with mapi id 15.20.7741.033; Mon, 8 Jul 2024
 22:50:53 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Simon Horman <horms@kernel.org>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>
Thread-Topic: [PATCH iwl-net 2/3] ice: Don't process extts if PTP is disabled
Thread-Index: AQHawWxlk7WTjzu1KkSGNLv4/70FG7HPS/IAgB5DeiA=
Date: Mon, 8 Jul 2024 22:50:53 +0000
Message-ID: <CO1PR11MB50893FB1F17FA83018D85B9ED6DA2@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20240618104310.1429515-1-karol.kolacinski@intel.com>
 <20240618104310.1429515-3-karol.kolacinski@intel.com>
 <20240619164030.GJ690967@kernel.org>
In-Reply-To: <20240619164030.GJ690967@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|SN7PR11MB6897:EE_
x-ms-office365-filtering-correlation-id: 3151ab83-0d5a-4a0a-0b32-08dc9fa06c0b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?CHiyptYk6d+8h14LneoOVD4VczFjslUB3oPBnYN+GkOlo6XN3ffyc/AXJceF?=
 =?us-ascii?Q?u9oClgDDlI0hrO9KkYdpKdZ7fxGGThvPE5Xu/sEV0g3LIWGyka4ZaSwdgH1m?=
 =?us-ascii?Q?lz9g67y+hOuVLvVVNPK9ldUxC3ZAPocHEMAXMnS6vx5uR/xKt+uRMNe/I3cC?=
 =?us-ascii?Q?a7KzPZlTksZCPVXnKQ9iPXOhCoX1PQ8LCSrbl4tBOg5Mwy3TsZSZYu4zAXAy?=
 =?us-ascii?Q?efxZ7c2JDeZ7bptK32EzDTSQvK6p9BkZq5tL5NI+uTQOsVjeET4c9iXmJAFF?=
 =?us-ascii?Q?UTkuVOvlvxwQguNcrVs2X+jlmcPR/wRZweK4S9UgJrr5vECRbrurqdNkgVqx?=
 =?us-ascii?Q?k711DnIH0FTaLDoXmlD4EkXmKfBAn8hevbn2m8V/YrUMVnY9vYAzNkgORzA/?=
 =?us-ascii?Q?h1FtxSXXl8xXpXFvPOKeXHYl4EfX6P1diRlnV3vfcjl32kiG0MU6Awvwc7Ez?=
 =?us-ascii?Q?UhDmQB9JmisLFkTazOqIeHDvxwWWZWSFm3JYwZH1KT0OxSrSl3mIFlircfJq?=
 =?us-ascii?Q?H2QMx+BkbJlCe5btpV/62Gg4BTo/+6KRXsADPNd1nGm+8ElxYGSjhNEf+ACm?=
 =?us-ascii?Q?FOqGoZ6sRzR8q4eWVDa02UFwAUf2DRlTExLYuHmMV5QHuDudZFsEWbGu5ppW?=
 =?us-ascii?Q?OJ9YWWTtHLjolzPLLCX7SMf3hDthlJsMlwPiS309FhEcEJ71rJiH2NAIvIfy?=
 =?us-ascii?Q?AVf7dGNXzmb4pCesjfNA3LU7O3LIV2alEdtWY7V4YOCS0KhYMo/uPFKknSZl?=
 =?us-ascii?Q?fCcTsqscSMYDkZ3pxdzYfCjwD0svausp18kzbKZLM+L0kIiQQy9G1wqerF3I?=
 =?us-ascii?Q?k8RWaMNXifik74e8UgqY8UD8q0YwOIQIn3yTJ8JyQ4HRafb7lDk8+hqv9McH?=
 =?us-ascii?Q?+E29OZPHRlDQpCONZw5S3tRC2hEfR3NikPEfVPI5lOrNK82GWPN8aFI0cz8/?=
 =?us-ascii?Q?lsX9QWjnf2WZdLROA9j1SFpeZ2MabJQ6s2W37b0yonVfp6uVmX85UiNmcp3q?=
 =?us-ascii?Q?7yYap+iRipSyru76D0CPCw0uMq7ylUNbWwrKFK/MDmuwlYbvGLnkZHvKGtIm?=
 =?us-ascii?Q?ctKpiwso4DxveykoZrp6cu0eMvzaGOaoY4/d8ZBejURYUmSZHoeGa3zZ70Vj?=
 =?us-ascii?Q?+GskjFORWBlkcd/ykRztE+mOrD0Jvw8+HMftlH5tVWpLnMv91vKJmJGEo7N/?=
 =?us-ascii?Q?fXPoejxevXP/DwI7d9bJb/x7HFle4reFy66b5gPRq+hmHDy4q0PekPVQ6l4m?=
 =?us-ascii?Q?w++W2oFP0Nkdke7tL8l1eCUFYv7c3076o2mwQLS5+O8bBegw7CudEvmHfrLR?=
 =?us-ascii?Q?0pd6J+j9muhpEDjytUmNYz6oxEUdGXf52Xm8h9cjmJZ5iQLWvbSzgTOQcjj3?=
 =?us-ascii?Q?AAWOA8ECqnA8O6y69oRneZeVVY1TRVkimosJ2KzAaxlnvu0Nvg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SwLBspXLD+OZRXtW9zNIM4iHrZ8DlaeW4g6DDiYHv0oUZiEqNoOEMX+fC18d?=
 =?us-ascii?Q?tVDN41W+kKbP5sptBdOdbvKkPxWH299Q7CvG+FXYaavj7lxwuFzLUmi3EYj+?=
 =?us-ascii?Q?XPlXv7L5HeIoMHGKpVJqKwbPhknyfdG1avp94QfG4OGz32aNWyli5QYI0NPK?=
 =?us-ascii?Q?EXES9TNwM80HiGhLga8AR51Ui50UQ9L1TtMfFlmdzdv0vgPrbtxpSjc8/R6e?=
 =?us-ascii?Q?iOKyYvY4uwxJqnEQmG/3LK8BHvoqvwGvBlRt+34TQnx00JwTI9N3OJ9iB05r?=
 =?us-ascii?Q?ov3zK9JkxuYfaDihgHvfkTn+PbQnHO7jU1ZPvsd9IT0hKDN2FHeEDz8T0bZl?=
 =?us-ascii?Q?BM4NXL/6SYRBeIqi4y+sa13uGvfKdvKOaF6fy65xdqRVsJms+K8xsGTnvd3i?=
 =?us-ascii?Q?5mVa/xmT2QERryO93wP+uVxI0JkXlHTrJlCOSTuzlB0cw9tVD1rWCRgDWajQ?=
 =?us-ascii?Q?sdq3fu6jLdPdPMNPbk45soA7LlEN3E2v4z5rKc9R1B7JcmD5XnO+Eo3d04QJ?=
 =?us-ascii?Q?tKc+FoCSLFS/EMURO08MnIeiN7Oy/6MuhuV308IN9qk1pamb4eh2NfQkAZx2?=
 =?us-ascii?Q?rFiCPhcdwjqvydtLAEHLT/4l+9p7U7vPIft4C8tViX6swwdaPqudeITd6HuN?=
 =?us-ascii?Q?uYwNnF0CEPOpJMFJ5yE1lNaY2Gtg3NM//iWGSBskdgCsFH++QgjCDXR+5BjM?=
 =?us-ascii?Q?IrjkpbA3LxV+fjI0ZthpA2AdSAtSqA32HKGTmPy774wxwv6GqwdPDcVhJnsZ?=
 =?us-ascii?Q?+5jtXHy5qh+pt7nQH8wP+AOAJts9oyj16ie4dRk66APlez6mjv1KCqV72IIf?=
 =?us-ascii?Q?riOO87tr33kP2wdUZDqRU68KOdm8bt7GInvx0DD5VUeiKdh6gFDrqSfmVG8w?=
 =?us-ascii?Q?+ItMhVfUdwy16rPcWckvMfRLCFxwQmlmMhdmsS6qIphe/aNj1Kak0bCpWh13?=
 =?us-ascii?Q?dTbpxr0AqM89ROJp5tNFgLY5JVcqfJ9OvBajCY4YM4eWokOKaqLKkFs5D5Ty?=
 =?us-ascii?Q?GpF0t1CD3QcdTKrJaBrDAfQDqxFktzhwWpJVTY3+T/Ru42oy6wGpdpsEm2mX?=
 =?us-ascii?Q?oFYhDbS8zS1az3+d/BJN2wfKmMDaIUwcSWkexaIx+XzJTFkUUVFUhbXvnWYN?=
 =?us-ascii?Q?1eygRQGSmK3DcRM7jQpjxAIBW4ZReLcTM1rTmeLM+i9Dayo6YiMRNOORwYxc?=
 =?us-ascii?Q?4BeNbz0F5+8WE+wly/DuGBtHsSd4OTR+uxRukwV5q5DiCPLw6AXIKaf6SEwf?=
 =?us-ascii?Q?g0zYWhUTaD1/bcXoxbnTGiOsFWUPpNcFf+6KDOoy8M2rBhbY9NU8gOMJEXgb?=
 =?us-ascii?Q?jJRkVohv1vsNisn91jli9jXMGKhYOpOiXFG3kvnwov5c+PF31QSIdvY0nzrA?=
 =?us-ascii?Q?sry3UePYJIZZHQAt4yUsLpq/PqDRkugOVGFAI2KUN1fj9c6oxfxHfb6EjkpQ?=
 =?us-ascii?Q?80tU4VamekhnTZuQ9AZM5xMJWWohv5jlJJSBA1zsLHv4nA4pkQlYTd25mxVA?=
 =?us-ascii?Q?UeXDQ/8Bwjpicq128zJsEns/WzMSPGgNwKOPhpBoKGoYSbU3pZ+48Cr3Bsho?=
 =?us-ascii?Q?SG1eEZT5aifpaa94BiDowvv359u6kJhRATvgXtRd?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3151ab83-0d5a-4a0a-0b32-08dc9fa06c0b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2024 22:50:53.5379 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q+uZ759Rbujf0BqtYfZ9q5iHIzuWJ/3/uQuP6zomZMon6SwQj0pWWvZ0v45t++Y808Z5FtaQReo3yu/PZa24orwJX08oDYFgewNmfYACNJs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6897
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720479057; x=1752015057;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qJcyww37hCzMGZ0LpP7C1sqqGmRV9xRnHKOmzDAbwDo=;
 b=ezlQ9TggB/mhUXKmL3I40/CpKWtQueQPn6trbZw+hlentrMGynFwQOB7
 dX8Aru+qxJeaaBKGLc2yufFQ3JMnPRMURGUfdFSAz5ER+xZ+ZzGLy4TqL
 eUz5D3B0vxJ1JxyM14jMYiPQmwgRJpOPejHAWwSxITT+FVMdHdrzH0xU7
 Xm+2WlRMrooqo3fGx1+aQ6dD3YiWXJllNsirYBteTIDrLY1mPk+O8RvmC
 58C0UNs8PEJYvd/II+Owhw3pobHiHGUf/VEpCYvPfwMDrwUVJ/tYyHlIF
 dtG+jSSogZCJYuacqfuLcYbjEjiAC8mX/acmyhkyDgMpM255LP5xxcGgP
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ezlQ9Tgg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/3] ice: Don't process extts
 if PTP is disabled
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Simon Horman <horms@kernel.org>
> Sent: Wednesday, June 19, 2024 9:41 AM
> To: Kolacinski, Karol <karol.kolacinski@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen, Ant=
hony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com=
>
> Subject: Re: [PATCH iwl-net 2/3] ice: Don't process extts if PTP is disab=
led
>=20
> On Tue, Jun 18, 2024 at 12:41:37PM +0200, Karol Kolacinski wrote:
> > From: Jacob Keller <jacob.e.keller@intel.com>
> >
> > The ice_ptp_extts_event() function can race with ice_ptp_release() and
> > result in a NULL pointer dereference which leads to a kernel panic.
> >
> > Panic occurs because the ice_ptp_extts_event() function calls
> > ptp_clock_event() with a NULL pointer. The ice driver has already
> > released the PTP clock by the time the interrupt for the next external
> > timestamp event occurs.
> >
> > To fix this, modify the ice_ptp_extts_event() function to check the
> > PTP state and bail early if PTP is not ready. To ensure that the IRQ
> > sees the state change, call synchronize_irq() before removing the PTP
> > clock.
>=20
> Hi Karol and Jacob,
>=20
> After pf->ptp.state is set in ptp_clock_event(),
> ice_ptp_disable_all_extts() is called which in turn calls
> synchronize_irq(). Which I assume is what the last sentence above refers
> to. But the way it is worded it sounds like a call to synchronize_irq() i=
s
> being added by this patch, which is not the case.
>=20
> I suppose it is not a big deal, but this did confuse me.
> So perhaps the wording could be enhanced?
>=20

I believe the call to synchronize_irq() predates this as the same IRQ is us=
ed for other timestamping/PTP related events.

This could be clarified in the commit message

> > Another potential fix would be to ensure that all the GPIO configuratio=
n
> > gets disabled during release of the driver. This is currently not
> > trivial as each device family has its own set of configuration which is
> > not shared across all devices. In addition, only some of the device
> > families use the pin configuration interface. For now, relying on the
> > state flag is the simpler solution.
> >
> > Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output pins"=
)
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> > Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_ptp.c | 8 +++++---
> >  1 file changed, 5 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c
> b/drivers/net/ethernet/intel/ice/ice_ptp.c
> > index 30f1f910e6d9..b952cad42f92 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> > @@ -1559,6 +1559,10 @@ void ice_ptp_extts_event(struct ice_pf *pf)
> >  	u8 chan, tmr_idx;
> >  	u32 hi, lo;
> >
> > +	/* Don't process timestamp events if PTP is not ready */
> > +	if (pf->ptp.state !=3D ICE_PTP_READY)
> > +		return;
> > +
> >  	tmr_idx =3D hw->func_caps.ts_func_info.tmr_index_owned;
> >  	/* Event time is captured by one of the two matched registers
> >  	 *      GLTSYN_EVNT_L: 32 LSB of sampled time event
> > @@ -1573,10 +1577,8 @@ void ice_ptp_extts_event(struct ice_pf *pf)
> >  			event.timestamp =3D (((u64)hi) << 32) | lo;
> >  			event.type =3D PTP_CLOCK_EXTTS;
> >  			event.index =3D chan;
> > -
> > -			/* Fire event */
> > -			ptp_clock_event(pf->ptp.clock, &event);
> >  			pf->ptp.ext_ts_irq &=3D ~(1 << chan);
> > +			ptp_clock_event(pf->ptp.clock, &event);
> >  		}
> >  	}
> >  }
>=20
> I'm also confused (often, TBH!) as to how the last hunk of this
> patch relates to the problem at hand.
