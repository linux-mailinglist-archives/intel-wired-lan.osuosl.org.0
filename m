Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2762D93B6EA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 20:40:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB8F0406C9;
	Wed, 24 Jul 2024 18:40:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a6E1d9LVzs2j; Wed, 24 Jul 2024 18:40:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 90E8A406BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721846438;
	bh=59u/CuMoUCBSLmBrMWZEgqB3+RRVM2+5FSrt5Ji6WWs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NBKeoKcBzwf0ip1QLJp9Bg+CzMiwpsF4mmNw83lZKJhZq3mOGG++xZOdtSBjxzOBn
	 6KNGTnnnY1FOFncYsdvpi6h8ot0z9Nj+vyBS1sZf0/eyWc5iHpVd6co2P7+MJopIJ2
	 6lTU/hyp2EqSQz/VuY7DydKdbkG99mj14b7WrSldiQZDGvhY2UZ3FMSaXOXzoYKl5G
	 YBYOKpgmP9QadFzd07R7hOHKWMzAu4aZvEroaHzBAiDO3i7urFtAujSmJbP7K73AF8
	 vT2fqkUhggvtZ/QBvE+G+WL9k6a4lVLPuMlOGSySBI8UmD5u9+6m8c0yK6MjOw4c2x
	 /Ku29CwkujOkA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90E8A406BF;
	Wed, 24 Jul 2024 18:40:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0B7C91BF982
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 18:40:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id ED3A8404CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 18:40:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hPfdXQWpxzvB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2024 18:40:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B550A4033A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B550A4033A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B550A4033A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 18:40:34 +0000 (UTC)
X-CSE-ConnectionGUID: w975uNnyRm+Pn2RSg0u6YQ==
X-CSE-MsgGUID: 1/vpi99zQdS0riFTHO8iUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="19728027"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="19728027"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 11:40:34 -0700
X-CSE-ConnectionGUID: UKDbYyWITv+EgpMme6p9dA==
X-CSE-MsgGUID: 1SBHkXSHTNKb6nAenNjaNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="56820047"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jul 2024 11:40:33 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 11:40:33 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 11:40:32 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 24 Jul 2024 11:40:32 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 24 Jul 2024 11:40:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VkGmaQCvJQjzb7rakDkiBu82joQ3t4eDJoGM0AAn+OSYL1O2kjMq20xU9ld73TbBsc1RKDzedgOsL4/lMkCZASt9sH4KqgKFCrjlS9bEiL260tqR8yBQ3YBNlnZcf6tjhrN6KGQvPHSh9wYiSs1JH3+bjW5eRRl6WOcFELm5bIM3gsF0LJMVsxtJkvG188cQuC8AYXKffYjT1jJVaHIQHWtdDB0btDkc5viE3W0csV2V5xzKQfm8564JbYxgiGM6aXl8OM8dBE3sLnwQR48J6z7Y0tSRpcWhc1hhzHQ+eiX3tMWsbuzRdy+0TwxKp+nQqwyqI2KGSAVan9AVKZP9eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=59u/CuMoUCBSLmBrMWZEgqB3+RRVM2+5FSrt5Ji6WWs=;
 b=iak9FsxPB9BWt0pjAeWfR6dOgeEeHESE3pq++VMend7107bG54tf6hZjdSJGwOM8gjOBRQLPSJVoOZoON3srJFQHqYCbmjCiCCESuQnIZgCdISdIiUis1EmVr6K4bWL13Xi3BhGxDJyLYCQRaAvhq1Di37nVjQeV4iy6p6Na4G6EyavtyyDhiqgJA45WB8oOLKDJ8ZDKpQ3bskdeuZeTMSJnajH4116DUbc7mGE2LldBX7e/9zqxtp59Va/yceIDHx5KNOB3UkZ8/UEpYyJosasF3GyJegk8NEl2rDyUTPhuX0b0xiw5szuQ18yJurOeo8whVKSGIQGidNSPiYg/nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW4PR11MB8267.namprd11.prod.outlook.com (2603:10b6:303:1e2::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.20; Wed, 24 Jul
 2024 18:40:28 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%2]) with mapi id 15.20.7784.017; Wed, 24 Jul 2024
 18:40:28 +0000
