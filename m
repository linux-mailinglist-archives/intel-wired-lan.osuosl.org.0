Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E6F8C2157
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 11:56:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33C416159E;
	Fri, 10 May 2024 09:56:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fmgJVDdxg8MB; Fri, 10 May 2024 09:56:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD213615A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715334970;
	bh=xbDi4mtAk2r5nIG3LOt+YmKKT9PdxL6kyLOiogQbMcM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dLydgwtMHPOlpH0UqZE+A4K0ZkLmq9hDYd9S4p39pUFm1vIuyAMpDc/hcpaxPyeCY
	 o8pzA4n3wEXWq+ImEsdBUJlwK+RdzklX5mGPUB1IP2u4tXg2g7ykjV5LBCu2nW7L90
	 BVpCOifGqAbsHA+Bli7YZoBjU6R8R5C3Tgh/lPtnH+UPXyRcSlWJRxyIopnFqow3NG
	 dDdj3tsQwO+zFHNoCFDjxW3TL94wGiU7lOu6GEp3Pt9jwenINIEUxYs1ZdC7W/4wVp
	 536cN57Nsi4VvhVNGSZ1qPM22hNF4zThiZbLm09Xqkyq3UoJGRWc7Fon8tfkURWE6A
	 4Bm1a1Ng/mc9A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD213615A0;
	Fri, 10 May 2024 09:56:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E91421BF5B3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 09:56:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CAD75426C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 09:56:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FpOM3ahV2nUk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 09:56:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=sasha.neftin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E399F404B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E399F404B5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E399F404B5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 09:56:06 +0000 (UTC)
