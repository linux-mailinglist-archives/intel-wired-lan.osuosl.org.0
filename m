Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F172A9F0054
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Dec 2024 00:42:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 891EE606EC;
	Thu, 12 Dec 2024 23:42:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zy0Fe4ZAkaqA; Thu, 12 Dec 2024 23:42:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E563606FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734046976;
	bh=dT7pchPITRGfEJM+63jP4Ruzkz7czE2/0YbONQ1ATn4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Pg8yTPKp283dZryzMZn95gGhI/uKKuS2TkSkVERzTHEnATwMxL1pf7PTYWaZu9guU
	 ZMa5nvFSD6Q2Pq0eQwsmhd5jlxtSjj3YHjroemFhbnGcFaV8wbpFalN6RGISasMojL
	 wYyVhLn19hTcOrOct1wNGHUa684nk4IvTgnTbzUkgpdtOZxuI6Hvy2T4PCgFYS1Uv2
	 OI5OrWbdFOXnareiiMmGx/81YG1IfkixSmFJcdwSQ61+nDgvUNcVIfvD1irl1tig1Y
	 VtXInRuUwUPSQYf/iT3bp8kllWB2ryoDEYY62+dHG01r7qhqG8xGTRqHXRHg8C+qXU
	 JOeVafeCaoD9g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E563606FF;
	Thu, 12 Dec 2024 23:42:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7566775
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 23:42:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 621D060703
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 23:42:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i5iBpRZBnCn2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Dec 2024 23:42:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5DEF1606E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DEF1606E2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5DEF1606E2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2024 23:42:52 +0000 (UTC)
X-CSE-ConnectionGUID: XkphT6MTQfWYlYI12z/VGA==
X-CSE-MsgGUID: VaP0av5wQTyO2ngSx9dQyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11278"; a="45873135"
X-IronPort-AV: E=Sophos;i="6.12,214,1728975600"; d="scan'208";a="45873135"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 15:42:53 -0800
X-CSE-ConnectionGUID: P3yGsB92RWiyCGUztawXbQ==
X-CSE-MsgGUID: CWo5OvyiS4eqlYn2oKST7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,230,1728975600"; d="scan'208";a="101404881"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Dec 2024 15:42:52 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 12 Dec 2024 15:42:52 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 12 Dec 2024 15:42:52 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Dec 2024 15:42:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=okDeEyNDyS28R8iul4HkvS+7pJTh/UI+mQKQbfz6GR7iq5No75eT3NHxe1PzSBgED+298MMGFc8nFFdvQcd0WQ/sCxM/bHV2JpUxyXxjBaRD3DFFQDS5/OreSr9LQyzhD1HYQJS0mlZ8PRn3u0kUt6Fj3BXOGdAwIXmeIZwTDnHc7ZCeApaEWZzwCtYa5kyn52Qlwfumth9lh1NFlhiyvBRyhnOicUIE/0l0BwSUIlTVOX1di7ZQn3/dzOS+XpsLwj6Nr1kdX824hejHrWDdGR2F7O6DFgr/ja8TdgJR5xhiHOmdxVj5mFgpWtZX7RHpe3Y/n03hN0Zsfakpcksmeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dT7pchPITRGfEJM+63jP4Ruzkz7czE2/0YbONQ1ATn4=;
 b=Xp/dlqOBN+s+azEmcTGUvsrygftPheLasXtEtfeUIDrC5qIJX4Z+3olysxfP3s7S957geJCz5fpnP5IgusOznZL+WRbu7t0KZSmyrJu+zJz1rHRR6zpycnmfSF1s1gnr07Qyd9fbOyFPfAQf4yJjwiIenl0TytgVNSUeXS7BnMWU4xsMRsJM068o2qdl67PiPubM3vf3qxX9OtxAfACeMolnQPtAQpXJ60LkT9eYH8rupL4bfQ2KNzXmlmMiil6fcdPEKC4REMbd88Y4R4HyY/AYnKhWYJyFBcSyZh/rlT6HFuWvV26cEstdTGuVi8VHoq2mSZp1xlzqnwbOnO9CQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SA2PR11MB5050.namprd11.prod.outlook.com (2603:10b6:806:fb::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.17; Thu, 12 Dec
 2024 23:42:15 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%7]) with mapi id 15.20.8251.015; Thu, 12 Dec 2024
 23:42:15 +0000
