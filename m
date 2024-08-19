Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BC99C956B7D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2024 15:07:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E086F60804;
	Mon, 19 Aug 2024 13:07:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mq1AYbyV5KXc; Mon, 19 Aug 2024 13:07:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 21747607DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724072850;
	bh=ETYLDfsR6C2LoX4nO+5kwkCm+EOA9igU5MnuTNDW8iA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m7m9ALyPz47HEWzzP4Bg9c2T+fpaxHEOIwyU0g8eYmcD2Lh1IfMvRSUU/iT1jpcVK
	 yZeEKTBGq4NJq5f7XHsrEEYl+rhsODhHO1U0dpMgIIeOTdcFr76GvomjGQgA7UCv6Z
	 lVJoeq78ULxSYoN0YxamN32l//iJ7T99/bIokYE7YuiC1DSnDvExYJ/UvbLROwT1WQ
	 HhJxTdM/5JHxsY8U/8TmUJZTTYkc8FzdUHZ5T54rC93HkwmegoqAhdnM7XJ25//dNb
	 2WgtFon82DCYddH/fY5aThG0fzveQQGlMMoQrFCKIcnaeRoFONWirOTF54v7o1Tmes
	 YzY7t/+kRMbug==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 21747607DE;
	Mon, 19 Aug 2024 13:07:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3BC6B1BF3D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 13:07:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 28B09607BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 13:07:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qhqt0CzUYj8D for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2024 13:07:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C091F60724
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C091F60724
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C091F60724
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 13:07:26 +0000 (UTC)
X-CSE-ConnectionGUID: uw2a0n27QDqVViUxuYhp7g==
X-CSE-MsgGUID: XKR+8TXNRpKlCTL3N9IgqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11169"; a="32983239"
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="32983239"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 06:07:25 -0700
X-CSE-ConnectionGUID: Nusg0QrNSGmVvq3cqLQIsg==
X-CSE-MsgGUID: iq4tTSp2Qeu95EMePwQtQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="60029167"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Aug 2024 06:07:25 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 19 Aug 2024 06:07:24 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 19 Aug 2024 06:07:24 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 19 Aug 2024 06:07:24 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 19 Aug 2024 06:07:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R6VuqV8Va+OFC8c5lkXmtTg+zZtVwywPxSJrOxUpH3yS/rsFFhclSfiaoL4yPFIrGDFvlljOctNcyE+BAjPvLfXj2VZKQcMlqSIVMU1CWPIzwHQfWd7poKpeuTSVlotGcrCGgOcgrw8OtE5cCANhZDFJBVJZZU5iUJ5UdoTrYTPtbBeXO0FeeOy1MZya+nlCu2gZr28Fe3BoctO/32WRKKjhv8AYl4C3R5R9H6ToIyWh8MOuAX1eF1waZMhQsGfVbmQwAEDmCgVWGwu1u5FgrPopY3Uls+sSJFQKtuo6SdnEUhFiE1xi/ngPiLZnWC+XWA8i9YZDKnKp7rBTpTnfvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ETYLDfsR6C2LoX4nO+5kwkCm+EOA9igU5MnuTNDW8iA=;
 b=wP6hSA1VFaoOpt0ZGP9XF8G8FUQnoJL1oZeecROak21kZqaH4IhK+gS3y0bjCvogfsHhdSvx9H/139PCA1m53AJn6ZVsmgCXbYNHIJzC1h2ZYrTha/ya8Py4sjrFJisT6+JRUbWYjwhl8D7WiBN5Gk886PCX51IinMScvpTN0Mtq1qEHGvn7Odu2uk5v1xKq+NkPjuhFYhnWqre9sk9gc0ZEu1ZJ24Rz1CzSff1111Hm/2SNbPnt4UwtWYNUG64qrasjdVZc0yh4Yklvlg12/QymXcNwJiiMTiWY7vvW99CccHXyjcuDnehuizr/pqVxOcGtx4x2UFMmJf8073pNaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 LV3PR11MB8508.namprd11.prod.outlook.com (2603:10b6:408:1b4::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7875.21; Mon, 19 Aug 2024 13:07:14 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.7875.019; Mon, 19 Aug 2024
 13:07:14 +0000
Date: Mon, 19 Aug 2024 15:07:00 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <ZsNDdPTHu2OACpPq@boxer>
References: <20240711-b4-igb_zero_copy-v6-0-4bfb68773b18@linutronix.de>
 <20240711-b4-igb_zero_copy-v6-1-4bfb68773b18@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240711-b4-igb_zero_copy-v6-1-4bfb68773b18@linutronix.de>
X-ClientProxiedBy: MI2P293CA0006.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::18) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|LV3PR11MB8508:EE_
X-MS-Office365-Filtering-Correlation-Id: 57d6b2c5-45df-4bef-bd6e-08dcc04fd84d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Q+PRmu+5RwbQpyavP+IfvWQO2HgAjWSYaB08wOuGRO8RdCLnIC7vpCwvcyLL?=
 =?us-ascii?Q?/IONG+1LSEqmwmbyuRcIT3pykR/QEcKzuQ0qxDQeEIewezyXNETPVChuY80C?=
 =?us-ascii?Q?EwaBSJ+9bcJdpidSZzRJ75Hyl0dYIChSDADJiMaa6mwuSpAaimR6zihb7fzA?=
 =?us-ascii?Q?eJ/tRjxkhnQK7GstuaesAMWkXpkhOlfFIbQq385L+4BUMx9nU7bHTumkM5uL?=
 =?us-ascii?Q?92JEQtyEMWbHDrCJzZh72xSn5MMLcCqiKBwYLovpG8d/fa79KcCSUXVGciRb?=
 =?us-ascii?Q?BiDP1IFOPIirTqCQMhSts0NXujjS8TFF6QcZwW9xjGJ1MoV7EidhBR02y01Y?=
 =?us-ascii?Q?Sj5BcorIU1Rfq3dQddmHX7GHTP1GoD5dCUwA3wI3167gYOME4sm9FwwI27Pp?=
 =?us-ascii?Q?bwbBSMoNyZY/hLxw3AtpgmPU3nBHWwNZ3As9YSMqctrVEttV6WdYshEwui42?=
 =?us-ascii?Q?qY/d3MTHsZsqcz4dN2XeaPMOLsUNxEVGZfOL9/iQmJv+6ACaRdflHfdQHy/5?=
 =?us-ascii?Q?Y2FXkcfTh5BtE4nwz58jiReLYwZc3ThsCOTJVTZ7uRMiG3/dvCifhKe9keNv?=
 =?us-ascii?Q?jTJmEEZPfaHMxbcvcP4xAcAdAX6RRqB7mCqNQGCFyCYL4JC2cHyVymI/fsJl?=
 =?us-ascii?Q?6YTW5JNvtKS/fNPOgQ4Dlj2ytkoGLefzf4A1/KYX0nAuXjz17D+rLnXHM13o?=
 =?us-ascii?Q?tURXkX4cRYr53lVMmdLfDXUSngelll4y/zPGj/zYHUfaRXsKcT0nFdDCa0f/?=
 =?us-ascii?Q?wKtglCTQlrp/e4GkaxH5hPCT7BjsxilxYj+hahuFSk84+DLHtCFhD3lGoe2/?=
 =?us-ascii?Q?SE7R1kn/38CWzFlf0IPDGMQHHjmclVR44zvq39CuNBp9x61CX0JV5NVj/0qg?=
 =?us-ascii?Q?Ku4ugs+mV3bCK7nPwnHmprQ1QrhUNtAdxmKByebv2zOXgPW4uwDvnwQelIkB?=
 =?us-ascii?Q?bwJwowNhODZCwvPNXmfeUMa8chq0l5P2lYWjqq4S9mS0ifM7GhsqO3l+USfq?=
 =?us-ascii?Q?S6QYmNTSBtpZqGP87kiK3TAMDV8zseFkl74eo+FgT8H+81t7v2GK9jJCcFOS?=
 =?us-ascii?Q?6K6sXIaqHcNvif2ih09AUHZaruz2Y2hwUP3+6lCJ6U7I2C7ll7vcUHb/TvvQ?=
 =?us-ascii?Q?9qqOTJ/s1CGH+wIUBC+uL6uI7NxbVYpYrk7y0FANwHCS+WEOaBKBwTdBQ/YP?=
 =?us-ascii?Q?MBQivOtg06rX63mVE4xlDV9lLp0ZL2SsHtj15Jv2qaAwk1Udl8xH73hgG5Fj?=
 =?us-ascii?Q?Jpcnm+DuC/2kNX3Hcl91bPNQukQprmH/YYPLUKxrCWz405Ys5T6zhmgo1nuD?=
 =?us-ascii?Q?mU+eZzxnZIXWEGgRkSwc5kv3n9VOVy+oXT2sM/lN41Tpig=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xKLrNVUqunWw1YJijRTRpnpDrkmDl/ClUwmXhnhJsd5c9B2/Ou680BCqZJM8?=
 =?us-ascii?Q?HE6AEyQSQX5S9WXZBqSVjzVsgnJ+8FDoY9jXAm/ElwFycYCmBBjRdpqDxZk+?=
 =?us-ascii?Q?dTQVAtX1PtaU88UhDLkponXrw0VbzRbSIz6f2dJVTvYjVt4bhq/4exUPjv1c?=
 =?us-ascii?Q?h3y1MNr82qXpzrh+a16XpGHz+RFE/aqn644ZNIF4z5+DkzgulXsiij9NnK/l?=
 =?us-ascii?Q?LSQfs+xHWg8laJTY9SrZ5dS52m/8aI3wyNd9DiTG97ECa/VZinTrjwWJ3KLg?=
 =?us-ascii?Q?K1S56ioTY168G2bVe+HO5oBfsMpuo29OkWWXyE3JA0VXkXXpwFesu1Uy8c3I?=
 =?us-ascii?Q?9DcTZ25j8QQnUoa9WD37fa5etFYm+i1G4XZTgJ5XAj0b5sizAIgEltZjjBZK?=
 =?us-ascii?Q?z3OcipyIFmMoCCaE/ljn3Lgxzde0e+56L5715dCX7uQmfX+rGZ6dkWlOeM1G?=
 =?us-ascii?Q?aGhmJsy9OAup2eT2eNB0MwqK/xfsNszFKNDExbHULSHQrducvOb3dP6R8GPW?=
 =?us-ascii?Q?c5SWWrDRSDh5NXouBTcPWOC17LhDLIoQ+vU7gl4fIc8n5H9udhGjURrEUMo9?=
 =?us-ascii?Q?BhWhj2RD89zG9SiK169M4TLC4J3W/xl4IFHoAPqL6anXh90xqUxOCmZOCFdL?=
 =?us-ascii?Q?sELoCp0wj3RMMzU8REzfs6AK9KGPHtOzSm6P0z92QoDTIYZmyIfk12GXgxW1?=
 =?us-ascii?Q?IQYtKjGGj8KkkO8rjxnjtXNJpTIPFCV21gfr1+1zhYf8DRygMB0SQgkT09qk?=
 =?us-ascii?Q?+ab4tF73umtZ7jc8IrmIkkZtu21modNCZq2vka4tUj4ga6n4jCFCrqrZ2ck6?=
 =?us-ascii?Q?JzQaP9O7d2RlEyLpi/pUY2BNDcy81CFEwf9I41Awj+1vRrLAk8DpF91JUdFN?=
 =?us-ascii?Q?9I9uZFhviThnOBvBT1YQQsjm9FKqzp0lGaPBBgrp/FEeBKLK9jtUNkBlbl9O?=
 =?us-ascii?Q?2XA7GTikV+3IQMpmnKU5lfEyctQQA8kaZLFA63SlqP8Y8OA0i5l/XyFrLctz?=
 =?us-ascii?Q?zoAhJOWfOcaEEWueXlO1R8ugVjNvMNFHPdmIMfLN4OQRT+mfoSEQeZZztxWO?=
 =?us-ascii?Q?xLCCtRFz2wdm+UyWoAnXRIXJMi8P+dqaKCLNbdAa0HMPaXt6V/xSfAW6asw4?=
 =?us-ascii?Q?q5Tcm/VsZ757f74TEKUqR1qXnCJfHdMi3IAKV6ublT5838wcurhocMHfYgf3?=
 =?us-ascii?Q?A9n1Konek2QgcvD5UpF8k4m8Myq5teTWGfZ13R4MQuFO6NBHC1xs0BxAWtgG?=
 =?us-ascii?Q?3JBG86Io5zpGVy0m1/DCxF3cG4QC/L50ZSa++ITmWSxNxaO7N9duRmyd4Fqi?=
 =?us-ascii?Q?3QK3aU/Ms+tN3jzPkdJtm6Avxhe0LSrMTyFFE0pwZCDoY1Iz0YbTKPDiTvBS?=
 =?us-ascii?Q?MFgmyDjzvgO9zMT7DH/8is62eX22iAAgRA3ukzWfylrYoM2r4T70+eLObo5R?=
 =?us-ascii?Q?Itj+RBukmC+JGgqqLsySNGKe208PDecr9Mz5iVlo3/yTDptiwtiT0WgOt34K?=
 =?us-ascii?Q?OjMxftw4fg76XQA0wuTuFXfGA5iztqaKYoNCImjN96mwBTHXMX+xMQscQ3gM?=
 =?us-ascii?Q?au/BkNmLyDlxSfzOYITJlrm01irszISdr82HiBasENxCZSrO9Vm5o3spHYkm?=
 =?us-ascii?Q?zg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 57d6b2c5-45df-4bef-bd6e-08dcc04fd84d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2024 13:07:14.5179 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b8olTS/mZsGVJfTdBz1FWiTWNpLczz8oO15YN8DPuZ8IZR4buNxE8fHCUQPQO0N0gbnD8bn9urotIU8WzTq4WxyhElEnlhqJRnBpVmRdg70=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8508
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724072847; x=1755608847;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=PA/2h5NJoLshOJRf3o2i9M9E7P1e3chePAHraRxG7Vg=;
 b=EDvcjZ+hGH2Wl/zUvZOn0MS0J6T7dllPMUeivy1Yiktvv5JoC6OyS00q
 EwBcf2+BDX4VJeUO9aoB3fCEPJHbL1Avq2XkxSSVWBHRaPnm48f6tUj6Q
 UPaMO2FY2o5aCKCVrv9CCXgeGmHEUNFOMODwSElHD02NE05RBiV/uHAv5
 Yn1GqTH+ICaL3/E8jE3ueRSrfS6lw9KslaOaZ5pq01qMj2yLxXeCX2L76
 tgg/AA+w6r5RSI0BOzC0nulGJjV9axfk92vPuL2sz+YOwUjzL9VQnQMOr
 7dUBPDiqmVkF1i9oDU4yWyV/AD7CzowIDzeU448/Fzcyj5wW3IK5viHyo
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EDvcjZ+h
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 1/6] igb: Always call
 igb_xdp_ring_update_tail() under Tx lock
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>, Daniel
 Borkmann <daniel@iogearbox.net>, Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Sriram Yagnaraman <sriram.yagnaraman@ericsson.com>,
 Benjamin Steinke <benjamin.steinke@woks-audio.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 16, 2024 at 11:24:00AM +0200, Kurt Kanzenbach wrote:
