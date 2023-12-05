Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2173980609C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Dec 2023 22:23:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A3DF6613E7;
	Tue,  5 Dec 2023 21:23:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3DF6613E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701811407;
	bh=kHAugBSzkm+aHXlLGjkqQbR2YX1cw6uOW0HnFidWElQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3hh4y4p+/mmUJjm9nAQPAvslG1aVU63iyYxZFwAygBVI12vk9tdSn2D7iLHmZbbdE
	 G6QoqHE/YPkILfa9cB+uhbb9KWnAjoLxz4Fyup+eKoQTSzXcVwll8/IdcF4m9dtvFq
	 Amea9TC86pPOkEsUiqzN6QLcW6maezNFtAseGG45FDAt3iAmaQu3bj9bkBoubY/vMI
	 p0bXu/UBRkPcmtTtMbRFYSTBZ3N376ATu9uPMPcP9GxzEf71LAtsciL7LXt5LKw+ik
	 EmerGtb9jmBcq5G58AdoAxloE2pgL4egTPl64EtMvLxIBluMEHevAEG1TAByfXjw7g
	 dkAf7tYrbwd+Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PRPlCRln5LxW; Tue,  5 Dec 2023 21:23:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 80F56605E8;
	Tue,  5 Dec 2023 21:23:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 80F56605E8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B29EF1BF35E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 21:23:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 89A238228D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 21:23:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 89A238228D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l9v3w59Uiwit for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Dec 2023 21:23:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0694C81E5E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 21:23:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0694C81E5E
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="384370005"
X-IronPort-AV: E=Sophos;i="6.04,253,1695711600"; d="scan'208";a="384370005"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 13:23:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="914941448"
X-IronPort-AV: E=Sophos;i="6.04,253,1695711600"; d="scan'208";a="914941448"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Dec 2023 13:23:13 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Dec 2023 13:23:12 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Dec 2023 13:23:12 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 5 Dec 2023 13:23:12 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 5 Dec 2023 13:23:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eiAVlQ3TrT2XfHo4Gg97yEoSkv2TX7u7wSWPZgmT87wvOZeAqIvR2R4c4rJ/3axA7IqsJhjFN2KuuKtOrI4yyEcjuVWhPD2ImGxnBPI6193bk8KOKAckmEwnQ34RrIX+e93UVlq78YhwbjjVkb+4ErG7HGkuVjQPBb2/Lsz5rl8OIGF1/UMkSG2ucWLTGA4xLG2BAk8ymQiKaMbnZ+HCYDrlPVZ/ZxBjPvAOOzYQJLNfwIEPBFnMeZec2Fxz8ADwjaUdXyiA5Hyo0OVMUtGpyK2B/3Y4+f98Kx2RMpeQ+D+k5/QvChiJidK2lxV+yxS6A3xA9xTPV8WlfE/PATjV+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vBfx8G2Vf89m70QX/nuQLZD7IYp1NN7TguCUss+gNWU=;
 b=J9T1BmksiJZSbI3QWo4NWYm2vM+Z6giZ39qESxF2hSQGsZiZwhpR7MNoHo2n3VJm9IYRKsceT0/yzoE6MBRosOWYZH7suh7oJ4Z7mwG+KX/zlvUBfHaFk/rjWI2vPfS3u2MG2rkH6bsAcUde+RMqz1AzhANFGHQKerbiVzHGMwHs0LRuf1daPPjufuFWNg9rZcxIZ3AFOXZnGM03KhGcqtF4H5aSFV1A2iYaCTSkJLfBNWrDfxLRsthLGQQiZc5zV5GbJzdEOz1KrgSoLn4idJyc7XylUFw56Xt/5dGu+6gF94RxhNOGxiXH2ktfA9IAy5Xb9sTiN5M5E9MOJaPu6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH8PR11MB6707.namprd11.prod.outlook.com (2603:10b6:510:1c6::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34; Tue, 5 Dec
 2023 21:23:05 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3%4]) with mapi id 15.20.7046.034; Tue, 5 Dec 2023
 21:23:05 +0000
Message-ID: <a47ee305-1318-3b32-bf26-da6342ca4513@intel.com>
Date: Tue, 5 Dec 2023 13:23:02 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Lukasz Plachno <lukasz.plachno@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231130055540.12692-1-lukasz.plachno@intel.com>
 <20231130055540.12692-2-lukasz.plachno@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20231130055540.12692-2-lukasz.plachno@intel.com>
