Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Zpj7B7ZrT2q+gQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Jul 2026 11:36:54 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4719B72F057
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Jul 2026 11:36:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="j9v/ffuW";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 91FE960EE5;
	Thu,  9 Jul 2026 09:36:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 85cRKklBy2-Y; Thu,  9 Jul 2026 09:36:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C2AD60EE9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783589809;
	bh=Q+HtAR7N039Cu5DSfp20NZEEb4MHMnWBqgccp6ACbww=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=j9v/ffuWEBhhcwTZVCO2dWzGlNhhDhGMoig36+Y32qcpjNhZrH74GoALY23kXOrnK
	 Xcn3Wmf83oTaqZeYeOSzFatmkBbzUH8TPV0/vte8xiPyyyKJZrRseP+BkgkllRbrYx
	 u17FLrLLal98n77K/cynIk8XZf5IeNctjAUEHFBvq0c0518YD9y214n3d565b5cwYl
	 23ZCCpx2NwklJ0wWtXyAIAIGQ1nTkFT15LPbznXToDVMk9U82D+8Bi03XVwyJ0NHBF
	 0KDOiKxMq4QEOZAEURhgPy4prX2QqTYW/jYAVvNp6Uss8rrB2MLmWTj3KOHAQVv8So
	 JyHhjeRsPEJcQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C2AD60EE9;
	Thu,  9 Jul 2026 09:36:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 90181315
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2026 09:36:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8D58380B5F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2026 09:36:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zuA5PADzKQXi for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jul 2026 09:36:47 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9AC6C80B1D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9AC6C80B1D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9AC6C80B1D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2026 09:36:47 +0000 (UTC)
X-CSE-ConnectionGUID: In8WEqgUQrWnpz+7RkEF0Q==
X-CSE-MsgGUID: gbj3YAupSEiXG7UyKnQNQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="88181570"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="88181570"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 02:36:46 -0700
X-CSE-ConnectionGUID: r65ThwW+Qd+P8dSj2YpyJQ==
X-CSE-MsgGUID: e4myhkS6SvGWD+QS8O4CFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="251172266"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 02:36:46 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 9 Jul 2026 02:36:45 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Thu, 9 Jul 2026 02:36:45 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.31)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 9 Jul 2026 02:36:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NovWvNgiJGCAtMB1SyKz6d9aLY4sVKbuVyRKInvIzI2t/6QNBzZo+5qUfGFDohwkRxdSVOCm4N7rK9dLTRAIJFi1+U+ymLEcET3fSVojQJjlqhiXtW7zdxS7CHSDuKGrEn5HIMuHaWOJgQWVbOe+Mu4/2dDkTWiz3+IREVB5J4E+P4+bqMVyi46FD6xzuASiCsz8Cr+KhjKil7EdQOUA0hVH/fur1cpmu7pPSTG+JZ2h+yN+Y1ZIe+kNK/Y0nmBu+pO/DAFDdDhg1wCf1g+1bsln9p2oCZMp8wctZfrvVrIz8CWZhnu9um00D6BVO2B86de6Yjd3Ipq11lz2cYhaxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q+HtAR7N039Cu5DSfp20NZEEb4MHMnWBqgccp6ACbww=;
 b=rCGC57w6v39QJSpecOvy6SQ8eInmjV79cbUV38yVCjZkf3D8kLuMWY56CsgLOfWDKeTbm6v8CO+FzWi1sRbxT4Ld+G23uiuTgwj/zuVTGZtK1/vatdiv2gFTwGFpTM1E5ZQ67Nn+V5KWehzvovA1cIX6pPT99GqUDZ1W6mAK/yT8iy+53CBIJ55xYJ/PBF5lfHV17Bdjyn/JfH3XgWA9egd1zFi5wbwHrqs0TFRk8Du3XdTYY//wB/HbLcHEi1/FOMH2U9dyP1M0hGMuz4RDPc60yZo42MtFdoAfWCYts6XQiKcyNhYmd7LLJXhBEfWYF16yvLF5vclT9fTiRSJwQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5902.namprd11.prod.outlook.com (2603:10b6:510:14d::19)
 by IA3PR11MB9422.namprd11.prod.outlook.com (2603:10b6:208:57e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.15; Thu, 9 Jul
 2026 09:36:42 +0000
Received: from PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37]) by PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37%5]) with mapi id 15.21.0181.009; Thu, 9 Jul 2026
 09:36:41 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-next v1 3/6] ixgbe: E610: do not disable LSE on
 driver down/remove
