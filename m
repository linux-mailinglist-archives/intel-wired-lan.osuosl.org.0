Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E78AF9B24
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jul 2025 21:30:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4CC5A41171;
	Fri,  4 Jul 2025 19:30:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jZh3EtrFXgkj; Fri,  4 Jul 2025 19:30:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 250F641190
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751657446;
	bh=l0wQVHLWBjZFAnf6ZTDWgMwCKA1DW2KHJS58LH8kvwI=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4281mRS4WygjxTdAPwRHksAvubyV3MmnfQbKszX6S1sdYusxzvTzGTqage2rZVpRE
	 VlTVa7w/ZVxSRUoDJkJDa8F4Avx2B5G3+O0Z1uQ/ZkhV1bZvgkb+SqEOub9bMi1NKb
	 bqilzICUtObV6w/ulVugxUjiKFvMluEJek8jJEGwn/TspfTj5AE/us9uq6R6T5xZmh
	 NqDAXy5aCIHlg2i3lrrErKa6wL+COj6kjATo6P1eoiPKjLqP68GDLIY4G3Agvh80dl
	 DHZGp/2PF/V5rQ/C9IL+pN64NFd1P/SUSD1bxUI834ZJv7YiG7HVGs5UceGbySppZ9
	 NvduXCdhHYzwg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 250F641190;
	Fri,  4 Jul 2025 19:30:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E98AE7AB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 19:30:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CFEAE41134
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 19:30:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yUw3_O7xA3uF for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jul 2025 19:30:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DBED0410A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBED0410A0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DBED0410A0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 19:30:42 +0000 (UTC)
X-CSE-ConnectionGUID: qAYOW0oERdqqTLJgZJG8Ig==
X-CSE-MsgGUID: TcUXv2qHR1iMFxsy1KrayA==
X-IronPort-AV: E=McAfee;i="6800,10657,11484"; a="54108848"
X-IronPort-AV: E=Sophos;i="6.16,288,1744095600"; d="scan'208";a="54108848"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2025 12:30:42 -0700
X-CSE-ConnectionGUID: LOGc/iU+Tp+lvoq/QIJUXw==
X-CSE-MsgGUID: kSXZ9KWrTLCl56FpAy8S3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,288,1744095600"; d="scan'208";a="155458910"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2025 12:30:41 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 4 Jul 2025 12:30:40 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 4 Jul 2025 12:30:40 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.62) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 4 Jul 2025 12:30:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XVzcUcLfU6Mscsigwf2RgJhOSdOaok890LA+JEs2Txwpj3Gb/cXZDVF3gdpnodQfk4CJLEIdlmVN+FrSS+dZXrrdu2zN/uoHubXb45b6sD13VJ3gCZAR7ssi8rqL8/oeUJXesMOhpinXussos+O3Qx/O5/FXq4dIBtoHlW9yZ1Z04wVrGx8nvaLH+iEz+7bMJs6DuvWruGz6mKGmwyDfD9SQFXF73YW0RM1v5GHGgjnYPjlFiILxB6j7XWrH9wzqREHU0Ur8J+hn3N22pfSp4VAe3SmfEsXKH1CT/12vsFcK9s5Jtsm/o199ApZ6rOx8ZFRf4hpCbVjPhKAal+Seqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l0wQVHLWBjZFAnf6ZTDWgMwCKA1DW2KHJS58LH8kvwI=;
 b=Lv2KNG+uX+GfYxC+CTZtrngszLLdB4bt26aQqk6XSrG4U3nWxvzon9K11Y/ZyrPpmEwpb2FYL/umg/JDX6NQWWR3I4FqV1I+VASiPJkDERvDTcfNpcdz//Ex0sC7NCgQMLjRqhoPAjwTpED28rmehhsUw9qpa5mEISofIQeVzV3y0F36fdvk/uByy+NwoTBjV52F9BfzFclA5motujHj5laYQES/Q/TCZNcAvk8+y1u/E/m52eg74OIpvoq1amFABnYq8vbH+4I+Zy2dool6jd29dSQbL4dBnEpFvIgvsbnadOV3c6ywW7XffBbyyCwcBvhlQAkWBMDnbMwV2D4hVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 MW4PR11MB6570.namprd11.prod.outlook.com (2603:10b6:303:1e3::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8901.20; Fri, 4 Jul 2025 19:30:09 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%2]) with mapi id 15.20.8901.021; Fri, 4 Jul 2025
 19:30:08 +0000
