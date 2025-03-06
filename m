Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3826DA5441B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Mar 2025 08:59:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7FECA80A61;
	Thu,  6 Mar 2025 07:59:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id irXW1I9FB0ml; Thu,  6 Mar 2025 07:59:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4F93C80A7C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741247968;
	bh=rlfaEEdCyv8KuhdWOCdvcHLgtVlFgvFEL43YnMhfUVo=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=z9l0rL1O8tRPTX6QoNXy1Nz/jaXAaYv/bDa/wqh793dXXDQrmXXcxNoj4Iizhdqvf
	 e3Xrrb8a+wBmbu30y3cnMDLX91a9Qg1ijs8LYD4TWNBmFleVHmEZfQWzFJq609ozFS
	 dE8osZcMtufo9KeHxLAze8gAn0fAZAm7JlKodUJBvvO839OUMk+ZJ8RclEx6hO0xal
	 sI3WfTrU47azbZvMimaEkdu+R+Lh49G7UCvj+m3T4UhURnVfKlOD2I/gsQ10oiMD2X
	 4T9VOR0EkBtjbXZj7ZD7YhEme9a9mc3+G/lPfzNbt//tMtNuPgOGUCbRiyoo2571AP
	 VNFC2ZYKATR/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F93C80A7C;
	Thu,  6 Mar 2025 07:59:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1CEE4E2E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 07:59:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 00ACA8087D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 07:59:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id On3BdqezuXcs for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Mar 2025 07:59:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A5405808A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A5405808A3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A5405808A3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 07:59:25 +0000 (UTC)
X-CSE-ConnectionGUID: RKYda9HETzSyqzTnjhlnKQ==
X-CSE-MsgGUID: xEZ1kunyRXyLd1wscu+N8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42131541"
X-IronPort-AV: E=Sophos;i="6.14,225,1736841600"; d="scan'208";a="42131541"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 23:59:24 -0800
X-CSE-ConnectionGUID: MmlG4v/eRKyUwyIz4O/HBg==
X-CSE-MsgGUID: I6esQn72SJOocsOXrEv/SA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,225,1736841600"; d="scan'208";a="149723150"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 23:59:24 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Wed, 5 Mar 2025 23:59:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 5 Mar 2025 23:59:23 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Mar 2025 23:59:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qO0HyWQ92ZQ/ZW8IuHNLyZsOmeshIczCydRffoU1gELDQApAGd/OHxMWpcM4GcRaUaRIQjny8W+nQyRaXnGFI9OlLV8Pu03ezIfu5Y2oWigTiPp32jwjIPimKsoDhyGN8s2Edm7X3SOlQ6s2nfN5op71meYJvyLFCHJQCrxxl+aV7aF5ex2s2X/MDZpviWia7F7jLx3A2z73yJgZkZErSyEY3Bqtu23w8rtR/Z5M4j3NTr1HZ0sDQdDNXo8QHMn5H2GS4uv+o11uGABswhUfIXhFek3aeSIcDM6JpEwQZDtZpZd1CQVPMjD5GLuxojEjX7thTkw5XSGZ+RB8k7EiPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rlfaEEdCyv8KuhdWOCdvcHLgtVlFgvFEL43YnMhfUVo=;
 b=dv+wSykmezuYXvwtXgiMJ0ymGE149t0x8nHqPAOdJkM6oOtWSvlw7h4tDe1Y7zVr6hZSpySpkzrbAqHsp/c62LpBGXLyfqvIYoG6peOh+d059MHKqmWLEjdkFcTY697PpVQ9KYtagveD3gJocKwqJpgwhFWm6B5FvAY2nNf5jGe7uv7o3TZeoUuu+WOpfRZ46QYtraX3S2Mpvk93hWL2sfRwAA3FOm54p+RTjlsMRkpuanezlQ/W8dnalmy06H6RDcznTu1KANhrIb0O07IFaev5ja05oc5E2OBc0Osdx4IrL2SpPhqlzFkh3qgApHTChW4MvlVnKAKR8RqazS8VJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH7PR11MB8454.namprd11.prod.outlook.com (2603:10b6:510:30c::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Thu, 6 Mar
 2025 07:59:21 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%4]) with mapi id 15.20.8511.017; Thu, 6 Mar 2025
 07:59:20 +0000