Thread-Index: AQHdCgYfbtwmrH6yCEWyEePrcV5UfrZj4twAgAEVfgA=
Date: Thu, 9 Jul 2026 09:36:41 +0000
Message-ID: <PH0PR11MB5902745B58B8ADCE2EDEEC84F0FE2@PH0PR11MB5902.namprd11.prod.outlook.com>
References: <20260702091553.57112-4-jedrzej.jagielski@intel.com>
 <20260708170145.1514345-1-horms@kernel.org>
In-Reply-To: <20260708170145.1514345-1-horms@kernel.org>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5902:EE_|IA3PR11MB9422:EE_
x-ms-office365-filtering-correlation-id: 932b1cf0-9f48-44f9-9ea2-08dedd9d955f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|366016|1800799024|38070700021|3023799007|4143699003|5023799004|11063799006|56012099006|6133799003|18002099003|22082099003;
x-microsoft-antispam-message-info: Siv3KWzsTHJ4OknhxpDNiqqVIBK7Dh4QnM4mvy6SoNdN5T3PlGqDpKWU4x+c+q/uJ6/e3/Gqcza/VuYIbaCbvfRPOanr1ez8uZ8wUWhe16itWYg4FMRY4y2nPNpk4XN6lsupl3QaLHn5jgJHh778EHam9/K8g78N86fjXSQBSBb4wyajKW8JJiLJQulbg8DrDvKVqm96EP6PaXiAcjCh08YqIMbzupHZadteORjK6cQby+Hh8zZ6FVL7aV9gBAqbK4GKaeQ764MWFzmvCeK6thnKlGlcJ/oKtklJZdaAvppG5R/1OS5C8r6AZH0EDdASvOcuttlEmJ2WtmdSO7t/0rHv6xfxek6bXqjVxO/pV2V7OZV8KeJFT+1sgFDpvo0yOymJnOWdTXH2+PtzzOftP/ydGokRQXxs32vQo4VopYYzzU4PMgZop8irD+sOGPDC/QJXKwQA0fbxgbc27S1nWElInlG78N251YNkxS54wjxXiQr4O/lLiTY05hOpPfVNp4LywY+tolkXtvTirJS9Q+Rq3vOAmoDh6ft4AX6fLzzkY86SAZrKzHVaPOc4bSywbqUidvY2DZ75Hd19d9MXXrG8Ih7BhsJOg8r1+q8EZMb9arSNfUIAT+RiaCzoLodZrL2drVGbFfhCyZGmryBoGDUjJbOOKR3ML5Gl8Ct/Zbo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5902.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(366016)(1800799024)(38070700021)(3023799007)(4143699003)(5023799004)(11063799006)(56012099006)(6133799003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tUmJmc55PzNhm2kaIUqShIRP5/ts/Kq4Hjqmqn7AAyTPVRjfjUARwpXQ7DsH?=
 =?us-ascii?Q?TmhqfbvLlVASMXs5Jrt+81mhDvq3hHkQDU8x+x1P7er8CsNkBH7CF2F78bkj?=
 =?us-ascii?Q?t4GauSDPvZj4jHCPqxcOEMfAzYa6Sf077o80slMCUbVN0Bg3J/Kg9cpJSIEa?=
 =?us-ascii?Q?hbKX/eyQkxAmG5ZzJmcgs3IK5pPrnYaFkO9DHt7SA0p2CYSDIMLQnPhXyHAV?=
 =?us-ascii?Q?urCbDfOLkJz0otj3ueXmLFbWtt2ges/NoDbAuBtLdLYZCZnAbhJTsGxKzgim?=
 =?us-ascii?Q?jCwyVbl0qmbDI601b5XH9Ajt1Ml/uEy7OpxpEUzeosXK0PLiicsGr08161N2?=
 =?us-ascii?Q?6IyLlecFT5szz4JsyU7PYrFQarR6rYENAF2r2GGxVKMYT/hXn2HjXsUA0C2L?=
 =?us-ascii?Q?8RGe1+GG7oODtUZZ5Rw5CT5aGMY/hgdkol0OSxAMSt+wuBcnZNGivd9Kl8lX?=
 =?us-ascii?Q?zWl+auFrU5Pm4I7H9TXd2rVkwrHfBNjTabHwM1gHSqWjzxgqcUmqIZk6BX2t?=
 =?us-ascii?Q?6Bq5V8RdsH28Y3t8oh+X3yp2kI41/wbtTqTvyQZDL9s4svjVHVr6vQukOjUR?=
 =?us-ascii?Q?aROCG6KRLihZeyEjf4y8pfnFwvJynT4xiMg0uaRdJq2J0dUFrxvGOzD6l5cf?=
 =?us-ascii?Q?gVw4FboUuNwdhF3X0yQCECkH6Iq5yBznRQwMQbxMprrpCPpAsb+HYeNUdtOD?=
 =?us-ascii?Q?ZJQemzqCv5mF7NK4iZcBzuePMM/l40o0qQQxaQxYnICQhmU04nNxI4s0Shcl?=
 =?us-ascii?Q?+pleeWa8M7NtFUWT5yo5utmCSED/aBFXE3ke2MAKbe5pMweE+SkDoVg1tcb8?=
 =?us-ascii?Q?c6sEuqrYs8h7Zchf9oBnLl4qmyLgZdDuh9KaEHxTrs18L74YimjJtpWpTgia?=
 =?us-ascii?Q?ujxfDLcO3XVIQkCc17keD48gJenSiSPPwUq76FaeVEY3p6zfFkZztO4TYEyh?=
 =?us-ascii?Q?+ZvajmHcXqZ6oO+ge6ML46vHhhCdVneOLPg+Xzp8wpF/75Ret9iVhXc/dnwt?=
 =?us-ascii?Q?lVQ1EOXmpk9+W/WvzLIRTQ4dNLUWtOaKlN91VsOwo4b7cjXNLbzqmQi7UN82?=
 =?us-ascii?Q?WfSSWbqdGRCdyef9JZLibUE/WufG+TfZ1HqeT9yKOQNpUVtF48g2PQZl3A0Z?=
 =?us-ascii?Q?vBwE3JQAxJwILMcHvlNiO+MVwt3BcNcWvnwvHBLVk1awwDO8HFH0QTwHbI8c?=
 =?us-ascii?Q?293NRLDeD3SwXwcWR3s2rW4sMBz7yGyFXo9KBkUO86y7jO+38WVAkV+Ozb6X?=
 =?us-ascii?Q?oqvZdQ5EIITuQ/hjhUmJloPDDvibH1993RTmexlSeGS9op15TbsicwqEkUiX?=
 =?us-ascii?Q?4PVDLO5UXMa4alssLnfiphok8vgC0R5u1XlXxv/YkvojpiZboH5fHyfMrzjU?=
 =?us-ascii?Q?Lwib4F+kTz0eHMs0UgYeJ2r1WTpucBIdwZJuzBpuirnBspJlOGwovOc0iHVi?=
 =?us-ascii?Q?5RG57E3gYruFwVhKmUFfPFY6oWm46R8Eu3i9PljBsAf/1hOWmU8P/mwhV9Qw?=
 =?us-ascii?Q?CYrEmPMMBh5g2IZ8iaitj5LaaId2Kb+Z47Iq39Bmgv6zC3Thtjl6kuIuU4ZR?=
 =?us-ascii?Q?WGkXRG+TYZNL/2GaSg79WJ4IJeEWPZpPOEj135LrVdz3RE+Whq42SKSE+7Z4?=
 =?us-ascii?Q?ILf7C3pkGPeGdWTOQrMc+BOhvYQ4WYG+8QTR8Sqx3p4Q9vGZ1rDnUs5jKWJz?=
 =?us-ascii?Q?soG5b4Hse3hdJmEB3YrsjPu+O4vNgRwcgIq6j7p2e1UasT353qwWH5ld7SIv?=
 =?us-ascii?Q?Sp6492WDTw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ENg++8yS1mTmOaRSclX1tI+5cTUZwd8tLvqdb32eUD5UBFPr6xGZCTP6OsUwdgwvLnvMnwQCUH2bjdij84xsOvCDsow70gY1j6UeGznh7aV25zvE2JPVlBv2i42eplII3vKxyw9jX0v9qv0IKjt9tZsm3qzUYL7D0jk5/gY9ef8r4ulNzImtn6T0CGjvtvxW/E3CozFDpRMS62P/OwaHWk1+SmdKtWlqHJOYQ7I7vQAOgJFef+7dY8uKfAafSmZRReCGx1JA6ztF7w/hiJ+dAUP0lRzTUnsyftPJqGj0HiHIq1XKQO4GfkdW9/hM2cG70kpNvuHqWSSyLqOileIOOA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5902.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 932b1cf0-9f48-44f9-9ea2-08dedd9d955f
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2026 09:36:41.8718 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OQtc0dgq6WmtSVEl8NNPqHFrJr/AkcZ9M8wQJS3Yiv7Llu2RMxLTLhMHArFUcFEHQBoVpA6TidTDyZNVB3AJvZ0opSMwixcIjoLRVieHiRE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9422
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783589808; x=1815125808;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mWwJbhK5BS2CBg/vilaiHUoKaB0nNPBbw/R1ei+65EI=;
 b=gcu3b9LmTWkxHNwG9C6yXRtd8fPlubWl50uhe8adECLcJf08QGko4yVG
 cyFFH5s5LNMdUksPMbjIzsdcG5B0XlHjY/7pwSczqO1q777RA/6O8UYq6
 8zBkzZMprG/7LuDvn6GKoJPWk/PahuFRFj7RXjgeftjUoSn9KnZCMWTem
 S9qJ3AlXgUgAs0WaF/zpu1yqQoGMK431uYHIAHxfcoNqwI+/mkaklrCu4
 xXeqZfmrluP4ACnKahQEsRhdUb07QUMRgw6VH6uxLq+vMRbQ7bMuVEwGq
 +zTJL7zsA4sBB7sYg4wnxWrjA6x3UfefWrkBBQlZsPKB/VDtuwHV4arze
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gcu3b9Lm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 3/6] ixgbe: E610: do not
 disable LSE on driver down/remove
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,intel.com:from_mime,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4719B72F057

