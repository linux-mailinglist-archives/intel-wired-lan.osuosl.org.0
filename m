Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C7543A5D64D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 07:33:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 887D240826;
	Wed, 12 Mar 2025 06:33:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t9sxZq2CN1H1; Wed, 12 Mar 2025 06:33:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 291224082C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741761209;
	bh=tiQqqC9HAUEkMogCKhOhRyYOtV0ZE+Y9HqYR16FIRnA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=o5fndJoKJL96ZDeuLJ/V8mFVJM2p4WsAEBhiHgLbHCYD/JCyv+3YT8CUMJnHt0UaF
	 2j4ztBIQ55GMxaYdiNtoZOJ9GyJQOPosk4qNDCJSPgrr/bcnNJQf+xCkkwZWUmQjRr
	 nnLpU4Btf8HT3wTHzkbWaFzXAmR3Zel971mgu1OW2MerNYn1YCiAaoZ3uIvAxZR5XW
	 NCKkcQ1C/ydwCA7PmUH4T19oAG0/AieRAqm3sUPEDDCNlD8yrABoRw/uO9TloUeu7z
	 mfivwWXRDFikmdc3BiSvT5tX/l9oLPrRikvI0IMeEPTscd/1aKWRQm71aPGpUz0u9F
	 tvf3c2s8Lkalg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 291224082C;
	Wed, 12 Mar 2025 06:33:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id EA229943
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 06:33:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D83B580EB2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 06:33:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qLohOG1uULbE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 06:33:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E2EB7811F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2EB7811F7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E2EB7811F7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 06:33:25 +0000 (UTC)
X-CSE-ConnectionGUID: AnWJwbQ6RUOJ1qViPpZ3fQ==
X-CSE-MsgGUID: WlP8NpQfRYCmttHJXRgWUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="43030953"
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="43030953"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 23:33:25 -0700
X-CSE-ConnectionGUID: MhIBYIVeSj6HlocEd1176g==
X-CSE-MsgGUID: 3hce/qKZTOu61fmmHbb+BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="120571831"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2025 23:33:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Mar 2025 23:33:24 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 23:33:24 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 23:33:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ef6P1TOGj9UjWNQVjSA3yklXGLx6tG0mYmUjs447crxj+vbgozNctGuYnh9Mlz0A2Cy2bj0uVxvnpzfMG7FxpAoDvvRwwNeaGfrcjYU58Yvc9vxUNexa5GsuxXDNAHpATTpnAqbbnhR8THbh9wkumPlkzSl21m8qpV+Smp1ceC1Kp/lOt48/9jn4ZjH7TPrRIP3JTBKqiiVhxi1BIHWxsU7QSUcObW7M0/oqkr1Nbitt8/y21WebbSvDd7rjLn5+f0pfYfE+PkqhUzQDsRfYrbT+quRAx31VyBoISdyToz4kvIvvAl4QnoQ/5imYBv+5ZTFIPd0suO7BP/Xgsr4riA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tiQqqC9HAUEkMogCKhOhRyYOtV0ZE+Y9HqYR16FIRnA=;
 b=bf050u9cH8cYhVzgeOCKZLeiDZH6NRuk6WLIMgK8DcvVGmbKHD8fUuJXGU1LQJuv7Jiy2jhcx3ZCEgRnvXrUctn/sCC9l0c4G2ciTdpk6dgAncJUHK6Fu8Np/iThwzASEl1n5FQ6BbJeEYARyCznr8Ixww5PYuORp4eOPX4zBTpjg4xAzpaK3kv1cmY47gqi+orZDjedVHsG4byFGdu3oXwkXCY2lbftClqurEjCiwJ35WDNpWrqsdIzhf430F0fxftjRlWFM78mgtSX7eQzyhOLxmVLmDDgWAC42dbTx1Sd+zJkgjyE68j1/lzbeCWTIFdQYtoeFiL/ONOve0wrrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by PH7PR11MB7026.namprd11.prod.outlook.com (2603:10b6:510:209::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Wed, 12 Mar
 2025 06:33:20 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%6]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 06:33:20 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "horms@kernel.org" <horms@kernel.org>,
 "jiri@nvidia.com" <jiri@nvidia.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 04/15] ixgbe: add handler
 for devlink .info_get()
