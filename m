Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E8BA4FBDC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Mar 2025 11:27:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1531560B30;
	Wed,  5 Mar 2025 10:27:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2QdZU3RcJnsx; Wed,  5 Mar 2025 10:27:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B24F60B18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741170451;
	bh=9euCNBakUMwkp9b/1Hkxo325TF6hcD6VntLi/VAjirc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=55BANN5OSrfRbSH1y/hCKMdECqeiInxBhemUgKpz95gc0/Rd1yGwJJuZL/eXX8jJi
	 AoqGQ1A7TPmFKZBtoUGI9WfaTiy6kywsD7N/dr+W5H4hg3vGg3X/ZJyLwMKji7jgR1
	 AYXHxzhvdloLWOZYYiP4rZZ6x3XUvM5yji1qTeA2chQHE+zizNtJA4frM8XLR5elPk
	 my8kvFU5qLpff+eB6RyndxQf8wnadFkqDkxBtq1E8s2N7utU33PR9Hap5c8pcwec+n
	 2B81jK26edkPC0UOwFF1fRvmztbFcaFo0ivjyY+GSneF4KZMSJ3ZN/5vqQ4zCygkde
	 7x4O2rTkzn7BQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B24F60B18;
	Wed,  5 Mar 2025 10:27:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 958D9194
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 10:27:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 662A940DE6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 10:27:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xZTgO1IEiDQP for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 10:27:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E7A7D40DE2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E7A7D40DE2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E7A7D40DE2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 10:27:27 +0000 (UTC)
X-CSE-ConnectionGUID: 5Ok21ZYfS0yFq1dBnxctjg==
X-CSE-MsgGUID: fkDT4cqJTAKerJ447ZjuUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42327267"
X-IronPort-AV: E=Sophos;i="6.14,222,1736841600"; d="scan'208";a="42327267"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 02:27:28 -0800
X-CSE-ConnectionGUID: NTzgHjGxQ6iyRSgaXBqDaQ==
X-CSE-MsgGUID: ogeO5eH8RKKxCuLVDYEXBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="119561971"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 02:27:28 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 5 Mar 2025 02:27:26 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 5 Mar 2025 02:27:26 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Mar 2025 02:27:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NTeTCdDTNlPA2VflN9Y49yyJ0noaKw18+mROJtYOu43zggk8N7VzUU2BI2inHGL+cZogIkBOnM2dypW+bqu3bwbz1PrUwqIHX/1Q4gYWHpBC1HqoS0NhqOaiTxUo6C8JdUDHsCMXKpk5yt/ZiGNVejB+3qAjilHlk+MShsrDndHWqs1CTpqRBRo/K6i1mDeIPbpoEgGd68RivQrYGaZnqPhOzIOy3q5blC8Rr7BO/XsJwey19Rm4t8E2NPe3OhLb+PjKAsL0qq94OHH6pntuEwp+JuBjpoEkpxGwufWcfX2ARUoWh5UbfgqTqGpr1BdRziLRIWJ5rhWqY3iyBbgSyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9euCNBakUMwkp9b/1Hkxo325TF6hcD6VntLi/VAjirc=;
 b=n6md8MGRs+4KQR6vGqY6AdZ1ACUtcIxcXfbuw8VQCNNDL/Vk3wqvaFRk1Mmh+AjOvcnPOSIJbp5p189slu7hWZ/mWwnN+kG8DuJKS/rcHmY536msGG4CrLRWRyNBlUHZqP7xO8Z2jHfzO7LCVMiN6RhpAzheiwR9RkNQRjOhKTlws9Dy9LHJ80uHXx5U+YkErptklHRybeIV3W6GCiY+vhNl7WIpat7SGjcxnYz1CYG+abd35rVhOWE1XqirFayCfvQwPUvVYbZmZDzsz3Y3w89h9DT7ywvhOYfXalDIVED39ESXs4UknRQ71IFp9sz9wIQqjukR9yChYVZ0clJ/BQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by CH3PR11MB8362.namprd11.prod.outlook.com (2603:10b6:610:175::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.17; Wed, 5 Mar
 2025 10:27:23 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%4]) with mapi id 15.20.8511.017; Wed, 5 Mar 2025
 10:27:23 +0000
Message-ID: <aba0a368-b2cf-42bf-b2b5-eb09779fb214@intel.com>
Date: Wed, 5 Mar 2025 11:27:19 +0100
User-Agent: Mozilla Thunderbird
To: Kyungwook Boo <bookyungwook@gmail.com>
CC: <intel-wired-lan@lists.osuosl.org>, <linux-kernel@vger.kernel.org>, "Tony
 Nguyen" <anthony.l.nguyen@intel.com>
