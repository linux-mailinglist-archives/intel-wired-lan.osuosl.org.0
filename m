Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BFAF8725C7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Mar 2024 18:36:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B02BC417B9;
	Tue,  5 Mar 2024 17:36:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SLKtkNYxU_aB; Tue,  5 Mar 2024 17:36:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C35A2400A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709660162;
	bh=eASCN6eafNlcogwIBRcqO8gvOTKavKMUbk76qDWSe/E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aG0AvtxHdooFBWAJHSjjRonWOxjoWVGx+cAE3ugS0pbqHJrjkw9KjlP0+Q6B3lbAn
	 edsAUKjP8eT8awcHulI4EhTZaYuVqBXHL45Pzoy373KvlJXviZkn9KYvYde08G8Xqq
	 3i4BM1htcaZVi7pJ8SPjT/NHRhBBqrDlsOeUnaQIQrV07VT/BfKn7/ZaaNI+HUUw1H
	 5W9Shn+NTTBfxSL8AZ0Nb+IVuDVL4Z/8aSPtFdJE1ReSAuUXd1thR7XM7a204x9+Ar
	 KhPcde05xZOGx+Q4e6Lb7/nNdeXiUgJLt9VYyNiCkJOUd4IqKMvJjAlZDlnAKpdhlq
	 S9eNuZ/yr+QWQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C35A2400A6;
	Tue,  5 Mar 2024 17:36:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 31AFA1BF3FD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 17:35:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1D056400A6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 17:35:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aZKpG93k9jtZ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Mar 2024 17:35:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 40E81404C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 40E81404C4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 40E81404C4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Mar 2024 17:35:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="8052155"
X-IronPort-AV: E=Sophos;i="6.06,206,1705392000"; 
   d="scan'208";a="8052155"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 09:35:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,206,1705392000"; d="scan'208";a="40339342"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Mar 2024 09:35:58 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Mar 2024 09:35:56 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Mar 2024 09:35:56 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 5 Mar 2024 09:35:56 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 5 Mar 2024 09:35:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f7Xd8la2YT6fgDgluTe8NBVFNwxqf0FoOyS2zhwr71CYiTLORP/XAIhPJMi2I9sJLEYVzl/L8DD4nT69re1jLj2DjNicRv8LSREiYFLzNQt7yAZkUKEhjjFOdrrzP6069MasTBmpVs1RIjlmVEqXadoaojK6+gWaQqspeMDIBppiTmP22uZkCDrCcSfDa2ZZLBBHHzm3hoPgaHhxbVoR/IK7Z5EyG2trMovrwrOQMz5kIzMbth+pMR+oms8Hnli4yKbwSaa6LjXQaE4An00ep357occBV+rfYq64r6zjP8BX6qd53MCOpK+3TdJU/3Y2hs7jHBKwB1kXwAUtzE5zSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eASCN6eafNlcogwIBRcqO8gvOTKavKMUbk76qDWSe/E=;
 b=iKocmI24XEjJuAAtXVHFuZptbGDhU9I5AzQ8h6IqVFuIQGFZoFq1wWvjk7FuDZFc8fsXfDwbaCNQttsGtdNYLFw6dr8SY1kX+P5kAfhyL+uxPfFi9sP2NwHuabQv/58KAGnizDt9zepYLf3VZcYMvrx74s9CcOAF1bZfF6KxTuSBJrPY7V7WMTl29jk4mloT/mKODXZ+r9rfFpCatbD4Gi9/jZeEZWp9idQGRUdTxc/4GmL5l4oHIDWy1ZlYsmV4rB/L0y6852I1s9c8qktAJ6sg3rwNBMW3Xm8DzfWfvNDwBrUObv9MhnPDLQYEtfEpldX4BKGmTriQUVLlL2Mx0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by PH8PR11MB6853.namprd11.prod.outlook.com (2603:10b6:510:22e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.23; Tue, 5 Mar
 2024 17:35:53 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9d72:f2c2:684b:6b50]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9d72:f2c2:684b:6b50%3]) with mapi id 15.20.7362.019; Tue, 5 Mar 2024
 17:35:52 +0000
