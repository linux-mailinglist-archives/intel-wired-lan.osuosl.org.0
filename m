Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB888842F70
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jan 2024 23:13:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5749181EA2;
	Tue, 30 Jan 2024 22:13:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5749181EA2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706652821;
	bh=830wz/b1BJoyp6gKglvStS88oqCOyeDezwA1E5FVfVI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1WdGn/n0TnlPzlL/clLsHK4Lyuyy0lOK9W4lIsfYOtG8MKJ2d3kQZKallrLUhYaoi
	 EaG7AiZACGLkjfqkDD+UPxFKwEvB+JuBCAwb8xTGmkA0VRtTYjj5NyV0dwM0dIJ6nR
	 l2AjRsEN3si1rO0ibGyjNpYIuB3KBzDmq21jdIwtqtVrJDDl5NGyKU/TC8ew2VQxR0
	 xKhzu39rJtiTtK7ndmGQSuZLj7m4dlhNLdYsmualVu6RDiZEui9lm8tQq32wFmtbgY
	 Ew61Gzcdw3MhlXsdy/1YZjcJkZEd/wu+kbNND0DyxwRGheqORm3KoMQY6O8k+70Ikx
	 lGo3igUrsWzsw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sSpzh0aX7nxn; Tue, 30 Jan 2024 22:13:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57A6881E1D;
	Tue, 30 Jan 2024 22:13:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57A6881E1D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2545E1BF275
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 22:13:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EFEB841705
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 22:13:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EFEB841705
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Td51QNTV6w36 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jan 2024 22:13:23 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 30 Jan 2024 22:13:23 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 708914156C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 708914156C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 22:13:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="3271387"
X-IronPort-AV: E=Sophos;i="6.05,230,1701158400"; 
   d="scan'208";a="3271387"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 14:06:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,230,1701158400"; 
   d="scan'208";a="3847942"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2024 14:06:14 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 14:06:13 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Jan 2024 14:06:13 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Jan 2024 14:06:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U+fMuJzS8ttrW7P8CRGSr/TovEpDS+Kt/KiT1sLLHkLh2GeC0rocJupaymDkiYLzKFnl7kxX47XXwRQyhBxwI+RPNaE73aIFiDomio/REICZ1X3e5pMYGwV7TNiM4V+Fid2PnRes11EuSIxIb06wsg3zXACJohKeMQLj47jXqEOFOdgvuvR7TFRlcvmV2Sg3M3IzUtmK5RA0wyxaXXbf8Z6jdGTEUWfeYCPP3UnqEz/P4Lbm2pLnQF4ZpVKzcrqQPv35Tj0q9+4zymF4TZWa/0HmTmLOUWNNS8uyeDw1y2hSONxRor35fsSciu169iBsNv4AZ+0xAMvDdAQdzSig1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=830wz/b1BJoyp6gKglvStS88oqCOyeDezwA1E5FVfVI=;
 b=NXmtJ9bztLYWub6+2QIILaM4e1eo/CzR+vgo7oKXAMcxxk5qhQ7R0CpwaPQ+mGgzxlC2kmSgwaTDrWAn2xO59r3xpkCG3ZODSl7/8iN8PdjUdr6EAsuSRe20IwVZd4aggrYlXoJ1fvXacTsclJUpn01rtVKhhNjkbtMKTfiJtuXnXqLn7vlR2rzlA0/x5oKm4ru9iVyxt5qQMwfJZCd3b3elRSgpFlGHE0AP7zDTD82aWUHxiWqcddy5Bx2JV0wwvCt9HqRzxm6jF1gqZuAeammjwIiqyn+9VL0RK9j4UoGG9YnoyPzvz7O2zZ8GHGFlfNVcuSf/DjAjVZx/dZyQAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 DS0PR11MB8135.namprd11.prod.outlook.com (2603:10b6:8:155::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7228.34; Tue, 30 Jan 2024 22:06:11 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::ccab:b5f4:e200:ee47]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::ccab:b5f4:e200:ee47%6]) with mapi id 15.20.7228.029; Tue, 30 Jan 2024
 22:06:11 +0000
Date: Tue, 30 Jan 2024 23:06:07 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Seth Forshee <sforshee@kernel.org>
Message-ID: <Zblyz7ZnA2GXh04k@boxer>
References: <ZbkE7Ep1N1Ou17sA@do-x1extreme>
 <47eea378-6b76-46a7-b70e-52bc61f5e9f0@molgen.mpg.de>
 <Zbkq4cVJ1rEPda8i@do-x1extreme> <ZblN2ABkWPM0gGZB@boxer>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZblN2ABkWPM0gGZB@boxer>
