Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pIuVFknCUGqL4gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2026 11:58:33 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3136E739567
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2026 11:58:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="wh/aOQhl";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A3F8B40925;
	Fri, 10 Jul 2026 09:58:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qw9vTyLSn7LO; Fri, 10 Jul 2026 09:58:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB55840928
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783677509;
	bh=FI2WN0VxPRGkxVO0VYNHPUkgukzOoOUDCelpnLI0UJA=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wh/aOQhlEyq3U5LLBt5ueWoY+5O5RLpeAjrpCxhGjyMH55VSMLmANdBOb4sT4FUUM
	 OHJedDrzUWjEnPkSy3ifQclH5QW45jiLVtwD6zRlYTI6fs2A/uLJVHlRdcLCHVetTd
	 ualsk7GIDCelM3i6KlsfhW5kafXZQyqX2mm2ul55jG/w30BI+FyakBNO2rwzy0F7VG
	 Sq9bOfBJGqn01EzXc4j/TrY2vm9hX6fg28/xSk7zr0pyb/fDP//KO2/TrPOHa6Wpyf
	 7PFUc3/1B54aCkwoaDoBiQh+P5HyB52BHc2J8g1uNkTroVecWDZvRYtcfUQGr2oSOt
	 C3GPz83njv2OA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB55840928;
	Fri, 10 Jul 2026 09:58:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id AA827320
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 09:58:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 93EBD60639
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 09:58:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e4XJirW-CZAi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2026 09:58:25 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 124A4605DD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 124A4605DD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 124A4605DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 09:58:24 +0000 (UTC)
X-CSE-ConnectionGUID: jZFz7P22SHG5rWVPEwwF3A==
X-CSE-MsgGUID: yU4sGs8OTtWuXhYBou731A==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="88288510"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="88288510"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 02:58:05 -0700
X-CSE-ConnectionGUID: eNU2sM/PSBmWY6M+Ac05Zw==
X-CSE-MsgGUID: olsY8CqtRz614/zMyl0CfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="259741906"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 02:58:04 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Fri, 10 Jul 2026 02:58:03 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Fri, 10 Jul 2026 02:58:03 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.48) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Fri, 10 Jul 2026 02:58:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XqGUh4PUuVEXCQ8T/T59TsJoiJ1hRlNv0rtWmk5g7Qtn4hv6pBbSTKCvgTRPB2FL7nKUYO0O2kIn2uCvRefYVvSzDWenBCw2vpopdNGwQ1j2J8TlidmLZF7blUybu0xKAHDVxLJI6KAk5YGo49sVp4Vf7bNfrJfPFzH1Z6ak7GzBrk6w3KUJ1PMKAZOpHesa1Qeolc8B5fr3k24oHjLT/N/8u7LOhCAPjM/LeWyB1eMVsfxulgLBEcHhHeH+4HMOkF+4CEnbBkdeKRsiYfJgiv+J1ULGKy4bm+QiLuo4or/taWxiFAeV0E/zWCNkHT643ZQosiKKcsYBC3En6jiFWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FI2WN0VxPRGkxVO0VYNHPUkgukzOoOUDCelpnLI0UJA=;
 b=HgL+HGZ397E+opRFU+Nr52NbIGYQTNXDG9N2P4d5ySdveTC0gfacuLQ4MGmBuwglZn+TeFGNnzfXWb1/JuvR7wI/5q/DZxARSwH7gYrJzeACEyQSwu6U5Mau5Iskuj7+82FsppB8/+CgQNOCTs2WPpT/WHtr9+UUStsFX02Xp9RuFTgK0B02gjFX76BPfUMS9Sh34rbuPGF1NrjNQ0bzVHTuzhBNAIqG14nQk+LvHh7zLOXUDF2VOrU6jc5Ce8cTVqvktUmPJMCkZCI5+v/9EEV+gCozLBr7BzQuVoHbNbDqOvk3saQN9kR1dTRzRwB8R3dUxG2FlFEGoW9uY2R3xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4SPRMB0045.namprd11.prod.outlook.com (2603:10b6:8:6e::21) by
 DSWPR11MB9956.namprd11.prod.outlook.com (2603:10b6:8:3a4::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.16; Fri, 10 Jul 2026 09:57:55 +0000
Received: from DM4SPRMB0045.namprd11.prod.outlook.com
 ([fe80::b630:ca9c:20e1:f485]) by DM4SPRMB0045.namprd11.prod.outlook.com
 ([fe80::b630:ca9c:20e1:f485%6]) with mapi id 15.21.0181.008; Fri, 10 Jul 2026
 09:57:55 +0000
Date: Fri, 10 Jul 2026 11:57:50 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
CC: Simon Horman <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Message-ID: <alDCHrOYHvS1EdHE@boxer>
References: <20260702091553.57112-6-jedrzej.jagielski@intel.com>
 <20260708170223.1514429-1-horms@kernel.org>
 <PH0PR11MB59029D8B78557F03143546D3F0FE2@PH0PR11MB5902.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <PH0PR11MB59029D8B78557F03143546D3F0FE2@PH0PR11MB5902.namprd11.prod.outlook.com>
X-ClientProxiedBy: WA0P291CA0019.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::21) To DM4SPRMB0045.namprd11.prod.outlook.com
 (2603:10b6:8:6e::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4SPRMB0045:EE_|DSWPR11MB9956:EE_
X-MS-Office365-Filtering-Correlation-Id: 64303107-2d64-4912-4bfa-08dede69b6e1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|56012099006|5023799004|11063799006|4143699003|6133799003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: NMCsfMSBiled2ljyfV/qdLv7E3IXZZgboWcKasnj1XqjZLCJsmNwr/Y6MWWYtYlm/OQarAtIWCCs2uImRH/D7TJHf7UWHgHx+ljcYTbI2Xvyr1U8nYkzuE7ycWcfPpaLIvmfLQvJx/nd8Gujcqct9jSz1QPK9MQsl/5RAQYTBYl+wpx8XqNI1pDQZHNqyfssyuZgMeiaxP4XRs/z3ey7PZ1ucagsO4QKMq603efYOB4MbZgNO5YHVnUdXH58wfPfqgOZaTnuPq6PdXlViV6C1wv7IjU45wV+DruWUkcZe/4hUbmRRZNEMrmiz7Z1Q5xFUcZ/xjdXsJVZeC+hfiSu9fABM4w6T0YdgbATxmnciCj0D6jQoXmYt7AreQ0474xl/XX+bCStdiv8R6448jy21cGOmf4GF6JmPhxn/m386D4fzlbmGcbQkf0wwqlYqZz5oGoDVC0nl+fvET8iFCjA0xPx/5KYA2g2dO/nH47Pt9FdUbwaa/HZWvSlfF1/RZIvrTOGjIlfyWtG9gmmPhgN27Fw3YtMPZgcB/KF+AwYPjJ2FQpLoD98LYEo/H12ZRCjdFQ6wSwwbJpR+/Jlta5cbFBM3XF6aP470YeaVnsITU1jdC8FNR6Boe7UJH3Q/kso
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4SPRMB0045.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(56012099006)(5023799004)(11063799006)(4143699003)(6133799003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+/H+58/p1eTI3ADVyQD24JWRl5rdRKaVjxpRt9SJnJzvrFi1HW8amrIA1Qs9?=
 =?us-ascii?Q?QftRgu1JYW5sTnZf+1tFLmtxHrCvL+aLDqDJAVqH0TwLinw57fZih+Q0Q9og?=
 =?us-ascii?Q?ndV6WAPhPplvS+RN44a3OFvydPYdGJg9WR7Ial7oJ/vTHd27n8cz+FSr9OjF?=
 =?us-ascii?Q?gult8+Qho552XyXLMJDx0W3uvZjA2DGp8D4lDEvgMSO9pXeP1alisuMhyJnR?=
 =?us-ascii?Q?mTiwSekvP/TAjjLVrq1HymX22fLOf6mFWbgHD+meDit3q9cAf7PEGscV1zhf?=
 =?us-ascii?Q?XRCdCqN+nUX/ZQOOoadwvHvlsCaNdRog3d2DSCqmpzrHx9jpZQJ4k61gmtk8?=
 =?us-ascii?Q?jip52ogoAbLpMRUfTrSaN9mV53o0pBGMB/TIcjY3XDUQ+s2B/6BgMtVOKxYy?=
 =?us-ascii?Q?csym10UJXDLWogmPP1p7x0pNp2g0m0sHdcRxrA6KDDbchhiocSHeihLuSy6r?=
 =?us-ascii?Q?Ho/cy1kLjg3OIP1Cp+XbzRDpcypCP4nQMlD1HklJwjOxtVvQodEDmWx4AcPV?=
 =?us-ascii?Q?ywnN3/+GivScpwExVonOnpwW0kBHjCoGBQDfIHPf9SSUPC7YZ7cdnUWkFVWG?=
 =?us-ascii?Q?in9L6YDy3bwjgc0MoxeWbsN2EzMY+3pmcV6fB8WRPVSjsHmU2YuRalk3QRrj?=
 =?us-ascii?Q?GclvS83CtWHiLe0jNmNBtL0CqDEUphCpNQ+iQPL2ckUffuOtd4bWsFkC0KZd?=
 =?us-ascii?Q?pp4p8k6HGU0eb9ckKlgJIiDVV+ponCVk+LXdxnkYqUV3VW5yalc3CPXLnIy2?=
 =?us-ascii?Q?U5XCoSds4GXDbN1vbbLDgBvdZA93lCfCjFekgmxMSIEj9vAI/Yz5hvveMA/P?=
 =?us-ascii?Q?5yohpOC1ZQgJasxnMmFZMILBOoeHRrFEaYR5mbl5Awpe/1eto7P00yl0JHIU?=
 =?us-ascii?Q?UXixkCuDPYRJEVYwCn3m1GQ+4A7CU1omvdFrAmpjj0NmssL8/VKAEURqnG7I?=
 =?us-ascii?Q?Wl0xLE1kWXm2vQm4gO9GgDdZMYQ+Ax+UMtt6oFWBmNHDzFAhFSq/A6u2720f?=
 =?us-ascii?Q?Uns2RmAr7mJSII5Tp8kiBL3d+JhkJDA6lRAAcmYX9uJluUxNL0DqG1haUJtc?=
 =?us-ascii?Q?e63u5cTKULuDBZ3hUilYl7c7zUtYY07lVbpWPtIPznTQK0dMk+f0xRxb/LkO?=
 =?us-ascii?Q?zIfbEXuHIWKnGG25DkH4XJyIFCnpcCLT7hViAshF1Z+ewFwWf2AblRgECSFp?=
 =?us-ascii?Q?Gw1MhuTAuXwHscb4hv3SYBtvPxSQQocGLQqz7NX02yrFPsPOmvwOIGoJav+T?=
 =?us-ascii?Q?CJdvWsUMZYZVRRCdPQCdH8uPIlogeq0T+iD5ePmBNKGgZV4IzAIljBW3mR+U?=
 =?us-ascii?Q?SFbFUc4vUE51q/XtmJHrsgUXGPAjMXnokL8aaZ5dvu5pY15ApDIjX+o2O7QR?=
 =?us-ascii?Q?Je0mTxKe7mfowqbcU8RNA2zSetH9opqwzlcrh0xdr6J6ApH0v1563dkjirUa?=
 =?us-ascii?Q?+VYgwS9RZv9NdGDOAiELp+MHrxDWLQ2XfjewRk6ZHypU1Q9ZMYGf1ox3BOMI?=
 =?us-ascii?Q?y1UOU8zGTdS3ZGfU/0xt/x5LWsCc3WHolySj2e6YBCdQ3y8oxuAk/iS+NdOa?=
 =?us-ascii?Q?7G51WMGEmrsd5MDwKVfcNn5tBup2offyVM0xiWjB3rvyPshmMe7eZRzyK+WE?=
 =?us-ascii?Q?Gcqpxp/10aDY9wnjZk5JrZH4VLlGA50e/vpjBsOqZpYBWDpDQXt83jvFDRSl?=
 =?us-ascii?Q?gyhcVfd+CCy7ClfMdtxGmOYoekL2s2dFM7qsgeaQkYL7GA/Ytb6wu4ym6SVF?=
 =?us-ascii?Q?GW6wNofSs/epbSG/TuDcvPq8L1aKzgU=3D?=
X-Exchange-RoutingPolicyChecked: QAhK5UjqeR+eQrVSE46XNgwRJiGRBnSgMjMVcBJAbrwrC279TT/A76KlI2FBqab6or8N8P46HCJBF+j6nyzRuJloEVX8/bftp4NkgHop6Q+owD3/SVYK+SFEv0kHA2PaYDSqAJTphOmpDmbub5esrobHi812cFnjkaN64/Kqe/nUSsDuHNOZrXhvnx8gTIKKBDbmoBnK8pwtk96b5LMUvRv0kIRQASWPpvmFcLGkHU8FhLfFZPTjNDAFUGpL4a/REhrdLZrmD4gvRC4CTuLGNiIEyQD0e1iBHJPVc1V4pTc3R1YS8DrS81A6tLiznITba1iW/U8b8ohrvXuVLD0J3A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 64303107-2d64-4912-4bfa-08dede69b6e1
X-MS-Exchange-CrossTenant-AuthSource: DM4SPRMB0045.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2026 09:57:55.5716 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HoYNKY8JDGwhmgCdAzIsldsBjiAhNu/0ZWdcah5rkzgfI6rVShb0zGsB0nYuZr+jFOvrJhg0jsxVm/1RO4yxK/hXYqVuzPuj3S4WnhSqm0I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSWPR11MB9956
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783677506; x=1815213506;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NGUnVy+grJkWHYKUIIcKJCA/lnXuV5CNFbCZH142NYw=;
 b=K6YGa6OZ0Cgg4NcEto6cZi8QPRO+rfqSbxX7PC0BAXbtUi/Ui6C25EEu
 XFMRQJ37P6CUi3/AYAsoI4mD7OR7QjlRSQoD7Hj2vfxYwgNJkc04HP8ps
 9VJ9s1Wh3PDP/oBNVsgMGjCVFspfdGDx+BO4+yosEFAvtiKFgRrV31h0W
 c9ABLhACDt5tRgostq6VFpdTzlIYAotIBW2Or3THgViKhO9kGSRpq8SZu
 LmpyhQ5Z+uWqWyRJbVoDPffusKP5PG8l9NALc7AVzgOOzAUo0uPOXA9VA
 LcdrAFPugunPflVVHoD+08LIh8duDmQrGULNBIQTGU0MwOLCPYg4WJipr
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=K6YGa6OZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 5/6] ixgbe: E610: add MAC
 address runtime refresh
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
X-Spamd-Result: default: False [0.89 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jedrzej.jagielski@intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,linux.dev:url,osuosl.org:from_smtp,osuosl.org:dkim,boxer:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3136E739567

On Thu, Jul 09, 2026 at 09:37:27AM +0000, Jagielski, Jedrzej wrote:
> From: Simon Horman <horms@kernel.org> 
> Sent: Wednesday, July 8, 2026 7:02 PM
> 
> >This is an AI-generated review of your patch. The human sending this
> >email has considered the AI review valid, or at least plausible.
> >Full review at: https://netdev-ai.bots.linux.dev/sashiko/
> >---
> >ixgbe: E610: add MAC address runtime refresh
> >
> >This change polls RAR0 each service-task cycle on E610 and updates
> >netdev->dev_addr, hw->mac.addr and mac_table[0].addr when firmware has
> >altered the MAC.  A refresh is also invoked from ixgbe_reset() so the
> >address survives RAR0 clearing during init_hw().

[...]

> >[Medium]
> >Would it make sense to hoist the E610 gating out of
> >ixgbe_mac_addr_refresh() and skip the rtnl_lock()/rtnl_unlock()
> >entirely for non-E610 devices?
> >
> >The type check lives inside the helper:
> >
> >    static void ixgbe_mac_addr_refresh(struct ixgbe_adapter *adapter)
> >    {
> >        ...
> >        if (hw->mac.type != ixgbe_mac_e610)
> >            return;
> >        ...
> >    }
> >
> >so 82598, 82599, X540 and X550 adapters (which comprise most of the
> >ixgbe device family) acquire the global rtnl_mutex every service-task
> >cycle only to return immediately.  Something like:
> >
> >    if (adapter->hw.mac.type == ixgbe_mac_e610) {
> >        rtnl_lock();
> >        ixgbe_mac_addr_refresh(adapter);
> >        rtnl_unlock();
> >    }
> 
> Cannot introduce rtnl locking into ixgbe_mac_addr_refresh() as this
> can be already called within rtnl-locked path

i40e does a lot of dancing for cases like this. rtnl lock is handled via
boolean provided as function arg:

static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
...
	/* Release the RTNL lock before we start resetting VFs */
	if (!lock_acquired)
		rtnl_unlock();

...

end_unlock:
	if (!lock_acquired)
		rtnl_unlock();
> 
> >
> >would avoid the rtnl_mutex contention on non-E610 hardware.
> >
> >>  	ixgbe_reset_subtask(adapter);
> >>  	ixgbe_phy_interrupt_subtask(adapter);
> >>  	ixgbe_sfp_detection_subtask(adapter);
