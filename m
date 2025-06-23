Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B6150AE5816
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 01:37:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C93140CC4;
	Mon, 23 Jun 2025 23:37:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DyFqbpqxaHxg; Mon, 23 Jun 2025 23:37:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E8FD240C56
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750721836;
	bh=GFdUA6Z41jFqwNHaKyoUbPQ2N34hlKLWUReX+2L6xtA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JA6jO2nyfx8QvwBYASnq9XeptvAg244v31uwKdyFbj1VUDoWausXGIYHRxFonCaBY
	 lsvrV6XbsXAR48I2ioRHwo4pUM2SrOwNrMYKNaN4IRHvifu8A2tM+ZY3mdFLNVVC3N
	 +PWQlUQtj40GY4RCkMVUMHI8BuicFnDBqhACGg1ZJLov69M+b1FD05V2IXYMP3NQTE
	 XVqjYRgazZGFylTJaJl9NeYnpFrDL82MN3sYTLS2f+ETK2/1C1As8flY+jeosblgCd
	 UXdLas6zw2WfAlh7Y8nMctmiayzdMnb37UT0uGXR24QPze5MM3E4Z05GXZihnPI6/f
	 MzgzKlt0Zwnig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E8FD240C56;
	Mon, 23 Jun 2025 23:37:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 55467154
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 23:37:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3B83082165
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 23:37:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id flnQrgNN3t30 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jun 2025 23:37:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 700D182051
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 700D182051
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 700D182051
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 23:37:13 +0000 (UTC)
X-CSE-ConnectionGUID: I+MAWAVPSRarKhhs36HgGw==
X-CSE-MsgGUID: trtZRxx0QySvGD6iOvjthQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="52883175"
X-IronPort-AV: E=Sophos;i="6.16,260,1744095600"; d="scan'208";a="52883175"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 16:37:13 -0700
X-CSE-ConnectionGUID: jq+T7shQQyCbixmYmOCLbQ==
X-CSE-MsgGUID: BdQxOHFiR+KjCTPZNsS8sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,260,1744095600"; d="scan'208";a="182779606"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 16:37:12 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 23 Jun 2025 16:37:12 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 23 Jun 2025 16:37:12 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.53)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 23 Jun 2025 16:37:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PzSjwbvsEEAcT8KjH11WVRQPnyzKlim6e6AE0rtmrtHpzBQZE3W4wnyflQYz8X3a+bxQt1iFGr1DmuHO6IYBt0Owd4OFh/UYR4SJSf4+/NALYcq8/mXuVErWeEnwJJ3T51vSzHGyCUYavssMQU5/6c39H8zC+xh8rICzlS/lVHyp9P29WkJJzXQi8eX7lr7HgXNOxG8CJ8QcFv7+bh8TnvkCnZw4odIH4hDn5h9wkBoZPcLi359iy05chSXFYhvxO3EaFgeYzqzpn0iIz1wcZuKv3FVdHE38/5atyr7OmeMtfIYX3ZH3dwvahCAd4pJK5Q7mBVNr1BWpHOvQEjvWTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GFdUA6Z41jFqwNHaKyoUbPQ2N34hlKLWUReX+2L6xtA=;
 b=qTSVj/Sz65Xm/rcYWU/8Yp5BBV5mUrg9CKo31gWBkt1TShDSzNNAfQyTKFKRASkb21H82c+Xbq/T9s+4wym0Qq/mpZ2CFFRKhpD+D38Xai2p8nEc7e5CWS1jAYkxMJxsh3JRk6S6yi6ylE4oUxSHPxTMEcDAlMfVgf544gAl4czCDU0B0HJGUPkW6DiR5cej6sZfvfLXtgVjOOMfusR2mRkbt8OTIkQ8RHSVH8pss/29bvxfxvBINPJpo898zX1miMh92eP20tBjfcrDKeUhuwBaL3NjhZ551oUVEWWD8pLU9IBkpjTEmbOGdNTvFlyen7MqXio8JBDjiZE3HVVqCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MN0PR11MB6034.namprd11.prod.outlook.com (2603:10b6:208:375::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.28; Mon, 23 Jun
 2025 23:37:08 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.8857.026; Mon, 23 Jun 2025
 23:37:08 +0000
Message-ID: <47a78150-711a-4aff-b18c-f77131131acf@intel.com>
Date: Mon, 23 Jun 2025 16:37:06 -0700
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
CC: <netdev@vger.kernel.org>, Madhu Chittim <madhu.chittim@intel.com>, "Yahui
 Cao" <yahui.cao@intel.com>, Anthony Nguyen <anthony.l.nguyen@intel.com>,
 "Intel Wired LAN" <intel-wired-lan@lists.osuosl.org>
References: <20250618-e810-live-migration-jk-migration-prep-v1-0-72a37485453e@intel.com>
 <7960d4ec-ef0d-41b5-9589-c59c7e49128e@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <7960d4ec-ef0d-41b5-9589-c59c7e49128e@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0267.namprd04.prod.outlook.com
 (2603:10b6:303:88::32) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MN0PR11MB6034:EE_
X-MS-Office365-Filtering-Correlation-Id: eaf20884-ccc0-4305-2746-08ddb2aede78
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OE4velpSVnBScnF4dG5NeUNHcE9QNUw1QVpQalZ6ZlVKOTNjSU5ka3NLOUww?=
 =?utf-8?B?akhoMUxMSzJqRVh5eHRXT3h3YlVHUlBRVlVjQlZlbFJIVGlHaDlYWDJzSlA3?=
 =?utf-8?B?QngzUmNqcFAxZFlUK3lvNlo3UDlEK1ZTMzRIZE5US0xmTGszallpRU5wZEgx?=
 =?utf-8?B?NFJRay82ckt1ckFvWW14QmtmUWZQQWRPaW13QUE1bUs3NlhlWk5iODRFMVhY?=
 =?utf-8?B?M2pFZS94M1VyRTJ4amo4S3BjUTNmci9HQi8zODdQQkVFZVAvRE1sOGQ3bHE5?=
 =?utf-8?B?dzUxS0oxWW80NmNLYkx6TEpYWE8yMXJOcDZMek55VlFPeEIzTThVeEJMZW9W?=
 =?utf-8?B?LzRoTldiaklYOFJEVnVFRHdIUk16SGZjQ0t1RzdqR0pUNXhMaEpmS2l1U2p0?=
 =?utf-8?B?UVZoTU1rcUlMK2NvczZ3amtQZGRVVzhqQzE2SUkzQnNGMkVvUWNHVFNUamMz?=
 =?utf-8?B?Z0s0M1Rwb2UvdDNnUERnQUNyZ0FacEtLYlg0WHp0cU1ZcCtxQjliWndONDhh?=
 =?utf-8?B?L2lEUnMxNG9PaGZZVlgrZWJJdndlZVpFdldwVmJ3enk2RThGVnkyR0UyZ0Jh?=
 =?utf-8?B?M21ZT3RVZFZPa2xBTSttZmZTWnAwakZNam1SbDd1UTY5UUhxSWNMYW43bEpm?=
 =?utf-8?B?ZHBQcnZsSG5ua3hQd2dRUlRld2lUWkcvbW5xVjlqVlVRakJPc1RHZXM4VU9L?=
 =?utf-8?B?UzN6ODZETk5Xd2lWeGwvSE1HenBwajFuRExodkt6cWVGbUhLbUlzZ0pUSG40?=
 =?utf-8?B?b2ZLWkNEcUtzRWpJV2cya0djd0ZFeVRKRElkU3VyV0RRN2RXYzZJWmo0dnlp?=
 =?utf-8?B?bklOVWM5T3ZlRFlYR3NmcEs3bzZMTDVyTkFxakthVkR0RUtSTE85V1NUY1dF?=
 =?utf-8?B?aW1xUWlOeDNOY0YzbzliMnBZTXFjNEVyOGh2U2ErbUVtN1JQcXliMHVIOXRx?=
 =?utf-8?B?dXdjZEhVYjlPejRxRzk5amtQNEY3V1Fzb28wdmlLcGNwN0ZEUC92SjZzcFlv?=
 =?utf-8?B?MzZVeG1rTlU1Ui9PN0tiY3hZM1AzYW0yQzZnZk54a3RFN0pIRnVtR3RhakRz?=
 =?utf-8?B?eVg4bnhhdWFPVnk3UVEvdWdrOC8xNUNrazB5QzVsQy82c3dLamRKZXN4VTNo?=
 =?utf-8?B?aXdQbFRod1lRdG96ZHBqYVEvV1lSR0xnMEl4dXI2bnJYNTJFQkw3SXBRZjA3?=
 =?utf-8?B?RUdnSFJJbHRTMUh0RTJ0ZE4yMHBHYi9aVmxGdzY2eU13THgxUitoNUlsS2ZQ?=
 =?utf-8?B?UFUvcjAyLzYyaVVaTkMxaUFmdUVvRmlUMnpIYnd4ZC9EYXp0TjBaZmRpekFS?=
 =?utf-8?B?Z05jNDJ0Mmw4a1dlcUZhdUhWM1FJK1d1U1hMUlRYQmpSL3FQWEZyMmRuVCtw?=
 =?utf-8?B?UFRKM0loZ1ljcWJJckRwbEk3UUlrZXl4Q0tMZ1VWVDBzRjlPbmUxMmVQdWlZ?=
 =?utf-8?B?VTYwWTFMNitFUi9HYlFmZlFUaWl5VUVtUjRneTBncjlJQ0hmUkZPMmZJNXlv?=
 =?utf-8?B?blVHUE1pcE9OVHpINytRcEdZdzNnMEZERWFOWkJPWFpiQlo4MHI3SXU2VGhT?=
 =?utf-8?B?U2xDLzRRVm14a240Mnp3K2dLSktKNTZKa0JNWW1iU3F6UFF6V3VOOU9JS05q?=
 =?utf-8?B?NGtoaHhhNmRuWWNaNDREZ291RWUyT0ZzcDBBdWxDRW1QVnh5SUZnNXlIQTlx?=
 =?utf-8?B?ZThsbnZyS0tlVjBVa0NCejNIZnU0VHo0bE85Yk5DVi9Lc1lTODV5ekxjSVl2?=
 =?utf-8?B?azMxa1N1RG9Ld1NMcTVRRjVtQ3ZsOFJobGpoa3FqRjUrTW1oc0NiU0RmU0hm?=
 =?utf-8?B?cjZkekd6ajI5anFuVVBGajZJWVBnUVlmVUhCSEJHMEVBNW9UZi9UK1JCVlVY?=
 =?utf-8?B?WXBnMVplcGJoMkNTQmpDbC84Qm1Zc25hcmMydTYwcTM3Rmh6N1NCNjBVdmdI?=
 =?utf-8?Q?hFxmouU0NSk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UW0zNjB4QVFMVnRacEQ1NHZxRjUyWWE3dVh3bklGNFpuWmFPR0FoMEN0bnl6?=
 =?utf-8?B?c09MNXJEZllPRnU3b1lDeFUxZmFsWVlqN0dtOXQ0cTlYcnhSYzA1N05rUEU1?=
 =?utf-8?B?NkpieVY4UUJFRVl4anBEdzVIaDBSbmw4MlUramlUYzl0QlJJZVlXaUhxTzlw?=
 =?utf-8?B?TjM1a0VzYSt2YTk1Y0NJUnlMdEYyeGRMdlpQK3hzV0l0NzlBZUhSQ202SnhV?=
 =?utf-8?B?RVFxb0dNeHpTdlJ6REJ4aVNaazNObzNIclBiN0xZK09rNkR1dG1mbVlFYlF3?=
 =?utf-8?B?MUF5V0dkM1NhNlhrcnpWdWJLNUE1elpRa3BSU2hPMVhUSmsrTDZhM3JmYjlN?=
 =?utf-8?B?YklRWVVJR2E2ZE85c2grd1dMaDNVVmVBQzJmNHVpYXF5RFRvVUc4dVNaejhE?=
 =?utf-8?B?OHF4WlNjSDRXRUovY0dkcm5SN1ByZnh4eGRPWlZHb2hOWW1zTGhPRnNnaUpT?=
 =?utf-8?B?dCtray9VSDhoMWgzTjFOSEVSMmEreGlnZExGNDExcWs2bTAzeEM0L0t2d2tD?=
 =?utf-8?B?Qld4alBSeG9vYUc3V3dSeEJMazdXMWM3djJQNlMvR2phUnFudk9aRW1NeWpV?=
 =?utf-8?B?QVJLSVV0L09ON0NzTW1LTXkxVTIyMVVIWGRheDUxcGp6Y2hJRk92eU5uclRJ?=
 =?utf-8?B?MGNGSVY4MUpURFFzVjhHWjdFbnRLVnZMcXZ6NjIzd2pqLzZ0cEFnYXc0eUdl?=
 =?utf-8?B?VnU4L3h1RmtadHZuUlkxMzl0TE9na0p1T2VmOTR6Z2xSRGNPQW5UUWVlSEJB?=
 =?utf-8?B?cHNES2xMQk1HS2tCWW4zMGZtUkhEQTV5UmRGOTYxYnhzVWFkUERWSVU3Q09a?=
 =?utf-8?B?SWV5Mlhqb1lrOU0yNzFhQW43SjZTbDFTRXlRWnRmUUFFOHRlS0hQbzNXdmNu?=
 =?utf-8?B?Q2ttRGZrNzgwaXRCRXV4MWZLUy9melBrRU43ZW4vWUpYWDArL29ucmZWUnlZ?=
 =?utf-8?B?TzV5TU16Rm55M0x4R1NBUnpxZWlueDNzNGlsUkFGSlJCWWhNQ01ZK3p0NnFD?=
 =?utf-8?B?SWRVR2l3YkwvVVdpTXVrbFA2TjRRRkJobFFjdE9NVFJHNFltNzFXbWRzM1dD?=
 =?utf-8?B?dlNsczdndWFWcmdua1lFcDhXNktTc1BvWnd1dTM1OVowYllIT1dGbEtnTUFm?=
 =?utf-8?B?YXdWbjIxNmF0TjgyL1lEY3g0VkJhc2RGNkxrbi9yazUyU2c4MFU0NFM5Tk16?=
 =?utf-8?B?cndncldNeVVLUTA3ZlYvRS8xaEdhakZnc1poTzI3b0ltTHo4Umpzd0s2Zis5?=
 =?utf-8?B?RGhCa0ZFUVBpdlhKZzRLTXNMczBiUXd1YTRaTDhwSnk5TjlSQ1BkV1lSY2x2?=
 =?utf-8?B?UUhkRTdtOG5lWnlmN3JuZFRrUGQ1YWFpQmhmTE0wZS9aZE1rVkladFc3ZFlo?=
 =?utf-8?B?T091clBWMEtSVW82WVhoVEo5Sy9ESUZjdjZQTXBaLzRmalBmMk9vTllpUEI4?=
 =?utf-8?B?RXlhRytPc0hJelFTRXdYUm9XTGhWL3BBeVdBU25iNnZsVDB2Q2lHVW9Pa09R?=
 =?utf-8?B?QXY4Ym90cDJQbXBZMnR4SGlhWGd0ZWl2R28yNVozZXRLNmVDZTJxTzBvd2Z1?=
 =?utf-8?B?ZHV2YWtoaW9aZmlVY1RKTm4vZ0p0VmdDeHpjK2lTSDdvdkdHS1NYQUpYMEw4?=
 =?utf-8?B?M0RvZDJ3ajNVWDJWWUVmMmhLRkl0UVphcnVobGtmRExWLytsY2VFM2FmbGl1?=
 =?utf-8?B?RHNuTUxBMWd1VmFsUHpocC80dmJ4TzBPYkNWeWVyZUppWmJzRXZ4VytadHRE?=
 =?utf-8?B?T2MwOG9MK0Y5ZmhVYzl5TVB2azRyckVhTWk2MTlBTi9XUnVXTEk3b0Vjbk00?=
 =?utf-8?B?QjVnNElmTWMvek1TKy9jSHE5WFZqNXl5RGdOaDRRQ1NScUJXVUJTcG5wQ2do?=
 =?utf-8?B?VlJwcCs0ZW1NSU8vZkVuSlB3NktUMVhHeHlMNThMRkZ1U1pKbk5zU1IyZHdF?=
 =?utf-8?B?V1BaVlA3Y3FCVkVqY214c1ZCNlo1WWlabVZSSXhXTTVPNEdsWVpzVEVnc1FX?=
 =?utf-8?B?UHRlUFNZck9iQjhqTVFTenpOK0VVZGcyeWNqRW9kWEtuQnV4bnI5Z2k0L1lv?=
 =?utf-8?B?ZlcwMVJNN0xubHJ3anBFK0I3czdmN1N3WXBEOSs5OHczTTJ5ZHIzVW1acUM5?=
 =?utf-8?B?TVIzR0tkRkNZd2ZFM0VyYWFpODdvOFl1cUowMlBUNU02Q2UrY3hyaHZRZXFx?=
 =?utf-8?B?Qnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eaf20884-ccc0-4305-2746-08ddb2aede78
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2025 23:37:08.4469 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UNjif0gXkZLHOJf7SfyHcYFwdNb7QwhR9xZqtwBdXqONrMF6bTBmzeomiJp6AbeaLtSAHh9tJKPtJfGhIqiFKr9ZaUxCKOxPaquzMMtY4T8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6034
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750721834; x=1782257834;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cadpytlH4IIVeGDJFMdJ5GEbK19GaoEjNcgcmbipJHA=;
 b=m1Ytb9U0TAbFrzHSpZLyLr9i8sqfoyfoC0HzXAt6B10VGsr+H9LFzp+L
 pf6/YTlzSv0+6QJQ+odwn8OmZ7ScgUV3EepIig4FXk6YC+BJAo9bQ5NQk
 oIx0LH2zApN6n9x2so/mNmn0G/FelMqZS8dGgd22kmyn+3LN3GYWgo5Cx
 YI7e7R/6xfIyYaUCLZK9N3U95BQoRCMtYwYXu0B0ZX0cs147JFqbHrJvN
 2xW9YFeSKG4bvaZSSO+JHKBy/45vgwuJTna166wZOHDNkZUxiR4fI2TG0
 Xzwk3d3IPHsgM/kWSQom/ELZWjM2D2VH72lkPVxM1ola8Cs8s5TpafGNW
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=m1Ytb9U0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/8] ice: cleanups and
 preparation for live migration
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



