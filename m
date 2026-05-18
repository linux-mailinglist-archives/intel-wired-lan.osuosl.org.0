Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kE8+Gd2ICmr62wQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 May 2026 05:34:53 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEF256575A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 May 2026 05:34:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E06042A16;
	Mon, 18 May 2026 03:34:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E2dIAm6yt7ZV; Mon, 18 May 2026 03:34:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9ED9B429BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779075289;
	bh=emUqxYAn4tU84ik6sj6RyIaGfuTwDmVyTU18SoA2VVs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kiup84KBZlmOG0ykTWp2XTMkmu9Rfr03CwQLiSGHwr7uwNxxgp0dUj2hZGtGNDfLF
	 FEuogbCGoGSvMqCRO1BPCnvRy+uIspyenYw3lXXUEKbH88TPueyKXWxuFMSf51Z/jK
	 HO5jJg4Tq1Vs/L34mQL5ixrg1wGvXtjKWWd2NF4AAF8L2IYqxFfZEk5fRkaNfxStgN
	 UkmxCT52E+nYPlSyWZFBuDfILhNYpNozBV+zsVtN1T+Y7zoOI3H0HlVn26100DxjgZ
	 kxv+8bwgmhakiqMN2g0IpwZnbA6qr5uf6ZNd6N1Arl3VNi2BghuiV15vfqsb28dZBj
	 vpOwJhgXR/b+Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9ED9B429BE;
	Mon, 18 May 2026 03:34:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CF81E1B2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2026 03:34:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CC7424214F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2026 03:34:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FHiHA8ZjfNss for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 May 2026 03:34:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=sunithax.d.mekala@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2376440380
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2376440380
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2376440380
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2026 03:34:46 +0000 (UTC)
X-CSE-ConnectionGUID: /vX/jMqMQPOMPDN0eJ8d9w==
X-CSE-MsgGUID: OCmgkpUORDCsyrBI9C/n4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="90504760"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="90504760"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2026 20:34:47 -0700
X-CSE-ConnectionGUID: A5kxvK/4RNa+hx31RE6GRw==
X-CSE-MsgGUID: zDt/XnOPRPqme6QqpKkAYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="239542042"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2026 20:34:46 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 17 May 2026 20:34:46 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 17 May 2026 20:34:46 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.48)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 17 May 2026 20:34:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=emwulAAI86e1vmEO2odZvkXtgVT5Bp0m8vvkNsHhlNose2rP7hwp/x4o3CjJuZrMHonXZIA47tGebqxyxi3UzBbPUHXx/lKR57w0MtgUay0TI0HkZCfScffQwKzrUj7Mp/ubLEhOHLSv1mVug9xp52672eDsp5lkpYISgf8HJona2CgP4f1XkiqVOJnSfud210cNb1yryGhJgDyPFL4HVvgNlv/nyfePbLCsq3xyQtvRfhaesKbt6PPTU2rUYSRfrFB0jW1azEUy5SnGtUMAYcVbDM/JHOE7dUqgNRv1l0WenlyKIoHI9MMeNIqrc7t7eIrhKP2b1vQPNB5P82RT2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=emUqxYAn4tU84ik6sj6RyIaGfuTwDmVyTU18SoA2VVs=;
 b=jLlTggT6E7NZDWqZSILGC+Q0nt4iAPWbCPHPYG8BVALAQKv+9465vFfy+wJiNvRBFndm5h/gVQvOFk4WL1cAzYPaKYMOfOpuAvoaGwomVlLuBHM35t4dd6iIKeQoXhWoMsN+LDaZ1JUvk0D8Rsmz7SABBlcDGmd6pwevRchTpGcO9dr0RYq3vJrE1kLkLHrfJzijlHRtIIhfUeqiVftCP4lNNERoijXI/7nBKpBZITbsOAEKxXZjfAPvyi2uIkzqGMAuYTrnQYBV46rJq4PvmnVKBGalOZXB6r+bf0knZKs0Egc4dqAoOn090UWKQfmuSkRgsvDPiUxBu5UkJ+OXLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7522.namprd11.prod.outlook.com (2603:10b6:510:289::8)
 by IA1PR11MB6217.namprd11.prod.outlook.com (2603:10b6:208:3eb::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.23; Mon, 18 May
 2026 03:34:43 +0000
Received: from PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::ba5b:e8f1:5eb8:3ca3]) by PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::ba5b:e8f1:5eb8:3ca3%6]) with mapi id 15.21.0025.020; Mon, 18 May 2026
 03:34:43 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Korba, Przemyslaw"
 <przemyslaw.korba@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] i40e: set
 supported_extts_flags for rising edge
