Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 699D474B5DA
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jul 2023 19:30:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 37A4361212;
	Fri,  7 Jul 2023 17:30:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 37A4361212
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688751020;
	bh=N/1QGmu9iO+VNGtbjOcHF6zFnXmJi6kZKrftUybiuYE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SdJDv7RJC99FXmB1irqYk0UinL1vhj53MvorLvXuyDwq5AAQS2cfRBloZX9RfeonX
	 cXzFk6XuYCBvf1kfdyTj1cOKoTIuTBvmn8n9Qvj75ELAW9fNP8rAVA1E/+CAgh/5Cs
	 P9nEitXhTnI5plabl5M2nsZxr1BKAPFTnvLrg9ItKgL4IH3ps6r463WwwDFSt17gPR
	 BJ4w9KdAbBm1MhrIh5jo2jIWZOUKrQCSCSBZP1nVJPxki/cpmzg6KZiOE+xSdRFRbs
	 QCi4imvj8GZmyhhoEgcojWNZC/wqm8T2Jl2D3mkTi5+UwO1lTPBZuEVILMlddyRmPK
	 3aDlTlqV/NlKA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0ayD8lJWata8; Fri,  7 Jul 2023 17:30:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4FE1611ED;
	Fri,  7 Jul 2023 17:30:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4FE1611ED
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E52DC1BF417
 for <intel-wired-lan@osuosl.org>; Fri,  7 Jul 2023 17:30:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BE3EB4012B
 for <intel-wired-lan@osuosl.org>; Fri,  7 Jul 2023 17:30:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE3EB4012B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9f2rGtVLCynW for <intel-wired-lan@osuosl.org>;
 Fri,  7 Jul 2023 17:30:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B9FDD40122
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B9FDD40122
 for <intel-wired-lan@osuosl.org>; Fri,  7 Jul 2023 17:30:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10764"; a="348736272"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="348736272"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2023 10:30:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10764"; a="833480277"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="833480277"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 07 Jul 2023 10:30:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 7 Jul 2023 10:30:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 7 Jul 2023 10:30:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 7 Jul 2023 10:30:10 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 7 Jul 2023 10:30:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HbseOakEp3IX0JWvdHlDMVFdcu7YmWhhVY7Wj/jad2kl3rd7dbriqxKI6G8PuuJyLELpsV1OrhMU9wRRZrbv5RRBv7EnzCdZH+ZcOnkQgVK1+Q95OmwbyyWnrXV1x2XmwtrMGikWvJl1p/Wl7nQtsZ+Ir+zvNDT4RfpeTvYaJM1ioQCUQ29711vYFIP5jg7PQGdyuzTqGg7H6wGfihFyj8F1gV0n1iUY14toQ+fbrZ57eOsozpHzr0nijNs5pES0F3lPUs4juLKEFYvNaYvd7ThzSYTbizPaWs4GFH2JB9bR38MQ07PQ+Jw+ve6j5LT8CnehnKWuuqbzTyflWJnVyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R/Auj5m/ouKW8ZaywULj32biOBJCxQE+AR0X0tkY7zg=;
 b=cWY9o9LdQSOUaGPnTN8rf+JM+4YvptE1rLsFSpvPwu4UWMGwflHN6Y4/ckh30OXk8mbGarYVRxoTlcJFuYfxQu1B4eFazsMCX0wiUHJ4A9HdSfVUU8ZhMxKXcpYxsOvENE7wtgtSbyeg7O9RhmfB4vI5TuIGyK4aopHpUTrwPZeGIpKVmsQbTVmpPoBjk0N4hOHo9ngOj+iA2pBxrcydxfrOaD9t9Y+cpEIe1Aa/76t5Ikv/62I4GmJNqv9+IyLda84ECqLVjGVL3hxbmdLQhV3DlhWRrsBQaKcE64RKzwg8+UFuqUXvLHwsVSiiHgJcIDUCe+lPfQ/kykJNdUogJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CY5PR11MB6536.namprd11.prod.outlook.com (2603:10b6:930:40::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.25; Fri, 7 Jul
 2023 17:30:06 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84%7]) with mapi id 15.20.6565.025; Fri, 7 Jul 2023
 17:30:05 +0000