Message-ID: <cb61bb19-ac6a-4271-b699-69b94d55b945@intel.com>
Date: Tue, 5 Mar 2024 09:35:51 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Simon Horman <horms@kernel.org>
References: <20240304230845.14934-1-jesse.brandeburg@intel.com>
 <20240305131704.GD2357@kernel.org>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
Autocrypt: addr=jesse.brandeburg@intel.com; keydata=
 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
 /fnLfll98Nhx
In-Reply-To: <20240305131704.GD2357@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0093.namprd03.prod.outlook.com
 (2603:10b6:303:b7::8) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|PH8PR11MB6853:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d92d457-656b-4beb-0e85-08dc3d3ab4a1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ySGn2MemIscMUfJCIfGB2XFE9yZmpZ0yS6YEQOHOOc1fX37692P3dGHaxfZk0CCqoWYol3J/zkJ3TcRepAONa0+I2bYc1VmIo6DMMmdPP3gEyt0kmxT/vvbcHIRvuahSiHm+GU69VFKdv0d0mGt71Xuwgk5AjLpSi1Ys+go4YFbIOQWyPmMqIZOe1/azndgtqESieFYxJBAZWHuqsEZwboPQf4zd3rKw7GkzW9cmxkPYpv74PN8M4q5UmVLxkHpNaNaRn0G8ZNRwKAPZpNVfrUqD83zAlCvu9dw9zyI4PazPOL8UPiGLLzBcbmIqtUTfatF2xWg84KH9c7TaMvpQc7ifO4Gx9Qc2jizCc0ORFSBgdpxF9VbzXk8ogfrP3Aa0D0c9iRFhLlx1c1OxVxqZ4EISIoRQrlWQMmBL6YCE5w9nSAQWHOY5Ncz7fW0NoumVcOvzd9/K0olCDuaQL8ye4QFAa0raRUMHiC6XiZzsioywH/yYW1LBSAif4teKKwjv5BTAuKG5/VJG3vf4MapB9NThtumvq5exeDXdaxyyhy4Uknl6WeBOn/10SpxmYYwdM+9jGYhrHwU6LbRXBNxAFxqWgVp+wjEviLpZFU41K/16UEtpBkfieD4GLpQXWXhnNL9Ju5LRLPPiUO640VQWjMyMOrW2RYOjh0bCPe4r3/A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nzg5RmV4SzhGZjF4M0kwZ1dZZE4zZW9JQnI2TFJNQTlSa1hxK1F6eG05cjUy?=
 =?utf-8?B?U3d3clcxSVk5dGdhNXRzQWRQWjYralNlWldHcmN5TmJXODNRRXd0T1czeGN6?=
 =?utf-8?B?YW5qbnBZQ3Azd2gwOVpKOGVGMS9vU3A2aFBESTlCNEh1SXpycXlCZWFOSE45?=
 =?utf-8?B?WitzZjNOY202WkVjS2VJMFhWTmR2Z3A5K1FabU92YmszVTJqTzJPQXVYNEp3?=
 =?utf-8?B?amlDRlFZaTd6YkVwQkxwT3lnV1k5VHJxVVVPMk1SMWRER1RrUEM4Q0hRT2Iy?=
 =?utf-8?B?UldMOWJBWStkNlhpV2lFa0VzQUcySmZrQXNZUW5IQ21LeXFLc3I5d3BWZGpo?=
 =?utf-8?B?ZEdKK2FEUFFrWEF6WnVwU0pkOWZiUURxSDdOOXltdHFBYW1MbUJMWUVZRUZi?=
 =?utf-8?B?UncwYWpzRjJQVHFwd05CZjZ2UlM0NVdUQ1dLU0dSOWRGZEZSc2ZLVmd4aEdD?=
 =?utf-8?B?d0FodXdvcko2M0tNSDh6MFIxUVRCK2JOMm5vUU14QSszSE00bnJvelBjSm0r?=
 =?utf-8?B?bkR4Y1lkdjRSeW9hK1BEVHBmNDBCdTQ5NmZSNUU3d2VkbUNnWWw3a014dnU0?=
 =?utf-8?B?SGZLQ1FlSzIwL2Q2U2hBWmNtSVhTaVlsazR0QVdNbld3bGNtUUdNV2dnekRv?=
 =?utf-8?B?WG1QanBTaEdHQmlaNWlGOTdGUk5RbEhpa3g1TXlCK0xDNjZQNHZjcUFtQ00w?=
 =?utf-8?B?Q3FrSWFlSzJCcnVIY2FidW9uUFNhWkVCWWd0YzJ1bFQrcUltbm1lWDZFVWdS?=
 =?utf-8?B?Y3QwVG9TUUhTOHpnQmh1c2Z0aUNOMVRRdXFYRHY3MjRPQUZNMTBnMTJqRklv?=
 =?utf-8?B?UEFwRFFoZnFhdEk5SUdETURxcVFmbVlQdStKMURDdERlS2dVZE0zRFBJUXJR?=
 =?utf-8?B?ZUhyMlBtd0xoMlVBYUkzQnBMSGUwdEE2bzNORFI0MUFETFlvWmlSNlFIMWE2?=
 =?utf-8?B?RzJEVFBTY3BFVkRoUlFBKzB5N0UzRlk2Z0p4dmFFNFdVcElWMUk0bEQ0aE5q?=
 =?utf-8?B?b0lndDZaNUg1LzE0Rk5YaGQxb25Ob20rU0pYdWE5b1pSNXRLanVERWtnaTN1?=
 =?utf-8?B?VWtPYnJDYlJoZjVHbHg5SkRTeUsrbWx0eFdhQ05ZZ3VBcTRXQjRFcFdrNkJ1?=
 =?utf-8?B?MHM4OXhVWHlvblh1eDhyYS8xbmQ2NFEzMzM0NGFrRmplanE0dHVnVlNkUGhV?=
 =?utf-8?B?bGlDaDBCN1RjVlFnTG5ja0FFTEhsY2lqOVpCV3N4dWNBSkRQWWVGZzEvL05r?=
 =?utf-8?B?YzVrY0pnYmExK2RZUk5oVE9EK3kvckVMbHJsbWRaRW9rdXBlbVJkUWZSZjJ0?=
 =?utf-8?B?Zyt4a3AxZWgva0t4M3lyVVdidVBtbmN4VEFoUDZsU0FQcHBSSkl2SVRhc1Vo?=
 =?utf-8?B?aS9RRGVsVFlnMGErYXc2VVJTakpTdUhSZ1B2eUJtL0dmeWZTZkxlZnNVU0Z4?=
 =?utf-8?B?SGFMeTlIZ3k4dHlObVpWRGdWV1kvQTFxODd4WU1wTTI2T3NackJHK0IzeE5n?=
 =?utf-8?B?SW9KcFBjRkFXbEtaSFRHeTdhbGl3UEh5Ni9HYU9QYjJxTy9PS2J1QVhabEVH?=
 =?utf-8?B?Z0lQVXRVUlBzQWgxNUlhZUJkVjBlaUVCclByUnE2VzYxTytqMnF6QTV4Mkt5?=
 =?utf-8?B?dEJIa3dNaWo2ZmJoUlUyakMvakFhMzVyaWV5QitqRUp4RSsxQjViYW9VYUti?=
 =?utf-8?B?bFVkY0swVFJJcndnY2kxSnBmVjVSZ0phODE0ekpkSnRuV2Y4bUpYbC83U2hT?=
 =?utf-8?B?bVdUWFBqdUVMOGgwbkF4NllieDNpM3Y0QlNyQ1h4aENXSkxianZicktzdWgx?=
 =?utf-8?B?d2Z3eCtYN1RiSFZSc1ZrdkU3bkhSZGVtcndLNXFuRmwzaUY0ekJmOGpPNkIz?=
 =?utf-8?B?MG1HbU5ETnRCKzdNRkxFOG03Y0J5TTVqMGZtUEMwZmFRb2czcDlhY2g5cWcw?=
 =?utf-8?B?dWFNdlFCbWpRTnZNU1F3S3hOR0lBbXlQajhMemtLRndLczJIRi9MRVltUTN3?=
 =?utf-8?B?clZkeEZBS2kyOFZ0ZnRza1lpQkEzTlJmSnZvbEExVVBDWDU1T3VnNkV3c28r?=
 =?utf-8?B?MUtyTmMrRXBkQzRUNUNOQjAvc0lmVG51R1ZEYkVGQVFocVRZMlBSaXNrMnFY?=
 =?utf-8?B?R3V4eFk5cTArZDd0R3dkc1Z5VERNbTdvNDY1RGJmVEJ0UFRHZFg0UXJvbDYz?=
 =?utf-8?B?K0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d92d457-656b-4beb-0e85-08dc3d3ab4a1
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2024 17:35:52.8832 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iKvjkg9o8Z8l8Gw8eK9kA+SHu13U+MIEaf0gin8dTAqc0U1rlPBNeUDU+k4bZdqaLCBNE6dwSNA6RlOafddU12FlJ/pRFHYeuQIUZQWPX4c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6853
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709660158; x=1741196158;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9xlbKbQkSNYU7vSMlrICLkfOQ3DgnUEKAoEqIU6OnVY=;
 b=M8d559QKzdTq6ui1kCldxeQOiVoetBAxhBEwE3w/c5eypBom6p1UQMz4
 oo2lsymrzDeLybUdyED65NnVi5GK8EV423hhvfsFbEiIKeqUciwQ5Huw4
 1iUraelONrAHuAEMCDME/8YSd0fjfUXLJz0xv8KRiShISPdDVgAnnDrue
 dtfZ+qXeFDDLWwPsVTiPYMeG47F8FSDcT0rOIM27ml+LD+TVJ5zULts5l
 gZc/eYPdrwoRUs9v5cJIZWj5W/WWDFJ+UqEalNZydDSW9beqzAG5dot3f
 0FmS9tnUifHWM3TPbEP9DmItxmDJbdXMuOYp9iaTOu88ay0R3gRpH5aRG
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=M8d559QK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix bug with suspend
 and rebuild
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David
 S. Miller" <davem@davemloft.net>, Robert Elliott <elliott@hpe.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/5/2024 5:17 AM, Simon Horman wrote:
 --- a/drivers/net/ethernet/intel/ice/ice_lib.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
