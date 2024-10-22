Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6B09AA119
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 13:26:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8243E60008;
	Tue, 22 Oct 2024 11:26:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qx6HcrMb7Ize; Tue, 22 Oct 2024 11:26:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 86BC6606B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729596367;
	bh=hXvzwk8iYd2eKlcDxxTYK7FZnHqeqMwCMZT8tqnKxZg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aVpAsCJcCKVUo2N7HLGRNMS01+wUxj+mBUuvDGos8FFtTpWWyH9S/UYZreEdJo+5+
	 Fh2W5bRIxNNA7nda1PJgLiBU4vrPV+Z3DRM+yhhCVETcbtOyvxb4AZxlhdU65AVla/
	 lPfl2nLQ+dylbLsyHvqkW3/5bOdTekQEfcqCH8qzxfiulruRCw9VJGWgfP/PG8BJbi
	 vcrt6C+e83jT+Hg5lDIa4GB6zXe3T6wJcXHtAFFuefU/Z5eaVLTuyuKA+EXc2Zkf/u
	 m7kH3e3Ou86wfHjTOwk2fO6HYVXQ9Tj8Ox1hsvepLDyHr3sgU7whdaPjnS1I0GDH6M
	 Bg9PwpWqYPq+w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86BC6606B3;
	Tue, 22 Oct 2024 11:26:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D0F9171F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 11:26:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B177B404E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 11:26:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pUbgaMEbphtY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 11:26:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8544B403E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8544B403E5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8544B403E5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 11:26:03 +0000 (UTC)
X-CSE-ConnectionGUID: TT2HXEHGTA+HOXygAOpIPg==
X-CSE-MsgGUID: y3ni5Gn9TtyOnXUZOmQNBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="32816743"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="32816743"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 04:26:03 -0700
X-CSE-ConnectionGUID: 0VWY3TB3SLOy8PYFfBkSLw==
X-CSE-MsgGUID: TcrdkQtXRAycz/q5AyVTIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="117274453"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 04:26:02 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 04:26:01 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 04:26:01 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 04:26:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rWesRFcFNJpWvvcDFlZjUfhs1fR1FRujb7BJQppQD14u8HP/IJnkOjXDcg0MJmcyj7UNld7jQihh148RygEf/18PMRU2SEHOGafokie+eOARUSOt5FIfPPeU9HWqG0gubrO44UCnKq2cTEQlAziCcMXsq8iovGQXK0Pt3Pb3JzGvpayvo+pvM4B68fFy/ohVYIQfC5I2Kaz0X/bNZ+k5XlbKqwZ11WurcFJiepoVfFJbId6Ee/YRxZhPGahwL8/eTy9/M/YZsbK3P42PQ2pakIX+xP+mtj4WFFL0rKXtN1nCFzSLskX8PTmoENjH33Vo00kMx6nI8ChtAk3TaH5TBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hXvzwk8iYd2eKlcDxxTYK7FZnHqeqMwCMZT8tqnKxZg=;
 b=iAm2bRBRQMk1NxTwrjUrWXhqRmdkwC5plziI/ABRwCnPttOfvK/vXk0vDdAat+QTiN7yIZgKzW7q5O9zPk2UAZPuzjPah3LarCxt1u4btGhSheXkfbZMtDC1rYSGX3q8a2J2BGN7mVujMSi+Mam65CDZHAVH2EY4iA0ZMC0C2F0zYrh8sORYFDr+teNjq1sK7uK7X0mSnDgCrOD6gKuNrcWbrOQarhu5YcQbCjUGL1voC+PQnprep9Ka06JgQjAdrZbCQ2j/YHibhxFLFo25QCHBsdcFjEyavgHhawTknJpfYEERrBWSeNH/o03Axq0lUU0PNg3uidf/AycFMsO3Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 BL1PR11MB5953.namprd11.prod.outlook.com (2603:10b6:208:384::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.29; Tue, 22 Oct
 2024 11:25:58 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%5]) with mapi id 15.20.8093.014; Tue, 22 Oct 2024
 11:25:58 +0000
