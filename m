Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EC40D7599D3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jul 2023 17:35:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90B2160AC1;
	Wed, 19 Jul 2023 15:35:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90B2160AC1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689780915;
	bh=zDW99XkzPo3vXSnqpqfX5cWbgmm9kmVeYxgq+8XQrAI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4cGYuf9tO2NF23oBbWQUfCmwt5GK2OpRW1Uo6mTWG54oqJTLycAm4pZcwmJuHb//T
	 9FVHdVHrQ9KaZ86PtjQpw7wLf1CDp8FMjs1VaELOeaaFGk551wgs0xfyzchhOIXYt9
	 yEFv05sjs/4LWUy2mA2xaVrSm5RjTQG1uutpgEO26kgL8RPKFwJanaW6rFyEeUHcfj
	 Hu/z52BSw2PwihbH3HRIqJFtvcWjh+hGfpHPXR9bxzvwURDiaYlBEB+mcIZzQabmOg
	 8f96ce6nNh1hgxjNqRNeRw72FWobrptwOyMQnglNnpssyhPTUolgZuPIjbUn2J4b4z
	 mRjtkHQWM2nEA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qAQf7oBxMCSS; Wed, 19 Jul 2023 15:35:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B05B6080B;
	Wed, 19 Jul 2023 15:35:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B05B6080B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E2B381BF28F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 15:35:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B86DD4026E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 15:35:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B86DD4026E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qi4Fn7B_8aKq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jul 2023 15:35:08 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 19 Jul 2023 15:35:07 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D2AC2401AD
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D2AC2401AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 15:35:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="346086909"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="346086909"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 08:27:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="1054766482"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="1054766482"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 19 Jul 2023 08:27:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 08:27:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 08:27:42 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 19 Jul 2023 08:27:42 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 19 Jul 2023 08:27:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sy31PoBS4vzXvaInxY3bHgc8KPlmQRY3ajN4d5VGWyXqjBhr83+EvzDFIRdtAUaCLnaWLodQT0OsDfVdCAz5DY8K/PtBAFxeVkwtCh/sj2jez9lVQjN0E5MEjZcd2k66GG8M8LHiQ9vqmpgndZ2hu68iaxqiMreJonwTMp7NF0kQLUTN1E6le9i50RGdXwWdpMOsRHrRw7ve2T6JTZw4hTk7RFoASq/NUulFN9kItMdxVqY8ZHYwb+Jb+83jnq2jvstP/eSfdPU4hkSBiE/TSTvbGhJ1J/fAwLu+mCyQ+pFXa99UDLR5PI+o7HH2ZGXBRjk/UwvrByFU69Ep9KihdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HhwMqkmx4L7ZzU3Cq+twD1Wg6piQjqqYVQYBNksV7Ko=;
 b=M5O2jkw7zyz6WKJ89Fk6dZc0ioBpxcyyJeYAB+YpylgFe4+cHBlLGE6Pkshg8mRqHLpfeVIpMhTmOvKRi4BeNOLEyv7fhmcZBv91UkJSTIBslYc3iygiiJzUMEh1cuJfbv19rsNke25qifOujoj8fxZwdy8f3EPYgpk3oUypgW4gSPoIYe9qh0UxhgiQ6U+8jYdrXHI2yawjznyFDIEgnx4j76CnUcy+10+4hUUDIKFyoiiMI9ZTs4XyNlJkWN+TBtMNz36iUCxmFp1L8Qdqi//XDHipNDQkiichj0QU4wk01HRiUSOruyoLeuIVBTAySpvK1oqmFpAZQ7Xw7qRMvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by DS0PR11MB7384.namprd11.prod.outlook.com (2603:10b6:8:134::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Wed, 19 Jul
 2023 15:27:41 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a%7]) with mapi id 15.20.6609.024; Wed, 19 Jul 2023
 15:27:40 +0000