Message-ID: <ebbdeb3e-91bf-45e9-a806-d92fcaba7a04@intel.com>
Date: Thu, 12 Dec 2024 15:42:12 -0800
User-Agent: Mozilla Thunderbird
To: Anton Nadezhdin <anton.nadezhdin@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <przemyslaw.kitszel@intel.com>,
 <richardcochran@gmail.com>
References: <20241210142333.320515-1-anton.nadezhdin@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20241210142333.320515-1-anton.nadezhdin@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY3PR04CA0004.namprd04.prod.outlook.com
 (2603:10b6:a03:217::9) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SA2PR11MB5050:EE_
X-MS-Office365-Filtering-Correlation-Id: bbbc431a-1f29-435f-7efb-08dd1b069b66
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d1lJWnBwRFdPU2d2Y3hmejN0MFZJVFlsMTQzMnNrdUJvSXZQMjd0Q1BBY0tM?=
 =?utf-8?B?UmNUZ3EzSFRsTldQMXJsYlozU3VaL3h0ay9GYXl1Mi9ab1pidjBlcHhRaEFC?=
 =?utf-8?B?N1o2YUtmVTM1U3d1WEpBVzlyMVZYRzJrcG1jb2d2NzBmSi92ZDRRUnlqSWdr?=
 =?utf-8?B?eXFsbHRuRDdnM3BSemZwajdQT1VvWU91UTNmNDAvL0lDZStRd2xEclBnSUZr?=
 =?utf-8?B?QkVkNXExQ3pmbnZtNmZ6d2RnY1g0bjIzWXBkYXJxQm5SdnZ3bDR6Tit1ZE5G?=
 =?utf-8?B?anJZM1lPWE1xR0pDNC9QZkp0L0wwV0FzSjdiYUlSem92cndCTXVHa3E0MjZR?=
 =?utf-8?B?K2ZFWGUxbDRJcGRXTnV5bUtlR3pLeWhkbzc3VnM4TGc5Qzg3YkhyWjRqUEpa?=
 =?utf-8?B?dDlHRGVCTUlRMk44YmM2bHVlYjFwTHpxVXJWZEs4WDQzUSsxNER3aTNwZ3ht?=
 =?utf-8?B?TGJkNXRkQ3l0OGUvY0pWQzBRbGdSL21FUDNJMU0rWElFZXpxTFBvc3ZTTUl4?=
 =?utf-8?B?WnROTjl5QVI3WUlpUjNHVFdMak1idzZ2L0V3TTJhSk0raUttU2pmUS9QaERm?=
 =?utf-8?B?YkxmZ2U5M0VyRW11cEw1VytZaW5mMDFKaGo1dVBDNS9ZRnVjTjNIUEI4NVAz?=
 =?utf-8?B?cXRqUHFIVGVuNnQyK2lqQWF2RE1CYU40V1pjRDdWM1hGVUY2Mk5kbVlXR1FL?=
 =?utf-8?B?SC9IR1luN2F0dHMxTG95THFkU3pqeEF2M3ZSVnJ5RVVyOGxuVElLZ3Nrb1gx?=
 =?utf-8?B?d3NPbTRtQ2VaYlpSSmMrd0hCUTJya3l5K21rbGgxZXo2elFqeW1yUmdMZHF0?=
 =?utf-8?B?Mm5mOVFXbElqTmdVTnVPZUErNWY4QU9hMENGaldieHlqYnRNWFd1Q2xhMnln?=
 =?utf-8?B?b3ZLU0R0Wmd6SWh5L25paFNqMWpKV2pxei9wSWp3L0RWQ2tVaWVuZWY3UTgy?=
 =?utf-8?B?NjN6SWJVVlU5YkE5ZHdrUXV5bDNiQmx1cW9oU3RSb2JDb1JRTHlLOUJ6UDJz?=
 =?utf-8?B?RkFJLzZYazZvcUdBOEpYakMyU3ZKUjhvVzViUHlRM3JZcklhM3cxV2lOR1Nv?=
 =?utf-8?B?MGNqQmMzZHMzeUZ3QlVYdW9VRE1oWmpSd3lkQTV3dkZHQkRLSEZDazZkTThw?=
 =?utf-8?B?bEM2eE0vRUZwTGVCV2hxUE1ZaHcrb2lJdWU0bENtOVJJT1B5SVVVV1pURkFK?=
 =?utf-8?B?Q0wrWmhwZUFleFMvS1BWd096ak10U2MyelNFRHh3dkxLUTlXajI2NWVPUFJp?=
 =?utf-8?B?bGp1ckxydlZTdzZjbjFMdnVDZjF5aEdJT2lVeTg5MEliOUNiZ1VzbFVYTEJh?=
 =?utf-8?B?ekhaZnFOL09tZklwSDIrUWd2N3RXRStXMHlmKzlLL003VjdBZjVHTWpTMVFP?=
 =?utf-8?B?bmc3K01EbWRhOWVBUFJIbXZTbXlaK3hUVkNoRi9Za1pKWFVyZG1TcjFZNlJU?=
 =?utf-8?B?c3FKYVFhMHoxWTBkaks2WGlwWC9WNmkrYmhwUVZncHJpTlNkaGtiVU9mdjJM?=
 =?utf-8?B?UG9Da05NVEpRN2xWVERJK1VmNTVBUWJSUUVIcTZ3Mk9tL0ZnZms1bHE2U0Vq?=
 =?utf-8?B?L3VDRC84UDliZEVid0lQQjFBV0JZdEkyMHQzOEFJZjFrZDBpS3oyWG1UVW95?=
 =?utf-8?B?TU1PV3djTlFJNkMzeU5FQmN6Q200Z3lTTnFjZzA4VW4rNlR6ZWpGNlJJa2V4?=
 =?utf-8?B?SlFXc1ZpRWJwNEJEbVNXMUJuaFZnOFJobXBLdFNHZm1heU4zQVJCUmUveUFX?=
 =?utf-8?B?Q2xTUFpIZ0U1OWhISlVDMXNDRkxsRVh3TkZVM0JwbTV3cmRPeTgxbitBd0Zv?=
 =?utf-8?B?VmhBbVpDV05DNk94V3QyUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NjU1Y21PSnVFZnJFWnF0RHRXNTNoSTMyY2QyRDNXNUpWSWJuTmtyZFBINHhH?=
 =?utf-8?B?UzJQZ01tMndMWVZRenFTK2FNQ21FUXBzTnJmei80VDV2MDdVVkZYRmxVUnls?=
 =?utf-8?B?ZVJYTDUzZ1VNeURGajhheXpqVW5sdGV4Y2hEWmRPaGRmK2VDTFRyaFBObmp0?=
 =?utf-8?B?T2prK0N0RGF0VmQvVURwOWdqVHZPb1ljbFpkQ3YwZGQ1QVBBZDhZR0xFazBJ?=
 =?utf-8?B?YW1mQlNVQlR5a0hkUkw1UlZYd1hSQVd0aWJNTysxT21XWmQzY0VIS3VJUCtq?=
 =?utf-8?B?R0QrU1FJMUFTU2hpMzQ0ekdJRlF1ZFExY0VSNlc4K0hpSDkzOUg0ZmFZK3BG?=
 =?utf-8?B?ZTBXWkZsaFpsOEMvdHBhMnNqa1YrMDJISmcrci9YNkJ6U2dNUytiVmlEVFVB?=
 =?utf-8?B?aVZIRUMxeWJvMlRGUTdmeTZsamZ0UmluYVJCaGVhZlV3U3JJYTI2cElTRDBT?=
 =?utf-8?B?ZHRjVm5tZEZzcWhMTXQxejlOZGZwZVZFTWpOQ3NLTUpaR1RCOEY4ditrZGtL?=
 =?utf-8?B?ODI2V0VQTjh4S1Z4STZhM1N2WnJ0S1dJR0hqSHZQUzNDeHBnZHNHUGtSMDdw?=
 =?utf-8?B?bVBOL0FNKzQ4eGI0VDFSTk5TeFhtUGI3ZWZmeXlYY09rM1N0cGhhQURERG5F?=
 =?utf-8?B?Qy9UTXdsMDB1NTd3enpMYVBYWkdPd1dQdDJnRmUydTZLQmppMmlibG9zWkQ4?=
 =?utf-8?B?Y2hxSGtPL0lBbHdvVXRnTGp1bGZXM2JLd0w0L3J4Q2hUcnBSaG1oQzV3NjU1?=
 =?utf-8?B?eGN4dHdJSml6UCs5UXpxQW80cGlvVXNXMENGY2RhYWZ0UWVib0NYNlVDNnlH?=
 =?utf-8?B?ckkwZm1vR01Ub2ZUeWVNMjhnRFRpbEpmd2Y4VUgzQVRyL3lRVk55emd3SVNS?=
 =?utf-8?B?clJMTFluYkVXdnlWbVMwRU1zT3NYZ0RoVGNkWXZNTUIyS1RTcnRPR1JUSjU5?=
 =?utf-8?B?RFlwWEJLVXlMenM1eE9YaUZnb3JKKzE3cEkwcm42L1NsbEVoYmtzeGVzU095?=
 =?utf-8?B?R01kU01jbkZkeTQ5Mkt2RWJwQnY4UTY3N2E2ZEgvQUZ4RWdoM1pTUmk0RU5j?=
 =?utf-8?B?TktiYWNMckFpOVpPcjRKZ3B5dlBhc20vUStvK3lTUmNhcnl6V3pDa2s2d3Uw?=
 =?utf-8?B?K04xdktqZHhyQkFrbitVUllCWU5PdVJPZVJycEhsMnlDTENQWVdLNEJKSGJT?=
 =?utf-8?B?aTBvVGFwSCtHS2Y0enA1R1EzQWFLWHFrSTVpajdnSGZGMzliS0pqNmNWY1Fs?=
 =?utf-8?B?d2ZZbGhOTHRhekpKdUhGSXozdzFLcDhPSms4OEdjcTJXQlZCNml5ZmpJR3NU?=
 =?utf-8?B?akpHaHFKYzAyNnlyK0hvRzRONlpjWklUc0NibnIycWl0MG9OaUg5MWhRdjBr?=
 =?utf-8?B?K09vOWRyRkIrYUVLdm0zSFVGQnBDL3dZc0U4ZDc5YU9MT0ZRM1gvRFA1VC9m?=
 =?utf-8?B?ZFMxcU8zczVkS0lCV2ZPREZxMUUzNTZFaVZodllJYTJLS3hFR1gzNWQ0SDY5?=
 =?utf-8?B?Z004VnZmRHRHeUVuV042NWZqc1NBcWpQL0N3SEovbklRais1VW9ZcTNlcEp0?=
 =?utf-8?B?ckkxTDFPa3RRa09KS3hJbEcrSXdYU1hKN0lDdS9nNThWNnZYNVVLNGdxTXg5?=
 =?utf-8?B?d2dkZGhYNFFUSE5SbGRxVU5ZK29CUnNqeFBrUUg5YXB2Rnc5ZWZyMG4zRTRx?=
 =?utf-8?B?L3JLancwNkd4Z3RtS1JISFBTOXJyTXZoL00wVkxzVkNhT1FEemJBajJBcTdo?=
 =?utf-8?B?YjZVeG1MUkcrS3MxWFFZOUcvUEFZMjBmZEJNRW10UWZRS29aL210MnJPMHBv?=
 =?utf-8?B?anpLbXpoeG1IQmhJYWlYYWJ1eDQ0NkZ6aEhUZWUrRVJ0NER2QmM1Z3dEaUIw?=
 =?utf-8?B?dUk1M0xPekhvTzcrSnpZYjdwV09GWXQ2SXNDTGhQZ0wxd0VsMDRzeExrL2Jn?=
 =?utf-8?B?eWZXaGE1SXdoMXk2SFlJUXQ1K0cyWTVoc25TNCtZUVhDOHJOV3BGdG0xTzNy?=
 =?utf-8?B?VytIMnV1QVliSXMwZ2tTTzZEY2xVUnVJNWREWS9ZUWhOM2FkNnB0Vm84UWYr?=
 =?utf-8?B?cGtYOHdBMjVQZVRzZVRlT3VLRzdhbjBqaDc5eGhBOVhQWGwvTnltQkczc3VZ?=
 =?utf-8?B?TXIvcFA3YUh5MTNUYXV3SUE3amU5RjV6TnhoTWxsZlZUL3p4Si9aK1RYTWl0?=
 =?utf-8?B?dnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bbbc431a-1f29-435f-7efb-08dd1b069b66
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2024 23:42:14.9622 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xM1uMxlHg3pK7wfZiC4vzlIEXxcdlUz8RE6Hbfl7JJYQoOq3I28k2+4Co2SZ3/ILinpbfQQNshRplnSVs8EcCLS470mjvlGvbKwtE3Ofk3k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5050
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734046974; x=1765582974;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CCFkJF54j1rpX/2P6i9REuoxtA5fz0Joh4s/RlwI6Zw=;
 b=nT4vubKiN5k2jeUCwlY2aA8GB5dDT90IVFKz6USTGDjkvdwIHnpOOPEr
 +x4R57bI+DD7So7XfBqTGMU+WPQmG6bD4I/HNV3TZthM63naSI6TxHeSx
 PSnjo1PVzNN0I6at9UhdNV93th/4mfopv2NGVj1F83IbBYddRRvj/yjqg
 4dpN/RfF6OwUuHCJhVuGuD8KH3v7F1C8GLY9w6pCqRQnEzJcGL3ZU6CIH
 VzsDptFOPW9/TuXBxin/0bJvx9d9THODXNp8aOYiExARHsmjuE8zUZPU3
 tv5xGWCI1mhD+weeui5QcEGZvWKBXGzs2M/WxbP5sJecaQWA5pQFEEQjp
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nT4vubKi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 0/5] ice: implement low
 latency PHY timer updates
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