Thread-Index: AQHbj26wDzuBitLa4k64DLbEyNLMVrNvEjsw
Date: Wed, 12 Mar 2025 06:33:20 +0000
Message-ID: <PH8PR11MB7965A3566C18C303D3AC8185F7D02@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20250307142419.314402-1-jedrzej.jagielski@intel.com>
 <20250307142419.314402-5-jedrzej.jagielski@intel.com>
In-Reply-To: <20250307142419.314402-5-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|PH7PR11MB7026:EE_
x-ms-office365-filtering-correlation-id: 6c23ed66-eda3-48fa-9854-08dd612fc7f8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?gfVk+UI9gLB2jJZSi1t2GpsUrOWZQWKjvxo5tAtDZecW1x8oAV6amK+WFfOh?=
 =?us-ascii?Q?gHaaA7ycphamUF8tBuyIDXUe6+anab4bmlqGIvb2d2Y53kmVEb8PEf8Q/nSX?=
 =?us-ascii?Q?RSllDtxtwFyfoc00mh2oO3ZwOccn8Vb39qysbwYhRExuA20PDoDWl1VqrFHV?=
 =?us-ascii?Q?8bWGHPq3YtQ+zFSl1RhIXGLLRWWE/aVO1shPS+aOz/zGZFPhLoP8thQ1aHiX?=
 =?us-ascii?Q?FRD8U9YcuheodYH8VZlqUcrOmzL0/OjJwtVFVDzTQNIz5QnFWiZb9PXNkQCQ?=
 =?us-ascii?Q?Jkx5OEEfHQ6Y0HHPekXdQjA/ijfnlZfJzi69hcXxEy6XVjC/x2pqtDDE4fG4?=
 =?us-ascii?Q?vWrOz9fxHBupfOTicgFVUh8dwhYY1629HJdYudqFOLMfA/Ts692T1o9wdg+v?=
 =?us-ascii?Q?/alPGE+fAPQNOi47mvGxiwqOm1tFQ7+TdBe55ez9NRNr5k/nocrlN+IcnC6p?=
 =?us-ascii?Q?hS7kq1ZtUhve8E+94xDfr9ov/ehuUUPim2Qc6ebJGEx20+AYAf3WkG122v/T?=
 =?us-ascii?Q?RScwfN/1OQc81Sua4afF7mJmNyvb3eVxw2paIeW41/MamaHDUBADHvj2zsz8?=
 =?us-ascii?Q?/rRZZaZ4lEMHjqekCy+RLvLjcKo4lO/D+22cKnsQIO9w50Y0w05eEE/EcVKU?=
 =?us-ascii?Q?qlhss523eRsAqp8HHZXpjJl4FWxfAPmIW/eviQcJF19YV5Y3yBqeZa60TK0y?=
 =?us-ascii?Q?DMCGJi2sDOOQm9BeMdvMhs/GQdJU+RCYG+hlj+1SRDAgLgyi2c+wWNG3+iUM?=
 =?us-ascii?Q?2sE4n2sL8ho1M1kdzBogNrUXQqDpcSlM2O0QwKp406nlXHlIArwo7qxMfp9A?=
 =?us-ascii?Q?v+C18km0K55x1oBkOjqHHpxAzEbQG6AFy8aMC3XyA/H/Rqqix0jwebabeUwD?=
 =?us-ascii?Q?OOLxpiGGV8BDlZE2atoH3TJ9pZt5y0PnhzgpgU8gZD3gqxLNZR8yhy2T+/K0?=
 =?us-ascii?Q?0VjFay8S0NMi6Op0qmRMMPyeGJJdNeWvPVkXgWKnpPM4RADdnMSA7L4TGscu?=
 =?us-ascii?Q?tdFXS/S5mEvMUzYGp2+hPekaoE8LGuzuQ0JVtl14IlBAnhxQr7b1iacuX6M/?=
 =?us-ascii?Q?CN2Dx9kN4pUXD7Sqm7604Nm6WyqV9afXJdUJA1NEbWliXPXxExj6pPQWnRkH?=
 =?us-ascii?Q?n9OaievjCN4QymHCkl2Ic/c+0WVrzc2K4F7ZcFWv13EH3MEl4A8UbbQOCLO7?=
 =?us-ascii?Q?IueSnFEM7kNOlbDHWoM/Du1UHya2zfdoiy0KDGOXZ+WGJ6cksrUTDryMMF5V?=
 =?us-ascii?Q?2fxAI6i8ahd4eRs4QRBJ3lKYLIrG/iV5cfPIExfXU8Ch1GGAetQ9B/MNvdB9?=
 =?us-ascii?Q?u4+936ovcuYLrC3UBMAgIZJbEeovuT6L4LTECTqf2IIkfqap+dye14JpnWox?=
 =?us-ascii?Q?jKj82bE9LzFR9UT2M4a5RbstEKBYwiKYMGP9R7Q3XZuwh9a8+W9ndQbRcIbe?=
 =?us-ascii?Q?aZxWWghu4SGu1Ac52ksGnGdh50Ddn7hR?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tp29z9Ksh4R590ECV/9aAPEyAudPcqEMlzLiM/OxKg28eZYU2PauG5vUu0yw?=
 =?us-ascii?Q?4u37Fw0ayBioXpOaahRR8YaJwIdaNvKA2MB0Cl5mkmiUjtlF1+lZGRl0CtSZ?=
 =?us-ascii?Q?1pCgdDingWJawLC1KSCtBXluvlgjwTrOlj9hK1Sl4wHO/K8YGu5IW4zirxDo?=
 =?us-ascii?Q?9grMZ0f99lqWCPqMF2PaCl+nDMJsdZZS0KKrMLkhkDxrDBcVV56bdGhQ1t9m?=
 =?us-ascii?Q?Rdf9vUbd1ADPepTvyxqZs3Jmh3Wy1mEoDZfj3QUb3LjUSPh7wMAQGUm2omV/?=
 =?us-ascii?Q?0z67tq9ZzvCeWsN/8kNr9IYh5jrb+0Q2T6IDL6NGuuF6eu0U16sD6U6ZR3hl?=
 =?us-ascii?Q?n5VJfvl2mNlGIGpPMwy4hbg6Q32jEIqRpbjSP0nk7f4Vd7FYGhG2kR118+Um?=
 =?us-ascii?Q?lbbXDr1Bt7eQ/hmFG0PiH19g1qb/Tv/5V9QTA0C050IXICHYPqy5IJnx4VnT?=
 =?us-ascii?Q?wj0bUD1XBx4ekXX0f3VvpVUHVDk0EiWWCKvvjRgZhcbCHp/BJAbMFPDnpO6c?=
 =?us-ascii?Q?8CO9daArqJaKL+PSogCkVo3K7CeDL5EYwmN/QFCnwdnUn4jncSXb7bWdKRWZ?=
 =?us-ascii?Q?pQpNZ4HkM3RiCruFPI9ICctCDyuX7Eic+rZRLO/R/ua7mEJyxPW41PK054l6?=
 =?us-ascii?Q?8N3v1PP2Kv6n2HOx0d2BKHZk7DdGb/Dm3Bm/XUlwKHVD+OkVU3+03v1lNbwE?=
 =?us-ascii?Q?SzMZ/xapaio36bxYmXE+Wv237gDZ6hgttfDUZcL0PLLqBkYAEtw0F6FCd0f9?=
 =?us-ascii?Q?wncCaRL6ujgUMR6X6xttPWc6KT7kDYqkwoo2RQTFIWxC0snBuYB9JLqzCyS3?=
 =?us-ascii?Q?UEVVf2Yezhi1xR5RZlTxMer/L6QD4eSvJ7om0jtGSZLoPb799KCz7LX9JXQO?=
 =?us-ascii?Q?637dTA2eZQ2Iyrn8zLhQoEto5J5Xxru/CyLM0RJSTkeQMc1/dQSpkVhX0QWu?=
 =?us-ascii?Q?SuoQx/TU4I5RFSrnQ08mn7y95l8LOF1FQMW5SbHXtPEUTw9Ivs8gr0v3tk90?=
 =?us-ascii?Q?FVOzMrkYS1ssnm3HzkqMYXRusf4MzV/CM9KgVy8jFVa4ynpjjoy8GvTd5Q00?=
 =?us-ascii?Q?5hkRPmOCj6D8qTUNfMaqcaQh61b2ol1SC1kQttSOB8aFf67xF10TEb1it/Ql?=
 =?us-ascii?Q?7VNa2suv5gdu9nd7cSlYbtEDdUsTP5B4Q0oKDVbCs7X4m2lwUldiUeVq2tQZ?=
 =?us-ascii?Q?dTIQTfSeUQcXtqwQEDaiwpvYFb/OdvQ+GNEPWGZuxcWypHSFZfr+yomTl25b?=
 =?us-ascii?Q?Wgne1AymnGpGVZFnDRJyzMyg/MU838ZjeecfR+d4EsHMTmFtb3DL8CLF23BU?=
 =?us-ascii?Q?p5fuRs9+AzCZNEut0Sfwjs2XLVS+e5WlPlCVIbEq0T/q7R7Gt41IfIleFIum?=
 =?us-ascii?Q?9bRlVNzeYASJDTLRqm0HM1TkTMc4IM1wojBVv98CgSl3Q6Yv34hYyGfAlvLF?=
 =?us-ascii?Q?vETTUoic0rP5P+AgtaWEuNiaHi3Qq2TBaocWojO6y5sVzT6RG69rl339QW5o?=
 =?us-ascii?Q?oiquBsZ3HEtm4fYeKd8aI5/fmUQYOGXrvioCQ5ulT19i+ysyOJmXrrF/dy14?=
 =?us-ascii?Q?+MglEUcI/Pifd+/kIN117ry4WNte8TOka3Kvany3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c23ed66-eda3-48fa-9854-08dd612fc7f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2025 06:33:20.2259 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KK+vw6JEycAoX4hYcs8oQket7YfLZFbd32Qb8K6/vrUP12dm3m7o5KO9rZn0xzZeky36MqOUo+p8uKH5pk34sg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7026
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741761206; x=1773297206;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jSRb0dHVcU+78LVCbYuXi0Yc4ygv2/h3JYtVy+Qbjwk=;
 b=nIFFFXlTgFtiDvxjQ22rT9J8F6WucmVd0G0t61E219FGzowt80QyVeRW
 b3mGk8DNrrZyBpnhaTjWdrgvZnRnuoifnF7Fh05szZiLLwzKt40FliIXE
 dENTt3p4B3kVLtFi37Bkii4BNI4U7Ao7YyTVNgbeYlceUu+Dcm2TqjQpw
 8doWAvkWyTX6QKilCdb4mPzDNupGVcje4GDLMMOh1PP6Q0c5yU9l7/OeK
 mf66C7FFU6ZgFSXngwmcFglcOX1nDKtGfApW7VO9RNWAvS/A6ml4y2hOi
 FVBzq3GvnmFYbX/zDj082TKu9WF3FZJ6sVofPX0PYkZ6dD5uZg8JnKgbL
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nIFFFXlT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 04/15] ixgbe: add handler
 for devlink .info_get()
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
> Sent: Friday, March 7, 2025 7:54 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> netdev@vger.kernel.org; horms@kernel.org; jiri@nvidia.com; Jagielski, Jed=
rzej
> <jedrzej.jagielski@intel.com>; Polchlopek, Mateusz
> <mateusz.polchlopek@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 04/15] ixgbe: add handler f=
or
> devlink .info_get()
>=20
> Provide devlink .info_get() callback implementation to allow the driver t=
o
> report detailed version information. The following info is reported:
>=20
>  "serial_number" -> The PCI DSN of the adapter  "fw.bundle_id" -> Unique
> identifier for the combined flash image  "fw.undi" -> Version of the Opti=
on
> ROM containing the UEFI driver  "board.id" -> The PBA ID string
>=20
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2: zero the ctx buff when chance it won't be filled out
> v4: use devlink_priv()
> v6: fix devlink_*_put() labels
> ---
>  Documentation/networking/devlink/ixgbe.rst    |  32 ++++++
>  .../ethernet/intel/ixgbe/devlink/devlink.c    | 101 ++++++++++++++++++
>  2 files changed, 133 insertions(+)
>=20

Tested-by: Bharath R <bharath.r@intel.com>
