Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 38774B56AB0
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Sep 2025 18:55:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8134E411D2;
	Sun, 14 Sep 2025 16:55:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hAcXJPkuy1F6; Sun, 14 Sep 2025 16:55:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 60B2641133
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757868933;
	bh=uLANRIvwTcMfjb4fw2H+X/5vtJaiwLUFZvu9OVsTO7I=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DpE9CBz6gzAtIHDHE90yCOc3o2M9YCa6XHNtkefDOpRr++071QHCIJv+kYBq6Lv5w
	 7J9GJ4a3Y/wBiVt/lPA9lc13EoPCKezvRA+Kl/Mg6XGTJvEgs5mBnKlgHkcOn1KiTf
	 Z60FNQk/cKKcwD1xojmkQ9KO0fJEwcLVP8O0y263KZhA4hwRxlVFoE05bjvCutgfjw
	 k32py61YKuAAG73cOOIbNPXjmfw4bAxiCZR0ne0cdByCX6rJlWRyb1erSzBHdMxI4B
	 ihsRqho1QiPvqyijSu48luT4WA0uJAsFkVY0XRwvPebZJvUY9Mz3qTR/GZwh3/8KNa
	 qTCXBdw8ADGAQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60B2641133;
	Sun, 14 Sep 2025 16:55:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9D48312D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Sep 2025 16:55:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 879B74019A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Sep 2025 16:55:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 339OozSy59_O for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 Sep 2025 16:55:30 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 14 Sep 2025 16:55:30 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 610C44017B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 610C44017B
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 610C44017B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Sep 2025 16:55:30 +0000 (UTC)
X-CSE-ConnectionGUID: GdHsEvGDQWCHZu6ockRq5Q==
X-CSE-MsgGUID: Bn0/4Pp9TCCfCp9KzM/X4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11553"; a="63958083"
X-IronPort-AV: E=Sophos;i="6.18,264,1751266800"; d="scan'208";a="63958083"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2025 09:48:22 -0700
X-CSE-ConnectionGUID: eSonNlqbQ3Wmb1dxfEtEJA==
X-CSE-MsgGUID: lVk0GpXVT1abIAp8mbf43g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,264,1751266800"; d="scan'208";a="173972318"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2025 09:48:22 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 14 Sep 2025 09:48:21 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sun, 14 Sep 2025 09:48:21 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.79)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 14 Sep 2025 09:48:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h8aTLy/FDsaWUT1P86u3R/HWrVFRluJAtrrqlfEXrpRoBOXoJxY3lwGB7kusDr4p0gaNTF/OnQyjtLn+RkPMBkBzRQfRamksYAjAsEBMI9DMEhn4eVtOt9vSsHlw4U3HwrxdVbjKaJyOeIc+155hMqCYhszwjGbwdDkM7CWL5VjjKxJGHl7SnShGBtwPx+1fXHYRZBX2051yQSjX6zB+NeT7Ykc74/YnSnrrAjby4bMJse73OVLymdqtvNoKwDICmm3KS5gPvVfCsPzRStZD6uMK/cpt/xriCtix5EG7kHq0u55NT6RTBjDBbohGHQL91L3+Eer9zoP2IY4y7JIMhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uLANRIvwTcMfjb4fw2H+X/5vtJaiwLUFZvu9OVsTO7I=;
 b=i5fcXh0naE6VUugG0pwKptYfOvxT3WtHixLXSo1zKoRIojvrP8isM+f6KvZNPMcttALO8rqvjG6M/E9XilC/Fu1xb022vyaYi+RYQDm/5GRrxem9PYoBGc/uYT2UeRB93e06x7Y0hzsfYpJ8dIw/UTfVO2ks2gZj2YQkyWq4wxTEbizijx/hhhTESIp/hFKkkEYYqb2WXnxV8+9q6SjxSQvq8W1TFORuwl3KjxAhGQEfsUEetRQMFS7cCWTCXL/y8EmVfR3niZGXnu8qNKVzuLyLSyRhji1YHklUdlzbDOeOuu0GH8DZr9JQRewlwJABKtaqabV/AsYS+Zp0oNy7oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by DS7PR11MB6270.namprd11.prod.outlook.com (2603:10b6:8:96::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.19; Sun, 14 Sep
 2025 16:48:18 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%4]) with mapi id 15.20.9115.020; Sun, 14 Sep 2025
 16:48:18 +0000