Date: Fri, 4 Jul 2025 21:30:02 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
CC: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>, Jakub Kicinski
 <kuba@kernel.org>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Damato, Joe" <jdamato@fastly.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Czapnik, Lukasz"
 <lukasz.czapnik@intel.com>, "Dumazet, Eric" <edumazet@google.com>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>, Martin Karsten <mkarsten@uwaterloo.ca>, "Igor
 Raits" <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>, "Zdenek
 Pesek" <zdenek.pesek@gooddata.com>
Message-ID: <aGgruu0EWqQnVRd8@boxer>
References: <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
 <CAK8fFZ6FU1+1__FndEoFQgHqSXN+330qvNTWMvMfiXc2DpN8NQ@mail.gmail.com>
 <08fae312-2e3e-4622-94ab-7960accc8008@intel.com>
 <366dbe9f-af4d-48ec-879e-1ac54cd5f3b6@intel.com>
 <CAK8fFZ6PPw1nshtSp+QZ_2VVWVrsCKZDdsxdPF9Tjc0=_gi=Wg@mail.gmail.com>
 <bdab5970-0701-4ba7-abd2-2009a92c130a@intel.com>
 <CAK8fFZ5XPQ-mW5z9qJNJhqFukdtYGJawYTYuhHYDTCvcD37oFw@mail.gmail.com>
 <d3c4f2f0-4c22-449b-9f8d-677c4671ee17@intel.com>
 <CAK8fFZ4L=bJtkDcj3Vi2G0Y4jpki3qtEf8F0bxgG3x9ZHWrOUA@mail.gmail.com>
 <aff93c23-4f46-4d52-bdaa-9ed365e87782@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aff93c23-4f46-4d52-bdaa-9ed365e87782@intel.com>
