Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 24792BFF531
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Oct 2025 08:22:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F1144037A;
	Thu, 23 Oct 2025 06:22:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k3xtXvIH1udU; Thu, 23 Oct 2025 06:22:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1AEF440325
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761200545;
	bh=6FyP8O3lScyd3kQYY/DYq4Ad8EYuSpMSumcGw3KbmgA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oSnpE9qiwMEhBy6ow/s8AJSytc6u+6fC9kHzRBeyVGUJguErZNa5kx7EtuaPF/M+i
	 6S3Glhd4DOGlSY5I6SneuKmENOpneOXDykgONpr5y/pF4/QmWU1xBUIiAORD0nGk0O
	 gdUV7gp7jCnzvbL6AWsqTt5MOUduKNs8RAziigAF+ppeVEEWui1zWqMSQECpA+Ejt2
	 dX6eKnXdpB5oWFyqQGOZ8dvjYHXR7nOaxBNsGehWOxpBSIpyToY0w8fM0L53I8+fr8
	 WV13bexNsHEDXY3veok6naQDuZD9mWot4TvBxjZjdtmCTZu4/N5/jnJZID6duMNEVX
	 tFFRWnLFbvclA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1AEF440325;
	Thu, 23 Oct 2025 06:22:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3111143F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Oct 2025 06:22:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 165006162D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Oct 2025 06:22:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o58jhw_y0gSO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Oct 2025 06:22:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4F43F6162A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F43F6162A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4F43F6162A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Oct 2025 06:22:22 +0000 (UTC)
