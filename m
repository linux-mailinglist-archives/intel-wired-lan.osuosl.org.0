Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3B595B3F8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2024 13:36:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70E6F81764;
	Thu, 22 Aug 2024 11:36:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KJwlIw2RWSKA; Thu, 22 Aug 2024 11:36:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8BF4980D01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724326579;
	bh=K3Y/VWI38MfSzl+2jETGRrXGkM3EiVFjN48Th4vix70=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QUGLrppDbNpPuhPqkWqENOlkHUMmU38xxV0gXueW0WouVEdaCcO4ZStCT0gX4O20+
	 OjsUsu8KUxfTd9Ot68E8bWShYNlIvVZ+a4v9vfuOrq2+K6kdpqFWCQS+KQzJxXuhu0
	 ag9bcB2rSVlYRrJk5qJ09o0Y2lQ/P0p2qnYQg3YJ+FWYZW0E4QNgocJtvzrN3WW9Kf
	 L+6MzNoci85A7d/Tb6Gau1uN60hkSyGIl1qqJodim8uwgEaBlp3pkSJY5y3+2Npz8M
	 5s+ujDoLmzCGVWqJYrelAbsGN5ck+6YhZxwaDuYFbJ4zNy18bj6zZ6Fdfv0DjwSh6x
	 kjbRKvtiqKa+w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8BF4980D01;
	Thu, 22 Aug 2024 11:36:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 368611BF361
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 11:36:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2E59380C7F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 11:36:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EfWmXP9ITkOT for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2024 11:36:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5A62B80C72
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A62B80C72
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5A62B80C72
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 11:36:16 +0000 (UTC)
X-CSE-ConnectionGUID: UNjc45PJRX+lRCnEhQKGHw==
X-CSE-MsgGUID: DHJoIrsWRm2+3hdQ59XQ2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="22904730"
X-IronPort-AV: E=Sophos;i="6.10,166,1719903600"; d="scan'208";a="22904730"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 04:36:16 -0700
X-CSE-ConnectionGUID: yROcfKYxSnG5Oq1DSp1+HA==
X-CSE-MsgGUID: GtjEFex/SBCgvhEQDlTmUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,166,1719903600"; d="scan'208";a="65756176"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 04:36:15 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 04:36:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 04:36:14 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 04:36:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Tm64KoUgbYRs3k5HmotQ6E9UlTOUwYfUASzjCDGOzzna8Gy/ItbgMCDYTDYTQZ6esXHt6w34dCS3nNYh4nZ0eA9zO68Ovqh58ZU5Gxz4OyrbxYZDgeoGl9t55DfHlyyaqFJgYIBFI0Jc0M03uQqaWtjs0zHJVAj/cXQU67YFSP2zbKK8LvYdBEfaPxBB6y1FtKtjtOTytKS5DQVc/mXwPCoulYGjlA6wfrzrgMwBtGHUTGNA7CdRbucitzD8z4m0+FFcIoJNvlNOTELu/Xbh9KFmH6wGd6xNWjkcTmEmIhcQ4VeaJMhVBhTpWFQD4khnOpemyZWdpjkxfMrZgYv6Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K3Y/VWI38MfSzl+2jETGRrXGkM3EiVFjN48Th4vix70=;
 b=hrocxSBTZGO1DYUrtcwnVJbo3QtahDRTEoJrCt/Qi6oiOohB2qNmgDCmpcgP3PjiTRYbKhiR3tzk//g9qa8YKyTj/zqvw/lKiwxGhvruaNJqhSDh4tULHW3DdU6t/b5Q+F9LP5TdQ/cu7d7ubvGim903FDaPp8dtoWr+QIXcdxw2d1iQ6KF6ynD1asdIfq0KLBuceI1k3lGDnfaOPpcrYEx1bFZ6oJtf1ZObDuCVDWAKHc7EMWuiIBoaD3hfHN9q/lZvoJk3IOmAo9Gy+nJ7BFSoJIsIC+7icQqIFqdBvcBMgfjmIQ5HL1hImHZKnJnAsPUTVXybml37hHMpCdn7Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 LV8PR11MB8583.namprd11.prod.outlook.com (2603:10b6:408:1ec::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Thu, 22 Aug
 2024 11:35:59 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.7897.014; Thu, 22 Aug 2024
 11:35:59 +0000
