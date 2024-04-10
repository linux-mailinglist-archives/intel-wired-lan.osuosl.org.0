Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C2389F413
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 15:24:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C8BA8200B;
	Wed, 10 Apr 2024 13:24:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gZIeeIzadAgp; Wed, 10 Apr 2024 13:24:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BDBE81F3F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712755455;
	bh=V5q89Bwv1WpzyGoyl49lxOJNvOtae/CcEX23U7jiOf4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8oGEcsnELQJwuJXvYsRYe/6WICg7orEl+R7jBtxQUTIhIOTnc5dZRX+eujj0das/F
	 JaD5SUlkhOYz8gP/WAOg5lymnFF3Da70+QJwv2LOnjBc0BpZVZehFhtAAovureZzMW
	 kHHnuMrbHl4+DGSFeuLd0YA4NXWof2PcSYCq5HnsMx8L0RRp3VH3By5jxM1m3cUvpD
	 40gZkpOj+GCNFbuHFHWVMWD4S3ZPfM762sD5wEE+r24+UVDB8MpaNnJzKC/VOpxiqe
	 3R0sS7vjXZzbH3cQjGNfLQrgsNUMG11TAR2VAkjhgUoMFfhELLauxwoJI1sAjtzv1P
	 0tkNBMdOF6Tbg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3BDBE81F3F;
	Wed, 10 Apr 2024 13:24:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A0B411BF5A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 13:24:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8100E40B78
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 13:24:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I3b5OVh00oU9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 13:24:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B298640B0D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B298640B0D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B298640B0D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 13:24:11 +0000 (UTC)
X-CSE-ConnectionGUID: 6+8V6FCQRge3k+XXYrb9zw==
X-CSE-MsgGUID: 22kT6m6XRWW8nXXH9FTFfQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="11959944"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="11959944"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 06:12:20 -0700
X-CSE-ConnectionGUID: kTlCt1yRSwafBjg31lSS3A==
X-CSE-MsgGUID: aZiHEEC9QQyPu3osHm9HJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="25028354"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Apr 2024 06:12:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Apr 2024 06:12:18 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Apr 2024 06:12:18 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Apr 2024 06:12:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MVYVBhLysoXV3z8QLTjqFz68LpxtTZpGGd4mok1GODsum5orpvhYR3RUxFSy0IOjqVJ/zrqxH8iDbkj+L9ZdbTLiJEbqEOTpnb2Qch0z1gYU6S8FcSCl3FCHisAU9EnzuxgbchTgqZQ1XQmYSS/TdTEwSR83xYPw9TAi+xuBuNBSpiVy5tQmAo1bW4kHw8pQqsPqf3RGF5J+yGzE1o7+NnoLeaWyqqSiCOvojhgj+3tS1hv8Tij1WCcHZ8z3Gt55YUUTM/xMKliXyDajJt5UTVncmlWizaOqeTD1JFtyWfr0g+obyRVOiVqEtlkRKdT4j23Eq75MUJjbhCapeIB2Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V5q89Bwv1WpzyGoyl49lxOJNvOtae/CcEX23U7jiOf4=;
 b=Xo1C96pGp5W7mDp7BNfRk9lapJfDWtr6UQG6XwHtjyuhsIE5jDx69ABwRexDXTwPIp2GC3R7D2xlr88rLxcIdKfh6T8R35nCz3pWYbFpzii6tZTrkSzeuPRl9BngfarcruoUIRmZZ9Os5f8XutgEBmmW/qPWaM5dvh7MPFNJz9jr4kvnQtSC0HT7P/5jpb0/NhGUuk/I8tDmy0yVjI+MArpwCE3C6Ab5UfOFDyez6RMJEmjPGEpwIcyAZ/FrbEDrBuzpPs9M1nKRSgY7O0yVw6s0L3HcazJhizz5QvaubNiu4B5EXYlLwMSpx6RpBtxw8/QP7F0nUz5wsQkesTQ1/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH7PR11MB6650.namprd11.prod.outlook.com (2603:10b6:510:1a8::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Wed, 10 Apr
 2024 13:12:15 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::5c8:d560:c544:d9cf]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::5c8:d560:c544:d9cf%5]) with mapi id 15.20.7430.045; Wed, 10 Apr 2024
 13:12:15 +0000
