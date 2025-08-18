Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DC4B2A84B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Aug 2025 16:03:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F333341DDB;
	Mon, 18 Aug 2025 14:03:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RbEgUbpSuiKJ; Mon, 18 Aug 2025 14:03:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 209B741DEA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755525785;
	bh=vVeJjlZRZN9OOmwVPA98fEdDziBWoHQAoh5EBConaMQ=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EIGk3TRGOWWzCMEM05yg+WZYLtzUibBejck2fEe69chs2ct+F0PVY3lWu3G32yONm
	 xwp5duSZBLKVwe3DuXHaoal3nN/m3loAcrXRFVZrXP67frN61LH7qyzyMJIsPOgnxe
	 i4QawM6FK5a+Jlhe3TwXvY3hgh/RpOod/eUmJwpX3kxoQ18cEQixzTtagN5BquEfQ8
	 slxEF6Cxmg67h1sjYnnEXjzIqTfgHefx40VX0zm+7bORu4LwReM4LTXpAy/Smwpa40
	 CZH9F2J3bMkuYxjSyfpZJDGBmCgD9rcWAnfLHdNy3kSECmW0wmhrd1s3KWMpIVNmJB
	 lpsHIoJEqqIMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 209B741DEA;
	Mon, 18 Aug 2025 14:03:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 201DCE2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 14:03:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1146B61BBF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 14:03:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vTyhRxykVjFz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Aug 2025 14:03:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3031D61B1F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3031D61B1F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3031D61B1F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 14:03:01 +0000 (UTC)
