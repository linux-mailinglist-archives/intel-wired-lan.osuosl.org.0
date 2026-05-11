Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDlnOE6kAWpKhAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 11:41:34 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4020450B1EF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 11:41:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE48140B8C;
	Mon, 11 May 2026 09:41:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bfly84LpabFs; Mon, 11 May 2026 09:41:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2126540B76
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778492492;
	bh=rOL6+38/eR9CQ09l08TI1UPmpaXcYJr6XSnsAQ8m9YM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=e+EkyJp9ubGzc5XCtvL98fyAzvHTDDlVJ+YZz58fc1Ue4CvxDhJpPoF8O70D2Q5Qr
	 Ol5yzIL6vsqSwLbVQB/wgGTeZ7WI4aXUz2WiD5uS+efeWC2hjlwBl6huiuXAla9X1D
	 trJ45MMqdnu0+tL5fPKrn1yuHpLBZOT2kIedn8vTruhbb9XrwiYRWwq+foLOvgu7yV
	 +1jhNKDnx5pZB1qpmqNQmwESsa46WKrnYFA2j0vNEwtspFs5tOibMbQUEY1uKZ0EkV
	 fkTdtpJ1Sv8F4/BTJkvAJH1bD1N3hTBOHqfOsmNbbUTanssRXRIO+nR/OBu8N2ru3V
	 7ock+1L3QUJDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2126540B76;
	Mon, 11 May 2026 09:41:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CE9A9223
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 09:41:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CBDA540329
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 09:41:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fy82QYwXprZb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 09:41:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B65414021E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B65414021E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B65414021E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 09:41:29 +0000 (UTC)
X-CSE-ConnectionGUID: EqcnN0S+Qia6I/onzu6zAA==
X-CSE-MsgGUID: 4HOvtaUZTsm30vKKgim+2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="78519169"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="78519169"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 02:41:28 -0700
X-CSE-ConnectionGUID: kOFai4uxT1aiEEwzAu0NaQ==
X-CSE-MsgGUID: IR0jS8S0Tt+TzVAWxM8ZcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="242393188"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 02:41:28 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 02:41:27 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 02:41:27 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.58) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 02:41:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h4gg9gZT22SLMgPfFdB/7S+FM8VW8HKH+lrgwJeqf6BCCduG0NGOi79w7fdop6ZMWGi2e8lmrQ133DC0IED9HfebVNkYEdeKu6ZKH+LqYZALTNXHIQG7B9ZtORkYkf6W7bWhM3cDSn2mumofQFXU+GvCZ4p1uOMG7my4gcsBxCoXZ1ba1/f1ELRG5ijtgm244uwYooxprQVx0FmsQdR5rfFuvsk0u/6rYHONW1eRN6Hbt1L7PtHu5rkKmWSCUGNAGXMNlICd/WslLN/W/juQZPRXApvm8saGkywx/sfIYyI/bNDRHlyrffCUr89HmWEh6EPjxqP+jhoq6QSwwRjtPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rOL6+38/eR9CQ09l08TI1UPmpaXcYJr6XSnsAQ8m9YM=;
 b=oYEHjEb1sb2znlkpwrRzEnF49bp4v1RviWeaykvNY/mluFHKYreaotAOK07JUfmfQZYb/bF4IfADC97Px+zlcCNLziQe2xqyAYo6+vscEu+GGEQBDgFQXji2XwjdhAsK/Z/03sSqmm7Sw5sFQOfVk13g/0Y355iXblmQZe/gsUdRMLX0xvEIhZjEhBY1+w6/CyjlkBmvbizYXp79f8RBtHM3/TPAo6D+yPVGyDJQ2/8JRE7ZJtcH0uCfQVXm0L/BHB5mcKh+Jc4t05X3ktI/n+R65mI5Uvi1cPUy225L5w3TluE0bA54Ifeizbg5VoQ399w4Os1CIZisDdhaihKrMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH0PR11MB7421.namprd11.prod.outlook.com (2603:10b6:510:281::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.20; Mon, 11 May
 2026 09:41:24 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 09:41:24 +0000
Message-ID: <774b6a00-03c8-4a03-bfce-354f3265bc19@intel.com>
Date: Mon, 11 May 2026 11:41:20 +0200
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
 <20260508124208.11622-15-przemyslaw.kitszel@intel.com>
 <IA3PR11MB8986DED74CB42DE655B0E436E53D2@IA3PR11MB8986.namprd11.prod.outlook.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <IA3PR11MB8986DED74CB42DE655B0E436E53D2@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0023.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:46b::17) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH0PR11MB7421:EE_
