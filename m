Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EE1AB6B76
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 May 2025 14:34:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4AA3F607DE;
	Wed, 14 May 2025 12:34:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e1pc_poqaCiF; Wed, 14 May 2025 12:34:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95E9860BBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747226048;
	bh=e7+HfOGBwsOu4bNpMy0ygV6IhHwN5xUJHsZ2LiAzwWY=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vauTMkGqDnxD1qF6iHydHZtAguv60j56qX5IdtXT7wz4D+wsq9Z9pYiVr+6YCYDm7
	 p9cPIZxo/qNI1z+d7kMikdRpERJAcIg4LNMkcyh4w2qGsRTq5UEpLF+CkWBnEAjJ+Q
	 sZ8fVjd+txCadqakloiafLlETdkAk7FpwJu1qlt0ffTvCKtVnvDygqAoazUUVbSQj+
	 bI1J/SYUx53f5vfcQy5HjQI0Muqzw7zQbx1xyZQZLnQGCB5wy0kVeo9EA+aH5EUbzt
	 iQHluCu8CbaBj2AT4lvyuAQkprvybJ9CHmqdrHWWBizx873eyDTYyQ4UxQu8DkfZ06
	 cYCZJbTtuUK0A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95E9860BBD;
	Wed, 14 May 2025 12:34:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1659012A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 12:34:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F066C83709
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 12:34:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kSQzVm0LMx4l for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 May 2025 12:34:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 25FA483748
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 25FA483748
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 25FA483748
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 12:34:05 +0000 (UTC)
X-CSE-ConnectionGUID: ubzC4TWmTWCZBQdBuc3uHg==
X-CSE-MsgGUID: /STOs521TziZeWsv88NSzw==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="49285116"
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="49285116"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 05:33:56 -0700
X-CSE-ConnectionGUID: 4aCpiJxOTuSW+UAZFQB1lg==
X-CSE-MsgGUID: BSxotCOgRKah+xo5U4r5Jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="161319473"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 05:33:56 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 14 May 2025 05:33:55 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 14 May 2025 05:33:55 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 14 May 2025 05:33:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sP8kMWr6rP5hxpVoENYYE82IeLXAg1qv63mUXNyX7icmtwIYWN17EOKh+OkZUrPUdIUmu6VI0n3BfNEPObP5UPQiia/G7aTOlfEcvz/7eQqbNiMPkAquQa6SbJuacYmwrChpjDKYbji0mw7RgusaSeCcuuUgeqC80zEXZ9HOoK0/rZpuCyUgcRxNh5qOrHvYg4d3EhVTa5I5lQpetKEaPtd+uNs8WAZvYe+n1C6A2JxmLqfYb3NTz+Tvt1k32UzUV1loJXcG0nIcpkIUfwIa4ZGDe9InnuKrJHKsL5BuglcMBDrWRTIUNEFBVqVab92ctoL2enNvHdJRHKb/XZqk3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e7+HfOGBwsOu4bNpMy0ygV6IhHwN5xUJHsZ2LiAzwWY=;
 b=Lu8PvhevfU0HrRbh8P2BSktnuGO68l/TWnKWJsoOfKep00Us4EYFpsoabxcQQzr84cYfoAFhU9wObbQsnWl3bbs9UhA/YglgUzaYsh0JvN3QoZ+m/oyrj76YPs1lmNT7Y9znpa9tdxDKr6NrWVBywsfYc6pSvpss5WvDYV59Qk5iadd/ddLCOHpnoL14B8VGciHwsVBEPdXCoslGHh9T5dL+TrWIv0z4zjdIjDq4VBR5c3dYSa+xnSjOe4IL8AV0f7LRJ9gS+CGIPgxJpULmDBS4u/iFXW286HurHRQPCAlurNQQRDgGxTai5rX6nS0phu2/aH1MEB0pK6E7IwbEuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8665.namprd11.prod.outlook.com (2603:10b6:8:1b8::6) by
 LV3PR11MB8482.namprd11.prod.outlook.com (2603:10b6:408:1bb::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.29; Wed, 14 May
 2025 12:33:51 +0000
Received: from DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955]) by DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955%5]) with mapi id 15.20.8699.026; Wed, 14 May 2025
 12:33:51 +0000
Date: Wed, 14 May 2025 14:33:45 +0200
From: Michal Kubiak <michal.kubiak@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <przemyslaw.kitszel@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@intel.com>
Message-ID: <aCSNqWh0Cbh3rfdE@localhost.localdomain>
References: <20250321151357.28540-1-michal.kubiak@intel.com>
 <aCRv4Bqi1+9BeBK4@boxer>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aCRv4Bqi1+9BeBK4@boxer>
