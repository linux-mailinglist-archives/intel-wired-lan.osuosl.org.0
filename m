Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D89286D0990
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Mar 2023 17:30:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BF506163C;
	Thu, 30 Mar 2023 15:30:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BF506163C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680190206;
	bh=2hFZhz5imyMqphRjEmrmfBRTIBLwPamu5U8mC9jaXZk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IUZcCbFaW0MrocmQdL07bcdOPdRHZWniEZC2r6ePwslgZSZUjvO5LLkZ37S1LRSrw
	 LCsY8E2itfaDKTdXeXIZhwz4VhzCF1kRKigFNrwQymLHmPSFGlo/wcsqo+zzENuty3
	 i6I1MMLNx3AsjJnZV8b2HH598qjZrFcFmbD/ongpu91LbgOOZ8ofttE0JUQ8IIDX7a
	 lwXD/BShw2mHpqIA/d50p2ZugaPWsux56HqYupNzzo74i27LutkXU3bM1OdlFY90ow
	 lvCFng4+93MFiw/sHgab7jSWexUjYFCKKBRiMN1+5cDZwHLYDhukdmVf4OrD7h/ZIP
	 us0a4Fzx/j9oA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ykeyf1JeXPXV; Thu, 30 Mar 2023 15:30:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC7B160AE5;
	Thu, 30 Mar 2023 15:30:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC7B160AE5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B0A231BF2CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 15:29:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 874CC8428E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 15:29:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 874CC8428E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pp9ObF9XI-Eo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Mar 2023 15:29:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E62548428C
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E62548428C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 15:29:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="325151685"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="325151685"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 08:29:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="717350240"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="717350240"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 30 Mar 2023 08:29:40 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 08:29:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 08:29:39 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 30 Mar 2023 08:29:39 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 30 Mar 2023 08:29:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H1WZIox2FKd7CEh4a1PLzA6X1FWaBhxWnRHGTX21+2/2OgLpuDBh63XpNcKvwFXqpFlKJ3p7s2CRIx0mNgXFo5Mk/VZA2BIUy2t7Fc50oXXZgUb1d/bEBjkYSnLF7wD7x4Bo/bJzTym2MVM+IclZgX3u+WxydL0qm8ctcyZgjMNmmfHy1inAl3BKltRrx4fXXXzrdcAu38qgNP0eM8hAIvTHUsTTBKKBLPchGqHysqNeLVneS+oUeV7kDppz9jJSozxRDS+Mir331Pdn9QpDTAeyKqKvOcfo7XqLT32APtuCuXP1e2CuAn2XEXfZEl7w0Z6j2/ToCgnGgP06E2UqJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jZ0c+EJkEGBpiWnUVyoJtdUGDrDvr3myucGbW02P6iY=;
 b=IiPU6Usoni5mzH0WaaAEtS2CeLk7uSGeywcHDuHhfQBnl3vwAYUimh20Se+H9gTOS/WhnTMrcXKMW5wcO3hfoH7JG8JQr7Vog6JVHGG3nSIpe9ZPF+to7ivjQOWUIhc8hFFhgR3wp3vUJmIJ8B+T8zv8lb21Xwi61apu7nhUrpBZJi/jy+yzTZ0vwOtomt6Ne8YNEfAdMUQJjTc9HhXutUmfHgmLIEqMp+twobiVsByqPA9jELgJPxU3wDrBmSeF3+SqBUcJXn2pvJHS4SLFDQPcDRZggBGd0eY92OM0wChrsA3FDsSszUdmJOMAVhr30eaXAB90G45SLc5LhJtLYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH0PR11MB4839.namprd11.prod.outlook.com (2603:10b6:510:42::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.22; Thu, 30 Mar
 2023 15:29:37 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4b81:e2b0:d5fa:ad47]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4b81:e2b0:d5fa:ad47%3]) with mapi id 15.20.6222.030; Thu, 30 Mar 2023
 15:29:37 +0000
