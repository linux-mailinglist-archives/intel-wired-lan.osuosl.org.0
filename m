Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 032708FAB1B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2024 08:45:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A604661175;
	Tue,  4 Jun 2024 06:45:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xaARe52qnSZD; Tue,  4 Jun 2024 06:45:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EFEC261186
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717483542;
	bh=jMA6vUQf6y5SZXIDFvlOrpYg8ILV14bPk2pSmmumVIw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=t9+IP81kVlmy2b+rSRobAT/5PpWICsEntpxZaomc2hS5ATXPcZlj/uToYxD6B6Xcx
	 48ZlTamDy+UDPnPSmRYGC51ovE8DdXaTIR5H7EkyE+BbKyyPe+mU//6qq1BrkbeANC
	 kyPk8KWFES/FWekPXEj7uIwU8stbn0mqZ2ttrfGJcLLjXvi/o1YpDeQtwP0RTQSQjX
	 S4HvFBUpDlk8J5vPn4taq88ESBYVk9uJrQJyunR75RMV59m/BKS5ohRMvN98WmrzLO
	 cz3lrX3+u2yIN20uZiIe+m+5o7BNgb77PVtuSuM3M+Ii1TLC3IYlBpEK0QVMrd5K07
	 6theMh2rEp4Fw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EFEC261186;
	Tue,  4 Jun 2024 06:45:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 087A51BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 06:45:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F239E835A6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 06:45:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cuNs6lGvfAsJ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 06:45:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=chandanx.rout@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3035883168
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3035883168
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3035883168
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 06:45:36 +0000 (UTC)
X-CSE-ConnectionGUID: qXueWnWCTbexIo2CtrdF0A==
X-CSE-MsgGUID: uf/mV6LIR7OtvE6HeL2JKA==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="17840968"
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="17840968"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 23:45:36 -0700
X-CSE-ConnectionGUID: Pby0jhjrQiaoqT9kW3IuAA==
X-CSE-MsgGUID: 3OLICrLkQg2lvB2lQxBAnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="37223934"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jun 2024 23:45:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 3 Jun 2024 23:45:34 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 3 Jun 2024 23:45:34 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 3 Jun 2024 23:45:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jkaffdUfaZc3L5GlHA2CB72TVBCZLVyELxNJVp5EzLd6Kp4e6hbuv2L73KVj6LQnXGRG5Cxz2LVVWJHO9LrBGpTveJ1AOBKe5mcnHNDd89ZL6Ip/l/iVrBVFLCyhQwXW5HgPjGRF/xyDxcYYdWoR1tHx95PbxiVQufyUzXvlj4CKR8ZrrGjI9ht0gvH9xCclmDow/5cXDgJ7/vDo/RK3ZTNeA1h6Y4GjJVrpzq8J94semPcgjZh0qeoex7hNvPtSRRT2ewTMUQ0+75nbGAfoyu1iExD2LgvXNfC7QDZLFjW8kxQ7A6sH5sa9rf/H03Bg0bxromSvWVkrfRiNRdxQJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jMA6vUQf6y5SZXIDFvlOrpYg8ILV14bPk2pSmmumVIw=;
 b=DYzlJY5OTcWHZnxNPXdtxGTKr1NsjUg9SVErK66GC+CDl90ar1xCnwMFqIy5amg4jX5sPO5TmYA8HuhG4p7RamUKiazrb3ByDMRaX2l+yVAUL4e7CSwzjfdsNrUTKH8GLQLFF9qVVt4rjE21dYBoyVCafqkYyFrqVSGVYwXSxhCvdcrALAjUdTyOpeD46lX66gQyxBwkpCqtPNaHwHLoGpXqNBN7Q9FwBS7ftcecxaTajdk8KEw6FDFQak0pfgoxH956AnOx5L4t1iqgmA3RmsHCrlG0J70mwHmwan3CXPwX9Ta1g0YM9cc5qFWmCADWKF3JgxCpfKOX/oHzALpRkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB8297.namprd11.prod.outlook.com (2603:10b6:a03:539::8)
 by LV8PR11MB8584.namprd11.prod.outlook.com (2603:10b6:408:1f0::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.27; Tue, 4 Jun
 2024 06:45:27 +0000
Received: from SJ2PR11MB8297.namprd11.prod.outlook.com
 ([fe80::f3af:9f9e:33fd:8b22]) by SJ2PR11MB8297.namprd11.prod.outlook.com
 ([fe80::f3af:9f9e:33fd:8b22%5]) with mapi id 15.20.7633.021; Tue, 4 Jun 2024
 06:45:26 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-net 5/8] ice: toggle
 netif_carrier when setting up XSK pool