References: <ffc91764-1142-4ba2-91b6-8c773f6f7095@gmail.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <ffc91764-1142-4ba2-91b6-8c773f6f7095@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI1P293CA0020.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:3::18) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|CH3PR11MB8362:EE_
X-MS-Office365-Filtering-Correlation-Id: bb49a13b-cbae-44b3-cd64-08dd5bd0515d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RDBvUlZPRHBRbGIwQ2hnMEV0bkMzVWV1d2hLOFB0Vk5OeWFBK2xRVUtxVjV5?=
 =?utf-8?B?VzhLeDY0NWhkTVYxUXlac0gvNDBLdXUyc1ZudVc2Q21KZXcrRGFuOXhZeHgy?=
 =?utf-8?B?SlNsekkwTUIyb3Bmc2t3bTMrUGc0aDRLbEtzUWJ2TS9JZ3NtWnZZTXIwMUI0?=
 =?utf-8?B?Q0s2VWVLeXhNcVQrdGxmTnZDRldMOGNHWTZqZDQzNm12WDZreW4za2ErRVRF?=
 =?utf-8?B?UzBlZVR4dW5pMzd0TFhIZmhsbnh3Z056UWtFRkJpMkRveVlRdURhV0tjVVVZ?=
 =?utf-8?B?ckZPUVYrUnJyMW5hVjdiTlU2NVBZU2ZhRUJpUy9rSno1eHlGa1l2anpBSW5p?=
 =?utf-8?B?VDMyNnlSUXZ4emlLWnZ5dDRuZC9kT0djbTVTSk1QRU5ZZDNDZmZrbFFVaW1G?=
 =?utf-8?B?d1VHZFpUZU0yY3ZQaWlSREx4Yi9Sd1VrS203T0JiaEhaV0haSVd4b3luUGdN?=
 =?utf-8?B?YjNUQzFLRk1va200a2wzb3F2em44cWUrRENUS2g0R1oxS2QvcEk2ekdLRDhM?=
 =?utf-8?B?a1lnQU9VQzF6NERVNlFGNGJyWUxxUkNtT3lrODUxbXRQbDNzb3hjeTNmaExq?=
 =?utf-8?B?dWlJZG45bFMrbC91RlQ2K25DYmJHUUVuYTExSWV2RzFpK3Q0Zmp2Uy9Wa3Rp?=
 =?utf-8?B?VWlQQ3Q1dGtCdE0yeHJpdGhOT2NNYUltcS9td2VobEF4MWlRTkszU1FsRjQ5?=
 =?utf-8?B?cFR4ZDJYSXZCOXhpZXY1Mng4VFNES29kUTNxZWhLdVZGejVzTlNBZTMxZWti?=
 =?utf-8?B?ZHNVSy9PaWRhVk1Ec0RTTlpFNkVmMlFONE43QkwwVG5USThHV0RJNWk5UEhu?=
 =?utf-8?B?MnkyN2VlWE80Z1ZTUnhRZ25MeU16dEcvOXBGMWZHS1F4bWpVZlRzUWNlNDdW?=
 =?utf-8?B?cWNtRjFWMks2cGRFaXA4RUZpRXZPVkFodFNTZklxTkx1K1V0MzhhU0kwNHg4?=
 =?utf-8?B?SFNuMG1TK0NiVm5nbDFaS1RMZytYVUNyNWxlMkRnNmJwbkMzMWl6bklnaVIv?=
 =?utf-8?B?WEdsTDAwcVNCcytoUW9tTkpwc1d3N3BXQUJxeXAwaXFvZmh3clZXeHJLNGpi?=
 =?utf-8?B?cGZJQTNkenczeWJaVy94clpodFdZU1h4Q2lRTE5lRXovcEZGOVA4Nk1JUGpu?=
 =?utf-8?B?UkFFdjkvV1FaS1FyN09TTGxZcGtZRFp6ZnFBL2FGbGdCMkEyTnZKNVkxdWln?=
 =?utf-8?B?WFVmTGZLRlNtUFVLRVorVE90RDlhMDI0K3BUUUQrWHRhN1FJRy9PN2dHd25B?=
 =?utf-8?B?MFNpaEdMQ1pjVC92VXR2L2Y1eGdhYTZwMWpBd3dQbGpuc1c1K081WGdXQkJ0?=
 =?utf-8?B?TldOQjRKNVo2UVg5cWJCVnJ4c3FrNGtndDVENVpqUnV2N2RNUElXVi8yZFV1?=
 =?utf-8?B?RGlKdkdaYmMxcmNPbUk1bFRFQ3IvY01SR1F3S3k1d3BqSkh2MGV4OWdSalpU?=
 =?utf-8?B?b3E5TGp3TlBNUHR5bnhjdmFmeVVxdEJ2Z1JSZ0xIRVIycFdjQk9zYzU2clJz?=
 =?utf-8?B?dTBOOEhLZHpmOWhqeHpFRDVWOEttMXk3L29wYTN2anpMb3FCZXcvaVlxN3d5?=
 =?utf-8?B?ZERCNzVWSGcyaWNBSENpZFMvYU8wTEd3SXlUQ0hGSjc2NVU0QmpqaTgyQjlB?=
 =?utf-8?B?MlhYanlCN3paZGdxUThkWE1WOW5pZ3ovR2J6S1hpRjNJWVYzNzJZemlXMm5L?=
 =?utf-8?B?SmFOVUdzK3dTY3dWQjVUZWlocWk5QkVqRDNGVlRrcExqTnBNekxnUTJFdE43?=
 =?utf-8?B?eENhOTFkc3ZWRjZ5cG83bDUzd1JjbHUzbXNqRk8xaFN0aG9SVmhIWXcrT0xs?=
 =?utf-8?B?SnVUN2dQTHliZnBmU2Vtd0R0eXBtMFdFbU9qdlVyaXBqRThtRWQrYkQybXVz?=
 =?utf-8?Q?PCwmbL/LiIhGt?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NzF6aTl6bis1eEdWVzZLRzlnMkxGeUFCQi9MdXFCd0pIVW1TMFh0RGlUeFdO?=
 =?utf-8?B?aEtFQnlkY1FacVpMYmgxNW1sZ2NiSThlWGdrYTlUOFREZjN3N3RYSGdOa2FB?=
 =?utf-8?B?Sk05ZXd5NStRYkZyL25ITEJPdEMrczlTSFlxNGFkMkt3dXBKcUgwb3ZrYUx6?=
 =?utf-8?B?YXU1WTUyOEZwMDJyTG1senhQa0E3ME5ranpYaHowSUlETFlmMmVkNk8wZGcy?=
 =?utf-8?B?UVV4RVZqYUNjeVVqQm4vaEM2ZmZaRzh5MHovYVg2WTN0Vk9VN0NGRDV4Zm9V?=
 =?utf-8?B?NFdLbkt0SHNZazM5WktpZkVtZjVldEc5OE1XYVUwS1dnQkVxemN3cTRmSEpl?=
 =?utf-8?B?QXRQWERzV2dpNUF0TC9tU0QvbTJkWS84OGRacXlNcFRqZ3dRaVJFRzZocUxF?=
 =?utf-8?B?QnZncHRnWVN6UUFIRGgwdVVOcmxqNzlGQzM4dmRuUlBUT2xUMXJ6Y1BZZTdJ?=
 =?utf-8?B?VUdsL2dWeUpQY0YvbXBjV0doUmtTYmhpaVhQK25oZEJRVlNRWVJlRkRhS2Vi?=
 =?utf-8?B?d0VBbTVray9ub3F4dkxudHI2b2NnOG90S2xqNlFmeUsydU5UaldsbnlWOG5G?=
 =?utf-8?B?UkpjdFUrZ01VRnlKSnRaTjlhNzc5K0lUS2J3UmNjb05QT0hMQkRvMjBUSk5J?=
 =?utf-8?B?OG9ybENGNXVqYUU0WFZvQjNibUpPL0E4L0kwU2ZpYVAvdEVQVVV0VVIzOHoz?=
 =?utf-8?B?cjF0VS9GOFlsNzB2QmpFQklZVnRYdUY2S21hMHZrZWEzYy9oeHFNalQvRGk5?=
 =?utf-8?B?UmxJamw5bTdqdHlYTUlHY3NrS2ZwaTRMUmVRTlhCZ1dIZDgrRkJ6SldTN2RP?=
 =?utf-8?B?VkdaSFNlbUxPWkZNbmVka3REQUJSNkNteUV2N05JWnFVVlF3L3c5aVJCMGly?=
 =?utf-8?B?STVhYVdHQ2dma2JWWFFRUWJyeVpYcmpsRnU0VFBWdHNOck5JK0VRaVBnS0x1?=
 =?utf-8?B?NU1rZlA5eVZsVFpQaUppeHRxZlNUNzRCMjFFL2N3c244YzFHak95VzZiRzNE?=
 =?utf-8?B?TTRDUnRLYTQrdndXMyt0cTd0ODJxbXpuRE5mQmNnSm5OUlhnT0dUeWlvR0dG?=
 =?utf-8?B?TnhrN3BLNE9Gd29ENi9KNDF4OFRiSnpvUGMrOEtSaWRwL3Ewa01ZMnpQNktj?=
 =?utf-8?B?d3pOam9qRVNsRGxLODRCWWwwOTErU0xQV0JJQTZCeU9WemQrVDJIYmFpajBa?=
 =?utf-8?B?alo2d1ZWQUI1NDVaVEpqK2NOWVV5alVjbzY2VDJEZFZSUmk2OTduYjR1cnc2?=
 =?utf-8?B?ZWlVL0ozNFRocnlSL3c0MnFVRzV0RWoxYnA5ZGZkUWNxOWdiYWdiendVdDJZ?=
 =?utf-8?B?U01JNmwvT1JLRlRXMGhDbEptclE4S3p1OElKejRxWm1ycHBlSW11cXFoK1Vw?=
 =?utf-8?B?YWpMWElkcnFXTFlvSFhsdmlzZmplZ0F1akVWd244YS9mWitJaXZJV0pjOWJV?=
 =?utf-8?B?VGV0Q2Q2dUd0dnJmcFVhSGlUeERxVVJCSnFoRG10RmxmM005eVlzR3dlSHV3?=
 =?utf-8?B?QzJ5M3BxUDRKV3hHQmRHNkNHM2F0bGZ0NURDVnhJS3NKQWh4ZGY1Q3FkSVdD?=
 =?utf-8?B?blphMXJFZkp3UUZZUjFzRHpQSk54bzVkbGtHcmZXdUNSanhiUlQydWVCd29Y?=
 =?utf-8?B?cGZjM05pZ1IzK0VsZWNQWk8xa2pGMWZyZld1dnpTMXNIVURMcU9Ud2cvMEVm?=
 =?utf-8?B?UXdUWGU4WFBla25oOVdzUWVJd1RFempxdnJPd0xtQkpUcERGNFBVdlRvWWpa?=
 =?utf-8?B?Q2wxS1I0NDdGWDlKTWZmV211ajZwSmNQQUFFcGRkWkxIMmhrSWlVc1MrR0VY?=
 =?utf-8?B?aU5ITFRtTVd1N3VJRlBpb3NIQU0reVFRMnZYaGtlRDNmY3hrL3hoNEdtVTAr?=
 =?utf-8?B?QVVSRWlTczBwWVVRTXdvY1A0QjlqQkEzQ2Y1bFVaMHVtY2F4VFN3UGhLMEdP?=
 =?utf-8?B?a3hBaFdiKzFQNmtaUDBCWGRpYkY4NitSNEJCSjBHNnk4aFpFNzZ0WGFPSFd3?=
 =?utf-8?B?YXdsWGM0L2MwUGM4RWhnV2ZPL3VmNXBEK2taejhhbFErSk5VSHRVODhlRDFw?=
 =?utf-8?B?WEtaTFpmUUlBYkxLay9Vd2RQbXVKeENKdjl2N29uc3Z4NmhjN1JIOW1obytt?=
 =?utf-8?B?eGJiNGhUT3dpZFIzdThkRFRQT1J6c1VXZHlhL2k2NzA2cDZMem9CaG1pZXpW?=
 =?utf-8?B?dmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bb49a13b-cbae-44b3-cd64-08dd5bd0515d
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2025 10:27:23.4935 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UzQ5T2aa4EhbhYfTxxyG2yZEtFNY8FIJeO/SIa3mXE+w0UXq82uNAcIRnF30h/LpmO+0e+iW271/+P6JZs9J099OjUxsaOlDhSlyCEcQcXc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8362
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741170448; x=1772706448;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JwPtCb2pRGdjpIk+6mPoVRE8TuXkPDHboexbsJqH1Ac=;
 b=C26I2XhQEF7imDamPQRL3gAg5tSuJY4tJGBI6DJmB79RYIjyLA/zh72Z
 WXikgSZcHWGgJ8KhRvCWzc76YCRv+MJpQ0LeF1PgJ9Pecx6GswY5/K69N
 e+uktOoZVEjHSqM6q2JGw2JDyw8A2f3dhXgy4/e8BSX5TaeHsK8H+My+q
 Lo8xSOIwlcZjqxUv2jf6rIXwK2FuDWUZcmo9q5BO1lyGzBBgLGSGzcFUe
 fE9wlv1ExyGmS8CNfhGAOYmm2lzZOWL1tUHesTqdECEYlzJ02v0wPZv0U
 OvZYf4fkbhCWZYkUApwVpjavu3JtdJiJnwBE90iZgzeJoKnjP+UVEghtV
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=C26I2XhQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] MMIO write access to an invalid page in
 i40e_clear_hw()
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

