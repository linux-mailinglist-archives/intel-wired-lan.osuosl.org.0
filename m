Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id TH9VGyhu5GleVQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 19 Apr 2026 07:54:48 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 061A2423342
	for <lists+intel-wired-lan@lfdr.de>; Sun, 19 Apr 2026 07:54:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E891960FC6;
	Sun, 19 Apr 2026 05:54:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JCV-FU_q4v21; Sun, 19 Apr 2026 05:54:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D23460FBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776578084;
	bh=gEj1plJHJFQDgRXKSTzdytu15vFveHezWzm0EeAcMZE=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LZyI+ZYGgNUyL2M1+lKeTLttZWCguLhhMS06CoMDYgrnVr2i6ZHkvEwghavpAzuSR
	 qtz1cW3u0hwQSoy6e1tic2Ybe1a4lUWxqNYi9RA4lFXDWvR1uilvPkQ/1doX7gwm5T
	 nC30s4KKITYp6u/P+y3wqxO/detNL3HjtQ6yujjRq60UFkqgMZZeQY9ZBGzb/chO9i
	 Sn64TN4czQu4iytrazVyRP2A5NPrz3KijBH0dAm+TvLiowQ61UJkcHgTDOeCxD6qX7
	 KHm2ZWvDBHonvGtXC3sn6RJx9ypD2GRu3PeDrqIDq/5buI3FejaN/60RTD8KPY9kzE
	 qv1uEn0744N6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D23460FBD;
	Sun, 19 Apr 2026 05:54:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id AC39C24D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Apr 2026 05:54:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C9EB241022
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Apr 2026 05:54:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k03GyFrlFevl for <intel-wired-lan@lists.osuosl.org>;
 Sun, 19 Apr 2026 05:54:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9C3EE41024
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C3EE41024
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9C3EE41024
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Apr 2026 05:54:38 +0000 (UTC)
X-CSE-ConnectionGUID: bvL5DU5gTkGuprpA1M9d3w==
X-CSE-MsgGUID: y/fDX6ZHSAu4TUFplCA7VA==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="77545254"
X-IronPort-AV: E=Sophos;i="6.23,187,1770624000"; d="scan'208";a="77545254"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2026 22:54:38 -0700
X-CSE-ConnectionGUID: 9AAaHJZKSLeMZ/vOiBHbZg==
X-CSE-MsgGUID: DeGSiRFnT+GgZjPS3HwiGA==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2026 22:54:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sat, 18 Apr 2026 22:54:36 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sat, 18 Apr 2026 22:54:36 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.1) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sat, 18 Apr 2026 22:54:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aZukgD67o0Fz32HiyWOOut9mcotmlWZw01lpnZWsodglk0TMv+LVpj06c4PmTPHjp8APBfdziee9EYgmayNd++hkfrE93du+2R/TzhCj66zVixUlRQpmf1f/mv8YfSEzXJPjdHlN2p5QwYp27oRdXqTSxitDrTZRERAuYorHIrxt54cUX6GV1TE4U3mVNdDdIVlZkUiDOZejgMCMgM1eiZoW+df70H0Z6gGtDsmpMF4NwFmWi0grLb3SptbuKMg6E7ovMYhbcyBzLxu+aPO7Bt8tASVk1nS3Jn22zskjA9MsGuUgrlpU2TxAhMuaCkBPCsCEp1q5Q5ZIlQmkhlnVSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gEj1plJHJFQDgRXKSTzdytu15vFveHezWzm0EeAcMZE=;
 b=a2qZ9mxSKmUhgXvJrcfSg3m1HEvMPZ3oqwF8DQXNtZJ/35omIVfYQMDS/AbGtsVnsJtETJil97W8ENew1PTPXXWo5EHMyxplBbfwiSDn/xwYxCwmINVPrqKx8uC03DymGSnDaIq2iSn9tSNt3TB+chqFvoh7chUtaRo8aLOtHgfPgVmJ5kB1vyyKTjrqESRsyBJAMTgxy5UXUfHFR7YI/1Z3TsV+06E7BIPxO4ZKI57ZCU1Ikyt5xBdXZv16tdROi1O+JOjyLhonOJUGT+1fhOIRBJaU+42MzYA4xyw7oHi9DRGtry7nzR2l9doiFU6iCE8Kk1EwqKcgMBrQ4DHikQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB9498.namprd11.prod.outlook.com (2603:10b6:8:261::10)
 by SA0PR11MB4590.namprd11.prod.outlook.com (2603:10b6:806:96::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.14; Sun, 19 Apr
 2026 05:54:33 +0000
Received: from DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925]) by DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925%4]) with mapi id 15.20.9846.012; Sun, 19 Apr 2026
 05:54:33 +0000