X-ClientProxiedBy: DU6P191CA0054.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:53e::21) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|MW4PR11MB6570:EE_
X-MS-Office365-Filtering-Correlation-Id: 1c4e4fa3-0ec8-4075-1360-08ddbb312fd8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RWx1cXRHeXB3U3ZsRnBUajJhd1VheXJYZmdUdVludjVHRDU3U29uV295THZV?=
 =?utf-8?B?MXc4TUErRU1uSFQrTTRBVnkvbmY1QmtWTURkSmxiNS9kZTAvQlNXaUJvQzVl?=
 =?utf-8?B?bktOU28rMGhlbDBJbURFTGtJL3pzdWF0MUJIRHQxMVVldXJQekRodUlweTdL?=
 =?utf-8?B?MkJUMmN2T0N1RTJMTjBLaEY3aUt0RS85Y2NqZjJ4U2J4UCtpckpsSTJVNkNn?=
 =?utf-8?B?TjY1VlJnTUN0aEFhQS9YWDJmK2pwKy9tMjhLNk01c0ZJRTRYV0RiVU9VVnp4?=
 =?utf-8?B?a3N0R0ZaN1JCWkpqcjhDb1JFWFhIVWRsRkJoTVplcmxpQjAyU0pLQzMxN1Fm?=
 =?utf-8?B?MHBtVG9vVmFuTkhCTHJSU3ZsazY0bkVKNmEzZEtRVFJUV0l4YzI0bG9kVjVJ?=
 =?utf-8?B?QkdwZTZtb3d6RjhwT1dHMXVWS1VTMWdGNmZDeXlmYmtjdlRLR2dQbFEzcjNV?=
 =?utf-8?B?MDRicWRQM3pWY3luQTNmYUozRnE4WHFpRVEwN0pQVGwxSlBld2RJVTkwajRB?=
 =?utf-8?B?Qk9rTEJkU3FlYk9SbkdmdGJFamJyZTgrWkwyQkpTZFJJMHJlcnhuazM0YzBH?=
 =?utf-8?B?aFIyT3Q2SEFyZS8xN3RDVkY3a1pRQ1RBSTNmdTB1N3JXZEhLR0ZZcHRoV0NE?=
 =?utf-8?B?ZDhhMi83M1hKRjZoSUJybGN2djhYbkRTTHVsajF4dFFOYU04OG8xQS81Tnpm?=
 =?utf-8?B?NFRaeGYzUlFEUlRsT3lyaGFnSFNNa3RSaW1rUjAvQXQ3aThvZGZzbUFEVkV4?=
 =?utf-8?B?b0NuclJKOHkxTDhCeUMwTyt2b005RXl3a3FqOUtNWWRaQjBWMzRLZE1rZm5z?=
 =?utf-8?B?SmN2REtCcHM2cDNRQmc3dTBCbEt5aHhHYi8zbnVMSkp1dlRLNHphNU5JOXNq?=
 =?utf-8?B?UVdnVmliNmNXQlVla1pIbEhRZWhhWURleDF1NVZjZGVyUWIza3VJVVE2bHFa?=
 =?utf-8?B?MC9CeFlYVG5IWXBjVGtQL1M2aWVRcU10MkgvSTJEL1NaN2pQU3VJRVNIOW9v?=
 =?utf-8?B?R1NZMEtHbmsxSXhwNWJWNGpCWngrdWlFZ0FaL1dLTXBDanI4Nk9HaEdvWFFD?=
 =?utf-8?B?YjVzbWg3N3dRSDVJS3hSakRMejEvUngxeUpabGw1TzBnTHpBR3FnRkY2bWcw?=
 =?utf-8?B?SDFsbi9aTE1CUFg0K2xaekMra0o3TWVoTHB2czRuSXNIc2VXNW1wcDIyV0xp?=
 =?utf-8?B?WnFEb0NjRExoaGUxM1VBaXdrUXRYNzlqM3FsVmtMWTZvOGhnd3ZORWs3NFhV?=
 =?utf-8?B?eHp2THpmQVJsMWowdHhPMnVTV0daRzBVVXNMZVJZaEZmeHdEbFhFQmcra25q?=
 =?utf-8?B?b3FmeDc4WGRDMzdMZ3hSS0R6NWpsbHFpalRBNVNUandzMFVWdCtkQnlzRk9j?=
 =?utf-8?B?REY2T1FSNi9oNUtSN0tHMzYwRnJYWXZ1a1JQeTRGVUo0eXZZUVRQZ3lpeWpL?=
 =?utf-8?B?aEhGTGpPdVo5OCszV0l2SnpFZHF6QzZ4NTQ2SzRSMDU4L3BUWTFXcWM5RmRV?=
 =?utf-8?B?OVQ0cy9jOTdhNnFOS2UrUTBBZ01qZUlQUTBjenJGWUtMb2s2WGtjUEo2cFYv?=
 =?utf-8?B?QmE1Nmd2MSthNlRMeERER0xVUUM4OGlaaFY5UXBYMEdBS0YxYWt3ODFkQ3FM?=
 =?utf-8?B?c0FTWDVtUU9scWJ2bGJ5dmIyVm9yM3ZtcFlmRW0yRnlpREk1aEhTNDR0a3dJ?=
 =?utf-8?B?WnhOZFZZNGZQVC96RGhsYUNvcFdSSDFrbE05d2luYnlxMnFmV1NyVnAvSmZy?=
 =?utf-8?B?NVN3Z2l0ZmswNyszNS9sM056UDQzZGlnZVNISlpHNXYwT0twRjlQdmVLUlBM?=
 =?utf-8?B?YVRoa1NIUndHaGFDOVVtVVpnTXZIOW4yb0h2Z1JmTXpNU2Ribmp0MHZrKzlm?=
 =?utf-8?B?SGVIdi9ySmJtaFdGWGJuaExCZVA2dFNQTlp3amUvNUJQb2NWbUhNUVZGREpH?=
 =?utf-8?Q?Wmns7PfWcuM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YVB0TDlSRXZOQS82WDFaRVNocFNJTlhyMWFvNjBxb2pJK0ovY0ZkQXNGWkVH?=
 =?utf-8?B?ZG1qSVR6RmJJMkViOEJ3QUxrZW1UZ3FZTkFIQ05lQ0V1Y2h6eTg4TkVaQnF3?=
 =?utf-8?B?SDE4VWlTOFlCZkNreEp5dTJmM3ZURENJdEVaTnpIQkVEdlJuZGxWZ3NUSEZh?=
 =?utf-8?B?MTMzcFAwdXRUcFBISGRUYkJsUWptbkx2cUdSeXlFNHhNcUorL2wrUkNnOTAx?=
 =?utf-8?B?RTJoR3I3U3Q1cFNZZkpVVGpkcUVuMFpJL3F2cnI5TlA0bkQ0N0UyZiszSjhJ?=
 =?utf-8?B?R1VTTDE5QjhDbldWYnloRUdzUk5KdVd4S0JaSUM5ZHZJNnR2SklJRFBDRmVp?=
 =?utf-8?B?a3l3YjBHVEM4ZGRMRExzMVRnMFM1b3VkT05TZG1zbERlTnJYVFNxc0hISDhz?=
 =?utf-8?B?QXd5QjRzMjA4SEUyWWhFcVU3aUNIVVg0VjRIZkZlTC9ja05IdFhtSlR5NldT?=
 =?utf-8?B?WjdJRnlYai9yNS9iMU5GbHhoUjBWT0FHMXJrY01JcXFJZDBDdTIzbTQzN2g5?=
 =?utf-8?B?TmtuNThvaEJJSUx4ZTVmVDF5U0JPMVpsWUt5T212VEo3MzQxaHlVUXlBTm83?=
 =?utf-8?B?VkJSLzlJcm5wTCtzU09BZEF3alhMUElwOVFMN0pKNjlIelhDWmtkSnRXdWk4?=
 =?utf-8?B?V0Fxb1JCaVBhSVpySm9BbmNlRVE5QXo3Q2pCdHBIMUkzM1VHNDhPbGFxUkZM?=
 =?utf-8?B?Q09wNGNVRHV6NWRNeWoyYzB6amNhOWhCYytqam4xMVcrREx5dTQ5K25KY3d2?=
 =?utf-8?B?YXpITnhvSWZXSnNXOFhMQVNIOTdKR0M2STlHK1JuNEFKcWwyTmkvamUzYzJM?=
 =?utf-8?B?VXR2YmovN3RaeVpkQWxNTG9VeG1RUXAvc0ZUTE1qcXFzR2pYUndQcjQwNytK?=
 =?utf-8?B?eWJQRHFpWDd1bmoxOEUyWnE5WE9acC94QytHVFU1NGs2YW1ibS9MVHIra0gv?=
 =?utf-8?B?UXp6bVhOU1pxK2laeE5hV081UEYwRUhLaU81Zlo2Z3I0dG5ST3ovSHhuM3RS?=
 =?utf-8?B?cjhPeHUvNEdiQmN0YVZtTDNYa2Q2UjVMclVtSS84VDR0eitsL0RhWFFxOVl5?=
 =?utf-8?B?bFR1UDV6VFRLeWxxZmJtVmRMcHNDYXV2UmdkSG1XVGpXMGJCbWZPU2ZzWWRl?=
 =?utf-8?B?b2xzU3RFVDY2SkFwdW92UkUvRi8vdFRFOW8wN2R3bWF5Wi84VmZRVW0yMTRJ?=
 =?utf-8?B?RWQ1QUtLUklMblJlVXVuZ2ZCOTBSL1BxSWN5cEtFNTA2WlVXUnB5aGxWU1ZO?=
 =?utf-8?B?Z01UWlM2dlJyNHNtMUpwVEt6TFl1SElUKytIL2U5M2hrNE9rM3YvTEZRSEkx?=
 =?utf-8?B?TzZoTUloUW1EQjR0VW5xNVIwV0k2dVhiLytWY2pLcllMNWZNOE9BQzNaVFlm?=
 =?utf-8?B?eHBzS2RxM0g4eXRxTzJhZ1pvTERSQks4Sk42T2V3TXFwOHZzUE9Tb3FLemts?=
 =?utf-8?B?UXFkM2VuNkZPcERpaWsvM2F4dDRicWtldG0wbFgxYnNkdmhyNndiU0kzR1Yr?=
 =?utf-8?B?Njc4bmRGQmhscW1rS3Z5YU5STW9RclpWVURLdG1aaENKVjYwQXZQQzdvUXlS?=
 =?utf-8?B?OFNmV0hqU0VTY05aeXZFeFY0RThTTSs3cmZkTEE0NXJGRWU4TnZ6U20wOHli?=
 =?utf-8?B?WldsWjgzeE9jQjdMU0Flc01hMjZJMGZLckVFMmlXNEVzbDNTZklrV0VXbXF0?=
 =?utf-8?B?ZW5zVklJSmY0RHNCdXlrS0dweTcxV2VjRFFtWER5R0ZqS3JCSlNsOC9xNTNn?=
 =?utf-8?B?Q1Z2Vms5WWpvYTRIRTg0Qlp0VjYrSWRtTmhybnhuZUtnUi9rdzdGQjQ1SkVh?=
 =?utf-8?B?emNaZjUxRlRBZlh5UjZtdDBLMk9FelRBMm03Wjl2dGxHbzlQNlFROWpyUmxP?=
 =?utf-8?B?clBmcUZML2gvU212RTFGUU1GQmhXY3p6MTF6YWVuajY4bHozcEg2WG12ckNr?=
 =?utf-8?B?K0J3V3QvZU96Z0htbVNFd3R4WmZzd2o5OEVra1R4VTYrRjdweGpJWE9nNk4y?=
 =?utf-8?B?bEFSNmo3K1FJaG14RXE1bzBGeVYxVzd3MGtlc081THpPSG9GQm12NG83aW9K?=
 =?utf-8?B?eDduaFRUNTF5QnplLzc0Wm9aZjJwK0lZcjBFemNHbW1xUnVpdTM0RjVtbUpV?=
 =?utf-8?B?cm1WTmRnTUlGdDY5c2ROb3U1dVVoZmpOSHJNZTNKM3VWc1RCaEZaZGF6THp3?=
 =?utf-8?B?Smc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c4e4fa3-0ec8-4075-1360-08ddbb312fd8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2025 19:30:08.8328 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kg4Xniv9IU5oZenECdEGbJSggvd0yH6ebrM8MC76f8JdbA/90E8zgMrqgTR+nMn/ft35q9VgjkzwPEmTUyD+zvm/FI/RIiT3S5JN+PwtQu0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6570
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751657443; x=1783193443;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=X+qAfAAu8WSSxBzWQZdgSovafNZD4CxNmht+DDxo2Xs=;
 b=WfAn8FT5/Pq4dpbQxI35UJtfWkhDzEI0ZxU5UW6TdaunFgeuxf4wFbgA
 16qQPLM2tjwtGy3Umj2smgsxGGrW3xw2qwFFElrHPFFUnpum8NNy+uwfO
 hz1dzo5djLZ6cLEgTdQz8KZpJ6vOHHlC+J40gOIcFy+k2vJvE+1WDFoy/
 fMNXx2jAVXYAaPXqLpXImLu9KJ8Wl86BugzZxhtV0CqdvHBTUJkbxh8w1
 ezzr5tbIDi0C24jIgk2ZKuaWKrM1xFL/VUml29n4/qyGRaT1IcNF9HnHg
 1BhFcq0hI8dErO6oW0NOZMQjj7VyYBmmWXZ3XY5/gUnYfzWXgZm8/ipE3
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WfAn8FT5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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