X-MS-Office365-Filtering-Correlation-Id: f29f02df-7b27-4aca-f123-08deaf4176f9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: mzCfroP3yTfizu1MUhW4zHHM8Mm8yD7h5vAd4SaX9Qy64h9LF742H4MU1yy5ahVSOCElqE+hcxmOhMVJD1D2cZ/YsShthyciUMZILtNkig1t75D/jp+RgDkV8n6vKifV9fstlHDKA+AEASgMsiX/qGeJfo6HhW/uh0pp9qiqKmOsIJDhNsfRlhcoqyjXK5DzwrzZEWuqQ1Gzvb1Pz4v9OguPXoKxNL4rzEpjVAIDj5LTSLGodBeAhBGrDGEBa+Q0g66SHc1IFfkgwxvsq672eW1N3qG6yWG7XD0n6t0m+s7yO34wMogZ0l/tbSCq1dusjl/IwaBk3pz2WRyp5wdCn1tewsq52Pv8IvwVMMci7TjAIsX3VRj5iCDP2TTB2K1zS1FXBQgOMmjQsuqleE7bilBooBtF2NIIrm7uvlQOhhdJtsX6s7EY9a4VQmb1yXtdTNYp7PZoY8yYfnS7F4yePryKyLO96ZWoSWDBoYj+8NXsWjIkRYBMNDWWpVRfscjUlWPDs/cNnnygLSWkJ5aV7KkOEofl0RDHnNqqDMW7VR4DIoD7VDGFfiJruIcvh7OUwU2Ucxfzl4jHtoXCRSimY0PfqvNLX3nlaRxJFaXd7OzWf84bRAgBMae0p+1GKh+/O0RCpmu3lN1qKv0f59p83uq9OrcMGCDr9PugZimKJC9AqwvSJD6pq+XIfa9gPCbj
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?akdOdWxJT3N0eTZZbnBXUVlwSmZHODAxVk53a1R3MnVyZjZLNmdrNVczUnpD?=
 =?utf-8?B?MFdMdlQ2U2RoOWFQOStXbmpXdzQvMUswZEtDSFJ1Sk51Q1lldW1vM1pQVVgw?=
 =?utf-8?B?a0kxN0NFNWs0SXZheEZuY0Z0SHN0TTF1UGVnUWlBVVhCWDJIaDdJRG9ZTVNy?=
 =?utf-8?B?SGF6ZVJnMm1QR05RaHpHQmN5dGdJYkEzK0ZVVnBrZnJ2bDh5Yjk0TXNOeklC?=
 =?utf-8?B?Y21DaDV0UHNraDM4U2xRTFMrTTVDdEJvenNXVnRVdUtmN3ZyanFLOFRKV1k1?=
 =?utf-8?B?YklPRE0zRU1ta0xtN200U1RJV0lFcThROEJNamMwUXRGOURBN2UvMGxlUFMr?=
 =?utf-8?B?TVRONUhjQnRGMUZwTkdGeFdQeVM4Q2tXV0UrZGN1ak04TUJJNGZ5Q0xZT1RW?=
 =?utf-8?B?RGh2bVlZUmM5Qi9JaTNnbUN3YjUreVVXbUo2VHZKeFNpcGlMeG96RjBEOGRO?=
 =?utf-8?B?WUFPMFh2NkNzSlVncTcwcFpWaVRneVZXVnYrWWUvSUduQ09DeS8xOEJjWUdj?=
 =?utf-8?B?dVJPLzh4MVpuUyt1azBvaHR5K2IwcDN0TGVha0JxTks2ZnNaU1ZtQUVFRlFp?=
 =?utf-8?B?d1dHQmw2dk0wMnNNYWlYK0YxVkVNVm9pV2hQYkJDZll2Y0UwRnJIOU8waHQ4?=
 =?utf-8?B?cVhqK2JpRUxoYU1NSHpVd0k5V2VPZ3BkTm9OaFpUUmVxNDF5bGhVY1gzOHVz?=
 =?utf-8?B?RjZURkxEU0xNVm1JRCtXZGs2Nm5uTnJkcDY2U0tMUDNOSE5Nc0o5UHcwQ2xV?=
 =?utf-8?B?NGpHTlVLNktja0FlRU9xbHlSNktjT0hRa0xzNDVTdjZMYTJKWmY3YzFYd0Z4?=
 =?utf-8?B?c1NYaXlHUjdRNENDNlZhVkFrZ0hIdEhvMGdPaVRDOGlwZWJoakJzUEV5RXdl?=
 =?utf-8?B?aXJPVTNKNFpGb1Bna0djNHJrL0xaUHRTcGI1MEVPbzI3YjNVTUR6THAweTVL?=
 =?utf-8?B?bDRKcHcyWWJoazhDZGVXNXFlZWF6WkNXZkNYeDRBbTVzY1RrVlNXYzRZV3Jk?=
 =?utf-8?B?K1Y0enIzYnZCVlBaVVpmclVlWkM5d29TeUhRZDZvNk14QnFBYUViaTVjc253?=
 =?utf-8?B?RkNENG5BT3hjMEg0eTBlM3hOUUpoWnZMb3dZZHY4TU4vQW9lcFNrVGUxMmds?=
 =?utf-8?B?OTlPamJwVk1wQTRGbXVBNDFJRCsvb1JOU1pEdFRSYkxuRGNLS244dnpRVU85?=
 =?utf-8?B?RG9tYTVQWjVwdlVHaVJlUkROL2pUajd6UStuM1hmMUUxOUJNdVBRRFljVDlR?=
 =?utf-8?B?QnN5cWFhRnE4YkcvSDZVa09mZDVvdytOczJscmN1emM1V0Q2Ynh2Q1c4azVj?=
 =?utf-8?B?ZHV2TU9UWWN4Ym1EU3RlWkxLYXprZEw0YjFvOGlVeUJmbmk4MFJuNzN2V0or?=
 =?utf-8?B?OHRSQmRTOE0rbEtwQThVdmRjZG8xVk9rRklzSzRjUFZDamRUTFh6ZHhOZWpF?=
 =?utf-8?B?OC9tV0pxRkVMUzA1cE90d1JXUzNxYk85eEZBdzVKbUVFTGZJVXRXTzd5UHY3?=
 =?utf-8?B?WmxVVWo4UkFTZ2Rka3JsVVRONS9yY1cySTBTOE5aRGpHMjF2LzROSG5BRkNx?=
 =?utf-8?B?OXF6TEZ2U3krN0dsQVRnN2NVb25LQmdWMFJZeS9lb2xSK25ZaFpma1R1ZUtG?=
 =?utf-8?B?YjJDVXBMaWxoMVhhT1cvcDVIb3FsNHlNalBiYTYxN0xuR3RzY1ZQZWlaQ1l6?=
 =?utf-8?B?R28wTys2YjlONmxqdEVqTjVWTmhTeVZKVWVJdExLUnBuNWRUdytVeHlMUkRp?=
 =?utf-8?B?K01jbWFJdkJnanVBSkF2U1UwZzBEVDZYNDhhdTlzTWNhQWs3cTRURXVrazNG?=
 =?utf-8?B?cU9KNGtUQ09rbWc3QXlPOFU3R2kybksxRkR2K1R5a01EdHFMZHN5MXlwQWV2?=
 =?utf-8?B?ZDEvbzZWZHY1TGhwb1Y4Y3EraG1LaEtheGliYTJGaitSU2x4RzRGY09SMWo1?=
 =?utf-8?B?SUFEcWxheDVaYkd0MHVvaGZyR3J5SHI1MHA0a3d1QWF2RFZ2MGsvdVBkUEov?=
 =?utf-8?B?RkZzM0NMOWtKdXl3Ty8zdlAzdGM5M0VoWTRSRkRSc05iQzl4VVVJRVduRmNq?=
 =?utf-8?B?YlFmT2g3cnBZSVNNTmhhcEpEYnhnS3VZbGNYT1dpSVJUU0I2c29EM0FMcnZI?=
 =?utf-8?B?U0Q4VFBJb3YxMmZ0Ni9jOGtweUZ4QmdXL3FkVUJ6a2hkMm51bUxMUENqY3Fz?=
 =?utf-8?B?UTlDQTQrcldIcCtBTXNFUmhLV1d2aUw1K0R4UmFjQmpoWDhlcEt3SzBiOEJv?=
 =?utf-8?B?bnd5WnQ0L2E3dllKMVBNeEY5WmVMeXkzT2crTHM4cDJQZitJRzd0bkl5Vzdq?=
 =?utf-8?B?VDZnTDNXL1BxZWV5b3NkcFhlNFhTaTFTMEJZeWo4dlZuaUZLak1KUUdtbERy?=
 =?utf-8?Q?KvCcj/+yY5EY4VUY=3D?=