> From: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
> 
> Always call igb_xdp_ring_update_tail() under __netif_tx_lock(), add a
> comment to indicate that. This is needed to share the same TX ring between
> XDP, XSK and slow paths.

Sorry for being a-hole here but I think this should go to -net as a fix...
I should have brought it up earlier, current igb XDP support is racy on
tail updates which you're fixing here.

Do you agree...or not?:)

> 
> Signed-off-by: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
> [Kurt: Split patches]
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 11be39f435f3..4d5e5691c9bd 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -2914,6 +2914,7 @@ static int igb_xdp(struct net_device *dev, struct netdev_bpf *xdp)
>  	}
>  }
>  
> +/* This function assumes __netif_tx_lock is held by the caller. */
>  static void igb_xdp_ring_update_tail(struct igb_ring *ring)
>  {
>  	/* Force memory writes to complete before letting h/w know there
> @@ -3000,11 +3001,11 @@ static int igb_xdp_xmit(struct net_device *dev, int n,
>  		nxmit++;
>  	}
>  
> -	__netif_tx_unlock(nq);
> -
>  	if (unlikely(flags & XDP_XMIT_FLUSH))
>  		igb_xdp_ring_update_tail(tx_ring);
>  
> +	__netif_tx_unlock(nq);
> +
>  	return nxmit;
>  }
>  
> @@ -8853,12 +8854,14 @@ static void igb_put_rx_buffer(struct igb_ring *rx_ring,
>  
>  static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
>  {
> +	unsigned int total_bytes = 0, total_packets = 0;
>  	struct igb_adapter *adapter = q_vector->adapter;
>  	struct igb_ring *rx_ring = q_vector->rx.ring;
> -	struct sk_buff *skb = rx_ring->skb;
> -	unsigned int total_bytes = 0, total_packets = 0;
>  	u16 cleaned_count = igb_desc_unused(rx_ring);
> +	struct sk_buff *skb = rx_ring->skb;
> +	int cpu = smp_processor_id();
>  	unsigned int xdp_xmit = 0;
> +	struct netdev_queue *nq;
>  	struct xdp_buff xdp;
>  	u32 frame_sz = 0;
>  	int rx_buf_pgcnt;
> @@ -8986,7 +8989,10 @@ static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
>  	if (xdp_xmit & IGB_XDP_TX) {
>  		struct igb_ring *tx_ring = igb_xdp_tx_queue_mapping(adapter);
>  
> +		nq = txring_txq(tx_ring);
> +		__netif_tx_lock(nq, cpu);
>  		igb_xdp_ring_update_tail(tx_ring);
> +		__netif_tx_unlock(nq);
>  	}
>  
>  	u64_stats_update_begin(&rx_ring->rx_syncp);
> 
> -- 
> 2.39.2
> 