Message-ID: <8eb2cc1c-968d-d103-e67c-c2f8796b687e@intel.com>
Date: Wed, 19 Jul 2023 17:25:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20230714114721.335526-1-przemyslaw.kitszel@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20230714114721.335526-1-przemyslaw.kitszel@intel.com>
X-ClientProxiedBy: BE1P281CA0284.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:84::8) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|DS0PR11MB7384:EE_
X-MS-Office365-Filtering-Correlation-Id: fbd92b37-ad75-4a9a-a396-08db886cb052
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: X/SAfKJgaHbMGRm+haWLMwcvZjq1Z2zzqumM4T9swOlRAJ6ysMgD53lwJ/zK7x9QdbCsVuuF6TUaqrLJ05bzH8Kkg/dapKmEX2IFBoMSjX8TIzTWKXXUlOLJIAW7l4e/tLVUMCoyyrKZL1C++78uKK9QsbKoPbVszbFeom04WZ7FZZdFS2Sczpw8t2A6xbpaguBi98WcbVllJXqDo03gnR5X9J2cGa3e8all9HXGBbYKmAlCt/KnDUPXBMRh2FKCo+ka95r7tf0QAwYh5imgUBe5i1PytQjpwjqJGVG6LwmaSvkQKl7UZN37LVTlyOqifI2P8tWyPAvpJRSBrPMylh6UHzwhCQoilVPEZbEEvMJxO5aEmxK/c6QolfKNgf0hxTv9OPReagLcqOO1t68eQ9z1YqcUo3IQorKioB1yR3zahoNlVMNg8YDaaIvFxK1FK0e+aGqLWpZRiaZiGTls5uDopfrwI240StNr85EjLUdT2IEIOAM21PYlZA9ciJVG0RDR5GnybaecITjIHp2N79A2XNt9gTDwtxc5tF0ut4PO9Ypu+8EQbXcBLlbL99W6hB5XwD2amCKZs3FTN9YRYrU5aAWJVRDKMZJUU6mN+m6IIGV/iO6e0oqfhmvidvpme6n3aLXIBR9C6mFlq8ZL1A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(346002)(396003)(136003)(366004)(451199021)(6486002)(107886003)(6506007)(26005)(36756003)(2616005)(86362001)(31696002)(38100700002)(186003)(82960400001)(6512007)(8936002)(8676002)(6862004)(6636002)(2906002)(41300700001)(478600001)(4326008)(316002)(66556008)(66946007)(5660300002)(37006003)(66476007)(54906003)(31686004)(6666004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MlpNSk5FS3lWTUVTRkdXb09qZkQ0dEtiOEYyWkVrTGtBYjhMdk1tMUhDWjRs?=
 =?utf-8?B?akNLNExibkc5ZmpERnBEN2FDVzFNTmhNU3hGZHluMW5nYUY5M1NKU20vblBU?=
 =?utf-8?B?YlJwdStJbklydFpFZWJ6YXZmZGJxTzA3MThsNTNFamIvSFdaSWo0dDNPdCto?=
 =?utf-8?B?RTR6OEFGYWhjRVh4c0VVSkNuSWVMdEc3SGNCUVpya0N3UkM4VitOcjdVaG5L?=
 =?utf-8?B?U1ZmdmhIMzZhZVc0ZHV6ZExFWHJmdGhscTlzMk9zdUhHRktaRHpYQlpQYW9U?=
 =?utf-8?B?OHR4YnRhaUdlZnVqa09JSlZ4NFhKY0k5Vmp6VW9odmNoTjZzZ0ludzEzRDd0?=
 =?utf-8?B?UkdRb2xOQ0JMYVhlcm1JS1hPWVo3Sm1TNTNOejc4SmpFVkVhOXNOT3d6QnFQ?=
 =?utf-8?B?RTRPTHBnRHhJTUVDOTA5bkpYWkdZSUFNMTlSSlBBeGVYK29JeEMrK0FVQ25v?=
 =?utf-8?B?MGpMVXNuYXV2eEtVUXJyWDFBUkRVcHlaNnlsYUpMRVVScmNJWVNIOEVQUU9L?=
 =?utf-8?B?TWFmcUdLeXZFQkdGdkZxK1VUZzNGNEptVWpNbjh4OTM4TzZxeEdPcHFlT1or?=
 =?utf-8?B?TDh5a3dQYXpaMktxaEN3VU5BaTRWWnFCWnIvWXFESVNUSjRuRDRHVHIrYUM3?=
 =?utf-8?B?dE01eVNCSUNSUmlIR1JlOWVhWEVDZnVoSFZRNzZ3SDZRZzZvd1h1QWNiSFlW?=
 =?utf-8?B?WGNBd2JNSFpucE1hcnZ1TDNPbjZvcE9KREo0R0sweCt6SCtuMXp5NmZIeE84?=
 =?utf-8?B?aEpuVlRkODJERGtWVmNHUHRsaDhMelQ4S3V3dXEzVTJJTks3ek5nNXNLL2Iy?=
 =?utf-8?B?cmdtMUtJUEc3d1FVMllwVWM3UmZNUTVaZUxYN0czbW9mNHJZQzRzQkdtZkhm?=
 =?utf-8?B?bzc3Y2JjdFRUQzRRRFlJWHVTWU1zT1oxUTBjZXRxeXBzc3RTQlB6Mm1BUEtt?=
 =?utf-8?B?bU93Z1ZTNC80eUpvb0V5TmdXU3VLMzJxQ0h3RmZFZHUzTXc0elNpV2FTSTd3?=
 =?utf-8?B?KzV4TkQwbnF3dlp3dnFZYU85U25lRHZGZUZFdmUzUmQyc2xaOUFnd0hQR2NB?=
 =?utf-8?B?VENlNkVGMEQzeTIwMHJkK0lrVFVhQXV4aGtockdDZVp3dUhpRElib1Z3ZU5V?=
 =?utf-8?B?T0RkUmwzTXVLMFhVY00zdWVIKzVMVWRtTnpySXc1UFh0Ny91NzYwdUJNek9O?=
 =?utf-8?B?N0tjdlhRdlNrUG1RaTFCRFpSeEV5TDNlbHIvZnV3RmR2RC80eCtNUnh3MlVm?=
 =?utf-8?B?aWN6Z3NTdE5EQW9ZODdFZmhmNUlMV211eFFFR0EwUWlRWWhHblhmWGM2Uzd0?=
 =?utf-8?B?QzVOaUdFWVR1dnppQk9YMmwzUTlDNEd0aGEwcWJ2dEl2d2lmTE92b1FpU0lk?=
 =?utf-8?B?eTNRRU92SzdvY2wwR0pSOHhHeE1PQnBNSlVpdFFlS3N6dXl6eHo4c2hCVERN?=
 =?utf-8?B?ekVSaVJ6UERzUlVmalpLdDNjUzBHa01qWlhaT3RJd0hEOWI0U1lkMzU1VnVE?=
 =?utf-8?B?VGVPQnRuWnpxcUhXLzY3T2lRc25LZTRTTXArZXJibGVOQXQ4bklXNG83b1h0?=
 =?utf-8?B?UytudG9HOXdoNG1zRXZLZlNJeHZ3am1va0haVkpTR0VqM1hUSGVIZjk3eEZq?=
 =?utf-8?B?QkliU3VJOXpGVHhId2kyb3RlOHR5ekZkd2dDMCtXVnMzbnNicUorQnRndFlX?=
 =?utf-8?B?YU1MY0N1OEQzYXJ4WnV6M3RFaHdtcGRMQVZEcHlzcEtQaUVld2xFVWU1MGNX?=
 =?utf-8?B?N2FPekZPWGhLZmJoK2RET0t6THJLSzcwQW5sdjVyNFQ4MjZSSzVOVit5ZVNm?=
 =?utf-8?B?N0xUMnM0TFBobCtkWjdXV2VQSGFCTDFNZFZsQllyRld4YlZOT2x2TXRYMkJr?=
 =?utf-8?B?MGlGeDNhVWpDUkY4d3hGc24vNVFyS2srMnJOc3RNYzF4QktLamtUa2duNFFm?=
 =?utf-8?B?emtPWVAvODMxM0VhWG52WFFONVBEclZBSFB6N0tuOEEybUcvTkNLbm9CZWto?=
 =?utf-8?B?cUZpSnI0QzE5VS9jYzlRays0SHBvaEFJc0MzU1lTdEhPbzV6WUF2ZjNIcmk4?=
 =?utf-8?B?cnI1WW0zdjhPeXR6a3ZBdmZMcURuVHhUV29CbjFDREFLbW5DeVE0aDlhNExt?=
 =?utf-8?B?bTVodldqLy91QzVvU3NQZUl0TlRqaTZGcFY2SVJQLzBNcWJ3Sit5WWdpV2pT?=
 =?utf-8?B?aEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fbd92b37-ad75-4a9a-a396-08db886cb052
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2023 15:27:40.2365 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o9AdGIs8r6KFjaNiFTJOswKUYm04buTUpPxppPwYkMbvcjxevIq1iXKAlOfieyoGzGHOwDqHUGU7zXZVGOkQ12oC74XUDQCWINSk3tB+aBE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7384
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689780907; x=1721316907;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MipoubZbaquKFqO394B1ODBpMNO8bRY5hvS7+TD+0Ko=;
 b=EBa7lGEBPCpJmYexy143BTY/hnnELGT9r0tCeNSC8IOFAahoaqeLfivE
 OYRpXEXBEVBRCP4wSUbyK1B4KWd+clQ9E8qbmU51wVTinB3etdXwP8NTo
 1JXULvgkG7jmUFzuPqUKlBqp4kxpQdpwKCpzaLZVwFUcMCTYlud91RrH7
 IhY7fQOHZ20ZIcH6dv3bFvPbPIX4S3t8TN5QYMHzr4D5j836hJ1Ht+/sZ
 nLvO8oupHh0vtsKmO6DpugAkYYA6rx7gH7NVhRLImtac4uRz7+1KnzD5w
 cZ+1xjopwOzt9SoLRxmrrgdC2rjCGQJqXVdraSlwEfyNGsY6tLmc3pfUb
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EBa7lGEB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Reset stats on queues
 num change
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
Cc: Benjamin Mikailenko <benjamin.mikailenko@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Fri, 14 Jul 2023 07:47:21 -0400

> Reset VSI stats on queues number change.

Please don't.

> 
> Commit 288ecf491b16 ("ice: Accumulate ring statistics over reset")
> implemented functionality for interface statistics to persist over reset,
> but it left stats persisting over queue count reconfiguration.

And? Why do you guys think we need to zero stats for the turned off
queues? Let the stats have the same lifetime as pci_dev has.

> 
> Following scenario is fixed here:
>  # Observe statistics for Tx/Rx queues
> ethtool -S ethX
>  # change number of queues
> ethtool -L ethX combined 10
>  # Observe statistics for Tx/Rx queues (after reset)
> ethtool -S ethX
> 
> Ben has left a note where to place the VSI stats reset,
> what made this fix much easier to do.
> 
> Note that newly allocated structs (case of num_txq > prev_txq) don't
> need zeroing.
> 
> Fixes: 288ecf491b16 ("ice: Accumulate ring statistics over reset")
> Suggested-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
[...]

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
