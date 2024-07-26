Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C07993D41F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2024 15:23:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 85C8860634;
	Fri, 26 Jul 2024 13:23:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H_nRBGEJkFm9; Fri, 26 Jul 2024 13:23:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 84CD760AF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722000189;
	bh=fwBatQ9uFznU2S+9nQunkJCTHXTGwVWTaXS1kiYmncs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=S2cMDdee4/L1KASjblZKxNaOX3UTslw1clT+ed+if+Ega1u6yeE9cwxQCKzPdAtdJ
	 hab6VDnfS69Pc3v8hJNPWuO511nEPQE8P8ZQ5Pt1ExVmh0rM+tkLD8vd0GpEgXeg9C
	 Eo8O2hOHJQsUU6gHZKj5efNPYZd2HISpu07NOO9RfYSLNUzdDvzuLB4540yxxuiZ1k
	 ZH1As6WEA9xqdG19DYdU8jGYWRq974nBV3AAqX0flP+6aHe4vfyg4cfOSmHIQcARg2
	 om1OaieLF0o0GvGQn3FTB4ORZL9DoBTKTttpTejbHszLWK+pXPSSeIsEAlhgFFsTJC
	 6xezZZJbkIBjA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 84CD760AF9;
	Fri, 26 Jul 2024 13:23:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B30C91BF344
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 13:23:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8167F40BBF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 13:23:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mMccDoFp_hze for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jul 2024 13:23:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9C8CF40962
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C8CF40962
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9C8CF40962
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 13:23:05 +0000 (UTC)
X-CSE-ConnectionGUID: f6mKwIL4R9q2mA3ItrPTCQ==
X-CSE-MsgGUID: 5UtZaHApTrOaVflfrbY/VA==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="19591336"
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="19591336"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2024 06:23:01 -0700
X-CSE-ConnectionGUID: GZl2f/fxSuCV2LgCc+H0vQ==
X-CSE-MsgGUID: 4EGzcs1eSMOugZ6JTjdK/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="53284858"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Jul 2024 06:23:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 26 Jul 2024 06:23:01 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 26 Jul 2024 06:23:00 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 26 Jul 2024 06:23:00 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 26 Jul 2024 06:23:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XXySfUCiZkzW25F5i91iHDhDhDfhyzkcrxBFpdsB5fg0gmfO881Gb/Nxw4ksuZysV6co+97opyh+cQWKeLYFz5+iO7/xc/Lu72HQl0KsJmKm8J9RlTfEPlNRl/0GkglWf7l+iC/ljPDXq3D0Cac9IrZ2AV5s6GghUcfgaJPuMwjWGUnD7aecDSQqPEOW0MqU1IifAOO4XBbjI+VMfcz/SCJdZ+PTO0+3NuBeMZWGeeYzyjK2XaWm4sesz4X/LT8bJ7j3ICur7OD7QFsBKXK3w/C9jqy+dSyTz3bPbeFS8VBx0MHjECHTWcDUE6sKpBCUP/EIm+Gi+X9E/ZYnug39qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fwBatQ9uFznU2S+9nQunkJCTHXTGwVWTaXS1kiYmncs=;
 b=qpeqqJA2pDQ+VfZnceVcozSv1QnFS5fobmMA9medNHVohWBjcIq7CJuJZxgAqlOZwfgHU49D1XuAJEjnj16sQxYKYZZvEH9hZHyBXXEfh2npYBcQqO6hp53RI+ZEQv3EOOFawKxkwDgCSjJjMpWWCnYYBdpYSdZJefFrd08ZTMzbSP+uOeptPWJ9zXNoDPpTrB1Y0vbqp6RQJ5eeUM4xR6i07XBVMU5Q9oBmp43sTXXFa7L8YN7UEShestO0hMqAkntX0WiJsJmuRB4V5spkyeUS9O+6hTWggAEN+qjNE8qo9IXuJGRDBsW6FVGoWH2gQY2l/7ENTzR/58LMSSH30Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by IA1PR11MB7917.namprd11.prod.outlook.com (2603:10b6:208:3fe::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.29; Fri, 26 Jul
 2024 13:22:52 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7784.020; Fri, 26 Jul 2024
 13:22:52 +0000
Message-ID: <d665834c-3989-4832-8f1c-bf127ce8a652@intel.com>
Date: Fri, 26 Jul 2024 15:22:47 +0200
User-Agent: Mozilla Thunderbird
To: Karol Kolacinski <karol.kolacinski@intel.com>
References: <20240725093932.54856-6-karol.kolacinski@intel.com>
 <20240725093932.54856-8-karol.kolacinski@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240725093932.54856-8-karol.kolacinski@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU7P250CA0009.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:10:54f::13) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|IA1PR11MB7917:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ee85d7d-8039-4149-500b-08dcad760d65
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VnFXbEt5Y01CTDRNVzFUWEFobFJ3Q1hsMHVBbHZkWFRFUTZMdnVodWY2K2Ro?=
 =?utf-8?B?dWNPc2YzOGxBNkhYOEI3VnIxUzI4bzZWUGk2bE1NbjdJM3lRRDAxTEtsRHNj?=
 =?utf-8?B?YkYzUENocFlUb2ZsNHA0bkVoNVJXUGExMHVvbnErV2tEU3hwSDJyK2crUVdO?=
 =?utf-8?B?TkJDb252NGpYL0tZTms5NGZzUTcvOEJmbzIvaHpEK3ZWbE83YTBmTDFnSEdw?=
 =?utf-8?B?NXN4dDVqZzNBMkhjdnhJQ2xhaGZPN2hJRnZzT05ueDdjTkRrSnc2cVpxVVdL?=
 =?utf-8?B?YWM0Y3libWxuOGhpd1dyb0JRUzJ6Wkw0UW10K25yN3hEK1lUak5WaEV1TVFQ?=
 =?utf-8?B?RTdob2o2VW1rbVVCM25iTFFHMTZHN0plUUJKbm54ZE5lWXU5VmJ0NXBXdHMw?=
 =?utf-8?B?M2lnUk5mMjBjTTVvbW1YbFRsNFRGRWdYbkM0TWtqRTkxLzZxZkxMZ3ZpbHN6?=
 =?utf-8?B?VjVZdGF4ckZTcG1WOE5UUkliRlJScGFaTURsb3kraTM1c2t4SytUelFWam8r?=
 =?utf-8?B?RndWYU5TKy9Hc0QySS9YYW16Z0tSZWpKbDBza09hdHEzeXc2ckR1dGNtbFMz?=
 =?utf-8?B?VmtBUzhuUVk2YjFMMmg5OFhUZlY5NW9nSWIvZ2JtRVJobENrbGtnM3NHYmh0?=
 =?utf-8?B?aEZoNTROTUhyKzJKNFFjWkZ1Y1g3WkVPdWxQZU5zYkQ3Qit1a0xKQWNVaGh5?=
 =?utf-8?B?QzBZaVhrUDRUci9pdTFLbm1abkxXREk3Vk5iZEVad0loN29SWTdMTzBiWFBZ?=
 =?utf-8?B?VCtuYmp2b05hMDE2RG85RXVpVkU3d1h5aWpZTUZTbXpEWHB3QTFrZkxQMjlJ?=
 =?utf-8?B?Q0luS0U3UUZ6Vzd3L0duMjEyQ0VWYXdZQlJJZXFjMEVMUk83WG9Ianh6RWpj?=
 =?utf-8?B?dFVsb1kxaDVWL1Z4OEdxbUdnRjNuTURpMFB2OUlHWnAwcTB1MzM2WENjVytx?=
 =?utf-8?B?R0lqZmNJSHpQNFd5V3ZiNnM5aTZwMUVmbFZNeEtwYnJUM2xpRVBzS3Z4Q01u?=
 =?utf-8?B?Vml4d0ROTUhHV05hcHN1VzN4VnZIR0tqckFZb3NTbVplaFhMWDFEUDN4Z1Vw?=
 =?utf-8?B?NlUwOVAwMUU3Tno4Yzhlb2FIYldXTEJ0ZlVBU2lOYVZwdElnUEJsWGJWQ2hD?=
 =?utf-8?B?NlJjN0FWSEUwSWQ1b1hXR3c3R2pxaFlWcklrNmR4dzBzUHVsQ29Za2g0UlJS?=
 =?utf-8?B?cjlEMzdNWnhodDNUZXk3dGZxb0RpUnBoTlVSZjdUcUpjbVpnT1poVUJrVDJj?=
 =?utf-8?B?TE0rTllpUFZ6a1NZS0djSVQrYktWa0dSRU4wWXhrRjVPc3dGWU9TQmVKM1Jv?=
 =?utf-8?B?eVBOTzdoaW9uQWlQblRZM2JZMTh6QjhQbXgwc1VaWEErOUpLbTc3ZVdNa20x?=
 =?utf-8?B?Ky9qbVdXdHByallQdGs2cXNtMlpxTnlDbTlTWEltY0gvdUZpSW0yb0o3eHBT?=
 =?utf-8?B?dWg1RGJKa0tuRzNaM0wxdVRYdHVGMVpSQVhWNW9ZYzhQOVc0alNON3dvcEtq?=
 =?utf-8?B?eUpDT3I0Lzk5Z3FVYWx2S29SckNaclYrOTg2a0ozL0hEZ3haZTRESzFiWDVB?=
 =?utf-8?B?MDRReTNYakFWZEQyMjBGTGtMOStDVjZobmxoVXczS2JQU3h6K3FMdENHbS9j?=
 =?utf-8?B?ZTBVTkk3dGtMVTBUTWtuQnF5clZOS29TVG1IQWdHeGoxM2lZVEdKQ1IxY1BG?=
 =?utf-8?B?bUI1dGs2NE9PWENvYlpMSHNjaFZZQVZDMjRYS0ZMRTBYTHFFQXN3K2RRUzFU?=
 =?utf-8?B?OVVOY3ljaW14ekpCN01saTc2VzZlcUZWWXdIbnhxTjNia1hKMFlGY0JpbmNB?=
 =?utf-8?B?WjNsbE5DeHFGNER2ZjlrQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QzRMekIyZDZzMktjVnBPOGY4WjVDSTBGcnZwMjR1QjV3TVpnVnA3MFFwTmdx?=
 =?utf-8?B?MjJLTVpQL2ErcURkMktpQUlPMjAwM2Y4SFF1WS9iT3htdkovdUxWNVVqYVZV?=
 =?utf-8?B?OGg4aXBDcHRIK1VsY0JiLzhKcnk3N1h6QzdjZUNFWGdOcmVtclhvNE9DeXda?=
 =?utf-8?B?MEZqS1EyV2V1QVlCRmJoQ0dwMzNmR0c1TUYvVklwL0JEOGZzRmVIUXgrUlhS?=
 =?utf-8?B?L3JDMXhBTnhlTXFwaGh2djZaMXJhbDBKRnM0NUR4OWMyOVlwTUUwMlExSjRw?=
 =?utf-8?B?V1EvaFhqYi94Z3YxR3Qwekl6eWdmNVZNb3BTRjN0Y1lNM29SQ05YV1hFK3d2?=
 =?utf-8?B?SnNqQXlrRldhb3lrWXBQRUZaNFRBSzZOTmk2NmxhaEJXckV2SUJYekViaVJD?=
 =?utf-8?B?aXpCTS9MZkFyQlZvYmpGRktocnpvRFJGeXJTa3ozVWJqM01NZmNLaXpvaENv?=
 =?utf-8?B?QWVWUnlPVkpnbEtHV09GOStBZGszQkhSWGRHLzhQNGJ0eExXSUlqMGZ5aVJ2?=
 =?utf-8?B?dnJCc1hVODNLTEhXcTBuSW4vUW95MnMyNStwUkxqZlNTekJkUEk2VmRWYWpN?=
 =?utf-8?B?QUF1U0h2MWZOQ0lzdVhBeEJKdXI2K2JrQnhabjhxbmZjb2h4MkV5TWVVeWpr?=
 =?utf-8?B?V0JuQ3BRUlFzWHVueDB2eVUwd0NubDFLdkhaYXdkNHJZUW1PanVNRWZISHJK?=
 =?utf-8?B?UXMwWjFwRnZCUXdrV2lKWkJHOXQwSGpIK3VqQ2xXc0JPdkU0cUtsWW9VZ3k1?=
 =?utf-8?B?cG1pdFRHUzFVa29VOStiOXVKV0F2ckNjMnRpMFVpaFU4VlRmNXp5N2RuckJZ?=
 =?utf-8?B?d0xZVWhZM2g5Nk1INm8yZGhKaU9FMDA3M3o4VGFFdytnbkV4SmVjTWdvTG1M?=
 =?utf-8?B?cGQwTzViOWdud0c3ZXJKRTFPaEJ3dWFwNjJKUFE2MUIvUUtuSDU0WVIrZVUy?=
 =?utf-8?B?ejBwTnZqRjY3SUd2cDV3SnR4RVVaQno2ZlQ4OUtUZm1OOVFuUGtuRFlQMkdT?=
 =?utf-8?B?aUUxMWJ4dEViSE1JVnlxR01qVzR1UHVHOUZ2c2tkTnNPVnZtTkpsV29qRGZ4?=
 =?utf-8?B?Rk9ndFB2UWpHU3VlNGxodEsrc0F0eHB5ekdVL1Q4YjA3VHNGTThuM1ZNdElZ?=
 =?utf-8?B?Skx1SzRwbDhvRnhSYXB0dVQ1TzF4MFJJSDVlaFJCeG5RdGlyUldUTzhTVmxW?=
 =?utf-8?B?YTN0MC9jRCtRYWI5bzkzT21kRnZQWnZGSFhleTBNZW9BSTVUNU9oM2ExOEhh?=
 =?utf-8?B?Wjd4N1AwYXJoWkpSUk5yNnFRc1VINERuYkswMEZEaXh2dTF4SmxwaWZVQXhk?=
 =?utf-8?B?c1o3MjcxenNmVnFOSmdPRmlsRDFYMVVsYVFPQ0JQemUwZ3ZFRWd6S1dLQmJx?=
 =?utf-8?B?MklwbjhNakpDbkw4VGRUK25YbmhlOHlFS0pza216VHNQN0pIdjlSMzU2N2kv?=
 =?utf-8?B?MWdxV2hSM2ZKMHJJZEdLYU4xdko2dTFtNElLRld0dDRPVEQ2a0FrU0p1ZjdV?=
 =?utf-8?B?UE9PUmViUi8wSFJnQkNEMG9KRDZCK2NETGg1S2toZVdEMkZjOHRUaGNhaE1L?=
 =?utf-8?B?RjB4djBxbXlmNm95Sk5STStjb25JVUpNOFltVlVubXhlVmZZTjVaYTA3NU1p?=
 =?utf-8?B?Rjd1c1BDaGg0S2VZOE1uczFHcVZyYnRmWjNvZEtnN1UwY29qTEhaZ0s1RXVT?=
 =?utf-8?B?V0pmRm84YzQ4cWpmU1hlb0RtOGt2UFB5c2gybzJlbHpOUUtTa083M3YyYjhh?=
 =?utf-8?B?UkF3eXRQelFqQkxrQmlUQTZ4ODllajJDRjI3QmU4LzV6R3RDSW5SYUduOEJq?=
 =?utf-8?B?MXoxenV3OXpRcWFXWDRuSVhCMEZwQ2U5M2JNYnM1ZGxpYkNKRXVLZDRRQmdY?=
 =?utf-8?B?K2M5NkQzNWJMV25vNlpCSlBtWnVpZUZjeWtNZTNOL3N3K25KNDFTYlBlVG5D?=
 =?utf-8?B?VmxUekZFT1dwRkVYZ1dhNWRYYUVwdURjY1lmZGhuZ29mK2VId1NyUk9XLzJ2?=
 =?utf-8?B?NmM2dW85ZFgweERTKzNOVjg1Nm5NL2pFTnEwYjR1Qmd3TUtqVzVITFBZZ0ht?=
 =?utf-8?B?b1FFa1E2NDBSNVhadW5WTzY2WnlqT2VwRE5td0tWTW0wUXV3L2Y4QkdXYWVF?=
 =?utf-8?B?eFMzTlpic2dCYTRkRThFV1FMSjJQL1Yxei9iU0lvcEd1K1BJS0NWUEV5TVJG?=
 =?utf-8?B?RkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ee85d7d-8039-4149-500b-08dcad760d65
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2024 13:22:52.4159 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KfErtfYTvknaIqVO04goSRZtzge8eEPQfGRyHv7x0Fa1x4V+dQfWCYOw24lv9OvC660EZ0um+YD19zTlgTq0Xx6pZJV4bh1pY3hplJACoxU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7917
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722000185; x=1753536185;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mQx3p5LHaC4N41EkX42x7gLDmcmRP7HcgO2kT8zztdc=;
 b=DC+Uul4tVnw0wnAHYoGu4bZ2P9o0sf67cpW4mG0fJ4tzXXa+S7hTe550
 lzvetOm1BuzjkYne+leQc0MxzmNq8Gbq4oiEdsvcF7bHHfsbI/x5zvrXs
 Nfib4EbCaczbEuetotTOAZwa4oTP3RSaQ9/D4SCwLim3MLje66w2QWeCk
 Su+lu04Bhtc1F8YLnrOYEMHouLUxEB+Ni75Y5lIHfetmy+9JxTo92J2oQ
 dege69+zmCWGVDtqAZK34iKVb/dzsVp1aUSj2qmWq/1W2CAgFDtZmSWgQ
 OjYiEIMjCEYX1TlT6AU/o96Qjir0dyZv8VrFgdwNopAXsSMoACYgA/0km
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DC+Uul4t
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-next 2/4] ice: Process TSYN IRQ
 in a separate function
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karol Kolacinski <karol.kolacinski@intel.com>
Date: Thu, 25 Jul 2024 11:34:49 +0200