Message-ID: <b6804af0-b19c-8cd9-edb1-470364db4c58@intel.com>
Date: Fri, 7 Jul 2023 10:30:03 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 <intel-wired-lan@osuosl.org>
References: <20230706150017.5065-1-muhammad.husaini.zulkifli@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230706150017.5065-1-muhammad.husaini.zulkifli@intel.com>
X-ClientProxiedBy: MW3PR05CA0015.namprd05.prod.outlook.com
 (2603:10b6:303:2b::20) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CY5PR11MB6536:EE_
X-MS-Office365-Filtering-Correlation-Id: b5480a1a-e914-47d4-c6d0-08db7f0fcdcc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: POY7W4/0GZN27Pk9ut05/9lrVHEqC3+B8xPO1JliYnYYLogyFa2xlnl98W1lb76upyDFichhX3jQ98xPTiY86wiUMgwnO+IH4dtSOtJawHh8VkceYdx+eoVJ8ObugckO80PGlo0u5kuFHiDlKYeV8MkeUSoK4YE4FcvI8IZmdh8E+c4GULM3dSZ0Qlz4TwOBrEgzzlBinajVeq6EyuWLdJ2bP2Qs4Pu2ih2bhaichHtXkAwpO93+tLPfnc8KMoz9AhiQxRcXyDjXArSgKQtCtQtIrKI91XrPGe5JipPYUcxJwRrX4KsI13+FB8JnONC8Ohag3tZrIR4cZoL2EESe0VB//5GQ6xlStNsrUi2Xq1oHinIBGrJW/uxizWLLRfiYnDvG+vH8AOT3nNwAhmnN9LLLbb5SWM4PzLjyEwo2wqrunPVmFZWwI8Gr7m3SXf14/YoGc+5jTK/ypV5nZOWQv+7FIeGaW08e6nELPyrSMj0dC6kldKvv39CHuNc/XthF0boS7ozkmjVOdzDXUAPmRkAvK9WNEE1SvhyaOssTRNrIJZ6jEkWVUBF2JNFsYQtVW8fFrAIdWG1Ny3KZiaZbxy/UpLvoNnrCjtdVnNQZNMQDztIuI2TFqFioHhQlt7CPFNsC19s1EGAoSu5SHeoUlw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(346002)(366004)(136003)(376002)(451199021)(6486002)(478600001)(82960400001)(5660300002)(8936002)(8676002)(36756003)(2906002)(31696002)(38100700002)(66556008)(66476007)(66946007)(4326008)(316002)(41300700001)(26005)(86362001)(6506007)(83380400001)(31686004)(186003)(53546011)(2616005)(6512007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MmRuNEpvN0cvY0FPT0hneWtEdCtBUFVhQ25lZDBLSUhtdkYyY3JrcHBuQlBW?=
 =?utf-8?B?MWs5VnEwTnJiWEczc2ZHNSs5cFo5RUNWbndaclUwNStaOTVJd0dkeGJhQkxk?=
 =?utf-8?B?WUFZL1lWM2dFTnE4MXVEUHdteld6RCtveUlmZTN0aEJWOXBYb2x4M2ZXdHpE?=
 =?utf-8?B?V0RNWis2YS9ubWJTV3l2Nm4weU0rNG9SNndBd1Bjb3JTZlhSYjdaajQrb2s5?=
 =?utf-8?B?VkNwSTZneE1sN1FRUnF6cVlWYWh4Rlc4dk1sWDBNTG9jaTFUeHJxZkxCdG5w?=
 =?utf-8?B?bk54QW1wQkIweGpINFh3MUFLakFYeDZ2amRTYkpIaGhCNjFxTkxmYUVvWENt?=
 =?utf-8?B?QTBhV2hBOThhNy92ZDNuN0ZzSHpwTjZrRXBqcDN5UWpXbDUwR1FiNzZzMlF4?=
 =?utf-8?B?ay85S1dFQS9iOTRwdm4xczNPaGZGNExmWEw3S2VXdEJpN0RTcW44enUrWW1N?=
 =?utf-8?B?K3pYRUpkMzNWc1FFQm1pOEhrZmNWTDFtaUt2Qzl1UkFxSGJpRHZaRm4xeHk5?=
 =?utf-8?B?dFBNdmtkRmxMQUhXL3hBb3ZSdy84UmdBbUhOVlJIL0FGWHg1WkZicm10QVI3?=
 =?utf-8?B?L0hLSHBDVmF2ZlNvTzNYRGZmdVRjSGRxNTN1cXlZN2IxbGZ2VkVScjI3NTdp?=
 =?utf-8?B?VkhkOWcrQWY4bEpvaFgrY1FaTm0wR2VaWWZaS3JNbmZzbE1pYlJxckh0NXdX?=
 =?utf-8?B?Z2FxdTZtSGJIWmhZL3BxVGJzVlhZK3hwK2ZqVXpYcnBPb0lUQXk4TE50cVhP?=
 =?utf-8?B?NmdBQmd5b0lYMi9IcFU4S0wvR3pRbzRKQmEvUjEwSTZkOTVBOUQ3WWJPcnY5?=
 =?utf-8?B?TGdRUlRXYkNYS01HQjBmQy84TUIvZFI3ZzlSM1hpTXNBMUVhY0F5MEM4NHov?=
 =?utf-8?B?MXVOVVlhYlZMckhBS3QzRE9sRy83VFRPeENFQ1R5QnIyVVF6dWhITDI5Q3pa?=
 =?utf-8?B?K1ZzaVNQWEUwZ2NCWVdqMnJJdkw2YXZseEtCc3FzZGtSa2swL1RCRklsT3pO?=
 =?utf-8?B?SlBVWmRMZ0MzZTE0ZnhNaXd0N3FEQkQ5RjlsSGRiUmdxUW1yclIwMUFvSjQ2?=
 =?utf-8?B?SXhFUFZKa0JOZXdsS1RKdTY5YVppVVR6L0NQc1NmM1pTQjcrT2M3RVpPclpm?=
 =?utf-8?B?LzA0SzhGYnh0bUhHbURCclZjQ1pKd1VmVFJHR1hmbk1IWWdCUVZpL0hoUGVu?=
 =?utf-8?B?V2M5T0Q0S1MxL1hGTitzbTVGelhaS1lDYlQyUUkydmNoMkN3R1l2bklnNTJq?=
 =?utf-8?B?YmZySU84MzRqUTJqVFFMdi9mcjdEMFpwM29PZGJFZmd2ZlhqeVZiMVVVdXZJ?=
 =?utf-8?B?Sjk5b0VFNTl3VGtzYkl1NGF3dWhIWWZBUVVOMzBmUFJsSTZOZWNWK3pjZTNz?=
 =?utf-8?B?RjlibElqR2hFVnV4VDFsb2pvVDlrWGtQOXBQV0NsNnp4QWlHMW5ZdEdGdDRv?=
 =?utf-8?B?b214S2x5bU1RV0xSbUk0TlF2OU53ZTZselRXR3lBcjFUNnRBQUl5YmxIMlR1?=
 =?utf-8?B?cWdJNStiam5xdStoVDF4U0E4Nlc5ZlM2ZDJLSDU1blZSR1REWlRaaVNnaEJ1?=
 =?utf-8?B?TDc1dFNaZDIwNUdkM1lhaDZVNHdseTlvODBmZ3NGRUc2K2tBZm1DaDZvNkRi?=
 =?utf-8?B?cUIvMityY0N2S3JjQ1RKUDVEdGcwMjZWV0gzWEdiREJJWTh3dlFBNThISnBD?=
 =?utf-8?B?L0lpTkFMb0l0QjBvTkUvRDVIV09xSkpSdjdOcitjMFFtRGNHOVVXNUNMQk02?=
 =?utf-8?B?OVZlbzBtR05ISE95cTErcStERVJMMVUrYlJrTmtOV0xLc3hBUXdmLzlTWWx6?=
 =?utf-8?B?RGNkZTdPKzhaOVlnUjR6Rm9nOHJXMm8xTkkxdHVCVWlGNUVCU3cxSUw0anVI?=
 =?utf-8?B?cUl6eFV1RkdmSndTd0kvWXNnZFhWYU90eEJZWFozQ2s1eTRmdTRyVlQ2UmRP?=
 =?utf-8?B?M212djJOUVdEODYvNE9QcWovdE5Mb25aUVFEK0UvWnd3MUg2WUFVeDR6OGZB?=
 =?utf-8?B?bVlFMVgrRlZuekhBRkE3OVRYMGgwaHMzbndrMlFHb0cyM01tb0huQUVCd3FE?=
 =?utf-8?B?MERXcEdmc1R4Snc3Wk5LRWRKZEhXWjg4OU1LWnNYVnV5MXYvUDBxWVdnT0x6?=
 =?utf-8?B?ZEY0WVpub1FSdjZ4R0FwU3czQTlueTZZVUZvUm5XL3dUTWxBVlE0TTlEeGps?=
 =?utf-8?B?MGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b5480a1a-e914-47d4-c6d0-08db7f0fcdcc
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2023 17:30:05.8738 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2ls/ajk38BZBQBMFj2zRgu2NaB6sMsT43vKGs6UPY1lxA2SXZtx45UDeeznWIFX1JVUyMOHNGAEOaohvQg9QVMkKeoKZDjwrJM3rVhnS8KQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6536
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688751012; x=1720287012;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qH9F4Yw06ijMWU9xHV08Y8w0KYENRfVHraXzEwIN4UU=;
 b=kf4cNFrn3cNR3j3W1ZEVcxxWECPnub4z0AzAizTlfOkQG2rGSVWxetNk
 kUFwElNtfm2APFR/9uIrf7ExBcMj5MPVRTyCJPLdUnC3PflTtf4np4iOS
 icatVTGRccknYAX5JsCFlNXSJjpEUNtFI0YutmuyQsJk+4wY6cKQXQdFZ
 9x8RaEDYuuI6w5dpnFbZslDh/GgPv5GJFLJ+UnWZyeyBhJ8GqOEmRhwAg
 1/h9X1TRxzC366jSiACEuuF9lNoR10qbo3no2M3jpWGpV+EH8Ec/oPBnZ
 yRv+Cit4oKRZEU65i1cKMqDOBodzLPt0p9+qZhv7DUmPoaZE9gN2P60AM
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kf4cNFrn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: Expose and modify
 tx-usecs coalesce setting
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/6/2023 8:00 AM, Muhammad Husaini Zulkifli wrote:
> When users attempt to obtain the coalesce setting using the
> ethtool command, current code always returns 0 for tx-usecs.
> This is because I225/6 always uses a queue pair setting, hence

