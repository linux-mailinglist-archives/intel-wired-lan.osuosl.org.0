Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB04B22B94
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 17:22:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F0D22845DD;
	Tue, 12 Aug 2025 15:22:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z7xBhbiO494M; Tue, 12 Aug 2025 15:22:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B55E0845E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755012147;
	bh=m+yARb/QFeShHiwiZTQvnmufFDof2MT7FQYw4fdgZpA=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=s3f+WzpYYNNHzOz3WvjUc/Yf0AhamCuLm5RkJn710KU0YQOfKrpUFESl4bzes7RHO
	 yKbBumPlTyjkONefrKSNu7Xpe54sx7BHyVdILhiLb8223yewgcsSg9YPLFOjVHUKpf
	 fy110sd3L3GXwRccwyLrH/o8iQLcjoQIN5PdS/XQorDpiyQraYhgmIF5idZF8/3B/I
	 DJ5ycjJ0e16isoGOPvEZSoQJmxazTIGMY5R4ImlEVfNSMjXsk13Kd+EmGMY/M2swEr
	 Jl/h08CqNVawq/KRXdzraDgRm7Gkv7cNbUVHtYfC1v+yIISxiDVHlQGgiLwIbhX1Xv
	 KN+904h0ncfew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B55E0845E0;
	Tue, 12 Aug 2025 15:22:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id AF9E21C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 15:22:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A10B26087E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 15:22:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9bQdFQgQ3MSf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 15:22:24 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 12 Aug 2025 15:22:24 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9E57960A53
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E57960A53
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9E57960A53
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 15:22:24 +0000 (UTC)
X-CSE-ConnectionGUID: fVeuCq9vTy+qbm6iCX6YmQ==
X-CSE-MsgGUID: C4MJqExcTPaLg667cKgOlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="57436229"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="57436229"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 08:15:17 -0700
X-CSE-ConnectionGUID: Ldf3lJkWSvind524JmILtw==
X-CSE-MsgGUID: etR9lx1URwi1hdRJMuOH5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="197220826"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 08:15:17 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 08:15:16 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 12 Aug 2025 08:15:15 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.51)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 08:15:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u2ZS+8VvjW1khHYDxA2DHD4vknIyCImzPm4RljEX+0uMt+sO/ccGcSMD+8YiYlR77qprJcLmZu1c2Mc1qFsz7fkCB+/TPwBFQGTIJHbiwzyXfTpX/zIv5DO5RPk8KUvm4UN3xjRtZ6PlGYlxSs3s+3MuDc3rv23jVBPC7UOmIt4iW/3bUCfRRS0CtQV/QRsjopjKsrZfY0GwOd6W/XcQaKeiLXTKd6lPKXEtWMa8eNDSFLSmuFJWTLg17BRWgPTyYd5Op6+QOhj1l7/S1l4jWkVN0jcoJLD7wXMtSapABmBeuW2EnP+KkjgWuBqNT/c03wAWvszMcPwHAzJ5fXQxAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m+yARb/QFeShHiwiZTQvnmufFDof2MT7FQYw4fdgZpA=;
 b=kZBomizu257cyk3ozkED44u7MI97rrrEANz0LJfE2ftWZRxYYiIGREk9paamAk3b5dt8NJwAMs5LxfRLihudOZkUnHjLRNmnbdqLknIV6ZOLTkcTyvLyeo2UzJAL4Ad60NQ5h/YRiJZyzcB21uzcmsM3V7BTVTLfcKBOTcd/UtXTdWBXnbCgW9f3hQbWIB8kp1fC2Wi4LIY/KB78ZEj1rCAg8MOsa6SZGHcA8m2gmNx7BlBgU9JzukHndii4QeZvjJdbuRNANnPibNWKlp5EOYPVEt1RZzTF+hvzkoHXsI7Sag2oodKpLak+xFwZeZt+VrHfhRzWPKaYF55pXW2cVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 MW4PR11MB6618.namprd11.prod.outlook.com (2603:10b6:303:1ec::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.22; Tue, 12 Aug
 2025 15:15:13 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.9031.012; Tue, 12 Aug 2025
 15:15:13 +0000
Date: Tue, 12 Aug 2025 17:15:03 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Paul Greenwalt <paul.greenwalt@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
Message-ID: <aJtadxgEiPQXfRl4@boxer>
References: <20250811084406.211660-1-paul.greenwalt@intel.com>
 <20250811084406.211660-3-paul.greenwalt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250811084406.211660-3-paul.greenwalt@intel.com>
X-ClientProxiedBy: DU2PR04CA0296.eurprd04.prod.outlook.com
 (2603:10a6:10:28c::31) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|MW4PR11MB6618:EE_
X-MS-Office365-Filtering-Correlation-Id: 76f9437f-28d7-43ef-eac4-08ddd9b308e7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?BnqwDpMYaeTUU/EqhxKJAoLVykWeu6cKhK7umSDsNZh9iu4Ahu5tNI7SvKxm?=
 =?us-ascii?Q?0xc+erABzuZbJXNajRn8MITRgmpnMTuHfCjJ+e1ghVicIxd0GVXKtHE3Jf1S?=
 =?us-ascii?Q?oAVa0EZ9mRqWQkgLP+uTMMl9vhEg5+zHBlRNbDWIjMNuEPu8j4QyLSDi4tvj?=
 =?us-ascii?Q?Wjehp5LwwDxZi8aRyWEsGkJE0ilmVC7pQDcVUiCpP7ZuawKr7HnSapyQMa0V?=
 =?us-ascii?Q?w/W7gOhmtHlYAiMl+Piyc4V6fFDHOSwJRozu5QRutdD3B0bH963RAwmi/3aS?=
 =?us-ascii?Q?uW/bB+m+HYGWHucx0n0dc/EvsCwPgRLmPCSAoQVtgguv47ZCVGKUcFQFPbkx?=
 =?us-ascii?Q?3c8ynfqx0XAu/nIsGDlc7c97ONjg9SbrxkV0TfuvYoXbPNNXqU1Lr4TKouyp?=
 =?us-ascii?Q?7kXmZErT15oW+CmeBL57mOtJfqFN9Db4nfu77pRoTSNCorMyRd6j5DCfET8+?=
 =?us-ascii?Q?N9ZlwbvzQvzc0BHH6pP5uZUe5O4QOV42MBPnQhjwjeIPFhfnzP1Ny9bCXtAA?=
 =?us-ascii?Q?ljLoNxunnRR2p+jxQOHDQ3Qn7l1Uds1GZTWZbxfq6G1yQxo76OyL8RONBrgT?=
 =?us-ascii?Q?fvsRh1mnqQsFHjWrYkvCy0nWHwGhWJhQbV7WcNGHUwVe4sRerRE5t8UK/WiJ?=
 =?us-ascii?Q?Ohd/P8DRrKXz7f4yOwH8bz44SxNEGMyrbWqnUHklzvsnEycaytky66o41ZRF?=
 =?us-ascii?Q?h1vPauEsPPGdJcZ1Noq2MTY/Mc+ehPNOyrIYoXJcxxcEK9IH7w+on21E8eWn?=
 =?us-ascii?Q?mb9qUCsLv0ORTm8VP97NkxlnPk0e+rQdfr8ohFm/BXkT7v8CGKNON2ZrYmlG?=
 =?us-ascii?Q?+ayKdHqxIp74HUUvEhOLpqCjE2tVPYEDkjrS7+17w/YBOPjq0sdJgFx4/fuJ?=
 =?us-ascii?Q?Msb5JZ8TpslMiitWilJq0h0Ba+/QDqUF+wMJqTiTa1FYeI9vPn4V3CIv3UPv?=
 =?us-ascii?Q?eqRssXafGrT268H1WbVgpRWiF1YLFXuH1KsS9Iq14HADGUYHcl3xwdbz50R4?=
 =?us-ascii?Q?YhYZ8Lld55GN4uuVEviHFNT0531E0gi42ptztfn+reHPLCMkAf3he/uUxsqB?=
 =?us-ascii?Q?w97RIh4+VS1TOkeg8vHNB8D2kIFGv87eYTCz3FglZv+i1VmDEZ0jzwVuRExZ?=
 =?us-ascii?Q?JYDpCakTTlNPKy2noMFzstjqUKHOl6kBaLyGvdh20li+1jd3Qg/Vwgj9jtRJ?=
 =?us-ascii?Q?mw8H0JtvFnWd2TkA1+XW2nJ3XBtzoMN0av6fBDJzMgMbyp66iZwUu2Mkh6It?=
 =?us-ascii?Q?UtZnrsX92D66v4iZr7ELyL/1zRdMRwBQvmqun/FDAQfLtCWUSExBSzsCdOxM?=
 =?us-ascii?Q?wbksMvWGnZ9P+fP44LOrR0mnz9/PfEdlmWd8DS0PhLCVGfNRLfvgoQQJOeAL?=
 =?us-ascii?Q?JVQyoeIfzMFeHLufYPXTQgM5QO4/zIE97tPjwYmUlshJU3wRQnFOfDnz3kOt?=
 =?us-ascii?Q?YCuEt3yv3vE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Yw5+WCBmMufcKDP1eAxPpvlkw8pJM84UShZrTTwABeBDB/5As1LygtMpCbEU?=
 =?us-ascii?Q?tF/11M1qo8YH7xMobgux2VAvlw65FWmy0/fzttmhImu8lsPjRehTZeNEbbZj?=
 =?us-ascii?Q?x9gkVs6hu6cuzPuSbF94Gx2PLfPvsp+cGv+sySITeuSGFNEgnp6LkyYGuS0C?=
 =?us-ascii?Q?C2EdqFFWs86t+y2+qOYt4Gr++a07jBDNjMOY0ayCu+rJBpuL1llfAeDAWHX4?=
 =?us-ascii?Q?5/uiYN1vhJ9dFlg2yrzd/LhGlMEFcQbM53rqKyW+//QcfJ5an8K2D8xkrkBc?=
 =?us-ascii?Q?UDebayLgSoXHOudbFLXpRhiRVGJO3dq+UbcIr2mecVmFBjnLvQ1pdQBxcJOu?=
 =?us-ascii?Q?xmiaf5LNs15OWN46qsTs1pbDhnO5IEoDu78XH5n2jMxabuaMlJwb4gb5T4iu?=
 =?us-ascii?Q?HA8h6aO/noBV/KJTXIUyioVaP7nwhpjB1dnxfKEWKL6OwLPznZrEdp37mmmS?=
 =?us-ascii?Q?9D5k7rG2uxnz3dlg6UWlK/lDx1eOkPHdUnoZKs1VM5HM6HB+i+pqKLuGk3bd?=
 =?us-ascii?Q?yVnpBRenxd7Q40bKxDQgfDfJyNn7tzpIiBzSvBEsJDEiwBrKL8NKLY8fsg5A?=
 =?us-ascii?Q?bK02qt0Sb7XgByx9LcSmTK1BT4O5MX61BCjL2HY/ViqkOe7BE4I30mfnYYDy?=
 =?us-ascii?Q?pvxct+/5FdG6s1ZTnKRrpTDilTdlrDy4dxUy0GLWiP7mmBjloVOeiQ5uTodi?=
 =?us-ascii?Q?NnPozdXCWhKlqbprNp3HvGR5m0AIwYIeuFhXjKSx+l3r5lP7wABZLkpgdZY8?=
 =?us-ascii?Q?PtUzldX0XTtCXRINbUYEvOg5RzUf2gYbnBSH1qPxxW0hatyFOxdpqsPy4kRK?=
 =?us-ascii?Q?63OEjQNtssyqMmRF6m1VHA7bq2IK0JsEMunh6IMK3NvK9Sh/rNDtDUeGFbf8?=
 =?us-ascii?Q?TBT7TKwZWoryTJ4ETudYXQwwujRwKnsv2jlIW2xphLHea4vdkLRwiRAQ9kaR?=
 =?us-ascii?Q?zxyp46IqTm5dtG6A4iYceZnGc9JdccgE8ISoLLAes18vCyP7pP9eWvlW1F27?=
 =?us-ascii?Q?Tp+e2SjW8hhefIm6LyEqnC2CXLicVUoojiZq6BoYlX8mGjVjtGpSL2SE+dtV?=
 =?us-ascii?Q?TYIQ/dwDLZ3pzzbAEAOoB1gw58iO2suyinoiudVcvNVTH2iKn7a6d6lx1BtR?=
 =?us-ascii?Q?GX+8xtiNKen949mFA9L5xg5A47WHS0cTsAf02R5CRLQFsLGtdxSxCnX49qpg?=
 =?us-ascii?Q?nX7U8H8gB/gr74954K19klgWRchh8zAE1ieLBgoOlAFU/6YR/1EuX9/HFSsT?=
 =?us-ascii?Q?GWReSxhrdisMU63AikCW1+16Clym3rMGt8hHL8xOpf3Yb3p+kgnzUSOz/KDu?=
 =?us-ascii?Q?yU3dyoDQL5erFagTSLpxvWbgcCKpjWgIvM+o61e2eoeBc8LQkDStcRmKlJ2i?=
 =?us-ascii?Q?c8GibEWZ5bzsxlCn7QfQWJWTFkdUUSbYJbURRUzzmb5TqZ7SFJFz2uSJ1Lj1?=
 =?us-ascii?Q?EpPWWkW+Stcr6cSF4bO8qAjxnp2lZ8hQKWTA1VA4T5IBEyzleOFTfmoJtTFq?=
 =?us-ascii?Q?ChmcKCeYRrSPEyhtHL/mOFxjLh2BiV+EFowqwMTT19tWbAk470PmEe0Oj4BO?=
 =?us-ascii?Q?nlhnkPmLFHu8KA/by0N+k5rx26yv13kSmZetvWMmuWrG0ZtKAULU0T7dm5IV?=
 =?us-ascii?Q?Yg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 76f9437f-28d7-43ef-eac4-08ddd9b308e7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2025 15:15:12.9760 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MWuNwcwYVHxlOAN87rsEx3FsfF0KX36i5opW32qasO0SvMdo7lQTbnbFcA68z1Ane9unmQ9m8+vKQcHut057N0kgvet8ihdVouv5GlBDSs0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6618
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755012145; x=1786548145;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=QozWIDJf54IGBspMz9cxV4/mq2w+MFYEug9T1kmpfUw=;
 b=Ek399YJA1aQ1a7md+RhABInmBsEFWHJuhKQqQgIaUox4K7Y6+0fvBO9K
 MU25paEh0cVL1NN4epd1xnpZXUkTdZyVEqoi3MCUrOCOzV9zn0GddO8N4
 RPuOp/05FtVfXOM+vvqiiW5fLNJKvR7nCOB6M/IUv4b5spLazbFJbu2uE
 +iMOikF95/P+Lj3qTXz4VZXhhI1+4Sc/Mp0QsxzdnyZ5uyjc9MHVtZnmF
 OvU+FS1Ix4xCqxhRR4xAHbtHRSLq086zV3UW5U6sH5Z+rqzT7gRCcrnyZ
 5yR0lC4tKJj2D1DuehhcPl4dGd+MkAimz0ESpBd46iXvw5d3kc0cTI/It
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ek399YJA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 2/2] ice: add E830
 Earliest TxTime First Offload support
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

