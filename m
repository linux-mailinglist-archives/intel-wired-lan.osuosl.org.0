Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B74FF5765F5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Jul 2022 19:26:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 17407405AA;
	Fri, 15 Jul 2022 17:26:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 17407405AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657905981;
	bh=hEZye8+KSsGQ7QGLNEujriCI71FohiPVjq9kFcRMNks=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=V/zM5bGxAAmhWr0uEMkhhW+zJog/i0+QAqwNeJHFlvDQQX8mWBsMInZ7LrgVazAp8
	 MpGqjTxVxh8cY40BJllpgT+B9bm085M9MZUdpjRwuaT4+z/Jp3sIHx/VleB6o5mEJs
	 o3hyzqgkVoJlY5VEYs2DpnaYsJRoMsst7etbTiXSJyLGQ/TNRLDYAQ4Mp8jkslDR6K
	 1cWGOpNokiqBkm2U/YalGe4hhDcjey3rhaRl/T2NKl+i7Ezg9d+2Al7G5hIUQEf4mf
	 VYyWMG3E5C+kymVzkqZPtlusQNVXEO55gbOwuqADr9K6kAuChVpnkq821SZI6opmTI
	 SfEPLlH7SgG1w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BO9CNM77Bdaz; Fri, 15 Jul 2022 17:26:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EBF4F401D2;
	Fri, 15 Jul 2022 17:26:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBF4F401D2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BC1871BF28B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 17:26:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9427840489
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 17:26:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9427840489
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JF8vBS3FBXmS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Jul 2022 17:26:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C776A40320
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C776A40320
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 17:26:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10409"; a="286990930"
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="286990930"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 10:25:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="923587577"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga005.fm.intel.com with ESMTP; 15 Jul 2022 10:25:54 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 15 Jul 2022 10:25:53 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 15 Jul 2022 10:25:53 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 15 Jul 2022 10:25:53 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 15 Jul 2022 10:25:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UteQ+q/tsmoQD+YWG0zeGolWwAiPaa9YqHc951Yy93wulZvv3QXSkoTQvYaLT8bJsE6pjbCyRgfHFDvkKS/Lhwds5hCnUs9Ci/KKjFhBRnm6iedhUhg/pqCzNJwsPisZJe4Px6UsBTK/0OkFWdJJ27MCtc0LDyj9jXgoWtcuwrHyMoAQZMN9Ts4t1HxY5EfMYt/eI1Wbyd+S/K28eJq7ipfde/lm7RnWX30i5uR5tStu3ieiu+MMXlNjtu8V+HNAXQXbxBznXyJMd/BocX6VRzvJ368q0P4utaiahs18671AbqOakTRAOpJ0wItABIzOpUAo69Vf8JY12WaPajRFpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vKRqEoKnaeVdfQKKViUIg+bi2Byb5scRZhf5fc4rQTg=;
 b=Gxt1YgDG2ySYkcMZM9JlQNToyRJMVOYqGruruEx8RPAvRUDD9bjTzva1p4ukjC6tFKwk4dTzDbiPCRL4LW230cplC18NWDeEmygtBxgE2RoGHt4/7paFRjSj97ykl0YK5ETZrf1X91eF3/3wJyg8QVO5ZY1Tkiv27gIDfKqxDBoPDRK3zTorbMEpx8ggUuUpY27zsszhQN7QILRwl+P1WR32TkXEkTRJpqlyrdBj6CcsNnZZOqKis+7KJxCCBSH+bx9ja0y5EUzWWcVwCXMH8sTx7O/+60fdqCGzd2Ox3pQVo2pCdy6uKLp9TudJsrtx3rziQ9otk0tx+v+TPeMqeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MN2PR11MB3549.namprd11.prod.outlook.com (2603:10b6:208:e9::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.14; Fri, 15 Jul
 2022 17:25:50 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb%7]) with mapi id 15.20.5438.019; Fri, 15 Jul 2022
 17:25:50 +0000
Message-ID: <2fd6595a-ce3b-46d9-0d63-e034c9a85958@intel.com>
Date: Fri, 15 Jul 2022 10:25:34 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: James Hogan <jhogan@kernel.org>, <intel-wired-lan@lists.osuosl.org>, Sasha
 Neftin <sasha.neftin@intel.com>, "Gomes,
 Vinicius" <vinicius.gomes@intel.com>