Date: Thu, 22 Aug 2024 13:35:50 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Message-ID: <ZscillGSDW/NY1LN@boxer>
References: <20240819100606.15383-1-larysa.zaremba@intel.com>
 <20240819100606.15383-7-larysa.zaremba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240819100606.15383-7-larysa.zaremba@intel.com>
X-ClientProxiedBy: MI0P293CA0007.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::10) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|LV8PR11MB8583:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b10f07b-57ae-48b9-2f48-08dcc29e9820
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7416014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?81cCcbUfR1R3C9f76XTIIEG3l/3rp7Mgag5qpDI042Ke7O3V5clQ4FE3qDQI?=
 =?us-ascii?Q?5uXPUGWJ5EQmfAq+9qrOGkeSB4VlpDjDTVcbHf/GtIxD4d3YrhGK/gVofgLh?=
 =?us-ascii?Q?X/+k6O2Vn6APToMTCdFm6emGcCTHwlcy8w1xr0qNdjypItQZcbXXhZNxw2xx?=
 =?us-ascii?Q?WFwJHORHXzrzCxsgsOvBd2KnqQS/prZHnRgYV0kecuYQwXBNJ5zyYXR9RVVV?=
 =?us-ascii?Q?KHYrNbu56ioyaO4u2ORhVyVUDGdgkfWl/Y14UNusEuVL8IVqM1WqUPaNXXld?=
 =?us-ascii?Q?JkvbnlnrQolUm6cVWZ6RbdeO9+79IqGT4BYS4TvzDa5qhIud0fooMSLfDtVn?=
 =?us-ascii?Q?RGeCzT4DnaY/KbQIW/Bvtf2dVO9x8XHfq3MhdThEKHVqrtAHlrwuhSLNVsBr?=
 =?us-ascii?Q?nSfMFSZL1nkZX5Zb15F23gO2lxHZ1+uXHImCSLMmI4ktzAHs1kZ6MFS4npQt?=
 =?us-ascii?Q?oVUXK8XAvjYeDtn9HIS/qN/TvziippGzhJAIrwHoTfP5MToJk2nTZrBGYMyA?=
 =?us-ascii?Q?GsqMblLTqrV/Wb1eSMswWJ2q4G5HVSqfgJaGte3zVeeWempZiII9aWdGIDiI?=
 =?us-ascii?Q?7PrR+dRHXpBZVAhPahB3KyMURgEQoQacJ0HOryHEWl6RU4rgScm2dSly05HT?=
 =?us-ascii?Q?GSsexrfhEOK3i9IE+fu6HDZAdgvPoDykZ2sp/uEA9+LhZVjNeoa9YiQG3bT2?=
 =?us-ascii?Q?BLEn7DBy6BY7MsVmjAz3OEZqVdhamEFLNnTLoYXl4yJgJ8h/zT4jLY1UAqwL?=
 =?us-ascii?Q?JQNSUxxtYl/2vQMN8P3ryO5oGRE7r+fD0yvSpGcDqaIpDZau7tIGyJHnE6Oz?=
 =?us-ascii?Q?L+pFHBtEYHw4SsKJvkA0COM6XHCfM3CemJD4lF/rAS0okWGmjf/FdBUh5+/9?=
 =?us-ascii?Q?QraNHZnWb+MFaVAhxdY4HoNgZyi+ynmNDHzB6jkQTEqCBSYBxoGpjO52WGll?=
 =?us-ascii?Q?fhcun6yMwED9jBi4ZhQbUbNpXDUVjwMFmVpOD2xKCGpUtsPjUcRPsp0qPRve?=
 =?us-ascii?Q?a6Tf7nok28zm5QCjS9gXJ9zsvLRQexQMTMFMdPM6oekB1D7TaLzw6R8qE8Ie?=
 =?us-ascii?Q?ZM73DIrjqxiELCBsrS+iViUHLuF9yWLOCBeV/jFRkOaS3DQ1UTicTegY00Lf?=
 =?us-ascii?Q?mUesFhAathaYHugnjMbU4prPf0RGEzLEMcQVbtf/TzkMqPwKAqiFw+eOxzjU?=
 =?us-ascii?Q?mWuFgn6x3v1OyYj0k+jgTl/y7+706UPRWURww5Z0g1UjBsUSYuMGlW84PSBk?=
 =?us-ascii?Q?9QsRUxkeyx1B9N15Wq/ZOxqso0/fiVX6SL1W0w/hEbowUvELoQejAy0d5qz/?=
 =?us-ascii?Q?Dmgmw6LJ0VkJ6GOwUudWRYA1K/nDdQCCCcblbjoQB3Vt6g=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?E0+hQe0uTygpJleSAsA3g8hcrbL/Kq1qXNXhU2im9mrT8I/ldft4KHHbzWmr?=
 =?us-ascii?Q?OjwgjpLTlHKoJ3DynA1m27wde4CN+4IMzzS1AY2C0VkN4HL1YrhFah9CoGSg?=
 =?us-ascii?Q?ow2NHCp4pfVHMfinrHscbuIVrQhTtlR+EBL6Xejd4HrgIbscpURVlVWjPgaB?=
 =?us-ascii?Q?Iy4cfuqLolqDxkpYNKuJvEOwwBE0JbPPle6LnvezAVB2XdasoyppnrGzccZm?=
 =?us-ascii?Q?T7hs2OvcLA1+C7zdSoEEmz/bt+eLJeLSrPSOTtwHhZRlmxdpcsmpVJiGhBa2?=
 =?us-ascii?Q?n6f/P+cHaqJaJhJIELlOWwMgNyDpzWGcczoRpz7Y020uPF40tPoLgAx64FM8?=
 =?us-ascii?Q?kzFuESBerVKGbEwH9dawIt2ySIIN9m3icdkW4gXWpyJCGA4XDnGGauzfGjuj?=
 =?us-ascii?Q?ZWGIyqw0Ki+SSoT9rC1qQ4rQ14LQaxkQVB/cPV6RrjmYbuMLx2REP9P6Bk7j?=
 =?us-ascii?Q?O3WuGPZAnlnuLhWDffuhBCOy/osMJ6jDuTtDUFupst4S7BasNfNVykEVtdz3?=
 =?us-ascii?Q?+0b2mQWn8MqWRv6LoDC9Nu1wIMNuGHy/6kN68F4o9vK8gDHST6ytwPZ5GcwR?=
 =?us-ascii?Q?hgLK2jEXy+O/QnPYf7i8FoqT8eeUX3alb7S4NAP6YQMtdHuSDZ4Pucff6BXc?=
 =?us-ascii?Q?FtMxkXMnq4XTZus/X4IhhbrW0H4vLhJUwn9tpnuB45pz8711juNXEzpGt+G7?=
 =?us-ascii?Q?XyJaQ78vBiA++awDEIWzcBQrv+gxxIuBSLbxGzQukr6Np1jziEaerlbPYdvH?=
 =?us-ascii?Q?yjFV81oxvzQVRyo2Q78Vz9umL4VO47rmgVKuC8zd9XtAsy9z+V+skIJ2QvS6?=
 =?us-ascii?Q?rI24T29qMcdDmhhb9oeiZLxw+URxN/TEMoa8u4ZB1xzukYCUH/jmGpUYjBhe?=
 =?us-ascii?Q?Ik3GU/wmRH4mNwgUNwhD2ueW67bJRJWlqcrx9VZAGhFCyjgWyCA1ZNQkGNdG?=
 =?us-ascii?Q?YK8M+XAZ/YHP/MHvSzhxXppTBpKAAS3kUet4geHp/gplsSbUi8ThjQ/ihO8x?=
 =?us-ascii?Q?vA/brLEvG05KHM265HuVMPEb6z9FxIfwxkJUPzIexB58jkZzJJUuSF35WOLn?=
 =?us-ascii?Q?DfLDfn1bcZnh36DkmhN6/jt4E7dXNyEedShbfdoCSFEflN23czI+50qVUMIY?=
 =?us-ascii?Q?qSQq20va689JO0F5ckg8pM+IRMat2oo0XekYB3n6fs/Q8RJ7mFsQPDpt56qC?=
 =?us-ascii?Q?DydAjrBgjjyc57/8af5err4YKlaWQv+QBl3TXmfFL7/qNukNKdX2wkF4V0gH?=
 =?us-ascii?Q?x/gSS7eH4tTeJiVNd1M3idcGOiVIdtH6iXvi+gYKH12xOUBo5Ud6sgWOB8qf?=
 =?us-ascii?Q?cXXH4OrNCkQ6mQ+z/3+Dg4qMaFbbUvKZ+yz8Y4JE0L7P5/Tftlcj698AbOmU?=
 =?us-ascii?Q?DdRPrOki3SbeCPi2JINwJiJOrZUgfs8yJ85StnQryscKvCVukqdPtlkpXTXK?=
 =?us-ascii?Q?xYSgtL5ci1Wcl/xEVVaEV9Ti7L0wU+Zv4BGS4XpbD8lcXkPABU44SbmnD/b9?=
 =?us-ascii?Q?d7Rr9Js85GRZvCwLLx+I9B8F+V0lP7IDwkwmLb8CITunDoxPV7JICzUE0tri?=
 =?us-ascii?Q?9yDteh2BGXxYT0xX23IYAfuBs8Jgt5dXJB6v4rvX9zXj4oVXbTurBCK/j2S5?=
 =?us-ascii?Q?HQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b10f07b-57ae-48b9-2f48-08dcc29e9820
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2024 11:35:59.4424 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gOa9Q6zmzyZ5TQbw41YHxxMkE9ru5hdR163z+FBuod4qxwnx8UtIztFZIknRu603VYQwKQN31RYXFhWvJ/n6lqkAJDvivNnNIKzZEpzbTbI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8583
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724326576; x=1755862576;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hD7FHZZSb6QqBTbMjCeuNH6PZTXtGaJ/BxzLCBMZGTg=;
 b=cJjicM03aN1ivmvSZP2xLeNCCOD9YiI6lO47oH7Nxv7T394oaBRZsDad
 Adcu0m68fKibsspQ/WF3/PiSxrzAzybP7jW4OVzV9src0IiiWVVLCRtgM
 Y98ItiIi98jv/jZz7qRwzzMyMo5NZp6fMlT304rcZEXQVyCmyOySw69pd
 DZzyrvRiMcHDYl6cer/mRijfLjfEevUEEbAMa9UFqVL588+tDQZinC8An
 /9QpjtJDQ6C6KfcN7pDBDKRwdKdTeijHmAvI42QzTZe1v1mVSaFo4/loC
 lBrWu0mf6KIkODaIvhEPIfTrePcQDQkW//69nm3HDCCTXfXUaAIZTVfMV
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cJjicM03
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 6/6] ice: do not bring the
 VSI up, if it was down before the XDP setup
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei
 Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com,
 Chandan Kumar Rout <chandanx.rout@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 19, 2024 at 12:05:43PM +0200, Larysa Zaremba wrote:
> After XDP configuration is completed, we bring the interface up
> unconditionally, regardless of its state before the call to .ndo_bpf().
> 
> Preserve the information whether the interface had to be brought down and
> later bring it up only in such case.
> 
> Fixes: efc2214b6047 ("ice: Add support for XDP")
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>

Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index a718763d2370..d3277d5d3bd2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -2984,8 +2984,8 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
>  		   struct netlink_ext_ack *extack)
>  {
>  	unsigned int frame_size = vsi->netdev->mtu + ICE_ETH_PKT_HDR_PAD;
> -	bool if_running = netif_running(vsi->netdev);
>  	int ret = 0, xdp_ring_err = 0;
> +	bool if_running;
>  
>  	if (prog && !prog->aux->xdp_has_frags) {
>  		if (frame_size > ice_max_xdp_frame_size(vsi)) {
> @@ -3002,8 +3002,11 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
>  		return 0;
>  	}
>  
> +	if_running = netif_running(vsi->netdev) &&
> +		     !test_and_set_bit(ICE_VSI_DOWN, vsi->state);
> +
>  	/* need to stop netdev while setting up the program for Rx rings */
> -	if (if_running && !test_and_set_bit(ICE_VSI_DOWN, vsi->state)) {
> +	if (if_running) {
>  		ret = ice_down(vsi);
>  		if (ret) {
>  			NL_SET_ERR_MSG_MOD(extack, "Preparing device for XDP attach failed");
> -- 
> 2.43.0
> 
