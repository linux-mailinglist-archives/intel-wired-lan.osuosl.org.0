Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D01C89F162
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 13:52:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 883F960857;
	Wed, 10 Apr 2024 11:52:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GL3WjN_bYxeo; Wed, 10 Apr 2024 11:52:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AFA466085C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712749935;
	bh=k+r19gjT4VSopkUupVpITvQhPNdZzdev5ftw8NtlKlk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RBo19Avm50PM1AbQyESpru9dOPqzYYN5PNgErZf5tHG2Cp+sp/k5QeZRDReC9An2U
	 RvBXsmp6i1/DVeXevXYtzhXnLwwHMvyLW/ZJWXCRx7Ev136pc2AtGESseJnI/3F0JA
	 FYje4O87E73m6SuseGzMpo4OI5vX5trvzll5iBRu2myHugLkBiicK4m+Oak6ZAgJxb
	 Gh0YeCs+zcjFYmA2jbCVcR+yqqHpgtS9mS3Hon95O8yWwnCUCDFDnRRwAwC8xgNQEZ
	 O2nkVU1H2RQ5S/hLOzo6a4C7vkzvGIKPoxV3/J6rok5fv9vzaNwob1D6/bUjwFiSeF
	 D5iZ+jp/rajbA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AFA466085C;
	Wed, 10 Apr 2024 11:52:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E976B1BF5AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 11:52:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D51C88204E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 11:52:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G8Dofap2-udL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 11:52:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0E7708204B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E7708204B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0E7708204B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 11:52:12 +0000 (UTC)
X-CSE-ConnectionGUID: flrgTh5vSiq3YtlxzxQP7w==
X-CSE-MsgGUID: XmOsxEdcSDSe+kEQKkcazw==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="18671140"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="18671140"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 04:52:12 -0700
X-CSE-ConnectionGUID: EXZ9GqWaSGWUq5/g3CTkjw==
X-CSE-MsgGUID: 305zymBTRta3H59AdHuiKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="20598591"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Apr 2024 04:52:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Apr 2024 04:52:11 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Apr 2024 04:52:11 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Apr 2024 04:52:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F+eLVI5cdRrfobOc6e+QtH8OZnmSuLNSNpuR86URiIOOnguyoKSPravz+PD9VQCYYfnoNzjUospPnLKJRw5U75zH68dbGHuXnNTDNW+c0I80ezhCPAspAkck+vdZ0tLB+JBsvtiaXIsTfMLy1T5oSO7qM2uK5/6kvKDy06lqO3k7qr8+JSN8nGoMID2iE776HF4BAc7WZKWUgF/NENpzqNJ0h05GTw1AV3A7XEeg0ZUTlam1Njf2wMzYoa/LSOQooiO+RXk+VX8qL4sXSONeXzWYOGFxG16FIX+Iyug1I1VssduWU8Mzw7noR9IYKpZW2qyDRA7cgt/h3RR5etoWBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k+r19gjT4VSopkUupVpITvQhPNdZzdev5ftw8NtlKlk=;
 b=CnMqA682cdipJ6UAIBSTguqFkWotmJYmjVU/haIF5/bnsXo4BXImCoYoufJX1ALe937JL9frkMeDSlgUXtbJe5hn/rDO5CH3nwhXsVQwCifJe57oUQE0j8NchPPgveCARitlJG/zxfH4JYvHIK3DZyvu3o9oi6Y2jZjQS+StLBJ0tGiTXTYdeUXEEXlXLc7xYh9jQIuq8OOE9KntmRleqzz10pMbSYiVGVjAW6JeEECp24tjinOx8qJz1COnvKQ7b8vn9v1lp8xhMZJjnIrt35ZILiexX7a4arPT1jJV2csg8/dB8vgYiaFdh1awhM58sCHtPsj5PJOWD+QCT1fCXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Wed, 10 Apr
 2024 11:52:09 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9%6]) with mapi id 15.20.7452.019; Wed, 10 Apr 2024
 11:52:09 +0000
