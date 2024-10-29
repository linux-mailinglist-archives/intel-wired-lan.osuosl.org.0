Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 823C99B54F3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Oct 2024 22:20:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E3B58122A;
	Tue, 29 Oct 2024 21:20:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q-3H2oEOD3_r; Tue, 29 Oct 2024 21:20:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E7A98122F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730236827;
	bh=AdC/mWeqEHKBsp7LgSvNDjkT5Wz6UL7va1Nsqrh//R8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wU9YahMoEksOvhajtek75im0vI54DquEooRFOjujBWIKeMl88qapcbMI4Kewm/mmh
	 b3HrnU+5mIQ5np6GD5OG4DX12dQz40shEiIpdcaD31lUSxDdLaZVsNRJOQnexa7BNb
	 abb9C2rUSk6cPNMXtMV6WGzOIJbeGXJ+z+hl4AMkSVEvKJhgOXrGNNxemnFHngg05d
	 mR+8ZRhAv++JGGEl3ypFR0wQxDwJLGRf+cSZEAIgs5AN168dn9escI0hy4OjZealyV
	 f0UeGarcCByRREfzu0ehON+odDW3u/Xz1UdaPX5zajQIb9cM30TL7NkxqIkG3gKuk3
	 iT9adpsdHRhmQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E7A98122F;
	Tue, 29 Oct 2024 21:20:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 045164EC0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 21:20:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E6EAF60900
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 21:20:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0Hnv2vVq5ZB2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Oct 2024 21:20:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D6E13608F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D6E13608F9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D6E13608F9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 21:20:23 +0000 (UTC)
X-CSE-ConnectionGUID: AA/UxfvvTqW7SwWBBrWdeQ==
X-CSE-MsgGUID: I0aJldPbS8OGDI+ewYwaTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29869161"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29869161"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 14:20:23 -0700
X-CSE-ConnectionGUID: AIAZU/4CQvihtzEOaixt9A==
X-CSE-MsgGUID: npQ+OPNFTSCnFcfQ8fZodw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="81719418"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 14:20:22 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 14:20:22 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 14:20:22 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 14:20:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mo9o/K3s/5oN2VtFTMgcm+1Z/lwsWeLa9ZpzGo/czA8YrFhK+QOpkbsDX3t3nc32TkX4I3LJyARFCjbd4Rf7G2+V5i0QxM4YIc97E8rv7xv7h/zhpJj2nQEaH4K89yplKwvWW9LpSgcXTgM28fS8Sl4tb36eSordNo/W7NiTvqzbzBLA8gVtpWle5Od1k9c9ZlHnD45rJrH6TpmXVrpCqVq+Sh1J/UPQxN7KKDMgoYg5xD6AlMZV/pK9WxKpRtQVgMH5yEJQFHYO4/fDqHPNSj6Wsj2MX37cqnEmITKRPjR+Di7dTp36YDM4CM/1AwjsrD7BTZwkvJSbUIH4wSMrOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AdC/mWeqEHKBsp7LgSvNDjkT5Wz6UL7va1Nsqrh//R8=;
 b=ktJIC9VqdKUcU/cgyqkvrt5hEyfKDtpjKwRo384yCZ80GYmlL6hLAOxtFtrGNnjsdFDXwrs+dZ9Ium8eF6nLe7y1moSMFCkDXo+JXYPQidN/48VHQDbroDVlgYUrjPbB9lwmiI/829P3mb69ia/Cma7Q/sOjQWjvldyGzoiGKkOkIdovH3n8/s03thb7puU0oPgTiWo+483FfAfrE4KTOs9lI8FjH3BxANJkhvabkgEfR1qfyTTRDF2YCidZLlSU41xCv3gUz+3AvlaB2cQOto5dWYJQ82wq/I3z5oz3RxdWOk4mXyNvWywfxC7Xm7+8Lw5lkCpro7CYXYDe5EMpdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by DM3PR11MB8671.namprd11.prod.outlook.com (2603:10b6:0:42::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.32; Tue, 29 Oct
 2024 21:20:17 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%7]) with mapi id 15.20.8093.024; Tue, 29 Oct 2024
 21:20:17 +0000