On Thu, Jul 03, 2025 at 09:16:35AM -0700, Jacob Keller wrote:
> 
> 
> On 7/2/2025 11:46 PM, Jaroslav Pulchart wrote:
> >>
> >> On 7/2/2025 2:48 AM, Jaroslav Pulchart wrote:
> >>>>
> >>>> On 6/30/2025 11:48 PM, Jaroslav Pulchart wrote:
> >>>>>> On 6/30/2025 2:56 PM, Jacob Keller wrote:
> >>>>>>> Unfortunately it looks like the fix I mentioned has landed in 6.14, so
> >>>>>>> its not a fix for your issue (since you mentioned 6.14 has failed
> >>>>>>> testing in your system)
> >>>>>>>
> >>>>>>> $ git describe --first-parent --contains --match=v* --exclude=*rc*
> >>>>>>> 743bbd93cf29f653fae0e1416a31f03231689911
> >>>>>>> v6.14~251^2~15^2~2
> >>>>>>>
> >>>>>>> I don't see any other relevant changes since v6.14. I can try to see if
> >>>>>>> I see similar issues with CONFIG_MEM_ALLOC_PROFILING on some test
> >>>>>>> systems here.
> >>>>>>
> >>>>>> On my system I see this at boot after loading the ice module from
> >>>>>>
> >>>>>> $ grep -F "/ice/" /proc/allocinfo | sort -g | tail | numfmt --to=iec>
> >>>>>>       26K      230 drivers/net/ethernet/intel/ice/ice_irq.c:84 [ice]
> >>>>>> func:ice_get_irq_res
> >>>>>>>          48K        2 drivers/net/ethernet/intel/ice/ice_arfs.c:565 [ice] func:ice_init_arfs
> >>>>>>>          57K      226 drivers/net/ethernet/intel/ice/ice_lib.c:397 [ice] func:ice_vsi_alloc_ring_stats
> >>>>>>>          57K      226 drivers/net/ethernet/intel/ice/ice_lib.c:416 [ice] func:ice_vsi_alloc_ring_stats
> >>>>>>>          85K      226 drivers/net/ethernet/intel/ice/ice_lib.c:1398 [ice] func:ice_vsi_alloc_rings
> >>>>>>>         339K      226 drivers/net/ethernet/intel/ice/ice_lib.c:1422 [ice] func:ice_vsi_alloc_rings
> >>>>>>>         678K      226 drivers/net/ethernet/intel/ice/ice_base.c:109 [ice] func:ice_vsi_alloc_q_vector
> >>>>>>>         1.1M      257 drivers/net/ethernet/intel/ice/ice_fwlog.c:40 [ice] func:ice_fwlog_alloc_ring_buffs
> >>>>>>>         7.2M      114 drivers/net/ethernet/intel/ice/ice_txrx.c:493 [ice] func:ice_setup_rx_ring
> >>>>>>>         896M   229264 drivers/net/ethernet/intel/ice/ice_txrx.c:680 [ice] func:ice_alloc_mapped_page
> >>>>>>
> >>>>>> Its about 1GB for the mapped pages. I don't see any increase moment to
> >>>>>> moment. I've started an iperf session to simulate some traffic, and I'll
> >>>>>> leave this running to see if anything changes overnight.
> >>>>>>
> >>>>>> Is there anything else that you can share about the traffic setup or
> >>>>>> otherwise that I could look into?  Your system seems to use ~2.5 x the
> >>>>>> buffer size as mine, but that might just be a smaller number of CPUs.
> >>>>>>
> >>>>>> Hopefully I'll get some more results overnight.
> >>>>>
> >>>>> The traffic is random production workloads from VMs, using standard
> >>>>> Linux or OVS bridges. There is no specific pattern to it. I haven’t
> >>>>> had any luck reproducing (or was not patient enough) this with iperf3
> >>>>> myself. The two active (UP) interfaces are in an LACP bonding setup.
> >>>>> Here are our ethtool settings for the two member ports (em1 and p3p1)
> >>>>>
> >>>>
> >>>> I had iperf3 running overnight and the memory usage for
> >>>> ice_alloc_mapped_pages is constant here. Mine was direct connections
> >>>> without bridge or bonding. From your description I assume there's no XDP
> >>>> happening either.
> >>>
> >>> Yes, no XDP in use.
> >>>
> >>> BTW the allocinfo after 6days uptime:
> >>> # uptime ; sort -g /proc/allocinfo| tail -n 15
> >>>  11:46:44 up 6 days,  2:18,  1 user,  load average: 9.24, 11.33, 15.07
> >>>    102489024   533797 fs/dcache.c:1681 func:__d_alloc
> >>>    106229760    25935 mm/shmem.c:1854 func:shmem_alloc_folio
> >>>    117118192   103097 fs/ext4/super.c:1388 [ext4] func:ext4_alloc_inode
> >>>    134479872    32832 kernel/events/ring_buffer.c:811 func:perf_mmap_alloc_page
> >>>    162783232     7656 mm/slub.c:2452 func:alloc_slab_page
> >>>    189906944    46364 mm/memory.c:1056 func:folio_prealloc
> >>>    499384320   121920 mm/percpu-vm.c:95 func:pcpu_alloc_pages
> >>>    530579456   129536 mm/page_ext.c:271 func:alloc_page_ext
> >>>    625876992    54186 mm/slub.c:2450 func:alloc_slab_page
> >>>    838860800      400 mm/huge_memory.c:1165 func:vma_alloc_anon_folio_pmd
> >>>   1014710272   247732 mm/filemap.c:1978 func:__filemap_get_folio
> >>>   1056710656   257986 mm/memory.c:1054 func:folio_prealloc
> >>>   1279262720      610 mm/khugepaged.c:1084 func:alloc_charge_folio
> >>>   1334530048   325763 mm/readahead.c:186 func:ractl_alloc_folio
> >>>   3341238272   412215 drivers/net/ethernet/intel/ice/ice_txrx.c:681
> >>> [ice] func:ice_alloc_mapped_page
> >>>
> >> I have a suspicion that the issue is related to the updating of
> >> page_count in ice_get_rx_pgcnt(). The i40e driver has a very similar
> >> logic for page reuse but doesn't do this. It also has a counter to track
> >> failure to re-use the Rx pages.
> >>
> >> Commit 11c4aa074d54 ("ice: gather page_count()'s of each frag right
> >> before XDP prog call") changed the logic to update page_count of the Rx
> >> page just prior to the XDP call instead of at the point where we get the
> >> page from ice_get_rx_buf(). I think this change was originally
> >> introduced while we were trying out an experimental refactor of the
> >> hotpath to handle fragments differently, which no longer happens since
> >> 743bbd93cf29 ("ice: put Rx buffers after being done with current
> >> frame"), which ironically was part of this very same series..
> >>
> >> I think this updating of page count is accidentally causing us to
> >> miscount when we could perform page-reuse, and ultimately causes us to
> >> leak the page somehow. I'm still investigating, but I think this might
> >> trigger if somehow the page pgcnt - pagecnt_bias becomes >1, we don't
> >> reuse the page.
> >>
> >> The i40e driver stores the page count in i40e_get_rx_buffer, and I think
> >> our updating it later can somehow get things out-of-sync.
> >>
> >> Do you know if your traffic pattern happens to send fragmented frames? I
> > 
> > Hmm, I check the
> > * node_netstat_Ip_Frag* metrics and they are empty(do-not-exists),
> > * shortly run "tcpdump -n -i any 'ip[6:2] & 0x3fff != 0'" and nothing was found
> > looks to me like there is no fragmentation.
> > 
> 
> Good to rule it out at least.
> 
> >> think iperf doesn't do that, which might be part of whats causing this
> >> issue. I'm going to try to see if I can generate such fragmentation to
> >> confirm. Is your MTU kept at the default ethernet size?
> > 
> > Our MTU size is set to 9000 everywhere.
> > 
> 
> Ok. I am re-trying with MTU 9000 and using some traffic generated by wrk
> now. I do see much larger memory use (~2GB) when using MTU 9000, so that
> tracks with what your system shows. Currently its fluctuating between
> 1.9 and 2G. I'll leave this going for a couple of days while on vacation
> and see if anything pops up.

I was thinking if order-1 pages might do the mess there for some reason
since for 9k mtu we pull them and split into half.

Maybe it would be worth trying out if legacy-rx (which will work on
order-0 pages) doesn't have this issue? but that would require 8k mtu.

> 
> Thanks,
> Jake



