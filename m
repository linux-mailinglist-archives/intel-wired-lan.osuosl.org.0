Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1DDyEnCkQ2qXeAoAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jun 2026 13:11:44 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD1A6E367A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jun 2026 13:11:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=nBR3vC2l;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4836160FDC;
	Tue, 30 Jun 2026 11:11:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W36AVDqV1J43; Tue, 30 Jun 2026 11:11:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9A0A60FE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782817901;
	bh=w3jR9MWMpHsJPzgge6Xdf+jjA5mKvESqZ3ixlJeHXEc=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nBR3vC2lm9KkbP+UssbaaHQuSWR1z7LaVHU2BmTAOIZrwiDrGpQMD2wppLFNdsoZg
	 Fluss0ttD9r7h3L+s51mWVUlacVrmdUiRlFRhOTOZ9Sww6zD6ktCXEGwxtC3FlSfyh
	 dbEda0W6u/ghyVZ5AhOPahGvs4yInY92PpMEQVb4alGmqZcs3KKy46K8VwLhOTKAnX
	 vpRLkXFsiq8CudOjRsfjZW2NK4ql4GKCjbKF9XpabDBJxYqMgFdC1uoLIsvBuyj9yj
	 uz6LgtbjAEfghu1aJq/W+IPvfIUSXngql8MlRHNG2VF3pFHNyVTnKbMvt49F/b1Z3H
	 IPaRLmjpSrV8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9A0A60FE5;
	Tue, 30 Jun 2026 11:11:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6EAB3ED6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 11:11:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5482A407B6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 11:11:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qUe82PhShc1T for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jun 2026 11:11:39 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 885CF41004
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 885CF41004
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 885CF41004
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 11:11:39 +0000 (UTC)
X-CSE-ConnectionGUID: XsIwB88vQSqSDrhY51kNwg==
X-CSE-MsgGUID: hHdF4q0JSLS1KudwY8aqag==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="94181245"
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="94181245"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 04:11:37 -0700
X-CSE-ConnectionGUID: qAW6Nh2qTeCitroUrzEWnQ==
X-CSE-MsgGUID: TTNuRvDKQ3KHO+MMr7uA6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="254149659"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 04:11:37 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 30 Jun 2026 04:11:37 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 30 Jun 2026 04:11:37 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.41) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 30 Jun 2026 04:11:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NGt8/U+BvDZUO9srNV3nKR7ddJ/TBjfHL6lgR3O6/L1hTOL8vTz2vMnJLdqRdq23tbrEXbAGIWnFwcc9xiTAXxY0pYEmecRVz4NFMeLjpJCz/SojhSk37Wk8Vvx+u2bppeLdyJRsYCjE4zui8aNk63lffOkgyG3yHMy/hyc5zPe9eJML5oG9bmmLXzk4eH2hk3xmaJGX1gO4lnRbOj3tlhckHZvcf1jC4QZtptbM2y7mE6iyMfSLwUL2+zco8XKhP6UtGLxqZrrfmHDuiibDFaL8vMtUSJGHGGEARFWIZBuAQVKXCzl2elITyve0QooHFawRk7JF2FgXP8/JmaqeDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w3jR9MWMpHsJPzgge6Xdf+jjA5mKvESqZ3ixlJeHXEc=;
 b=l/bgDacUtPv+pseCqaANlqecdQ64sOCtyrBLCnf34zWqDpdxs0Egv+12bSr8BwsX8pmBHJb3l5DO3r3ZqdsFsOjrgf2z8pxz4jWy7kjz8jPsmD64O7cMdeOt1fmltE5JETRMA9VQc8w0y2OBx+7V9DWXYHBzBHM4yqHoqAA39ofJ671V1386RzE7dx5El4uLUt9WJbpSZ38gg72V7okngKNRvuBgyzG4jSZRfdOtErhsI7pT7NJtNdpYaO7oBfKeeOM12Yt5WeODuKt1YYLbdRUtMXxHm3MbyVCnmOPS0UE6AVS2xWiejoi0z7ZAmoEGyMxd0dNpvHCUwlWBML8PGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4SPRMB0045.namprd11.prod.outlook.com (2603:10b6:8:6e::21) by
 CY2PR11MB637721.namprd11.prod.outlook.com (2603:10b6:930:110::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.18; Tue, 30 Jun
 2026 11:11:34 +0000
Received: from DM4SPRMB0045.namprd11.prod.outlook.com
 ([fe80::b630:ca9c:20e1:f485]) by DM4SPRMB0045.namprd11.prod.outlook.com
 ([fe80::b630:ca9c:20e1:f485%6]) with mapi id 15.21.0159.018; Tue, 30 Jun 2026
 11:11:33 +0000
Date: Tue, 30 Jun 2026 13:11:22 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <magnus.karlsson@intel.com>, <kuba@kernel.org>, 
 <pabeni@redhat.com>, <horms@kernel.org>, <przemyslaw.kitszel@intel.com>,
 <jacob.e.keller@intel.com>
Message-ID: <akOkWl/5iI0oO2vr@boxer>
References: <20260625151431.1102838-1-maciej.fijalkowski@intel.com>
 <20260625151431.1102838-2-maciej.fijalkowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260625151431.1102838-2-maciej.fijalkowski@intel.com>
X-ClientProxiedBy: VI1PR04CA0067.eurprd04.prod.outlook.com
 (2603:10a6:802:2::38) To DM4SPRMB0045.namprd11.prod.outlook.com
 (2603:10b6:8:6e::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4SPRMB0045:EE_|CY2PR11MB637721:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b0ccf0e-fd9c-4d58-fb96-08ded6985835
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|22082099003|18002099003|4143699003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: +dDzJzMz1S8+jJILzSEiY65lMohJ1Qj8n1GDgW+C89K7XD3BD/zQpw6h14xTtrdBlWSGWC35/QhXupnVT6kjH31SSjTI/eREZPoJJVBbDQE9pPIg0gzxc+kl2Ol2uUcY1q2VtGsspoX0yRJh+Vk/5PpMROv0m9Ytg/ZDcQtfZI9TNz7HiarZyLfJh6lBb4OG/GW8xtxec4FyFL6iVbMpk0HfsrAzoaTfPVVQf6iFbqCMHdmPAz8+l9UJ8dtskQqklPa7eaIVuTN6LmU8BXox/fM5KoLZSN8FQBpg54MzbVRKIreoMMOWZ54JWL5mEVm+T7o38AE74u147+FBPLH32USAu8ENdo08ZS54EXBQcwDJ3mvNpFbilqVYXkyCdP/OIT0+7jRQE9JB7H2XC1JEQfa4TvrTHCO2CJW78p1P67vM5Fq5wTowbBHUQIzotxA2ztxcS2khutW1Bl55zP3jkY9DsCGz3WRt2LDakFQuZuCFsON6RmXpC7OeVnw5xPdsbE+0Foab/qODWvJIiyTwINeIzma7qOp7B1yrONtkASfh6X+QOJNT8MjWmT6mnp7MaUltGD5V1QNO7aCIPR5r73BE8zowHdfP4mNv2KWHqoKHwx+XhG/o7O9/mIRFOOcALWWCxS2EJbZai0TiShi6apAm3mI8w/QD3wwZM+i9gRI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4SPRMB0045.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(22082099003)(18002099003)(4143699003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BmXBbxUEf7BwNXXkqx1JX7fwejXjdDoetfkplRwmFhb/KTdHentud1y5vZEZ?=
 =?us-ascii?Q?0PxG5mZVk/Psuh2vr5a5v/En3oT1AnJ2W8EnBHoSw3kilFHNUpsJhUGhDmFO?=
 =?us-ascii?Q?qbNU6/RmU4LBAYQXSxXlAL1ITGfrlyuk6MwvOWZ27GZfTG2pB78lXLeL+jLA?=
 =?us-ascii?Q?xkdqGqGXQz7hfsCOs0TqhXrl16DBNGonjq6Ivyqo5Lhqk7IghQUsgJ6L7tFV?=
 =?us-ascii?Q?bNcM6m+8Or+fU2dps8O+RRHWnuqqTbYN2rLfyQM/41Z0VkiJUjf4Yq0LK1p5?=
 =?us-ascii?Q?7tUWC5nqOAWAXMaQwIhFQI4Z6VAXuOBNpt1COun72HvQ8CkwcSxifG69Azyp?=
 =?us-ascii?Q?6VTwxMckH858tSQXTGJAKVF/hbRYmiR53Mu7tvQ2jnkzm7bKNhelJFQTchP7?=
 =?us-ascii?Q?T03gFqMSo3brUXaj7JlR5wC7M2RBAp4RNRcz7vUQ99a1J6110ek+5mGHUFf+?=
 =?us-ascii?Q?GakxkLtImFC29/Nr75nZgCCGj0OT8oeyUQeGLGzvnyCreNxAYb0iaGPQeGPo?=
 =?us-ascii?Q?gK8jo/YytkTLJK+mw9hTEGZSQLTPmisYugCL6UFY/NU7WknRSizNQ9r7+qzg?=
 =?us-ascii?Q?/1z+/8lZp92OUzF1ap8LVOgB7Q+gUgxajYkTtuSpjYvYert5LgXcQM7N5W85?=
 =?us-ascii?Q?v7nPTjKYB2ssBXw7jc76l+UZ/7DaiygXDegDGmCQdZI9iTo9K+jgRKroG+xf?=
 =?us-ascii?Q?381DlDfs5I0gUem3a6mY6XY4TxXuNmKQT+uR9Lc6iT6gCvc54d+U0iKJ6mnB?=
 =?us-ascii?Q?a3djIRL14Uvamalb5WrdEMlUt3zLFm7Tksa+Ff0D0NZ3gfThQbENB5Jo8iLQ?=
 =?us-ascii?Q?DPzapL1/0cQpAV9oSNHIt9+dmS4AD/OIItxecEetGZNysxOPozO9NA9OlUkT?=
 =?us-ascii?Q?6msxrIQJjqWcYryB14dQxoN3DMgpLfknzF9zfq26wUEqF8R/w5iXbMVmt4UM?=
 =?us-ascii?Q?SxSGrRCKMaG55tjht2PXi4FHSprFNgG9YvRdFnZ3LO6c+nOpF0e4hKdxTQCr?=
 =?us-ascii?Q?GNNgzzA+Vgb112IxRMMYFlgV7e4qxXRgf84MZgTMG8lfnQ5aU5e92T9Sr7JW?=
 =?us-ascii?Q?gFUXzuD+zRQ5rj0GyBgqHDAfBwcC8hjqZuJl2WbdGIKR1Pi/J01JQUAqqmQr?=
 =?us-ascii?Q?r3j3FGFKcE1hRM2gusoc1pFarrVT2/wbpmXXMd0NlDIU0ZBZsfrXE32vFK7v?=
 =?us-ascii?Q?3ygRxdt4y7MP5pEnI7errxGxAHw2ZEGGHqkd9egYCf1SBE/pb2gP2+mBgJYp?=
 =?us-ascii?Q?p5VYraJo83YNvBaY++Zgt2199rdvSrMzumQmhXV3RQq1CwQ5/G16jf6+/OfW?=
 =?us-ascii?Q?Isaln/M38fssfSJ/YGAhsZfixEL5tOAVTdq9sbs37w7bVgXR6EUQFjzfJKyK?=
 =?us-ascii?Q?DbPLwXLI3zEIa8r2/8+hNdy3SxNEk5Op+IotkNY2lZgnbbZTMML/ZGm1njC3?=
 =?us-ascii?Q?8kk5oYS0kX0zUGEjYIS671DxZDD/5S/91dOPt1f4Pwm/u8ZK038TbTmROlpU?=
 =?us-ascii?Q?w3pXvyR2IaOQG+oh1FyEN/OIr0ma9oLLt7m7U9iO+QDUsaOznoChea7iSoue?=
 =?us-ascii?Q?qJrZs27AtBkJeraU5fjthB693TL9z2kGZgu6yBpok1nr6B4bWlQ7Wbcu1rv2?=
 =?us-ascii?Q?N4mdI569I7vEs+4Jak9XFDVjezYGrQDXa4vpbxo2W9Ha+yOCsBtr9fHwzUS6?=
 =?us-ascii?Q?Uz/JxX4eQpiSUDDnPkmEVs8CpZPPDee4+MaswYY00al/a2OjtLcQ7Quw4nZv?=
 =?us-ascii?Q?Ruh1+ocBTWo2HHNZt7203BvrpLriF1g=3D?=
X-Exchange-RoutingPolicyChecked: L1NWtTL/1XJ3NGKyc+yY8KaSDoqRKmmeTALex/vn+sxZrSonTw8ZAyqgbiXJNILB2dqAGULQLvyk2nHI1LIXb3Oj8XMhoz7Vj9pr4isC9BhKEplVXAQuOZS7BYWno0Bk+jd8t/84YW6r5LJn6zzTVkBPuyLgJxgJJgftKeGUWAL9/ljYgcLo5/fTPe9jI0NO/ffB/qQrpEGy79fLhBCg6foHg/ufvfg+qWATI3M2VCQGLvFP22cESRaPSecCkhDl9IIADxIZrhl2d6hI3PIJkEui8XyTFOCFX24vAmsfIcUE2gFTm3whkB8ePKAmcljKDsLJ8wIdJrga5MtYhlJnRg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b0ccf0e-fd9c-4d58-fb96-08ded6985835
X-MS-Exchange-CrossTenant-AuthSource: DM4SPRMB0045.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2026 11:11:33.7930 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W7z8Z9gVVDMJZyc+u9uyObmHUC1bJKwyRnRL0LXWmISFuCAFw2ej5XMvBF0DOc8g0p2dktfKpABs5MnS76Qj04uyXpiK8PaSgOX3xg6M7As=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY2PR11MB637721
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782817899; x=1814353899;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=h3fJL+zlXJ4ehITEH5ctqNzra8UeBbtFZiNDWwsSSbQ=;
 b=dDWfEa30DZbIupIUEB5DZBsIrakdWGPxFashaFns8z7bKtlRcnZ8sCiJ
 F6LD+D1DncfCI/vm7fFYNp7upabynbCM8llplVOr4VfsBGghv0nn1df3D
 fFZyKX5MZQMLhQy5RNta750pwJOVo19GggbiRYMrmcuvSn705ntFBoDDx
 nsR+2qdJnz1EgEPAoNNzp4v4MbRSWhSCSqcz9AXxKdBLFdj+rU70J/rHa
 jz57tJS3uKFfvntURYPBNNlOkftBpXLodGwVcB3IeIk7lX6l+WMHJRkVV
 tlI/EvrtQg/Ee1OLZHCzUz6+kHuUI7xKXMyeZ6r9TNP5nnkytRCWnYuQg
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dDWfEa30
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 net 1/3] i40e: unregister netdev
 before clearing VSI on reinit failure
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
X-Spamd-Result: default: False [0.79 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWELVE(0.00)[14];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[8];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9CD1A6E367A

On Thu, Jun 25, 2026 at 05:14:29PM +0200, Maciej Fijalkowski wrote:
> i40e_vsi_reinit_setup() tears down the existing VSI queue/ring backing
> state before allocating replacement arrays and queue tracking. If one of
> these early allocations fails, the function jumps directly to err_vsi
> and calls i40e_vsi_clear().
> 
> For a registered netdev, this frees the VSI while
> netdev_priv(netdev)->vsi can still point at it, leaving the registered
> netdev with dangling private driver state.
> 
> Split the error path so failures after destructive reinit teardown first
> unregister and free the netdev before clearing the VSI.
> 
> Fixes: d2a69fefd756 ("i40e: Fix changing previously set num_queue_pairs for PFs")
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index a04683004a56..471fa7f7b643 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -14274,7 +14274,7 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
>  	i40e_set_num_rings_in_vsi(vsi);
>  	ret = i40e_vsi_alloc_arrays(vsi, false);
>  	if (ret)
> -		goto err_vsi;
> +		goto err_netdev;
>  
>  	alloc_queue_pairs = vsi->alloc_queue_pairs *
>  			    (i40e_enabled_xdp_vsi(vsi) ? 2 : 1);
> @@ -14284,7 +14284,7 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
>  		dev_info(&pf->pdev->dev,
>  			 "failed to get tracking for %d queues for VSI %d err %d\n",
>  			 alloc_queue_pairs, vsi->seid, ret);
> -		goto err_vsi;
> +		goto err_netdev;
>  	}
>  	vsi->base_queue = ret;
>  
> @@ -14309,6 +14309,7 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
>  
>  err_rings:
>  	i40e_vsi_free_q_vectors(vsi);
> +err_netdev:
>  	if (vsi->netdev_registered) {
>  		vsi->netdev_registered = false;
>  		unregister_netdev(vsi->netdev);

Sashiko says:
---
Could this result in a deadlock when called during a device rebuild?
Looking at i40e_rebuild(), it explicitly acquires the RTNL lock before
proceeding:
drivers/net/ethernet/intel/i40e/i40e_main.c:i40e_rebuild() {
    ...
	if (!lock_acquired)
		rtnl_lock();
	ret = i40e_setup_pf_switch(pf, reinit, true);
    ...
}
If i40e_setup_pf_switch() calls i40e_vsi_reinit_setup() and takes this new
err_netdev path, unregister_netdev() will unconditionally attempt to acquire
rtnl_lock(), leading to a deadlock on the non-recursive mutex.
---

which is another valid concern. I'll take a stab at addressing this, but
looking at a bigger picture, we don't propagate errors from rebuild path,
so I wouldn't be surprised that in the next iteration Sashiko would point
it out. I'd say that would be a too big refactor for this series.

> @@ -14318,7 +14319,6 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
>  	if (vsi->type == I40E_VSI_MAIN)
>  		i40e_devlink_destroy_port(pf);
>  	i40e_aq_delete_element(&pf->hw, vsi->seid, NULL);
> -err_vsi:
>  	i40e_vsi_clear(vsi);
>  	return NULL;
>  }
> -- 
> 2.43.0
> 
