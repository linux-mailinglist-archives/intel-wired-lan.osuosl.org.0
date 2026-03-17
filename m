Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHDxBTNjuWlsCwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Mar 2026 15:20:35 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4012ABB18
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Mar 2026 15:20:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 255C56143D;
	Tue, 17 Mar 2026 14:20:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YpgJn7-u35Y4; Tue, 17 Mar 2026 14:20:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 772A2614C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773757231;
	bh=H0clfimYY3lytPJUqtuLTBXuz6qi3njrGZkNbiHg1lY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xuMk/b9APoj232Z2HKMjKGUkBMmHoXuJgh0foeiP/KOdMRvwauLVQEN6f9gYeOzxO
	 AiRx3RC0e1M7EhKT2fW9z96gD7mDP2T+phTrrWlYevbpojPC5+5RruKueSqnlRmzB1
	 mI54MPry+SmR4mMrvqpq+i0pAkcJchBr1BBn1XZ1GH2iy1sjkxTyJAn+LDIQ/cAD8V
	 AHjv04kMfA87gSKPSJw1OYUXuMdSIvqBXO1vwflL3/WXqsIuMfx+QYZd8W3umTk8Rf
	 2tZIjtMAmjhPfrkG8Csx/woJq0vCJ0MKxtVHo/voiaFQQh/RblbkZ17oG+AJJ+wJCp
	 SbV8H37hhwMGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 772A2614C0;
	Tue, 17 Mar 2026 14:20:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id AE2CF1B6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2026 14:20:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 94001400D9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2026 14:20:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TdsFD1sByle5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Mar 2026 14:20:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AF23C4004D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF23C4004D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AF23C4004D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2026 14:20:29 +0000 (UTC)