X-ClientProxiedBy: MW4PR03CA0199.namprd03.prod.outlook.com
 (2603:10b6:303:b8::24) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH8PR11MB6707:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d3657b7-c96b-46b3-246f-08dbf5d85e6a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lzW8F5itUvN3kghU2/r1+6MmIEvV1JWLWbOLopjNvNFA2xPcv8uBV6NIEUMoXeRTv1tEPVk6LoZSc2xElMkcGajXnUKqcL0IUylC/f/oDFvW4dSj5Xi507tTQjYJK9ahBdOueCQ7nP77pifz6UdsdO/jsl72H4jfZ4LJqkThgTfdLd6hHeMxw3A7hxlr+AkeX3fGS/xPd8WxQ53PojX5hO1GgJZo7oB4BXkVgsMn9jWv1xK9khoSWbChV0DNSiBMkqTWdt2qw6pEJIaGk0gNiT7SKfdcl5ipYLyFbSNbTZBQPpEazkpZ76i/KWL9c+EklXb19l0Z1z4MI7VS9tLvh9A05AKINFOti8FiwRuD+KTCt+m1Q1xvVLrIKtT5exSgQD3qgVPaZDHMVnhpFE9bfA+aXbUuUZxPOaAE/TVvTpx141Pz0Z/1T2gGfZvC7nLMkCuDU3GIPGOgGAB04BNlBfixE3EmZwvGFV9A17p2EMfoI+EO0HMKXYXlG5X9yeSxtlGP15+9RTHDSAsq+KW7+0+DEmo3AnTuzU99J+C92IE5J/+Q2Py/kkgcAAF6i1IKRuXA/xBMWIZ0ayNuJdoKAljWZ2sZz0/oIpWaeVWZU0sy5ovwPTTQPxAdNj96x7MISZqYa0GPcKcUwGwiUO9oHbbqekMGWh86sLLwAJTHDz66sJBH53CPlYlFnlex5lgP
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(346002)(376002)(366004)(396003)(230273577357003)(230922051799003)(230173577357003)(186009)(451199024)(64100799003)(1800799012)(41300700001)(36756003)(5660300002)(86362001)(2906002)(107886003)(2616005)(26005)(6512007)(82960400001)(83380400001)(6666004)(478600001)(6506007)(53546011)(6486002)(38100700002)(31686004)(8676002)(4326008)(66476007)(66556008)(66946007)(8936002)(31696002)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y2NPdE9GVk1lb1FUZi8xZ2llS0lnd1hHL3B6dHdvaWgrY3pGdlJYVG02ZlEy?=
 =?utf-8?B?Y0VtOURTdjNJNzBlam5jY1hwVjNabFpJcHV6YW9iNDRGbXhMSnJSUk9SSW9S?=
 =?utf-8?B?S2htU2c5UG9UUVdkQXMxSWFBMHpwejJ5dzQveWRKcC9zd1JOdDRMOTI1Qldo?=
 =?utf-8?B?WVU1bUVHVUJNYlBFdW54RVlHeFlROCt0QmFYY3FMc2pNNXNRc2FCc3ByVFJB?=
 =?utf-8?B?SUh5K2QySDNveHZDTjViODJJTjY4RnExaXk3VmVkMmdOMEdRbk9MV1I1MTRx?=
 =?utf-8?B?RlIrcDZwSlJNRHZKb0ZKU09HWnVMUStONFdoSG1NaFlNR0Q1bGoyWUlEc0xu?=
 =?utf-8?B?citkQVRMak00WmF2akJLRy9jODhlYXlQeGpCc1Rkekk3aDlteXZDSmhmL3or?=
 =?utf-8?B?d1VaZFR6UGZ5MTNQbkN0dnNHRGs1UUxhSGhPOTZveG00MnVLbG9LTUZ1QkFz?=
 =?utf-8?B?a3BDRVZUYkRjTU5JUHBFSHo2eDNSbWtCK1J1M2o2T1FIZjFzWkh1SVUyakR2?=
 =?utf-8?B?a1NBVlp4ZEQ4WW9wVE81OUZ3N0FwU1BxeDB5TjZ1R0prZkgyK3dJeGdhNi9G?=
 =?utf-8?B?dGRJd3Z2SDFzYzZPejNQTzdzNGdmcnFRdHk0a09NRjVpVGRadzJhajZZZ0t4?=
 =?utf-8?B?WTJoMkZRcWlocmlWK2d2Y0FFQWxQb21GeTVMQWE4RVJJYXhwSE9VUU9WcXFI?=
 =?utf-8?B?TExUUkJnQWJyYVMrU0F4eXVsR09RVTBBdXlmaTI0cXpYb2R5NmZTZmZycmR3?=
 =?utf-8?B?YlhCQk52WTdUYy9HVFVLSWtkUUM5MWdFRmJvTWNJWk5yU3V1ajIxa0xHc1Aw?=
 =?utf-8?B?M1paaXRRdEJGZ0VjZVdEVS95VzBiTHp0aFZ5dTRDQWRXWXo2MGFld3JNcDRQ?=
 =?utf-8?B?cXVtd2NtZHJsN1ZyQmhoSktXOEFQMm5tOWNuKzI5QjRzalVjRkNFcytlV1NV?=
 =?utf-8?B?bS91TEZocjF2TnVtanNUZ0VBb1J3ZHJkTE13OFJJTDR2REFtRDQ3cHhRZXU3?=
 =?utf-8?B?UkNtNU5RKytyUGdDeWY4ZU5hUzEzR05TaXYzNWRzM1hmUkFlNHF4N0JHNnZa?=
 =?utf-8?B?Rkxnd1NVR2QwU3JJVVNKTy9paFdCRzRNWGo0cXdDQzlaSTYxeThDbzRCQkM4?=
 =?utf-8?B?VThhTW1aNllZOFJzKzhGZnBtVklpYUJPUUFmVmhLSWZNQkp3a0dYbDMyNktn?=
 =?utf-8?B?bDBubW1Ydk9hUldEYUJxZ0JjQWdhWFFBQk9uVmpBaHVSQkZLN25lS2lqam5Z?=
 =?utf-8?B?Q2Q4WCtwaTN1R1FhenVYd3lLSVNKM2kvWmJwSDZpNGF0SFh3c05kRzVaT1pN?=
 =?utf-8?B?Qkw3REJOdG0rcmkrOTFFeTh0aldDT21hRjVDYlUrYmZXZVA5RjJXMjNobjNi?=
 =?utf-8?B?SVdudG5tZERyODRmR3VHdmlPMmdwRFZPVHBLM2ZuRWYvblh4Y2NnWXN5cTcx?=
 =?utf-8?B?VmlyS0x3YW9FMkdTczl0SmRtdWxJQWM1eDlFOEhINnNldkFZc1BJQ2o1TXIy?=
 =?utf-8?B?U1pUKzYvQWQ5M3VTRGJGSTBOV2tWR1dpN056Y24yZE82Q3haZXo5bVdtT2hv?=
 =?utf-8?B?RFBEeWh1MnlmbWkxOUdrKzV4YUFDWk91eWhzWXQ5YVVmMm5yL3p1TmNpb2Zk?=
 =?utf-8?B?eDlWdzdyU1lBYVNsMndTWTNvQ0h4VS9LYWhXRDF6b0FGVnRuaG0yZmVuN2E0?=
 =?utf-8?B?a1hFSXFDTlhFcjZ5M2tHbE45MlFTbG0rbGwvSVRLR1ZZMGNEUk1jMWp5ZnBv?=
 =?utf-8?B?YzRCUmNoRjBlM3BhNjBlSFpPZGEzVzY3Y0hxZlc2VFMvTVdvOG0vQ3V6ajZL?=
 =?utf-8?B?eENSUEZlZENkUXNLczlmZXNrUlN2ejMvYkExVlcwZVJMZXhkeW5paHl1TE45?=
 =?utf-8?B?YlBpcmFqaU1JS3UxUFZSUFE4Zy9reldnZTh1V0x2N2djTHhEK3FaZDRQYzda?=
 =?utf-8?B?SzFzWVkweFcxUEZNcGxKSm96V1lMOEpYVEtGZjErbnNYbEwwS0g1SktCZkY5?=
 =?utf-8?B?ZUZYd2hjSXdDbHRmcFBkME1rUThVWG5uQlQ0TXhtME5lNE9hNGlKZ2xocVRF?=
 =?utf-8?B?M2YxT0kvTHplNmxmQ3JIM3RyaHBHNXgwWVRLMDJydlduMGtGa2djeXd1WVBK?=
 =?utf-8?B?RkZmVzZpalk1MXJBUFp0dXlzSXFvRlFaUEtRSnIvVDlSc1NNU2ttWTk3ZmlO?=
 =?utf-8?B?QVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d3657b7-c96b-46b3-246f-08dbf5d85e6a
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2023 21:23:05.0683 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cvC9AI6olDBkNSSEQqdOWQoRq1BgAuwfAhG71ahuIIbtNZsZl6CaGI0SPx7LvSpxzcl8npdWmo1SB1vzyLfuK2DLvtYIhS20eyt3fEAxPdk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6707
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701811393; x=1733347393;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xiTGQ429X+MM8nQIO/dEgp8tzX9cBitibHzidlA5z4g=;
 b=g89wcUbk9o2olYbVE8MbJMqi879O/x32P2dbbxI/nx8+2sfyA8qNcFk1
 n+Y2T1rGdPloVjGKTIDjiT79D/ZjGGLNd0opvKuS3SI1J5jX3ABFpA9uY
 eFA8UX6OuWO263u+J/hgrB2NvHM/XmV8N6h0qgtor9usOFoCl/tcVQgOV
 HFLvsaLa9yRfbliIahO+a7gm5/0v09bfVJcWmn0CQ5dV5gKAUNf5IRrYe
 DtvKL49wAH1U4jiLlLsReLTq3t1LzxWJXE/lTnMg/ynq+FmcPYEkA3CiO
 P7dZujEMtBLKy+Unzr500F8PXQ/TvwU7TIRuPEToExrn64JQQBenGfBlU
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g89wcUbk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: Remove unnecessary
 argument from ice_fdir_comp_rules()
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxMS8yOS8yMDIzIDk6NTUgUE0sIEx1a2FzeiBQbGFjaG5vIHdyb3RlOgo+IFBhc3Npbmcg
djYgYXJndW1lbnQgaXMgdW5uZWNlc3NhcnkgYXMgZmxvd190eXBlIGlzIHN0aWxsCj4gYW5hbHl6
ZWQgaW5zaWRlIHRoZSBmdW5jdGlvbi4KPiAKPiBSZXZpZXdlZC1ieTogUHJ6ZW1layBLaXRzemVs
IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEx1a2FzeiBQ
bGFjaG5vIDxsdWthc3oucGxhY2hub0BpbnRlbC5jb20+CgpUaGlzIGRvZXNuJ3QgYnVpbGQgY2xl
YW5seS4KCi4uL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZmRpci5jOiBJbiBm
dW5jdGlvbiAK4oCYaWNlX2ZkaXJfY29tcF9ydWxlc+KAmToKLi4vZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9mZGlyLmM6MTIwMzoyOiB3YXJuaW5nOiAKZW51bWVyYXRpb24gdmFs
dWUg4oCYSUNFX0ZMVFJfUFRZUEVfTk9ORl9OT05F4oCZIG5vdCBoYW5kbGVkIGluIHN3aXRjaCAK
Wy1Xc3dpdGNoXQogICBzd2l0Y2ggKGZsb3dfdHlwZSkgewogICBefn5+fn4KLi4vZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9mZGlyLmM6MTIwMzoyOiB3YXJuaW5nOiAKZW51bWVy
YXRpb24gdmFsdWUg4oCYSUNFX0ZMVFJfUFRZUEVfTk9ORl9JUFY0X0dUUFVfSVBWNF9VRFDigJkg
bm90IGhhbmRsZWQgCmluIHN3aXRjaCBbLVdzd2l0Y2hdCi4uL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfZmRpci5jOjEyMDM6Mjogd2FybmluZzogCmVudW1lcmF0aW9uIHZhbHVl
IOKAmElDRV9GTFRSX1BUWVBFX05PTkZfSVBWNF9HVFBVX0lQVjRfVENQ4oCZIG5vdCBoYW5kbGVk
IAppbiBzd2l0Y2ggWy1Xc3dpdGNoXQouLi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX2ZkaXIuYzoxMjAzOjI6IHdhcm5pbmc6IAplbnVtZXJhdGlvbiB2YWx1ZSDigJhJQ0VfRkxU
Ul9QVFlQRV9OT05GX0lQVjRfR1RQVV9JUFY0X0lDTVDigJkgbm90IGhhbmRsZWQgCmluIHN3aXRj
aCBbLVdzd2l0Y2hdCi4uL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZmRpci5j
OjEyMDM6Mjogd2FybmluZzogCmVudW1lcmF0aW9uIHZhbHVlIOKAmElDRV9GTFRSX1BUWVBFX05P
TkZfSVBWNF9HVFBVX0lQVjRfT1RIRVLigJkgbm90IGhhbmRsZWQgCmluIHN3aXRjaCBbLVdzd2l0
Y2hdCi4uL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZmRpci5jOjEyMDM6Mjog
d2FybmluZzogCmVudW1lcmF0aW9uIHZhbHVlIOKAmElDRV9GTFRSX1BUWVBFX05PTkZfSVBWNl9H
VFBVX0lQVjZfT1RIRVLigJkgbm90IGhhbmRsZWQgCmluIHN3aXRjaCBbLVdzd2l0Y2hdCi4uLgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