X-ClientProxiedBy: FR3P281CA0075.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1f::23) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|DS0PR11MB8135:EE_
X-MS-Office365-Filtering-Correlation-Id: 0bc7ce5b-7912-4507-acad-08dc21dfab2d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4qM/W1hAb/cFX/OQUNepH7sFn8ZKudpZ6mLOksA0a5wT3rWdvda/HnqcXPXDyXLgP9KXVvzhswNyx3uK/ImXyHqDfwAg4piMlrTDgFo+t2YGW42tw09BsVe18FxzHqCAQ7/1wF8K0Ec0oZ6on+OY/FuSvE/vasMYmDfjL1gTykr0J+awwF9tC7n4H433qBGPZ3CxHhdVYbNQb89yjo5eCdLgRDcDh2V613sQto+xq2R/8fZXzh5jHbFjkqrIq2WsCKZPP1Kx3m13cKl2JKatOzap0DssujeNd73T8qklpSTKi0qG485+RdUiN1GUdqGZApFSYuMN3kP6RcVEsrcXAu+BtuJtQ3F9x4J/mf0z/gaKBYy26QtxkSSgHcUsJLTmB9htojkxdvqNZC74A+OuTCqXXGorkJscOOvthKs36k3kciR3LVj+fWWh/L3ZpoOz0gxeQ1m5UXMGKqtrCDR3mGa/ITiR65tQvWDzWweCx2mqQ0xx80F5j0vU7fbL2yRbehk22lmuzxyBkJPuSywfET6XHCMepKQlC6C7WuFkXO9JgbbdsJsSr5Q9D0WCJvaG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(39860400002)(136003)(376002)(366004)(396003)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(4326008)(66476007)(41300700001)(6512007)(53546011)(6506007)(9686003)(26005)(54906003)(6916009)(316002)(8676002)(66556008)(6666004)(478600001)(6486002)(83380400001)(8936002)(38100700002)(66946007)(82960400001)(33716001)(2906002)(5660300002)(44832011)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZDN1eE9VNnlrcWg5SXZFQXRoNHpxclFzUnUrdGlCbDlPNnc5WitTYjdNQ0Mz?=
 =?utf-8?B?dUpVM0I0UGc4MzNSV3FIaldyZ2VnWnN6cm1ackQvaGxuaCtSUkkzWkUybEtu?=
 =?utf-8?B?djZCdHZYSFVZTlN6Yk9CVFE2b2c5bmF3SHNFM1RMNDNmTi8reE9UeS9wcm9L?=
 =?utf-8?B?VS91ZWZBWGhyUEx6cElnRDJ4NHJnYmFqYTBQM1VwK2ZCNmtBSkFkdmFiaTRV?=
 =?utf-8?B?cWxCQTFXL2xsRmdMSzc3MllEQU0ramVmQlVjNlRYTE5DbmdWZkV3WlNIQnZG?=
 =?utf-8?B?NHVTamhWY1g3RHlLR2F0RG4vcHB1RzB0SFlSZURVVWc3UkN2UHB0YzdQQjJI?=
 =?utf-8?B?ZHhpcTQ5K2pUbTB2MG9BcVRpeVhFWWdzc0E1Q2VOT3lPa3JpNHFRV2FoaWU1?=
 =?utf-8?B?M0NKbG5ZdmdxS2hQdUpnNHBla0VlMUtUSGdyLzMraDlkbndHT2hLMndTbG9h?=
 =?utf-8?B?YUdMSmIyWGxSRVhKeU91bXRBWGcwZkVsZzdHR0YyNlZwdGE2cVprTXpDZVFv?=
 =?utf-8?B?QzdPZ0wrWWVRMFprVEJFNzRiUUxiaFV5K1BLR0pUK0FiNUNpQ0hDQmlXUUZP?=
 =?utf-8?B?SU1nMElxc3BoM0Uvd3E2dmxub09TL3AyQkZ6TXE1Wk10UUppUWZMcEp5Mi8v?=
 =?utf-8?B?aktzMGluWVhZb2pMYzdCUStqdFIydFJZQkpmMkJLdG1WZmhKNkx3VTNMWXZj?=
 =?utf-8?B?UFNSWnF6V1MwUlhoejBGNzdpWThPR003NkxEVzZHZnJyejJiSlIxUjVNOG1Y?=
 =?utf-8?B?TjhURU9vSEw3aEtheVdDMnJEYnd0WVBNMjVCL0ZKOGdWdnJ6TXlnQndicmFK?=
 =?utf-8?B?SlEwVGpDM3NWMXN4RjdEbnR3Y3ZiVFdHZ21PWmQyYityay9Obmo3Q0RjL0pR?=
 =?utf-8?B?YTdMWFZFdWMrblRQWUtXVHBjMlVibUR3bFZXTEhpZkJtTE02VFRqYzZUQnJn?=
 =?utf-8?B?ZU85NWNjR1daQmoxWldxS2M1QjU1TmhYQWtjTXVPM2E4Q0hkN3ZXYXl4Um50?=
 =?utf-8?B?QjFnV2oxVWJ1dDNqeWZ3TldPek4rWTl6VldLMTg3YWJBeGZlOVRVUjBpQVZ3?=
 =?utf-8?B?bit6QkRlbFg0MWVEVmxRTTBZYnc4UlBlUG5YMlNzeEpMZzFuSlg0SWJLbWdI?=
 =?utf-8?B?bzlBTEwzQTZtWkZiekdqcjVpUXBBL0lhQXArTm9RY0FSTXloR0YwRUI4amVB?=
 =?utf-8?B?OWRlLzZHaCthTTEvMnZueWZONStlZmppYlp0clFoQlZBM2FtRS9nV0IxWkFl?=
 =?utf-8?B?aEN0RnZ2YUgxMndmdW5uY2VoSnE3VW1QUGZHRDI5c1VFbXA1dUs0N29vS0Z5?=
 =?utf-8?B?dE15RHd6WVA1cUZ2TjQ4dkNWMnpFWGo5RjMwTWxGSHM1aDdHcENycTFQd292?=
 =?utf-8?B?SFA5NGtudHcxSjlqdW5rZStnYzJNK2Q1SHlnY29wTHkwbkhFa091bnFJVWY4?=
 =?utf-8?B?UkxrQ0RhOHl0U2l3Ri96VWRDbWNXRmNjNnZjeEo5QXVxQTBzWFVsQzZlYUU5?=
 =?utf-8?B?T3R2TFNUczJNcHVjWVBGRVdPaXV2aTNPUjliazQ5UnhsL0RjMHMrODRVdDFy?=
 =?utf-8?B?bGdGMG1QcGxscDdmRlRGNm96cHpMRk14SWxFcHhmOEdwQkpSRlNBZHBJcndY?=
 =?utf-8?B?c0w2ZTY0bDNCeHZRZ0dTKzROVEdhWWl6MnlVM3poRk55QmNJdVc3eU1PVzZs?=
 =?utf-8?B?bzYwRmt5cGJSZnphYzAvOFdBMmlsejhOdDZFVlJrTzlQRmhDTk5UaG9OdVZB?=
 =?utf-8?B?SXdPQnhDT0lIM3JVK0l3TkVBS2ZobTc0b2NVdUxGcVJtNEYycm5wUDhXcG5S?=
 =?utf-8?B?dE1NMWNPM3pPb3k5TlR4dmNTaXlDYXZ1c21ESk5LM3hZc1JNTWthWG8zUk8y?=
 =?utf-8?B?b2VnRmhSMDZTUWVuZk1OcGt5VkIvN3pSWm5BeFVCVzFrUzVreXFBMzVUbDR0?=
 =?utf-8?B?K2lRWUVwQ0twVU1BZHlTT2FXV3QvNHFqVzN0U3Y4WlZLdlh5dnRyS0dPK1JY?=
 =?utf-8?B?azlEUUhib1ZnbWl1OGlzSGppRTREZXpmQVZoV1lzY0FkaVNoN2ZxVVViR09q?=
 =?utf-8?B?MWcrNVp6bmhnRWx3NzRKeU5YRVcrbTlhV24yRFQyWEdjM2d1N3A5OTNtUllJ?=
 =?utf-8?B?ejdsUm5GVDN2WVdBQ29VVEIxSE9NeUMxUVpiR3VpVys4SE13RWc5VjdZWVVm?=
 =?utf-8?B?QlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bc7ce5b-7912-4507-acad-08dc21dfab2d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2024 22:06:11.4220 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /PEZBNydS5Qtfp5REF5jMEWQzNfHU+LDanqhCKoC2BSdIrCRZLr6WUQUQZ2S/kLZlNkO/SgnemlDPZTtlWbqSenLBeHZWmyq+NS9LxuxpTM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8135
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706652804; x=1738188804;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Jaa+irpV02NgIsl8rlBIaLbipd4bFS5bo0yzt1JudPw=;
 b=YsLR7AeKw0q2sAbhyx2wK6z4R/R+CO+Wl9MQsZb/GcdY2JOO+iKnZl1d
 dhEWitkj2oh75j/CLzEUAMvR/D1zgpoMLtGJAXU7fwdFMIKRxFqEbHMf0
 Fo4y63z+nF+yl+6cHw1N5BZnuR4OO5oq2Y2U0tFrCann0EtrfVVBfse74
 1yt7jXVRxJ+5n7pS/fsJScMquRMfxk31aBxr0ay0myEss+zSw0JFVQ22p
 j7zJ8rYtrHB3pWfb6ynsptNtlnGKm/7rASFBuwgPoZ2IIzRBsYxF0TZmK
 X0Hi91u5yJ9yHUlSDHJ0i53NfCTSSGUl6I6rY/YoPOnFHvkzDu/yuewL1
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YsLR7AeK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] i40e XDP program stops transmitting after
 link down/up
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jan 30, 2024 at 08:28:24PM +0100, Maciej Fijalkowski wrote:
> On Tue, Jan 30, 2024 at 10:59:13AM -0600, Seth Forshee wrote:
> > On Tue, Jan 30, 2024 at 05:14:23PM +0100, Paul Menzel wrote:
> > > Dear Seth,
> > > 
> > > 
> > > Thank you for bring this up.
> > > 
> > > Am 30.01.24 um 15:17 schrieb Seth Forshee:
> > > > I got a inquiry from a colleague about a behavior he's seeing with i40e
> > > > but not with other NICs. The interfaces are bonded with a XDP
> > > > load-balancer program attached to them. After 'ip link set ethX down; ip
> > > > link set ethX up' on one of the interfaces the XDP program on that
> > > > interface is no longer transmitting packets. He found that tx starts
> > > > again after running 'sudo ethtool -t ethX'.
> > > > 
> > > > There's a 'i40e 0000:d8:00.1: VSI seid 391 XDP Tx ring 0 disable
> > > > timeout' message in dmesg when disabling the interface. I've included
> > > > the relevant portions from dmesg below.
> > > > 
> > > > This was first observed with a 6.1 kernel, but we've confirmed that the
> > > > behavior is the same in 6.7. I realize the firmware is pretty old, so
> > > > far our attempts to update the NVM have failed.
> > > 
> > > Does that mean, the problem didn’t happen before Linux 6.1? If so, if you
> > > have the reproducer and the time, bisecting the issue is normally the
> > > fastest way to solve the issue.
> > 
> > No, sorry, I should have worded that better. I meant that they were
> > using 6.1 when they noticed the issue, not that kernels before 6.1 did
> > not have that issue. We've also tried a 5.15 kernel build now and still
> > see the issue there, we haven't tested anything older than that.
> 
> Hey Seth,
> 
> I am observing same thing on my side with xdpsock in txonly mode, so I'll
> take a look at this and will keep you updated.