X-CSE-ConnectionGUID: QOtpeMM8QKeU9Unj3KOrkA==
X-CSE-MsgGUID: ORBKYERwTZuzgiJPdY7zaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="75201429"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="75201429"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 07:03:02 -0700
X-CSE-ConnectionGUID: yRMByuD7Rsa2NWszfBeM4A==
X-CSE-MsgGUID: jLlbV5TsRk2xzbUFxc2p1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="168392136"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 07:03:01 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 07:03:00 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 18 Aug 2025 07:03:00 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.62)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 07:03:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t+3vsE29qzTCDZDRm29l3m7G4sTFdNYzowL8pxqOba6i3/kdtZ2PDTgAiaTFyb2Ye9mnBZBPOc3tjzGJPvJB1K9eJMNsRQjpvwoXldXzr7u4dybdITrsdDR6cjSbjyY1PnTbjGPc5T5ohgw7SyIaXtgT4yC6P43CQPWC8D/dPgE3oU2VQ3lqBdO81f6d7SoEhmaty5c+ixOOHgxHb1Jz9kFfawmq8L4R9XCdpxnq8cBJTyktNvwDJJHH/NO6X8tkl07VzwiVgkUfnRGw64/0dH9DBhxM2imy0Pls9KpxitR8wTvQ6XyJP6bnSIagAp3ydovvDlAgCPuwlAmictMixg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vVeJjlZRZN9OOmwVPA98fEdDziBWoHQAoh5EBConaMQ=;
 b=mdEyt3RA9CHgS3S2JNmr/XFuXPxSPnkeXW/CaMZxiPc5iKqbeFFvgtl7K4W3RzhiZIaEwLkdtUSap/vDAKVKvZS43FZAIa3bln62IrFgAaN0F8AeqHHWCvOC29iM7CtL3CI6YhaM5IgUUP+tRWTzvhHk2DHOLQCMdpUdnsExAyqpDXVYGaY63i0LI95xAs/HIj+1K+w8v5rYBFKfcztwRNetfG4YfQzuX+u1kCtSb1K+0I+H0DzE8s9beGSo4c2XomQd9YLfVBK0EBfeo/UdFbcXYzOeS2BI3UimlwEzCCMN9anOI2Vm/B6y651un4k/X0X2z08mKi7613uJAINsSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 IA0PR11MB7356.namprd11.prod.outlook.com (2603:10b6:208:432::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9031.24; Mon, 18 Aug 2025 14:02:58 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.9031.021; Mon, 18 Aug 2025
 14:02:57 +0000
Date: Mon, 18 Aug 2025 16:02:48 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
Message-ID: <aKMyiElfLyqdnqUl@boxer>
References: <20250811084406.211660-1-paul.greenwalt@intel.com>
 <20250811084406.211660-3-paul.greenwalt@intel.com>
 <aJtadxgEiPQXfRl4@boxer>
 <8f4403b8-493f-4745-88d2-1f9253646eed@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <8f4403b8-493f-4745-88d2-1f9253646eed@intel.com>
X-ClientProxiedBy: WA0P291CA0007.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::11) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|IA0PR11MB7356:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b37a7d5-a5b2-47d6-2d4f-08ddde5fef5f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?RY2z2HYfL8tyt7vNGOxij1OjfgTfKRLx6W4LIChD7uaWI++/ctMLXMF8yQ2w?=
 =?us-ascii?Q?lNB0iO+swoLUBAddpjA1RgLh4BehuI3PzHYPdwRu8iS+JOcACDpugU9HALFy?=
 =?us-ascii?Q?CEmBfrY/ODd0JJFkg5U2/JkJ4NlrcBu6HH1ijREmixiLdk+pxJW/pQXBr6wb?=
 =?us-ascii?Q?2TDuGOwbhjcEXdAmnMNNWO4apUcjQPjph+r7MetXoj5hk6nVcz8XtJgDWFa2?=
 =?us-ascii?Q?rd2aWpuRZSNpMz7Nx1iBFYs+wMDp1y+zO1Bkg32uq8NxtNPNNk0oidX8LeWX?=
 =?us-ascii?Q?YS7Xy7itOiDPeGuJR6SaRdJ4LGZIeRjyw9TbYjkLIM6MZ8rJKJMhC7+TlPGh?=
 =?us-ascii?Q?/3/n19Rq75ApZ2//cg+ollWgUN45Fr2Y8+vRcI9DBanB5Xt0Ja0dDCX9gbm4?=
 =?us-ascii?Q?iompcnOJ/TRnSFPWxPifZ0TZhu7LV7jQIjh8vzZgpysUNqPvu8ybErxz/iTJ?=
 =?us-ascii?Q?60qvs2Lh+jN1RUIAbwP8yfafljdGqVwC9r8QoYB1FmcN8T1mH1wPd27j9+h7?=
 =?us-ascii?Q?N3BnbjkGOpvTa5H74p1bc2SSbWQLChWQJC8wFbKSCK/ChlffHv7zuXs/2o2U?=
 =?us-ascii?Q?gesKA/K6a5Zb6rr4rYBlELD5ErrnW3WAFeSqHGHJPeMhmOmVo0CXTFUZXHCL?=
 =?us-ascii?Q?SuVQVVI0MhyDtgefglrKbZGz6pf0+VRWsA4vSWQ1P29/2hoZ/VuSCc7us68q?=
 =?us-ascii?Q?0+Z3oiSxIn3fnOvAzOm/e8CEBWJWdAF2Z7Qk7R6rJypWQcR37sJib0e9havS?=
 =?us-ascii?Q?m2mX/a9/ot22vzF9RD+C5zODIo5idis2o5AqKTVMf2MmOsHoFdbh7NwB3TUW?=
 =?us-ascii?Q?XdYAlJhzFHUmlb9can8iDubXYjOcbQyiOR2hlmsOqljJeQNCPpuczHHhOywT?=
 =?us-ascii?Q?OVAt9KPqn6a7XoGvk/MZ4cMTHX2JV9r/nrQe9XZa7SjdsAuMjZ+f6v5wer3b?=
 =?us-ascii?Q?kehr6nfxuxJ4eQoQ1OZLytUoo2pjU/uHR1f3867CCgwIE6Hn2N1PbKNOfB3K?=
 =?us-ascii?Q?Ko/UfANtiDzc4fZNjJRU+ewC5vGJMRc0GZZ2o29jsRlolkNW7fCodAoHFTPG?=
 =?us-ascii?Q?0/nsRFNntiZurrBLMxTPuHhwvBHzDAF4VvJKmKDRIDB1TK4EBCgB6ER2rEqU?=
 =?us-ascii?Q?jWJQ4Apry78EpJIiTbsm+SaiJfa1FmUNdTyiG6aogC1wHg3frpkXnMvdRTMz?=
 =?us-ascii?Q?3ZeN9shF+IyTTmI6LGfxM/9beNgDIb4SWteQgeJcSkWt4LPQf1x3RX5kJ1J/?=
 =?us-ascii?Q?94T9qXmdXmmt9m/MsOeYPlef9BmZF2voRcaI5l22mgvfXE8boLnpC+16VSJ/?=
 =?us-ascii?Q?xn4G7jr97iolgJEkUxqq9j1Jw1R+iarW1yQUJySqpg+npZIMnyi/3LprCDzC?=
 =?us-ascii?Q?NV6ncQYYk2CxaIFb+PNNGX/4qCebLx6Q6RzbVu0s1E2bSm1ZvtB5SWFJHkce?=
 =?us-ascii?Q?91fiOiywnII=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Gf7AJVO16+AFwQFLNLiAOwGWADe3oT4tSZ9mUTS6j8Oprbbp0tz4eDT/0ld4?=
 =?us-ascii?Q?GYddX0FiPKHpz9mbs8Gb7piCLzhQiH5OXa6RmAQR9GxKxEDRZwHmjAAMiAUH?=
 =?us-ascii?Q?Kzzcb5gbPnb4Qi85Vs9dvA848G0ICWi9He4Dw7KTAqnqBt/ABBJZhsFwckt1?=
 =?us-ascii?Q?AHMeWq2IUUnd3F8cukv9EtQr5BkSckuQQ4MH0vNcQ6EjSQGRGkHGib+hc9k/?=
 =?us-ascii?Q?g522d3i30nb+wmrCI+F8SCTf6YwTGt7u6rbyrrsaTAmIjtioSg/1pu9DCsRM?=
 =?us-ascii?Q?xNX/Tlxf4mxrvkKxV18v4zAfMPEkyrNHKS40ALTK4DmTY6ZUm+M5KjwCmXq9?=
 =?us-ascii?Q?NUdl0TWLCbbGRyQwlccJlIWGwWoCxYrg0mxcR0vMmQB1947wv86MH1KyZ34a?=
 =?us-ascii?Q?xz/rPHF2evp+N65Y7tVPGxvETA1KJ00Qf7+eFn+S7oDseQgqKg1T+BOhqnsI?=
 =?us-ascii?Q?fZWmmqZlBX4Hoq0EqDTOFmBq4rVSRb7Cy4xGbRZeA/cUs9A/PXdXn5xzLLtb?=
 =?us-ascii?Q?Ovilehn+HnP493nr08Rwpob0kqxm6Af9vNM/fh0L6WW6V9f5llyUfcZ79Jvu?=
 =?us-ascii?Q?wO7lvyG3Q72aTR8+8pP2ZqITEYuHQ8WAXuUVB5rblQh+JD5emlbDry3IfUTu?=
 =?us-ascii?Q?Lt+qOZbfvTgs3SNLZ54MeLpjwvxGlKXh3UQuf6yRU0eJHX999UI5whQi4F25?=
 =?us-ascii?Q?RS51Z2hTsr+2LhlpivkhhSW7j61BmLOC3BMJyxJH89cb0BVeJBPzLvBB4NH4?=
 =?us-ascii?Q?KmLSn/pR8CvW+XqqevfzLYCe3kOoTfD+lYJTPcXZplzVk6KEUlnWtLte0Mfl?=
 =?us-ascii?Q?piZsXpstajGCIK7GQwL8REnUkFAhFYF5ytyDoaQzLsj/LgdCjpiJlkjPE+TY?=
 =?us-ascii?Q?hghS4+LZpCoCEKL2MNErrULbgxykUgzrDrLcpckD+6U6JzDl8i6zbGjicMRj?=
 =?us-ascii?Q?Wu7abhUK5r+IGDyO+U4OsIUopY4fTNRkpOEfxrJef8lFu0uF77YM9ApIwFKN?=
 =?us-ascii?Q?37yU4ad1fgw4ZTTV1+ms4GDElM8cZIqFLVKwSnBHsF+Qk0MeDO8YbdTDkZCO?=
 =?us-ascii?Q?epX83N6xa5jVCjh9jJhBPMDfN5RB7Yoa+VsgBioAQ/qKKYcvGNL9m5c0E1VL?=
 =?us-ascii?Q?lcp3+z1S3lzaeMaLRcCx+6k9M4y1Xu1LUbxA9fLHtgm9WsDjtmfyA55+WjGh?=
 =?us-ascii?Q?4NQr8yWde9pUPCrkhcDLOM58QqHd2hv+pTT7rVyBVLf2pjIVEcySa83jIpf+?=
 =?us-ascii?Q?4jq+mwRKakccjAvqNUN5DN8GAZdsRZsuPQ2wTXL1D/pMwngQeOAEZntt+V1y?=
 =?us-ascii?Q?WHXFWnzaBL7YhnKz6VnT8s0Sz/wl4dHML1uYBPRBkd6TlWdX2PbWNf9UEoYY?=
 =?us-ascii?Q?MS1XHHJsYg/S1JKIS3JFe4nh7MyvGcQ7dFmcwvztpAukh0NRldWsggDwWWRu?=
 =?us-ascii?Q?KuEAWjBzeyQXJX3CYWJ47fyI4ZidBApoI+Jla94hHEmhtEZy0HT/+TyyG+70?=
 =?us-ascii?Q?JJrS7yPaauPhTMqFFdxZgMB/PxxVs5YXDYXxeE+rBrSMv0qKLw5PoGSB8ZKu?=
 =?us-ascii?Q?ZQB9BCLKe9h+ycbWV1jr4OaOmXT3uREo5jBTRZqKq/tUYs1ubyLgUxYDO5t+?=
 =?us-ascii?Q?DA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b37a7d5-a5b2-47d6-2d4f-08ddde5fef5f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2025 14:02:57.7960 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3WQX8aGL2hKtKX5l/qqASwII2gDfQqrzov1U99NUEW3TABHFaMWOZk6ZNAEY855kGOhwaw1PfTTQGQ/5rFevFjsNzbgce/3AwT6XoMxReq0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7356
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755525783; x=1787061783;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=krlQ9yLSUsmr13JxIHzq+v4T9vJq4I3pp/jNCxK3ZZc=;
 b=PLqHge+80dj2PMj53N0ia75sDZ1t6whrlHZLwUP2Ds31/cwrBdE6MD/D
 WSV/GL7Jh85d0m+C0/NqnRTupZNthQ9QjfLP/9Rzx+xHVFI3NGEgjvJXg
 L7vX5SGHVoAYXVGUkfiaL0KUf6h4dufyFhAqSQN+toS101t57RwZJ7jWc
 s6+kG8w2LKQG+6/3tkmJYnTzQaJnqf5rmaKYU8ZWOfHGHqteaMwHuoxkD
 WY3N2ExGkksFnN42wBVT76ZhGai4L95fr8ELR2xwKycWQ9ls95u1mBgkD
 KrcGSu+n7J78ZHUBv0bZEbpY+TS6ZhClSL/aLCwhhIeFwDy1gnkxteSfg
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PLqHge+8
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