Message-ID: <1d6c2ce8-9d98-4cdd-a59c-7486eed9908b@intel.com>
Date: Wed, 24 Jul 2024 11:40:26 -0700
User-Agent: Mozilla Thunderbird
To: Larysa Zaremba <larysa.zaremba@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240724164840.2536605-1-larysa.zaremba@intel.com>
 <20240724164840.2536605-7-larysa.zaremba@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240724164840.2536605-7-larysa.zaremba@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0192.namprd03.prod.outlook.com
 (2603:10b6:303:b8::17) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW4PR11MB8267:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c8906de-d1bb-468d-ea01-08dcac1016a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dzg3QmxGdWt4c2d1dWtQU2Y1VGczVG9pbzZjQTNFUGVPVXUwZ2I1cVFjcW1U?=
 =?utf-8?B?S1ZZRXBWeXJsbGg4K3B3N0ZwTys5MXNTZ1lqaXgyY2pWS09GR0xxQzErYTIw?=
 =?utf-8?B?U21PNUVrOEFlVlhSeXhIYVdYTzNvSEtUNEhKRDRWekF4aFkwOGVlQUVxQ3hn?=
 =?utf-8?B?M1dHSkx0UmRZUlBWRU92Y3hTakd4SGJlTkVhNEdtYi94VGgvcERrT2tjYUx1?=
 =?utf-8?B?dm1QLzVXVG5JdDVCaUNlL0hjUnY0WUx5SElGRENwQVFrR1BQK1hIVzRES0Fp?=
 =?utf-8?B?MEZjVlVTR1JoelRNaXhoa2lxMXgzTGtFUDQyUnl6UUY5TElUR1hEUGFidDNI?=
 =?utf-8?B?UVhVdVFYVkt1OGVLcnBkTzBoNmVMYVV5QzVQRVlBOG0yRHo4YXAxZHBDNDBM?=
 =?utf-8?B?OEFXWGdjVWlQcEdFZVJMVk51MnI5QjV0S2V4aENzcVA4WDF0ZG9USFF5a2RJ?=
 =?utf-8?B?akZEMmVacm5aMHBLaHFrUWl3eHM5eHd5bjNGbzZzc2JsS1E5YkVDSGs0cGFO?=
 =?utf-8?B?ZGdQVHZGNHBmQ3E5TWNReG50TXJsOTk2bnVmNjlOSXlTUkhRV01XZStrK05h?=
 =?utf-8?B?bEM4R0djU1ZLTmlsRExyMlZmN2ZCTmVjdisxZmIvcmFpaURubG9HcVZ5aE1D?=
 =?utf-8?B?Q3RxRHNaZXk4YjdqQnhLcVg2WXVtQlI0eGNVamh1RUpteGdEVXJiaG5iNVpE?=
 =?utf-8?B?SnRCaXdXTmd4bkYwajFQUjJLTjZHekRYanVtVHRXbFNDc1BsV1U1OUlDdktI?=
 =?utf-8?B?bm53UHkrN2tXMHJ5UkhtVWxKWUs0cGZmdU01UjJ1bXZua092UXcxSHR6MXU0?=
 =?utf-8?B?aFl5TkVyNkdLc2tudzduOWp5c1o2VEI3Vmc3NkJuK0dGZzQ4WUdWTlQrMXov?=
 =?utf-8?B?TVlqOWljUWc0RE5jSlZVejlBUVR1QStiNitYdEdVMEhoL2Frbk1nTXhURG9m?=
 =?utf-8?B?OURTZWgyTFV2OUtnbFFSMkFHZXNKVWNCM1dEbzQxbmRrSHp3S0E1blM0ZmtE?=
 =?utf-8?B?VSswd3JhZDBtTVhvU2oyQmVaRTNJdnBOR3lkTnZRZlQxdkpEbmNJOWtqcXl1?=
 =?utf-8?B?MzBaRjBGRWlxMUhPbnllUDdYRldCT1VQQzRtMDRBMGtIVitoRnVmeEg4ZXZO?=
 =?utf-8?B?Yk9oSTQxMHM0bzhCaUpHQlVEbWozNGZ5elJ0ekg0L0c5U1ZibmhYU0RLMWlG?=
 =?utf-8?B?MFc2aXZVL1RNK0psUEZoZTYyWkcvSURmNmdRcUFsci9pWjl5em1OSE5CUVdR?=
 =?utf-8?B?ZjJYOFVjbUIvbEpkQXJrMlNJdmloYVZVN2hMRWV5TXBjV0pxVGwxNHhhZjVK?=
 =?utf-8?B?eWl4MzA5ZEVxQldwNjUxOUpLVWtKbDg4bXR5ZmY1LzlCTWN3STdXZ2Q5VlpF?=
 =?utf-8?B?LzVZSHVaeFBJWFFxRUlLQ2oxLzN4Wjg0TE9NRjlpWFlZSlBQa1VycWF1OXdw?=
 =?utf-8?B?bVF6SHM4b0Q1SEZvSC9XRTM1Ym5MME83TjBYb0hqbmNlTzRiN0c2OS96SHk2?=
 =?utf-8?B?VnU5dFIzcVdPaThZbVd2alVKc1dTb2V5QXNxcjF6ZHRFbS8yRGJRbFQ3ZU9V?=
 =?utf-8?B?Q2xVMDJLeWhmK3loTFQ1NUlCcXZ5V1F5RVVOT0h6MDFOUW5GUU5sUG9DRE5j?=
 =?utf-8?B?T21Ob3JXK1hRU29DVmZ5TjRYK1VjblZCa1pIc1IxdEpIUWRHWFRRWi9sbXhM?=
 =?utf-8?B?UXB1YTVQLzl6NFc2OVRnZGJhS0lzanp2S3dhYUQ5RW9VSThLd3l4azd3STc0?=
 =?utf-8?B?bzRhaW1Hak9qVFhldzZKWTU4ZXRVL2JXaEpYakMzZVhLeVlrZm5qTk00RlFK?=
 =?utf-8?B?c21SVzcyQ0pobEo1aHdhdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OERyZ0pERnR1bHZrZkRzL3lKMzErM1FpaCtPbEJvbVRTWHA5RWVIUEw2MHRT?=
 =?utf-8?B?aXhCT2U4WkM4M3pDUU5YMDFvQ0hNTkI0NktMd2tTVkVOZE43QUdLTHZCVFNp?=
 =?utf-8?B?ZEFXMFlzSjdMQms4UVRHZ0VpYjFqazY2VndGSW5OTW1UallnYVc5dXRqeE10?=
 =?utf-8?B?ak16YlBjbzVFeHpRYTZsOU12Uk9CbU85eFVIYllCMm1yemtqRTVzdXFUTlVS?=
 =?utf-8?B?b0dhY0YrTEtjUmlCdk5YbE1JS04reE55R1o0Vm42VmQ0TFdDU1ZnQU41SUF0?=
 =?utf-8?B?UGxSTGZBaFhhNkozdjl2NzFRSmFsdFMvN1c4elp5SWtTNDEwM3lRUnkyWnE0?=
 =?utf-8?B?NFhJa2xySzhRdjBoMFV6YkFJQ2dOSExONGdWK2prTU5oSEFQbWY1eUdvNXQ0?=
 =?utf-8?B?UFNBb21KUFNwNUpPSDU4UkhFeTlqdzVuV2FUSHF3dGRvcjBpZnlnOVlUcFlW?=
 =?utf-8?B?b1VlY2wzR1RpUWo0UGIyTktFOFRkZ1B0M1lNK3VhY1pGU3RkTHljNm1LSGJx?=
 =?utf-8?B?YkRZcDhuRWgrTTM4THk4U0o0bEEraUlYVUhjYTh5cUd0THBzSWZNMW9TYWZm?=
 =?utf-8?B?MlFMKzR3UjhMeS9KS0l1TTRiTzJxckxVQUpLdzZ5L0NnNFhwci9GNHhUM0lS?=
 =?utf-8?B?ME1qNzc1a3JmTlFCTjJlVWNJNkFLTnNYb0hnalo1ZGxhQVdBOTdWVERsaC9q?=
 =?utf-8?B?T1p1WlNjSWk0NTdndk10OEpsS28wZzJZME5PT3hjNURkWSsrU1pITXpMQnE2?=
 =?utf-8?B?U1NIc3EwNGxTYlA1WWVia21XVnJJS1dTZFovai80YzMrTFR2MGFBVjdZZlUv?=
 =?utf-8?B?UFBwSlY5VDArVGRvdFZ0bWowbWErUXZ3ekNlYzFyNnhLRU9nWGZuR0EyeVA0?=
 =?utf-8?B?dnlmYWN1VmlySmJ0c2VwU01RdnZpQ0lSZEgzaUt5TGtVQTJMQWtOSVM0SVBk?=
 =?utf-8?B?LzUyR0RuLy9nQ3Z0NkE0UmJLRnZTdVFkemxzMHlJNjZyWmo3c0FBS0pKaXBz?=
 =?utf-8?B?TVJLTmNoOEx1VC9TTkdvcmRQY1J4RXNGNlQ2aWx6MXk0WHBibFVSaFYvWG1p?=
 =?utf-8?B?Y3lsdzVuNDhDdm9MOFJhckx2RmlPcWQ5UnM0dzROd05kenArSmF0NExJWE4x?=
 =?utf-8?B?OHplL2VhQlQ5UEFQV2FGck5ieTFib0kwVmYveFNWN0pZcy9RQmprTWE2TU5L?=
 =?utf-8?B?SlAzQVllbS92RVZlQlJ2MW9ScGN0azBwem9mNGRJU3hJeldwUWczTHRwbncv?=
 =?utf-8?B?YWRWWHFlSjdlWURmek00WmV5MlFFdTlRYnNsSDFRc1RwQlU0OFFUTHVYcXE1?=
 =?utf-8?B?aDhQTTJSVmxOTUVzRHM1SEM5azlzbVZRQytoSG53WnV1MU5lSEt1L256Wmwv?=
 =?utf-8?B?UytKcVdUWk5xcTVzRi84SHVWdytJdUlqWTdtMmY5amZqR0VoR09WYjBWcUJK?=
 =?utf-8?B?VUxKQ2szSGFnLytITFc3SHpjTFJ2SytwVXUyQ2IrMGY4TEZDNWl2WjJuSXIz?=
 =?utf-8?B?ellRK0pwT2dOZWlsMlJxQUtkaWF0azBJbUNxcjlzKzMwYndFSytuSkVXOWVl?=
 =?utf-8?B?MWhmWEZhUnRoWlE0RTlJMDkrcVpHL00rS0szSVVlWGpuRVA5eHJENzQ4bmd1?=
 =?utf-8?B?Q3FGVzlvWEhSeDlrL3R6czhUakh5QUkxbFJnOFc4OTdyZDFVU28yV2kwTFVt?=
 =?utf-8?B?WEZsSjh2eTJMQWdvci9VVVBaQy9pMDZva3RnK3N3c0FlK013K3RSZ2N5bUdO?=
 =?utf-8?B?aTdQVmVZQnBhSTVoajdEZ25nUFYxM1kyNCtnNVIrVnF1V3JkREtPSE8xWjBD?=
 =?utf-8?B?U0dqRmJoc3JKL253ZzBSNkFUWDYvSVhNUXFBdW1tdEhEL2o5emk0Mll3S3V4?=
 =?utf-8?B?VDRrdGdxN1RmY3Z4RDB1VXVXUE9kbjgwOC8zU0Flb3Bua2d2cFViY24rVzB3?=
 =?utf-8?B?UW1lK0FGRGFNaFZMYlhlRk9qY3cranZGd1Z4ZUVQY3A2MDlteUk3MVdCcmZE?=
 =?utf-8?B?WVk1R01BeEZheU5yNzZBVjhaVlljSFQxVGlzdGhiK3I4NTNNWFc3Z3VSOU9D?=
 =?utf-8?B?UitNL2hNV1A3R3NTV3pKMnloMCtybEFwS1pmdm5jWTJPSkxXejl5ZW9aVmhX?=
 =?utf-8?B?ckU1MjM2UFRkbk1CVjhmN2orZ1NuYmZCVTV6Rk9NUzR1Zm1oNWdNcXp2VktC?=
 =?utf-8?B?blE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c8906de-d1bb-468d-ea01-08dcac1016a0
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2024 18:40:28.0065 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: grPU6ssGR3e0wKiCeHGmisv4zz7rZC4bzC46gLeONre091v+HEiE5EwV80SdtHl4ViN5PqmHO2ql7vG5t44OKStxr9oJBdQ1l+Gw/nZkk74=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8267
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721846435; x=1753382435;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YGg3wsxofgMjL3vgCgJsdKXWjkYZ1h/7Rn+8M5QdmmU=;
 b=HhTnqt387Z7hbw9FHQX+0otDsYIzjz9XyUHQ+ZPM7M1B4c42P9G+ssRg
 6prtddFW/2Vrz7aolRhxcX3NDkpciWTZULylfqDdNnFyjvVWPZUP9JKG4
 SX57aYTqIS3otiu86XqpVqYVzg9zvYBcxKl5yiKZxQjQyM/m/ykd1+UDZ
 xE7DgIskLa6biOuFhxcqufH0ZbizRR83/MLwbQQOHOxADT4e8YpPLhYNX
 YUnIOL5y6WzkKQGuWfUtpabvGag4yE87E0KBwk9ZfH8rrr/KfDehpmUl/
 KwxQe99RtGO2fdC4KGRDfOhDdLBOUVHQS+VV3IiAreBVmOJLZ8wfWcP+b
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HhTnqt38
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 6/6] ice: do not bring the
 VSI up, if it was down before the XDP setup
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Jesper Dangaard
 Brouer <hawk@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 netdev@vger.kernel.org, John Fastabend <john.fastabend@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/24/2024 9:48 AM, Larysa Zaremba wrote:
> After XDP configuration is completed, we bring the interface up
> unconditionally, regardless of its state before the call to .ndo_bpf().
> 
> Preserve the information whether the interface had to be brought down and
> later bring it up only in such case.
> 
> Fixes: efc2214b6047 ("ice: Add support for XDP")
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index d7cc641643f8..d83cde431fa5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -3000,8 +3000,8 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
>  		   struct netlink_ext_ack *extack)
>  {
>  	unsigned int frame_size = vsi->netdev->mtu + ICE_ETH_PKT_HDR_PAD;
> -	bool if_running = netif_running(vsi->netdev);
>  	int ret = 0, xdp_ring_err = 0;
> +	bool if_running;
>  
>  	if (prog && !prog->aux->xdp_has_frags) {
>  		if (frame_size > ice_max_xdp_frame_size(vsi)) {
> @@ -3018,8 +3018,11 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
>  		return 0;
>  	}
>  
> +	if_running = netif_running(vsi->netdev) &&
> +		     !test_and_set_bit(ICE_VSI_DOWN, vsi->state);
> +
>  	/* need to stop netdev while setting up the program for Rx rings */
> -	if (if_running && !test_and_set_bit(ICE_VSI_DOWN, vsi->state)) {
> +	if (if_running) {
>  		ret = ice_down(vsi);
>  		if (ret) {
>  			NL_SET_ERR_MSG_MOD(extack, "Preparing device for XDP attach failed");

This diff lacks the appropriate context that can help explain how it works:

> 
>         if (if_running)
>                 ret = ice_up(vsi);
> 
>         if (!ret && prog)
>                 ice_vsi_rx_napi_schedule(vsi);
> 
>         return (ret || xdp_ring_err) ? -ENOMEM : 0;

By changing if_running to include the VSI state flag, we ensure the call
to ice_up is correctly conditional.

Good fix. If I understand right, it depends on the other synchronization
fixes to work correctly so that the VSI state won't be changed on us.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