X-CSE-ConnectionGUID: yVTNxIfEQ02IhvTm1PuQXw==
X-CSE-MsgGUID: 4fsz60i1QzO+LbJo/25+FA==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11467396"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="11467396"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 02:56:04 -0700
X-CSE-ConnectionGUID: 2tnu68NBSWKXWwEPkAwgSg==
X-CSE-MsgGUID: Jf91RV+LSZO0WyXlqGMFuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="60736583"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 May 2024 02:56:03 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 10 May 2024 02:56:03 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 10 May 2024 02:56:03 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 10 May 2024 02:56:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n1EGs6HaHP8s4qFtOWnH8toySbhU+1rd0o79hmNPufYhw7aLfX7JukPar5LUuQj/g/sW7gpR50q3hwhsYFH1i5TgkcC+F5tcEiz0FUCUhgTwIpqDyu50xt+BWf9NiInQVPOUsVn1fHqkfN0GqcQ1KbtA8HIlTzNL3IfeGQncBdC9HUYH6h/PNvobPOP85pDZju2b89Ftg3yu0ngiazenf4VwGeTUOe5iWNPnjXp24A8/qg/ZU3j7pAhpz09JVwzo8ZjMx5+HuhGLw8OnUdsZas+hlOAuY51C4c6uYKD4Ass5fuPc/sMo5MlWkHTQBtIrhGhWhRhOKnF1qRrNdiDUIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xbDi4mtAk2r5nIG3LOt+YmKKT9PdxL6kyLOiogQbMcM=;
 b=XT8CWHFLhO54YOenNJwIP5EECVFkttlpLVPvE3ksHf2c484yaVB4pjycBs4rnNljyY2vtnDXeiYu7ZjqrcNnmZnI3Pt3giGvr12KaRHTNqMpILQM4/Zn5dUQtIxIp/jhpF4c8W6zn6jm9ca/u9gR2utgxuyio1u9xt/UCrp4Rw55QPRDqKAFTcD/qoS97gkaZ46nhKFvqI2EuHTFRfF5YQ00yQwMXtYW2H7dJAMbeQ4Ng2yhk/iezRdYZZv0lXHX+I9ABmXUbgds+4vLyOzuuQcSSltIQLQOz1Da1ynH2Jt3WOkA2vwdrENXVoPTSE3ZgqMMf4ESBWZHJF2Lks3MLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6725.namprd11.prod.outlook.com (2603:10b6:806:267::18)
 by CY5PR11MB6533.namprd11.prod.outlook.com (2603:10b6:930:43::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.49; Fri, 10 May
 2024 09:56:01 +0000
Received: from SN7PR11MB6725.namprd11.prod.outlook.com
 ([fe80::da01:fd51:d6ef:551]) by SN7PR11MB6725.namprd11.prod.outlook.com
 ([fe80::da01:fd51:d6ef:551%6]) with mapi id 15.20.7544.045; Fri, 10 May 2024
 09:56:01 +0000
Message-ID: <b288926e-f9d6-48d5-9851-078a6c9912bf@intel.com>
Date: Fri, 10 May 2024 12:55:54 +0300
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
References: <20240503101836.32755-1-en-wei.wu@canonical.com>
 <83a2c15e-12ef-4a33-a1f1-8801acb78724@lunn.ch>
 <514e990b-50c6-419b-96f2-09c3d04a2fda@intel.com>
 <334396b5-0acc-43f7-b046-30bcdab1b6fb@intel.com>
 <cc58ecfc-53f1-4154-bc38-e73964a59e16@lunn.ch>
Content-Language: en-US
From: Sasha Neftin <sasha.neftin@intel.com>
In-Reply-To: <cc58ecfc-53f1-4154-bc38-e73964a59e16@lunn.ch>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0002.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::12) To SN7PR11MB6725.namprd11.prod.outlook.com
 (2603:10b6:806:267::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB6725:EE_|CY5PR11MB6533:EE_
X-MS-Office365-Filtering-Correlation-Id: 1f1306bb-afbd-43eb-441c-08dc70d765bc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|7416005|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ckg0NmNnTE9yK3hQRVZSTlpoakhCSjlySitVaDRVb3NkdUZ5YSswRC91Y1dw?=
 =?utf-8?B?aTdKdlJOQUtDTFp0R2xGVzZsU05Yd2pmaUhQa0YyZmxFdzhxZm5YQnRoeklW?=
 =?utf-8?B?K2djbFVpRHpVWW1pTi9EMFB6aURDZWZ4K3hvMFd3L3RITTRUNlhCc0lSZFI4?=
 =?utf-8?B?Y2dlMnVsYk1DTlZVNlBSY1BydG9sclRuellZWWNCRGJueWpUQXM4VEtsOUtu?=
 =?utf-8?B?RllORFVoaTNiR2xCbms1bGZYRWVPWE9nY0lwaTRQNUZlSXcrdXF1enAwR3Vh?=
 =?utf-8?B?YWYyOGxSRXNDa2RIWDMralRiM1hEWWx3S0lxRkFFLzhDNGtMMTJZQ0NVemU4?=
 =?utf-8?B?T0dFMHhtVFVXY21lYnNieE9ZclVka3lnTXZ0N1VXTkRsMWhaTFJLd0lsVUl4?=
 =?utf-8?B?RXMyL3FkUm1oSjBzRGtBUk00RFJhZmV3bTFsN1llSnhXbSsyY1dFK1NxMElO?=
 =?utf-8?B?U3Zsd3dNSDA3WXpONEpCWEx5cmdMMjFXN3VpQ3gwYW9DWUFrZVZZTSs5amRs?=
 =?utf-8?B?Mk5aaXIrQmp5N2VHeWJOdHFKeXR0QzJ3YUpHWXJiVGRucFBXR0dGbWljV1Bl?=
 =?utf-8?B?L2xwT21lUWxCZjlKUThrUC9JblI4S0gyVlE0MGVqYnl6TEpVZEdyMVFZWTF5?=
 =?utf-8?B?bDltNVIrUUFZQXU5ZDRMbHB2TGlLc2VEMmZwT0NTK2dHUmJZRTFkKzZlRmV0?=
 =?utf-8?B?MC9hSnZSdGhhSkdRUjhtVGtKemFRYkdBQklnNU1lb0kwWXNJSkgwOTNRdHd3?=
 =?utf-8?B?YUwrNHRqRUQveFVyQ2tKMkxPemcxSkRvRFRWcW5sVWJ2dXI4ZUI3aVcwWEln?=
 =?utf-8?B?NGwvdmRQeWlzRGpWQS9SamNlc1VMVmFna1FOTmtsd2pLRlFrby9PZExIalov?=
 =?utf-8?B?VnBkU2d1enJxcDJ0Skdza2JJbzZ2N3lua2pJSTdhRFpYRXc1Z3UvbTJ0eXQ5?=
 =?utf-8?B?SFRoZlVXdXZWemMzc0RvN09jczlUd3N4VTh5a1d6cDdieXYxMDdnbnA4OGdC?=
 =?utf-8?B?RHZGZklIWFVGS2s4Q05JN0lHTUtkUURBdHBwcXhzb2NNSDZkeXQwUTlpQ2Ux?=
 =?utf-8?B?dCtGQXhPM1E0TDNLYzIzQkRJbThMYmV5QkNGdS9Nd1FnQ1FZUER6TGx6eDlE?=
 =?utf-8?B?Ynhjbll0OG9TSGc0VXdXWmEyNzhBTzV4WWNvVXNSaGwyMzJLNFpUcGR4UE01?=
 =?utf-8?B?NVAreDdUQnN3cTdCMWI1Q1g2ZWx4VXhSSVRoKy8yM0xwZmQ0ME9zV1E1dTFj?=
 =?utf-8?B?Sys4SVNpblhLZmZGVmROOVV6OXVYaGZCWjEydGhocUROK2hjaHFmQ01ZK3A0?=
 =?utf-8?B?MmJOQjJpZVJVbE9ZREtwMmE5YmRrZ2RMZzZzYTNKME9lRTZ3dk5QSm1pcktq?=
 =?utf-8?B?dWdFWVMwQnNFa2Jrdis3ZXl6TlpibUJxVk5SVDkwOFl1b0JwbUpFNWF2K0tV?=
 =?utf-8?B?eUlIdHNCdzA3NEtPSE9ubVZEZkxlOVRYV0VhS2dkN2hEcjkvR3hqZUJoU1hR?=
 =?utf-8?B?b1FEek5POUxjSHZFcWxRQ3ZtTUp2SXB2dk41Tys2Z2Zsb0JZa2xOWEtGNmN4?=
 =?utf-8?B?V3JZN3QrV2NhcDFXNHd5bmpnYW41dnp4czR1WVRJZ3FpWXVzVmFjWFVjaEdB?=
 =?utf-8?Q?ekCyx/TbZeOrpJGHManTMJGirpyejh8eGLwlJAk/v+dk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6725.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(7416005)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QVB3TW00MzFFRG5VdGJkdS9UNzBpdU1mTTlLSThvOVgrdXJVbGN3QUlzTzN3?=
 =?utf-8?B?WlZQU21kUXhEY2tqWU1YU2IwVTFvT3BuTDlWQ010eFNXQ3I2dDNEQWJpbHhP?=
 =?utf-8?B?R0k0Q21Nb0p0R3ljcnBWaG1KaEZrVjgzcHZ3eGFxSjFPQzJoOU1aOHFydVZp?=
 =?utf-8?B?TEN1dCtiZm1kMk5ZTVZvY3pLT0pxOHhqT0ZSaFpaQm9TeDJhRHdZUkJxTWVJ?=
 =?utf-8?B?bWhQS24yc3ZacDVwdGdQWFRQalh1UERMQnFhVEppc213ZEI3S3RYWnE2YjNH?=
 =?utf-8?B?dXhpQ0xaeHVVYjJpaStsNG4xaVJocS9xaE1FWk9kT0hlQTZLRjRQZkV4REpK?=
 =?utf-8?B?UVlFSFNtWjNvUVc4L05LNkgwYms4WXM3a3pCSjd1UTlCWW5DVTlWWjAybzdu?=
 =?utf-8?B?K2xTK01yL20zYjEvVTJycGwwY0xpQWJ1VFpJNHZiWitsVGdWL09qdE9zdmp6?=
 =?utf-8?B?TVVHbVJNMTd4S0dUWm8vQlR4QjI4T1M4TnVMa0FVRGlOOE5LUk05UlJOMTZz?=
 =?utf-8?B?NU8vOHlNTW13ZklTZjYvN3ZXT09WYXdtRTNkQmltZ0NOdTdzMkxYME9GOVV3?=
 =?utf-8?B?YjhYa09CZURsT3ZwSFR1UEtjZVRtY1pGS2FwL21yTVA1Q2hYS1o3aG5BbVBI?=
 =?utf-8?B?MndjR2lDaWJ6bDEvVmhIdjdVR0g4M21lNUhjZmpFeHUyMXlUR1JMTkxuaTZE?=
 =?utf-8?B?dU8zai9wWWZMUmh2dUtGTUVXM1dYRmZ4VVlHRFQzQi9ZZHhLVTRKdE12ZGF3?=
 =?utf-8?B?U3FkU2xLMTUrUXBjd1pkb1VydUlyWHlqZkZzOUY4V3ZJZ3NzcjVLbXRHQW9H?=
 =?utf-8?B?WGxGeUo4NDdSc09sc0RQUzBYc1pYYzhSb24xVGdCRWoxeGlJSnhkYTc0NThl?=
 =?utf-8?B?T21tajBJd2Ivckl1TVkzSWY2SWUrd0p5eUxJNU9MN3VwVHorNmV2NnZjVkZa?=
 =?utf-8?B?VDk3WDI5M003RHJYeElPcTRiNGdWeDNPTGF3L2RuTjNOVDhlMGd5Z1VFaW1y?=
 =?utf-8?B?UzNVM3ExVnZhL3RWZFBOd25OQlAwQlpWQ0psQStyZGFnT2piSkU1VzhoT1lq?=
 =?utf-8?B?OW1hV04zMVA2RDY5ZnhiMmlJblMvZ29mRHhFMDZvajkvQmpCZ3VJb1F3OGV0?=
 =?utf-8?B?Wm10Y1JMQlA1Sk9KZHZGanJYYjgxazl4ajNjdU9JaWpLQ1UyMElPblRsbVV6?=
 =?utf-8?B?UFVCU0MzT0RsdmY5ZWs5WEpneG9UQnNkSXJEZW95ZnRkMXVYeDl6RWw1QnZX?=
 =?utf-8?B?aTJaMDNFSDR0RVJucUJQYkcyOG10NVFzL3lEUWNIcFpBdVRGbU5PenJ5MTlI?=
 =?utf-8?B?MFdla0FLT3IyN0Q0ci9RWjd6SVZIanU2ZDFadzB6MVFqeEZETExzaWpjN0Ra?=
 =?utf-8?B?TnRTeEtVaXRJSzQraWx2WEllSUYyb2U4WmZpOGZiaWlhaktZR24yakwxdGpm?=
 =?utf-8?B?czY1cGloc2E4YklXTGgwY09naytMRVNNWnJpTkJkZUwzYVNtODZYcm9PRkRF?=
 =?utf-8?B?SU9PQUlTSHpCMXhWWWhQb1YyMUlhQk1mV3pBM2Q3d3Z5cCtxb3lKem5DOTVC?=
 =?utf-8?B?d1A1ZjZPd1FEUXVXemhmVTMwajhWVjg2eFJQRW5IMTNTOUI1SnFQRFRzQlZQ?=
 =?utf-8?B?N0tBT3dwQUIwSHpqNEFJTGgvak9xWExyUVQxeExvYytVZU8rOVlyWWYxYmc5?=
 =?utf-8?B?ano1SmlaV3Q5ajdvcGtzUTVPeE1iYm9QM0hQcThPSUhENGplaWcrMVQvN2Ni?=
 =?utf-8?B?NllhcmFaQmpKZ3BGc2dZTmU2ZVUzdWkvaFFrTmorUTJPWjY2VUw0LzU4RlYr?=
 =?utf-8?B?U0xWQ01OY2E2NFBDd2hkeGI4NW5HYnViNXdJRVpCRjdBem94M2ZvZVhTOFlu?=
 =?utf-8?B?Nm5wSGVkL1lVMGtUU2IyZDBxZ1VsNkFaRzFXVlRqcmpEbno5TWc0QjhGaUkx?=
 =?utf-8?B?aDhUYUdMMmlKR1N0a3JzWlExTFFuRC80YWtNaFFEL2NFN3BaNUVNSU9xVjUv?=
 =?utf-8?B?b2NHaEJ3Q0srOXdONENwQXJZY2ZGeGRVNmVDVFlkV2hzMGU0MEwybWl2cEx5?=
 =?utf-8?B?VElZMXpuTVJvSVNLZ1JRZFZ4NG1Wdk9ISFdCeDZIaTMyMFBEQVRwYk43TTdJ?=
 =?utf-8?Q?2LbWYimZQtbCYV3fCC6q5xk2d?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f1306bb-afbd-43eb-441c-08dc70d765bc
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6725.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2024 09:56:01.0203 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZabHkEC/Mv7MrNUbeMoBqUntinaP8p23BNM90Srv9qH36/k/am+Tte/iym9oCW1rXq67OGX3w3YXDBfVAhcF8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6533
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715334967; x=1746870967;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TkgNT4emMrbG5UygSZ1AgGRVTs8wiUo2ctqvvxJfgHo=;
 b=OXYYYzG3QoP0QArML31qwUhpF/jkKMkAQeo8XdAteuUKp8I0iuhFUsCk
 CKW4ALkV2EnCKQvm0mtNa7UwqK43oEDUU7L6HHLkgbKM3tI62XQ5t+6WO
 NpbncHkED9uCdlVAyO8B6Y7XDU3VbqhjUbHIpNLlSBuLt3njjS7WcG6Ah
 RChzdfRPbu7aUEOdNZk9qVTCZJA+IqIgcPeySHPsVh1Jp0pjU6Eh5BW2A
 QDuM+GAhXHb3NnRoXLASHrCyc43Bwj7cg4AtY6H/azvwaT3yPEY5JgHxq
 iohyEFyJWLddLgkZEwrO5Z1HFi/3Vv7lMzZzDrTmWEiBqcQFE38oJpjS2
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OXYYYzG3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 2/2] e1000e: fix link fluctuations
 problem
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
Cc: "naamax.meir" <naamax.meir@linux.intel.com>, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, rickywu0421@gmail.com, linux-kernel@vger.kernel.org,
 Ricky Wu <en-wei.wu@canonical.com>, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, "Lifshits,
 Vitaly" <vitaly.lifshits@intel.com>, "Keller, 
 Jacob E" <jacob.e.keller@intel.com>, kuba@kernel.org, pabeni@redhat.com, "Avivi,
 Amir" <amir.avivi@intel.com>, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 09/05/2024 16:46, Andrew Lunn wrote:
> On Thu, May 09, 2024 at 12:13:27PM +0300, Ruinskiy, Dima wrote:
>> On 08/05/2024 8:05, Sasha Neftin wrote:
>>> On 07/05/2024 15:31, Andrew Lunn wrote:
>>>> On Fri, May 03, 2024 at 06:18:36PM +0800, Ricky Wu wrote:
>>>>> As described in https://bugzilla.kernel.org/show_bug.cgi?id=218642,
>>>>> Intel I219-LM reports link up -> link down -> link up after hot-plugging
>>>>> the Ethernet cable.
>>>>
>>>> Please could you quote some parts of 802.3 which state this is a
>>>> problem. How is this breaking the standard.
>>>>
>>>>      Andrew
>>>
>>> In I219-* parts used LSI PHY. This PHY is compliant with the 802.3 IEEE
>>> standard if I recall correctly. Auto-negotiation and link establishment
>>> are processed following the IEEE standard and could vary from platform
>>> to platform but are not violent to the IEEE standard.
>>>
>>> En-Wei, My recommendation is not to accept these patches. If you think
>>> there is a HW/PHY problem - open a ticket on Intel PAE.
>>>
>>> Sasha
>>
>> I concur. I am wary of changing the behavior of some driver fundamentals, to
>> satisfy a particular validation/certification flow, if there is no real
>> functionality problem. It can open a big Pandora box.
>>
>> Checking the Bugzilla report again, I am not sure we understand the issue
>> fully:
>>
>> [  143.141006] e1000e 0000:00:1f.6 enp0s31f6: NIC Link is Up 1000 Mbps Half
>> Duplex, Flow Control: None
>> [  143.144878] e1000e 0000:00:1f.6 enp0s31f6: NIC Link is Down
>> [  146.838980] e1000e 0000:00:1f.6 enp0s31f6: NIC Link is Up 1000 Mbps Full
>> Duplex, Flow Control: None
>>
>> This looks like a very quick link "flap", following by proper link
>> establishment ~3.7 seconds later. These ~3.7 seconds are in line of what
>> link auto-negotiation would take (auto-negotiation is the default mode for
>> this driver).
> 
> That actually seems slow. It is normally a little over 1 second. I
> forget the exact number. But is the PHY being polled once a second,
> rather than being interrupt driven?
> 
>> The first print (1000 Mbps Half Duplex) actually makes no
>> sense - it cannot be real link status since 1000/Half is not a supported
>> speed.
> 
> It would be interesting to see what the link partner sees. What does
> it think the I219-LM is advertising? Is it advertising 1000BaseT_Half?

i219 parts come with LSI PHY. 1000BASE-T half-duplex is not supported. 
1000BASET half-duplex not advertised in IEEE 1000BASE-T Control Register 9.

> But why would auto-neg resolve to that if 1000BaseT_Full is available?
> 
>> So it seems to me that actually the first "link up" is an
>> incorrect/incomplete/premature reading, not the "link down".
> 
> Agreed. Root cause this, which looks like a real problem, rather than
> apply a band-aid for a test system.
> 
>        Andrew