X-Exchange-RoutingPolicyChecked: FnNCheAbsTYtxgY+H5o5iArrLRGwV8jHxkUMG097oqBZL/kmG/x0IsBUFVHjjODaII/xCMKTi7iUCO+fA3Jg9w1g/xM/8isMdaW0+b0dXvC1M01QJxw3OYtB0V9HD86nzsWXtSR0jA+tSF3OZfxztNS/c1SwWcXkMxVgqato+geEP8hhDNiwI2UwS9WsvYhlO6cwetnAQVsExJU4+Z3Oi0oUwox0ZR/diN6ruVlWS7GRKhBvniQlmVdiMoJqT8iUg8Sq66lNsw1fe0a2yz/ZGFGTk6jYGVaEbrSPg2K/2D8jyikVZpJXrgWb6cFVxbszAnUIDhop6ANsdcooeIMpWg==
X-MS-Exchange-CrossTenant-Network-Message-Id: f29f02df-7b27-4aca-f123-08deaf4176f9
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 09:41:23.9023 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OTNghtPZj/tc5X0xPx7GMarPiTlWVLBJewpo0mdAmxTt8t2WFTJHPF7/TdrkAMIxxfAwWUtYqR0IBKNwyxiAvCIviLm6IVDm9ZQFA+KZ/t0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7421
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778492490; x=1810028490;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XtZY7co9mH/23KyBL9dtOjnZU6Cb/YipTpubtmgsLss=;
 b=GunSrUMzMSjI6VJwiMGyoYLgvtUfPGk9GQcH2pGC1Qmkg7Kfjp5aebU9
 pRs1jg8xxhGC8z4SwBso6bJ15cBO4ezS2g3N00TZW7+H/grL6MJpIt92K
 qInM6UiGnDyd62+1M5R3reA2AnZquuNNGehC4jNdxjtdE0jTJ9j8OoR8/
 OxrU0k8FRUrs0iEwSEXTUAzfGKpmZiHyDHI7yQqYR6gJluxZPRKVEs7eo
 RUAKEmAdOn6ndcpgjFzrQ+EMc39XnnIfi2p2J+/jgH0gD5X0UR5V0YuCC
 O9YFLhZf8n/0gFu4qTnAOXYWlhqUdwQU3VhQdFGZ/5GXV416rpL1/z/cW
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GunSrUMz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 14/15] ice: represent RSS
 LUTs as devlink resources
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
Cc: Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "S, Ananth" <ananth.s@intel.com>,
 Leon Romanovsky <leon@kernel.org>, "Medvedkin,
 Vladimir" <vladimir.medvedkin@intel.com>, "Miskell, 
 Timothy" <timothy.miskell@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, "Richardson,
 Bruce" <bruce.richardson@intel.com>, "Connolly,
 Padraig J" <padraig.j.connolly@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Mark Bloch <mbloch@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Michal
 Swiatkowski <michal.swiatkowski@linux.intel.com>, Saeed
 Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 4020450B1EF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:ananth.s@intel.com,m:leon@kernel.org,m:vladimir.medvedkin@intel.com,m:timothy.miskell@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:lukasz.czapnik@intel.com,m:jiri@resnulli.us,m:bruce.richardson@intel.com,m:padraig.j.connolly@intel.com,m:netdev@vger.kernel.org,m:mbloch@nvidia.com,m:tariqt@nvidia.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:michal.swiatkowski@linux.intel.com,m:saeedm@nvidia.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Action: no action