Should there be a follow-on patch to remove 'IGC_FLAG_QUEUE_PAIRS' 
altogether then?

> tx_coalesce_usecs does not return a value during the
> igc_ethtool_get_coalesce() callback process. The pair queue
> condition checking in igc_ethtool_get_coalesce() is removed by
> this patch so that the user gets information of the value of tx-usecs.
> 
> Even if i225/6 is using queue pair setting, there is no harm in
> notifying the user of the tx-usecs. The implementation of the current
> code may have previously been a copy of the legacy code i210.
> 
> This patch also enables users to modify the tx-usecs parameter.
> The rx-usecs value will adhere to the same value as the set tx-usecs
> because the queue pair setting is enabled.

This seems like it should be a seperate patch.

> How to test:
> User can set or get the coalesce value using ethtool command.
> 
> Example command:
> Get: ethtool -c <interface>
> Set: ethtool -C <interface>
> 
> Previous output (using get command):
> 
> rx-usecs: 3
> rx-frames: n/a
> rx-usecs-irq: n/a
> rx-frames-irq: n/a
> 
> tx-usecs: 0
> tx-frames: n/a
> tx-usecs-irq: n/a
> tx-frames-irq: n/a
> 
> New output (using get command):
> 
> rx-usecs: 3
> rx-frames: n/a
> rx-usecs-irq: n/a
> rx-frames-irq: n/a
> 
> tx-usecs: 3
> tx-frames: n/a
> tx-usecs-irq: n/a
> tx-frames-irq: n/a
> 
> Previous output (using set command):
> 
> root@P12DYHUSAINI:~# ethtool -C enp170s0 tx-usecs 10
> netlink error: Invalid argument
> 
> New output (using set command):
> 
> root@P12DYHUSAINI:~# ethtool -C enp170s0 tx-usecs 10
> rx-usecs: 10
> rx-frames: n/a
> rx-usecs-irq: n/a
> rx-frames-irq: n/a
> 
> tx-usecs: 10
> tx-frames: n/a
> tx-usecs-irq: n/a
> tx-frames-irq: n/a
> 
> Fixes: 7df76bd19181 ("igc: Add 'igc_ethtool_' prefix to functions in igc_ethtool.c")