Message-ID: <4c579032-b409-d3e0-9234-483871c37992@intel.com>
Date: Thu, 30 Mar 2023 08:29:34 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230330103749.3759357-1-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230330103749.3759357-1-aleksandr.loktionov@intel.com>
X-ClientProxiedBy: BY3PR04CA0024.namprd04.prod.outlook.com
 (2603:10b6:a03:217::29) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|PH0PR11MB4839:EE_
X-MS-Office365-Filtering-Correlation-Id: 30e4d44f-7849-4a91-e36c-08db3133924c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gLoDWEAMio+rHQ1MOnzSToC/ncw3PsaCm9Gt2z0ZpE5/ofYj2eQw7sxk0OrhHtTb0rLgXEaJMZVn0wFN1B7DfFF0mgnki2uVviAn+wBMrHacyjcr9TNfmIpXGkv3mXGymAqnt/e3W2KcOxGYWcOST5xwA0mR6mSmdHblh8Lca6AmbhHU8Es5qi7furuJ54rlM/lBs57XdPK2FeHB6x49KF4KrIVsZNEPOSZUAdHZbRM15b37P4wFbOD5qLHD7FEDuKA7UfGK41PO2DX39hT0NSPmAFTxwct+sKuqJPT3dy+g5J8GudnjT9DHOppX7m0T/Ww3N8OXdYmeQQsbOn2I8CLJPaC0q+OJm8EukJgnPbXK8+dedqpoLA45IRRyNdYzDlfRkXQAgTEP+E9zAjm3AaYG7ChGiZUsvvZ1FDdJhBPJnvhJBMXbpShIaQsJiqFzBE/mI7TPYt64sSbu8rjTlFfFugDLVfACKKht1UFDG2oqCG6XUU7xaiciW2r/vxyuj1ItFE1sE7xJ+6sspSZ9DFWmirRarOGbJEZYJ2dn97TrwIUrdbyagnaAQZK2tgVfws6nrmC8RfxkfqxH/DHrYMSIt88tKmaThdyxxYKcSE0ntjlWwhfm2WeOeQsKReQfTXXvahUi0OXHxI5OxcegC9mdLY36GD5CF3eULvflmLY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(346002)(136003)(39860400002)(396003)(451199021)(2906002)(8936002)(38100700002)(82960400001)(41300700001)(5660300002)(86362001)(36756003)(31696002)(6486002)(966005)(478600001)(186003)(31686004)(6512007)(26005)(6506007)(53546011)(6666004)(2616005)(66556008)(66476007)(66946007)(83380400001)(8676002)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cVE1ZFh3cHJKNVRaRE01dmY1ZjNEcTY5NUYvZlZjL3pmZnU0cGpyMW1YWjdv?=
 =?utf-8?B?S2k0QmF1S3pVaTRyU29ZdVQ0SW8vb0lYaXlybHE3K0hLZkFVRmhUUkpjSk9o?=
 =?utf-8?B?czdyVVhhbFF4b0lHNW5EcEExb1FDSWpnaHB3aUJ2Kzk4ZGlTNXVJSDhudUV4?=
 =?utf-8?B?NllMZCsydmFNamJ3dGQ4SDZmaFNENlhNZGNld0FXU0FmSkFueUxSTmwrLzhn?=
 =?utf-8?B?OXhrandaUThTZEtLQmxXRTI1cUh0UnkxcUViTFN6dXErQnRubWh0OXNMMmgr?=
 =?utf-8?B?OEZkN0oyMG1kbmdCOUxwclhWU1oyekRHVisvM3UzZytwcFFDZ21BMEsvZm5h?=
 =?utf-8?B?S1diMlkweTVJQUJaOWtZdEYyMnlSTld4VTJsTWdiMktMTHRhbVI0RGlzUi80?=
 =?utf-8?B?N2FwUmlWTEIraDBXMWdrNXNUdlUxMUpIZHpwWWVjY2c5RUxJM3hiWVFwc01O?=
 =?utf-8?B?UHZ6c3FUSHNxdytxSXBEN3NoUXhiM2R3SSs5b1F4cnVvZHg5YXprQm1pUGwz?=
 =?utf-8?B?NGY3aDRRS0F6ZXJ1TDRDdzRzby9JakJLL3BKZFhCZ3JaQWM4T0RLWWtoaVkx?=
 =?utf-8?B?S0lFWXk2aXB3VEwyZnZxcmRRdFRmTHBwN0FubUVKTXRaRlNmYitKSElPdDdv?=
 =?utf-8?B?UXZ3U1FQaTk5bGhlWEJ6ZndCb2pwME13MmZvQ0hOV0s5VE16MVN5ODRIaTBS?=
 =?utf-8?B?eTYzV1Zkb0RjQmtnOThnR3pUYlNzK29oRXNTemNsdEJIQlRzNjB3RzVaTFBp?=
 =?utf-8?B?M1RsSllLc0c3ZkZKOS9NdVRDN29oMEZEWFM5SXpmRE5BY0NnWXdiUk9lWTVL?=
 =?utf-8?B?d3pnWXVESlRGeFE0TmZDUkZUL0lWcWJjY0Q5R1ZNeERtVDRiMENsT1M3dVJC?=
 =?utf-8?B?RE44TTFVQnVFTVBMb0RucUJLT1oyRUxrb1F2VkdjanI3OEdyaTJZK0pJVlEy?=
 =?utf-8?B?V0lvK2VZbkE5MU5lVGp6SEZHbmhmZEFBT0FHWXJhMFpza1Yrd05Md1BoRGtB?=
 =?utf-8?B?MkpuL3AwcEVFZ0Yzd1VXdGZLVk1xMGhmRDBjMDhQSVRNZDV0czl0TjdJVm9q?=
 =?utf-8?B?QzVSYzFxQUQyaE50TTJhOWwvUUpNQzdqaEJaZkREaVovSm5sRWY1bkxRenhI?=
 =?utf-8?B?UnlsZHZUS2hoTlk3Qjl4NjIwb2o4VlBPK3JGT1BXcndLV3FiOVk5RTg1L0o2?=
 =?utf-8?B?L3hQWkV6MzVFK29FTkI3Ym8vcjJEb09Cd3pXKzRxcVR3eVI5QkhPRDhjTDJ5?=
 =?utf-8?B?NFA1NE5JYW5aYXdHVzQrNTlmL0YwbDY3WFROZ24weHlMeTZ2OXJhSlp4TFl0?=
 =?utf-8?B?U1RDUUozTHQyanE0ZFpjUGdCUHFIRHh4SFdRV0ROZ1JqdWZsRFFxTFpNRlM1?=
 =?utf-8?B?UUJ6RU42UndmR1ZBeXhtcFNLQXJraTVoWHZHSmxnNHI2NzdoOGZlZEJJMzJ2?=
 =?utf-8?B?YzRnZzdTVmE2RzRnRWUvZUNRb3RVYlJkN1dta0J5MldkRktBOEZjNzN3ZmlH?=
 =?utf-8?B?dTlsUmhGS2ZKMjBpMHlMbnoxLzVLa1dMWFBKcSt2MG5GM3pxVFUvbjZ5TUFN?=
 =?utf-8?B?Q3FXc3BEMzZaRVBrM3lxbTlrby9UUjVrQkxNQ2hYcW9WS2M4bTFmMWU4aS9P?=
 =?utf-8?B?YnY2cmh5MmdaUUlHMTQ4OW13WEdGRkpNOHBKbkNmSzlTVEUxMVdWNXVyaERE?=
 =?utf-8?B?NVpzV21wSHJEMlBUN1ZWVWZvT0pINjJDSjAyOHNvMkJnR0x3WlE2VnVNS21v?=
 =?utf-8?B?OHRZR2I5OGhsZ0ZFamVIKzcrdlBTMjJBcHZYNnpNR2xENjhkYU1NcE1IaEd1?=
 =?utf-8?B?dFZ3VmdaWDgzMDhoMlZoaWtoSmtVQ0NRQzhIQlpWS3dqRGFvVDF4Umd6UXhO?=
 =?utf-8?B?MWZueDBXWTJBUEhLcXJiRmtZRXNsL1daMDZlOTUwSlFESmwwT2c4bGNGMmsx?=
 =?utf-8?B?VFN1ZnJEcmxWMzFLaUFaeHpjSlhrc21Ka2RkajJXRkp0YlFGOUR3M2hwb1Zl?=
 =?utf-8?B?Y0E0ZXVwZDcxb0VrbHdhdy9DSk0wODBxWU83cGgwQ1dtOE1tbGthQ1prTGxY?=
 =?utf-8?B?MVdkZ0dBcnJTeGdTank0aVRlTXRGdGcrejRrc1RKaFMxOXpnMFFrc2xmN0JN?=
 =?utf-8?B?VlpwbGUwYzVWMDgzVG5vcmZvcERJUUR2VEU3b3BXN1NBUVc3OGYrMWxhQXJH?=
 =?utf-8?B?TXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 30e4d44f-7849-4a91-e36c-08db3133924c
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2023 15:29:37.2499 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yG/BIkdnMN30I3uf4xe7pprTFYJUqzxcZDTaWJNCT4oj2Zyq+pzQynHkWcArCSB4xg1o+XRUzpydKlIvwvjQS8yKMLpaJp8ixRheO1Q6f28=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4839
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680190197; x=1711726197;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bxMZVfgmtiw71twa8VxcCYW89o+Se0G2Q3WVKKbIQck=;
 b=OlAZCeysUElUWy+4kXYYvNHPwMuRelcSDvik0J0e5Fn+K6pa8nuM5Mzm
 9HujXXVNwTHHnvwiPUIH/JhRzM4dYcnOKcjf01oAOO5yRXy5RGomh9P0A
 IJfs6gQR+WFWBF3Dsihv1DYLLsbIfsjkreKW+Ea2ueMnz0eO+YWcyFmX3
 8902yiZCchh0BH8WUqng1H5qZ6jGH6rYOn4jYVYX9PDxRDuQ1C2zCq6py
 G3wQ6MrnLphiEnxmTqcgDsFYttn0/H7hMNKQkxTcFElCcdOYjQqqzRo4k
 gbYJqxHmuYqNiLSOyjYmgaCeR1Cs6BSMNvydRVkegCmGKwzALrdRx+3px
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OlAZCeys
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Limit expression passed
 to kzalloc() to 1280 bytes
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

