Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C46327E4D9C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Nov 2023 00:56:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2520F40543;
	Tue,  7 Nov 2023 23:56:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2520F40543
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699401384;
	bh=OZFlWM993iGKV0IkGGGzyi0r5w6iMQfh1oa5Z55IQyI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=T8EyyJcp9kIT1jJool/t8ZjSMsptHs2/aAT3HXuKuYJizhTanak+VNzPxXrFD65OM
	 EzxIh1P5uBT5poL7hBV8ZzAwnErMNDw3JZsVoNNWkpo4kJqyGyO4pXGpYIa6VeZqOy
	 LYa8GCLJ/nSG0CO9czsh6PGATbsEGxnX0F4W9qOm8/8PS6HWmYo7x24jZi16G3stZG
	 OZHXRB+yi2wb7aYJgpzSOuQR9mmpvvsgQXeuvXmDmIgtB4DR0Tc96hF9b4IxJg4T3Y
	 p2CDuFwBZYLwJQNjWT+z9zJdOj6RN64rqXEMzOnhCxpH00zdjLOIRBeQjORxHGQhOy
	 tANKt2em3HW+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0G8OBeuDWwe9; Tue,  7 Nov 2023 23:56:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C231C40518;
	Tue,  7 Nov 2023 23:56:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C231C40518
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EBA481BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Nov 2023 23:56:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C1D9340543
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Nov 2023 23:56:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1D9340543
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vSm7Lz_SRH5f for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Nov 2023 23:56:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9EE5C40518
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Nov 2023 23:56:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9EE5C40518
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="456148028"
X-IronPort-AV: E=Sophos;i="6.03,284,1694761200"; d="scan'208";a="456148028"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 15:56:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="762879702"
X-IronPort-AV: E=Sophos;i="6.03,284,1694761200"; d="scan'208";a="762879702"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Nov 2023 15:56:13 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 7 Nov 2023 15:55:25 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 7 Nov 2023 15:55:25 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 7 Nov 2023 15:55:25 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 7 Nov 2023 15:55:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ISoxBOC7mFXY0rLlbh2dAkN29p9r81zSZ5r3Qs7SnxpzVN8xBKGEqyzl7I4aYSbACQYKyz4c2hAiCr4JECy6JY6W2WRk6Pb+1CFHM4+Y2D6Q42H2ElehrZFrEKshq/imXnF/fvIUxS5t684q9OoFCj96QEADFvmIzVA6pghaBf/ns/VnkPTr4pDdXTWD1ZtMsy3PJjBIRzUYwndaZNqOwUN1VgjyID+ebMu/rSWlCuasTNSDPF5G+eEXHPAhi+oIyn5nHmQxkhTXOqL1GPAa5v+W1MA71UGkE6Jfx9EH0Ml0OFI06zGu06gYNy6oQE6IRLc39rVxdDg42fm96eG44A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dznE6dpGNd5PnFftKWlNgZFIqN0DiRmfAuFOneuBJS8=;
 b=O0fcKPvgCy00wQhDztFFMfpXjumL+U8xqMospNOG9rQ1vuHFZ8KQLYpzOBnH544FlgZYx4zmD7vaRmOyuCHR7+ib+XF1evbIz6cNJ8ZbSOKQ1xJFkb6mbennkd7q62BI85WDD7ReoMeMvx893B/x58q3CrtZF97Aip6p4ZuFtdECHTg9yY9tRu3+jfl/WtlwR1n8HOVcQCt9Od47UIRprp5giZSS+nVFwoz06CsJwwXQ/vKMdA7zcDXLUNw97d0rl2UQXKRwBRIBpxQXK4jlcdKxzYpEECby81iXMM7N1VpIBsZ9mUdiwgupXyUCub3ni1QNx2Bl3TLo7GR5ky6sdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by CH3PR11MB7204.namprd11.prod.outlook.com (2603:10b6:610:146::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Tue, 7 Nov
 2023 23:55:22 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::8e20:31f5:2a6e:9bdd]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::8e20:31f5:2a6e:9bdd%4]) with mapi id 15.20.6954.028; Tue, 7 Nov 2023
 23:55:22 +0000