Message-ID: <c8f8aae5-febb-413d-a5e8-ae4c815dc147@intel.com>
Date: Sun, 19 Apr 2026 08:54:27 +0300
User-Agent: Mozilla Thunderbird
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
To: Timo Teras <timo.teras@iki.fi>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Brandt, Todd E" <todd.e.brandt@intel.com>, David Box
 <david.e.box@linux.intel.com>, Len Brown <lenb@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "marmarek@invisiblethingslab.com" <marmarek@invisiblethingslab.com>,
 "jeremie.wenger@edu.ge.ch" <jeremie.wenger@edu.ge.ch>
References: <20260202103257.1972097-1-vitaly.lifshits@intel.com>
 <20260210131158.1055ad48@onyx.my.domain>
 <745b1cd3-3e02-4d50-b1cb-0463ae6a9dd3@intel.com>
 <20260212111506.16bc402a@onyx.my.domain>
 <29b8a4b4-66d4-47e5-a316-b88a03b3882c@intel.com>
 <20260226143616.608ba411@onyx.my.domain>
 <35bc35d8-ff5d-4596-9f9f-6ab563c890b0@intel.com>
 <f39683ed-7397-40ec-ad0f-833664ea5c8b@intel.com>
 <20260401102556.64d226c8@onyx.my.domain>
 <a59d5d6f-cfd9-4c43-af92-ca8fab7e0df7@intel.com>