Message-ID: <808db8a8-6f4f-427e-b8c6-e4e34e2e30d8@intel.com>
Date: Sun, 14 Sep 2025 19:48:11 +0300
User-Agent: Mozilla Thunderbird
To: Kohei Enju <enjuk@amazon.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Kurt Kanzenbach
 <kurt@linutronix.de>, Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>, <kohei.enju@gmail.com>
References: <20250910134745.17124-1-enjuk@amazon.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20250910134745.17124-1-enjuk@amazon.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0002.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:9::8)
 To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|DS7PR11MB6270:EE_
X-MS-Office365-Filtering-Correlation-Id: 3f1cf091-e920-481e-8e58-08ddf3ae8188
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?amE5cy9lNE92OFBjK3RvM3JKQURmeXUxckhQV1VzMSs0cU9SOTNYOUhzaHU5?=
 =?utf-8?B?eTRkM2FtVkdISXROZkV3K0ZyYkVnekNPUFdyRFRBWnl6VU1ja2JlT3pVTko1?=
 =?utf-8?B?Y3drV0thWnJiWVFYR2NuakR5N3BpUTdJaGdWYVc0VkdWNkdrUHY5dmtRYmd3?=
 =?utf-8?B?Si9SajdTOWUybmdOOXBDNjdFNHkwQTBlK2xrNDNwNXh1eFVQQjBCbFMwb0VD?=
 =?utf-8?B?RXcyV2Q1RkRVeGx6enJJaDFyNStmems0cGdsSjJmRnRjVVhmTGVCVlN3U3lP?=
 =?utf-8?B?U1NnaVJSNjg5VG1rY0kxa293czRUeEZ0TDFCUGlBWjFEaWxqU2RWakRyR1Ro?=
 =?utf-8?B?VGhXaUUzTStZdEl5bTdvT1Z4b2tqa1pNRHlNdGNZWXBXSnVBMXhOd0JyTzkr?=
 =?utf-8?B?QnEyVGdkeFRaUCtXV2FLeHBCM1NCTGtSaHhCV0dCeFJoMEhVWFJobmlIYmlL?=
 =?utf-8?B?SlduTGthWGZaKzJLVGRoQm84OWhsUUtRdDlhVWdJWW0wZGdzekd2Q3lxWE9r?=
 =?utf-8?B?SUdUNjBUeTROUkhNVHpGbWlVSWdoeHlKZDBOM1B2eUIwcEgrWVk5MDNhMUh1?=
 =?utf-8?B?TEZvQWZkbTFwamw5SzU1b3V3ZjN2SXN6bFpEaUFiZVJzN0JzNDlsVERSTVU3?=
 =?utf-8?B?RDlESENDZm5oMXBtakVmbnhOMG5oc0JVUVYwVk4wSllSWi9RZzM1QkJPazh1?=
 =?utf-8?B?eTdTdVMxQzYxWmJYMG5yVjBnVzNNY1RlNFVWZUhkbVZxMU9BZ21kRnBEODBC?=
 =?utf-8?B?MWkva1gySHpIdjlVcGpySEd1MWVKYU9UaWlONWtTTEtyMXN2MmdZMWV6OThT?=
 =?utf-8?B?TjJXMjZDcHFrS1d6TlU3MjEveURpNGJYdU9TUlE3MVVqZG0zKy82ZFVaaXA2?=
 =?utf-8?B?TzF2TWpIVnVjUWJSY0lFQ29iQ3NwM3lLbmlFemsvR0N5cmJEWlp4QU5LZnIz?=
 =?utf-8?B?ajZHTC9lM0IwZWhERmEzRlp5R1hUdGRBbTlNWkQxU2F6TXppeCtNeGdBUE9Q?=
 =?utf-8?B?SEIzL0ttbWZ3b0l2ZVNsWWZpZVlTQVdIYXNObkwrb3RPd00xMkthYnpJMy82?=
 =?utf-8?B?TGwvZ3c0ejI0MFRpMDVkMEFBL0dNalV0M2lyUG5NOVdjeFM1ZUhmeURseDNi?=
 =?utf-8?B?QWI3U1dBQWFnOE1TSXpzVXE0UU5tVmpsMGFKa1RCdTYrMjBCekJ0b3Q0WDlM?=
 =?utf-8?B?OVlVK0tFRXcwR290MDNvbEFRY2d4WFRVR0pMYnBCWitITmVLS1JvREpwRnJT?=
 =?utf-8?B?MWhkbFc5aCtuQnJaZDRRWmphRmpOVGFUcnNOdGxOdXdvc29jMVdKN3I1Mko2?=
 =?utf-8?B?U3B0ZVpMa1RSNFFnQ2Z5dFp6Z1V1R29XZERVS0JkZ1lVTEpjcVhZWm8vMUtE?=
 =?utf-8?B?N0lmanJxaExLS1pZR09GK1VaaE8rVjNrOEptWXc5WWlzV0ZVUWlSVWFvOSs2?=
 =?utf-8?B?RkJYT0xzd3NmZXUyR2orRzVzMUVhVTk3eWxGdlpSd2hNaW1NdWUvLzNjSXFr?=
 =?utf-8?B?SVUwQTkyL1JWNmRmb1h5cGtTSEh0QnUwMm1sT1BtSjl3dWhBNTlLWlFPdjg2?=
 =?utf-8?B?MSt0c0VNb3A2NGx4Vlo4ekk2QlFGY2gvYi96TkVmUmFMNmFEOEJTU3puRzlx?=
 =?utf-8?B?K1ZKTXVXeGhtTTRFTVFVTTdkY25aMG1kUVA2WGFaK3VmRkdLbkFDWWVQSFNV?=
 =?utf-8?B?YkQwMG12Q2gwTDcrcm9nL3MwOGd4NFR0UTR5N0o4djZJaFQzWkMwUkFtajAr?=
 =?utf-8?B?SjJpMytrUGdDZk82TEJKYXVKeHVINkpVTkJ2aXh3Qk9laXdsQ09yWk1MN2hh?=
 =?utf-8?B?b1ExMzBkWWZkMTdCbjVSNVUyendKWVhzSTdjVE02cUdMc3hESk1KamQ5enZW?=
 =?utf-8?B?UllLZFlVUGs1UDZZNUhYYWMyUkIwSnVuMDdGaFZLUVZBc3JHSjUzNkprV0Fj?=
 =?utf-8?Q?5MqB1Dla18g=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U3BLOEh3TmVSMEZOZENVQmt6MkxqZFpwdERnclpkdVg4alI5UXFTZEVlaDIw?=
 =?utf-8?B?TVYxYXFqYW55ZXIvVGx6Tm1IRTlIQm1XVU1ZSVJTQjBWTGIrTmdMaitRZFRG?=
 =?utf-8?B?RHc4WXFFc2tJeThWUGpWckdlQU9pdG9ob2huVlAycXpNdTlKemdaWEtGTEdM?=
 =?utf-8?B?V2JnbTIrMGNBaEtZb094aUR0SlJrWWpWckhQbjRHWVVDSVhLYTM2aEdVRFNV?=
 =?utf-8?B?MituZzZXaEVHSzlkdGYzbUNJeEhCYTU1NmQrUU1vc3JJR0gyTlBSaVRXemw2?=
 =?utf-8?B?VW41ZGZEL0YrT3lzQ3hrZXNwRW9QaVdzcUc5bzlmWkRTcFN3SzQwcDh2NWR3?=
 =?utf-8?B?enRJN0JTSlJDV05xT3psZXdUdTJDWFdTOHZJNDhRaG1pNmR2WG9lMTg5b0dt?=
 =?utf-8?B?ZlM0eDRhNFloMHpTblJSSU5jNzdvZytnUEUxVWhXUTJrQmRkdGlvblpjQ2Rx?=
 =?utf-8?B?N24ybFZnT3o1R2VmTHhWTjNFOUdsOTJldm9QMWJGd2Z3MUx0S0FxVG8xbDRq?=
 =?utf-8?B?dFFPZ1pRMGw0enpxS0phcEtBK2g2WVRlMWdQaEI1NFdHZHhDSjUrOSt3RE1I?=
 =?utf-8?B?UkdqOU5JMTN1ci8rQ0RQbm0wbEwwKzc4bVJ4UjhUZ3RLaENBeTlMamdFRDU0?=
 =?utf-8?B?dFg2TExpdnl5aFdnQWpMQndKVzFldDZkN0J6YVVSdGg0bEdWS0VnTndIZzBh?=
 =?utf-8?B?cW55NE5zdWFNWkNYVk1KUCtwZUkxWlZYZjA5Rnh5RUMwdW0zajJMb043OCsz?=
 =?utf-8?B?ZmtEYmI2WlE0ckZNTm9YL0o0b0JUSm80cGRiUjJMSSswaVJvR05iRWowdmJM?=
 =?utf-8?B?ZC9UMlVzbUJFZFRaVWxndnlQY3ZQa09GYU5qdzZlVFMzb1ZndDlOZzRhaENa?=
 =?utf-8?B?TlgvUThlazk0UDh3QUNkUkVPbG9yRWd5SEFZQTJ2RzVyYWc1L2VZY2xxV0Qz?=
 =?utf-8?B?RWRsT0MxeEZOYjB6NlRzZWFRRmtxREFsODFqZmpxekhHUnZmTnVCZFFnNzBU?=
 =?utf-8?B?bXNWZSs2cE1KZEk5ajNIRVlVVEg1S2VBR1pBQUlMRXd2eDhXcnVoNGhKSU92?=
 =?utf-8?B?TDl3TE5GUGZpaEhta3kvUngyZmtMVk1GQkQ0cHhFd2VSeG5yQmZ6YmlXbVh2?=
 =?utf-8?B?N28rTVp4UEtXVStJQ1lubG9CN3R6SVRNd2UxNmRMMGVpeU1KSnRRVlJUMG1a?=
 =?utf-8?B?N0dvLzNuMzRoQ29sQmhsaklsbXgxS1FwS1NlS1djMXZzMlo1SXc5NDFHemw0?=
 =?utf-8?B?SFRsM0FzNlViYzBDMlRZTk5mRXFveDhUeWF1eVBycFJSajZyd3RZZ21POFBh?=
 =?utf-8?B?UnRIR2h4dCtJVTBlUU1OcnYyUUJTeW84Y1BEUHFEdFNrNHVyV3JiVEpUS2xi?=
 =?utf-8?B?OEhyMmVOajkyV1ljYUlqYmJ3VkhubVltTXF0MkxKRTZ6VldHZmZRUk9LZFpv?=
 =?utf-8?B?NTlldENIVVk4NzE4N0luRlFzdTZZMENEMld5ZHB3dkhKYWFpTXRPZnZnZTl3?=
 =?utf-8?B?UzU2MUdBWDVaczZma2l6Rk51K1F1ZnVPdGxRSmhFSmVzMXM2VmdnSjJ0WVNS?=
 =?utf-8?B?Q1BiTm5xOTYvTlA0QTRxVjJRL1hUSFhneGxtV2VBSlMraXh3N0FNQk1MbW9s?=
 =?utf-8?B?T3Q5bFdmSjdPOVpvT0ZOdnNUclY4TEVBWjBwWXloYk1IS1k0bGkwaGVsWnJW?=
 =?utf-8?B?cVF2amp0a3dSU0NsN285TnF6Q01wWUc2MnVLMHNlSytuYUdqU3BvK1RoTEQv?=
 =?utf-8?B?cVlvTG1tdFg5NmtBYWZyQnpVdUlGbEgydE9Dc2xCUVlGdUJ2RVJtc3hmc0g1?=
 =?utf-8?B?RitPRmg1QUgvaDJQK0d5ZzBBRDV5RU11N2MzdjZlUVcxQStxVnV2QURmazJj?=
 =?utf-8?B?QkhER0pVaG1sT1FScVRYallIMWhvSWlxTDRHbjVpSkQ3Y0VyT2hGVnhoMlk1?=
 =?utf-8?B?cWw3ZUFRdWF6YmFjMWdWTXd0WkxoMjgvOGNMc3lqTFY5L1BTUGxraTJtdS85?=
 =?utf-8?B?ajRzNEFyREUvM3BpK2d2MzJFVHJ0aDlXL3hKNk4xaWd2QmtKVEdDT1JwcTRz?=
 =?utf-8?B?K0FaZWw1TDZ4QWt1ZWpVN0VmL1ZEMmxPanpFWTNWTjdIV2ZTNGxDTmtaZmZQ?=
 =?utf-8?B?Q1hGVXI1R3hPTTdrSU5JN3BNcnZBNVVUa3Z5Ym5tMFpBelI0U3JubktTT2RX?=
 =?utf-8?B?OUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f1cf091-e920-481e-8e58-08ddf3ae8188
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2025 16:48:18.4111 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zs44LHb4cuxGeeh4I+RzaX667OiXdMdFlMAttanR3hF72FTX79Vrt82qGxpZ+mEusuW98NlRYi1/feEZdqM3HBEVSpvwqpijtI/wn2Oh2Aw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6270
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757868930; x=1789404930;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=j7D4gBNLLMS8X3g9FopfJiR6GUC7ZE8qC9Lv8jr9yKk=;
 b=RKp5+JvI7oyh6Avg/i3J/RvNG2aZMNIn070a80b7fPi1g9PFXn+8B77O
 m5UZd28LkOx1A85gpbb89px94JwZioXw9PORjV6jY9pajsq/syhpXN/hS
 Bpl5+oi75Mizr1xrRZn27WyvH9oc9YwWoCr6Dyr4RX8i6gAdX2GEE6Uc2
 QgP/2vDMUpgqGuDdnBl4Pk09bNcI/jTfwNP1jem66X5cWq/qX23fYodxK
 6TT7AJt1xyEduV4Js7DouRF1kqF+qr7Xb4o9V1FYugN2dbP08cs0cZI0k
 AnHvOUfRMYGB/+vjLpf4nn/oyMqwjM/BvyDSZPkdB/R+JTWZXVTwGjF3w
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RKp5+JvI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net] igc: don't fail
 igc_probe() on LED setup error
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