Message-ID: <5cfd4c17-71a8-4bd8-972b-31fc0634f518@intel.com>
Date: Thu, 6 Mar 2025 08:59:16 +0100
User-Agent: Mozilla Thunderbird
To: Kyungwook Boo <bookyungwook@gmail.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
References: <55acc5dc-8d5a-45bc-a59c-9304071e4579@gmail.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <55acc5dc-8d5a-45bc-a59c-9304071e4579@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0102CA0059.eurprd01.prod.exchangelabs.com
 (2603:10a6:803::36) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH7PR11MB8454:EE_
X-MS-Office365-Filtering-Correlation-Id: dfce496e-bc7e-4d04-7f5b-08dd5c84cd3f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c29aOEhKM0xoZzE3QnpVU0pyYzdaZXJGeENUOTlnL0wwcUVXai8yNWxQelVz?=
 =?utf-8?B?U25MWHRYelh1SFNHeit2a0w0a3BWVkUxRVFxcDlMWEJWeE0vNStwZUl6Q3NM?=
 =?utf-8?B?RE5mSVBxckk2dThZb0p4d1psNlI2ZWlJZFFMalVwVnJQaGswNGcyOVpRS3hQ?=
 =?utf-8?B?c0F2M0tQSjRVN05rYU83bWkrbE0xREF2TCtndzNBa1BYL0cvcGRvdkttaU9I?=
 =?utf-8?B?d0lhSWJLMzFrd2IxZFNEdUkxazlvMk9aWmxnWmpqdEh2UXFwREZDTjJUTUg0?=
 =?utf-8?B?QWtLRHJRekFhUWJrMnlVRXJ5c1NwTlVGbG5RNC9PN2dxbUlxRmlhUzVUb1BU?=
 =?utf-8?B?TkpyeWM0TG1BU1NWZXU0RmdCaU53RjRTWm1HSlAxWFBLVGt1Ymp3anBVMHRH?=
 =?utf-8?B?VXRGL1FleGNreEcremRDN3k2aWFhTVVrVjFXT0pNb3JCRnZOcjFyeDdpS1FV?=
 =?utf-8?B?N1VMR3RrYVUrM0JPTVA2MDVoa1ZEKzgzQ1pJWmVqVkxSSG5RSVluV1FtRlA3?=
 =?utf-8?B?bHBONnVUU2xrZnAxTW1QaTNoK3ZKLzBZaE5kQXkwODA5aUFJNkhUTEdnRHJD?=
 =?utf-8?B?SVp6dXllL0U1TGlubHpacXUzV3dDQnVBQXZPZHhQdkFDZjJZZzNvWWlhejRp?=
 =?utf-8?B?NUlkQUQ0SFZhT2FONmpneURFODZiWU9kanVkSWY0aFd6eTBPWWhMVEV1dzB2?=
 =?utf-8?B?aVNheHhSdzNOYUxFdjFzYm5JbGVrZElPdUdsMjNjeXorMVF6V2RuUkhGM1cy?=
 =?utf-8?B?cDltV01yYTFEK3BwZG94Nytic3BJSU9vS1QxU3dzZ2tuNlV3b0dXWlJOQitD?=
 =?utf-8?B?WjUzSE9NZHVDYUhMQ3NVeFNWNGVUcVJpcGFGM2VDZVpNNVdKK2FGMnJ4bk1G?=
 =?utf-8?B?Skw4WW93K0xBbWRVeDF6S1htazFpVmtjRWlYYjFaYXFNcVQ5UUZvbUNjaUdy?=
 =?utf-8?B?bjhkZm0xTDVmeVlEU05ZSGRGR2NTUjFIQzBBNWlJVkF2UzExc2VGWDdrU2Vn?=
 =?utf-8?B?R3FSbW1LWGxsWkhuRTFmSVhzZFIxVDZUcnZXOEd2bE03Z0tzUTNIanllOGhB?=
 =?utf-8?B?NHBsdVh5aVVRd2NIZ2I3Uk5NR2VQYTFBemlLWlA3ZGVRMzltVWo1djROTmtC?=
 =?utf-8?B?NzYwR0hWODBBNGVSTWE4d3VaUEhOOENZSElSL2pXaWxYYkpWS256cHIwc3Bs?=
 =?utf-8?B?QjBaTGg4QTdlbzJKaHN4dFJicGZqY2Q0SUs2TmxJR3FzVzFoUjhjbmZwOEZ5?=
 =?utf-8?B?OGNBdTBrdjdwOGZsTmMyR3lZOXg0b0Y0UFlUazFZbW1YdDVBSGFxdGg5MEx4?=
 =?utf-8?B?R1RlVVorampqd0wydkwwbUlCTE1lcnV2SklXQUt5S3ZBbk9NVFVnV01Bamh0?=
 =?utf-8?B?VzB0L2hVUjFMQ0krcmg3Y25aL1MwQUhWK1l3VTVPNnF3NnFhTzdFQWVkdnJW?=
 =?utf-8?B?eW52MHJYa1BVUTNBQkpwMG54Z2FwUHordFJRYU14SlJORHd2RnVjTDVZL2dY?=
 =?utf-8?B?L0FqMkFpclM3ZHR6SzRWcC9YMCtqY3E3MkQ2WlpCNVhuVzd0SEQ1c3Z3dWRB?=
 =?utf-8?B?eXQzN3Z4aVR2RUVQMjZuM29ZNWlreEFWWVlqLzREVllsZmF6R1ZrTFE0VjQ5?=
 =?utf-8?B?dTBxcUsrOU45WXhXZVdQMjNaWkI5cHVYMWlzdWtNZlVjZmN2Vkt5N3NULzJj?=
 =?utf-8?B?eHVKazVMV3RaWm1URzFuZ1FCTW4xQ1pESGxQMzdlVGt4M01idzFzZlZrNDJN?=
 =?utf-8?B?NGEvT0hucjRCUlBuOWg1OTc1Yk16KzdDb0FwY1hIUi9wS25MK3NTczF3eFQ4?=
 =?utf-8?B?RWlML1MvR2JTRjdhLzJ5Zz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHd1ZjhyVTRlcTNqaFg5SkQ3MERYN0pWeDdvNktlZGJnMFI2Y05xb21LSXpW?=
 =?utf-8?B?Mk04WVhQSHoxbE9lc2tQenZBSWVkUzlpKzhzUDVzLzUxVjJEVFNYTldPTkxY?=
 =?utf-8?B?bTFXZEYrSUFUajBCZTFUa1h4QUV3aEgwY3Z2K0pxbGdUMlg5akx4T2syamR1?=
 =?utf-8?B?czc0cEdISTBSeGE5bEU4TFlqbjFtbmwxVWNIVWtUUjdNTllTWE5EWUtYU2ZH?=
 =?utf-8?B?bVBabjl0N2p0c25MdlJtYjZ0elBqMUYvU0dmd3pnSmNyUGsxK1hDb3ZLeFJT?=
 =?utf-8?B?WUJPbStNR1c2amZjQ252T1RYaXBmdFZVUVM0UDRtazZRVDdBWTNDNG94SnBN?=
 =?utf-8?B?RElkYVRFcFY5RFFrWStOa3A5Ukl0VlUwa1MydkswR3dyQ2hYUTFSbVU1WjVC?=
 =?utf-8?B?b2I3aUgrSHdKNmpTekcyK3U1QXBTV0VpL3MvbFJqbDBGbGZ4aG54YW16b0Rv?=
 =?utf-8?B?NzA1YTBlUjk0VG5iNVZJcmwwd3owTXRzN2ljQWFIaHVKaktWcDhjWHRjRXMx?=
 =?utf-8?B?eXVGVVlsYWc2MzY1c281WTg2MHVYbjJDOFRDeHk2S2hCclIzUlB2WW9kV1Nr?=
 =?utf-8?B?VU9qWE9ER3dINzlhOGFDNklScjdRVW9BT0pjaSs4MDhyL3Z6TXFHamdLRGJt?=
 =?utf-8?B?aGNZKzM5N0ZibkZ5WHpiNTI4NEVBY1RJcVFlemRRZ0FYeEdoYzByYnQ3WGpL?=
 =?utf-8?B?NlI0UUtBN1RCN0t6T1p6WVlpUkpQYXJGWUtXRzVuTW14SC84V3hkWGdXYUN2?=
 =?utf-8?B?MGFScmx3Y3Q3bXNwS044dm1qQUtLODJsc2lWVFJ3UWtwTUN6bjJQU2VNalVl?=
 =?utf-8?B?dmcrL2JpQ1Z0SitNeGNqWjlyYnk2UGVsYkZETVJnV2N6UjgvdHRXTjBicTNG?=
 =?utf-8?B?OFY0bU40RkZJbkdnazdGNU5yVTNPWnYreVgwM2xzdEprZ3dtV1QrYzFnci9U?=
 =?utf-8?B?RlpGZVVqZHkyREdpT0pjaUtDT0x1MWwvYXgzU3daZ2dWdjJBMWEvQ0k5ZEd3?=
 =?utf-8?B?R1F1eGcvMDRKMjBFRjEzSjBCWkFIQ2R5SDU0NzVyTnVvdVl4UUlIYkNSTHZE?=
 =?utf-8?B?cHorVldQNDJjanBQNmtMS0E2YTRmcXBQb2tlak9adUVJWktSeVRycE1Ra1pz?=
 =?utf-8?B?V3RkNnlzZEJweHpldGxManBzOFR5VnhNRFovd3VITzdvNnNEZXZ3ZTdSQlM5?=
 =?utf-8?B?QnlnZ0dkM3pzY255NG5XSk9PNlpIajNETHdZeVNhNnZvWnFyY0pFU2VjRnhW?=
 =?utf-8?B?Ri9leFVpYjhjNFRFRU83NkVIdmZWajRUQ1pOVHZOTTVSb09CVDluYVdyK1hR?=
 =?utf-8?B?VVV6TFB3QWs1MjBYVlpGdGxGOFovR2tTakR2UjE5ZU5lOXhHRGZMOC9jRXQx?=
 =?utf-8?B?MzFoUndUR25aZEx1ZTdpWmp0V3J1U1pxUXd5dW9HaVdRNkVJMTZ5R2dTU1VH?=
 =?utf-8?B?VE9ja1VZZ2NGalE0dVR2bGpJdlYvMUhna3FDUUFGTnl1YTY3amhhRVN2SmVl?=
 =?utf-8?B?VkZpZHN1cE8zWUNiUVVkeW5PVVlmeGVUR3Fxd3h5ZENIODNaVXNpY3VTRHlz?=
 =?utf-8?B?SEdSMEtBZEpGcGZmNGt6V3NaV1NmeHF5ZGN5Nkw2ZVc5dHpuZkRvQmdBTHBU?=
 =?utf-8?B?c0crek9ORStKUjlHa1dJSTYvQlJkSnhaR0E1VWxNUDZvOVB1NnB6dFUybXhy?=
 =?utf-8?B?aUJjN2FobmQ5L2dqcEUwYkkxZnh3cHFoLzd0UWZhRjljNVhMZUtKMTVVM2dC?=
 =?utf-8?B?Ry85VDNpTjk2Y3c5ZlVFWGhCU3B0K0N0ZUkyUFM2NEJ6S2tNODI4Z1N1S1Rl?=
 =?utf-8?B?OEtwbU5MR01JNW9kdTZGbjhjZVR3QVlsck50TUJTTm0veStGaWF5ZjR1amd2?=
 =?utf-8?B?MFphUUpKajNqR21tTUtqdC84cDZpL2U3YURYSEhMNmNzSmJXWU9HRzlPRW5q?=
 =?utf-8?B?eHZNejdBbTV3ODNIK0I1ZnRFSzZESXB4TTN5S1E0SzFVZlBSbHlNYTFZRFpn?=
 =?utf-8?B?VFg1bFVaMEVTK0FRNy9SR0h2eHpCWkk0d0xzblBDVjhIMTJ5d2VzWnNkSlJZ?=
 =?utf-8?B?UHpoUFI1RStKY2RIZVhrblJXQUZIU2dzOTQyMVVKMlZvSUMrYndtRk5uVjda?=
 =?utf-8?B?WXFwWjVsQ3B5L0RoalVaNTR5cFhvNG1MK0ZuZ3U4eVhvSExBOE54RXRVcm43?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dfce496e-bc7e-4d04-7f5b-08dd5c84cd3f
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2025 07:59:20.7093 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VpxZXDrbpqLopZLysXw2DqRaJY2pmNfct3DDvZt83tyyvgaft30o/6on0uW4ihgn+sE0xbztvJwyQOnkNnrtb9/F5LD4Gh6ekBmzKGhZ9QM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8454
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741247965; x=1772783965;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MVXdh07T4oybHm6utY+1LFaQ+x4yjCfchdr5yj4n1vw=;
 b=DKlxgjm7b8Sa1eu7kLdNTukh5/BKSB4UHWlYwx2ANEZ7/Z+KLG33ZKgZ
 dq5jL641KRM4CsY5Na3UEGUvdl8uKPDY7jhUi4f8FO9bFeKU3TmboMOX2
 eADrp8Dtu2IGD/sT8AT09Sw0LTMsyfqJO/1m0vXSgJ/txjBwpRIFyTi8m
 CXmpqDgbJ18tt949yiLRiKqi5Fh50mm31p+SAj0y62jMGPvGRl/zxdpqf
 TdT1nR1NCAEG4p6EabCahkrbZT0f16shJsAhsGd9MnIq3K2gtM9A/HrBH
 BARAwiah26XnW5qISCgwVFD/Vn1PaXtXcujKN5qmhmlyuwMNS9v7EmF+f
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DKlxgjm7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] i40e: fix MMIO write access to an
 invalid page in i40e_clear_hw
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