On 12/10/2024 6:22 AM, Anton Nadezhdin wrote:
> Programming the PHY registers in preparation for an increment value change
> or a timer adjustment on E810 requires issuing Admin Queue commands for
> each PHY register. It has been found that the firmware Admin Queue
> processing occasionally has delays of tens or rarely up to hundreds of
> milliseconds. This delay cascades to failures in the PTP applications which
> depend on these updates being low latency.
> 
> Consider a standard PTP profile with a sync rate of 16 times per second.
> This means there is ~62 milliseconds between sync messages. A complete
> cycle of the PTP algorithm
> 
> 1) Sync message (with Tx timestamp) from source
> 2) Follow-up message from source
> 3) Delay request (with Tx timestamp) from sink
> 4) Delay response (with Rx timestamp of request) from source
> 5) measure instantaneous clock offset
> 6) request time adjustment via CLOCK_ADJTIME systemcall
> 
> The Tx timestamps have a default maximum timeout of 10 milliseconds. If we
> assume that the maximum possible time is used, this leaves us with ~42
> milliseconds of processing time for a complete cycle.
> 
> The CLOCK_ADJTIME system call is synchronous and will block until the
> driver completes its timer adjustment or frequency change.
> 
> If the writes to prepare the PHY timers get hit by a latency spike of 50
> milliseconds, then the PTP application will be delayed past the point where
> the next cycle should start. Packets from the next cycle may have already
> arrived and are waiting on the socket.
> 
> In particular, LinuxPTP ptp4l may start complaining about missing an
> announce message from the source, triggering a fault. In addition, the
> clockcheck logic it uses may trigger. This clockcheck failure occurs
> because the timestamp captured by hardware is compared against a reading of
> CLOCK_MONOTONIC. It is assumed that the time when the Rx timestamp is
> captured and the read from CLOCK_MONOTONIC are relatively close together.
> This is not the case if there is a significant delay to processing the Rx
> packet.
> 
> Newer firmware supports programming the PHY registers over a low latency
> interface which bypasses the Admin Queue. Instead, software writes to the
> REG_LL_PROXY_H and REG_LL_PROXY_L registers. Firmware reads these registers and
> then programs the PHY timers.
> 
> Implement functions to use this interface when available to program the PHY
> timers instead of using the Admin Queue. This avoids the Admin Queue
> latency and ensures that adjustments happen within acceptable latency
> bounds.

This version doesn't apply. Did you rebase? Also, please include change 
logs for new versions.

Thanks,
Tony

> Jacob Keller (5):
>    ice: use rd32_poll_timeout_atomic in ice_read_phy_tstamp_ll_e810
>    ice: rename TS_LL_READ* macros to REG_LL_PROXY_H_*
>    ice: add lock to protect low latency interface
>    ice: check low latency PHY timer update firmware capability
>    ice: implement low latency PHY timer updates
> 
>   drivers/net/ethernet/intel/ice/ice_common.c |   3 +
>   drivers/net/ethernet/intel/ice/ice_osdep.h  |   3 +
>   drivers/net/ethernet/intel/ice/ice_ptp.c    |  48 ++++--
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 155 +++++++++++++++++---
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  17 ++-
>   drivers/net/ethernet/intel/ice/ice_type.h   |  12 ++
>   6 files changed, 204 insertions(+), 34 deletions(-)
> 
> 
> base-commit: 4376b34cf49c2f38e761beacd173d1dc15a255fd