Message-ID: <b22e920a-34c9-4926-9cf1-02dc24fcfb77@intel.com>
Date: Tue, 29 Oct 2024 14:20:14 -0700
User-Agent: Mozilla Thunderbird
To: Chris H <christopher.s.hall@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <david.zage@intel.com>, <vinicius.gomes@intel.com>,
 <netdev@vger.kernel.org>, <rodrigo.cadore@l-acoustics.com>,
 <vinschen@redhat.com>
References: <20241023023040.111429-1-christopher.s.hall@intel.com>
 <20241023023040.111429-5-christopher.s.hall@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20241023023040.111429-5-christopher.s.hall@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0139.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::24) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DM3PR11MB8671:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ac0ec97-0b09-4b84-69b4-08dcf85f7c36
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZGhBdWxRNkREcDdpZUZRWU9HeXdheGxrc05wZTZuZC9kMDNabmxZUXhUN295?=
 =?utf-8?B?dGh4bFhPU0F5OHI4UzlTR1NpdHdyQTRORHRVRlk2ZHdyU0EwQjhLSG9BdEdk?=
 =?utf-8?B?clVUZmYvOVF5bFdTS1JLSUpiOHM5RmhyYnZya1Mxd1ZFNUpzQ1lscWJwSWp4?=
 =?utf-8?B?TVU4NkN2QXphRkFVYnRCUG9Nd1VOVFU4VXJ0cnJkZmZlVjBJUFBhejBKTzZF?=
 =?utf-8?B?V0NjWi8vbVJkamdNUW10MnJlTXdoZmJvY3BuRU8rODZ1OGhqSno5Zk1VYmQx?=
 =?utf-8?B?elh6cnZNeitJM1Y2Y2JnSGNMdnh4ZTExZzRRRzFPOUN4d3pScmFXaGJKenNo?=
 =?utf-8?B?V1ZFV1hHT0IwclZ5YnRqc0lQZmlhc3h0MXJYeU5oUG02Y0pVWFZzMUNtcFJw?=
 =?utf-8?B?clpVSGIreDdSWUlpeUswa2ZmVldQSUN2SVd6dFVsclo5Y3NYRGJkemZCNS94?=
 =?utf-8?B?c2RtRyswa3RyWEpBT1hIalRoSWNiaEUxZ2tyUGRxTElvVVdQZVpYTlJuRjEw?=
 =?utf-8?B?TWorQmsrSmNXeWxFWHpsZXkxTjBDaG9hS2I1YzhtSjltN3Zvck9tam43RWdy?=
 =?utf-8?B?akw3dUFuSDRCQjI0WlZQSkFsZ0FySDd5VGNCaERza2w4eTl5VEowUkswTmVt?=
 =?utf-8?B?dUxiMTJSM2s3aEVVNjhyZHNEbTJwZ09XS0NVVExzUE9jZ1dsUTN1R2M4OEZ4?=
 =?utf-8?B?RUZYTDBRZW01M2hBZ1BoSUhhTFR5cEVtbi9pTmRFaVhrKytvMXhOeWZTQTZN?=
 =?utf-8?B?ZnAraUQvZzVUWUtkaURkSG81TXV0WTlXeGg3OEJLamdHSmx2TGhlNTlPZ3J1?=
 =?utf-8?B?Z3h6b3I1djc3QXU5M1hzclJ4MjA1d1hSeG53c1lRajBoNFVXRTdaVk1vVE1v?=
 =?utf-8?B?QnR2dWN0MitvVDJ1VW5URVRCWnh1OHM3ampNc3p6NVYvY0xkUis2WmVpM0Ni?=
 =?utf-8?B?NWZWRWVudUVRQlcrLzVsMUJvcXVISnV3TzBnWnNPbDhBanpqV1ozd252a2tE?=
 =?utf-8?B?cURTRjNiZDBhWXBXZmdRU0VZcGRxUlR0UEc4ejF1OVpOWmRMdW5tV0xyeHlz?=
 =?utf-8?B?dmZmSzZvNzFlK2pqN3RrU3RFR2FTWmprdmJYczd2TVNDSWk2c3NsM0x0N1h6?=
 =?utf-8?B?NS93M1RUUm5UZEcvcjZpTFNEWm9BR1FCd2poZW1pVzZ6NE9sSkRRUUprY0c2?=
 =?utf-8?B?cWVFa2x5V25YMUxPVzVRa205YlhiQjZKeEdiM2NqUXQzb2R6OE5JaU1qZTJD?=
 =?utf-8?B?My92SFN6OEduS0VFdXN2d1FZYXdDT0U3MzBGQ3k5OTFNK2FBRVpsMHJCNFdt?=
 =?utf-8?B?UWxxbUZWNWQwTFBkMTVWd2FCWTdDRHRtbXZKdnRNejlOOE5CeGFyRmR6VFNM?=
 =?utf-8?B?cEdBWnBHeUw4Q1pEcmNmM0JzY2lyc0M2MEZ4VHh5RUt2d3I1NEZqcU1IQitp?=
 =?utf-8?B?K2NVSWpuT2luODhWNW1YbVlyRWZJYkJFUHdHOXJHVCtRZmtUR3lGamVDanEr?=
 =?utf-8?B?aS9ici93ZGhyWGNhTWhCWmlLZ1ROMGQxQXFQT2Q0aGxvelUxT1ZxblZGUmIy?=
 =?utf-8?B?V0doOFpFUldzeHBxNVpXajR4SDMva2ZiMEtreWpnK3FjN3dFaG10OTF2Zm95?=
 =?utf-8?B?WitreU1TRlBUcGROZlM3WXdNcmVOOXNrY0VaaGVmWk1NWlZhZXdvRjc0Y09U?=
 =?utf-8?B?OHZQRVhFVjlrY2tDT1JnOSt6enVsN24xSFdDbEVBS1hwSTdSd1hwN21FY1Bo?=
 =?utf-8?Q?HHLaDW5Tou0OsPvWSC8uzbrHvvi0trNySZVw9ry?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NndVc0YraVdET3dHa1lmYkRYNWFSNXBobG1mSGF2T0FHbzJyNVRENVJRa2lK?=
 =?utf-8?B?ekhpSEJsQmFRcWg5ZGdNSEtaTThmaFBoYVJIbkJnRWFBU2M0clJ4bHBsN3Uv?=
 =?utf-8?B?LzZNYUNZcEVCRUlFTU5JYlJ0dUJIZjl3M3EwZzhaR2ZjZzFVNUprdmU0cFF6?=
 =?utf-8?B?WW53blVZSVAyQnNkeUJJVXo2WUkyTlZmOStRNFA1dnN5bXgzYkd1alRiYXc3?=
 =?utf-8?B?eEVveW4zN1ZVdEw2cEMyQTIyeGFPUzBPQjg3RmFITW1OZEp0eXc5Y3RBaVVa?=
 =?utf-8?B?KzdEQmRtMndqS0RxNWV4RzJ3NzY0UW9WU3c5WWlMa29aZzN1dWY4YkJpQzU5?=
 =?utf-8?B?L0FVV3YwWDduMFpjYkdOeWJCS2JUayt3aWJDTkFIUzRUR2paQXBXQVdpNjFn?=
 =?utf-8?B?eG5BWHl4bXYwM1BrengyVzBvQ3ZmTnpDcFNncmpEdFYvNzdBam1HR1RmRGdU?=
 =?utf-8?B?OVdHbUJjRTJINlI4U0QzRXJsekRKazdEcllqbERlbDlGVnJ5M0IzeVBUTGRi?=
 =?utf-8?B?UllFV3ZjY2xxVFFsVFE0bGxFb2xnbFg2Z1VJQ2pveUV2RjBNN01GckZ3dkNt?=
 =?utf-8?B?RitoWWxaYU5RTjJlWnVpZmx4UW1kcURNQ0UvQ3hmMFU0NDJ3WTRxK0k4VGFS?=
 =?utf-8?B?ZDl2VDdjQUZFM0N0UlUzTnYrU3BQd2pWN2ZudkZvd0NtM01qMlVNNzNXMEk5?=
 =?utf-8?B?WmU2WURSMk5JWGVSSng4NzNoOUkxK2RKVUZMeXk0eE9qVjE3YU9xMUNXblhn?=
 =?utf-8?B?SDVjNmFDUTFVeVhnd3NnWmhrZ2RPZTFOSEROU2tFdi9Ua1YyclZwVXYrallp?=
 =?utf-8?B?MmVMUC9BZEM3SmRyTUxMRkV0VUlpTytHRm5CMThaeTJjWmIwTlEvR2RKMk5r?=
 =?utf-8?B?QnZDOVIwRGh0WHN3V0g3OGdrUTgzQUdxaU1QQ2plcWlqcUQ3NS93bnRMdGs2?=
 =?utf-8?B?UUFmcHQ1VXNaYVkwRGR5RWtPYlh5Z1c3YjdmbGtPZlVsTE9OQ2s5d0l3ODYv?=
 =?utf-8?B?WEJuM0N3cmRYWmtJcEY4dWNkU0hwNEVnRDNmTEk2a3J3WmIrdkFPamt0WGhM?=
 =?utf-8?B?SnlGZ0wxTGp6TUlsVmtiZm9VQVJXS3E2VHdUY0xoV2U1b0RQa2d5dGtPUklT?=
 =?utf-8?B?RFBNNi9saXVYM1dHZkVWYXVEQ0lXWDNJM0tYV01uay94dWdHZmdOUlNtSGow?=
 =?utf-8?B?NjVNNjhjbE9NQXhXeFNNSW9RNVJCWXNiZEk4YWIvcW9mZGxZcERZUEtya2NZ?=
 =?utf-8?B?M0h1b01YTEV0cFFvVFhleWM1K204R2RpWEVPaXM1d2tWdFkydGxlY3M3bUl3?=
 =?utf-8?B?K1ZQMmRKOU96aGtxZmRiYUxMK3VpNnFvRXIvLzJQcUZ6ckFyTDVKZjdDNTVp?=
 =?utf-8?B?bGNiTHA4SVFjSHhMSmJLYU5KdU5FZXlSTmdJNGtMR0w1clEzb3FNWmxSK05v?=
 =?utf-8?B?ZklmUFZvL08xWkEwWXRmS1BPa294UnB1WnZBdVFmc3kwL0ZRM25BY25ibFhz?=
 =?utf-8?B?UExWdmFwZlhNUHF2MkhNd01aVWczMm92ekgzd1dBR09XaXcrS2owNnFZeFQx?=
 =?utf-8?B?YTRyeTN1M0QvME5TOEFwWlFOdTYxVHlrOVJWb3BCUndodGZRVW1lUkNETFdS?=
 =?utf-8?B?dmRUZjUzdGRjTHpEWkZpZkVBaGhsVThUeXNER1pJcE5peUlQMFRtRGVabVFa?=
 =?utf-8?B?UjEzMUx0a2JidU9SOWNyYktXY0M4eSs3VlZNUkpiTVBjU0JsaW5PUWJrWklK?=
 =?utf-8?B?L0YrVEtzdVU4MTBqV1RRTmxnamdUR1l0NmNMc2MyZ0YzNUQyQXR3STY4T3V4?=
 =?utf-8?B?OUtPVlZUUndnV2sxTFN4SThheklxa2dvOGlzTm16dGVmMVdXQmRkSDFtb21Y?=
 =?utf-8?B?aUJ1OHh0NUFnTEllUUZwdzVURWxyWm9ZQ3g0dGl6VmpiN29uMkdrU041VU1Q?=
 =?utf-8?B?aTN4eFZCMktib0FZZWJRQjdmQnJ4S1Y2L3hPK0x4SGFKNmFuQWJXL0xIbzJQ?=
 =?utf-8?B?b0l4UHpYYllqUmRaTzFwZUJQemx6ZjU4OThWdE92azVsM0dNTEg5SEZWL0Iw?=
 =?utf-8?B?T2VGWGduY2ZJT2JYN01Gd3YrQXJvYVZJWWZaUGhkdTN3K2MxZzhOZHc1QUhn?=
 =?utf-8?B?Sm43MjFPcDRvUjNwNGlrUHkyN1c1NlpJeUNqYTYxZGFSOW10VmYrOHFtTjB4?=
 =?utf-8?B?Unc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ac0ec97-0b09-4b84-69b4-08dcf85f7c36
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2024 21:20:17.1357 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: davwGp7sd3tix7jOTtX6Eas0EhwpDLroX2iJPgcAiLonTx1yRDa1wof0wS7imgQU3J9v6sqF+q22Nnd6+jLLgd6WE3voVnMSzKMepQzmb4E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8671
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730236825; x=1761772825;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m7Gfd3zCX5zS9PrqOqTxV9RvXc9ux74GJCgJPz/CHJ4=;
 b=AQTpRG2Jfalkwkk+OJkfB4dgEoT4OLL9LaiFyUltg15gvHKrxqMbq09l
 CCWVaaqx31CyF5CB8iiBYIvv4UUvV/EWPh4KE0RIAY7a20pswMOo+xdrc
 146WIOLwAVi5ObnmkFDOSBAXYyuNhkA7GRTjfDJsMDvN0MRAx/Vn1y9u/
 v74LRaddkewt147Bep6xl83ekyAaNlzJU0EgEQXOra+TYUVyK1gyo2Tr2
 1eXY3mfGGy4WZoLQA1cHDf3LIOehWHn1Is35z3ywfc/CTkxJvq9jwbJwC
 QaHlo9N2wE1LmWQAt4dNBwsHyKo0pA8wedvBfdqNNFoCIsDddrE4oplRG
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AQTpRG2J
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 4/4] igc: Add lock
 preventing multiple simultaneous PTM transactions
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



