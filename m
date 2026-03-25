Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sJ22BURzxGljzQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 00:44:04 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5720F32D718
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 00:44:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B599F81815;
	Wed, 25 Mar 2026 23:44:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DNSwGmBBuOga; Wed, 25 Mar 2026 23:44:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35C39817F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774482240;
	bh=qo7ZMSpKh4obLDdq6vstv9SJWdIuS9Z7BphsP9t8InI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Xqkb95YEiO5Rcs72+AZ4wu6tPpADjZTnqd2dZwYWJzENIZ9D+1Ojov4a2IQJZ/lLk
	 H5fzjx0gTPRHMRJdC+SOrHE5+eL60e758/Q0Ed04Jds1cZU7x1h7Wm0S6eEy9BWyx3
	 CdQM3DEW8yFwVlOIlA7zLLaTY0vFVN0euWxa/lDJLgyVqn5SYiJeCq0fdsDguMG1cd
	 jESBMGBPAF0dtUmePlFFkywwX+4UoEEE/Q5SpyQzQViroSpZLh8doegEGHi/PFIxYH
	 6VDnH45zrb0mGFOVj43yOU4PC0bkY+/yLas44He6g19xq/dgH6JPbItAvErjTOxzjd
	 2fIFCBcxbHOYQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 35C39817F5;
	Wed, 25 Mar 2026 23:44:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4686C353
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 23:43:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 37F2840060
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 23:43:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id coYVOahzE8mu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2026 23:43:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 65F1740274
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65F1740274
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 65F1740274
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 23:43:56 +0000 (UTC)
X-CSE-ConnectionGUID: 2NGFF2TuRPeNFmz1080muQ==
X-CSE-MsgGUID: fX33JUGRTqmYiS3cieGCcw==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="74561520"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="74561520"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 16:43:55 -0700
X-CSE-ConnectionGUID: +pxrK9UkRtu1rrG903nV+w==
X-CSE-MsgGUID: XFL31h2TTqiIt/8ql/dC9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="223887269"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 16:43:56 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 16:43:54 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 16:43:54 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.21) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 16:43:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PYTlD++aOT+YWE8TArF+iwDpwZAi/wzg2d1iJZRwXqW0eFiDEb6GUoDaYOrIm5X2gCfJm3Q2+bkVi6qGH6IBX472S8QQtVqGZsOsTTaI6Ihbkze8CzcewWFCzMylQNrv3iSR+CdU0hDkVlFKiM41Uc73aXocH7wthagaujECx4NDI5oDNO1KwUJDPCJ8bm2e9Z+9l09OvU6Td0UrZ56INfz+nXPqwDCiR3KAzEeRkRx5GvjTG/YEtv3u7mr7V9+uaehoIf5fRis6/P9d9WaDjs44eqJGiyUpbMUmeBpMdnOUk8QyaujNFwUXrkG0ocdA7+KTNPsqhJiqhdsvZMsgTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qo7ZMSpKh4obLDdq6vstv9SJWdIuS9Z7BphsP9t8InI=;
 b=Pe5Ww1EWIfxmxZo4wlAAOrQjmj0uURy74mLSPW9MzsoFPnIrVEiM4DFQGOWRyFbrVQ8XN2br8ow7/UZzrqShJFAaSFaEalAEP7LJ9ty+tw4C+8B0bTTVLD4lCLWNtgbzGqIF8QpE2qiJr7yyfLUewrG2wsGkBzlFfi+5AJgBA/jMQt2oK1U3azojALhBxS7vMCvCMbbD8NUE/Gz8H+1Fkd/sHvYGcR35QnUrBsCyqO1P2ALWH3lepc3+ubxM5yenybUQuHUUWj+C3vTwSpYqp1mp3Aia4D403nzj8k+R+DMJpmjzDQR1qo8cKaQbj5Gv3P/9+IZFZc/ogGm/b7Vrig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 PH0PR11MB7562.namprd11.prod.outlook.com (2603:10b6:510:287::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Wed, 25 Mar
 2026 23:43:46 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9769.004; Wed, 25 Mar 2026
 23:43:46 +0000
Message-ID: <7a2c3537-2090-407d-a1a0-1b18e0dd932f@intel.com>
Date: Wed, 25 Mar 2026 16:43:44 -0700
User-Agent: Mozilla Thunderbird
To: Grzegorz Nitka <grzegorz.nitka@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
References: <20251218094428.1762860-1-grzegorz.nitka@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
Content-Language: en-US
In-Reply-To: <20251218094428.1762860-1-grzegorz.nitka@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0336.namprd03.prod.outlook.com
 (2603:10b6:303:dc::11) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|PH0PR11MB7562:EE_
X-MS-Office365-Filtering-Correlation-Id: 90374034-535c-452b-a8e0-08de8ac85b11
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: OVBE9EN4jCc2a9A8arvhsoJ18IfSTI5680Od6941P+18MYAnCNZCh0F67P4T5jl3PVH1tCqNQpQ/uCSTT1m3vqpXn4lkEVXn9cJ85TsmWZVlCHJTtfSTULSMGQFGNcFSOvJvnUYG6UiHLZWkKVSJyKLmyAWBmhab6WDxz+SwNpqygp78kO3LsXXA1bazsaCs77wCMvBn+XiqGZIwTge2Sj44iMBr7u41jw70vo/tl66tywZQzsEc1sCySgxd31SpNcz7HTml1ROq6SyleNyUcSWKyRR67KF/XV7U4C75ai8H32mc0Hwfw30DkGvnKza5OUnRhJaWM4rGVWnAiPlPG8m897aKDwdsT8EyrIviTMUUr7AaF/0YlzzZ7YyYWYXnYLxoVsIBRcLyg/VbaR1ZTj+EYCHQns/pCCS8RP2M6UGWDZ1lNt71TsK1RZfK1557rWRgQtPYEpUbA+/JAwIF20hBBpPGDtt3E8/61d1FcZqSlUeonKy4Ihe9HHn16lCDiZ7tyXcZAHdt38O8rCyO93QDw1riwGocLcEx8i35c8nQMV0WZO81o1ijUEmbOGTOqf73juHTqN6x9hpYPr8lP4C+CPh5voKAwX//cFPhFyz2Ggg2q+Vx0x1bu9nB28l1bTZik3i5s7r4GL8Rrf4EmalliQBmtGC9VF2pTFs3hJa+iCh/EDOB1uXXaYYUsGygcbugmaMeug9kDpicw8J3IAzO+tXY7OFrxMVgd+l60b8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M3RsaXFrYitCUVRaRkMxWURFWmhRZ1FXbkJ0TytpOE5KdHNCdnA2a3h3VFls?=
 =?utf-8?B?K2ZvZ0Q5c3NMYytKS05RQ2Fia1ovZFRPSnZjalFiV2lncURXbUluTTdyU3F2?=
 =?utf-8?B?YzFENm1WOWV5WUliTWoxWVlYMVFBbk1OMkxJRWFIMDNOWktRNkhvSGVSUjE0?=
 =?utf-8?B?TUF1TjRMd0NOeFRxRUNONHRUMWpXMyt3MFJPbWg2RC9nTDV1SmhCZlpUZ3Fp?=
 =?utf-8?B?Y3dFbWMvblNhZTJQajRVb1luV1JWMHNMc2FKM29va3BCNkZCY0R0TWMyNDZC?=
 =?utf-8?B?MkFpdkR0WUVxVGwvdG5DZHpqa1JzY3ZiSGdZeHJNZmJWaE56Z3BwWUFDNWg5?=
 =?utf-8?B?a3F2ZU9lcVltT2NPMFJKVEllZU4vanpQWFBXWkUxdEJNREVkd051a1BENHdz?=
 =?utf-8?B?MXlsaUpsbmZkeEl0eGZLVXc0Z3pQbGJ4YjZWMnQ5VUxxRlRZTFNRb3FxY0Rw?=
 =?utf-8?B?SjBwRnI5Vk1zejl1L3lIa1lQQkIvQkpKUHp6amZaU09SRDBpeE1JSkp6Zkk2?=
 =?utf-8?B?QVNsRFZwZEpVTzhsbXNoRVlYMGRya2xxUTlrNDBXbzRSNHhtaXA5Q25Bc3RY?=
 =?utf-8?B?TlRjWnlQNFA0MnRPUld6OW9lQ0NFOW56WUt3aVhUUU92M29kQy9hZlplS2VQ?=
 =?utf-8?B?VGI3dWJ0K2h2R0N0aW12RXphektxMWxKMzAyaExtRXNwd3dLWW1Kb1FESnVU?=
 =?utf-8?B?dXd4MWpzUGc5aDBSMkZkYnFpSGpTODJTOFNRcVZFWVBIYTdac2UzVTdwL0hQ?=
 =?utf-8?B?TE15L0gyTEszSW1QaWUrU2NBRXZ0Skx0NnFXQ0RlckRPeGduckptYXRHdnNL?=
 =?utf-8?B?Nkx2VlNvN09FdXVFQlIrczVESFhCenlHYXdpK1lKR05DdG03M1Q2QWVBY1Mx?=
 =?utf-8?B?ZFd2Y3k2SnlFZE5WSzU0c2dKU0MrdVl0Z0lVbkkwVTQ0dDA0US9wZEdHRmdT?=
 =?utf-8?B?WTRVYkQ3V2N3aXdFV2hUWm9CV3p5KzdxRUZOeThrSHd1RzMvbmM3eVpTQXNT?=
 =?utf-8?B?Q0JCL2p2Vzd6dGpyaHNEd3lRdWlhaFNkL21iRWd5SFM1RTVwZURwZFhoVVdL?=
 =?utf-8?B?VnduQjMyZEN4bUdha1BKOU5ZRzBmSm1KR2haVzhXL2hJRS9MaVd0d2MxcXF3?=
 =?utf-8?B?WUEwNU5TcGxLNW1XYjZmZWs0V0w3eEkzTmRpOGFLRlI5Lys5Ung4VGZaeU9C?=
 =?utf-8?B?WDRraVFmdFZLOXVZejVVdW51SkJGNThraFNPaFRaVC9vOWZSNFRwdHlpOW1D?=
 =?utf-8?B?YmpqYkNJQkQza2o0ek5nZFFiV1BLeENKZXI1TXdDUVNRMllYK0ZtMlp4T2Qr?=
 =?utf-8?B?Vy9ZdzliaHNWbG1YVjZ2a0kwMkRIQzloOW9xV3p3M2lyMTdFczJDUTF5R0hn?=
 =?utf-8?B?M1RaZ1RobU5DWnp0aWpRcUZDbmo4Nks1bWQrcWpEcXFuamlyNFRLVzlhZno4?=
 =?utf-8?B?bU80UFRsZEg2SEFNaXlvNkhuZ2E2VFR4OHhpUkFMMFBSTC9OanpCMW9jZjNY?=
 =?utf-8?B?RWc5ZGthQUo0eXY3dzNEbDJ3eWFiZlVheGI4Q05tZSsxRVRxVjF1YmNNa2o1?=
 =?utf-8?B?czZaako0RXluajlIVnQ4VFBibHpMOVA4bEgrL0U0dkltbmxCUldTdHMvT2R6?=
 =?utf-8?B?VitZV0ZlUzdhYmQ5S3N6OGJUa3ZuVm9wQWpQazVzVkdnd3R1WTdmdUV1RUdy?=
 =?utf-8?B?Wnk0eEMxcWZkaXNjUC9QS25Ud25zQkxrNmlGS3pJQnNBVEk0OTdaSDRRZHlY?=
 =?utf-8?B?bUZnRXErREt5RDRxRkllU2w2UWQ1dFlqdnNZWEM3YnVvY2JqMDZieDRTQTcx?=
 =?utf-8?B?U2krV2N0RFo5YTV5QUhTL3BiTG5aZWRVRkhzWG4xajNuNVBUaHJHSmQ0STB5?=
 =?utf-8?B?RUpEakgwVTFRcCsvMUxxZFJERFp0Z2ZwdUVpT1g3SGlpUHJZaWoyUDhpc1ZL?=
 =?utf-8?B?QjRPTExCVFowcEZxZVYxZWhmL0xXN2kvQm5FNVdGNXl2NkVqMHFtWG0va1dM?=
 =?utf-8?B?aDRJa21meFVJYW90emhnK0ZuZW5La0UwdnpyYUhTOVFtUGdsbko3VTBhTG1i?=
 =?utf-8?B?NUxkaHQ2RG1KTEdjWWxXdzdIWkZKZWVJcmFPa0w1T2h0enRNWVJDdUpHUU01?=
 =?utf-8?B?T2UvVkhOMkdtSkJxTVErSFR3SHJSbElpUW42OXlHbk5GVkVqc2xWd1RVRCs2?=
 =?utf-8?B?WExRb2l3bEFxZjJrTUZHNnJLYXVTSFh6QUV1bTBNNW5OL1QwMGFuWjFzb1dP?=
 =?utf-8?B?LzZ1WWFhTU1Pb3lxMnpUTHVaTUQ0TnFmMWdLRWRPOXJhd3Ixd2M2Y0FRREta?=
 =?utf-8?B?dlg1eEdtM003MWdSb0VtTWhDRjVXWXRGR1lkbEVwT3BVK2dPWk9jTmt3Y2xk?=
 =?utf-8?Q?6SB/VIWn9zKVjSVc=3D?=
X-Exchange-RoutingPolicyChecked: Kxn1I/bctvko6mcqeaBBmAeah+uq82NhlwvzhQwP+y8WciCqPEOEG4HOy32Agp3oMet+XYbTH5+6QWabrXKnDJijC9hPTxfB6suyPU/YpQFqkQe17F7rFzAzQzz+wuJTL6g0lopvTkH3664rNbzG562UNIeaKz9BueViiXF4dDLU1GRr999RnedSRF4ntW+Oe7o1qye/qQcqhscfGkWYvENF5Oyzhmxygl/r5IiN/IgZoMFWrf2QHQb84t77Jajn3vu1vbs1yvALHTqLnUamBbozZ5mtDcpSl0wo7bLqbY564OXR3oIOXcU408YNFPfC+/diVv+YEvcQ1Xu14zfrwA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 90374034-535c-452b-a8e0-08de8ac85b11
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2026 23:43:46.0614 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tUaRcdV9lwt5PIaFXg/v90uRnGvaQS3HOAiMO9xaMFssmf3DQjyGms7zSQHfJvQFCQkqaDf/0dBoqbJ9hLnDPl+4S5arukO6gBZBV/Hmuyc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7562
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774482237; x=1806018237;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ojUY9NLSri0YmrhHfMkWbaWqep1EbH9jwx8s99iT0aw=;
 b=MR7Zff+aKv5gNMowZWgkAECsgDGmx4OMl6LM7MIgw4AqYpm9c6a6pDD+
 BEppMWk62WvWYtxFrbpXKOeeTdNffAWWOAeSR/Dz8NkxIfV9COhtN2hzB
 TB161MJrgatXQYTnAy81u3hBOwbEhZ3zQvIedSFqQgj3i1s/8j6ZofOCN
 i5v5lSLaTK4axiWxO44civNOA0b6kf0Jlug8EVxW977WuFu80j7QreNOj
 cQN024VR+8RegFMYoDPSZHrBTdHGj/+2Rb7Np+5JN6LoQVJWLgabAJVFr
 kSeH9Su5KlcnXGt+NPM6rVv9jjyVCddooCgXqd+MCRtffXl5wx5lgIFDp
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MR7Zff+a
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix 'adjust' timer
 programming for E830 devices
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 5720F32D718
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 12/18/2025 1:44 AM, Grzegorz Nitka wrote:
> Fix incorrect 'adjust the timer' programming sequence for E830 devices
> series. Only shadow registers GLTSYN_SHADJ were programmed in the
> current implementation. According to the specification [1], write to
> command GLTSYN_CMD register is also required with CMD field set to
> "Adjust the Time" value, for the timer adjustment to take the effect.
> 
> The flow was broken for the adjustment less than S32_MAX/MIN range
> (around +/- 2 seconds). For bigger adjustment, non-atomic programming
> flow is used, involving set timer programming. Non-atomic flow is
> implemented correctly.
> 

Ah, good catch!

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