From: Simon Horman <horms@kernel.org>=20
Sent: Wednesday, July 8, 2026 7:02 PM

>This is an AI-generated review of your patch. The human sending this
>email has considered the AI review valid, or at least plausible.
>Full review at: https://sashiko.dev
>---

Hi Simon,
yeah i saw most of these on sashiko local run and i believe we should
not be worried about them.
I see that sashiko does not understand some of the FW/NIC <-> driver
communication concepts for this series

>ixgbe: E610: do not disable LSE on driver down/remove
>
>This patch removes the calls to ixgbe_disable_link_status_events() in
>ixgbe_down() and ixgbe_remove() for the E610 MAC. The intent is to keep
>Link Status Events (LSE) enabled when the interface is down or unloading.
>
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net=
/ethernet/intel/ixgbe/ixgbe_main.c
>> index 882021c436d0f..83098bf522e42 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>[ ... ]
>> @@ -6733,8 +6720,6 @@ void ixgbe_down(struct ixgbe_adapter *adapter)
>> =20
>>  	ixgbe_clean_all_tx_rings(adapter);
>>  	ixgbe_clean_all_rx_rings(adapter);
>> -	if (adapter->hw.mac.type =3D=3D ixgbe_mac_e610)
>> -		ixgbe_disable_link_status_events(adapter);
>
>[Severity: High]
>Does removing this call allow unhandled asynchronous LSE events to permane=
ntly
>block the ACI mailbox?

