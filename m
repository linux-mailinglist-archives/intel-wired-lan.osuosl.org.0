Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D947DA84BD5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 20:10:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8AEC480E84;
	Thu, 10 Apr 2025 18:09:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yLqjOsy34aFV; Thu, 10 Apr 2025 18:09:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D738E80EDD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744308598;
	bh=dcGEQBd69mcIKqd8FeRBCZBvmnAQi+jm087RCAcRpb0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xkhYSK21+8+2ge1d9BoDx7Q9v4GPHqIjsxEW8TeTIzRWhm6ZgzeFOwKZJfgGZI60B
	 VAFBVBsQGLf8GVjtMqZX+ZrWr/pMuBPAKrqwgvDqyrLLtgxyjOYD3ymWtArZxA1qSB
	 9PbEKo/1NWY6li1yg2gtH/mn3hX4M07OEIzhLXsjPxFMA3sqAgF5CuaDjL8mb0hQOU
	 X0usZNiPQUDhJBY6I1BE3QEWaqQUN5WV9lXGcH5PmaoSBnPN9wHs5j1QkalPt8YqT1
	 wWtM22nGpzXE2Rai+6OE2QBq/2fkbkdbh3HAS4HY/09km1I5Kxt7xYUjsCGYouTXSI
	 U5GB0Xi5/jnmg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D738E80EDD;
	Thu, 10 Apr 2025 18:09:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 228EC138
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 18:09:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 13C4C40F83
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 18:09:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W726gnT7WMa9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 18:09:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=dan.j.williams@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 638D440F52
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 638D440F52
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 638D440F52
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 18:09:56 +0000 (UTC)
X-CSE-ConnectionGUID: iRIxkm1gR3+zJl6EyWftrg==
X-CSE-MsgGUID: NH4kxlhhRbmLUBNU4mTw+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="45859796"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="45859796"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 11:09:55 -0700
X-CSE-ConnectionGUID: NdpA6xeXQGm/8CWJ8/ApNQ==
X-CSE-MsgGUID: NOl9+GHVR5GGmQYSUti/hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="133707445"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 11:09:55 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 10 Apr 2025 11:09:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 10 Apr 2025 11:09:54 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 10 Apr 2025 11:09:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jGw5vaHmryEEsaBPsRkuZAeJbZXTVTSjEqAHLmwx+IR+PLXi1yaIfp7+8VXdMgpGSaJDyPl/ad7VnAl/uie9f3lritY9saQFih6uF/LT/DY6yoBgKLfCKneMoGTSc0h8jhCsCLLmgxZiVDWVwO7rToTiSati+aQRJajsiNqeYrsN1pnl0ORn9dJppV23tonAo+UmefGGIJKQbT6eRM++BGnrhpMo1XcsjwnF1p8wZrMmHHLsftNO2/OtxBRDQgqcG5vf96oWcPY4+eTYFF7WhID8gyCO9QXKxIfU53SO6mjHulvOU1oe7DhvOLYGmVDtjVaezHQFdrJHpVU6/V6pxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dcGEQBd69mcIKqd8FeRBCZBvmnAQi+jm087RCAcRpb0=;
 b=rDysL/Rs1FXG6ii8dXt9tJgzYtwOpd3+DSNrGgXH0YNGXqPISDDZAOc0rl91Yt43pS+U71gsv58tG3XKu3/ESUDosVvZkgCdLSxRorKMoZQG5r4EJ0T7SKtgRtxo5F0sbNcQotXjrgudghNfkx/j4+NFTQCIB8gtFSr94tsqSsz9Z8ubBZk5lkpMxA2mE3jTRla2dMsKaR7g6UhoEo5B0fNHFN4+k9N5iYNkFw7mqHgRIkTu5c7w6UmVxeHnSqb1ZFLi2lb7mNfbY2R9LVF+cX1gZWk3p03yLMwJ78jNi+aaVRT1RDVFcC4rHEQ1Oq6GGFHoYT5Sfxg7C/XQ4GLqEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8107.namprd11.prod.outlook.com (2603:10b6:510:256::6)
 by DS0PR11MB7849.namprd11.prod.outlook.com (2603:10b6:8:fd::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.34; Thu, 10 Apr
 2025 18:09:10 +0000
Received: from PH8PR11MB8107.namprd11.prod.outlook.com
 ([fe80::6b05:74cf:a304:ecd8]) by PH8PR11MB8107.namprd11.prod.outlook.com
 ([fe80::6b05:74cf:a304:ecd8%3]) with mapi id 15.20.8606.033; Thu, 10 Apr 2025
 18:09:10 +0000
Date: Thu, 10 Apr 2025 11:09:08 -0700
From: Dan Williams <dan.j.williams@intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>, Dan Williams <dan.j.williams@intel.com>
Message-ID: <67f80944cadb8_71fe2949b@dwillia2-xfh.jf.intel.com.notmuch>
References: <202504050434.Eb4vugh5-lkp@intel.com>
 <67f72679bb038_2ce629469@dwillia2-mobl3.amr.corp.intel.com.notmuch>
 <20250410115956.GQ1778492@nvidia.com>
 <67f8045059dde_71fe2949d@dwillia2-xfh.jf.intel.com.notmuch>
 <20250410175731.GC5121@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250410175731.GC5121@nvidia.com>
X-ClientProxiedBy: MW4PR03CA0029.namprd03.prod.outlook.com
 (2603:10b6:303:8f::34) To PH8PR11MB8107.namprd11.prod.outlook.com
 (2603:10b6:510:256::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8107:EE_|DS0PR11MB7849:EE_
X-MS-Office365-Filtering-Correlation-Id: 55a0bc34-05d3-49fa-e08e-08dd785acb27
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?UiEFONf2YihYaFA8+Y3Om0AvfLVQqRl9mB5oZq4B5eZUqch3y68E0SZBi8dH?=
 =?us-ascii?Q?pn0iPX10oAXyUKHG1LwIOIDsrPWN9mFskVP2t5EF9JUXF2DFeutGGHBrFhxz?=
 =?us-ascii?Q?LyVMBc6oHjyFVbum0jKw6IN5qDH+YREP6W0+h/Yx17eG1tQvmgshYMIiM+fe?=
 =?us-ascii?Q?xYxMlm7H50J6m9wkYmlEvRKzsUhKpFP+XL7BOcDdl8DFNbj3mfncDD+0XA81?=
 =?us-ascii?Q?CedjhU7Z1bkWZzpWmkH7p6eHhGW0gfrv5H/sfM0ypkqVuXu6d7o/syi7X3Px?=
 =?us-ascii?Q?tc2zz1dnD5Btf5ykCnClbR4mq7F92zNHbA9i4mGqLfXbUuziDYRpNx0cc/IA?=
 =?us-ascii?Q?LYyunDnsuW3CbwJD+rdaHq8GlfvJtTbMBqQltseBWeNyt2EkST9FDWG5DrG1?=
 =?us-ascii?Q?OXDNMRvkd/U8kCRGTEEOcCJjZ7UsIzw3bSo00sHMyYyOEiZzTtFHXCxpqLyN?=
 =?us-ascii?Q?AS9DWcMychY8f0LioDZo2xSSArg+fNZjIwjYEVPHOWuuPdswz3ZrvDQABlAn?=
 =?us-ascii?Q?fR4s5zOm16sKD1/6+Lsfi3wCaoUD3po8Pekh4/P8wtC4JPl4g1wzjY+/sVY+?=
 =?us-ascii?Q?SUv3qIBTph7Cg/eBOI82T7b6Ey8U1LgAAxy15qXA2EAbKiv4j0NndVseR9Yq?=
 =?us-ascii?Q?d32/XUcNU/o/qHOIGaGVt4VC9htph/LeZcrfdZBeUu+/P9YqghObqgYIP+Ih?=
 =?us-ascii?Q?yOBDww7NrHSO6tXK20E/AqM9g5ewi2CRMYxu+i7WNjehmgnj0BuOnlPSS2dX?=
 =?us-ascii?Q?QV7ZF1bpMqrIHtkNjegsbh2lleAf25Gxz7lt1gXWZuyMWK5/vsRvvkp6oIQX?=
 =?us-ascii?Q?VnD5LwO3PqKB+3Q9zaPudFA8bqKQ1z4lGTfpe5RUua3WjlA5lyTxWg4hZXIw?=
 =?us-ascii?Q?Fx4ZSEM26YGWiZlOqBsCbFaVnylXkFAnrHxbXsvacjW77+y0I+u1B6PUGpth?=
 =?us-ascii?Q?sVfUSQO0THTcGZgNAdx5Tu1GATxWhmtFBVWhEMiKdtFkFLjYRerB0GezPIXL?=
 =?us-ascii?Q?45lvqvNNlbECIT0K2BLU9zweP0pV+rJCXHYSQlZdhf+z3Zs7DcEgnHYp2oUV?=
 =?us-ascii?Q?XXWOLeDhlKSvRgdu1J1WQK+JHUjZXdd+cKb2joV6D4APGdyWTZc4ly65bmwo?=
 =?us-ascii?Q?W2/ElElcdnbwrf3vphztlN7MyUHJkmf8/V9SHZKgQCsKeWsPCn1BJe5+WLt5?=
 =?us-ascii?Q?/CnaFV8JQBG4pWu0I8afevtC7gkMADd4iex4hdfR2dRpeXjNjNIgApD0+F89?=
 =?us-ascii?Q?41nv4QVZ2jMWFaTcogiO/9mUP9dYBT7O54F1+1sMe8mllYrBSfOjzcSJc38F?=
 =?us-ascii?Q?nhqJPBMrQVtUQNZbgcSnWi6omlh2fk+Hcz4QOq+0WXCdzQpIEHFqpk2TjOKS?=
 =?us-ascii?Q?F5NNLkxQPwELT7JdffsCUA6XsYMN0bR2VHFVFVhpjjx3vz08nYDjudCt6vBN?=
 =?us-ascii?Q?k9CydkfJ058=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8107.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ODDgGXkZyfWAon0/7D64daBzu+Ya0crrM3KLtsl/TPEqwQL1dRzOk/gEu2Bf?=
 =?us-ascii?Q?CBtnm2+E+V6xpktbZUjEAOQ5Km4MHMqvZYzhrhnEjpdj5kdAL/MbSMiVvUPu?=
 =?us-ascii?Q?TKTD30awB3EgG2Y9ZRDRr1JbMIoSVVBgR1n5+C+aa8nrvu+PXlZ2jQrtEJnQ?=
 =?us-ascii?Q?MOJG2d+9yEppFJE+iii13Gydmkrv/PauPfy26pMtUHQtpY0VvEPCGF4v7+st?=
 =?us-ascii?Q?IE7YPEWTN4d9bsLrTChPFBW38CIcc15AZ/lU5otwLvKxi7okZ2ysj5EXM2Ao?=
 =?us-ascii?Q?xDYxjf856//xrzGz5F52IRrrH/FvzJqBGVoLx+toi3X8HQ3nJgHFj330OJq1?=
 =?us-ascii?Q?8UERVzyfps4pEkwKgju6Pie8A8LC6O92W0Xt39n1hImQI5HOqOsV05my836V?=
 =?us-ascii?Q?imx9EG1JS878Hb0bzDnN3lTFLhzHemSoLIq1nyzuKcJVm5vxMhuJrIau8zOE?=
 =?us-ascii?Q?Year6gH4TJIwBBCLC+DWF9H0+J+RnJnpKcBZtC2S4aT563oStlD8KWSSMzoj?=
 =?us-ascii?Q?g70m9w3D1eUfadAglkRxKb9KzfbqY03PMNMkyzUvnuLneV06kFs3LICET/5Z?=
 =?us-ascii?Q?U4blogO7ghgu+6AORV3gP1kOlZ9FzB28MDsNiYAuI7nG1qc5OjSCZ8KpkK5y?=
 =?us-ascii?Q?07px5++I3ll+/Lhi8J0X/gQdeP38NPAHKHn0NM28enUhVxZhRNRowhFNfBOJ?=
 =?us-ascii?Q?Kl4C99nharTiO8rrLsBgBpMDuK3SFRIFCt51vbrtNtU9CkvGt45I0XBuhju1?=
 =?us-ascii?Q?rSwQqMlquYJRdM62rD2mJxURC19HjVmviTbwXdSbB/ZhNU1/2jX3BsayaJ7z?=
 =?us-ascii?Q?jN9wG84a6ckIHung5JL3RqCMHzdyZ20ahTYf0fqLA+FqIMFB+dvglnlTEKB6?=
 =?us-ascii?Q?XeYE7opj479j8GEHGUSHYb3OiKAaXbq8ygmDjDxfPQvb6ZwkUveFm5xF1jcc?=
 =?us-ascii?Q?kbpfXdAIr0eXhYi1ZtwEOeXR0Smx9Zwb4Igx6EZZE8JTojCh3Yeo9NTHXD1j?=
 =?us-ascii?Q?uPsknwanDS2jEUOZh0EIIpOI72H4UyygyCo/PxHfQHDPmqiYreSzqdFuEexe?=
 =?us-ascii?Q?U9hNlFEy1KbNvnhX8LgDliPJRNv9lPbhi5ZY6W3ZY5ycaoFISxDBjD7mCBf7?=
 =?us-ascii?Q?oajlEa0DwiA9AELC//ZzRZ20nmIypUOwHLvOx7ThNCbf5IIQj1uWdmKvSTZ0?=
 =?us-ascii?Q?pM53TxeQMmhqHTQbAefHh81d8VREi7r9OPVwqL92c1smS+cNpAlMZBeGsd/t?=
 =?us-ascii?Q?jX3P5CL3bL91hw8NvClonWrBzLWWmXSDbHgG3nDeyTyMxPppWKBpZ5eB2A1E?=
 =?us-ascii?Q?5f9JxBoSgbIAfesBrKlF2yKro5BqFSUP1/u8JJuKuurZ3py5e9EPtu167WxO?=
 =?us-ascii?Q?mYYDpEYEvJeLCr8F6qVbI8WTxU0UGUZ/6TLogmHvuGydVeCU+I04QGz9om1c?=
 =?us-ascii?Q?tfO/cc8Z5hUNlnJEm4hsQX5vf3j8nIqzxdTUHbNHQQQ8bw+ot+Y2ozDwDUgZ?=
 =?us-ascii?Q?+fie7V9pz7Uo2aM2kuc5U+0kGWftXaTeLCsmiYxw1WlVq26XzYAT+6rh8dNL?=
 =?us-ascii?Q?bGgKxtgBS1HwDBvFTA+XQqUljCZgFfTzOQbcpxBoFnBcA9E3wMZ9zO18f3ED?=
 =?us-ascii?Q?Kg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55a0bc34-05d3-49fa-e08e-08dd785acb27
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8107.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2025 18:09:10.8581 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZJpzpqKUXObiu8ZSfwy/clveEX6+0qtm+d0kjslimfJsMBu6rFVme4W7TXvA8MkQh27hq/mBLJ5itBFB8x/QFcvfSSrfyvHvW6atyGHJTsQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7849
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744308596; x=1775844596;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=xIUwVTJrFW7whVYFDiymnSUwmqsc5YlWAL0oK1sCnSY=;
 b=jcp0T/kJ4EMjaEPLR/ZQseKqd66ptSO32UUrcW0WW1mW3Z7OxAM8yg4u
 xYH/7sKZ118lxPYqSUyY5tQZFFD/lCjuMaKbpGFlv2WoUpD5Oj/wrHu+v
 nlDHgy9byPpCJnCgrsRY6vmxCDvBE4qplb4i0HI44l09xLc7tSytOJxCC
 7gPZREiyXSCodtfxnAYrqjGa515pHF+BME11p2aLJlia+qOu1j7WBU5yx
 CK46wsav1CzoVNcmeP0kwkDbfxyXdH3bBrU/AKoKAuJayjNIBM95daHz5
 A7vkqKk/d63yBZNtS0ZFCzmEf+hDE3QIF1wKcm9ms60/6PhOjAk++x/MF
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jcp0T/kJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [tnguy-net-queue:dev-queue 2/12]
 include/linux/build_bug.h:78:41: error: static assertion failed:
 "sizeof(__uapi_uuid_t) == sizeof(uuid_t) && __alignof__(__uapi_uuid_t) ==
 __alignof__(uuid_t)"
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Intel
 Wired LAN <intel-wired-lan@lists.osuosl.org>, linux-cxl@vger.kernel.org,
 oe-kbuild-all@lists.linux.dev
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jason Gunthorpe wrote:
> On Thu, Apr 10, 2025 at 10:48:00AM -0700, Dan Williams wrote:
> > Jason Gunthorpe wrote:
> > > On Wed, Apr 09, 2025 at 07:01:29PM -0700, Dan Williams wrote:
> > > 
> > > > diff --git a/include/uapi/cxl/features.h b/include/uapi/cxl/features.h
> > > > index dd8874860cec..06a1ae3f3fd0 100644
> > > > --- a/include/uapi/cxl/features.h
> > > > +++ b/include/uapi/cxl/features.h
> > > > @@ -14,7 +14,8 @@ typedef unsigned char __uapi_uuid_t[16];
> > > >  #ifdef __KERNEL__
> > > >  #include <linux/uuid.h>
> > > >  static_assert(sizeof(__uapi_uuid_t) == sizeof(uuid_t) &&
> > > > -	      __alignof__(__uapi_uuid_t) == __alignof__(uuid_t));
> > > > +	      __alignof__(struct { __uapi_uuid_t uuid; }) ==
> > > > +		      __alignof__(struct { uuid_t uuid; }));
> > > 
> > > Really? I'm surprised that the struct wrapper increases the
> > > alignment..
> > 
> > I was also surprised that gcc has different rules for this alignment
> > across compilers. Empirically this change solves the assertion, but I
> > admit this was just the result of tinkering until the error goes away.
> 
> Hurm.
> 
> So the reason to have the align check is to ensure that when it is
> embedded in the structs it doesn't change the layout of the struct.
> 
> The only use is this:
> 
> struct cxl_feat_entry {
>         uuid_t uuid;
>         __le16 id;
> 
> Which is fine, but if instead it was:
> 
> struct cxl_feat_entry {
>         __le16 id;
>         uuid_t uuid;
> 
> Then you have a problem as the align by 1 version will have no
> padding while the align by 4 will have 2 bytes padding.
> 
> Wrapping in a struct for the static_assert does not prevent the above
> issue..
> 
> So maybe the answer is to drop the alignof check entirely and add a
> comment explaining that uuid must only be placed on 4 byte aligned
> offsets and all structs must have explicit padding.

Yeah, that's better. Ignore my v2, will respin with a v3.

The other mitigating factor is that all of the usage of __uapi_uuid_t in
the header is in __packed structures.