Thread-Index: AQHczMIAY062jxwS3kKDSs4QCjQqTbXsHBbw
Date: Mon, 18 May 2026 03:34:43 +0000
Message-ID: <PH0PR11MB7522E9A3AF8F882968589E49A0032@PH0PR11MB7522.namprd11.prod.outlook.com>
References: <20260415102511.1560665-1-przemyslaw.korba@intel.com>
In-Reply-To: <20260415102511.1560665-1-przemyslaw.korba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB7522:EE_|IA1PR11MB6217:EE_
x-ms-office365-filtering-correlation-id: f3c22704-44f4-4506-a22e-08deb48e66b4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|11063799003|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: VVbuioQUsqfl08klVoM8PaMV4GVwHhuTu15sXvjSUnpaFqFsV0fXVaR0q1udnQcuc9ycz6oJ0osFk0/SHovW3mmBKQCxV/e5B8LgTGBEl2hNKemUGacaXsGrnBcuhawBT2FcarmDf1LKKTgbX096w+khA6lYbNavQHkzbC9/zxw4xEgRvL9fYHLNdWQQxIbeZjUd4EtpWhE15/Z6KN49jqETQ/xjx5RlchoRL943eacBiSnd0gXkWuYLD9QkG7HdUb0gbquiBhBChQnYBes0YLhgLcCYwYBrJKgswJ6xKAucRftkKyXNyjLL0VsSYeZCa3LgclqfZknbYlGwbqH8UrcJ10QScxEJpv2VP5p5W5tUrhTDxffiypzQNGmt7AzsjEiRIY1XatnhT3SU9RPVdosmUFB2kPOMKxixECT0w249p8Xf8TKVlpuXTue3RRbu8qoPmQKDICISLhRuWYfLSSas45BzB1JkBDORh1VScTY/TkN7tlhPwRu2v+HJ6cmF8/c9+aN9czFj6/W7AB+zfj9Hd46NCjSR1X6nGqL0HGx98+6nGO0jP6sOCzoXxKfO/NkwHbA1ckrgXwAS2qCVohkaJemq5E6pwOne5I4xpJxeNPzfNOUaTTAwJyy3Qg1XaowFrjwJp72LMrt0dkPqSVsJTh3/cSWNVyU25CWOzoPGvm717WYESG6ZTpNFv1k9WKY2RJu/s7psez2cJcrRQGgjhxv0ahQe/bPs6FXBc4tE4P7gJgRIF0YjFAk7a69u
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(11063799003)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?F26r2M8SHnvi4NpVg7ElDkBDk2v+v34aZJ7/qYQgfDCI12vyuMfWPktgwQE2?=
 =?us-ascii?Q?qK0gxbFcwda3wD3qISUpVcqm6Wfao50FuW+CyF9YELh2sgNSTO4qqAIH0yig?=
 =?us-ascii?Q?ytzkKMlBoc2wlD4TVAKKgH5xYPf+XzalW/U8aFi3KnVB8sEaSSXsvZ2pVjR4?=
 =?us-ascii?Q?2PmtTMrykNZiFwfnkAZA6Nx8IA9HXho5nXT0bepok+7ieovSkzByO/S6L3h2?=
 =?us-ascii?Q?1KFnMt3h49uLz8PsmjjUk6pgOs0kE23JVlIHhcZLHkhiWwVRlTN3rkjLz3IC?=
 =?us-ascii?Q?gCggbtBr6/U5VOa/VMllSo+OA3b4XeQ160NvvT9pD8PTQCCkPi+j24uoZODQ?=
 =?us-ascii?Q?LxBSUwobL47pNUkucngmwXJS7zTyn5A520fJpcH4BLvUKhxjpPM4iK8viXYg?=
 =?us-ascii?Q?J6J9/MVkdVBu/vMmad3NXvbAUq6MTHs/4hxgh5jrVRIQvVVngVetnJilzsxz?=
 =?us-ascii?Q?HFCTm2z9arEuxxkoyIw+YzNByLQ0WlFWm2ZSpDJ2vz9gjTwZqui9+upPkmZ3?=
 =?us-ascii?Q?wt80FQLr8Wvo3xhKNuvAWrWhBldWisUB99gAqnhDQNzmXbq56yAY4D7c8G1J?=
 =?us-ascii?Q?tMPgyPJYcWQLDp9OtjPRJl0I8dayvWgjKHuSSq61ghU4jMqLlsjlrdFFIfEH?=
 =?us-ascii?Q?r5W3hJLm2z8vPgmk2CRy0beG5hdup6AYL4hIHHw5Oonl4C6o4DDOtdJfYfxb?=
 =?us-ascii?Q?AcUmEP2uC9BXrVLld3i5MNNl4FHU1NmUD1lC5Kar/OlAllNeWIkSRcRuOIxv?=
 =?us-ascii?Q?KYU1lx/vRftHdyuedUMy+zGsItg3TBobJ0Yx8C6YDG4zTYJplwgLx+5yFMdp?=
 =?us-ascii?Q?HCiJcPtKnFUVfqPMDEZFheKScj0+nNN+AwHQP1pfVdWgq3yMYKtmesV5knbl?=
 =?us-ascii?Q?pvjBFuwmp+muwutbRHO30YCPOdS0xA8R3bguItgdj0vRAIhgFSBN0O5sqtmt?=
 =?us-ascii?Q?31k3DDKxKJZFpYSExDwloilJfqsJ847p0Ssn0dnewSM+LOUZwVwCmXX5NEOS?=
 =?us-ascii?Q?jVe9YfElm8QF8ktMPHVlt6IEhiZurniKz9xAz7eVLzegR3mJbYGsBa2vJitR?=
 =?us-ascii?Q?g3pyvGAzBFPobJXMv16l9as1ZqPc3hIUshioh+V7OkQzqbON9cvBy6Md7NlQ?=
 =?us-ascii?Q?g6c78gHUS3peehWJDMuO1L4Ckk1AfdfqWRCmpfmi9hhtLHgJTSgALDtR2AqJ?=
 =?us-ascii?Q?3pU1+mlvx9yFagE+4/PnSokpgoh9CkQhNwQ/nGvdenYEPdv77N02mvo3Drva?=
 =?us-ascii?Q?mL7WopTWpmzcdfm7v7WhP1HdsAEdUfrXDHZI/OH/vxtbqooU7sEuUOVpmmQ2?=
 =?us-ascii?Q?hVNmCvGXhXAY6uxLs98Iaz8qx29+rUlGcPOLF2WL8MMclJQU+Sbm0LJMGC6q?=
 =?us-ascii?Q?/fVRGhqC/GySrVp+RlmWcDIwKTni1GROZKBn4uDywkX/ENVvY5Rw6V9GCjOr?=
 =?us-ascii?Q?F4SKSkJPwVnmiFrYTARMNCYuKUswEcb6ikyAufFeGgWlfp5jPEf01ttjq4Im?=
 =?us-ascii?Q?JC8lSTiFi54VJFRwpCUVBNv9UfVZ8/cqYqX5uNGWC50tNfJMvva1h8T7F6eu?=
 =?us-ascii?Q?mZkYuqbDEPu5uApaHKF3IhHRR8u9WiRjWJP+epUrNRqC9/6OtHDs2xLSwVBl?=
 =?us-ascii?Q?G6TWFBuX1gDAnh3pxcHMeecGpiXCD3sA36GlukcCMrjwhAJyGajorFbj755Z?=
 =?us-ascii?Q?+qCARwb0IeSd28ySLACKOd1Iv9NKOOP/gX41HMq7tYx14JVxcg8H5PcF8Kzi?=
 =?us-ascii?Q?Qq9SMhotJA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: UDgZnGci1bWS8lhT5PpKGqmeczKplV3jdKgypOAM3up8P7nGCtDLIxLAA3gonYLJvjEPIXaoYlkOopTiBe4YT7Wgj5fx4quvnjHisABdmo5MEum8B+ZkV6Ajrr9aS2IZ0gYq7T7VIY9AezR34E78VdoUIqZOEWzncfSUvqZfWnVaJ3UGmaJufYzv6OeSLs/E+VBLTXGWkx51IbtQW7uPIT5pmy3jgQeRhA/xc7WBsWhHMGr1M7AErVxT0Qe9JD9Boh5ID5LddH0s5VEDMxmwkNzx60gG18ggAvLletAvMx0An/EJC8K2mObFXouj0SpS07tNmwni3IJuvXL5c6QNNw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3c22704-44f4-4506-a22e-08deb48e66b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2026 03:34:43.4495 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: igOqeY2vdAt2BTNnCNSNt7/8er2aHG3fWnKjhbFQjhluFb1l6PJyGEhgGGGDF25WsdOKTYaxOA9U1fY6rO5R4D3Z7EC1Cakc1Dk7hczz3/4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6217
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779075287; x=1810611287;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2KAK98+UmBTLmYZEgitXI/AtIZAbD4CxvNLbwT/ccCo=;
 b=Pah+Tv+L3l+/U8Lta3QKSyv5mcLlpTITfZChLXNYOWwkEVTnZ1MdqXmJ
 a1bGeuWD6O77jXbYOBFyn60oG6LfHHlpbqa0UDsHMXIsUa7ndJm0PRpum
 wXf0GwrkZtfpj8g7bySGPb34xwnOp34k4WmtnQ37g5h+kbL9YejdphqiI
 nryGzeg7+DvKSgzxyrHB0tilcYgKEul++fn3qZplK9ggENu8uOvnODaGP
 vV8NeJRk3/tiHd7dkR9U1juvBmB4QlffxeDRTlEzTWU2gZwJT7tbTaKQx
 7zSWsZaLM9IMuyO46Vg/T4ec4SB5stYBbQgnWQR0/oVbgku+L/4JE/CEK
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Pah+Tv+L
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: set
 supported_extts_flags for rising edge
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
X-Rspamd-Queue-Id: 3EEF256575A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[8];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemyslaw Korba
> Sent: Wednesday, April 15, 2026 3:25 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com=
>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Korba, Przemyslaw <p=
rzemyslaw.korba@intel.com>; Kubalewski, > Arkadiusz <arkadiusz.kubalewski@i=
ntel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] i40e: set supported_extts_flag=
s for rising edge
>
> The i40e driver always supported only rising edge detection, so
> advertise PTP_RISING_EDGE, and PTP_STRICT_FLAGS to ensure the
> PTP core properly validates user requests.
>
> Fixes: 7c571ac57d9d ("net: ptp: introduce .supported_extts_flags to ptp_c=
lock_info")
> Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c | 2 ++
>  1 file changed, 2 insertions(+)

Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worke=
r at Intel)