References: <4752347.31r3eYUQgx@saruman>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <4752347.31r3eYUQgx@saruman>
X-ClientProxiedBy: SJ0PR13CA0043.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::18) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2948db6f-99ce-46e4-8e8a-08da6687103e
X-MS-TrafficTypeDiagnostic: MN2PR11MB3549:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vqmERlJLnREpJ29n0CeehxThP00tGMnyAVuuIZyej9mheAv83DSTLlGFVa3LLn+DGUcru78JhBHYjVDQmr0BF+xGJ+hdfMOVDNVT+r8O9/GxCo7uvDHM/3AfdlHIO8dTN9EbFBMg5qsG1iVwR+ljaaNpvQEmNBGOu3BueK3NSzFDMGff+upFJyanmaGhQfgC7AZUx+10Gcu0onB2KUBqu6XB3q98i0imCF8v1Lz48UB5oAT7UkaYTfT7I2epGBJdntlubTUgQiay9SevTfV5on5bt16GBZ45pBF6Pv+RyRVIh3x5VkeuWxYO0FAUWisG7XLFNvMYarIeVaTWEE87OXiQrnZi8d1L2UztK4YOOwOidOoLE3vdwsFk/4ChtQPCzwQEV7VgHcfe+VbxFjEZ1EBBePiKNz32UPVSS6IJVnvGrzWSWzBa5TVjNgKTt2W2fjRycvFEnew5MB/bgWwdlEI47HTC8IHQ8+vqtieMLzrjvchZuuEHj6vj4QRibz8irwmcoU72eHE9+OlDCY8/GUHeZyjvrZTCUeh778iCaNkMp15LqgIrVJi/FX/vLKqdrBsMfwF6vSf+PC7lLD+zon4RPSeT0+RD5lvgY5uez6fCAsY4f1sbaQlXs0PvyCcxqiNvsKa5+Y5aQl7+V/W+8DR846Weg7899aVy+oeadIGWgVvFSSXGmUCRjbGUwlYXLCipPP/ugEIKgOwHYED8CNXcez4s3qmCvfoIf2fdbxoebdzEFV4PZmm2I3gVok9xvftegiXny6tsOJaCmB1ZNKrHBSMcFV8FBG0egxxcDtrnGRJXl+E90m+Us4ELdeZLhYz/sb4I1wPmsvuJh6ToaqdmEktLEEQ2M7tgKXOiALA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(376002)(39860400002)(136003)(366004)(396003)(53546011)(6666004)(41300700001)(6506007)(6486002)(186003)(478600001)(31696002)(2616005)(6512007)(26005)(107886003)(82960400001)(38100700002)(83380400001)(2906002)(5660300002)(31686004)(8936002)(86362001)(36756003)(110136005)(316002)(6636002)(66556008)(4326008)(66476007)(66946007)(8676002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NDliQVl1QVhDVml1SjRHZWFReVNwMGx6b0l0V2ltUkVjdHhKcEZCdWZLZ1BK?=
 =?utf-8?B?N0UxSWRWTk12UWtNZStkTWMyYTZ5ZjVkM080Qjl2Mi9yWmEvVEZMUDNsaEw5?=
 =?utf-8?B?cXczVC9MYllVa3ZwZTVrTis1LzlUZEFYL2pGbDMyN041RzdFSHNJWFZ1MDhT?=
 =?utf-8?B?T25rNkdDNEljUHY3a3cxQXNoNmRnUkVMRlFFM0hHL0ZiY0RLSHlvamZZWE11?=
 =?utf-8?B?MVVIQTlGWS85T2JENWFtQVNvcmpvVEhtMkoyV3F2S0crdC80TVlNZCtnMGRF?=
 =?utf-8?B?TjkvYkgxbGR2WHpFSkVjUXhzRzJtVVRaRlVsZHZRdHUxb21lZE5GM241cW13?=
 =?utf-8?B?N2w0NGRxektnSlFuR0N2UFFJdFhsTDd1ZnQvcTV4ZUFScWhVVEl1L0pUU2Vh?=
 =?utf-8?B?SzdMYkt6RmxWNTEweWRMempzTWJYeWhSZHQ5bDVaNmFsYVVQdmREU3Z2a1Zy?=
 =?utf-8?B?aDVmOG5KZ2hiQ3VZZk50OVFJYkRHRHQzdWtlZXJQM0tBeHZRMUpva3JxTHVN?=
 =?utf-8?B?bnRSbDNOTnhiUlByK3U4dUtHMXhJaUdldytSY1ZmRnB6MGN4NHdDR1d6K0JT?=
 =?utf-8?B?dlB2dlRnSERDWkVUb29iTlZSV1BxNEZYYU5kQnFpT3hLVlVXM0o5VG9ja2dm?=
 =?utf-8?B?bHdwR25jYzZmVVVCMGEzaXM5ZFJiUUlCeFBJRVB4M1RaVE5GWnMzSVdUYitW?=
 =?utf-8?B?UEo1b3NtUTRleUlCUWp6K0NUUC85S2VPWXRhcllnNUt5T0RCSHdPZnJJSjN4?=
 =?utf-8?B?eTV2cGxoTmg2NG5zcTdUZTJjeW9JSHNtbFI5a0srU1lIUlQrd0dGZHRkUnB2?=
 =?utf-8?B?UUpYYi9hMjg4a1h3SzBiZWh1Y2RBMklRMHcyb0NpeXRxZURXQm0vNmIvYlU0?=
 =?utf-8?B?Q2Vza3dzNUJDSysvTHV6K1BqblFIR1Z5QjB1T3hWV0o5QkFaMjV5VEVSM0Z4?=
 =?utf-8?B?YkpJYWxZSUZBSXh5bXA0NG9lditvc0RTRStxVWM4WTNPRzhPdjdwT0VnQlNV?=
 =?utf-8?B?RWRJU3JpU25ZdGdjV1g0UWhOb2ljdzM0SUVDdVJ6YlBqT0VPY3RsRmhRVTQz?=
 =?utf-8?B?QmQ4U2lMVE1xRFVaRTZ3ZFp4VVF5RkI1WEs2ZTlJSzUzZkVhd0NmT1I0dUoz?=
 =?utf-8?B?Y0hqMTlUbEV0dXYzL1ZoSHM5YUpPU1NqSXdhMGlGNWdrQW9BTVdDNlQ3ZFRt?=
 =?utf-8?B?alQyVGRTS1NvQ1BGSS9NU1RoQjF5RDVEdSs4YkFCT1Q5UVhHOGFSSFN6bE9Z?=
 =?utf-8?B?dit1elY0ZXEyWm9XY2NBeTV6dWIwcXh0TW1zMURoWFRhZ09GRldGd003SE1t?=
 =?utf-8?B?MFlyK2pablR2Y2NCK0MwWGpTUVdmOTlCQ1pVOUcxU3FURnFpdDUzOUlQRGRj?=
 =?utf-8?B?dER5TW1vWTdJR3hqWVB5S3BneEYxVUhDbk9iRFl3c0dUNnhKWnBQaGFFeEI5?=
 =?utf-8?B?TE5rNnlBSEhFRnpkakU1NWZSbWdpODJFVDFpQUt6M1NBNC9oT0VyYmZ2WGQx?=
 =?utf-8?B?MVNWcitPN3VxUkRQZXZ3MFNUSFRUNXRRZTJsNmxIKzhFdWptaXZpWWMvK0dq?=
 =?utf-8?B?aDMzeW9XNXpHT0FqVXRMMTlQSU1rczNtZ2NqdlNlYmRjMmMvWXF5QUwraUdQ?=
 =?utf-8?B?M3ptOFA0NmFCdU8zamZ2MGhGTGFnL1g4UW9oOTBxNjNxL1V5ZTZUTUZtVlVn?=
 =?utf-8?B?QkhMRElMOHBNQ3VYMVJ5SkZLalAzV0REdjUwZGlvbEJkMmZLcXdBdWVPdXdL?=
 =?utf-8?B?L2FuRE0reFhWY3JlRk5TNlJveXIzbGh4SXNyTkNFYUl4S3RHa2theG8vMlA2?=
 =?utf-8?B?THhwV0UzNVNiMEs3Rjl6VnltZW4rMk52TXpmQ1F0YmVRMTcvYXdPZVIrTzhR?=
 =?utf-8?B?OWJWK3duRXpmWk5jaENvMHhGU1prWVkxUmNxR052Y3IxT2EveHViWmxDbVVV?=
 =?utf-8?B?V0hJbTFtcjlxWWp5ZXU0SXdJWnM2R1NMeG5LR2xVWTNnU05KYmxDY3dzUFFB?=
 =?utf-8?B?TXBqeDNCdFdHaVMvOFlqOTdGQ0FGNHZ1cnMrY1hsOGk5UW9yZ1RkVzhTbG4w?=
 =?utf-8?B?dUtYbnNXbGtuSlMyT3JnWUF6SHdLZTB6ZUtLQi9zVExvU2JxMW9RbnQyM0w4?=
 =?utf-8?B?MlV2cllBZnBaditqQlNxemNnOTFUem1GNTcxd1pueXAxUWRKNS9wY0h4V2VE?=
 =?utf-8?B?WEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2948db6f-99ce-46e4-8e8a-08da6687103e
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2022 17:25:50.7218 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CJUwrlt6mm//sJzglgZmH2hrmf6HOnpUUwcZaPpNT6zUNaAP7k8ehuyQTOHCll455cC705MlGAqulOiZraNTLneOY5UNM4gITi6DlzCCk7U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3549
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657905974; x=1689441974;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mwF4cTQ/FYiN1eiyJqGYSaF7M0Q8TMBnRjFcFB8+NrM=;
 b=cLIr0HWHn3lpChcM16E7u7y70uH/H368D7/8k4KtVl/puo/Od+IbFL7t
 w9kKPKn0jmsjahx/LO2jV8uITC2+dO1L7I1xkz0El7Ws6EqpTdAKvt78F
 v6Mp98k5hGSsu3bKpzouIxORs/lKanfbMN/c/7i7FFqGSlWQq47syGSvj
 GnuprcfDbTzmPv+jhF6o8E075fab3MUVckXT/V/RsUUkGkH9NFLNUPHPL
 rC7g5o990QbaEFSv9Ex9owEal4zAHIbaf8VOTTV+VLKn8J6newXmgGZxR
 omqkqTmThAUZUpD47xydMWbvMYYOw1uCIlCK63beHSQrb9PizoIMrDUAK
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cLIr0HWH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] I225-V (igc driver) hangs after resume in
 igc_resume/igc_tsn_reset
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Adding a couple people who work on igc.