Message-ID: <36a067fa-75c0-4e7d-b704-229deea2d440@intel.com>
Date: Wed, 10 Apr 2024 13:49:59 +0200
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20240404154402.3581254-1-aleksander.lobakin@intel.com>
 <20240404154402.3581254-8-aleksander.lobakin@intel.com>
 <45eb2bf1-e7b0-4045-82b3-93b9f81b7988@intel.com>
 <bebf1a1a-e4ec-4ec0-9d01-57a51bcf14ca@intel.com>
 <9d389192-63c4-44e8-b863-6323b45aec0f@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <9d389192-63c4-44e8-b863-6323b45aec0f@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: WA0P291CA0002.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::29) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH7PR11MB6053:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rungzplUbALL4lnEgvXglGGccS3jf68Ic9+mMF2TX7YtogWTrNlElATssFTKtDWykPAQAL0ellq0c6lgtdNirsur2ViDUp7IQ0sc5yK+OQSmn74BnIG3+DllgHKxwkJi7VzaUr3Tr2zPo/i04yjtLWvN0pNJDM42qQxrzG24qgfzX1/UCoeqFGeo/bvB/Nh4ndVvteWS6Sd0xqYdfe65/fjPvoE/P7OcrjNdaLhTbZhMitLojaX2kFp7sFsUAOXYiYhyIiy8JkjZ1cF70eVAjCnEXHWRbqQ2cmLSD15Zu6hMqpwQAdcRsCUVcYxY5UogHgfETIshAXtN5vJQm7xvAD5qTi2S4REHYCp44UDJ62mtQwdHNbjqGnAMzO4zxf94xmWu8zbz2UGWFi/8yMcaKC6FMxbjhCkh7oUwXvSXznTXdo+EaH/Wg27vop1bhrqQx7v/iAwErI+JvVyXK5V61pXJybh78TjfBLgfdVDRRzJUj0CsLe2Lp1i4RSNfW4iqtzhZMwCm+zTsDOV/coUgiD3mcoAKrd5e3j5HXfbHtNuPnkjx3RpRqbyXWQEoBzKzijc4rIqAfj7NgpZBaXLGQDXo6vM2XYvBd3LEMpVf+n9ihbWzT+keh1H8PeA0CCaGiLBJc6ItwJIKM9vau30XxadmubVFzSb1FHyBQe5389I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(7416005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nm9KTkNCNlduZ1F0MUJUb01LK2tjcTNPMDdUTGxzUW81Umd2bUF4Zy8zaW5v?=
 =?utf-8?B?UWFLaUc0QkNjQlBoZldwUGlPL2k3RThhZ01YZGNGaWpxZDFOUW13K0JTYW1C?=
 =?utf-8?B?UmUvT1JVWElEblpybmp2bldYR2ZjWktGQ29XQjRKUnBTT21RNzh4NjBEZllv?=
 =?utf-8?B?STliZmRYZ2xmQXMvU3I2eXNQU0ZQVEQ2S2VHelQ0YUU4U0dYSmN1SVk2T3RD?=
 =?utf-8?B?ZjFWUVVCNUVONTFUbDNqNFdTNEs1RDh4V1RGKzVHQ2tSYkRpaWhhaFZPMGlZ?=
 =?utf-8?B?RW1VWW5yRTN6VHRNelVDUHp6M0swbEVJMHJENFl5V2lGdXd2T1VVbHlzaGQr?=
 =?utf-8?B?eXFaM0Urd21rOXR4ZGcrNnJGMlNZNTFzQ1A1ZE1IYTRhL1VFM0dHZVdoVmx3?=
 =?utf-8?B?YlFSNkxkck5jMEd3dk1jMHpraVR2Q1VQZmxWT1NBL2czb1lyV0hscXJnam03?=
 =?utf-8?B?dWNtclp4d1YwM1FiaU9aZk5oMVY4ajV1NlVZRUIwWEo0aUcvaUVDTXlFQTJN?=
 =?utf-8?B?WUpxVEt4QXhwL1BQZ25STFU4Qzc5RVNCWWhQNUlaNG5qU2pnQzdPajZIcWVG?=
 =?utf-8?B?MWxyUDVSNWt5MFg2VXg3MFFKZUdrMWpsc1BBZUlieTBVQ0ZwZXJoK1NRd3ZI?=
 =?utf-8?B?Rm1wcHVVNTIrK0hEWURWRjZoeE52TldJOWdtWGVLcUhPKzV2ZWxRTGFiRDBv?=
 =?utf-8?B?SUk5cjRoQ0ZmOGlRZUM0Mmo3Sm1VdHhOcy94OUlTRlp6VTM2UERuOE8zZTRT?=
 =?utf-8?B?T2pHWS9STTFXRGVZVnppZ241K2FwZWtIU0RKRlQwZUdCMVkwZzFMNG1kVThi?=
 =?utf-8?B?Ky91eEd5eEZETlBWU0Vzd1RvNkh6US9yTytkMWluYTQzc3JCUUt6Y3FOSzAz?=
 =?utf-8?B?TFFBNCtEeUVFU1JNcXVnTHpBWWJva2FaRHZDbkxWSnFTK01ySEJEVkhZYTFQ?=
 =?utf-8?B?UzlLWWxTN3AwWERlYW9LZStMTzU3NDBEZWtWOVZiNGE4VTlVeThtQWVIeXR0?=
 =?utf-8?B?Mng0L1o4UGl0SEdMMVRNbEtOR3BTUDJmK29DN1dSeVBEak9oRkpvTVp5eCtV?=
 =?utf-8?B?S2pXdUdQVTIrbTRpYkNMc3FlK3VFVGdQczRJTkgvSW1CQlo1NlNxcEpTUVEr?=
 =?utf-8?B?Wjl4WWliZGJlNld4UmR6MzJQZitqWE1hZW9kMll6cHFyYTIxRWMwWGJTS2Z3?=
 =?utf-8?B?SE82Q3NaSHlIaE43bThjR1NBT1ZFd3I1S1gvK2FXK0dSaHdhdzFmZTRkdThu?=
 =?utf-8?B?d2RXM3FHbG9hQnA5a2QxUDBENUpIaENKdWsweE4xb0RJTDVDLzJkbkVJOGRh?=
 =?utf-8?B?MUwzODlXcmtZaWJTY1ovUFVJYUdhRG5QTFMyTXhSTFFzdWEycVlRaXdBRFVo?=
 =?utf-8?B?VDN1MGhiK211V01QV28xUzZwd05tcE95YTdwZit6YmFObnJJM0FYZmZ1Vzlj?=
 =?utf-8?B?Vmh5WUxsMmhRMkszazdLV3h1aEM1NERVNWhyMzEwelZUVldVRld3Z1UzT0VO?=
 =?utf-8?B?K0xwSHduNmkwWmUvb1d4cTRUcnRqazBKRDE4T0JHTzhQMlo4V1RLaTA4cEd4?=
 =?utf-8?B?WlhmVFlCS3F3MEtKNlJUYXM4RzVTaVBpbzg4TFByTlBWd0MxWmgva2RuU3dX?=
 =?utf-8?B?YzdSVXVaa3Jwa0hSNXlJZUZMcE9HN24zQXlZU1c5RDNSR3JiMExYTkh1TDJi?=
 =?utf-8?B?RFBoeVZ1VFVldnNLTGdhanJqd2thM1Mrd0E5bzE3TXdFZ0JZSU8reXdSc2Yz?=
 =?utf-8?B?Mld0UHovZk10cnh3YjRDVFdKSmV5K0V5dzI1U1dlWnVrVnM0YWpjelY3eE9C?=
 =?utf-8?B?dkRacFZoQXJoRkt1VjU3U1dkc1Q0UFZRd1pHN1RXRWZwditETXZkRVhkTzFY?=
 =?utf-8?B?eGY3bkxNSFcvZWIwS1hZRy90OW03MEpEYlVWbStNeGM3cmZoSU5na280YjBM?=
 =?utf-8?B?TitXTXh0Qi9TcS9paUpnV0ZmbVY3SDFJWmIyMnMzQjlIT2JpMU40bjVKUTlJ?=
 =?utf-8?B?MWlnWTUyalJQKzNCT0ZQUVVOT3oxZXZseGJZVnJqdVVVQmdzaFZOWHI3V0xK?=
 =?utf-8?B?K2ZFZ0J6NVd0c2ZJaWwwaDNrTGwwL3lidXROVFFualB6bHhERWFYQjBSOVZt?=
 =?utf-8?B?UkdIZnRNSUxUTUVkWHZPeWZIYk1YV2V6SUN3VDcvMXBZRWlOY3lPcEVtOHBo?=
 =?utf-8?B?TlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a57efcf5-8fd8-4a58-fff3-08dc5954a69e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2024 11:52:08.9741 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XsfnjREgLxg1/7mkF+xBS6WgKDUR3OynZleY7Anwfh3WWpSwIQ0tScaTj+dVcxLkCoJhVjvCu6JcLSbYm5x3odS9vD4oVaTgJTJ60kGyUbU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6053
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712749933; x=1744285933;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HsALThLavE0te140mafu8Wl27SAhK9ZrFGKViC/d6UE=;
 b=AghSyAilQvudBxxp5V/UIdgE/ea59+4peBFaUz9fME4zAHcwBVhOACth
 SEgGSbKjkrSqOAz3MxgWP9xvTF0nvxV9YjrGeGbkawyyqL7KigWVadEMk
 gSAsnnhW/U/ABP4uJb0TkQwizn6eGCmjxsBiXB0u4TQhB+XfseiXg07gx
 b/jM5JwerzuLtCUQo4RGGV86smh1SzJfThYAP4ysymk0kLz35H9jTEdPx
 GYjvYR5VJWcq8uoYGEJABr+sHvvM7hgKzIRWikewAZwcfRDYqBIUSF7gb
 uOYnx/ZD2vRn8OvsEWIg7k1lKvsjTDc25E7/WkIlbgY+pLmOnfoQunPIA
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AghSyAil
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

From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Tue, 9 Apr 2024 12:58:33 +0200

> On 4/8/24 11:09, Alexander Lobakin wrote:
>> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Date: Fri, 5 Apr 2024 12:32:55 +0200
>>
>>> On 4/4/24 17:44, Alexander Lobakin wrote:
>>>> Add a couple intuitive helpers to hide Rx buffer implementation details
>>
>> [...]
>>
>>>> +struct libeth_fqe {
>>>> +    struct page        *page;
>>>> +    u32            offset;
>>>> +    u32            truesize;
>>>> +} __aligned_largest;
>>>> +
>>>> +/**
>>>> + * struct libeth_fq - structure representing a buffer queue
>>>> + * @fp: hotpath part of the structure
>>>> + * @pp: &page_pool for buffer management
>>>> + * @fqes: array of Rx buffers
>>>> + * @truesize: size to allocate per buffer, w/overhead
>>>> + * @count: number of descriptors/buffers the queue has
>>>> + * @buf_len: HW-writeable length per each buffer
>>>> + * @nid: ID of the closest NUMA node with memory
>>>> + */
>>>> +struct libeth_fq {
>>>> +    struct_group_tagged(libeth_fq_fp, fp,
>>>> +        struct page_pool    *pp;
>>>> +        struct libeth_fqe    *fqes;
>>>> +
>>>> +        u32            truesize;
>>>> +        u32            count;
>>>> +    );
>>>> +
>>>> +    /* Cold fields */
>>>> +    u32            buf_len;
>>>> +    int            nid;
>>>> +};
>>>
>>> [...]
>>>
>>> Could you please unpack the meaning of `fq` and `fqe` acronyms here?
>>
>> Rx:
>>
>> RQ -- receive queue, on which you get Rx DMA complete descriptors
>> FQ -- fill queue, the one you fill with free buffers
>>    FQE -- fill queue element, i.e. smth like "iavf_rx_buffer" or whatever
>>
>> Tx:
>>
>> SQ -- send queue, the one you fill with buffers to transmit
>>    SQE -- send queue element, i.e. "iavf_tx_buffer"
>> CQ -- completion queue, on which you get Tx DMA complete descriptors
>>
>> XDPSQ, XSkRQ etc. -- same as above, but for XDP / XSk
>>
>> I know that rxq, txq, bufq, complq is more common since it's been used
>> for years, but I like these "new" ones more :>
>>
> 
> Thank you, that sounds right. If you happen to sent v10, a bit of code
> comment with this info would be useful ;)

The current kdoc in front of each struct and function declaration is not
enough? :D

Thanks,
Olek
