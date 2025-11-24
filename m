Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FD4C7FD6C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 11:20:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64956607F7;
	Mon, 24 Nov 2025 10:20:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id chO--m_VHnyN; Mon, 24 Nov 2025 10:20:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B90DA607ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763979625;
	bh=J4rQR14SSDXh06WMwBkY6A8ECVmUDVtRYusXbceeCyE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0mvTDs1rW34lNu1JKCNzbsWHTazYkhr0Fh9CGCUcvodrulqAnhI78UpFCOcu3bMMI
	 NQDKPdcHX1ebTAJcqfKRlh39TWSfamN62c2nEHpIQ9RXjyJKf/t2RFBaba+zjHjUGJ
	 gpbmSD5dy9IlIU/tbL+qH2TmObOs6IMzzXb1zHtmjUXNj18/YZd5vu7JP1Y8ZtqvXc
	 iP22LpZJ9/WlnnhPTWxqZaulRDuNO1ro8A2QFaOm7iWrbodIu00l8LGhmdqHLbYkE2
	 v4ClgEJTa+hDad0ry1p7LbYdN8huOt5ikzBRxdI1mDHf8E0l2dlGGFQlwYpTZiOdF/
	 hcIFyGquHAkfw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B90DA607ED;
	Mon, 24 Nov 2025 10:20:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 283EB158
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 10:20:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0E6E84031F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 10:20:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kbj15koIARbt for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 10:20:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 281A34000B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 281A34000B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 281A34000B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 10:20:22 +0000 (UTC)
X-CSE-ConnectionGUID: uvq3zkYhSYa/YdPjabgMgQ==
X-CSE-MsgGUID: Fve+DBuDRn6kGHxfr70x6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11622"; a="65671207"
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="65671207"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 02:20:22 -0800
X-CSE-ConnectionGUID: y9fzN2pgRpG4ChKD1xIvoQ==
X-CSE-MsgGUID: oc+ESZbbSWG5JyI0h8nFGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="192172757"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 02:20:21 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 24 Nov 2025 02:20:21 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 24 Nov 2025 02:20:21 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.19) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 24 Nov 2025 02:20:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bXGfk/tBtqBEwXwJHHm3L/+Y+FBQ/5tPWfg9Fpz2cBFoHQbPPS3Ns4o2tKDmqD2QYgn1+ZlTWEio2vZxkxrZjNJI9aPHl6Xoy+OilxA+GfQTB60kRtUhbT4sB2d8vzk6P+6QVEcQgUn1n1GHArETNMuPaIwAKn3CpbFboeEXrgHIGQoBU8MC62M47/Qn7qRThV903ogi9eujuxkKe4T3bBmpglEzOl12ORzehIPzShiU1PHo+DML/Om+xkRxA4D2SI5h7UxeBL/+2xeBq8wRKoPB7aBnPdZphEgkEb6i3U3p1aLE2N79bNjYW1SeKHnY2vXTdJFLljeuu46TA7PnUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J4rQR14SSDXh06WMwBkY6A8ECVmUDVtRYusXbceeCyE=;
 b=ny3c8ghmE7+m9kGFsls47fX41SmH8Cl00yqic9wP9hYLw/avsUfaYZX+hC6XH6rQN+XS6w2ASYHQZm9g/QWyVfHe0HemLAer+AGpaUkPM7iVDu00Tk4pLKLm0mya8Dpgr74bHZMCy0/3tF6NVKKuXH/QjmVjn77w8sHREmqCXIGosn4XOur/JAGR/nW5786/KH+T0g9Kq0rKDZkEUWNeQaw7tCx7+tiOYa3IYYFc6kji6x4rjG93ZK7NhxvpeL3vu9M1zG1YQwi2GbuIwg0+UC9P3HQug/ZQIN+/5zSd5vEmNuhbSRxpmn9WCBrSX+m393g4UuyTAZ7NEqCdYbLsUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8308.namprd11.prod.outlook.com (2603:10b6:930:b9::19)
 by LV3PR11MB8676.namprd11.prod.outlook.com (2603:10b6:408:20f::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Mon, 24 Nov
 2025 10:20:19 +0000
Received: from CYYPR11MB8308.namprd11.prod.outlook.com
 ([fe80::68e1:d6c5:d11d:4858]) by CYYPR11MB8308.namprd11.prod.outlook.com
 ([fe80::68e1:d6c5:d11d:4858%7]) with mapi id 15.20.9343.016; Mon, 24 Nov 2025
 10:20:19 +0000
Message-ID: <ef41487b-ecfb-4b25-83a2-c97d6aa3c813@intel.com>
Date: Mon, 24 Nov 2025 11:20:11 +0100
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "michal.swiatkowski@linux.intel.com"
 <michal.swiatkowski@linux.intel.com>
References: <20251120162813.37942-1-jakub.slepecki@intel.com>
 <20251120162813.37942-5-jakub.slepecki@intel.com>
 <IA3PR11MB89860CA2EBCCEDDF0C9E05D9E5D5A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: Jakub Slepecki <jakub.slepecki@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <IA3PR11MB89860CA2EBCCEDDF0C9E05D9E5D5A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0902CA0032.eurprd09.prod.outlook.com
 (2603:10a6:802:1::21) To CYYPR11MB8308.namprd11.prod.outlook.com
 (2603:10b6:930:b9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8308:EE_|LV3PR11MB8676:EE_
X-MS-Office365-Filtering-Correlation-Id: 381c152f-99fe-4550-dbef-08de2b43115d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T1EzblUvLy8yOHUvYmpqaC9nVlZuRmJoVGdYTkVmNXlNSkpxWnFxeGxhdmpm?=
 =?utf-8?B?WjZIdE84cm44clVRMkd5aXNrMHd0bEJvM05vbzZ5aFhuWndXRGI5OVRiSXBv?=
 =?utf-8?B?NVRUMW96djhLOG50aTRES0NwSVppLzBkdHIvYXp5WVlHRyt1cXhmZ1hzNGV5?=
 =?utf-8?B?bTNENi9BNmE5aDhVZ3dDY0xzclNwYzEvN2F6UTN3am1aTG5DdDZLZVZrZWV0?=
 =?utf-8?B?WFVTbkpleDU2VWVUNStzNkZYL0IwcXlqTFF5MkthNm5WVllzVlJwajBCaS80?=
 =?utf-8?B?bWlyVVNvdmNMUE96d3FyMHNHaXN3cmpZV1pTMnB2OTF6MGt2Z3ZBT1M3bnRB?=
 =?utf-8?B?dXdPY0gzOFU3anlpOW8xbFVrU3ZCZ0ZCZDM0ZHo0eVg3Nll1Y2RNMFpQNysv?=
 =?utf-8?B?M0lBR3VWdUJETlA3ZXUvNjVYZmZzU3hXc2JSd3ZIelpGd0dueEEwbVJ5RFFX?=
 =?utf-8?B?TVBMRkRpRzl4UDRFWjk5T2dnSUZxaDBYa2NmZ0l2c2tFaVF0SnBhR2VVUWFo?=
 =?utf-8?B?aS9zbkUyT1J1bngxc00xSUNhWTd1RG1hZ2FXTUJXSVhTam9SZDZxQXhUcVBx?=
 =?utf-8?B?cUFJdVpkY1lna1ZVTWp5dmtZbzVFNXoxeExKOXYrT1htenJlbnI2MlBVNWM4?=
 =?utf-8?B?TVJpR0ZvdXJZUmFvQW83KzJqWWhIQTJ3Y05EZ2tWZi9ubmwwc3AyUzE1Ty9z?=
 =?utf-8?B?S09xbXFUQmVCNlVMNzA0OEZLOVA2RHBHd3kxNjZvZHF2UmgxODBzbzUwRHE0?=
 =?utf-8?B?anY2NXE1V0NVR21VOUlLOWhEM1krOHNBVTU4ZU5UZ2ZNZVBZSnowWDlUek92?=
 =?utf-8?B?N1ZDckhBSHlBSUExRTRsb3R4cnJleG9ldmZXbnY3NmdIeXZoRkR0ejhBZGpC?=
 =?utf-8?B?ZTFYUm8xaTQrblByNWdFNFVrckd4NE9acmlzWnNGSnZJQUVaZWlraUQ3aUtD?=
 =?utf-8?B?OXNJS2ZoTTFkMUVTeWxickhDaW5GMmxyNm9RUlRHTmZqRlRKZVlPNnY1dUp1?=
 =?utf-8?B?OTlSbFE3U1Z4VEtySEp2OFFSM1F2WEg5UnhYd29RTWtvM2VXQVYzelZJNTBY?=
 =?utf-8?B?ZjJCdnR6d2I2TkhFdHIxTDY2SXFjc2ZCNHBqdUtrTlNlTllYRjRzb2ZSLzU4?=
 =?utf-8?B?bFN1a09nTmlkanF0UWZPT3ltRHVoQVFMQWUyd3lWaEY5ellJVHQ3ODNOaGs3?=
 =?utf-8?B?SytUY3hMRk5UNHBvNHN5MG8wTFVja3hkYVBUZlhRZzRER0dtZGxoTzV6Qjls?=
 =?utf-8?B?ajNoK2xzQ1Z4VnU2Q2pCa3MyQjNHQ0lrSndCTHRWU2lvcnFMV1dXSDkrRjBy?=
 =?utf-8?B?Y2pJbkl0T2o4dlRFNkJma1dkejFBSHVFMWUzZlpwMWlhVmZORmxwcmh3d1VB?=
 =?utf-8?B?MERVMVo4dkpGVlB2YmgzbnV0cGtrMEtOWmI1eUpZZC9KRlpwcWE5WE5EUlZx?=
 =?utf-8?B?M2VDbzZJS09nVFZnenNJNWcxb3JJRy9BQ1ZkdG9nVG94WE5ZVVM2WWJpaHBL?=
 =?utf-8?B?aENqM3ZaZDJtQkN0QmlvL29CMDdzN0VHc2NDS3pSYjUzYmNkeHo2dEVqclg2?=
 =?utf-8?B?bHlyVkFFaGtoQUJvdWZSdXRXQ3hZMkw1TjRFbkx2T1oxeHRtNTFxcjBhcTVJ?=
 =?utf-8?B?S21EWmNGbzRZdzBIaGpoZEwrL202Vlp5WkkzdkZoWGt4ZW5LeGZtMmhqa2M3?=
 =?utf-8?B?VENDWGtQRUNYTGFhWVhWT1NvU3VGSHZPNEJ4eDFoNE1ZTW9FdktlZnA4WVhn?=
 =?utf-8?B?Yi9aQ1NkZWI5SGprUUJuNnlVUHlZeXRtYytqeFhpMEFOUmtlUytUNnVsYUVY?=
 =?utf-8?B?Rjl0QUF6Qld6RmdrR0d0YUZqaFlCUzIrczVJT3VUVG92eFg2Y1k3SVlJZjNU?=
 =?utf-8?B?SkFRYmROVzc5THNiaytLV1F3QSs5T2E0UnpYbVkwR3RpakVDWkoveDJzSnFH?=
 =?utf-8?Q?gLdE4uKZgkF8HM5jBB6wI8On1YKxkBxn?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8308.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZEVwZUlJSlN3YVdlYjVxNzQ3NEtXR1NCOFhnL3I0dmMzT0d3K0EzRjBPSE5B?=
 =?utf-8?B?TmhYVGM4c2s4cDhWNHVwdEJZTklxakhoYWVKZU5nRXgxa0dOK1RjSlBvOWV6?=
 =?utf-8?B?Uks3ZWlIVTAxMGplaXg2TjJOVTZZMDZjcnlTL0F1aDkwRm8yM0NSL3VwZnJ5?=
 =?utf-8?B?RzhUV09xdWxhU0FabGVLQkZJNURlWVJjYU14OEUxRnZ6YThXaDN2RUJyWVFH?=
 =?utf-8?B?Tlg3SG1aVVloVUczcnlBeXpDNFY1NmlXQ3BTWStlTUdLQUpSQjBqbXgrZnpS?=
 =?utf-8?B?Qm5nRzdRZGNHb1dIcUZlbjNOYVpaNldDSDB5SERNTGowaDQyVVR4RUJpZUJq?=
 =?utf-8?B?Q2svUXFzL1RNbGRWd3BNQWdrTGxtTldlZ3AvWlljd0tFcUNreW9FZ0FPbm1E?=
 =?utf-8?B?dFc3RUp5SlZ0bDlaZytLdXZWM2NnbWptMit5VG1OOGkwajBJTWp4cE9ieWFW?=
 =?utf-8?B?cU1GcElWeWxKZFNzdG1QaWR4bXFDUmhaZysyTWw0dGJHa3BQZDFEdVBJY21L?=
 =?utf-8?B?RXBTb3NKd1FuZjBEUVNLS1NhUlhhOFV2dENrZFJWSTllVHBpYk9RTWtNb0Fo?=
 =?utf-8?B?SWYwaDVKcU1JYVhudDdaN09pQm11amkrNXNPSE1GQm12aXFVWlVPN0M3Z0ll?=
 =?utf-8?B?Kyt4Si9KMTVpTndTU2dnbU9NMmtSNDdCS2duRG1CY2hncUZYNElieWpEcmJM?=
 =?utf-8?B?dFBjbUNiekMwQmVYRm52S2VEZ0xUZnQ4WHVrM3k0ZzlUTW03eTVVZVpuREJm?=
 =?utf-8?B?VHhrTWg2aFBOWklvZEVqS2dDaDFibjRGRVRqRG04dmtMeU9OWkJQUGFCbGNT?=
 =?utf-8?B?bWpxbk9HRkxLb2tHU1F2aStRajAvSXRhSk9mak14UUs4cFpZbWlON2NpS0kv?=
 =?utf-8?B?b09IdGU5THVLaWJrZms4THhjRnpzKzB6MUs5OGZvNUZjbGJWQ3Y5aWY2NHov?=
 =?utf-8?B?SXcyYUFnNWhJUXZYeFMwZGhFUmNSZmxuNUhHRjA4dU40bWVMTEtUZEk1MzlR?=
 =?utf-8?B?c1J3c0dsR3ZIbkxHTjJqVitYWmRwOTM4RCtJbFV2UUFhZ3lYSGtYcmdDb1NJ?=
 =?utf-8?B?OHd3a3pWTEZJYWp5d2ZMeWRQbUlrSURTWDJ1b2dlZ0RQZExwekdZbWdVSXI5?=
 =?utf-8?B?MlpWa3FUVVRmOXlhdnNsWFVPQjJld1lzMEtyS2pLaSs0aDV2Q0xGTGFFWHFh?=
 =?utf-8?B?KzJ0USt5SnplWWFoVVIyMnVwTU5YQzFBS0NpRHRjQUpEUG93RDFFU0h4eEdu?=
 =?utf-8?B?NjJwMkhFSzhmU2djR1RBSU1wdWcxQ25Hc3hRcnppbEdkTU43WGZ1VjdheGJN?=
 =?utf-8?B?VjU2L1htVUE1eUYvaE4vR0lBWWlScEh0UG90R1UrK0lxLzRpWlBhT1JGVWxm?=
 =?utf-8?B?NGYwQUxFZS8xWHR3S0E4TnE1VGtpREFtNWd2eGtXcTc5MzJybkx1cEFuWmNu?=
 =?utf-8?B?TlFKNUpzK2xpdi9JMzU0S3N2MjFTMytlamQ4cmE2QVY0MDBjRDNvVm1RQXM1?=
 =?utf-8?B?eHh2MStwQVhqVGFxdWluTmlIRWw3M3VZMFo3Vzc0bXFaY0VNK2JUbUVjdWFZ?=
 =?utf-8?B?QUI3b2tzeWVRbC9ldmtjcmJWUUMzMXl6cXVnUVhsQ0JhTDU1cTlvU3JncHdu?=
 =?utf-8?B?TmxBeE1SZnM2TS9CUDFWYTNBYUxqRVdBVC9xeDJnNnllWGtlNzArUm1QNGdy?=
 =?utf-8?B?cXFzSmJVbzg1eUEzOWRDbVh4S0tqcnZZWk0vUXZRUjhTd2lQYzRORmFQWXNh?=
 =?utf-8?B?V0VmVHREb1Q3VUlXc1Q4WVkrYjBNQmdNZ1o1UlpmY1pFZ1RPQW5ObFowSC9n?=
 =?utf-8?B?dmx5ZjRiNG9UNDJMZ0V6aUM1TE9UWXVqdnczelhCcEdpR1RvNFYzRUdzQVZC?=
 =?utf-8?B?NU1DbUpjekg5V2FTSS9pS293dGJ3SlNyZFVPSHZ5REIrMk02UEhhTDhGcjU2?=
 =?utf-8?B?TEU5K2EyMXRRVGRtRDdTbStoUTlrN2tJMU5OTzdDTG1IWDZqbU4zMjZSUzh5?=
 =?utf-8?B?SHozb08zVXF6SXB4MlJ3NzVITUNBWGlXOXZxcjRaOG4yN1Y2dW13U1ltb2Jn?=
 =?utf-8?B?dTZ1bWt6SFhGWHlrN2FkR3BJWEdmTUV1V0lyajNsVEhCeVlmUEh0UENlclN0?=
 =?utf-8?B?Q2tzVmlhbmxCSE1LMld1cCtyOEtHY05hRFlCK2d1b0Erakl6YnJHblBueXcx?=
 =?utf-8?B?enc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 381c152f-99fe-4550-dbef-08de2b43115d
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8308.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2025 10:20:19.0092 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Tkes2rbeqs9hcAZEpXzium73/eIewgIRp1FJeedVUCHV3PiwrlaoS3gHQUFDTXINYfCI7sHUwTnTZR0p3OldmHYnqcAJo7CyRdsZWT14nQE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8676
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763979623; x=1795515623;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jrSokwE7eCvFC7U3yUbwcJxcvxWbzt4JojbSl3pg13Q=;
 b=V+aHWytUmImwWv+jOEoDynrA5mjcNLrFw/GD1flur6DMbLlBbzBAAAcZ
 fBMNXgP00g4dqyb1nItGTLeoIBYdBTEJh3yRNt+4jeHWY6LT5hrs71U79
 c0SA2g6B/DwNo43CR7yA8FxyAWWeDXvinCYOJ356Ro75cXf3+pw6gNSyj
 3+zECEjyvqz7RzeEBc59SOjjFJD/GHaMlObkpA2QM2mmTbzHkips6Qygv
 ggKXT3jpGRkYginkEUvtXBbh4Z6wwEIeKuhiLDQsaHVmLsDKnGZaeHmAM
 467VocS4+gqpH9FfnPPrhHCcpHLV5ton7dLETnJ57+vtsCb+EXRJssOxq
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=V+aHWytU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/8] ice: allow overriding
 lan_en, lb_en in switch
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

On 2025-11-21 10:21, Loktionov, Aleksandr wrote:
>> -----Original Message-----
>> diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c
>> b/drivers/net/ethernet/intel/ice/ice_switch.c
>> index 04e5d653efce..7b63588948fd 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_switch.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_switch.c
>> @@ -2538,8 +2538,9 @@ int ice_get_initial_sw_cfg(struct ice_hw *hw)
>>    */
>>   static void ice_fill_sw_info(struct ice_hw *hw, struct ice_fltr_info
>> *fi)  {
>> -	fi->lb_en = false;
>> -	fi->lan_en = false;
>> +	bool lan_en = false;
>> +	bool lb_en = false;
>> +
>>   	if ((fi->flag & ICE_FLTR_TX) &&
>>   	    (fi->fltr_act == ICE_FWD_TO_VSI ||
>>   	     fi->fltr_act == ICE_FWD_TO_VSI_LIST || @@ -2549,7 +2550,7
>> @@ static void ice_fill_sw_info(struct ice_hw *hw, struct
>> ice_fltr_info *fi)
>>   		 * packets to the internal switch that will be dropped.
>>   		 */
>>   		if (fi->lkup_type != ICE_SW_LKUP_VLAN)
>> -			fi->lb_en = true;
>> +			lb_en = true;
>>
>>   		/* Set lan_en to TRUE if
>>   		 * 1. The switch is a VEB AND
>> @@ -2578,14 +2579,18 @@ static void ice_fill_sw_info(struct ice_hw
>> *hw, struct ice_fltr_info *fi)
>>   			     !is_unicast_ether_addr(fi-
>>> l_data.mac.mac_addr)) ||
>>   			    (fi->lkup_type == ICE_SW_LKUP_MAC_VLAN &&
>>   			     !is_unicast_ether_addr(fi-
>>> l_data.mac.mac_addr)))
>> -				fi->lan_en = true;
>> +				lan_en = true;
>>   		} else {
>> -			fi->lan_en = true;
>> +			lan_en = true;
>>   		}
>>   	}
>>
>>   	if (fi->flag & ICE_FLTR_TX_ONLY)
>> -		fi->lan_en = false;
>> +		lan_en = false;
>> +	if (!(fi->lb_en & ICE_FLTR_INFO_LB_LAN_FORCE_MASK))
>> +		fi->lb_en = lb_en;
>> +	if (!(fi->lan_en & ICE_FLTR_INFO_LB_LAN_FORCE_MASK))
>> +		fi->lan_en = lan_en;
> For me it looks strange.
> What type the fi->lb_en has?
> fi->lb_en declared as bool, and you assign fi->lan_en from bool.
> But you check condition by fi->lan_en & ICE_FLTR_INFO_LB_LAN_FORCE_MASK ?

I agree this can look strange.  lb_en and lan_en are both u8 in
ice_switch.h:/^struct ice_fltr_info/ and we assign them from bool.
Before, even though we had the same implicit conversion bool -> u8 we
did not use either of u8s to hold anything else.

> It rases questions if fi->lan_en a bool why use fi->lan_en & ICE_FLTR_INFO_LB_LAN_FORCE_MASK then?
> And if fi->lan_en is a bitmask why not use FIELD_GET(ICE_FLTR_INFO_LB_LAN_FORCE_MASK, fi->lan_en) and
> why not something like:
> 
> if (!FIELD_GET(ICE_FLTR_INFO_LB_LAN_FORCE_MASK, fi->lan_en))
>      FIELD_MODIFY(ICE_FLTR_INFO_LB_LAN_VALUE_MASK, &fi->lan_en, lan_en);
> 
> It could preserve unrelated bits (like FORCE) and make the code resilient to future changes in bit positions?

The latter.  Original intention, one of, was to avoid implying this
can be extended, because it should not: for better customization we
have "advanced" rules, and "simple" rules shouldn't try to chase them.
Instead, porting everything to "advanced" rules would be more reasonable.
I make an exception here, because cost of any other option is way higher.

That being said, I don't see any reason to not use
FIELD_{GET,PREP,MODIFY}.  I will modify this accordingly across the
series.

Thanks!

>>   }
>>
>>   /**