On 5/8/26 19:03, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
>> Sent: Friday, May 8, 2026 2:42 PM
>> To: intel-wired-lan@lists.osuosl.org; Schmidt, Michal
>> <mschmidt@redhat.com>; Jakub Kicinski <kuba@kernel.org>; Jiri Pirko
>> <jiri@resnulli.us>
>> Cc: netdev@vger.kernel.org; Simon Horman <horms@kernel.org>; Nguyen,
>> Anthony L <anthony.l.nguyen@intel.com>; Michal Swiatkowski
>> <michal.swiatkowski@linux.intel.com>; Richardson, Bruce
>> <bruce.richardson@intel.com>; Medvedkin, Vladimir
>> <vladimir.medvedkin@intel.com>; Connolly, Padraig J
>> <padraig.j.connolly@intel.com>; S, Ananth <ananth.s@intel.com>;
>> Miskell, Timothy <timothy.miskell@intel.com>; Keller, Jacob E
>> <jacob.e.keller@intel.com>; Czapnik, Lukasz
>> <lukasz.czapnik@intel.com>; Loktionov, Aleksandr
>> <aleksandr.loktionov@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
>> David S. Miller <davem@davemloft.net>; Eric Dumazet
>> <edumazet@google.com>; Paolo Abeni <pabeni@redhat.com>; Saeed Mahameed
>> <saeedm@nvidia.com>; Leon Romanovsky <leon@kernel.org>; Tariq Toukan
>> <tariqt@nvidia.com>; Mark Bloch <mbloch@nvidia.com>; Kitszel,
>> Przemyslaw <przemyslaw.kitszel@intel.com>
>> Subject: [PATCH iwl-next v1 14/15] ice: represent RSS LUTs as devlink
>> resources
>>
>> E800 family offers three kinds of RSS LUTs: VSI LUT (sized 64), GLOBAL
>> LUT (sized 256), and PF LUT (sized 2048). Until now the GLOBAL kind
>> was not used at all. There are two possible usages for it, subsequent
>> commit will give VF option to acquire it, and this one enables PF to
>> switch between PF LUT and GLOBAL LUT - switching to smaller one is,
>> again, to make it possible for VF to then acquire the former one.
>>
>> Devlink resources are used to let user show current usage and change
>> the allocation, see examples below.
>>
>> Default state on 8-port card, asking for aggregate "whole device"
>> usage, note that there are as many PF LUTs as there is PFs, and, for
>> e810, there are 16 GLOBAL LUTs:
>> $ devlink resource show devlink_index/11
>> devlink_index/11:
>>    name rss size 8 unit entry size_min 0 size_max 24 size_gran 1
>> dpipe_tables none
>>      resources:
>>        name lut_512 size 0 unit entry size_min 0 size_max 16 size_gran
>> 1 dpipe_tables none
>>        name lut_2048 size 8 unit entry size_min 0 size_max 8 size_gran
>> 1 dpipe_tables none
>>
>> Now let's add GLOBAL LUT for a single PF (on one-port NIC):
>> $ sudo devlink resource set pci/0000:18:00.0 path rss/lut_512 size 1
>> And show it's resources after that:
>> $ devlink resource show pci/0000:18:00.0
>> pci/0000:18:00.0:
>>    name rss size 2 unit entry size_min 0 size_max 2 size_gran 1
>> dpipe_tables none
>>      resources:
>>        name lut_512 size 1 unit entry size_min 0 size_max 1 size_gran 1
>> dpipe_tables none
>>        name lut_2048 size 1 unit entry size_min 0 size_max 1 size_gran
>> 1 dpipe_tables none Let's take the PF LUT out of that PF afterwards:
>> $ sudo devlink resource set pci/0000:18:00.0 path rss/lut_2048 size 0
>> now `ethtool -x $ifacename` will report smaller RSS table.
>>
>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/Makefile       |   1 +
>>   .../net/ethernet/intel/ice/devlink/resource.h |  19 +
>> drivers/net/ethernet/intel/ice/ice_adapter.h  |  40 ++
>>   drivers/net/ethernet/intel/ice/ice_common.h   |   1 +
>>   .../net/ethernet/intel/ice/devlink/resource.c | 469
>> ++++++++++++++++++  drivers/net/ethernet/intel/ice/ice_adapter.c  |
>> 12 +-
>>   drivers/net/ethernet/intel/ice/ice_common.c   |   2 +-
>>   drivers/net/ethernet/intel/ice/ice_lib.c      |  23 +-
>>   drivers/net/ethernet/intel/ice/ice_main.c     |  14 +-
>>   9 files changed, 573 insertions(+), 8 deletions(-)  create mode
>> 100644 drivers/net/ethernet/intel/ice/devlink/resource.h
>>   create mode 100644 drivers/net/ethernet/intel/ice/devlink/resource.c
>>
>> diff --git a/drivers/net/ethernet/intel/ice/Makefile
>> b/drivers/net/ethernet/intel/ice/Makefile
>> index 7f06d9bafe4a..0217ab6403de 100644
>> --- a/drivers/net/ethernet/intel/ice/Makefile
>> +++ b/drivers/net/ethernet/intel/ice/Makefile
>> @@ -37,6 +37,7 @@ ice-y := ice_main.o	\
>>   	 devlink/devlink.o	\
>>   	 devlink/health.o \
>>   	 devlink/port.o \
> 
> ...
> 
>> +
>> +static int ice_devl_res_take(struct ice_pf *pf,
>> +			     enum ice_devl_resource_id res_id, int slot,
>> +			     void *owner)
>> +{
>> +	struct ice_devl_resource *res = &pf->adapter-
>>> resources[res_id];
>> +	int end = slot == ICE_ANY_SLOT ? res->max_size : slot + 1;
>> +	int beg = slot == ICE_ANY_SLOT ? 0 : slot;
>> +	int err, new_id = ICE_ANY_SLOT;
>> +
>> +	for (int id = beg; id < end; id++) {
>> +		if (!res->owner[id]) {
>> +			new_id = id;
>> +			break;
>> +		}
>> +	}
>> +	if (new_id == ICE_ANY_SLOT)
>> +		return -ENOSPC;
>> +
>> +	if (res_id == ICE_RSS_LUT_GLOBAL) {
>> +		struct ice_vsi *vsi;
>> +		u16 lut_id;
>> +
>> +		err = ice_alloc_rss_global_lut(&pf->hw, &lut_id);
>> +		if (err)
>> +			return err;
>> +		if (lut_id != new_id)
>> +			return -ENOANO;
>   -ENOANO; looks for me very unusual choice.
> BTW won't LUT leak without calling ice_free_rss_global_lut() ?

I will replace it by WARN_ONCE() and just let use the ID we were
assigned by FW

> 
>> +
>> +		if (pf == owner)
>> +			vsi = ice_get_main_vsi(pf);
>> +		else
>> +			vsi = ice_get_vf_vsi(owner);
>> +
>> +		vsi->global_lut_id = new_id;
>> +	}
>> +
>> +	res->owner[new_id] = owner;
>> +	res->pf_id[new_id] = pf->hw.pf_id;
>> +	return new_id;
>> +}
> 
> ...
> 
>>
>>   	return status;
>>   }
>> --
>> 2.39.3
> 