On Wed, Aug 13, 2025 at 11:32:10AM -0700, Greenwalt, Paul wrote:
> 
> 
> On 8/12/2025 8:15 AM, Maciej Fijalkowski wrote:
> > On Mon, Aug 11, 2025 at 04:44:06AM -0400, Paul Greenwalt wrote:
> > 
> >>  
> >> +/**
> >> + * ice_cfg_txtime - configure Tx Time for the Tx ring
> >> + * @tx_ring: pointer to the Tx ring structure
> >> + *
> >> + * Return: 0 on success, negative value on failure.
> >> + */
> >> +static int ice_cfg_txtime(struct ice_tx_ring *tx_ring)
> >> +{
> >> +	int err, timeout = 50;
> >> +	struct ice_vsi *vsi;
> >> +	struct device *dev;
> >> +	struct ice_pf *pf;
> >> +	u32 queue;
> >> +
> >> +	if (!tx_ring)
> >> +		return -EINVAL;
> >> +
> >> +	vsi = tx_ring->vsi;
> >> +	pf = vsi->back;
> >> +	while (test_and_set_bit(ICE_CFG_BUSY, pf->state)) {
> >> +		timeout--;
> >> +		if (!timeout)
> >> +			return -EBUSY;
> >> +		usleep_range(1000, 2000);
> >> +	}
> >> +
> >> +	queue = tx_ring->q_index;
> >> +	dev = ice_pf_to_dev(pf);
> >> +	err = ice_qp_dis(vsi, queue);
> >> +	if (err) {
> >> +		dev_err(dev, "Failed to disable Tx queue %d for TxTime configuration\n",
> >> +			queue);
> >> +		goto exit;
> > 
> > nit: in this case you leave queue pair in limbo state. i would be trying
> > to bring it up regardless whether disable succeeded.
> > 
> 
> I will make this change.
> 
> > 
> > (...)
> > 
> >>  
> >>  dma_error:
> >> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
> >> index 2fd8e78178a2..be74851eadd4 100644
> >> --- a/drivers/net/ethernet/intel/ice/ice_txrx.h
> >> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
> >> @@ -310,6 +310,12 @@ enum ice_dynamic_itr {
> >>  #define ICE_TX_LEGACY	1
> >>  
> >>  /* descriptor ring, associated with a VSI */
> >> +struct ice_tstamp_ring {
> >> +	struct ice_tx_ring *tx_ring;	/* Backreference to associated Tx ring */
> >> +	dma_addr_t dma;			/* physical address of ring */
> >> +	struct rcu_head rcu;            /* to avoid race on free */
> >> +} ____cacheline_internodealigned_in_smp;
> >> +
> >>  struct ice_rx_ring {
> >>  	/* CL1 - 1st cacheline starts here */
> >>  	void *desc;			/* Descriptor ring memory */
> >> @@ -387,11 +393,22 @@ struct ice_tx_ring {
> >>  	struct xsk_buff_pool *xsk_pool;
> >>  	u16 next_to_use;
> >>  	u16 next_to_clean;
> >> +	u16 tstamp_next_to_use;		/* Time stamp ring next to use */
> >> +	u16 tstamp_count;		/* Time stamp ring descriptors count */
> >> +	u8 __iomem *tstamp_tail;	/* Time stamp ring tail pointer */
> >> +	void *tstamp_desc;		/* Time stamp descriptor ring memory */
> > 
> > we spoke about putting these onto ice_tstamp_ring...if i am reading this
> > right you want to avoid touching ice_tstamp_ring in hot-path - is that
> > correct?
> > 
> 
> The time stamp ring next_to_use, count and *desc can be moved into the
> struct ice_tstamp_ring. The reasoning for place them in the ice_tx_ring
> 2nd cacheline was to avoid possible cache misses.

Paul, from my perspective scoping everything in ice_tstamp_ring and
putting pointer to it on hot cacheline would be easier to follow,
code-wise. However, if you might be having any data that would back your
concerns or if you still insist on keeping the struct layout you're
proposing here then let us have a comment describing the reason behind
this design?

> 
> > if that ring is etf-enabled then does it ever process the normal tx
> > traffic? what i'm trying to ask is whether you considered putting these
> > members onto union with next_to_use, count and *desc.
> > 
> 
> The E830 ETF support requires the use of the Tx ring (i.e. next_to_use,
> count, and *desc) as well as the need for a new time stamp ring. The
> time stamp ring contains a the time stamp and a reference to the Tx ring
> descriptor, so both rings are used when etf-enabled.

ok, sorry for brain fart on my side here.

> 
> > how different is layout of ice_tx_ring after your change?
> > 
> 
> The variables that where moved out of the ice_tx_ring 2nd cacheline are
> not accessed in the fast path.
> 
> Thanks,
> Paul
> 
> > rest of the code looks good to me now, however i still would like to
> > clarify things mentioned above.
> > 
> >>  	u16 q_handle;			/* Queue handle per TC */
> >>  	u16 reg_idx;			/* HW register index of the ring */
> >>  	u16 count;			/* Number of descriptors */
> >>  	u16 q_index;			/* Queue number of ring */
> >>  	u16 xdp_tx_active;
> >> +	u16 quanta_prof_id;
> >> +	u8 dcb_tc;			/* Traffic class of ring */
> >> +#define ICE_TX_FLAGS_RING_XDP		BIT(0)
> >> +#define ICE_TX_FLAGS_RING_VLAN_L2TAG1	BIT(1)
> >> +#define ICE_TX_FLAGS_RING_VLAN_L2TAG2	BIT(2)
> >> +#define ICE_TX_FLAGS_TXTIME		BIT(3)
> >> +	u8 flags;
> >>  	/* stats structs */
> >>  	struct ice_ring_stats *ring_stats;
> >>  	/* CL3 - 3rd cacheline starts here */
> >> @@ -401,13 +418,7 @@ struct ice_tx_ring {
> >>  	struct ice_ptp_tx *tx_tstamps;
> >>  	spinlock_t tx_lock;
> >>  	u32 txq_teid;			/* Added Tx queue TEID */
> >> -	/* CL4 - 4th cacheline starts here */
> >> -#define ICE_TX_FLAGS_RING_XDP		BIT(0)
> >> -#define ICE_TX_FLAGS_RING_VLAN_L2TAG1	BIT(1)
> >> -#define ICE_TX_FLAGS_RING_VLAN_L2TAG2	BIT(2)
> >> -	u8 flags;
> >> -	u8 dcb_tc;			/* Traffic class of ring */
> >> -	u16 quanta_prof_id;
> >> +	struct ice_tstamp_ring *tstamp_ring;
> >>  } ____cacheline_internodealigned_in_smp;
> >>  
> 