On Mon, Aug 11, 2025 at 04:44:06AM -0400, Paul Greenwalt wrote:
> E830 supports Earliest TxTime First (ETF) hardware offload, which is
> configured via the ETF Qdisc on a per-queue basis (see tc-etf(8)). ETF
> introduces a new Tx flow mechanism that utilizes a timestamp ring
> (tstamp_ring) alongside the standard Tx ring. This timestamp ring is
> used to indicate when hardware will transmit a packet. Tx Time is
> supported on the first 2048 Tx queues of the device, and the NVM image
> limits the maximum number of Tx queues to 2048 for the device.
> 
> The allocation and initialization of the timestamp ring occur when the
> feature is enabled on a specific Tx queue via tc-etf. The requested Tx
> Time queue index cannot be greater than the number of Tx queues
> (vsi->num_txq).
> 
> To support ETF, the following flags and bitmap are introduced:
> 
>  - ICE_F_TXTIME: Device feature flag set for E830 NICs, indicating ETF
>    support.
>  - txtime_txqs: PF-level bitmap set when ETF is enabled and cleared
>    when disabled for a specific Tx queue. It is used by
>    ice_is_txtime_ena() to check if ETF is allocated and configured on
>    any Tx queue, which is checked during Tx ring allocation.
>  - ICE_TX_FLAGS_TXTIME: Per Tx ring flag set when ETF is allocated and
>    configured for a specific Tx queue. It determines ETF status during
>    packet transmission and is checked by ice_is_txtime_ena() to verify
>    if ETF is enabled on any Tx queue.
> 
> Due to a hardware issue that can result in a malicious driver detection
> event, additional timestamp descriptors are required when wrapping
> around the timestamp ring. Up to 64 additional timestamp descriptors
> are reserved, reducing the available Tx descriptors.
> 
> To accommodate this, ICE_MAX_NUM_DESC_BY_MAC is introduced, defining:
> 
>  - E830: Maximum Tx descriptor count of 8096 (8K - 32 - 64 for timestamp
>    fetch descriptors).
>  - E810 and E82X: Maximum Tx descriptor count of 8160 (8K - 32).
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Co-developed-by: Alice Michael <alice.michael@intel.com>
> Signed-off-by: Alice Michael <alice.michael@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |  33 ++-
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  35 +++
>  drivers/net/ethernet/intel/ice/ice_base.c     | 245 +++++++++++++++---
>  drivers/net/ethernet/intel/ice/ice_base.h     |   1 +
>  drivers/net/ethernet/intel/ice/ice_common.c   |  78 ++++++
>  drivers/net/ethernet/intel/ice/ice_common.h   |   6 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  14 +-
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |   3 +
>  .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |  41 +++
>  drivers/net/ethernet/intel/ice/ice_lib.c      |   1 +
>  drivers/net/ethernet/intel/ice/ice_main.c     | 113 +++++++-
>  drivers/net/ethernet/intel/ice/ice_txrx.c     | 171 +++++++++++-
>  drivers/net/ethernet/intel/ice/ice_txrx.h     |  28 +-
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  14 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c |   2 +-
>  15 files changed, 730 insertions(+), 55 deletions(-)
> 