X-CSE-ConnectionGUID: ZQ4sAvB6QMuU8YbddgXxJw==
X-CSE-MsgGUID: E83xuYROQBSfV34N64YQ8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="80796359"
X-IronPort-AV: E=Sophos;i="6.19,248,1754982000"; d="scan'208";a="80796359"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 23:22:21 -0700
X-CSE-ConnectionGUID: bTYjC80/TJmyK+r93u+Fxw==
X-CSE-MsgGUID: d4WMeCe4QuS66j0dE/kC4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,248,1754982000"; d="scan'208";a="183291474"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 23:22:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 23:22:21 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 22 Oct 2025 23:22:21 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.42) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 23:22:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JHbH0Xfnwwa/kF22BIGfD8EKodoEIJ7m/1XPcvYBe+5UUZIPt9oeCuT/s0n9qBeYka9SehF5idPIhyDrk0u2QYvL6hb8LS226e7v8PKRQgmc5FE38fTOkBId4bCYcSopJQj3xAFGBAG3BSVdav/AC/N9vS49K9SztLrxTPBmYyMr4hqUnc9rorY6E6E3acDwyVq4qBtaRIenZY+7YfMHnSuiC0ESK9wRdrXb7xmYz3T0EWmsI0VILBMQJJm0AVc0UcusCNvVVaySmFEMqddOp49upPsS3raqEg93j9GVsjSdWGPByjkRZxUaGF8J++XbXOJVrj0LcCGXZwlF3+WaDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6FyP8O3lScyd3kQYY/DYq4Ad8EYuSpMSumcGw3KbmgA=;
 b=bSAbtMk+4FXvBwxpDwT8GZYbCR+jrHwEzCFCCq7i7QsnBPtXidjeTipKeNFCG8R4OVLgP2ooFo1MEOh7YNh3M9OzJz6vTowOMl9g+CxR6ctK/O6/1YVlKI20+71DphnwZT50mK4YGZphTR0avczMxfYtcvrSFPwbJs3HCB4Q7eSCbPZaX+e3irq7EYUKlXnGGJtkNUy3sCalaHwC8tpSXPpgVZGZzKFMCt4Fr2QcpKG6RJVt45ZC1F2KDdwuS5nkLoftIygkDyixf3K/sBZ8IWNpI/Y4nwJcL9N8gVqdNHiQPzDpoBGI9NgE5EC6ErdclgRv5mPxA6bgcwuH8jT+lA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CY5PR11MB6233.namprd11.prod.outlook.com (2603:10b6:930:26::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Thu, 23 Oct
 2025 06:22:18 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9253.011; Thu, 23 Oct 2025
 06:22:18 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [PATCH iwl-next v6 3/6] ice: implement GTP RSS context tracking
 and configuration
Thread-Index: AQHcQ1WRhgA03IpflUeUOpo4TGhxQLTOxRkAgABvNuA=
Date: Thu, 23 Oct 2025 06:22:18 +0000
Message-ID: <IA3PR11MB89860ECCFF39F290091E0D41E5F0A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251022131225.2304087-1-aleksandr.loktionov@intel.com>
 <20251022131225.2304087-4-aleksandr.loktionov@intel.com>
 <967c9a87-d759-44ed-a81e-ec8b8de99a75@intel.com>
In-Reply-To: <967c9a87-d759-44ed-a81e-ec8b8de99a75@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CY5PR11MB6233:EE_
x-ms-office365-filtering-correlation-id: 13a5245f-bd60-4f79-40ea-08de11fc847b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?6R6xEnvl5RWayDVYRjHEpZb1ndaXZ8poGvQpOpXyJxzhlOIl0cvwWDsOp9og?=
 =?us-ascii?Q?gkanppGhs1u8Qnb/gzjUpm+JQhFr9gTgGM7/pLncWtw574HrEXC0fA0K6clo?=
 =?us-ascii?Q?Fc+LsvceBd1qY/V5BGiVlg2wsHEQtMDkMqOoUzpuY8bVtpNLOHYwDNzXXUnZ?=
 =?us-ascii?Q?gdwDPJQ8eHHpBn3E/IIRnXa3mWa/8Fj62ltnUlAv1MSpaVMlNCa35yxhPkHc?=
 =?us-ascii?Q?TMoAc9KNfSOBYPisZYsIRQdMMRXA8JHeIzyEixRSmdiKQ8RhdqNkRLOJAp6o?=
 =?us-ascii?Q?CCKrrxiPjXTgccwSYihxzXfivMM2OzvlHBB0JOaxmgbSLEUoVIB0pWAP7kqu?=
 =?us-ascii?Q?tHPwex3ennaxlfM1b2nLh2dD3SrXaOgD75YM8SZYris0cQkgwMpSULU5faqb?=
 =?us-ascii?Q?MhC4wS7IrSV2b4Dxo+nzRpicoQSD1vxa05Cb/dGb0v2zmceMkEnrI+mBas4Q?=
 =?us-ascii?Q?oKGaXxHqXpOqM5hMYWdnZ2FJc+V5D1P4oZNQ/RGZZXqqbB+gZrr2x3RZOdz+?=
 =?us-ascii?Q?aYwgRuQAMYGLP8l44o9Rmnoqh59Tds7MbHtZyEytCmAInvGi5YvxklO+iasA?=
 =?us-ascii?Q?t03pBfMyrHTxwlJoOMdDmius+gUtDYZupO4P77Q2CCzCuiAHiHmx6oep8gaX?=
 =?us-ascii?Q?xiACwBd+zICOwKTRTa0mCyeXe19pChrlEI61SxBDgWaa52QW/nFwE+JVnBpg?=
 =?us-ascii?Q?BSqQoI8/MHvyV0WdITeLZuPWJBFqsXWsI28rbWEByBGAB5/A62GwqOlGY+YD?=
 =?us-ascii?Q?MmjZ3NCLih78HaVYG93qQRGhiXGv/wH1J3ta19qhpGfnR2XlP8A6xIcLMthy?=
 =?us-ascii?Q?HDjoBUQcHBqeyDUAtLoIUfwVy4j2dn55cK/J3mRzMT80OhGEKTLIx2xFC5ul?=
 =?us-ascii?Q?NFQn8rKOc5J8LmtowAa9MlCt3eZyPZpkvQlTCbM2ayg0mattNzLOyM6na6sb?=
 =?us-ascii?Q?9m8MPDnYqLS+QHUdN/6PJs9Zash7fMSIFMUq0FpOIqzn+2RfBTQSMU3kAF6x?=
 =?us-ascii?Q?GXyCdpOwJpYM0HbmT7mAFdYOJaflZdc30kklMj5eFL20ecfC9SgxW23i0VpG?=
 =?us-ascii?Q?84npj0ZQoYcRNiq76vR2n5ooBTrYFOlJAAa8xnxcR2oYgpYggThK2/bvSNDM?=
 =?us-ascii?Q?oF+3rRXy5eNV+V6ZiheAvLCP6h6RrPM+mbAIyaRNlVMUjzJiiuacRT4EBuSL?=
 =?us-ascii?Q?QNkw6AFnbUpRVrkUi0VCxgTfsKjbjjNF3Mo6fZ3RYwLgLtsNasqijQ5SaHZo?=
 =?us-ascii?Q?FxXF5DLzP/d88biMxuRGxaXD9wcX2SCuQ13oM9OD0wIz4QrntgscCJVOdBoR?=
 =?us-ascii?Q?dD35a5xYaFcdq+zgnntAWrbJAx1gt/3FJLUEdcW4p9EMawesaw5k1iuRsnu0?=
 =?us-ascii?Q?a6srKb26bYhEThZBIR6ZM3goEngLIXmv7XLl9vVmNPWy4L/e+yIEAgmN6fmW?=
 =?us-ascii?Q?P1rfI69pmlrH029ZG1bzAwGr/DJ1brhmcLJ9uAy38DcNqxUjpS/B8VD5qRxt?=
 =?us-ascii?Q?zJQizZzd1bt+eh/DnG3/4ZkrkvEM23OPcRlx?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gY+5ppzHeIXlQxx/z1vBZ5ul4AytyH27heNc6vffkx7PfT2t28p2lzkXTiqq?=
 =?us-ascii?Q?CLBQ0S5TEo7Jn8WtL+h0npNx/U2oizQPiJsf0OGLcNdwo2oCe59F8niS2JZV?=
 =?us-ascii?Q?5rey5FKWlkUKLgoIT4Rs+B24+g9i3pEUrWAXKcXJFXo1okd3Fax6fWDbZBXr?=
 =?us-ascii?Q?04Hn8EXvyeai45noVRvGF+Hs1DxV+i7/x28z774RLSSP2U2T3K1Wfb35vOOE?=
 =?us-ascii?Q?n6uSbUy5Lr3RdZePHuJm3pTDfrgQaL70TdL252e/xwfLFSBOHTvEUHEzivI2?=
 =?us-ascii?Q?O8k31uPpyjtbhqLINyCCnyO8LmXygmJwcjKrXxrAypCGJ3VEN9jf342xs4ZJ?=
 =?us-ascii?Q?n7N26RHsyE2gGhaIWwdLTWvC0nh1Uq+Pm9N7vMv/LySJjZC7R9YFU/4m1//w?=
 =?us-ascii?Q?RSQ9pGp7IQCMMlhYMbuHkKMS9CFkABxU7Fv0TJzIELMjCMOgEXfB7wifC6bH?=
 =?us-ascii?Q?KRyRa3WO5qIM5uQdOxL4KcIdyM1fmzzOieZ1tGIHttmXrcdS+qECUmo94Lj8?=
 =?us-ascii?Q?BYd9PqYvj+caZVLjIs5jQi/YrDRT7XowrzUXJDvL/HFY/JmX4yt11VD36n6d?=
 =?us-ascii?Q?goZJlPAjBYy0+lrzcOlblXNkpsCvU2CVX0PKL3E1/QhVG9EtEvhMguzoI7zK?=
 =?us-ascii?Q?OmUI++KTF3FXjE/noIXjyk9zEP0dx8X8SRzG3zqxn9IkimD7OJCYGtyt2rQH?=
 =?us-ascii?Q?D/7ri6PPuHwZb81Go/VTUbxmdYKH0UgK9SGdRDyPb4djVJJ11qTC/VC0sCMf?=
 =?us-ascii?Q?ZuHlSbduKqzAcVcd/NrDfkIDbFdEeLZItq0crSleBP1rMQVRaauooXklFunw?=
 =?us-ascii?Q?J3rN74xQjaOEH2RcPTH4ZDuTes+pBKoGH7/QrZlPwBeZAtUKkll6VPFMk4xv?=
 =?us-ascii?Q?bHIO6idU/v7JqDKsGeKPaf7CVX6fx/PXxljJ7+H/2IZRDphCJdmVX9/iD/Vk?=
 =?us-ascii?Q?fh/+DXQlqs+VYR2y2SYT7eibKCf1ow3++Jmn2VMgn23RPjOSC4f5lKwDjYgy?=
 =?us-ascii?Q?LsSLlmVB83taAyZmvPD/9h3yHi+dpxZ+ohvJlw44G7AqVODXP+jMhd3oy4JY?=
 =?us-ascii?Q?bc9fRY+Lnsm06JhPTiFFgnBZl0GW6UwVTqwustC6e9JukMBoDkfgLdNLbBxa?=
 =?us-ascii?Q?76+sya1IW9u++LSb43IU+U4+1bSA+aXCYGGHNbR+M7u253AQ21tns7wt/KO7?=
 =?us-ascii?Q?z2pMue9cAjY2e5C01WyegM7GwWTveb2VXCptfrQ8lAMcWHAv55G5GRsNwSYM?=
 =?us-ascii?Q?2B7BiVZpAceswkQKsAjOlzdJCJX+oA7V0fsARkfGYSo+Cem/REuvpqdM90Jv?=
 =?us-ascii?Q?9GuvrsU/5F+sikWaY24mqu9WcDFa3Xhryx9ZB5le6equzyZDqWihsRahk/1r?=
 =?us-ascii?Q?bAPCd1yWMFLfk2rEGTJHfZbFPGqTBpd3aXDhj3nXR/Yt6RfhiJZiDesHrSmK?=
 =?us-ascii?Q?d0iFDP4B/LlH3kBZNjanFeDijZV66ZQIkKa4uqwkPccdruVa4vIWWiuBUxzh?=
 =?us-ascii?Q?7wUG3VTwRoyx93HMEogbekho6zH7vlbTCjOlJ3dPwvtOccsBGjzdjGlUBK7p?=
 =?us-ascii?Q?UsLB9yBmRa+0RpVIipeWJRg869tbnzysA4wQrA601U/Sm44P5wjCfM7Mz4AJ?=
 =?us-ascii?Q?Qw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13a5245f-bd60-4f79-40ea-08de11fc847b
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2025 06:22:18.4761 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CbvmLeutuJ9bdwzC5S0gqOcodak20IjTmj0YkmMobkToBVMMRPlB0RIKpZbJq9gErHPN2BvEyz++o2rBCUnDoeICDd6Exa2Lly0tqC0gJtc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6233
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761200542; x=1792736542;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6FyP8O3lScyd3kQYY/DYq4Ad8EYuSpMSumcGw3KbmgA=;
 b=FnCqDybAS3dHl0lbcPYAdsfjtdMpL7MUNigar+AQCPmgq/S4k1CeVWWt
 lAQ7jLxLx1f5Ab+/L6hzD2DbV1qfXCm2nUh4fO0frymH1W1xXLs7T7SEA
 0N/otJOBRHE/5gP/90yecbuPOecH9lw5Dbk2Gf9UYahcCEv7Hfr5lnzv7
 pZ5NwKWniQCAhzkxP28zuF7ZIpzJyca8o66u3qh6eks/oTiup0pt+XmXE
 7MpBvh4eHZEymXUthgMkIpLHc1dx2FXYUfEQjhOP3Q15jQJLEAhVMg8cF
 U32QYU9y4hVuSJJmDYfPa7zcVBqzOIBGh579+9bQhsGv8sszwEve2eQOq
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FnCqDybA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 3/6] ice: implement GTP
 RSS context tracking and configuration
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
> From: Keller, Jacob E <jacob.e.keller@intel.com>
> Sent: Thursday, October 23, 2025 12:48 AM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; intel-wired-
> lan@lists.osuosl.org; kuba@kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Subject: Re: [PATCH iwl-next v6 3/6] ice: implement GTP RSS context
> tracking and configuration
>=20
>=20
>=20
> On 10/22/2025 6:12 AM, Aleksandr Loktionov wrote:
> > +static enum virtchnl_status_code
> > +ice_vc_rss_hash_update(struct ice_hw *hw, struct ice_vsi *vsi, u8
> > +hash_type) {
>=20
> This was explicitly called out in the version we sent to netdev last
> week as being too similar to ice_status.
>=20
> Can you refactor this to use integer error codes, and convert to a
> status value only right before we generate the command to send to
> virtchnl?
>=20
> Checking against current ice driver, only one other function appears
> to directly return a status code. We have ice_err_to_vert_err and
> ice_virt_err_to_err() which are referred over passing around these
> virtchnl status codes more than necessary.

Good day Jacob

I don't know the long history of virtchnl_status_code in upstream virt/rss.=
c=20
Now I see from the second glance that even internal VC functions return in.

Thank you
Alex