On 7/14/2022 1:14 AM, James Hogan wrote:
> Hi,
> 
> I'm getting regular hangs after resume from suspend with the igc driver, for
> an I225-V (rev 3) on an MSI Pro Z690-A, with version 5.18.11 on archlinux. A few
> stable versions ago it was possible to get the network back up by removing and
> reloading the igc driver, however now I get the following, and only a reboot
> works (which itself hangs before actually restarting the machine, and requires
> a hard reset).
> 
> Any ideas?
> 
> INFO: task NetworkManager:1139 blocked for more than 124 seconds.
>        Not tainted 5.18.11-arch1-1 #1
> "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
> task:NetworkManager  state:D stack:    0 pid: 1139 ppid:     1 flags:0x00004002
> Call Trace:
>   <TASK>
>   __schedule+0x37c/0x11f0
>   schedule+0x4f/0xb0
>   schedule_preempt_disabled+0x15/0x20
>   __mutex_lock.constprop.0+0x2d0/0x480
>   ? igc_tsn_reset+0x64/0x100 [igc c7b6f7549edcf5dd76637367233bb9aa57fc35fd]
>   igc_resume+0xf6/0x1d0 [igc c7b6f7549edcf5dd76637367233bb9aa57fc35fd]
>   pci_pm_runtime_resume+0xab/0xd0
>   ? pci_pm_freeze_noirq+0xe0/0xe0
>   __rpm_callback+0x41/0x160
>   rpm_callback+0x35/0x70
>   ? pci_pm_freeze_noirq+0xe0/0xe0
>   rpm_resume+0x5e6/0x820
>   __pm_runtime_resume+0x4b/0x80
>   dev_ethtool+0x128/0x3060
>   ? inet_ioctl+0xdc/0x1e0
>   dev_ioctl+0x157/0x520
>   sock_do_ioctl+0xd7/0x120
>   sock_ioctl+0xee/0x330
>   ? syscall_exit_to_user_mode+0x26/0x50
>   ? do_syscall_64+0x6b/0x90
>   ? syscall_exit_to_user_mode+0x26/0x50
>   __x64_sys_ioctl+0x8e/0xc0
>   do_syscall_64+0x5c/0x90
>   ? do_syscall_64+0x6b/0x90
>   ? do_syscall_64+0x6b/0x90
>   ? do_syscall_64+0x6b/0x90
>   ? syscall_exit_to_user_mode+0x26/0x50
>   ? do_syscall_64+0x6b/0x90
>   entry_SYSCALL_64_after_hwframe+0x44/0xae
> RIP: 0033:0x7f5d37b077af
> RSP: 002b:00007ffd791600f0 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
> RAX: ffffffffffffffda RBX: 00007ffd791603e0 RCX: 00007f5d37b077af
> RDX: 00007ffd79160210 RSI: 0000000000008946 RDI: 0000000000000013
> RBP: 00007ffd79160390 R08: 0000000000000000 R09: 00007ffd791603e8
> R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
> R13: 00007ffd79160210 R14: 00007ffd791601f0 R15: 00007ffd791601f0
>   </TASK>
> 
> Thanks
> James
> 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