Thread-Index: AQHasbrU7N+W4VnvzEaAbqOkg1vhm7G3Mc6g
Date: Tue, 4 Jun 2024 06:45:26 +0000
Message-ID: <SJ2PR11MB82979C8E88BF7DFB26453DE3EAF82@SJ2PR11MB8297.namprd11.prod.outlook.com>
References: <20240529112337.3639084-1-maciej.fijalkowski@intel.com>
 <20240529112337.3639084-6-maciej.fijalkowski@intel.com>
In-Reply-To: <20240529112337.3639084-6-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB8297:EE_|LV8PR11MB8584:EE_
x-ms-office365-filtering-correlation-id: 7aa83840-3ee2-40d8-9be3-08dc8461eaec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|366007|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?DFzX4AymyUcL7S5wjdx9pS7kOt7v1HXc2vAFH+HSfjhTvKagD5FElDKHVJc0?=
 =?us-ascii?Q?WCDON5ddUYBtSpkzV2eBnj1FEd7BlebtT5INuJnHxliqzJ1dW9RYnX45SSMH?=
 =?us-ascii?Q?WBVr727E8E5NvvBfexW2GiOO8vBL2Yf+zYtR/XgnANvYuBDgX9JFB7OXpeJk?=
 =?us-ascii?Q?UO+y6LZznN+NrTLcAZrSLUu4W9f2bJR08RZ45CHS7hz1/u4ve+jWVb54Dp0H?=
 =?us-ascii?Q?3ad9C4NgtxjHK/Rf9MyLQ+BhO/orU1qPsAKf+FXjcoD2EqQcIqa6EjC2M/C2?=
 =?us-ascii?Q?i0z2M1aYqfygKP6VXR6GF04uvxMyciWa7Z4J97Wz5sOWYYqkIZH7p8lDVaUL?=
 =?us-ascii?Q?VGCKIbDuDkDx8OiuMOBvXPN1oWxDPc2CWwNVbdRKeVLP2vbD3NsTnhWOj4Ny?=
 =?us-ascii?Q?KQsX+IpBuQOeKTKmEQztaXNyqNvI68ciW8izl7/Kg+4oSzwdQBjDihjZYjS5?=
 =?us-ascii?Q?e7F3wAMt92KNArT7v2dZSzW70m1pbB/aSXcWxXODdSRfVX7RvxllGvptiFVR?=
 =?us-ascii?Q?zubW4rP2e+c6SVFL0nz724csm7o0cJ61yb9WcLnC2+C0ARc9UqGKb3JGasww?=
 =?us-ascii?Q?Upm1YiCZbqJqFIftlB4xNnx5nJk5jgOaGNMRBFSfWmP9eaOPJRUScWGAGws/?=
 =?us-ascii?Q?zDOcKFI17FWk4TuLxw534ljY/d3Jqgg8hzWQckl0UECrUlXKAipm2WzuQ4e3?=
 =?us-ascii?Q?W0ATepKepSch5nuAI3T7n+OXdmgk7deT3t7XlQfM4bzJ05BJUtnSZjyXMWUd?=
 =?us-ascii?Q?+HoKbfC6+qON/6sH+sxGyebeX8jbeV3swKUCLWvlS+4PJ1ET+FXt6Z8xMXUz?=
 =?us-ascii?Q?Cp0yH+Lybjl0/W0+btM+GSfZuRQv8vQwEaqnxinS/EWxV9CYqII906achhnM?=
 =?us-ascii?Q?d/Nd/iGT5HO7T4Ody/JvW9aQOvNtGXa3p0ayNOT1Z5rxjQynaxNfs7XpFCnZ?=
 =?us-ascii?Q?5U8jjJHfYndRN0f4H0rhsEw0V9UNMca8pKoorcBIjAVFDjpDXY0PGDBHVC98?=
 =?us-ascii?Q?e/zqSOQ7IGck15H+FnqQaDEKreA+nhwu4wAE3xXvxngsZIM5ca8C9TuzO5gE?=
 =?us-ascii?Q?UEnp/twyDi4mefm2OiSvum1B6nblZK63E0cjiKoIj7sofRInEAS3ayDZyMmF?=
 =?us-ascii?Q?mISNWXSYB31/EPDxHdfyj9hJeQqmdsd1/iJ5YHaMxTh9KEhec97F9srs9eNA?=
 =?us-ascii?Q?Qt5/RCJkbAGIBkLQCGFWSqhuakxhA2ES1Qq95cJxYmqEPvoZrgrsDVwvf005?=
 =?us-ascii?Q?H2x4LVzYjS4rL26ce0dsXBfZCFEgmP3++lwmrzCxBDnTxFiJOR0jUh9aR0L8?=
 =?us-ascii?Q?pzvxqfb3ht/Gg8rGlDB0CYlhvsnRo+MO2WG1+L9fgNl7ew=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB8297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?q7G7iCgX/G303gL06/vE366BiDOIRbgAhVKbI2wW9Oe7C4eomBtQwnXoj5cU?=
 =?us-ascii?Q?OJATgrw0sYtHC6OHQ+I5u7NQmngjjlF8GdHL/JE8eXPdbjRaWx4XB1hF9xhW?=
 =?us-ascii?Q?+OA2LeDW1G8+FqayOTj25oz2wvcXS16dgU64kMMwhflFz70zJ0X6mG0UG3K1?=
 =?us-ascii?Q?xGlLGzarV9ACO4ifsT3Q7g3YpeNijPXnJ4yxNFAX84rVrkpwNFKt7v7ZALea?=
 =?us-ascii?Q?FWPKTtRpI0H0/AexCM42b++gXOeKGwdQiL/+65N5tTq8wqTrdHBBUbghfvw8?=
 =?us-ascii?Q?KMtsvRhsz8Ypcl7oO5RFvlirxzKKe1sRbLu7rS82sChsYqsVN+BuirZR3M8j?=
 =?us-ascii?Q?rTp/xfDB5UAyyut21Eo05Dw5q9jFWXN0o6UWN2FDF9elba3GkjZRv756R/CB?=
 =?us-ascii?Q?M+wxKWq1yA7+UJM9yXmjFWtRtklU6XX68PGCEj/b4+hbpvUtbi6mNG2Jr101?=
 =?us-ascii?Q?q0nN5SxYUSZsvpyTvz8y1ou6Dr6xoYzFIGZ5J8MHsXHMpL9n4Kk761ZWSQHD?=
 =?us-ascii?Q?pyiTvH9IYRWoEKRkLTiZKDmBKNAggurm98uME8gfPeiWwP6negoXgYBIJ6dm?=
 =?us-ascii?Q?2bmkL2DIUFLH1wFK/R+mZRcyvzm5WwUt43Ut7C8u2KRMcWCwEq3q6k8WAoqE?=
 =?us-ascii?Q?PI4VMbQNC2s6+DvpL5+fjfJKGCUwjpPzaH/G+T6uN7Mp0Lar9Qr05c6TW0d5?=
 =?us-ascii?Q?CkPGQhlrZ+9weHzVj2/Gm6kD3e/Z/AQTPwwHlHQRHY1Ofybrg6ChiJoz/0WZ?=
 =?us-ascii?Q?wSI2k/X5LnxQjMHP/fojkqhS4eKDFKbodkKvMr2wYoL+V8gJUeU3t4/teO33?=
 =?us-ascii?Q?pvkoUgYNRtds4d0m4/ng1yuL+H0H9yoOUrp/Ue/O/7Bf+vz9yg1SoxQvXTI6?=
 =?us-ascii?Q?XpWHij4Evjks360FBiqWGb+//Lr/XZUOQGxnWNltFLh4DaA+ROSMonPdk6oS?=
 =?us-ascii?Q?W0qXF9RVpMiY9zSwHEe60qhug6wJS0QC7Mny8rs+Vx67dF/o4aQUK6FWZ1Y+?=
 =?us-ascii?Q?hn+A1RNlXF8J4JDveiuz36xeowjK5B+vE3ZaornUQb8TL+Py2M01N8GBK+/6?=
 =?us-ascii?Q?iY7rU4D4uy3hbbr93lSK/+xpiSPPRJ2nA+PsTpUc6Mh9XJyzF+N4IVd49E97?=
 =?us-ascii?Q?0rlV2HihybJw0lyS7KGu2YdmolUtJSPqvgJNR60/6CO3Z3YGVUXb9r0K84WJ?=
 =?us-ascii?Q?acCkWbT3cjdtrtNDhP7QQEskS4LZ5mzX89LXHxnxehu+Em6H95VQTxn38ZNF?=
 =?us-ascii?Q?0xwSPIEUXNm6xaYmIB3GD/T9/ATplI3yGl/oI88R4FVQ+wHlg/ih385RiUH4?=
 =?us-ascii?Q?OWr9pAZ+bGwG2+j2UUL1GVDeAdIugTeS8Qro6R+wjHTJY0lwCGXwKvxF1fXl?=
 =?us-ascii?Q?xk9JNzgMza/dV4m9wXm7UPHS4ZCdCSiUAMREIw1WnD9rPr4DJUwCnFYscGuB?=
 =?us-ascii?Q?rEawLWjIhQkF10M5o/qttfeHesN5ZgbSxRaFIQXxaGH4ToDwhxZ8cSHDiFV7?=
 =?us-ascii?Q?2SeC7vQi4c0oytrmLaAU0PobupeNXMEfKC8G6lekwsoO95Is/7/510bevSfk?=
 =?us-ascii?Q?78M/7CsuxQCpS6Q1C8MrkWlXRIvpWh/iCI6lOBRf?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB8297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7aa83840-3ee2-40d8-9be3-08dc8461eaec
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2024 06:45:26.7437 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SZoJtTsfF5CUZhuIQ9zY20exlaOl0XlE2vRT2q7o8FaqlplPAe7qszvU8bo50G6QCNKZv40if4dKdZ9J6+SIfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8584
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717483538; x=1749019538;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jMA6vUQf6y5SZXIDFvlOrpYg8ILV14bPk2pSmmumVIw=;
 b=I49bOrVtsw5MCqW9WYh64MoEMt25yJzvJ5kvnOh8r8fmI3B+zZPNCHMb
 S1XaLa1TUoKo2MxN4kMRoSESK+FqIJT2DSBWfz+ODuEnB2tH4hQRSQnZn
 GZf0tYm3FHLXUPA7Jjf9HWcdiO/pXGnfXruKxcLgj5zpWQWZ2MxjWigET
 jTdURC2aloAmPdbsI53l2G8XtBjGKdv+z8YPDF0Kkc1uw2XrJk2cdrbj8
 g7R1SUCbGQxUNN3nIueV4KnVcONpU4HAlwbeyOmnRp87jXZVqEHsufibB
 tKnKphKsfVwMvf9wXgLTgbRL0m/zXCgp8Bn6ORbHF96SZwemTq8FMHpev
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I49bOrVt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 5/8] ice: toggle
 netif_carrier when setting up XSK pool
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
Cc: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Pandey,
 Atul" <atul.pandey@intel.com>, "Kubiak, Michal" <michal.kubiak@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>, "Kuruvinakunnel,
 George" <george.kuruvinakunnel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Fijalkowski, Maciej
>Sent: Wednesday, May 29, 2024 4:54 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; Zaremba, Larysa
><larysa.zaremba@intel.com>; netdev@vger.kernel.org; Kubiak, Michal
><michal.kubiak@intel.com>; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; Karlsson, Magnus
><magnus.karlsson@intel.com>
>Subject: [Intel-wired-lan] [PATCH v2 iwl-net 5/8] ice: toggle netif_carrie=
r when
>setting up XSK pool
>
>This so we prevent Tx timeout issues. One of conditions checked on running=
 in
>the background dev_watchdog() is netif_carrier_ok(), so let us turn it off=
 when
>we disable the queues that belong to a q_vector where XSK pool is being
>configured.
>
>Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
>Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_xsk.c | 2 ++
> 1 file changed, 2 insertions(+)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worke=
r at Intel)