Can you try this diff on your side?

From 1d3b2d92506c0af4bea843c046bdef34f3f66893 Mon Sep 17 00:00:00 2001
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Tue, 30 Jan 2024 23:01:28 +0100
Subject: [PATCH net] i40e: stop XDP txqs

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 6e7fd473abfd..08ef88783762 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -4926,13 +4926,16 @@ int i40e_vsi_start_rings(struct i40e_vsi *vsi)
 void i40e_vsi_stop_rings(struct i40e_vsi *vsi)
 {
 	struct i40e_pf *pf = vsi->back;
+	u32 alloc_queue_pairs;
 	int pf_q, err, q_end;
 
 	/* When port TX is suspended, don't wait */
 	if (test_bit(__I40E_PORT_SUSPENDED, vsi->back->state))
 		return i40e_vsi_stop_rings_no_wait(vsi);
 
-	q_end = vsi->base_queue + vsi->num_queue_pairs;
+	alloc_queue_pairs = vsi->alloc_queue_pairs *
+			    (i40e_enabled_xdp_vsi(vsi) ? 2 : 1);
+	q_end = vsi->base_queue + alloc_queue_pairs;
 	for (pf_q = vsi->base_queue; pf_q < q_end; pf_q++)
 		i40e_pre_tx_queue_cfg(&pf->hw, (u32)pf_q, false);
 
-- 
2.34.1


> 
> > 
> > Thanks,
> > Seth
> > 