On 3/6/25 06:25, Kyungwook Boo wrote:
> In i40e_clear_hw(), when the device sends a specific input(e.g., 0),
> an integer underflow in the num_{pf,vf}_int variables can occur,
> leading to MMIO write access to an invalid page.
> 
> To fix this, we change the type of the unsigned integer variables
> num_{pf,vf}_int to signed integers. Additionally, in the for-loop where the
> integer underflow occurs, we also change the type of the loop variable i to
> a signed integer.
> 
> Signed-off-by: Kyungwook Boo <bookyungwook@gmail.com>
> Signed-off-by: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>

when Alex said "make sure I signed too" he meant:
"make sure the variable @i is signed too", not the Sign-off ;)

(please wait 24h for the next submission, and also put "iwl-next" after
the "PATCH" word)

> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

I didn't signed that either

> Link: https://lore.kernel.org/lkml/ffc91764-1142-4ba2-91b6-8c773f6f7095@gmail.com/T/
> ---
>   drivers/net/ethernet/intel/i40e/i40e_common.c | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
> index 370b4bddee44..9a73cb94dc5e 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_common.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
> @@ -817,8 +817,8 @@ int i40e_pf_reset(struct i40e_hw *hw)
>   void i40e_clear_hw(struct i40e_hw *hw)
>   {
>   	u32 num_queues, base_queue;
> -	u32 num_pf_int;
> -	u32 num_vf_int;
> +	s32 num_pf_int;
> +	s32 num_vf_int;
>   	u32 num_vfs;
>   	u32 i, j;

It's fine to move the declaration of @i into the for loop, but
you have to remove it here, otherwise it's shadowing, which we
avoid.

>   	u32 val;
> @@ -848,18 +848,18 @@ void i40e_clear_hw(struct i40e_hw *hw)
>   	/* stop all the interrupts */
>   	wr32(hw, I40E_PFINT_ICR0_ENA, 0);
>   	val = 0x3 << I40E_PFINT_DYN_CTLN_ITR_INDX_SHIFT;
> -	for (i = 0; i < num_pf_int - 2; i++)
> +	for (s32 i = 0; i < num_pf_int - 2; i++)
>   		wr32(hw, I40E_PFINT_DYN_CTLN(i), val);
>   
>   	/* Set the FIRSTQ_INDX field to 0x7FF in PFINT_LNKLSTx */
>   	val = eol << I40E_PFINT_LNKLST0_FIRSTQ_INDX_SHIFT;
>   	wr32(hw, I40E_PFINT_LNKLST0, val);
> -	for (i = 0; i < num_pf_int - 2; i++)
> +	for (s32 i = 0; i < num_pf_int - 2; i++)
>   		wr32(hw, I40E_PFINT_LNKLSTN(i), val);
>   	val = eol << I40E_VPINT_LNKLST0_FIRSTQ_INDX_SHIFT;
>   	for (i = 0; i < num_vfs; i++)
>   		wr32(hw, I40E_VPINT_LNKLST0(i), val);
> -	for (i = 0; i < num_vf_int - 2; i++)
> +	for (s32 i = 0; i < num_vf_int - 2; i++)
>   		wr32(hw, I40E_VPINT_LNKLSTN(i), val);
>   
>   	/* warn the HW of the coming Tx disables */