Date: Tue, 22 Oct 2024 13:25:51 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Yue Haibing <yuehaibing@huawei.com>
Message-ID: <ZxeLv+DGjFt4bwS+@boxer>
References: <20241022065623.1282224-1-yuehaibing@huawei.com>
 <20241022065623.1282224-4-yuehaibing@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241022065623.1282224-4-yuehaibing@huawei.com>
X-ClientProxiedBy: WA2P291CA0040.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::24) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|BL1PR11MB5953:EE_
X-MS-Office365-Filtering-Correlation-Id: a48a9419-6a97-437b-f0c9-08dcf28c4d4c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?xMGJwVGz8GKs9y+ex5tx0f0/TeSm9G8dMjJs0LZXiJ3dbAC/d+eYkIfjaC70?=
 =?us-ascii?Q?d3BcnDO6vM3geRTeMJyU4biYK0mhaohKPNl8IuyfTuyEpMbQCQGDNt+PWtvd?=
 =?us-ascii?Q?RsxGr+5v+AqWE/crUxp/PLktAiu+JvziP3/JvKMJCloQSGExHq7B/3lpeBJ+?=
 =?us-ascii?Q?rFt8DI3O88bDLIltWyJyheq2ulOQSJacoqx9Uf4nzH68/a4J7rMfE2gqRmNv?=
 =?us-ascii?Q?/8FhnJXnvt3RfbBu5gQVeExaTCDgIi1pKLi31t/qD75IyJMEke/8zG83kMXi?=
 =?us-ascii?Q?423SZMkA5P0mE7nnmnzC4hoI0yh8EUTBXgMCepD31+Bi2zHR+ye9tM+ekuXD?=
 =?us-ascii?Q?OCnQh1A1MwCytWQpEdUZ4vMBWmJ51LiEMeD85Hcc2gtOfO7NxZdxoQKdpFG0?=
 =?us-ascii?Q?gpUbHBU3TX5egjvBchEqb6XzJCscC+TdieM59vCZb9XzdZrAi8arx+jTSzL9?=
 =?us-ascii?Q?/oIGaKVeg0fGcZqvYlPZHuozJZM4ehzGFM12Bwn+sZk1Pg59WdTSUP9/PU9N?=
 =?us-ascii?Q?+S19R4j3IJ8wIRnQ68N6zbOQNlPxVVwnxiuXS4U4lEZpsRWejaHggGu6sr/x?=
 =?us-ascii?Q?gcwT8ov2Qiyem0VILj1Go4Tq9tD99Aj7V3eJm1LG3jXLzrWgKoDGtaFe7gyx?=
 =?us-ascii?Q?zoxeF3oRIGeCBDAknGt3H6OThHoC/NpAenVv4UaWZkOtwTOzHI5f6EoTiDfF?=
 =?us-ascii?Q?OzmFvwr0oCUq+P0YnhLZjv0m14EnVhqhhqthq4Lni+cVGUwTCnC8k7CoKa2P?=
 =?us-ascii?Q?M1l3eGJX83W095S6S4wBZyC2pI/SgEFLCN13P6P6h6ehpWsPhqf9RH4ZICnL?=
 =?us-ascii?Q?DzQO0qi4N/LVpbr1m9qqRKUs30hYkRVZ0laymp1qKo9TW1lGyNLiaDxaLsxQ?=
 =?us-ascii?Q?4taWoIE4Vg7esDO+9TgMqSEPqM0Ygg0uNzrkZoy6SVA3dN8JnZGwAU1BB0OT?=
 =?us-ascii?Q?kX5Nsh/QX6Rpy6xRKzdRX7cOc9QLt82hnkjK6cenf4Z2GlC8c/VYUZvo458J?=
 =?us-ascii?Q?HIy6YPkEjznK7F9S/Ntu9KIkdMycEFH8QnF+sZ4xbt2XKlPwZkyzH4ucQBiA?=
 =?us-ascii?Q?e3ZhvSs9fJsYXYCzJZ7FkpLNNzj6bYnrck5SlUuelSaOtkYBLwDf2rpb4dqE?=
 =?us-ascii?Q?PvmHtm+T/KxTk4lt25W6LZTwMNQyprosi7/69BPpykBRXPXaw4EdrRiHDrft?=
 =?us-ascii?Q?JhdJ7qNxkQUixLci28lRlSy8LhZ/lGlNBnHX4eE1gEO+cTixxk6198R6wqyO?=
 =?us-ascii?Q?JcEGwBZ2bg0Ai+DGE1PVuBztHsvIF6MMyF6zcjQYK8QGyNlmUEzZXKWtezOp?=
 =?us-ascii?Q?XV0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7KUrkuUlskEaXFHDcvL09eY8ZqDDLKMStLx5swQbw76xUi1+DhMvfxrIQ/l2?=
 =?us-ascii?Q?FTnl7F50tE0ZA9GfV4iN4n98PuqOzHePA4No+iyxtlbEmlYB/3QkiOkmjNdG?=
 =?us-ascii?Q?OPvZNsqgGH/vEN1vZKgNcPdRH83Muq4bTW5yAXz/iK2ZHsw6xHDHQSlW4PGk?=
 =?us-ascii?Q?IYSmVSpKQ7nTjmGExXSkBHp/6IUqVwPfXwuYu90xjcVEvhfTWFshKX0YyN91?=
 =?us-ascii?Q?kqTsuUbb7mp1/5UD+0LdqqAfIMHGL7ZhzPTa5d4TAFtrEt0JNqd66o5mkiN4?=
 =?us-ascii?Q?wv88H91xgjOkTLtyomz+eL5BVfP9XYLMqi70VCI56WxGenCBmizF6k7e2xvC?=
 =?us-ascii?Q?jPnwAvjgJpErUkF+ctbtqdoX7NWUttxroObbSQ4RBQSTczpRbSuKnzqYsdyv?=
 =?us-ascii?Q?lVc+IM4gr81PGNLjB4Bhfhg7an6jWwMMmc0wX/fQ8yFKRcJUPutuaFVXGz6b?=
 =?us-ascii?Q?aUKkN7uSNWeyIQog71H7Uv93YQVsT4x6Zcnv0Y3dwkysBFz4Cp347yoOpyZR?=
 =?us-ascii?Q?cZhd+UOZxaGoFJBdplkHPnVsUmQSfTVeuziyxFeG7BQNrW7rKwwl8VCC5g7+?=
 =?us-ascii?Q?cmm6oy0N+EuK8vc7gOwjOsgUbSSfQwBYpMdFOuTqcGrSyMp8PzQLxcsRvFmo?=
 =?us-ascii?Q?A3GZHZ8ZvhJPcp7NPCPjSW/iJLipftfP2flquUUAK1FE4SjmHX3xeyqcuV6C?=
 =?us-ascii?Q?e8fpFFtEnprxUIXaGXwiNrkqPAl02sbyTkRLTuq8JfCXgKsJ4bpLQoOSgk+F?=
 =?us-ascii?Q?T1BgMVKbYbQ2/m3hlNna7Qnu3WyrdIr6YaHFM1OLt1kD9eTa9Twp644lfC7h?=
 =?us-ascii?Q?8ubjRHlweA7n4RnPIk2DRvotdWuTw+DXDPlzYLHWJNfjOS5ruuoRYFz/k7C2?=
 =?us-ascii?Q?D53bqpAhNw0Pj2o2oKHD3N2NvlEP9Oy8ulksqbEHkxD5Up5lRrCgbNQ9icEq?=
 =?us-ascii?Q?lRK5HMHRm9DsQPSim6ck9f02brMzRdGxCV30MuW9W77wM9A4dYqAKsWJU18b?=
 =?us-ascii?Q?e/PHD1HLLHrHyDbYvMnv7v196NoSsBz7wsMTKZuSAoI+NsBEBSuiSh5nA9q7?=
 =?us-ascii?Q?tnLZ+IIB4R7YsszBDA29G5waF5Binfixv4fTwDzLwBlNzz/V7TDLdbFC7V42?=
 =?us-ascii?Q?ub9kSD9/EG5BLR0iKsNchFbcCDvKlk+m0cNX0HBeQLP49ZA0plsLZFcTV3Px?=
 =?us-ascii?Q?i8W3kjKb4Z4kmQLrJIFt+Nz4JqSIJvZ8FPgyEQMI5kGKJ8h8xM4AR+91Vq2u?=
 =?us-ascii?Q?esNM3Lk0WuBplgsupcxhuvqLnRaflM6Je7Nyi3HXzT+ffYt2W1tfUGcphy0F?=
 =?us-ascii?Q?xhAbpTBjA/XmoVJCL7fmgSLTGcP++hfsFpJvZ9ZRH0EsIlaABghLvLHgeOZc?=
 =?us-ascii?Q?pFt8wgjfVVNt5XPxNinQ38NNtPj5LnBcNbPp7okoYQ2C7xsCkMxZ1URV1Ds2?=
 =?us-ascii?Q?O4lPfCV7rE1731Kl64n91rr8r/K2Ngxo9l1C63Xlke5uMFgy2gTPTDevEjXu?=
 =?us-ascii?Q?ORZ9bK3K6Is/M7FJzgpHs8+ZVxV+mtcVP9sCOvCBbNKxXu8bMeohVGDyyQs2?=
 =?us-ascii?Q?r2T64DKNWtac3w4FR4roZG/UAuhoagZhm5RkgkxjNmt8KGzOUBDLjpsyoHEY?=
 =?us-ascii?Q?7g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a48a9419-6a97-437b-f0c9-08dcf28c4d4c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 11:25:58.7186 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qGJgzxQxvOxw2TWMp/LkubtXMwHo4Oak9c5VC/6B0/D/cHzVryLDzcr2pwt6UbL19YWAh+KqTdlK8cko94xD/IFlFIKJ6qjQIWfjRVcmkIU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5953
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729596364; x=1761132364;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=cHL00LIPaOZN4mGK6i1MJs9FBsCEzx35E24ONMihIzA=;
 b=b6RgacJfxq5vdqCCx7moxF7iNrV9DPF9feGc0kMBQQpjKaMRrvYjMNNT
 pNiNNrrNSt8nI+wljajp2EU+KG7qVGRQAxna0TB9uHTTR96DxfzXYmIvy
 4FPbLuRr1UQmBNZoPEHe0/a2iolYNcG2Xea697NSU7PqKN4eu9ZaqpFVt
 DrpdKgVWb8upOgg1pwpNnAmf5Gi9AMrWYg18uKkjcZdhOr9hjqMsjTaDl
 nT29c5eedmYu2lzgkovC9WbLl/b9Dvx2hBvplIntd0tk3P/YLSbSztslb
 NrzSPAuwvnO8o5UKoJ+vXNpaNdye5tYRhs1AY48JXfYUUcp6dEOG71pEl
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b6RgacJf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 net 3/4] ixgbe: Fix passing 0 to
 ERR_PTR in ixgbe_run_xdp()
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
Cc: alexander.h.duyck@intel.com, andre.guedes@intel.com, hawk@kernel.org,
 daniel@iogearbox.net, jithu.joseph@intel.com, przemyslaw.kitszel@intel.com,
 john.fastabend@gmail.com, ast@kernel.org, linux-kernel@vger.kernel.org,
 edumazet@google.com, netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 horms@kernel.org, intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com,
 kuba@kernel.org, bpf@vger.kernel.org, pabeni@redhat.com, davem@davemloft.net,
 vedang.patel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Oct 22, 2024 at 02:56:22PM +0800, Yue Haibing wrote:
> ixgbe_run_xdp() converts customed xdp action to a negative error code
> with the sk_buff pointer type which be checked with IS_ERR in
> ixgbe_clean_rx_irq(). Remove this error pointer handing instead use
> plain int return value.
> 
> Fixes: 924708081629 ("ixgbe: add XDP support for pass and drop actions")
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Yue Haibing <yuehaibing@huawei.com>

Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 23 ++++++++-----------
>  1 file changed, 9 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 8b8404d8c946..78bf97ab0524 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -1908,10 +1908,6 @@ bool ixgbe_cleanup_headers(struct ixgbe_ring *rx_ring,
>  {
>  	struct net_device *netdev = rx_ring->netdev;
>  
> -	/* XDP packets use error pointer so abort at this point */
> -	if (IS_ERR(skb))
> -		return true;
> -
>  	/* Verify netdev is present, and that packet does not have any
>  	 * errors that would be unacceptable to the netdev.
>  	 */
> @@ -2219,9 +2215,9 @@ static struct sk_buff *ixgbe_build_skb(struct ixgbe_ring *rx_ring,
>  	return skb;
>  }
>  
> -static struct sk_buff *ixgbe_run_xdp(struct ixgbe_adapter *adapter,
> -				     struct ixgbe_ring *rx_ring,
> -				     struct xdp_buff *xdp)
> +static int ixgbe_run_xdp(struct ixgbe_adapter *adapter,
> +			 struct ixgbe_ring *rx_ring,
> +			 struct xdp_buff *xdp)
>  {
>  	int err, result = IXGBE_XDP_PASS;
>  	struct bpf_prog *xdp_prog;
> @@ -2271,7 +2267,7 @@ static struct sk_buff *ixgbe_run_xdp(struct ixgbe_adapter *adapter,
>  		break;
>  	}
>  xdp_out:
> -	return ERR_PTR(-result);
> +	return result;
>  }
>  
>  static unsigned int ixgbe_rx_frame_truesize(struct ixgbe_ring *rx_ring,
> @@ -2329,6 +2325,7 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
>  	unsigned int offset = rx_ring->rx_offset;
>  	unsigned int xdp_xmit = 0;
>  	struct xdp_buff xdp;
> +	int xdp_res = 0;
>  
>  	/* Frame size depend on rx_ring setup when PAGE_SIZE=4K */
>  #if (PAGE_SIZE < 8192)
> @@ -2374,12 +2371,10 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
>  			/* At larger PAGE_SIZE, frame_sz depend on len size */
>  			xdp.frame_sz = ixgbe_rx_frame_truesize(rx_ring, size);
>  #endif
> -			skb = ixgbe_run_xdp(adapter, rx_ring, &xdp);
> +			xdp_res = ixgbe_run_xdp(adapter, rx_ring, &xdp);
>  		}
>  
> -		if (IS_ERR(skb)) {
> -			unsigned int xdp_res = -PTR_ERR(skb);
> -
> +		if (xdp_res) {
>  			if (xdp_res & (IXGBE_XDP_TX | IXGBE_XDP_REDIR)) {
>  				xdp_xmit |= xdp_res;
>  				ixgbe_rx_buffer_flip(rx_ring, rx_buffer, size);
> @@ -2399,7 +2394,7 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
>  		}
>  
>  		/* exit if we failed to retrieve a buffer */
> -		if (!skb) {
> +		if (!xdp_res && !skb) {
>  			rx_ring->rx_stats.alloc_rx_buff_failed++;
>  			rx_buffer->pagecnt_bias++;
>  			break;
> @@ -2413,7 +2408,7 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
>  			continue;
>  
>  		/* verify the packet layout is correct */
> -		if (ixgbe_cleanup_headers(rx_ring, rx_desc, skb))
> +		if (xdp_res || ixgbe_cleanup_headers(rx_ring, rx_desc, skb))
>  			continue;
>  
>  		/* probably a little skewed due to removing CRC */
> -- 
> 2.34.1
> 