Content-Language: en-US
In-Reply-To: <a59d5d6f-cfd9-4c43-af92-ca8fab7e0df7@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL0P290CA0011.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::13) To DS7PR11MB9498.namprd11.prod.outlook.com
 (2603:10b6:8:261::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB9498:EE_|SA0PR11MB4590:EE_
X-MS-Office365-Filtering-Correlation-Id: 44967337-7cbe-451a-fe94-08de9dd8211a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: +PpsSo6QXwVcb+rpow92hD2aNubG1QOs72Q3DdzR8xBZor1PYNlmzV7/XrKJ8pS49ts4zDSwO5tx9IC2t60/j2Nl4vtKCb3KKByXAw1SR0Q0doPFHZyqa+mZbW8v+Q5aL9LWsougnLKa27KrcMqF4QJUVj8rjJGt1Mv64u6ZcacJYd18bDR3mO8oDKh5sOcxA8dYTQzWfrZFvzSN3DTIvlK2p1v9dllPosbGyETdM8Dq8inEc83FXjHaTM4iXdHzwl0ihEiTPIKXYLD/m/EPkNHLUMYER+IftUryDSkGi8HQiKO2P9ro7nRuX7/soVvX75shKEwUJGxRcMNjxVm54Fml7vrAOGk2AfX8o/CKRF98vTzJ4XIbxmgFj00KoQysaWmHSLQ/jNGbKxjL9ceiP277ULZMD7TrxNPevlUU5dgCE3FHaPSntxv6CngcMCwt31Uiy2OjGAcWOVXfJQGXUZl7X1BYzbPxBMEFejCmKAKj2XY8PksIvwnr1yR7ohTKL9SetgrLaRDD75lS7td2/XuCd86NPqQDWj7nXPT7h0Vhe19dCPfgxR67sGjZQMofbuJCiaD+u78efipfTVfBTaLG9tepjqbz+Qw7peMIUtLjORs4GMXEIkMqiHE8tRWS9AeT5NydbdozXVHoNmWSsdC383EBNdKrlbpVOUwKVk8BxOluaMRNjQiE3EfqyT1tU3/WggZd0ZyrdaCU+PIiSon9yDFOiTujyaxfWT/EStLmX1D22SaoI1fnqTdBAAwd
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB9498.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b1RUTGdUVjFHMnQyWFcrOVhRQms0blFpNkZob04rb2ViWkN4WS9aTGp5bHNu?=
 =?utf-8?B?SHZRVEVCWXo4V2IyTUJkSkRYaWhQYWNvZUpsY2JsaGZlekhtblJYVU1tUHpn?=
 =?utf-8?B?SURYcE1vczlwbmNzWkFGNWR5V2VqZUlQeFU5UEw4Y0lxV2JlNTVYb1drY041?=
 =?utf-8?B?LzRHVXhUUkRSREYrZlNvNXh3cGFrK2NpcWFpZTY3d3VkMnZweFhGRjNSWktY?=
 =?utf-8?B?QUlNOGdBT2MzRURvOFVWamo5eHlsaEZ1eFlPQzVscmV6NlVaRWx3L1QrMUx5?=
 =?utf-8?B?dzU5YWhtZXdvamo2TW1DTGdrdGNkWUl5V0NXZFJpNnVjam9LVmQ5eGw3akY4?=
 =?utf-8?B?M0ZFT2krTTd2Q08yUDhKcnowR3RtU0NHMVV2SUJnMXpheHBrYlBFVXp4M3Fv?=
 =?utf-8?B?WGFtN0tBWGUrZUoyWTFQSUo4MUMxQ1VsRjBwbXJhTFlYUVFQVFpxdkRuRjVB?=
 =?utf-8?B?WUtrajJmOHJ0ZWVLR2hqUWNMdWhkUHA2VGgyWHJtN3o2QWtpNWNEN25Mc2gz?=
 =?utf-8?B?SDFQdzNaSjVxcnhRVjEvRnJ4SXI1MUsybncrWEJ5anlPbXRDaDhGOTlvSzN5?=
 =?utf-8?B?YUZRc2oxdVpZWkV4cHNKakZFbmJMeE51MWNqNUdaNmFPOXgrNS9SL3pQd1dU?=
 =?utf-8?B?dThuV2VJbm1Fb3p6Y0tlOFp0eDJRbGZ0Q1pDU3Z4TlBpVEc2ME5aOC81YXNU?=
 =?utf-8?B?NWE2QXdDaThHdFV5UmR0SW45RHcxaGlxR1lxaWJLUUhmdEZycmpVYnU0U2FE?=
 =?utf-8?B?d0c2MldTUjZ4NW9oZzJvRVg0dHFhZlFJR2ZtYVczbUpXVldsWmFUKzJHNytE?=
 =?utf-8?B?MkdCMVpzVEtTR0J2WW1nc0toUHhDSTNYUmpIdlRYSkZzK2VMTlcwQVJaZXR6?=
 =?utf-8?B?RzRoZnVWcTViZ3hGaWdvWm1ZZ0ViMUh4T3NKSXpibVF6UjZCdlp4aUZyR1ZM?=
 =?utf-8?B?V3pITlpUZWN4SEpGbCtWZGhzZW1OSHBZd3NWZkFyaUw4QXFOZHNkMGlnNXdI?=
 =?utf-8?B?VlVZaVV0dElPQkdjSEY4ZXJLdjdxYUhMVmIzTTJjVkFsLzJIc2xxZE5zS2Fx?=
 =?utf-8?B?OTBzaUNFR25meUMzMnlaN3QrSzNMaFVvZm52TnV3elJ5elhWWkk5bXFpdG1P?=
 =?utf-8?B?djdNRTh3eTlDd3FRNGRsVWE5NDdrUHNVL3RsZXpDTTFvTjg2RVZFT3hHdkIv?=
 =?utf-8?B?TjA4SmdsUWVhUmxrSXBudVFZUHAzbjMvODJ5OUNqWkxlRjhERTk0UmZRb0tr?=
 =?utf-8?B?QWlYZ1ZSMUN5VC9QajJ3TXczQUprWDNYemUzVW5mRktvNHNIZFpTa0Vlam1n?=
 =?utf-8?B?b3QzcWNiS0kzTERDLzNGR3RuNlFQcWwwSko2UlFDUGh3MjRsdDluNUhJbDkv?=
 =?utf-8?B?SDd6aEVFc0ZNaE94ZjZQZnJ0NnZrNkN4dkF0S2JZRHkyYUxDOHAzcWV1dVRj?=
 =?utf-8?B?T3hVd2dNV1FRNVhwQlgzM0JhRnkrUzFGcFVoeUFPQy9jaEJjT0lnazFPTWpO?=
 =?utf-8?B?dlJLVEk1WXR5NEN1cTdoVEY3cVE3UFk2LzhiSDkwNnRxaFZLYW13YS95dXZE?=
 =?utf-8?B?RklvVmNTcEx1MDRYbXcrb3RLK0VnY0VVNE15OEVRaFc4bHJ0cXRJZHROOWNO?=
 =?utf-8?B?NHFNSTVscU9RdFNrRHpBRlJBWXk3ZUE0aURmcStBNVlZRFlncmIwcVVXZ3VZ?=
 =?utf-8?B?RDJjT3JLM3UrRThpUUJWUFpnVHRLQnVtYkVTaGhzd3RIM3oxZnYxc0laQjM0?=
 =?utf-8?B?K1lFeGJyeHEvTVVoaWdua1ROVXZIVmo0QUs4VDRtaXVRU2ZNS3RsZWhTOGov?=
 =?utf-8?B?NFlLY2hWRDNXN2RlVzZ0U0hWUlp1amtFdDNOWlc5VnRPUmVGVk1hOCtyRVhx?=
 =?utf-8?B?bDA5WGNSMFB5R3JwODczVllyTHhOSFErOFRDNitFdjJkMHY4RVQwdDc3V2o4?=
 =?utf-8?B?SXlod2xYREN4R0lwRzEvdDg4UmtUL3I2QnBIczI3WGcyT3VTbHdma3FEREkw?=
 =?utf-8?B?ZFNyaS9hSVdlSE9Wdm9VSjNRbDYrRWxzVHhJNFlwMDZ6ejdmSEFHR3VmZzJ5?=
 =?utf-8?B?a0JYckUvcCtTaitrcGZGbGpCZ0ZDTFRJMzJTellBNG1OcE5XV0NaTDM5Wk1V?=
 =?utf-8?B?bnhIdWhvdWxiT2RESEdkcVB3ZWJXeERndGVUWTI0WjNCZHBrTzlSVVFWbmds?=
 =?utf-8?B?MlFaMWt4Wlc0ZU8xaTNKNHYxajYvekkwT1FnczdVTEhKRzhQNkg0YmU0K1RV?=
 =?utf-8?B?M0hHYVBiL0JSWk9laERlQ3ZvSHFqbVFIS1dFL3JmeWxSMCtDaWlMUHZSSHIx?=
 =?utf-8?B?eUxYeldoT3pZbDJzekdlSGY4QXBZTEFFZ0RZYnUrM3RCaUR6R0dqeGRheElO?=
 =?utf-8?Q?GzP3IL5tBCZug8EY=3D?=
X-Exchange-RoutingPolicyChecked: MME3aJo25kY2uxrFUq8/faCaI4GIzGmoudvfrU+vF+J4En9ZqwgUnJl2mLTytA0NfApTiRDTx+eqmU8bYV5hXZEUJ7OvVAu2mAABRpmxHF7oTz4hrmXMoz7RxZ7KqNtm1T9gJqMiPuTm/JWKpbShntgHqtrdIw2ezT7OTX5+yXJM9tB6GZi45gyptUT6F68qqT2IWFRJNxi0lumxWVF/8rGoGsqS+Ym64ThnjLggfuiQr99sm52Vbs6ZhKQvEhCnURecg94ZVotoxTtQTCffZJprS3du0c3bY4MdAsDFOuTfWNlW7j6JJi92BzmcpZCecus12unOKvyh17HMY7EsJg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 44967337-7cbe-451a-fe94-08de9dd8211a
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB9498.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2026 05:54:32.9288 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BBb4bRtWuNFjQ5WOyM4Sk2kFI4/26/L2mYpbKEwyTNOP26Qy7KrI8Nl/ZLU81tk8tV5pDTKRvOZctgsQx95W+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4590
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776578079; x=1808114079;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X2UVsTkhnBI0pxob/UYv/3Dh04UbPWIRJnPT/OH41Ic=;
 b=Pr5NWuK7ZDv8Gd4nMsb3DaWtSIB2BjahTUU0KhS64dtw6qWU5x+LFDif
 zdfeul3Wep5MVGqEsB6vxnhvt8+VgpRFlMuMksTiUdDFE2gXF3N1NEcdE
 8hKm+qx3bs17tPCLGAlxI9tqsF/g0Ik8A28vDwYeqniLZZZEqksUZL3bx
 ooygJwj7WtfaR0S/b2aZbQyrdpLG63llhD6i9RADk2RfwGk5vjKXuzUJd
 yS1eM6WjoPopZ3nn5Py2KcaJUpERdfTL5BDnqaMC9Ii8a2KgpcP7HHhSR
 zP9kzDdeHiv0QuDuXG7d/+I5RkDbZADeo61TRNaei0NymU+GMl0TS8KMD
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Pr5NWuK7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: reconfigure
 PLL clock gate value and re-enable K1 on Meteor Lake
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:timo.teras@iki.fi,m:anthony.l.nguyen@intel.com,m:todd.e.brandt@intel.com,m:david.e.box@linux.intel.com,m:lenb@kernel.org,m:marmarek@invisiblethingslab.com,m:jeremie.wenger@edu.ge.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:url]
X-Rspamd-Queue-Id: 061A2423342
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 01/04/2026 11:19, Ruinskiy, Dima wrote:
> On 01/04/2026 10:25, Timo Teras wrote:
>> Hi
>>
>> On Wed, 1 Apr 2026 10:07:45 +0300
>> "Ruinskiy, Dima" <dima.ruinskiy@intel.com> wrote:
>>
>>> On 25/03/2026 17:49, Ruinskiy, Dima wrote:
>>>> On 26/02/2026 14:36, Timo Teras wrote:
>>>>> Yes, generally maintaining a large quirk set is infeasible.
>>>>>
>>>>> But this is my point: if the affected set of machines with this issue
>>>>> is so large that maintaining a quirk set becomes infeasible, then
>>>>> the proposed change will make life very difficult for large enough
>>>>> set of people that a better solution should be devised.
>>>> At this point, with the current PLL change, it looks like the number of
>>>> affected systems would be smaller than would be with the previous PLL
>>>> value.
>>>>
>>>> So far we have not received additional reports of regressions caused by
>>>> this patch, other than yours. So, perhaps, the it can be manageable 
>>>> with
>>>> a DMI quirk approach. I went ahead and implemented the infrastructure,
>>>> it's actually quite a small change, and does what I want (automatically
>>>> alters the default value of the K1 disable flag).
>>
>> I would not make quick judgement on not receiving any reports that there
>> is not other hardware where this causes issues. I do hope this is
>> the situation. But as it happened in the past the reports start typically
>> with a delay after the commit makes it into an upstream release.
>>
>> We had the patched kernel with the PLL change running for a bit longer
>> time, and we observed that it also caused packet loss / very slow network
>> issues in the Dell laptop. Especially with the later suggested value 
>> 0x226.
>>
>>>> Could you share the DMI IDs of your system, where the issue is 
>>>> observed?
>>>> Most likely the sys_vendor, product_family and product_name, located
>>>> under /sys/class/dmi/id would be the most useful. I can add them as an
>>>> initial DMI table entry for v3 of this patch (or a follow-up patch).
>>
>> sys_vendor: Dell Inc.
>> product_family: Dell Pro Laptops
>> product_name: Dell Pro 16 Plus PB16250
>>
>> See also the original report for a full dmesg at:
>> https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of- 
>> Mon-20250623/048860.html
>>
>>  From dmesg:
>>
>> DMI: Dell Inc. Dell Pro 16 Plus PB16250/0W8RP8, BIOS 2.3.1 05/16/2025
>> e1000e 0000:00:1f.6 eth0: MAC: 16, PHY: 12, PBA No: FFFFFF-0FF
>>
>> I would not be surprised if other Dell models with same chipset are
>> affected. But this is the only one I have available to test with.
>>
>> Maybe its worth to check based on sys_vendor and/or product_family
>> together with the MAC and/or PHY version? That is to exclude 
>> product_name?
>>
>> Thanks!
>>
>> Timo
> Hi Timo,
> 
> You are correct that there will be higher coverage when the commit 
> reaches upstream, however we have to start somewhere, and so far you 
> have been the only one to report back specifically on the new version, 
> thank you for this, by the way. :)
> 
> The value of 0x226 was computed as a theoretical upper bound, and as 
> such am not totally surprised that it brings its own issues. I do not 
> plan to use 0x226 in the patch.
> 
> I managed some testing with a Dell Pro Max from the same generation, 
> which did not hit even the original issue. So I would not want to 
> exclude too broad of a family until/unless I get more reports.
> 
> MAC type will be 16 or higher on all potentially affected systems, while 
> PHY type is 12 on any I219 device. Currently it seems that the most 
> accurate check would be MAC type + product name.
> 
> --Dima
V3 sent: 
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20260417104330.3031987-1-dima.ruinskiy@intel.com/