On 10/09/2025 16:47, Kohei Enju wrote:
> When igc_led_setup() fails, igc_probe() fails and triggers kernel panic
> in free_netdev() since unregister_netdev() is not called. [1]
> This behavior can be tested using fault-injection framework, especially
> the failslab feature. [2]
> 
> Since LED support is not mandatory, treat LED setup failures as
> non-fatal and continue probe with a warning message, consequently
> avoiding the kernel panic.
> 
> [1]
>   kernel BUG at net/core/dev.c:12047!
>   Oops: invalid opcode: 0000 [#1] SMP NOPTI
>   CPU: 0 UID: 0 PID: 937 Comm: repro-igc-led-e Not tainted 6.17.0-rc4-enjuk-tnguy-00865-gc4940196ab02 #64 PREEMPT(voluntary)
>   Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2 04/01/2014
>   RIP: 0010:free_netdev+0x278/0x2b0
>   [...]
>   Call Trace:
>    <TASK>
>    igc_probe+0x370/0x910
>    local_pci_probe+0x3a/0x80
>    pci_device_probe+0xd1/0x200
>   [...]
> 
> [2]
>   #!/bin/bash -ex
> 
>   FAILSLAB_PATH=/sys/kernel/debug/failslab/
>   DEVICE=0000:00:05.0
>   START_ADDR=$(grep " igc_led_setup" /proc/kallsyms \
>           | awk '{printf("0x%s", $1)}')
>   END_ADDR=$(printf "0x%x" $((START_ADDR + 0x100)))
> 
>   echo $START_ADDR > $FAILSLAB_PATH/require-start
>   echo $END_ADDR > $FAILSLAB_PATH/require-end
>   echo 1 > $FAILSLAB_PATH/times
>   echo 100 > $FAILSLAB_PATH/probability
>   echo N > $FAILSLAB_PATH/ignore-gfp-wait
> 
>   echo $DEVICE > /sys/bus/pci/drivers/igc/bind
> 
> Fixes: ea578703b03d ("igc: Add support for LEDs on i225/i226")
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
> Changes:
>    v1->v2:
>      - don't fail probe when led setup fails
>      - rephrase subject and commit message
>    v1: https://lore.kernel.org/intel-wired-lan/20250906055239.29396-1-enjuk@amazon.com/
> ---
>   drivers/net/ethernet/intel/igc/igc.h      |  1 +
>   drivers/net/ethernet/intel/igc/igc_main.c | 12 +++++++++---
>   2 files changed, 10 insertions(+), 3 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