(...)

>  
> +/**
> + * ice_cfg_txtime - configure Tx Time for the Tx ring
> + * @tx_ring: pointer to the Tx ring structure
> + *
> + * Return: 0 on success, negative value on failure.
> + */
> +static int ice_cfg_txtime(struct ice_tx_ring *tx_ring)
> +{
> +	int err, timeout = 50;
> +	struct ice_vsi *vsi;
> +	struct device *dev;
> +	struct ice_pf *pf;
> +	u32 queue;
> +
> +	if (!tx_ring)
> +		return -EINVAL;
> +
> +	vsi = tx_ring->vsi;
> +	pf = vsi->back;
> +	while (test_and_set_bit(ICE_CFG_BUSY, pf->state)) {
> +		timeout--;
> +		if (!timeout)
> +			return -EBUSY;
> +		usleep_range(1000, 2000);
> +	}
> +
> +	queue = tx_ring->q_index;
> +	dev = ice_pf_to_dev(pf);
> +	err = ice_qp_dis(vsi, queue);
> +	if (err) {
> +		dev_err(dev, "Failed to disable Tx queue %d for TxTime configuration\n",
> +			queue);
> +		goto exit;

nit: in this case you leave queue pair in limbo state. i would be trying
to bring it up regardless whether disable succeeded.

> +	}
> +
> +	err = ice_qp_ena(vsi, queue);
> +	if (err)
> +		dev_err(dev, "Failed to enable Tx queue %d for TxTime configuration\n",
> +			queue);
> +
> +exit:
> +	clear_bit(ICE_CFG_BUSY, pf->state);
> +	return err;
> +}
> +