On 6/23/2025 1:36 AM, Przemek Kitszel wrote:
> On 6/19/25 00:24, Jacob Keller wrote:
>> Various cleanups and preparation to the ice driver code for supporting
>> SR-IOV live migration.
>>
>> The logic for unpacking Rx queue context data is added. This is the inverse
>> of the existing packing logic. Thanks to <linux/packing.h> this is trivial
>> to add.
>>
>> Code to enable both reading and writing the Tx queue context for a queue
>> over a shared hardware register interface is added. Thanks to ice_adapter,
>> this is locked across all PFs that need to use it, preventing concurrency
>> issues with multiple PFs.
>>
>> The RSS hash configuration requested by a VF is cached within the VF
>> structure. This will be used to track and restore the same configuration
>> during migration load.
>>
>> ice_sriov_set_msix_vec_count() is updated to use pci_iov_vf_id() instead of
>> open-coding a worse equivalent, and checks to avoid rebuilding MSI-X if the
>> current request is for the existing amount of vectors.
>>
>> A new ice_get_vf_by_dev() helper function is added to simplify accessing a
>> VF from its PCI device structure. This will be used more heavily within the
>> live migration code itself.
>>
>> REVIEW NOTES:
>>
>> This is the first eight patches of my full series to support live
>> migration. The full series (based on net-next) is available at [1] for
>> early preview if you want to see the changes in context.
>>
>> Some of these changes are not "used" until the live migration patches
>> themselves. However, I felt they were sufficiently large and review-able on
>> their own. Additionally, if I keep them included within the live migration
>> series it is 15 patches which is at the limit of acceptable size for
>> netdev. I'd prefer to merge these cleanups first in order to reduce the
>> burden of review for the whole feature.
> 
> I find the split to be very good decision, here we have the easy bits,
> with the complex things left to separate series (instead reviewers
> facing them after reading eight and already tired ;))
> 
> for the series:
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 

Yep, thats part of why I wanted to split. Thanks for reviewing.

Regards,
Jake