X-CSE-ConnectionGUID: Y/u57YoJQmCRokPYqW3I+Q==
X-CSE-MsgGUID: vVMyG7w9QiSNQ+lVnEjnJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="85417855"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="85417855"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 07:20:28 -0700
X-CSE-ConnectionGUID: wRVkKyfESjay5Mp1OOsiMA==
X-CSE-MsgGUID: v3f3oawfTfWP+TjEmwOc/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="245303338"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2026 07:20:27 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 17 Mar 2026 07:20:26 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 17 Mar 2026 07:20:26 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.52) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 17 Mar 2026 07:20:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KW+l6buEHxJlDlmdhxuCBiK2/I2MnzbfukKfMWGYeEjasI9/Kmo+bSmRyzvBgQzl3RXuBvuEyWtWIIv8/i82NA3p7rxjY/c6yopeA4EfCDWIQXlnCKIrP99TKW/pQe7Sm4XReDx2H+8VeyzZ2ZPeJKiGEqS5+hAo1LxjFPgNeyDIV9A6UXqf0pn+XjKEMrqJDfoW1nPH1f4dpjGFKJubK+NdeCKbq1oho020NYVMc8CHwVsaJaL2GYKBcaBFnmRAuQe5DrVr7+x5zCMGp9FM9s8eHBu1Bj+96yquf4uIYK3JBUJMTr4BzuVoO0oxZEWFoe4v3Z+76+mT++0Quoy9SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H0clfimYY3lytPJUqtuLTBXuz6qi3njrGZkNbiHg1lY=;
 b=KDCwPckjpQ4eqKr/02LSFkeEcLFDryy56QHwgk6rMyPjIlJOR6qz3NYc0VXNaanHSF84FRFisMu7IpeX0Omk5jnAXOKSgwZNM6x6tMJYHDA7/ii/u2lD/tjAGPwC7P6lSE+XGx1KJg4KAl/zRy5yfjGbUPb6qpBr0EtcCKJvkHzcxe4vSIxRkh9wzYMaG9aOf1G6a38yw/zQ2FcAMbLOKsXvlKFA/xfE4ZxDA1/HxMEWgkxngBOUj6jNmfibwm//7d3CwZzSjb9GqAP9Udtbz4EK63VjONKngDYErvTOIwfADquoeKEtzUAZ9G8FwXHNdgtsVfwwbKQM9oe+YCjKEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8172.namprd11.prod.outlook.com (2603:10b6:208:478::9)
 by IA1PR11MB8098.namprd11.prod.outlook.com (2603:10b6:208:44b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.17; Tue, 17 Mar
 2026 14:20:22 +0000
Received: from MN6PR11MB8172.namprd11.prod.outlook.com
 ([fe80::a60e:30b5:37bb:ecfb]) by MN6PR11MB8172.namprd11.prod.outlook.com
 ([fe80::a60e:30b5:37bb:ecfb%4]) with mapi id 15.20.9723.014; Tue, 17 Mar 2026
 14:20:22 +0000
Message-ID: <7247024b-fc8d-4a75-ba15-a10399db03bc@intel.com>
Date: Tue, 17 Mar 2026 07:20:18 -0700
User-Agent: Mozilla Thunderbird
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <anthony.l.nguyen@intel.com>, <aleksandr.loktionov@intel.com>,
 <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <clrkwllms@kernel.org>, <rostedt@goodmis.org>,
 <linux-rt-devel@lists.linux.dev>, <sgzhang@google.com>, <boolli@google.com>
References: <20260316232819.6872-1-emil.s.tantilov@intel.com>
 <20260317090054.DuPZ6O0O@linutronix.de>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <20260317090054.DuPZ6O0O@linutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0330.namprd04.prod.outlook.com
 (2603:10b6:303:82::35) To MN6PR11MB8172.namprd11.prod.outlook.com
 (2603:10b6:208:478::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8172:EE_|IA1PR11MB8098:EE_
X-MS-Office365-Filtering-Correlation-Id: 2cd8c602-7bcf-4632-ee00-08de8430534a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: QCUMN635W7Q8djmhsSyxRPpaSwLPb/pm16wCg5NoGW+CUrU9eVDio/K+C/UHMmAmPAM1KdCz3WL33kNN3wlS1DvreuRvboSRjwjrFkFHyNAu7Ik44cnAVQWFUNBkZUckNdsBDqtVjg2rzNCpXBfUlq3kuuW0r2K36q5VLsYMNBwwwQ4DhoJfnIKzMrUQh7yeh/79T2YoPHJALuKmuWrY/OjNll2hzUYmbq6u1amnCNrPgNmNVi54cc7XDU6RwowUJee/+gpLNK2TrpsKqLBVtq2dVj74+AXRRlCIiJKEu2Hp2F+AHKazn4ZfA2lLQ2YwbFiyCMzdUOVkwMHSq/pGd/zukSoR24K95/LdZWcG20gWwuFvjZKwBysMPMiS4/5/u2eLumVLmhqu+aqryfy4TE+fNuGZoc2jI1dk6pB3KuYclFI/abSKKAXP2ocfpHMez2iBpi95rys/gtZstP8bSmDhnBgOBn8RS56gwpNH/lc/uTbGUdbE5XqqWge5jiA7BcNAk+Do9d91qvn4QRPWHcfEG7DRKjYThzNmm2EVn0zX7tSxgEwYONpVSoUhrJJiKjM6JIRZN/bNSzSAi71aE7C6YEaQ/0/NBFhvD/xjsvm2cAT7IGEcoTbI2uWaTZOAHOkCRF0lTBGcwM171HOfaVVRyBlrSJTxj3/PH6He469DdOmtlG92iLWVlKedIYrL
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8172.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?enArNGVSdFAycmdyQXlUb0hpOWEzcVlHblhDMUN2cXBSTElKM1o5RU9ldDFZ?=
 =?utf-8?B?WTVpUVhaU1h6UHNCR08wNVdBdS9vNmp2KzNNRXRkNlpoWWNTcG1wYkpxcGwr?=
 =?utf-8?B?Y2ZGbGtzL2YyRDRGd0tHRlgxbk84ZHN3Y0RiNm51ZHpKTTFxSVlnOFZJSHhW?=
 =?utf-8?B?c1RPRHhzbG1nNjA4c08xSndLdzNnek1xUlRGZnBCMFpzN0lxeVRJSDBlbGlH?=
 =?utf-8?B?ZzlqT2ZQcDZvN0d1cDR1UGJwVU5lOWZxSmxYRld3NkZSRUNPTUxBUmVRYms4?=
 =?utf-8?B?Y2pPb2dFU0lrUzhwekZwMTV1dnYrREJmNXl2YURXYkVaYmJJYTlDWmhVaEhh?=
 =?utf-8?B?K0NjZlEyelZ1YkM4VWs0cHd5a1VsYU02OWZVTC82SWtNd3B2UVg0WFFzZmo5?=
 =?utf-8?B?WU12dzl2VEFmd0REOVVIYUlwa1dzL1ZiMVZtQmlVMk5QV0cxU0RUV1hqNWR0?=
 =?utf-8?B?TU9MM096UytaeEQ3WVIrSlhlNURPSTFxSlFPK253Z2lHOGRFTHVORm1JSVJJ?=
 =?utf-8?B?TVFVNkN5bUNpZEl5dVpqUGFvdHhsazlCU0ZQdlgxSHFicDUyN3FUVFArNDFs?=
 =?utf-8?B?ZnArVk1mcmIwampKRElaeGdFZ2lOWjBpMDFIRm51K0ZENkJnVEZZbkc2NlJB?=
 =?utf-8?B?ejJWRmlOVmcxTFI1bjZBVlROLzJSMnNicFhBOUJNRkUxYzJObEJKMnR0K1dh?=
 =?utf-8?B?THpuYnhsSDNFdkNzQlk1Und3NlhvakU5ejdMQzdkdU9iSnpuaXFWZ1BDcGpy?=
 =?utf-8?B?MkYyMStybTVFWWZIeXppSGt6VHI4dEJ0WjhhSGRjNjJWV09SaklvYk5lWmVa?=
 =?utf-8?B?RzVoQjBmOTdyUVY3bkwwYmd1c1F2dmJpSlJCVXVobCtENEtWOXhTUExuNXlS?=
 =?utf-8?B?YzhCTUh4TnJ3S09TcWxpRjEvMmFTcUVVeHpxdG5IS0Vyb1lBS0xjZk96VGhV?=
 =?utf-8?B?N05UTmw1OG5oOHpaUE9PM2hHWi9KN2UvSlJxNXlldmNHT25EaTlLU29kODli?=
 =?utf-8?B?NTFoaFFwYUFjRlAxYy94S0pjd1NHVXF6dGdmbUdjV2NpTWpEbnFuWWtBMU5n?=
 =?utf-8?B?UnBYUXV4SG9kdFhBTGZDQkhRRkNEeWxQMm9BL0NDV2p2THZUMGxUZ3N5NUxp?=
 =?utf-8?B?OUc4WmIwd0lEaHRuYzlhSWF0NG1YVHY2aWZHQUlzajNrdHBXVEJGQ2pnd1lq?=
 =?utf-8?B?VkN3bkFJTWYzOVB4aDg5SFpOOW1xbitib29rMEtWSmdQL3cxM2ExeXA2bGFO?=
 =?utf-8?B?WUpaZlZ4elc5OXg0VmdTdkhmTDlJVnNPWlVOQmtQeHZ2NFFrL3YrdWFpamtK?=
 =?utf-8?B?bDNsdERZays0dlBEaEVSZlE4TGtTcmpwMDlFVGRJcHBmN0dkZjVyTmtIVTUv?=
 =?utf-8?B?TVZPcGhrRTdsUDQ0L0NNME5wZE1WU0ZUZDlHYy9vVlN2WG9lWU4rcXhPSkJz?=
 =?utf-8?B?TXhlTzNiajh5d1MybGNhWlMrN0Q5OGFuSGJXZFF2Q0lhclJKeXJDVXZOQkoy?=
 =?utf-8?B?ejVJWEYxVi92bTZZVVVwTWlhTmoweU5SQjd5cm91c1B1MWg3MEg1TnE3SGV1?=
 =?utf-8?B?cldhdXhhdEZhbjEyeWpwTTdrUkxoRGJKRXR5Sll1UHFIbnZ3NnhjaDBqQThV?=
 =?utf-8?B?cm5heUZEdDhhK09aNDFQSm5YaytVMVd5dDY3N1RKRWpPS0VHTk1FOEdrbGQ5?=
 =?utf-8?B?WUVjdXR5VHdITWIwR3JqcklxUitNdHAxQmZ6eXV3MGt2UktEYzZvbXZRMkpm?=
 =?utf-8?B?MEs1bm9OOW9aMGh4RGpMTFpIZkZpOS9QTmFxRFRlQ0ZScTlIWFlWVUJtKy9N?=
 =?utf-8?B?K0xyVnRNZ21EaEZJU3MrMTc4Vk5zbVhmTXozN245dDFtSmNuT2FyVjliSnJU?=
 =?utf-8?B?YmVlV1QyOWZRSy9CREZVS1NWTE5Hb2NnUW1EREZWN3FQRVJLSHdEeFNNQUlF?=
 =?utf-8?B?bWJkRWc5UEtIMTNxRml6cEZSbitVaFJvMDY1MjZ5RW5FMGNndUpWU0lEdnU4?=
 =?utf-8?B?anpKSGMyeS9jbEdUNnNuYVV3QzR4ZVpkeHZDT25FNnVuZFZ4ck9vWndxek1S?=
 =?utf-8?B?SlJNc0JldmgxKy9xZkxrSXA3NkVhK3NUb21sSlNZSlZzc0ZhRi9nbUtVOGlp?=
 =?utf-8?B?dXBIY0draENLTytTQ0RWRVp4OEJ6ZUxiN2d2VFFnWDVYY3p4bUxmR2MrRXRF?=
 =?utf-8?B?V2EzbGx3OEZiT2x6RUVYNm5ManBRYzUyWHdLbTg1RzdhcnpXd2FIUlNHdFpO?=
 =?utf-8?B?MGxxdStjTE1NN1diZHZrV2RFdEZ0ZUtzcEdnK2lpOWYzVkY1bW5pZ2JPdXBX?=
 =?utf-8?B?YzU1bUxzQ3Q2L1JFQ0xMYUUzM1BWTjczbCttTjdEaVVMd3dZOG9nK1dBcGdU?=
 =?utf-8?Q?Mek6VuoQKCLsx0Ss=3D?=
X-Exchange-RoutingPolicyChecked: OqZKszglH18uofSpyZKMaVWFZv2igLeUgf0H0qFWREO4Ht2CPqKxU/Dt+qtDEWEAIUXKuiMNHCfDAAhCkcH3L8ZLBNwVG6R3LCvhyv1r4m63TPXPJvrKZ9IZ1D5vlpYOr85RXS66uu1IEmYWrTSjCpHRvaK2LyRLPqkIVK3WUqK2CRrpCkg/7eulBMbBQ/EJKwHHlKGaZ929saD2EDuq6BPrIl/TCqT7bbp4a1AFkOhj8P5O5MzI1y5JReBtI0vHzWuBcFjXxRCgUcyqAMiGLHn4fGTO76iHZBNkq1WnHTv+cjr63TmLlJ4fIUXIPWwAwfbnKM3EBLbWmKNoFlAcSw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cd8c602-7bcf-4632-ee00-08de8430534a
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8172.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2026 14:20:22.6027 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vy8iCAnSlTbGruLZKv3MXJPnrJavdAmqYPmH+WcCtJzeui3OWaEOKAGJmznsBsKf4CIFvxMYXsAmdkQ6fHHD8wYaspB1NwLu0xt1X73fdco=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8098
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773757230; x=1805293230;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Iv60vXvZHbR3T6ckugeVqGdK4LNJg2xC9poUp4Km1Y4=;
 b=g60p2+o/a2vt2Z1WE0RyXKnTWOq40FSc9lHBZzpxz/4TWLWJW/zrarke
 xxGhwqSQ7NaD9MYv69I1jPOabd8GfubwXZRMK+OcyHIkRwUsEJ/6eD44u
 aee/tfrNLYJfRbEU3Ng5zMl/T5GvqPj0AxeH+2HYU45UNiJrIxfHZqhFn
 +vjQsCqyI7X+gWrm2IT4L8KpocPn69Of/bGkVIkbaCTlSW7oxNZ1dOhO9
 YC8tU3QVah0xDXzNHdj5akaT2pLK+ttn1d+FN9jg1cogmKJUOr+SIWV88
 YPIpem/MGiKc+sapuN5eCtpJYF6E7I/fkuuxPyGlRIrPznfaQHQEXiSIy
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=g60p2+o/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 0/3] idpf: virtchnl locking
 and async fixes
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bigeasy@linutronix.de,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:clrkwllms@kernel.org,m:rostedt@goodmis.org,m:linux-rt-devel@lists.linux.dev,m:sgzhang@google.com,m:boolli@google.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid]
X-Rspamd-Queue-Id: AF4012ABB18
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/17/2026 2:00 AM, Sebastian Andrzej Siewior wrote:
> On 2026-03-16 16:28:16 [-0700], Emil Tantilov wrote:
>> The first patch in this series improves the locking around the setting
>> and clearing of the free_xn_bm bitmap. Previously the lock was only
>> taken during init shutdown and pop, but not the push function.
>>
>> Patches 2 and 3 are fixes for the async handler. Patch 2 ensures the
>> payload size is set before the async handler is called, and patch 3 fixes
>> an sleeping bug due to nesting of raw/bh spinlocks.
> 
> Why is there a raw_spinlock_t? From a quick look a spinlock_t would do
> just fine with not runtime change for !PREEMPT_RT.

The handling of the virtchannel messages is done via the completion API
and the transactions are using the raw spinlock from struct
swait_queue_head:

https://elixir.bootlin.com/linux/v6.19.8/source/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c#L298

https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git/tree/include/linux/swait.h?h=dev-queue#n44

Thanks,
Emil

> 
> Sebastian

