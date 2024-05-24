Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 68CC48CDEF5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 May 2024 02:43:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0657482779;
	Fri, 24 May 2024 00:43:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4TdpfCsjUDXu; Fri, 24 May 2024 00:43:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 385A382768
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716511420;
	bh=5EXTc3DidOT8ve4v3jGuryMXB3saB+8YcS/4GVeiybw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ejjCNpQ9Lxn7QLs9QSu7ccrIQUSon/HQVKoh4mkRyrs3LQLIpWU97lu5yAZUL2v3M
	 CcqHSOqlwCqXVO2h+Ccnx/W267d8tzq9B1blNs1sC6KgwggK8vZwnhngKqiBaKvSdd
	 8mzxtYiUnUcDG81J9QmHQHc/oe8ya+5rt/XRnHKJan1Cng44B4/JLhM+UX14p7ohfA
	 tcMNZBQxouCrtJ2i+/4ccRbcDChnI5IKM+/X4v+O2XPXohy/iAiMMMmMmNxxo/l+WA
	 /PI5HTM7DIxGdO/XKybsCSUzrjAiX1bQ+eipnc2+nqhfKeRxCPgz/7BFliEp7IQUhr
	 +9C9ohsXp9RkQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 385A382768;
	Fri, 24 May 2024 00:43:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DA5BC1CEC71
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 00:43:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D312360662
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 00:43:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Py7KyunQi31c for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 May 2024 00:43:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1935F6065C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1935F6065C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1935F6065C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 00:43:36 +0000 (UTC)
X-CSE-ConnectionGUID: xAFwfoHqT4ukCffyuWq2GQ==
X-CSE-MsgGUID: kdMyuMf+SymwDjGBOQ5f6g==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="13049159"
X-IronPort-AV: E=Sophos;i="6.08,184,1712646000"; d="scan'208";a="13049159"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 17:43:36 -0700
X-CSE-ConnectionGUID: 6ENz7Q01QxWTcwLmkhdUCg==
X-CSE-MsgGUID: 34fP0lcpTwadF9LiZC9FWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,184,1712646000"; d="scan'208";a="71260784"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 May 2024 17:43:36 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 17:43:35 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 23 May 2024 17:43:35 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 23 May 2024 17:43:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bCiCNF/RQCOLxmwpHxSkmwKA/eeRCSCZzCYuPJD4ylgSjimKRiFxASGQRC3zqDynkJssk2R5e+Nf280WljHQf+1PFZJDSwkUb+0978UPrrJ27e4Vj1Y5bf5kwqpZimtwk2ylH1+taUG80NAZ67skO7C95RwD53DgxV94Q8d05KbI7+AtV3ISgS+2fCriu95wxY+J5x1b9/bTZdv364+pNS8TDTK1IbNihQ2p9CIu5Kye2aiTaJCRtCnK+PHTMRbdgV9fKvpARVEd3mr+jjQ025i+alQuzMV0Rx3yLFE4T8ibPvX5sjwKqraMnjSf+Wg0S2ubyjx/8pbpKCErnXoQ2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5EXTc3DidOT8ve4v3jGuryMXB3saB+8YcS/4GVeiybw=;
 b=BaDh2729GVCtEs7NjRq0mceGkluYR3OHRzReVMZCRtfb/qJb6Y3uQjZ/nP3/Yq8eqMFJN+L7nEmdfSxCwJyb81bC9+mzoA+8WqJ1HOaGMPUjnjEIbne80aCIdxFi98EN6lR9ipvpLLog4UCclpsLm699rvW/9v0Rm4t3N+iYgwPKXxjA8JEdYyeEqf3w1exKt3NJ68/Q+7y3S1N7zAvidNcXv4pUxREFJpb0XwHD1dHwLlrPqhYPq18YeZCibi1ZpuM1vLtAe7/1rd2wkruF79QWYbW4K5iaFLOlRDLczbamV7mLcQ43sXNgWPQR98FlRf9xPEiiSPzXtWcsGYbYcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CY8PR11MB6939.namprd11.prod.outlook.com (2603:10b6:930:59::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.22; Fri, 24 May
 2024 00:43:33 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7611.016; Fri, 24 May 2024
 00:43:31 +0000
Message-ID: <c3eadbc5-2585-4154-a429-d3b16726020b@intel.com>
Date: Thu, 23 May 2024 17:43:29 -0700
User-Agent: Mozilla Thunderbird
To: Anil Samal <anil.samal@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20240510065243.906877-1-anil.samal@intel.com>
 <20240510065243.906877-2-anil.samal@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240510065243.906877-2-anil.samal@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0321.namprd04.prod.outlook.com
 (2603:10b6:303:82::26) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CY8PR11MB6939:EE_
X-MS-Office365-Filtering-Correlation-Id: a9a681b9-d7eb-40eb-98c8-08dc7b8a88c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z0VJQ0FWcm52MmhIeXgyS29nbHUyKzlIM2x5dDBTWWI1WTNSSElTRkZMRnM3?=
 =?utf-8?B?T2dSd0tKRkNLZndwWlg3bnpyWkVaYWpEcEFBd2xxbnR6aUdxbDlEMjdIS1Nw?=
 =?utf-8?B?N2U1UnZ4Uk1tRlVUZGN6ak1WSktEZ0Nta29iRExWMFgydVFjN3ArRlI4dWNX?=
 =?utf-8?B?SXFZc2RNZ24wS0Y2LytFQkFXTGJrY2IzN2drQlZNNlEvSDI5ZmY5aEF1b2N5?=
 =?utf-8?B?SjZWSmVhdEVRL016VHlzeFgzYWUrMExQdERCYWhtZW9mM080dXI1WXFBMGc3?=
 =?utf-8?B?Q3Y4Q2grd0dISEZETVRGcDl6QzZScUwva0dPM0RBOHJNZlUvV3lZWC9UNjl5?=
 =?utf-8?B?SXltZDdIMkNZV00xRXVvVTlQRFQwWW1TZlh1WjJtRTk0NGFPK21EK3ZtRmlI?=
 =?utf-8?B?U2JHSWY1V2J0V1Y5V3lXU3RDU3c4dXRjSENzNlU1bkRULzErb0hlUDdYNmlx?=
 =?utf-8?B?WFh0YW80UGRnLzhDamZXY0thOVdPeXFJUHZiR09TLytDbjlIczRwNXJJaGd1?=
 =?utf-8?B?TjI5cVV1V0tac3N6aVhrWHpPWVRIR3dzVkExSVd1RTBsKyswWVpSSGU1WnZX?=
 =?utf-8?B?bjRvWFRxN2t6cTlUUXVBbjJ1dkNxSyt1WEFRQjBUTldyR3hwb0o0TitUajFv?=
 =?utf-8?B?ejA4OVBBUW9SVm9CTG5PUmtYRDVqa20rbnFMbFI2eWIyeU1CYUVCWHVQOGln?=
 =?utf-8?B?RmRFQjQ2UjloWUViTVN4bitVK3RKRUJRSXZseHR4aTlLdjZEa3gzOHZvNnVR?=
 =?utf-8?B?LzNCRnFMMkNsT3lSVTBkR0h6d2pXdjl3VDIvNExiQUM3ZWZjU0dOWXh2QlhW?=
 =?utf-8?B?aEpuWVIwSm9kS0YyWWp3V3ZkeC8vVUtycWhjcGxLVnBvaVp2M1kwMVd5U1FW?=
 =?utf-8?B?N1Brblc0aDRPaWlKN1p5SHlTNmpMd1RuMDdJNGYvdisxYWlGQnpkaWVodTdn?=
 =?utf-8?B?K0RRaHZiYTk0cjBtV1ZnSGgvMTNYcmlGVUM3UUZuUTllZG5lYVkyVTc0VUtu?=
 =?utf-8?B?eEs4TEhkUU0vOS81d1NwR21KSjhremhSVFBaSm1aRVVNVHF3UExXNXUyOG0y?=
 =?utf-8?B?WnM0b3lqeU9MTU9XVTRwTS9EcnZ1bWl1bUlYb1RTd3VWUFBzOVBMRFdVR2I3?=
 =?utf-8?B?UTJFaFdReDN5VkdWVXVGUVdoMW9SVHZjak8ycmdXY0NSNTFEVnJxbGdNOXEr?=
 =?utf-8?B?dUpvS0VyUkNKZGlNVjd3Qmt3dFFaYi9GV0p0VEZMeEMraCtkRG93Ym80VU5w?=
 =?utf-8?B?bFRwdTBYTG9mMXhiVkdLaG9rTUNobEF6UXJ3Vi9NVkZ6dXhyV0ZnaDlkQk1K?=
 =?utf-8?B?c0FvblBhWEFGUUNMc2JRNzByeG1oUzVxY1VlajNMZ0tZL0FpTlVYQlVrNWxZ?=
 =?utf-8?B?c3JEbnYyTEJEeTdFd3Zia0JEb2pMbmN0dldReUlITThneWl0UjM0UDVsdjJl?=
 =?utf-8?B?MmRiZ0JyeElwU3RRVk5jeWpOSlowem43TkNtbzZ6K3QxUXd1a0JDRm5kaUNQ?=
 =?utf-8?B?bHNmeUZzMEkxNnZUL0tiUEpFV3M5bVNuNjhwYUlkNHA2RVVOQTlFN08reHlK?=
 =?utf-8?B?a0ZyYzJlblJ4NUZNMWxHVUFocm12dGtkRXo4Vy9uMndndzI1OVRWeFJSdnBo?=
 =?utf-8?B?VWROZFVyZlMyT3BkcXNhTXBPa3hkM2t5MStkY05GcFJNSjFqNFlVcEVTcWVY?=
 =?utf-8?B?QVNKM2V4MEtxeUVCeG8zRGpnYVNsdEhZeXhTRUpTOGEzdTVZNmNBV0V3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VG1nZGpDOVQwTUFzUEFpUThLL2ZvTkNVdnE0ckgydUFnWENta1lqeHFGV0Y0?=
 =?utf-8?B?VzRZZnRWQ2dPeFYxNFFlWCs2cXI1Y2hjUnFKQW96bXMxV2F5aXFBYWVqZ3gy?=
 =?utf-8?B?b3hGQ1BBQ2dhMGpoOWJ0TWZwZXFOUlA3S2piKzlVbTY4WmFKbHIrUlVVRERR?=
 =?utf-8?B?WW50VnhmODhDbnpYY3cwQXRKM3RzVzdOd2xDK3dCSEJkQnJJdUxRQXdjL21I?=
 =?utf-8?B?aitPUi8wbS9lVFNudG01L2p5QkVPYWVZMC9qUnBmMlVJbmhmU1hrdjEvM2hY?=
 =?utf-8?B?R2w3NUJ4SitaTlpUUHE1ZmJLWUdZamJQRVBLOHNhWkc3UllRUGhjWTFjNVls?=
 =?utf-8?B?Unhxc2lrQTJtUDc3aVZMUlFTWXJkamJTamozM3dpcnVHWWdpWTNTZVJ3ckJK?=
 =?utf-8?B?TklqWng0UVpRaGZGMjdMV0EyRVBtblBIN3kwMmxzSnlXaitqSnpkSFdkL2pi?=
 =?utf-8?B?bHVub0Y4Q1hDWnBqTERHYWUxV1FsYmVsZWdXdHFxYVgrSkdPYVJsTHZScVBL?=
 =?utf-8?B?SWF5bmxhSXgxclpSL01hdTVDRkJPcUdTRGdUUjRqenlZVmNhekVrcnRrczlW?=
 =?utf-8?B?OEg2TjZCTjJ0V1JmVUxIck5RRi9qOWg1YjRxMXIzR1E3K0pTQUg2bEg0c09u?=
 =?utf-8?B?Y0VTY2VDNG9XYkRYUG15eWFSL2NYclBqUHRULzFsbzBtVEpFWTVzSmtLclJR?=
 =?utf-8?B?czFsUGlrSFVBaVFLRXU4STgwMW5NNlRIRzIvUVRDaGNUVGlvaVpHMjB0em5r?=
 =?utf-8?B?bStkU0FJZ2dZQk0rMk1sRTRLZW9zNmx4RlB5NGtOckV2Y3hucmZpQnBRWEcz?=
 =?utf-8?B?Ymw0ZVBzNlZvRUpJc0VRdTh3c3ZQWG4yNjZjMTQzUjFYT0FnMjNQVFZsbFIx?=
 =?utf-8?B?bG1PakFUNDFGdUE4dG9KaUdnNENxYWl5NU83TmNlcXJ1ZXhSR0lyNkhUL3FX?=
 =?utf-8?B?bU0yTDUxenNsbHpJTEFRNTk4RVpkM1JYWGk3VHBvb2hVeFlXKzdpY1RKRkdR?=
 =?utf-8?B?aEFUZVg4UVc1cUlzTGg2WWtJbW9MWjlnK2g0L2FKZWo1V3lGK0VBZWJiNHdF?=
 =?utf-8?B?SnlOSDJQS1BtV1lXbGJzYm9oQXVSNU9lMjNhN203Q3gydlA4MkNGcGU2aHRl?=
 =?utf-8?B?dFRualppWmRKOGlZYTNQQlVZWTBITGxOdWFyREhVanpaNnJPR3ozQmZXa1Ry?=
 =?utf-8?B?YXErV0pFcTk4SnM1THNHeVlMMndMUkJYcjlBRGtvOVZ2SUJUNDlxckNUZkt2?=
 =?utf-8?B?dWJNT2hySyticTh6MG5FenkzcmpUOE8vZktwK0lGT2p4VC9qZTR3blo3NWU3?=
 =?utf-8?B?V081eHpGTVF0eDNSY0NNNjJqWmUwM0tzWWU0QjN5SEl1NWJuRFUwY1F6SnRT?=
 =?utf-8?B?M0JIeE9mb2tBVmhhcHNuUVhBOUJkc1VsZHNqcGNPQkIxaFF1ODZuUlVxWWM1?=
 =?utf-8?B?dk1JVU81WXc3WkhqbXRzL1NkMkdYdjdQSklzVWpWTDlsTjI4VTY5RlNJRVJN?=
 =?utf-8?B?Z2RudWFkNjVQdTdWY1RnQk0wUWZoUi83LzdXYURNRUNDQnpqMFNkRTRldW1R?=
 =?utf-8?B?MXlUWjg2NjUrbVRHWVBzWDdkMHpCeVBvRVhPajFhdnhkTGYxRUZIbThnWExy?=
 =?utf-8?B?c1hITTNZTTMyZm5zSy9YRDl5bnhJL2tsWDBYc1VpS2FVNlllK1lRREZtcVZI?=
 =?utf-8?B?VzFEb0ZPOXFqSU50TXo2bVdiZGdSZFJ6Q1p5R2VKS0hzN1M4VFdZelBsNFlM?=
 =?utf-8?B?c3lja0NxMmFIUEVJSG9LOGlIQlV5aFNTYU12SkZEQjcxUVErQWJxK0I3MkxP?=
 =?utf-8?B?cDRyM1RhTkkvSWIvR2pPdFFkOXlnK1hyK1FUQytrTE11cThjV0E2RU4xajBE?=
 =?utf-8?B?THlxdENzSEk0N0NBbTBzNW5jQ1ZyQWlCSHo4RklONkZ4Z2JYQlZRc0xJMnZF?=
 =?utf-8?B?QVVwZDZqRjVRQ21ZSlhJK0VIUUVDbU5NNHZ4OTl5bFBjdDVpeG1VNWJlOGdQ?=
 =?utf-8?B?bk9La2VQV3JVd3k0Qk1CT292M3luUzFQUnlHaVlkcDYzdFRIdW1Kbkp3SitQ?=
 =?utf-8?B?S1phNmRVckEvcHdtUmcxaHRCdHlMdDd1THZIQlYyR1ZuSnd3clBpc1kxYkRw?=
 =?utf-8?B?UXpDYW4zbU54VWVQVUpVK0xvS0pOb2xnT1ZNbk83SWxrV0UrZ0ZWRmdsanZF?=
 =?utf-8?B?c0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a9a681b9-d7eb-40eb-98c8-08dc7b8a88c2
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2024 00:43:31.0922 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1K9iz+22ixe05CNXOHnTuGzMgw0dkGeMRru2J0kedKXzvAtzg7EJ/vFIZ88EGmB4qJnD8jOVTfw5rT3qJOog8J5Tno3YJr+/wsmPB713hfs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6939
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716511417; x=1748047417;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iK20T3PetWt6kM2apnwvhm02mjgPy9yWW6eVHWzG3eo=;
 b=LIp0ii287wTIR6/xBBs6ze/W4DfqBtR8kuh+SVUSBaVdDHJNT20pSwue
 50djytYzSNRywyK7gV4lwZejv1D3GHLeGmCtp6sbiAxIkpEEsoRzijkQN
 YiWH1HqUqpmBj8RwhahFNqVtkWckXDO+nExRwyiWNy1LXCRYHHiLidAmh
 bbf+ZYh41wW5+vdspCDPKpZgJtN+4wj44auetke1g65ZnuMZOzUzLGgXm
 uWe7B6rMynABSn0TP+AdaBlcQIGx9mfSPeMFdUAhtuax1Rv0dabiZDU2Y
 16nEU4QtD8Zs+jNtYZibDTlDqXgS+j2nkhRTQfNg3bf7W7Q3mwXOUj2Vi
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LIp0ii28
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/3] ice: Extend Sideband
 Queue command to support dynamic flag
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
Cc: --cc=anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 --cc=jesse.brandeburg@intel.com, --cc=leszek.pepiak@intel.com, Anthony
 L Nguyen <anthony.l.nguyen@intel.com>, --cc=przemyslaw.kitszel@intel.com,
 --cc=lukasz.czapnik@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/9/2024 11:50 PM, Anil Samal wrote:
> Current driver implementation for Sideband Queue supports a
> fixed flag (ICE_AQ_FLAG_RD). To retrieve FEC statistics from
> firmware, Sideband Queue command is used with a different flag.
> 
> Extend API for Sideband Queue command to use 'flag' as input
> argument.
> 
> Reviewed-by: Anthony L Nguyen <anthony.l.nguyen@intel.com>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Anil Samal <anil.samal@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c |  5 +++--
>  drivers/net/ethernet/intel/ice/ice_common.h |  2 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 16 ++++++++--------
>  3 files changed, 12 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 5649b257e631..9a0a533613ff 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -1473,8 +1473,9 @@ ice_sbq_send_cmd(struct ice_hw *hw, struct ice_sbq_cmd_desc *desc,
>   * ice_sbq_rw_reg - Fill Sideband Queue command
>   * @hw: pointer to the HW struct
>   * @in: message info to be filled in descriptor
> + * @flag: flag to fill desc structure

I would say:

@flags: control queue descriptor flags

>   */
> -int ice_sbq_rw_reg(struct ice_hw *hw, struct ice_sbq_msg_input *in)
> +int ice_sbq_rw_reg(struct ice_hw *hw, struct ice_sbq_msg_input *in, u16 flag)
>  {
>  	struct ice_sbq_cmd_desc desc = {0};
>  	struct ice_sbq_msg_req msg = {0};
> @@ -1498,7 +1499,7 @@ int ice_sbq_rw_reg(struct ice_hw *hw, struct ice_sbq_msg_input *in)
>  		 */
>  		msg_len -= sizeof(msg.data);
>  
> -	desc.flags = cpu_to_le16(ICE_AQ_FLAG_RD);
> +	desc.flags = cpu_to_le16(flag);

IMHO it makes more sense to call this "flags" instead of flag, since you
could pass arbitrary flags not just one flag.

Additionally, this patch did not apply cleanly to next-queue, due to
conflicts with other work on the tree.

Would you mind renaming this field and rebasing this series?

Thanks,
Jake
