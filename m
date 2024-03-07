Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 210C1874522
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Mar 2024 01:28:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A3A764179D;
	Thu,  7 Mar 2024 00:28:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dlfIvmlgubOv; Thu,  7 Mar 2024 00:28:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0D1041689
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709771287;
	bh=ez5Yrpuq4D4ylLyxQ099cBFFJuiLpBotaWDUS4tvHC4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SH+9K2U2PCcLGUJDmvG8tYAkhmp3ceA8LBKSZEptPtJVIrsmroy05uM3jVkBzGdRT
	 +KXAOAwUqimgStXQ17WyfIGZeyf3lrM3cCrhQvl8H46JE8JKFpn/02HF7TTlGSFZ8W
	 vpBt9cV0SuInZ3x7nhRB4/X4JUGtb7hhwGaU06TaR+TPUNMZbOnouFErWlQ8Kb2F9F
	 L6klcvUy14U3B1+TS7VpYTfJOy9ZiLKW5v+Oig+BBgFhMyTfUqS/62aDPp1ABKm/4d
	 FbYOXvm7k3gZch8GFWSCzF5lQ2+YZ5dEWX0spIKAi39FTfn7dU6oRCzeey5SAvS65R
	 +Aet9+wyOIvcw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D0D1041689;
	Thu,  7 Mar 2024 00:28:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BB9CB1BF488
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 00:28:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B4C0A41689
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 00:28:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c2PoDe-jhDlp for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Mar 2024 00:28:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EBD8E40475
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBD8E40475
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EBD8E40475
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 00:28:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11005"; a="4999350"
X-IronPort-AV: E=Sophos;i="6.06,209,1705392000"; 
   d="scan'208";a="4999350"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 16:28:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,209,1705392000"; d="scan'208";a="14514470"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2024 16:28:03 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 16:28:02 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Mar 2024 16:28:02 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Mar 2024 16:28:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eMW0IR1C7uf8WkdKl1wS4B++L5fzjs6UdbitZDDeEzZmbX+JK2Df4NUj+7l8xXEgciAtUt21FEKIWlbXxv2S1yybwIImTZlKTnw3RZBDnfhvTc6IxdsMMUEZpGJ2dlU4xLbXj0RBfdMKmimbDqrLaGYHoYq4EmDuCC6YTmED4I+8ZDfTXq+TXGHEPiATDZLNL8zOCVvHCxwnYgmTTYtydtJJRotIBaEAfhLD7/AJD7PQgdjrJ6AG0QqlGP8s81TnOzAx0oIDtOdAW4XVS7/lP/3yl8w8EJgUEljD10EVmYdSLwegoOwWJmx4Lm1rUWqsZfeBUCdJnpTr9/n62v0oyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ez5Yrpuq4D4ylLyxQ099cBFFJuiLpBotaWDUS4tvHC4=;
 b=lDpquk72vZwJsYpoaczJ/wCtShs96sUgIqd5f2wTJb+2Xw2e+6G4aJe3QEi11yA3TsyJh5pJiA5sA31WK0PqTYqQMZqB7Yi+W9019o6p/07g+bNGoCXY7P+z78ogTN6aq9FHzJaDFHVcI6Sos08NAFtuA00MdMX8+xsFM2JlZ+4t2TilsXA1orMDB6sTvQ2qTPJFuy3GymwhJBeb8DY+1r/DkVDxLCose6itlLGvtH1LAu4GUfLLxIItbzZGIWF65PgnlsiLkMcRzbm3M8qQQCWdifkr2B2mFEjojiUCTaX3lZ/bn1dyJve4Lc04Nzi3vd9aD1QyJtkQzw/6izibMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by DM4PR11MB8203.namprd11.prod.outlook.com (2603:10b6:8:187::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.23; Thu, 7 Mar
 2024 00:27:59 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::9c80:a200:48a2:b308%4]) with mapi id 15.20.7362.019; Thu, 7 Mar 2024
 00:27:59 +0000
Message-ID: <d9529518-c6f5-c64f-d635-95da64ed6d65@intel.com>
Date: Wed, 6 Mar 2024 16:27:36 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Erwan Velu <erwanaliasr1@gmail.com>
References: <20240227192704.376176-1-e.velu@criteo.com>
 <827d22da-fb32-1012-422d-d283b28ce5ec@intel.com>
 <CAL2Jzuzf54qcsCM4CAUOLaogWrBL=Mm4ma_4pRbaf8A=dZeOFQ@mail.gmail.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <CAL2Jzuzf54qcsCM4CAUOLaogWrBL=Mm4ma_4pRbaf8A=dZeOFQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR16CA0011.namprd16.prod.outlook.com (2603:10b6:907::24)
 To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|DM4PR11MB8203:EE_