>> @@ -3238,7 +3238,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
>>  {
>>  	struct ice_vsi_cfg_params params = {};
>>  	struct ice_coalesce_stored *coalesce;
>> -	int prev_num_q_vectors = 0;
>> +	int prev_num_q_vectors;
>>  	struct ice_pf *pf;
>>  	int ret;
>>  
>> @@ -3252,13 +3252,6 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
>>  	if (WARN_ON(vsi->type == ICE_VSI_VF && !vsi->vf))
>>  		return -EINVAL;
>>  
>> -	coalesce = kcalloc(vsi->num_q_vectors,
>> -			   sizeof(struct ice_coalesce_stored), GFP_KERNEL);
>> -	if (!coalesce)
>> -		return -ENOMEM;
>> -
>> -	prev_num_q_vectors = ice_vsi_rebuild_get_coalesce(vsi, coalesce);
>> -
>>  	ret = ice_vsi_realloc_stat_arrays(vsi);
>>  	if (ret)
>>  		goto err_vsi_cfg;
>> @@ -3268,6 +3261,13 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
>>  	if (ret)
>>  		goto err_vsi_cfg;
> 
> Hi Jesse,
> 
> the label above will result in a call to kfree(coalesce).
> However, coalesce is now uninitialised until the following line executes.

Thanks Simon, you're right! And it figures, The internal static analysis
runs caught this only after I sent the patch to the list.

One fix is to NULL the initialization of coalesce, which solves the
problem with a one-liner, but I'll look more today at whether I should
just move the label or something else.