On 3/30/2023 3:37 AM, Aleksandr Loktionov wrote:

Why the multiple sends?
2023-03-30 10:37 UTC - [PATCH net v2] i40e: Limit expression passed to 
kzalloc() to 1280 bytes [1]
2023-03-30 11:17 UTC - [PATCH net v2] i40e: Limit expression passed to 
kzalloc() to 1280 bytes [2]
2023-03-30 11:20 UTC - [PATCH net v2] i40e: Limit expression passed to 
kzalloc() to 1280 bytes [3]

> Add buff_size limit of 1280 bytes as big enough for user input value.
> 
> Fixes: f1143c4b0f60 ("i40e: Expose AQ debugfs hooks")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---

Please include a changelog for new revisions.

>   drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> index c9dcd6d..b10d00d 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> @@ -1356,7 +1356,7 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
>   			goto command_write_done;
>   		}
>   		/* Just stub a buffer big enough in case user messed up */
> -		if (buffer_len == 0)
> +		if (buffer_len == 0 || buffer_len > 1280)

Based on Paul's question, it may be nice to add a comment here to 
explain the 1280 size; "big enough for user input value" doesn't really 
explain how we ended up at 1280.

Thanks,
Tony

>   			buffer_len = 1280; >
>   		buff = kzalloc(buffer_len, GFP_KERNEL);

[1] 
https://lore.kernel.org/intel-wired-lan/20230330103749.3759357-1-aleksandr.loktionov@intel.com/
[2] 
https://lore.kernel.org/intel-wired-lan/20230330111746.3809394-1-aleksandr.loktionov@intel.com/
[3] 
https://lore.kernel.org/intel-wired-lan/20230330112045.3811315-1-aleksandr.loktionov@intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