X-MS-Office365-Filtering-Correlation-Id: 733c46a6-9acd-4a9e-f1fb-08dc3e3d7169
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uzG8hxRNx/ha72BOmYiWDfqFpk8u6VYQ+CUtWKLxG42dxbwsaZtX/voyhVIq8tP1Ygu6pqDJgwDH4YxxMPAnqYmR8uYA14CSd1n9uuWVszJka0XHesiPUSV4Peod9SZlgm/6wnJSsDN2DRXoG1nVH4QQ3FlrQQSnxVjT1oHkLPjuSw28vIdJ3mm6Esq9oMGXfDIKYMFdFUCexA+IEBaajAAzL5OPzgYQZtI5uwNuqebHn4yHBPICfarzwx5RLWn9wRwkqENExvXyCo5gLieew4oOHc2gGOUfHeYpi/linaByhgowfGZrxkGUkgCGEXvwZcFmj4cvlGO8bTE9PDQ5fdRXIbUubDZ749oaqKreSNA4pUoWXYSJ8S56OpQGHBr6JrXOjmK3UIMuvcgYtK5RHZ1KTVYFaNsNiFHMMjaU25G62RbAPVLb7cCRG1uCObK4TRyuphMBtuWF1HVvrAz7bJKVLENX26D12Hwo9kXCEAjrcqH9U/q7VrY7OySuudTHxFEvNLa0WvCKBsIPYff0a6gwB4MyYnCAwlitJUD9NTKn/kahBpr4aZiqNkcQ1Vrr+8mxka+v7EhcN9NCR7x7F7681EoJWe6zs6HoRgu4nNDTJGu3+HWyBHSQ5izZ1xjuSlTPIGXbDTA1ALZYiBkOw/X4lul7fS0RY6ZtMIjvHrs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U2libFFCRzBERXVBZ0N1dGpmSXB3NkpaclpRVHFqQmFvc1lwdC8xcWdSNWhS?=
 =?utf-8?B?aS85VWgzb1ZOZVhFbWp1VWRCQjJvYUJTVkJCK2YyUzB6cjU4L2pJZXdKRzVB?=
 =?utf-8?B?UU1vSnhQOXRKMFI4WEZ1a1pxd0ZPZFVlbHhSMVhOWEJkNHpHU1pBWFJQOUto?=
 =?utf-8?B?VkFIUjlTbVQzbU8yZ05oYjhBSkJGMW8rdEQrWTdtK0toUVY0bDViV0tFMHhp?=
 =?utf-8?B?ckpVQWd3K005b3VqWEk1aHNGVEYzREJHSjNyaDdzUzRTditwNEZ0OG9LZkNl?=
 =?utf-8?B?Q0VkdjBTOW1PdnNJWDRkaXZNelJpZytTcFZYdStkVHUzVjNnL2xSd09HUE5s?=
 =?utf-8?B?a0hvSXg0Mm5ONW9Hejc3Y2pweEhsdWFjdVB2TzVUbVhlSXJ1dzVQQ1RhN2tC?=
 =?utf-8?B?Ui9ubm9KUjRtSWt3dE5Na2hYTmkzUDFVVE5DU3I0a1E0OHRYeTVZZW1SN0lB?=
 =?utf-8?B?OTJKSnQ0TjZkREtqNWM4QUIwWUUzM3RpYUdsNHprOFh1bjEvcmFYSHlTaWZ5?=
 =?utf-8?B?RW5HeU1iSXJCQUk5OE1JZCtNcThxTTFJeUZNYUFERFNLUi80TFRGcmo4L2Q4?=
 =?utf-8?B?aTB5cnplNEJXOER4RjFwZVQ0aEF6MGsvM2xGSmRIaVcvTEVuTHZUbll3S1BJ?=
 =?utf-8?B?bUtPOUpFK2ErTmJrR2tmWjVKVGEvSUg2eEpXekFTYkk1Q09tUXNPTTBrL0I4?=
 =?utf-8?B?NUkvR3R5RFZzSTVweWRNd2Vwc2FRZWpvNHB0cHhUYjcyTTlPWDlvVEtoQStX?=
 =?utf-8?B?d3BlU2Q1WHRubG5mSm9NNnpTMXJBOHc1SnlrSlROSVVKZmlvSEZmTTZ3YVV3?=
 =?utf-8?B?RTE4WkxpRHVIaTYxZzhNVXYwaGl6Y295ZVpZajRqNXZwUkxZN3pKWnl4eWRZ?=
 =?utf-8?B?QWZaTDlrRllyYm41bjZUZDFNNUNPNmkzZGttTFMvOERwZzZVRGorZUhNYXJk?=
 =?utf-8?B?MkplMkI3WkhYNnZJR05GSUVkNmdWN0NMNlFHSW1YeGV6RFZCeUt5MmV4Ky9q?=
 =?utf-8?B?c2RDaGtqem9weWZhU05UdXUwU005czd6RUxjWmRNOGxHQXpTdVNFUHNHa1FF?=
 =?utf-8?B?NTZQNG5KQUgvSG93dXc4WnRteVZlNkM5VnJOcys4L2tuc0FRUjBlM2xURnh4?=
 =?utf-8?B?WnNjU1Ura083YmgrQ0JSbXZ6dFBoUzlzbWJFTXJwUm9FcnNtdTJmNkNEamRa?=
 =?utf-8?B?ak9vRXlHQ3hBbzFvc21sd1p3QnRyQnc5OGJwRitZV3BDOG9jN0tNSFQ1ZlI4?=
 =?utf-8?B?OEFwVE5KMzlpZlNEM0lmc2dSYThqWmdFVjFBVjlaeE9xREFKRTFkOVV0YXRa?=
 =?utf-8?B?UG9yLytaRXF3bnZLZ2w3eFJNYTA4UEI0SFM2eWsvZUNETk5jZHlHd0E5MTJM?=
 =?utf-8?B?VHZEMWsxYjQxekcySEx4SnZRNytVYi83UVZQQ0cyWCthL2tUZy9FQTYrYjFV?=
 =?utf-8?B?cCtBaWd3dG1oR3FVMXRSVldqMllCNWFFaFNtN2RISlRvUCtoYkE0Z1hsUkc1?=
 =?utf-8?B?ZFM0ajU5Ymc5eGF4N0tReXo0UExKOVN6eDJnUXJBcS8zTjJ1eWtNMnpyY1Yx?=
 =?utf-8?B?M1hzZXdyT1dtc0FUcnRhbzhoQXdYKzV1T25uZVVFU0Q3Z2FBSXlNbFRGZk01?=
 =?utf-8?B?N3lQdVJMMnNMVlNXK1g1dGl5SkR4T3o3L1NiWVZQamJRaHdHTUpBLyt2N0FK?=
 =?utf-8?B?NVYwbk5HMXRiQnNVdlBmZm14TjJ1UUU2SjM4LzZNZWN3YSt2a0ZMYmlaZG5P?=
 =?utf-8?B?Z3hJdXhuelFxeFR3MWNBcWJEREp6N0tkTW0yVXRZTXFYb1ZsUlBpdlBnTlhP?=
 =?utf-8?B?V0JKVDBFQlVoY1llVzVORVZEQXlNYVBRQjN4bFZDSnA3UVZicStsYlRESFoz?=
 =?utf-8?B?VitUQVpqVFkyRWdiWmpFMUNSNlhlWjVFWHBGRXRGZVJrSUpVT0NFQkt1Z3pv?=
 =?utf-8?B?ZmxqQ2dmeEpPU05ENzFnVTdSRHZPcDVKZlN1cDB4RU9PVktJQmU5NVhULzVV?=
 =?utf-8?B?WWNTRDZBc3NtUVVSdTFKRHU0SUFiWnZyNHAxTjdEd2R2RWV1eVJRNmdMUUpB?=
 =?utf-8?B?bCtwZzJuM2JPYzZUak1vTkwzdzlZR25oZ1pUVHpPQVZqRFhQdTI4Ym1WMEt5?=
 =?utf-8?B?d2RkbzZjM2hFcDkvZGVib3orQzU3VG5DeE02cHVTZ29yaGlGbTZvd1dCV1lK?=
 =?utf-8?B?akE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 733c46a6-9acd-4a9e-f1fb-08dc3e3d7169
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2024 00:27:59.8469 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MVAUYdaRoa9XVZpZfZvLbjCrdjUoO7Rlo3SU0Pf2hNejXnMcPs55z7mDDCPjjHjBoycX4CsDtkwukfvGJQBDxSIPG0ZkXaLtj8dV/2iDdfM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8203
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709771284; x=1741307284;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dD/n4g9mSkAwfL8KDuAvcAKbDw4O4IeDzNTc+CEqw9U=;
 b=Y5+snZqwhArt/MbZmWATYCuaRPf5ee6KZ72I5xUg0Fj34WGbAEkIRI53
 gV8ig4/RoH2S/bxqDKP7GjiSSf94HP07rY/OW5UB3jT12ExTtkyL9XT+F
 GBbnS99COjOgpfTH9JORizTUM8UT7whM5wjLATYskVGNZsZhsKioz9e4q
 HgmcrkZuzyRgWYIp4OxLDhl7yDh72SYiCQJYe3yHLa1AznwN/S0yqWXMH
 W4SR1rFfxGgFJcaicDMbRr82EoMv2RSiPYp5NT0NqzbDN30L8Xqkag+pK
 4XJoQJLzXeFvyK7rLOvZ8JSHZz7qY1VU9i9I+1QSpTzxghMQeBTrGMHfq
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Y5+snZqw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Prevent setting MTU if greater
 than MFS
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
Cc: Erwan Velu <e.velu@criteo.com>, linux-kernel@vger.kernel.org, Eric
 Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/4/2024 6:22 PM, Erwan Velu wrote:
> I was also wondering if I shouldn't subtract I40E_PACKET_HDR_PAD from
> the mfs to be more accurate, can you confirm this ?

Yes, you're correct, we should take the packet header out however...

> If one can have a look at what is the exact procedure to fix the MFS
> size when too small, that would be lovely/ideal in addition to my
> patch.

... as you allude to here, we should resolve the MFS size issue.

You were on that right track (as mentioned in your commit message)

 > To fix this case, it would have been ideal to increase the MFS,
 > via i40e_aqc_opc_set_mac_config, but I didn't found a reliable way to 
do it.

The ice driver is doing this with the ice_aq_set_mac_cfg() call. You 
should be able to model the same here.

Thanks,
Tony
