Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A9B817C7F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Dec 2023 22:15:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 77B2340B20;
	Mon, 18 Dec 2023 21:15:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 77B2340B20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702934138;
	bh=MYlvXcra32PqO/hL2FEQIJEB9QGjm2eu878M6xJ7EWY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gO2WoDocQIXWWqHrC9/TWnpSmHXp3z5sfBt2g0SE0GQctXDj5o/aykDvKKYUjOqMi
	 50U+RR9nQPaoygKZ+VTY2R2TDjTF7UmjlZLdyuwV6BtZrWuOFhRJvShSni02WetIrD
	 ZWbgAoyXIB06rLTez6P04xjysoQ2hRzXDXICoYA0Y02PpEBJJTzZKpWNHkiaBAto0d
	 0tF/qu5EBZ/9PvZjwvSxAiBktFCyZGnLB3XXb6ETkbGHrXCGBGiBhIhNYm0n9Z8UIT
	 3aYEabvNyoisR/8KbSCvS7AenCmR1Q746aTopN4Z6HsGuMtBmFRHXWBvwdEb2bK63e
	 eGJ71fVeo8Deg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fDTSE4WT96Nk; Mon, 18 Dec 2023 21:15:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 026E440914;
	Mon, 18 Dec 2023 21:15:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 026E440914
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E72101BF344
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 21:15:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C751940914
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 21:15:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C751940914
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GZ8MpmHS4awU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Dec 2023 21:15:30 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 18 Dec 2023 21:15:30 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6775C408DD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6775C408DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 21:15:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="2418545"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; 
   d="scan'208";a="2418545"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 13:08:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="23925813"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2023 13:08:22 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Dec 2023 13:08:21 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Dec 2023 13:08:21 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 18 Dec 2023 13:08:21 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 18 Dec 2023 13:08:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U69Oy/+YYLjUmUp2LJvsuat+5UoWmGTkCAL/ck2YyYJbbq9UzttB8wXtntPENqcaFVU/4RlL66+Us0EAZVUyhtZ88PrLl+La/mfvhoMGmBMybqkMCT8DqqKswAIuqJRYaUBYSmby9lfxzgSF6F31ZB/x+EtRq3Ch7oeQdfKZDCVFPJOih3S1L/7QKyrf+H+s2/m0P6Nx6Jth8SclisIvcNeBsCJcsgoS0SHVTVkT7BCRmWTvgUI0+kUVKWtDx2ANZub1MiTeeGT8Hil2KoN1gh2Q3VKSV/dQ1QQq8rWSewUh7SyEpAWj1WIyxnfR6Db4uAwQqUlAIvQyNewmGPk9cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WsjVn66BVAP2OIZDknE1gkClIQHQM3+ByYvuvCjys4o=;
 b=IPtWC4+VKENBdihu2Q3gZrqVcoYn247yia49QnCnTrh9kkGAO5zc7mau0CYHJn/guNsASPI5HJWapU/Ec01VHKwWXJC/9UccwU9wYgIMe+d2OTdvt1ND0EuFdbzzV5g3t54JYqMG34tItTh4kQx+OeDBM1Xi/f3Bs6L0fUGcZJ0ykde5bK1aqt+4LgTYeuI4rR3fktyuasp0sD4pGW59M1eU5OoKawkKulqJCkPmdKXUG6zKvbzXSkdqW79ZdwZjXtOvTMaQIKsvXkJ3MPYFFIrqx/D4JYXjiNVdJmRwQZVeZGWq4X7aecdADduiPEhfM0vlU5OC9l9MTEDnS2ZPOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS0PR11MB7531.namprd11.prod.outlook.com (2603:10b6:8:14a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.36; Mon, 18 Dec
 2023 21:08:17 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::dbee:4787:6eeb:57f5]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::dbee:4787:6eeb:57f5%4]) with mapi id 15.20.7091.034; Mon, 18 Dec 2023
 21:08:17 +0000