X-ClientProxiedBy: VI1PR09CA0124.eurprd09.prod.outlook.com
 (2603:10a6:803:78::47) To DS0PR11MB8665.namprd11.prod.outlook.com
 (2603:10b6:8:1b8::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8665:EE_|LV3PR11MB8482:EE_
X-MS-Office365-Filtering-Correlation-Id: 6fe98f85-d1b2-4fec-cb84-08dd92e3952f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?N/De5Boo8Frm+pKXC2HDDFBJNRdqLcUNWxsK+uzVeNJRg9OR0rSKsPZvM+0T?=
 =?us-ascii?Q?VlbcB61FqwXKHR6tblBWnnuQMX6F02vIU6PzUeGFpRxDMvdZ7ejXMTlweuoD?=
 =?us-ascii?Q?4M/ibpp621Z8mxSYpTKNelfuv6SfSZCDXQcQnh1+dmO0vziKD12AMoRFLAe8?=
 =?us-ascii?Q?V+NFEoDKmWtQYfUvL8Wicil79s5wKFn3oitfJWw4qCQwqBGhdiZd4rBM8J7g?=
 =?us-ascii?Q?cJXM+EnuKOFryKrq1ra4p4+MY9OWGj/sNs3Uvm5b+ObgjwNJlL17ljWfMGj6?=
 =?us-ascii?Q?M11aI8J5BHb8UEzfMSXQFhGxcnyTiz4HexBkjtnOLDs4MIF7nlHYcOzwriMj?=
 =?us-ascii?Q?bUylT/v7IFlc3v9RfGUb2yiRX2i3nffez8IVvdObA1mPm1H2IANkAc5ldz1o?=
 =?us-ascii?Q?Fmt1UmsvWMuoCA4XTXwUWPBD6ZQFF5IMXQ9FxyxCglDdLLkjih9zCM/sBXuK?=
 =?us-ascii?Q?7E33T7s05KnPnqj4e97YHEKKesISZ/x4ocnpUxFppnCepy6KwGzfqnnIfyZG?=
 =?us-ascii?Q?51ZF6tt7GrNeHYWnPAnnnZ4wm9GLVZ91oyql5FrPeVpFxwFYM9NE0d4DU3UL?=
 =?us-ascii?Q?swIA5j73T6bR7WjOhdodgPu0TS59XloZMGxH/A4GNmosONsfHK02hgNtikQs?=
 =?us-ascii?Q?PaiU8HY7PeaRqz3GHr06Ujw2ckvIRHGFNRld1/uset4prvSLU7bADMGVkIPh?=
 =?us-ascii?Q?ZFjVh/jcrnzvsYYreJj0JPc/1lGG6uAbh61KM1EegX8Flc3FbY0VhcS/IIzp?=
 =?us-ascii?Q?35A1UNkcFy4vArmAN0uGjtTt/07Bg6Ny//jv3HkXSiYNMVNYxlwATx7N0e5a?=
 =?us-ascii?Q?Fd2A+fuUryC5g0ZwFz8comyVpfzcaAbOWdn0kCMYJI1vk2bJhaNRsBAflFK0?=
 =?us-ascii?Q?aHNpeSfRMQtSwjTJ1+fhlji1RRKH35YZVckNQPAwgSGgErGNbWtM9YQt0vAh?=
 =?us-ascii?Q?ghF5XQUTKnPruJZsuj9YjzwBjKHCqg0C4hDhaoFER4Rm6ghHUpy8GaoHIggm?=
 =?us-ascii?Q?qtjpdEcgGWwCJUQ8yFcJ+dW72wSx6E0plb5mhz40Iwh9KH74AWpA9yj19t+g?=
 =?us-ascii?Q?2sqyWutsmE0zcZZu4EROYV7XlAbd0rvuoygXF4ZUHWq+nQtsqDjsMo48uC35?=
 =?us-ascii?Q?70sIyTdadJ3U12a1ay1MbuS+xLd6AS/iL0k8nQmgQ0yxP4II4ilwe0PrgLCt?=
 =?us-ascii?Q?lK7cKzXUxfjjAT4LNBMmjZlWbfH7MI/Ktv+D7YvophYCb6P0MAwkcGiZvZG+?=
 =?us-ascii?Q?eNZGGPaMJFBCRv56bIkTJmH2O4wLV5y+9t6M7kE7uFwN4sxfaeSUYRgk1C1g?=
 =?us-ascii?Q?h1c4d4axDNi/8kZA63I1lvURM+yCI4bdeYyHLW4pDvs8GxZroTu3AgU7b59w?=
 =?us-ascii?Q?ur/M3xkHcFpT2vgTKPBOCdVO0o91y47UFhotTVTo30xl/Lkt9knDVMi3nwB1?=
 =?us-ascii?Q?9WPk3hxss3w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8665.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BEMD9YTWrhy/R2ZxDebRmrIQ2AAGkTEIuPk5XGW/3r/xUKNnsfEAfUyCUl+2?=
 =?us-ascii?Q?9T9M9vTCP+UiGjRG6fU0SNzAUFeK4ot0CLDons9OL3YTiVc05ZsQAcNctkYE?=
 =?us-ascii?Q?DW2ZJECrD8cmBAt/8W/jPJcDpaJ6rssY5YjWKvGswxSvOME/8ru6ncW9LSDo?=
 =?us-ascii?Q?uvuydetne0tGxIYfm2Gf1g+JfUIpTgQ6PhBo0ZtDzu8AsRmg/MQOHNxyBkto?=
 =?us-ascii?Q?yBzFyGk/SwhnW/BiOEK+8coaakGfoIRyLsA1HYHUJ6Dt+QnYVDoTck98WRx1?=
 =?us-ascii?Q?g1bJ2xZxEyo2GjhYpLOM0X9A7g/HN0kKCJ8EIPJZQZ1raWVURTl8CIR0gqt8?=
 =?us-ascii?Q?lruXj1w8N9ZUVI93rkm77YnINKcEHsmAMI56EMzRP2pKhctXnwlLtYJ0B++x?=
 =?us-ascii?Q?IZU483WTnl4b7GpvLX62lilfSXPFCfPqfSVfRwoqSI/cUtQlFJa4+o/aC33y?=
 =?us-ascii?Q?CJxWnQARtgmBhmZM6xkUaXquTtcPYf2B6TM4WmoA6XraDWerW0S451rxjPdh?=
 =?us-ascii?Q?jLZ8ClOmGan/KRKqXsMxXNBi0cz0oCeQi08StJB1DEG+ZR+dH/2wgi4tpJ56?=
 =?us-ascii?Q?v3JzR3C8MZmr6gKNLG9Tl57rEk+2XgLT2BTFtnropnoAPRuSgFuvWK9HOYoU?=
 =?us-ascii?Q?cRnq98vMNDUZf4FCJENO+9S5iAFLkemUgTMu66NwCld6d8+xiCQ13gr5N6Hz?=
 =?us-ascii?Q?71S7NzuXJBoKOt2BvrE+SXMK3307nfHAGgNfpxRKbWlYlSd+6xW5bWZ+GFLv?=
 =?us-ascii?Q?aOBp2uZWIcFfxRmW35ip6S5Ty2/Toh74k/AyudUXIa8o1iP+LBsV61Nm1EHK?=
 =?us-ascii?Q?iqKWqIIJ5Mf0Tq3Yyf6VAhrPNgPkyk/K1o9F7EwXgz+yqFtfTHic5DCkhlrt?=
 =?us-ascii?Q?1h/DqqvcXvot5BIUKt9SSsLgJVc/TE7nOJ1DeMbU/R9njyBiCC+9GzG++BVt?=
 =?us-ascii?Q?l8RnwdmEbp7b10+dD2POViNlaFStjuo5RQpcL9BlW7yVGkE6eRTxNSSOaBpp?=
 =?us-ascii?Q?pOEeBbrf8kc6Nbt9vSVmKYaISJtOk4WDwEYYokETpnagD5EpppNRBBaVD1Ia?=
 =?us-ascii?Q?AQbU8tQmse+AsQ+NEVr2p0WDOYFkqdf1yiTjyxo6YayKxpl4lPGnlYegy6qE?=
 =?us-ascii?Q?ZFO3WHwmUk/o7h4R4S1KspkRTwhs4nVd0Q8j7n2m958u0CEVY+Ctb4JVPZn2?=
 =?us-ascii?Q?YBhz2TLkkyaUxoU5GNs89lPV5JnYl5u71wYvM3z5HlCPOXP7DljtgCHjR0TC?=
 =?us-ascii?Q?WX4PhPLj4NoIrTemYlXEzhrGybIGxb5jyYQYVridCf32uQQRkjKg959vvlJX?=
 =?us-ascii?Q?o/FuSmmPHbpjEudIgvybJGHrBdoqII9yPnEGYLR4TEso5wo3NwDqkwXjC+Ks?=
 =?us-ascii?Q?p6gwekxkw1I2C6ORXobAozNPpx8TmsRQhNrgzXCVPUbi4qRbQH+7cycJiU6H?=
 =?us-ascii?Q?9BRFfdD8RFGINrVMesotyuxml6wZpIlyTPTBimv2KHHAOnfkMv4Omwpn1Vyu?=
 =?us-ascii?Q?Onu3VEM4nEMRpYU37MQKWu6hR4dTyfknsAcoEpGEaHgJicWC1v+gWuAIPdBb?=
 =?us-ascii?Q?Y4iY/b3RKQLJQ2DB+DPr1locMor4HRcJKWq3x5RLs42LgfbSoX3VPh0EixwG?=
 =?us-ascii?Q?WQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fe98f85-d1b2-4fec-cb84-08dd92e3952f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8665.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2025 12:33:51.6219 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rpxiq9WkJhVaqBMi6/avhBmMbujDrqVELXyHMOtdXCMZf5XBjTax79a04qF6BJ5vt7tm2aG41boDCBG3zOcpoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8482
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747226046; x=1778762046;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=jhZ26yjhY29F4IYpq8VN2q8R3iwt095hNDhOH2iYkEs=;
 b=dtJ1My3vDVgtcmVM6zjHEA7xP1SZyog2HtFbfZtxJzof9yIKZaXCgqiv
 VIAekAb353CfSBaGT4CfmUlJLx4h88FJFP49ChlbuQiP8ZtyEYS+/g399
 usoDrlPUSUULSHp2v9clK2s04Pn9AQqjSfsPpJSkwZyY1oBLB8d2U60+3
 l5PPLzsL4s+mZ48z73D76IsGGjFw9F6SxhpQbo9KshsADJRZpWqLHoDLl
 pMCAwhvTk7EdPTx/QQPsehi2q3oZe0dFQrGOrz5GwcUHYMTciFR5MXkOi
 5vqWnHYkuqxgAzMDKzlmYUHNaKzvUO8t/F0ay1rXjcAtXz5rum/p0Zdvp
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dtJ1My3v
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: add a separate Rx
 handler for flow director commands
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

On Wed, May 14, 2025 at 12:26:40PM +0200, Maciej Fijalkowski wrote:
> On Fri, Mar 21, 2025 at 04:13:57PM +0100, Michal Kubiak wrote:
> > The "ice" driver implementation uses the control VSI to handle
> > the flow director configuration for PFs and VFs.
> > 
> > Unfortunately, although a separate VSI type was created to handle flow
> > director queues, the Rx queue handler was shared between the flow
> > director and a standard NAPI Rx handler.
> > 
> > Such a design approach was not very flexible. First, it mixed hotpath
> > and slowpath code, blocking their further optimization. It also created
> > a huge overkill for the flow director command processing, which is
> > descriptor-based only, so there is no need to allocate Rx data buffers.
> > 
> > For the above reasons, implement a separate Rx handler for the control
> > VSI. Also, remove from the NAPI handler the code dedicated to
> > configuring the flow director rules on VFs.
> > Do not allocate Rx data buffers to the flow director queues because
> > their processing is descriptor-based only.
> > Finally, allow Rx data queues to be allocated only for VSIs that have
> > netdev assigned to them.
> > 
> > This handler splitting approach is the first step in converting the
> > driver to use the Page Pool (which can only be used for data queues).
> > 
> > Test hints:
> >   1. Create a VF for any PF managed by the ice driver.
> >   2. In a loop, add and delete flow director rules for the VF, e.g.:
> > 
> >        for i in {1..128}; do
> >            q=$(( i % 16 ))
> >            ethtool -N ens802f0v0 flow-type tcp4 dst-port "$i" action "$q"
> >        done
> > 
> >        for i in {0..127}; do
> >            ethtool -N ens802f0v0 delete "$i"
> >        done
> > 
> > Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > Suggested-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
> > Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> > ---
> 
> (...)
> 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
> > index 4b63081629d0..041768df0b23 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_txrx.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
> > @@ -492,6 +492,7 @@ static inline unsigned int ice_rx_pg_order(struct ice_rx_ring *ring)
> >  
> >  union ice_32b_rx_flex_desc;
> >  
> > +void ice_init_ctrl_rx_descs(struct ice_rx_ring *rx_ring, u32 num_descs);
> >  bool ice_alloc_rx_bufs(struct ice_rx_ring *rxr, unsigned int cleaned_count);
> >  netdev_tx_t ice_start_xmit(struct sk_buff *skb, struct net_device *netdev);
> >  u16
> > @@ -512,4 +513,5 @@ ice_prgm_fdir_fltr(struct ice_vsi *vsi, struct ice_fltr_desc *fdir_desc,
> >  		   u8 *raw_packet);
> >  int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget);
> 
> this can now become static as it's not called from ice_lib.c anymore.
> can you address this in v2 if this patch got lost and has not been merged
> yet?
> 

Makes sense.
OK, I will prepare a quick v2 with this change only.

Thanks,
Michal

> >  void ice_clean_ctrl_tx_irq(struct ice_tx_ring *tx_ring);
> > +void ice_clean_ctrl_rx_irq(struct ice_rx_ring *rx_ring);
> >  #endif /* _ICE_TXRX_H_ */
> > -- 
> > 2.45.2
> > 