On 10/22/2024 7:30 PM, Chris H wrote:
> From: Christopher S M Hall <christopher.s.hall@intel.com>
> 
> Add a mutex around the PTM transaction to prevent multiple transactors
> 
> Multiple processes try to initiate a PTM transaction, one or all may
> fail. This can be reproduced by running two instances of the
> following:
> 
> $ sudo phc2sys -O 0 -i tsn0 -m
> 
> PHC2SYS exits with:
> 
> "ioctl PTP_OFFSET_PRECISE: Connection timed out" when the PTM transaction
>   fails
> 
> Note: Normally two instance of PHC2SYS will not run, but one process
>   should not break another.
> 
> Fixes: a90ec8483732 ("igc: Add support for PTP getcrosststamp()")
> Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h     |  1 +
>   drivers/net/ethernet/intel/igc/igc_ptp.c | 12 ++++++++++--
>   2 files changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index eac0f966e0e4..323db1e2be38 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -319,6 +319,7 @@ struct igc_adapter {
>   	struct timespec64 prev_ptp_time; /* Pre-reset PTP clock */
>   	ktime_t ptp_reset_start; /* Reset time in clock mono */
>   	struct system_time_snapshot snapshot;
> +	struct mutex ptm_lock; /* Only allow one PTM transaction at a time */
>   
>   	char fw_version[32];
>   
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index fb885fcaa97c..4e1379b7d2ee 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -1068,9 +1068,16 @@ static int igc_ptp_getcrosststamp(struct ptp_clock_info *ptp,
>   {
>   	struct igc_adapter *adapter = container_of(ptp, struct igc_adapter,
>   						   ptp_caps);
> +	int ret;
>   
> -	return get_device_system_crosststamp(igc_phc_get_syncdevicetime,
> -					     adapter, &adapter->snapshot, cts);
> +	/* This blocks until any in progress PTM transactions complete */
> +	mutex_lock(&adapter->ptm_lock);
> +
> +	ret = get_device_system_crosststamp(igc_phc_get_syncdevicetime,
> +					    adapter, &adapter->snapshot, cts);
> +	mutex_unlock(&adapter->ptm_lock);
> +
> +	return ret;
>   }
>   
>   static int igc_ptp_getcyclesx64(struct ptp_clock_info *ptp,
> @@ -1169,6 +1176,7 @@ void igc_ptp_init(struct igc_adapter *adapter)
>   	spin_lock_init(&adapter->ptp_tx_lock);
>   	spin_lock_init(&adapter->free_timer_lock);
>   	spin_lock_init(&adapter->tmreg_lock);
> +	mutex_init(&adapter->ptm_lock);

I believe there should be a corresponding mutex_destroy()?

Thanks,
Tony

>   	adapter->tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
>   	adapter->tstamp_config.tx_type = HWTSTAMP_TX_OFF;