Please use the commit that introduced the functional problem, not one 
that had no functional change.

> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 46 +++++++++++++++-----
>   1 file changed, 34 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index 93bce729be76..1cf7131a82c5 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -880,12 +880,10 @@ static int igc_ethtool_get_coalesce(struct net_device *netdev,
>   	else
>   		ec->rx_coalesce_usecs = adapter->rx_itr_setting >> 2;
>   
> -	if (!(adapter->flags & IGC_FLAG_QUEUE_PAIRS)) {
> -		if (adapter->tx_itr_setting <= 3)
> -			ec->tx_coalesce_usecs = adapter->tx_itr_setting;
> -		else
> -			ec->tx_coalesce_usecs = adapter->tx_itr_setting >> 2;
> -	}
> +	if (adapter->tx_itr_setting <= 3)
> +		ec->tx_coalesce_usecs = adapter->tx_itr_setting;
> +	else
> +		ec->tx_coalesce_usecs = adapter->tx_itr_setting >> 2;
>   
>   	return 0;
>   }
> @@ -910,15 +908,40 @@ static int igc_ethtool_set_coalesce(struct net_device *netdev,
>   	    ec->tx_coalesce_usecs == 2)
>   		return -EINVAL;
>   
> -	if ((adapter->flags & IGC_FLAG_QUEUE_PAIRS) && ec->tx_coalesce_usecs)
> -		return -EINVAL;
> -
>   	/* If ITR is disabled, disable DMAC */
>   	if (ec->rx_coalesce_usecs == 0) {
>   		if (adapter->flags & IGC_FLAG_DMAC)
>   			adapter->flags &= ~IGC_FLAG_DMAC;
>   	}
>   
> +	if (adapter->flags & IGC_FLAG_QUEUE_PAIRS) {

This is removed from igc_ethtool_get_coalesce() becuase 'I225/6 always 
uses a queue pair setting', but you add the condition check here?

> +		u32 old_tx_itr, old_rx_itr;
> +
> +		/* This is to get back the original value before byte shifting */
> +		old_tx_itr = (adapter->tx_itr_setting <= 3) ?
> +			      adapter->tx_itr_setting : adapter->tx_itr_setting >> 2;
> +
> +		old_rx_itr = (adapter->rx_itr_setting <= 3) ?
> +			      adapter->rx_itr_setting : adapter->rx_itr_setting >> 2;
> +
> +		if (old_tx_itr != ec->tx_coalesce_usecs) {
> +			if (ec->tx_coalesce_usecs && ec->tx_coalesce_usecs <= 3)
> +				adapter->tx_itr_setting = ec->tx_coalesce_usecs;
> +			else
> +				adapter->tx_itr_setting = ec->tx_coalesce_usecs << 2;
> +
> +			adapter->rx_itr_setting = adapter->tx_itr_setting;
> +		} else if (old_rx_itr != ec->rx_coalesce_usecs) {
> +			if (ec->rx_coalesce_usecs && ec->rx_coalesce_usecs <= 3)
> +				adapter->rx_itr_setting = ec->rx_coalesce_usecs;
> +			else
> +				adapter->rx_itr_setting = ec->rx_coalesce_usecs << 2;
> +
> +			adapter->tx_itr_setting = adapter->rx_itr_setting;
> +		}
> +		goto program_itr;
> +	}
> +
>   	/* convert to rate of irq's per second */
>   	if (ec->rx_coalesce_usecs && ec->rx_coalesce_usecs <= 3)
>   		adapter->rx_itr_setting = ec->rx_coalesce_usecs;
> @@ -926,13 +949,12 @@ static int igc_ethtool_set_coalesce(struct net_device *netdev,
>   		adapter->rx_itr_setting = ec->rx_coalesce_usecs << 2;
>   
>   	/* convert to rate of irq's per second */
> -	if (adapter->flags & IGC_FLAG_QUEUE_PAIRS)
> -		adapter->tx_itr_setting = adapter->rx_itr_setting;
> -	else if (ec->tx_coalesce_usecs && ec->tx_coalesce_usecs <= 3)
> +	if (ec->tx_coalesce_usecs && ec->tx_coalesce_usecs <= 3)
>   		adapter->tx_itr_setting = ec->tx_coalesce_usecs;
>   	else
>   		adapter->tx_itr_setting = ec->tx_coalesce_usecs << 2;
>   
> +program_itr:
>   	for (i = 0; i < adapter->num_q_vectors; i++) {
>   		struct igc_q_vector *q_vector = adapter->q_vector[i];
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