Message-ID: <ada94c85-7898-405f-8aa5-54da801109dc@intel.com>
Date: Mon, 18 Dec 2023 13:08:16 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ke Xiao <xiaoke@sangfor.com.cn>, <jesse.brandeburg@intel.com>,
 <anthony.l.nguyen@intel.com>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>
References: <20231218070850.15870-1-xiaoke@sangfor.com.cn>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231218070850.15870-1-xiaoke@sangfor.com.cn>
X-ClientProxiedBy: MW4PR04CA0232.namprd04.prod.outlook.com
 (2603:10b6:303:87::27) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS0PR11MB7531:EE_
X-MS-Office365-Filtering-Correlation-Id: 6666db1f-ed64-4de4-043e-08dc000d74ad
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1x82YYfDj+FzLJJIu5N3dl/8sZOvU+ZqWVAEFU0wfR50LmhrJUejcxsdC1D6zExtgQ5zgznVMnjqlL3z0O6zZgXhQDdf6oGj4kXa1daopGwydyxP0rnhrlXIR+9+Jyok9dTrmcSaulN4Cv2YVfN1XSXd5GPjlSdq/2rFyPuTmhlW85NlQ/7blSoqM2+n7Gf7w9ECIEjIgfNhmYi0kZpmoidxpKFiH9P+ig1JwJ1p4ePoSlrXLx8hbUVNk6phpbnSYFcDYIGsy7/XngrgHaXYdPHixfa890nWFTRnz2AXtp0boGH1+k3TkDnKxKuYv9x8asaD+Ed4kYMv6xd6EkDZGET9khaiNz2NeUIgOupck/HoDJmrStXYwgKD8iUWjeXlg8SoZTPdRXpIoJqadcwzYbkVUs/gd0n+oq8uBaCdkT03LA/U3zYmLALP0RoLGAbye22aptLv3TaEBLtXQBxp2rBmD/2JIf/k2RK3RxNriWdDbvMwMsGBc3w0mVkpKUJoQCqjzHzzc4AAjB5TqrIhwR71SmNMRV1HgX6cnmcnP0Pcko5d6oqcglflu0JD3SVmH/rp+kEitdZTKZvjPPluVdLl3Qgb1V8V0aFWPxlRQ/BUTnhuCAZzqA25QgAX77vpzlhpLPu3LU9JA3CZCntdsA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(346002)(136003)(366004)(39860400002)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(66556008)(66946007)(83380400001)(316002)(478600001)(66476007)(38100700002)(2616005)(6486002)(26005)(4326008)(8936002)(8676002)(6506007)(53546011)(31686004)(6512007)(7416002)(5660300002)(2906002)(86362001)(82960400001)(36756003)(41300700001)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SnAyS1poNzNQYkE0d1l0ZlVvelhtUVlxQU1KZHNQNngra09lSk5DY1ZtaE93?=
 =?utf-8?B?Ym42T2kvdi93UmxXUmNMaHNOdEFZcHNYYVN6Zk15ZFVLSEtEclhnNnlwOWI4?=
 =?utf-8?B?NkwvNy91UW92d0tkT0dKTzNtRFdUOHFWcndjaVVRRFNDU3hvSXIyVjBhWmRD?=
 =?utf-8?B?cW9OekU4a3ErcUdkQU9wNFdra3NzWjFiam8vaDBkcVQ2OS9TNFZKTGFVSWlR?=
 =?utf-8?B?WTdoc0s4TThpZ2hBK3J0S3FhK2dKcllHa0dOQis1OHg0MCtYVVNjUHB2RHc5?=
 =?utf-8?B?WDg1VTV4YjMwZnVYMmRzT1Z2WkErMVZ5V3lpbHpFWjhtN1hkV243N0dac2lm?=
 =?utf-8?B?aFRGTXFhRHVYUGQ4WWJJRWF1MlBmTTlYMjFIeGs4Wk1kRFZaWTQ4TDdGcVJJ?=
 =?utf-8?B?UUZkM1hPUDZzSjhPZS9HbS9lWFZjVGN3aTk4bXZjMXZGcm5aRVpKaE9oMlVx?=
 =?utf-8?B?NCtjc1lPckVqKzZoL2k1SmZPQjZ1Rmh4SlZEaDFzendTUFRZbnVnWmIxTmd4?=
 =?utf-8?B?MmJqUHk2UjNGV3pqa2NhUHUrUXBNOFNMTFRRZDlzVUI1dnZNKzUyUzFBT1U3?=
 =?utf-8?B?WWpjZTNHY0k4dEt0MlVjNXlzQ29oaEFKcWkrKzZlRGQyS290WUc3QnJkdEY0?=
 =?utf-8?B?eXlwM2treEx1Ym5ONXErdmNwNzRVSkxFRnd0Qjk4RjQ2SEUxMWFiK2J5NFZ2?=
 =?utf-8?B?MHduOWlaZWx0cW9nemJCaUFzSEVJRE5TQ1JOaHVXUVRZVDNqYVhWNFBNRXd1?=
 =?utf-8?B?S25VZ3hYR0JNbXRGZlp1Ym1lTXhOSXplV2QvT0tsaTIxa1BrOFFMSlJFWEVq?=
 =?utf-8?B?NDZzbzF0L0VHSm41bVM0M0JialJwYnFwZDlSa0JTMDJnU0pnR3pPZ0MzZ1F3?=
 =?utf-8?B?bjA2TEpBMjdxQ0pQb0NXNkFJQjg3cktzTTBCd0pYQXN3UWo0OFlNL21ZR0py?=
 =?utf-8?B?cVVMd3ZZYmhCb0liS0t4MUpQdGlkaU1vRTIxNlQ4cTJUUFNZOVBPU3JnOWJI?=
 =?utf-8?B?MkQ3MW0yaDE3a3JQazIvVDlKRjVYL0tQWndBYmZIVktUTExlTUl3ZDFOMWpw?=
 =?utf-8?B?N2s2NWhnWDNWdW1BM2c3NXdNbllFREJkaXNCaUtXeTJLMzJRTndkWUsxSkU1?=
 =?utf-8?B?SHVyYWExVnk2VWxMRlRESDBPc1ZhNktncHdKSWoyZGx3U0FoS1ZtU1JVdTZN?=
 =?utf-8?B?TUxmVHM4L2xRRFZRZU4vTXVsS0hVZ2FZd0JxaDlPRHBXSU9tT1I5RVVmZFNC?=
 =?utf-8?B?Y0o4QWlJTlcvb1VScDFXVmQyZWhILzhCNzEvbjJuMDdhYkpON21WSVJHdDhU?=
 =?utf-8?B?SWdwSGxJMnhwTlA5MGw0NmZCVlBZcCtJNVdXcldrWDg4aGkzVU9vTWtVdlFG?=
 =?utf-8?B?TEZpdGprS016b2YzaGR5enlNanNNdkdMRklmY2NrWjBHcTdDM29Ub3ZQUG42?=
 =?utf-8?B?dDc3SmgveW1BZ2ZYNXlUaXVzbC9qMjV3ZkMrcCt3QVBDUkdVQzNJeFhnT015?=
 =?utf-8?B?emFEeVdjYkRGRGZvNmd0NTJMMXVTeXoxM1VZY1BLQnQrRHQ1UDZHWGJUQTlw?=
 =?utf-8?B?MlRVRXh3TDA3U3hpQTVUakthQS9adkxFN3RSWi85MTBMOFZnMkExQlEvcmh0?=
 =?utf-8?B?SGRrVitJV1p3amVNT0lxZGVNcFV4R3E0WjlBYks3Zmgrd2ZGRWtVWStCd1Fz?=
 =?utf-8?B?cG12M001U2l5cTBhZld2eWxaTk1NWGZTUld4c3o1czJ4SHRncmptOVl5WU11?=
 =?utf-8?B?YzltZ09Ca2RyRlZaY1BNejdNWGFjS3FrQ0tyOUc4dUc2VkNtaFNpVEtSWUZm?=
 =?utf-8?B?ME4xVVhXWlEwQ3BrSThEakw2NmpUOVlSN3NPb1VFS3Rtajk5d1phcW5lMHRr?=
 =?utf-8?B?WnVRYWFWeGRMZ0Qrdlh1ZU9GV3Q3Umk0TU5ETnVsSE1nRXFpSFFMbDZOckRZ?=
 =?utf-8?B?cVpIa2tZdnN5L1J4VmNnNXk3Q2lZZUxDNE1zdlAzMUlIRTF4b29HZEhsVFpQ?=
 =?utf-8?B?anA2UEtRVnc0bkhjcVlFNk1HdTIzcDRYSU9EZGZQOUlLd0tLWkdpK0NBMHpM?=
 =?utf-8?B?Ti84ZUVqK0RoeGR1MkVkRkN1K3F6bjQ4aDA3RlkxM1NjR2NqanYrTUxrSnZG?=
 =?utf-8?B?bkFWaXgvdXpSeTE5Q1M5azhyMldRSmpHM1ZKM0pxQ3grcjEyNlc4ZEtRV3J1?=
 =?utf-8?B?Y0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6666db1f-ed64-4de4-043e-08dc000d74ad
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2023 21:08:17.2956 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lUT/T4vooFfMcMmYaxNnWPgqnYwlNXYbF88e6z7/UGEPVed1ec05txNdbhaXOhhEPHTWsTLU0YmLIclQhNdLsyyNsWNCYhyIyTQL/2iAqY4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7531
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702934130; x=1734470130;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H/lR8o3qxAOTEJOd2ZWBwLzwgDAJtbwCexCUd8ScV6k=;
 b=SF82T9FVRCnSkT0Nh5+JQqXto1pCUKC5CUy2CoYyweKuTz3Bofv0ELuj
 Vfejq5OSTgUGQKA4IXwP9yK+IHmiZpvYOyWKLArVTCSh+zpFFSwd1nt5Q
 uCIKCkytIk9SXoRc+KPJM+tLm5rzJxaVW11rqZgVP6MQiPliIl9WahEbv
 kkBkJas4ckLokOWPilObysaMQhuLqm3nJggYvfs/H6kKlmE9lVqqvuB1P
 xetvsi65zzvn/ijCwfzCDNfpHhgUl+HWFeEUBp2Urzh5ULfisPnnO+pai
 MIon/dqUGgWc3cxWt32hGLHGGmEvUlzJ0s5qnsUMXCoDVs6ZvU34xR+ft
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SF82T9FV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net PATCH v2] i40e: fix use-after-free in
 i40e_aqc_add_filters()
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
Cc: jan.sokolowski@intel.com, netdev@vger.kernel.org, dinghui@sangfor.com.cn,
 linux-kernel@vger.kernel.org, zhangrui182@huawei.com,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org, zhudi2@huawei.com,
 shannon.nelson@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/17/2023 11:08 PM, Ke Xiao wrote:
> Commit 3116f59c12bd ("i40e: fix use-after-free in
> i40e_sync_filters_subtask()") avoided use-after-free issues,
> by increasing refcount during update the VSI filter list to
> the HW. However, it missed the unicast situation.
> 
> When deleting an unicast FDB entry, the i40e driver will release
> the mac_filter, and i40e_service_task will concurrently request
> firmware to add the mac_filter, which will lead to the following
> use-after-free issue.
> 
> Fix again for both netdev->uc and netdev->mc.
> 

Thanks for fixing this!

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

> BUG: KASAN: use-after-free in i40e_aqc_add_filters+0x55c/0x5b0 [i40e]
> Read of size 2 at addr ffff888eb3452d60 by task kworker/8:7/6379
> 
> CPU: 8 PID: 6379 Comm: kworker/8:7 Kdump: loaded Tainted: G
> Workqueue: i40e i40e_service_task [i40e]
> Call Trace:
>  dump_stack+0x71/0xab
>  print_address_description+0x6b/0x290
>  kasan_report+0x14a/0x2b0
>  i40e_aqc_add_filters+0x55c/0x5b0 [i40e]
>  i40e_sync_vsi_filters+0x1676/0x39c0 [i40e]
>  i40e_service_task+0x1397/0x2bb0 [i40e]
>  process_one_work+0x56a/0x11f0
>  worker_thread+0x8f/0xf40
>  kthread+0x2a0/0x390
>  ret_from_fork+0x1f/0x40
> 
> Allocated by task 21948:
>  kasan_kmalloc+0xa6/0xd0
>  kmem_cache_alloc_trace+0xdb/0x1c0
>  i40e_add_filter+0x11e/0x520 [i40e]
>  i40e_addr_sync+0x37/0x60 [i40e]
>  __hw_addr_sync_dev+0x1f5/0x2f0
>  i40e_set_rx_mode+0x61/0x1e0 [i40e]
>  dev_uc_add_excl+0x137/0x190
>  i40e_ndo_fdb_add+0x161/0x260 [i40e]
>  rtnl_fdb_add+0x567/0x950
>  rtnetlink_rcv_msg+0x5db/0x880
>  netlink_rcv_skb+0x254/0x380
>  netlink_unicast+0x454/0x610
>  netlink_sendmsg+0x747/0xb00
>  sock_sendmsg+0xe2/0x120
>  __sys_sendto+0x1ae/0x290
>  __x64_sys_sendto+0xdd/0x1b0
>  do_syscall_64+0xa0/0x370
>  entry_SYSCALL_64_after_hwframe+0x65/0xca
> 
> Freed by task 21948:
>  __kasan_slab_free+0x137/0x190
>  kfree+0x8b/0x1b0
>  __i40e_del_filter+0x116/0x1e0 [i40e]
>  i40e_del_mac_filter+0x16c/0x300 [i40e]
>  i40e_addr_unsync+0x134/0x1b0 [i40e]
>  __hw_addr_sync_dev+0xff/0x2f0
>  i40e_set_rx_mode+0x61/0x1e0 [i40e]
>  dev_uc_del+0x77/0x90
>  rtnl_fdb_del+0x6a5/0x860
>  rtnetlink_rcv_msg+0x5db/0x880
>  netlink_rcv_skb+0x254/0x380
>  netlink_unicast+0x454/0x610
>  netlink_sendmsg+0x747/0xb00
>  sock_sendmsg+0xe2/0x120
>  __sys_sendto+0x1ae/0x290
>  __x64_sys_sendto+0xdd/0x1b0
>  do_syscall_64+0xa0/0x370
>  entry_SYSCALL_64_after_hwframe+0x65/0xca
> 
> Fixes: 3116f59c12bd ("i40e: fix use-after-free in i40e_sync_filters_subtask()")
> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Signed-off-by: Ke Xiao <xiaoke@sangfor.com.cn>
> Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
> Cc: Di Zhu <zhudi2@huawei.com>
> Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
> v2:
> - Order local variable declarations in Reverse Christmas Tree (RCT)
> 
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 1ab8dbe2d880..d5633a440cca 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -107,12 +107,18 @@ static struct workqueue_struct *i40e_wq;
>  static void netdev_hw_addr_refcnt(struct i40e_mac_filter *f,
>  				  struct net_device *netdev, int delta)
>  {
> +	struct netdev_hw_addr_list *ha_list;
>  	struct netdev_hw_addr *ha;
>  
>  	if (!f || !netdev)
>  		return;
>  
> -	netdev_for_each_mc_addr(ha, netdev) {
> +	if (is_unicast_ether_addr(f->macaddr) || is_link_local_ether_addr(f->macaddr))
> +		ha_list = &netdev->uc;
> +	else
> +		ha_list = &netdev->mc;
> +
> +	netdev_hw_addr_list_for_each(ha, ha_list) {
>  		if (ether_addr_equal(ha->addr, f->macaddr)) {
>  			ha->refcount += delta;
>  			if (ha->refcount <= 0)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