No, removing this call does the opposite - it let driver to handle events
which without that step would not be received at all.

>
>If a link event occurs while the driver is down, the firmware can queue an
>event in the ACI queue. Upon the next driver load, before the service task
>can clear events, commands like ixgbe_get_flash_data() are called.

That's not true and actually it's opposite to the idea of async events.
Events are not queued when driver is down, that's the period when it
may required to be notified by some sort of event, like eg link state chang=
e
so simply its send then

"before the service task can clear events"
they are handled in an async way, not synchronously by servise task

>
>In ixgbe_aci_send_cmd_execute(), if the EV bit is asserted, the synchronou=
s
>response is overwritten by the unhandled asynchronous event from HIDA_2:

It still bases on assumption that for some reason event has not been handle=
d
That's mislesading, handling mechanism is implemented and events are handle=
d
one by one. HIDA_2 corresponds to the cmd which is proceesed in given momen=
t.

>
>        if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C))
>                for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
>                        raw_desc[i] =3D IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2=
(i));
>
>        if (desc->opcode !=3D cpu_to_le16(opcode) &&
>            opcode !=3D ixgbe_aci_opc_get_fw_event)
>                return -EIO;
>
>Could this result in an opcode mismatch and return -EIO for all future
>commands, causing device initialization to fail?

I really do not see such possibility

>
>>  }
>> =20
>>  /**
>[ ... ]
>> @@ -12080,9 +12065,6 @@ static void ixgbe_remove(struct pci_dev *pdev)
>>  	set_bit(__IXGBE_REMOVING, &adapter->state);
>>  	cancel_work_sync(&adapter->service_task);
>> =20
>> -	if (adapter->hw.mac.type =3D=3D ixgbe_mac_e610)
>> -		ixgbe_disable_link_status_events(adapter);
>> -
>
>[Severity: High]
>Can the same mailbox blockage happen here during driver unload?
>
>If LSE is not disabled on remove, a link state change (such as a cable
>unplug) after unload could leave the ACI queue with pending events.
>
>Would this cause the same -EIO failure during the subsequent ixgbe_probe()
>when the driver is loaded again?

That's even more odd. Event is not something what is kept to be send
between driver reloads / FW reinit

>
>>  	if (adapter->mii_bus)
>>  		mdiobus_unregister(adapter->mii_bus);
>>