On 3/3/25 11:19, Kyungwook Boo wrote:
> Hello,
> 
> It seems that there are invalid page MMIO write access in i40e_clear_hw()

Hi,

is this something that actually occurred, or just a theoretical bug?
(depending on that we will apply it to different tree)

please send a proper patch anyway, as it looks legit to don't go bananas
when HW gives you 0

(and CC netdev instead of generic kernel ML, perhaps that's the reason
this mail was tagged as spam for me)

> due to an integer underflow from num_pf_int(also num_vf_int seems possible).
> 
> The following is a sample code in i40e_clear_hw():
> 
> val = rd32(hw, I40E_GLPCI_CNF2); // (1)
> num_pf_int = FIELD_GET(I40E_GLPCI_CNF2_MSI_X_PF_N_MASK, val); // (2)
> num_vf_int = FIELD_GET(I40E_GLPCI_CNF2_MSI_X_VF_N_MASK, val);
> ...
> for (i = 0; i < num_pf_int - 2; i++)      // (3)
> 	wr32(hw, I40E_PFINT_DYN_CTLN(i), val);  // (4)
> ...
> for (i = 0; i < num_pf_int - 2; i++)			// (5)
> 	wr32(hw, I40E_PFINT_LNKLSTN(i), val);
> ...
> for (i = 0; i < num_vf_int - 2; i++)			// (6)
> 	wr32(hw, I40E_VPINT_LNKLSTN(i), val);
> 
> An example scenario for num_pf_int:
> (1) val = 0 (if MMIO read value was 0)
> (2) num_pf_int = 0 (also zero after bit field extraction from val)
> (3) An integer underflow occurs (num_pf_int - 2 == 0xfffffffe)
> (4) Out-of-bounds MMIO write access if access address exceeds the expected
> range.
> 
>  From above example scenario, the maximum access offset value can be around
> 0x4000347f8(=172G) which seems like this underflow is not intended(also there
> are masking operations like (2) for num_pf_int), so I report this issue.
> 
> I think similar issue also could happen at (5) and (6).
> 
> The following is the patch method I propose:
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
> index 370b4bddee44..97ef79be39b3 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_common.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
> @@ -848,19 +848,25 @@ void i40e_clear_hw(struct i40e_hw *hw)
>   	/* stop all the interrupts */
>   	wr32(hw, I40E_PFINT_ICR0_ENA, 0);
>   	val = 0x3 << I40E_PFINT_DYN_CTLN_ITR_INDX_SHIFT;
> -	for (i = 0; i < num_pf_int - 2; i++)
> -		wr32(hw, I40E_PFINT_DYN_CTLN(i), val);
> +	if (num_pf_int > 1) {

instead of adding if conditions, I would simply change the type
to be signed

> +		for (i = 0; i < num_pf_int - 2; i++)
> +			wr32(hw, I40E_PFINT_DYN_CTLN(i), val);
> +	}
>   
>   	/* Set the FIRSTQ_INDX field to 0x7FF in PFINT_LNKLSTx */
>   	val = eol << I40E_PFINT_LNKLST0_FIRSTQ_INDX_SHIFT;
>   	wr32(hw, I40E_PFINT_LNKLST0, val);
> -	for (i = 0; i < num_pf_int - 2; i++)
> -		wr32(hw, I40E_PFINT_LNKLSTN(i), val);
> +	if (num_pf_int > 1) {
> +		for (i = 0; i < num_pf_int - 2; i++)
> +			wr32(hw, I40E_PFINT_LNKLSTN(i), val);
> +	}
>   	val = eol << I40E_VPINT_LNKLST0_FIRSTQ_INDX_SHIFT;
>   	for (i = 0; i < num_vfs; i++)
>   		wr32(hw, I40E_VPINT_LNKLST0(i), val);
> -	for (i = 0; i < num_vf_int - 2; i++)
> -		wr32(hw, I40E_VPINT_LNKLSTN(i), val);
> +	if (num_vf_int > 1) {
> +		for (i = 0; i < num_vf_int - 2; i++)
> +			wr32(hw, I40E_VPINT_LNKLSTN(i), val);
> +	}
>   
>   	/* warn the HW of the coming Tx disables */
>   	for (i = 0; i < num_queues; i++) {
> 
> 
> Could you check this?
> 
> Best regards,
> Kyungwook Boo