Message-ID: <f4874ba7-4933-474a-b5d1-c00e6ec25bbd@intel.com>
Date: Wed, 10 Apr 2024 15:12:10 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20240404154402.3581254-1-aleksander.lobakin@intel.com>
 <20240404154402.3581254-8-aleksander.lobakin@intel.com>
 <45eb2bf1-e7b0-4045-82b3-93b9f81b7988@intel.com>
 <bebf1a1a-e4ec-4ec0-9d01-57a51bcf14ca@intel.com>
 <9d389192-63c4-44e8-b863-6323b45aec0f@intel.com>
 <36a067fa-75c0-4e7d-b704-229deea2d440@intel.com>
 <61a952aa-1b3e-43c7-9f35-ab53e492305a@intel.com>
 <b1438638-a6f9-4a88-b8fe-7bec28ba124f@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <b1438638-a6f9-4a88-b8fe-7bec28ba124f@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU6P191CA0003.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:540::29) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH7PR11MB6650:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5B/sVbvTU/IeCpgUt1tSVrv2HJVf1ZXaUzO3kuAZ5l9l8fOU88O4VSPMa9lI/laTHKP4v8JbHozS7hOOobgjYiCp8fw0qGyLr1XmxkKx4x1s/Hv682iIZhO0fDFAJ40Gpuhx7HL8P62HCZ0h5TzgYiyjivhuAMrnvR+Kk479VyJZJ015J4XKoPERWoIzvsg7BAlN182tGBxGDF9dy1uysghv0C9OWkF7wwxBqXlyTRMBVlPBTmttBJFFtpoMMy6MV5Z/SoDE0OgywBq94sm34VwvVuVIBHSxvgRwUQg4VKCTz9rZQh1CgwPlqVcS9tdWTAa1zR4UVvHdkY84KrumTEaeZjFcd3r6JwStmminnIrViXi+vnCmdyaPQGXJi3NmJYo4uGIypzgbRBbgy6pDKEgT8ABit7YE7c+0I2GI4qwZYRnVve65PTp0B6ymjAtvswYIqJBn1qWaVEFHk0/SAVFBV0m58HEGjlz4k7v50kXIocgvXgtCVDaAlmdt098oAzVWByL5Oe4vZPUC7GsEraSV0nKPmz0+vVbak4wP94q5OwQNCpFbqAEgsSevtThsA926AFZa7fjT3sTh8tl8SIKPm103k4EMX+OK2VJ5swwBmcCOu0CXugIyQB5uOZoaQdt53EVYab6wTa6+gLrhriWlXsHsZfxWXrcwHLXDck8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(7416005)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N1huRUZ6NjhOT2JuZGYzMmI2Zjh6TVEydXdkZm8xY1pEekh0dTcvZTFpYXky?=
 =?utf-8?B?cWp5ZUJiN2Vwc0c5MzhidUZIdTJZVFBQV0JNQkNqclFyZHd1aDI1clVseUtz?=
 =?utf-8?B?VmhISDJzTzgxWWxyZFVueHo3bFQrSUhIaDBtUmR5RDBndEFrWjlxSUM1blU5?=
 =?utf-8?B?OHpSRTRScGxpdVNyY25BQjk4bUUrOFVLbnU5RFk4ZHYzM25OTFhxczNYS1or?=
 =?utf-8?B?Z0V1MVU1MUNQc0pkQWxlbVBSYmthM1NoZnI3QkdWOWFZOTlLUHNhanNpcDd2?=
 =?utf-8?B?T0N6SklxQjI2c2tNRUFXd2puVVZLelcvUU1WZUhZM3RhNnhCaCttVHdtaWNZ?=
 =?utf-8?B?dzczeUFQa2ErUEdEU09UUXJzWFJ4aXFWZ3ZoY0xjWHE4c2ZTdVB6ZzJVNjNt?=
 =?utf-8?B?N3dMc2RheUtWMlllWTdtcGtoQk9tOEVsTnBiWVZEM3pURlJIZWNXTVJORW0z?=
 =?utf-8?B?cGdIV1FmeXZ1MUNBd0FCNW00T3V0Q0N2cWFKVHQ3TDM2K2c0em40Z1N1Z2c5?=
 =?utf-8?B?QkRhR3hhNDY5TWxLTUpFT0UrQmFxVG5pbnhkWVhnT0RYZ0VQWHp6Z1M4Tks2?=
 =?utf-8?B?WVFBeEJHWi9pb0p5MUdZK3N4SXh6Q2dQQndJUUZIbWR2K2xuZFBzZTFHYllU?=
 =?utf-8?B?NXgyVFR0b2hVWEF1Y3UwV0gzM1MzTzJTZENBcEdaS1ZOcExCSGJOc0hHVVhi?=
 =?utf-8?B?YjgzTHRoNHB3dEltSjFWQ1lkSGkrQVF1dmVYRWlIU3NNMUdjckNVQjBYTTR6?=
 =?utf-8?B?R1BicFUxSDdOb2FQL3BEWmVJM1VmMVBxVThMaUFKUHRCM29mVUU5NkRGR1gv?=
 =?utf-8?B?TDRzemlxeEJNU0NEVGJLanVoVmo3QWIvZWJDSERhbWZNOUdMOHRvamRIU1pH?=
 =?utf-8?B?VVVtT09IM3RBWmRUNmduL3JHVHBES1RyTHZUdjhaZDdSbEthZE9hYXlLcHdm?=
 =?utf-8?B?TmZYWS9jM0VkN2kzeFBsZGlkQnFTY2VtWkFUbVdzZTRteFlIZkFTMEhCQlU3?=
 =?utf-8?B?Smw4YjA0M2xpQVYybjQ3SkVlZGRWNXpzR1lDMkFFTkIveExHNXdCaG5qc2Mz?=
 =?utf-8?B?aE12cUNXVVNvaUVDaGtSbVFmdE5ROWFNZTkrMkFjTW0rcmdNZmZaY0xlb3hz?=
 =?utf-8?B?TGl6UFlXd2h3dmFEUHNRa2tHT1JaNkhFdDUxZ3RtZkdtalMxS25sT0F4NlB2?=
 =?utf-8?B?ajZacXZOdzJMd1ZPdWR3cExYYTJlL3FtbzBIVHNQcnhPcmR2ellWRGRmdEc5?=
 =?utf-8?B?U2lqTXo3a1lhemFKRXFpQXBSaWdnTTFuZlFnSEUzemFpb21MN0IyUDd4cGNq?=
 =?utf-8?B?bTdIalNsTTB6SnNycW9yb1dRNmRLSVdsemdUNXBEcytyRUhFby9TUHB1d1Vr?=
 =?utf-8?B?VHJXVHNBQUdTYkREOXRmVytySmJmbXlQYkhrbFZOR2RRVGdjbm9yQTg3MnpU?=
 =?utf-8?B?cy9DNS9iYmlCcWp4eTRwdVZYdGlZOTBNUml4L2dwWEF3aXZNb0VKZnAwVjdH?=
 =?utf-8?B?cW5DRlY4eUthNDhFTVFDNVUzdTdwN1BmUjlyOVUwL3M3SnJLVGR6a3M2eXU1?=
 =?utf-8?B?bXI0QU5nWENEeXpiSyttQ0dod3ZrMzBZbzhZQXFnQ0VWYmFUYW5XaC85WEdk?=
 =?utf-8?B?ZGhFdlJrLzNkQWt5ZXNhcUlwTDNSbVpoK0VLd3JLaWhvWEthNmR2SmlrMFFK?=
 =?utf-8?B?WmkvU2JQK3hNWmJLbWw1dWlocmtLcklLTHhzcENBSzBQVlBVK2g1SVlYRjU5?=
 =?utf-8?B?YVlhTTdDYS9ZZWk3K3EzeTUrK2hVTWsxNzA3SnVSemtZbERYRHRqc0xIM3pM?=
 =?utf-8?B?YlhKSE52WFUvVm9FdXlYdGFOMldwRys1ckd0TVdtRFp2bnIxV0xZdzRZR1Ns?=
 =?utf-8?B?UXppZ3JnQ1ZoY1dSNm1ZWklQMDVvb0V3V3hYTUk2ZUpRWkNaWFY3OTlQV2dY?=
 =?utf-8?B?QS84R0pWcEgyKzZzbDltRHdnK2IxZHBPdUo1WGtGeEdtR29KdTJnYlhYTXdX?=
 =?utf-8?B?VXFNSXJRcWJtWEE2dThDVmZCWXNrY1c3N3hkRlFJQlFySFppRE5yYmJKRi9z?=
 =?utf-8?B?elErbkpOeG1NVXIwaWMzR05zSWJLOE05STlJL3BvZ01reXhyNXV4TkVCMWVu?=
 =?utf-8?B?aS9lODJUcjRDZlpEVGRCVklTWDNuSjAveUQwbjFzK0JMYVluanQ3K3Rwckxp?=
 =?utf-8?B?Q3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cc26b9b1-65de-4dc0-3c91-08dc595fd7c1
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2024 13:12:15.7293 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dWdf/wsJX8HpqkXn4a6w5sdVKeretFqRN2ZNl32pwR9s8e+6TXNT0QT462g05+DDX2d3dA6svhoMYHjpMG4R0ahphVZDAFnAnRz8hITZQaU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6650
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712755452; x=1744291452;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YzMh00NO2mTRF/V4XNsm5kJ+kg7c3ohhd9Tby9zL4WA=;
 b=WvLRDi9oVhs2tv9vgrxG3VQ8rW5FwobneWNZifuMv0JOPXpm+zKujFr9
 UM4dHwJyHA6vlIFUq6sTa+T1Z8616is8E0McJyempXWhWScU/+Od7Z4Ia
 Z3Rs52ETXNKbp/oDvkdPFc7jyr97XcwX00mXxrwjAsmCnlYyv4wo16bOM
 b6QM0WfsLsIwuulLlV4yGc6T/+q5Cgzr9OWd9wNVLIqXoO42i+93PsF97
 o35hQbzycfnzXrgQBnwgA+zsNx03TBy7wyp3GGpOQfEf1Q63d4wtsp5S6
 LDbukk7j0hITBIeXf67yGYQiRmjpzH23sshxYr2LXJr6tfK1QOtU5REjq
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WvLRDi9o
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 7/9] libeth: add Rx buffer
 management
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>, Ilias
 Apalodimas <ilias.apalodimas@linaro.org>, Yunsheng Lin <linyunsheng@huawei.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Jakub Kicinski <kuba@kernel.org>, Christoph Lameter <cl@linux.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Vlastimil Babka <vbabka@suse.cz>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/10/24 15:01, Alexander Lobakin wrote:
> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Date: Wed, 10 Apr 2024 15:01:32 +0200
> 
>> On 4/10/24 13:49, Alexander Lobakin wrote:
>>> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>> Date: Tue, 9 Apr 2024 12:58:33 +0200
>>>
>>>> On 4/8/24 11:09, Alexander Lobakin wrote:
>>>>> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>>>> Date: Fri, 5 Apr 2024 12:32:55 +0200
>>>>>
>>>>>> On 4/4/24 17:44, Alexander Lobakin wrote:
>>>>>>> Add a couple intuitive helpers to hide Rx buffer implementation
>>>>>>> details
>>>>>
>>>>> [...]
>>>>>
>>>>>>> +struct libeth_fqe {
>>>>>>> +    struct page        *page;
>>>>>>> +    u32            offset;
>>>>>>> +    u32            truesize;
>>>>>>> +} __aligned_largest;
>>>>>>> +
>>>>>>> +/**
>>>>>>> + * struct libeth_fq - structure representing a buffer queue
>>>>>>> + * @fp: hotpath part of the structure
>>>>>>> + * @pp: &page_pool for buffer management
>>>>>>> + * @fqes: array of Rx buffers
>>>>>>> + * @truesize: size to allocate per buffer, w/overhead
>>>>>>> + * @count: number of descriptors/buffers the queue has
>>>>>>> + * @buf_len: HW-writeable length per each buffer
>>>>>>> + * @nid: ID of the closest NUMA node with memory
>>>>>>> + */
>>>>>>> +struct libeth_fq {
>>>>>>> +    struct_group_tagged(libeth_fq_fp, fp,
>>>>>>> +        struct page_pool    *pp;
>>>>>>> +        struct libeth_fqe    *fqes;
>>>>>>> +
>>>>>>> +        u32            truesize;
>>>>>>> +        u32            count;
>>>>>>> +    );
>>>>>>> +
>>>>>>> +    /* Cold fields */
>>>>>>> +    u32            buf_len;
>>>>>>> +    int            nid;
>>>>>>> +};
>>>>>>
>>>>>> [...]
>>>>>>
>>>>>> Could you please unpack the meaning of `fq` and `fqe` acronyms here?
>>>>>
>>>>> Rx:
>>>>>
>>>>> RQ -- receive queue, on which you get Rx DMA complete descriptors
>>>>> FQ -- fill queue, the one you fill with free buffers
>>>>>      FQE -- fill queue element, i.e. smth like "iavf_rx_buffer" or
>>>>> whatever
>>>>>
>>>>> Tx:
>>>>>
>>>>> SQ -- send queue, the one you fill with buffers to transmit
>>>>>      SQE -- send queue element, i.e. "iavf_tx_buffer"
>>>>> CQ -- completion queue, on which you get Tx DMA complete descriptors
>>>>>
>>>>> XDPSQ, XSkRQ etc. -- same as above, but for XDP / XSk
>>>>>
>>>>> I know that rxq, txq, bufq, complq is more common since it's been used
>>>>> for years, but I like these "new" ones more :>
>>>>>
>>>>
>>>> Thank you, that sounds right. If you happen to sent v10, a bit of code
>>>> comment with this info would be useful ;)
>>>
>>> The current kdoc in front of each struct and function declaration is not
>>> enough? :D
>>>
>>> Thanks,
>>> Olek
>>
>> I've asked my initial question just after reading it thrice, without
>> your reply `FQE` was as meaningful as `ABC`
> 
> In the commit:
> 
> + * struct libeth_fqe - structure representing an Rx buffer
> 
> :z
> 
> or you want me to expand FQ, FQE etc. abbrevs in the kdoc?

yes, please very much!

could be as an additional comment at the top of the file too,
with that you could reuse the naming convention later in the file

> 
> Thanks,
> Olek