(...)

>  
>  dma_error:
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
> index 2fd8e78178a2..be74851eadd4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.h
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
> @@ -310,6 +310,12 @@ enum ice_dynamic_itr {
>  #define ICE_TX_LEGACY	1
>  
>  /* descriptor ring, associated with a VSI */
> +struct ice_tstamp_ring {
> +	struct ice_tx_ring *tx_ring;	/* Backreference to associated Tx ring */
> +	dma_addr_t dma;			/* physical address of ring */
> +	struct rcu_head rcu;            /* to avoid race on free */
> +} ____cacheline_internodealigned_in_smp;
> +
>  struct ice_rx_ring {
>  	/* CL1 - 1st cacheline starts here */
>  	void *desc;			/* Descriptor ring memory */
> @@ -387,11 +393,22 @@ struct ice_tx_ring {
>  	struct xsk_buff_pool *xsk_pool;
>  	u16 next_to_use;
>  	u16 next_to_clean;
> +	u16 tstamp_next_to_use;		/* Time stamp ring next to use */
> +	u16 tstamp_count;		/* Time stamp ring descriptors count */
> +	u8 __iomem *tstamp_tail;	/* Time stamp ring tail pointer */
> +	void *tstamp_desc;		/* Time stamp descriptor ring memory */

we spoke about putting these onto ice_tstamp_ring...if i am reading this
right you want to avoid touching ice_tstamp_ring in hot-path - is that
correct?

if that ring is etf-enabled then does it ever process the normal tx
traffic? what i'm trying to ask is whether you considered putting these
members onto union with next_to_use, count and *desc.

how different is layout of ice_tx_ring after your change?

rest of the code looks good to me now, however i still would like to
clarify things mentioned above.

>  	u16 q_handle;			/* Queue handle per TC */
>  	u16 reg_idx;			/* HW register index of the ring */
>  	u16 count;			/* Number of descriptors */
>  	u16 q_index;			/* Queue number of ring */
>  	u16 xdp_tx_active;
> +	u16 quanta_prof_id;
> +	u8 dcb_tc;			/* Traffic class of ring */
> +#define ICE_TX_FLAGS_RING_XDP		BIT(0)
> +#define ICE_TX_FLAGS_RING_VLAN_L2TAG1	BIT(1)
> +#define ICE_TX_FLAGS_RING_VLAN_L2TAG2	BIT(2)
> +#define ICE_TX_FLAGS_TXTIME		BIT(3)
> +	u8 flags;
>  	/* stats structs */
>  	struct ice_ring_stats *ring_stats;
>  	/* CL3 - 3rd cacheline starts here */
> @@ -401,13 +418,7 @@ struct ice_tx_ring {
>  	struct ice_ptp_tx *tx_tstamps;
>  	spinlock_t tx_lock;
>  	u32 txq_teid;			/* Added Tx queue TEID */
> -	/* CL4 - 4th cacheline starts here */
> -#define ICE_TX_FLAGS_RING_XDP		BIT(0)
> -#define ICE_TX_FLAGS_RING_VLAN_L2TAG1	BIT(1)
> -#define ICE_TX_FLAGS_RING_VLAN_L2TAG2	BIT(2)
> -	u8 flags;
> -	u8 dcb_tc;			/* Traffic class of ring */
> -	u16 quanta_prof_id;
> +	struct ice_tstamp_ring *tstamp_ring;
>  } ____cacheline_internodealigned_in_smp;
>  