Message-ID: <dfdd129e-10dd-99f0-cfb3-5a06ecf4a65a@intel.com>
Date: Tue, 7 Nov 2023 15:55:21 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
Content-Language: en-US
To: Sachin Bahadur <sachin.bahadur@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231107224040.494924-1-sachin.bahadur@intel.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20231107224040.494924-1-sachin.bahadur@intel.com>
X-ClientProxiedBy: MW4PR04CA0130.namprd04.prod.outlook.com
 (2603:10b6:303:84::15) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|CH3PR11MB7204:EE_
X-MS-Office365-Filtering-Correlation-Id: 20fa0b7d-7ab5-4c1e-67f1-08dbdfed016b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: M+BvagToJ3gXCIrBCHxXHPTQlUFVCIzPpUxScv1PSKqYM7iD8C9CmimvrlnI3vLZS2czRnsf5LRT4gSoMbmFGknHzpo7qmdVPLp7mlVGh/y8ifNKHPfO/FLKhE2o7t1P3S/AT6qEmz75WU860nmQDSAjIPro28hllejCms1VBPV797g33rOMWdXlh4PO+wZ5A4SsRUegRAWWEFc4ts53PTTGGcJZnb0ftwJHIFbvm3EID2oeyv1Xf2mTckmAngP7e+skVN7GuEkrprjNR1rQoh+7hGTHrCSAU2zdDcKI06xUjb+ccBb4ncx68VvhlZbqNvUNyowl1j89O6qbEPj8jjIfSQbWGuPIJuRoio0/wUjqCCPj2B78rISMcAVKEg9XZD+iIvjgu3cOwAGssPxHdWSPg7isaJbMInVTxAzD540v9rNkSxyPV5o/nTACdz0NiPFR6CWcm9EeLIfWKKvyDB4aGq2OgzNfKDJSQ/2dxclq4SEQuX/2dqFlY7sav9GcxS7RT0U6cClGXqIw0y/ES1CIrWL82mlxyO9XjRsCcBzhlsnlcS3jVKyEw2KNEaCOEyGipW1OEDL4hqv3SbjDoHH7SNQKg5DqGo93VLUamrlxcdiLc7W2bkxSp97TNMm0eP14cqjTrVEiK7AVYlRqVQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(346002)(396003)(366004)(376002)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(8936002)(2616005)(44832011)(6512007)(31696002)(82960400001)(26005)(6486002)(478600001)(36756003)(6506007)(66556008)(66476007)(66946007)(53546011)(316002)(8676002)(2906002)(38100700002)(31686004)(83380400001)(5660300002)(41300700001)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RVZ0aWpvM2MwOTU5WW1MUnRhU2MyUml3amNxSXdzY3lISkV6NnpqbjlBSE5I?=
 =?utf-8?B?R1ZuMkszdmF5ZDJjTTNrdVNnSU9vQVIxV0JsWnVjbTFGTXBlaGNFOFE1bFdw?=
 =?utf-8?B?UjR3eUdQSjdaV25kaHBPdjhiY1hJKzRqWWlsK0ZUUkVROXIyRHhrdkV5M1FT?=
 =?utf-8?B?ZVYzVGZGdGZXUXhQUHh5dFZKb3IxWnBWeWJtWkJva0k0WnhucVJmZHZWZndo?=
 =?utf-8?B?NEFsSHlzV2FFSEsvL3BZV2pEVzVpSkxpd3Q1cEthUUZ4VXpzekZHeWlKc0tT?=
 =?utf-8?B?SkNKbm9MWCtjaGV4VmdYMGdENjQ1VEg1QVpIeUpsOE1XUzFzbW4rQ1JFbnQr?=
 =?utf-8?B?ZXBXNXEzQnI1OWoxY3ArMUxORHh1L0Q3NTVEY1NsM0kxWlBGTlNCZTNvd3FG?=
 =?utf-8?B?ck05UEhwOVFDOGEvRFVKS0RvWmVpRlNXcjA4eHBUNW91U0dyMUV4OGErTit0?=
 =?utf-8?B?enp1YmprUG1CaVAwZjh4bTYxaHBtYXlkdnhLc05vLzNGc2JkaFlEbjQ4UEFX?=
 =?utf-8?B?Z0Jpd1RRZ3lSWStOU3p0d0xvQmFPeEJTd0pLdWdsNUc1Q1JjTDBQU2VyM1FU?=
 =?utf-8?B?Rzk0QUZMSVlJMmcyU3BBNmVyMlVZWXd1ZTBTbkp1WWhSTHBCK2k4bkIvWTRI?=
 =?utf-8?B?MzZLSmV3aXI0alA1WGxDNHVrS292NWdDV21Lc0Z6dXd1RDF2VERRTXBsNVVO?=
 =?utf-8?B?YmovbUVIZk5XNGg2TnJoTm5GUGtPMjF6aTBHSmJTMUhTZWFoZ3ZsandJdG5X?=
 =?utf-8?B?ZDJZdXlxZTFHdHY0Ky9UbTBxVGRuNnpuYkJGS2JRamVrRUdJS2YwbEZtSVl1?=
 =?utf-8?B?TytmMWEwUTBCVTBWSnlKa0pxaEFWOXpjRm94c2QwZi9UOUk5bEF6cFNZd1Bs?=
 =?utf-8?B?SFA4c3JZR3d2Y3UrWit4ZzhnVnlWMnUySGk0VzU2RytBenhta2liMUxnUC85?=
 =?utf-8?B?MGVjQlV0ZTBZYkFob2s2YU5zYUovTXhIa1RPa2VnUWFPUjhCalh6cEt0ODNl?=
 =?utf-8?B?Ui9LS3FDWjBGNXcvWHFCcnREa25ZRHVnMVNuWWlXTnZxSFdVTjBoWndzbVpU?=
 =?utf-8?B?NU9MdlJYMUdKUW15SWtDVHpob1J4MmxRemU0TmhpUEFEeFJmYTBqMUNaczky?=
 =?utf-8?B?R25NUUZnYVdaa0tPNzg5U1E1WFJKci9xRFFKbjU2bnMrR3hlai9PUllQd2ha?=
 =?utf-8?B?a1dHZ3NlZWVpbHF1Q0pCbjZyY3kzNUVrNjhiNWlWS2RUcmUzZlBVS2xMbmo2?=
 =?utf-8?B?N3RQU2ViZWxLU25kSmFRd0h5Z1E0RXplUWlUVThYU1pxK1dkU25ScmpaR0k0?=
 =?utf-8?B?LzhYWTc3ZW1hWUVnTzlwZHBZdFFTZGRGRXQrOU5Ld1pnVWJYQkdXa1FJVmdj?=
 =?utf-8?B?bWMrcFpQL2UwaUV1ZHJaRWZrOW1WN2d5NHNiR0s5VWlvQ1hZeUsvYXoyRXE0?=
 =?utf-8?B?R2xSekV0WkFsamd5Tm9pbk12N2wvZ2Z6dEw1RC9EYUJQUmtSUmE5TWFmNVNj?=
 =?utf-8?B?ekNleEp0NUxZUlcyYmZ1YUk5MHEyVkhGTVlsZHVsNHZEcWlLNjRhVU5EV0NI?=
 =?utf-8?B?eEpRaGtLamVrVjdiZ0ZqMDY0NVN3QUQ0a3oydHFHdFhXakl5SjdiL3dZUWdI?=
 =?utf-8?B?cWkvQmJRZnBPcVZQdjV6b1NWY1hCL21zWWppcE8yTWIzYUxSejFleURjWGM3?=
 =?utf-8?B?L0xxQlE5V3VQMW4xSFNvOTFwS0JVMUVkVE9zcllSeGNXek5VWVMxcjlhR1FT?=
 =?utf-8?B?V2c0U3Y1dDdhMjIxTTg2N0JBcWkrRDk4THhGRm5qQi8ydlF1V1l3dkRFWWw5?=
 =?utf-8?B?amJ1THY1L0VaNmtCVXIzanlLcWVDM2dIOGpBaU55bEMvTHdWWWxPQXEvVFUr?=
 =?utf-8?B?L3ZZZ2hhYVNxd2Fxa2U4bnJrcUUrczd6L25GdGVEK1J6djJvOWZlYzdHWkZD?=
 =?utf-8?B?NG5KWWtLdTRIYkJ1UGpKeHNPc2IyU3QxdXFKbnMzaCsyZjlHUXRzd0FxT0NG?=
 =?utf-8?B?WHJWam5vWnR6aWFyMUFMTlE5S1NMaURWZ3FxWXZ5WnJxZWFBbDVUQnlPcmFJ?=
 =?utf-8?B?ZkROSE1NeWJwOFM5WE9YeWMrQitUMU93UTdtdEFCZ1Q4Qm5kSGhXdGJ0Q0ZX?=
 =?utf-8?B?SlhHOE1nTGJ2Z0loY3ZFcDlJRG5UVjBOQnJqdjBJeXIrcUMyWFNkL29CK1Mx?=
 =?utf-8?B?TkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 20fa0b7d-7ab5-4c1e-67f1-08dbdfed016b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2023 23:55:22.7982 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3DW2QVVED9aFSIYHxisg6/g9CCvKf8FQDVFG00bw21XgiObaEKtxJ1SbD4YBzhUrBuDVFTuSda+r6JSYBt2fUfN31c9TbrsA04vlxW/jrXw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7204
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699401375; x=1730937375;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=CKyjMB4rcCGDibmaU6GG8zyvVLOYaWeZMkVI2mEuTUE=;
 b=JvEzLbpOKfKHm9ccbTz1TA8Ry3pyamCxlGkkC7uAOkAJ0BB3MjQzBYig
 98H4CmdIbKuzaXqQf6pL9DZ8FoaoPUb6FBOKJ5DtRFRuC9fNXEwIdBltk
 w4BRAnNHetc1MwxUGHvLblFLX46Scn3G8GV5UOq0htLpdO/yUQeTFcENV
 QUIjB6/6sgOg0CA1ippQ/j0CoB0raedD+rrw+gGONI2wU+agAn+4TDsG2
 fHbhrNS6VU+JoLbWeiQ0Rhz4ZhPmCeJH0qLQhtVNw3WRpr58plm08rpft
 GsQbuLDL3jirQz8+cLrt/EfD23yRQsLeQG5lKeZKx2ZMcyOA1yJVagIRl
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JvEzLbpO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/1] ice: Block PF reinit if
 attached to bond
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/7/2023 2:40 PM, Sachin Bahadur wrote:
> PF interface part of LAG should not allow driver reinit via devlink. The
> Bond config will be lost due to driver reinit. ice_devlink_reload_down is
> called before PF driver reinit. If PF is attached to bond,
> ice_devlink_reload_down returns error.
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Sachin Bahadur <sachin.bahadur@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_devlink.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index 80dc5445b50d..45e40b587e82 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -457,6 +457,10 @@ ice_devlink_reload_down(struct devlink *devlink, bool netns_change,
>  					   "Remove all VFs before doing reinit\n");
>  			return -EOPNOTSUPP;
>  		}
> +		if (pf->lag && pf->lag->bonded) {
> +			NL_SET_ERR_MSG_MOD(extack, "Remove all associated Bonds before doing reinit\n");

no linefeeds on extack messages. see
make M=`pwd`/drivers/net/ethernet/intel/ice coccicheck
output.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