> Simplify TSYN IRQ processing by moving it to a separate function and
> having appropriate behavior per PHY model, instead of multiple
> conditions not related to HW, but to specific timestamping modes.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

[...]

> +/**
> + * ice_ptp_ts_irq - Process the PTP Tx timestamps in IRQ context
> + * @pf: Board private structure
> + *
> + * Returns: IRQ_WAKE_THREAD if Tx timestamp read has to be handled in the bottom

In the previous commit, you used 'Return:', here you have 'Returns:'.
Perhaps you may want to keep the style consistent :)

> + * half of the interrupt and IRQ_HANDLED otherwise.
> + */
> +irqreturn_t ice_ptp_ts_irq(struct ice_pf *pf)
> +{
> +	struct ice_hw *hw = &pf->hw;
> +
> +	switch (hw->ptp.phy_model) {
> +	case ICE_PHY_E810:
> +		/* E810 capable of low latency timestamping with interrupt can
> +		 * request a single timestamp in the top half and wait for
> +		 * a second LL TS interrupt from the FW when it's ready.
> +		 */
> +		if (hw->dev_caps.ts_dev_info.ts_ll_int_read) {
> +			struct ice_ptp_tx *tx = &pf->ptp.port.tx;
> +			unsigned long flags;
> +			u8 idx;
> +
> +			if (!ice_pf_state_is_nominal(pf))
> +				return IRQ_HANDLED;
> +
> +			spin_lock_irqsave(&tx->lock, flags);

It's top half, right? If so, you don't need _irqsave versions, just
spin_lock/unlock().
_irqsave/restore are only to be used in either BH or process context to
temporarily disable interrupts to avoid concurrent access with TH (e.g.
this block).

> +			idx = find_next_bit_wrap(tx->in_use, tx->len,
> +						 tx->last_ll_ts_idx_read + 1);
> +			if (idx != tx->len)
> +				ice_ptp_req_tx_single_tstamp(tx, idx);
> +			spin_unlock_irqrestore(&tx->lock, flags);
> +
> +			return IRQ_HANDLED;
> +		}
> +		fallthrough; /* non-LL_TS E810 */
> +	case ICE_PHY_E82X:
> +	case ICE_PHY_ETH56G:
> +		/* All other devices process timestamps in the bottom half due
> +		 * to sleeping or polling.
> +		 */
> +		if (!ice_ptp_pf_handles_tx_interrupt(pf))
> +			return IRQ_HANDLED;
> +
> +		set_bit(ICE_MISC_THREAD_TX_TSTAMP, pf->misc_thread);
> +		return IRQ_WAKE_THREAD;
> +	case ICE_PHY_E830:
> +		/* E830 can read timestamps in the top half using rd32() */
> +		if (ice_ptp_process_ts(pf) == ICE_TX_TSTAMP_WORK_PENDING) {
> +			/* Process outstanding Tx timestamps. If there
> +			 * is more work, re-arm the interrupt to trigger again.
> +			 */
> +			wr32(hw, PFINT_OICR, PFINT_OICR_TSYN_TX_M);
> +			ice_flush(hw);
> +		}
> +		return IRQ_HANDLED;
> +	default:
> +		return IRQ_HANDLED;
> +	}
> +}

[...]

Thanks,
Olek
