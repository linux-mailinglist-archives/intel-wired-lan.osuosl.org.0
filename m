Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A137DA21B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Oct 2023 22:58:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E916970968;
	Fri, 27 Oct 2023 20:58:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E916970968
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698440310;
	bh=EKqaNBuWaHd00ygiv4h1ftDQCBCkJ42+SiaOrox3NSU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vKc7pTd+80DI1i8+BhYOP48I/6WWxklb6zwkok2YjENrXhnbWoAp44ecYCRg0sCZN
	 o8rYXgC8fiXVBynDt9H0dnJmrrcb4C964YbwV5VcpRwds0EOfALU0A0m8alCUKepS3
	 FyJlQmS64hwtPzEitQhirb//xGdXIBbRlXoIp0OFO4CJ/nmjkgbLXz/JX0XH8PiPkK
	 AmL3/lnWUZ9cn3EgWoroBXh6la1hiGlR4WqqMKpdhtdWkrojI7b3bW1VlyinYBxZRQ
	 tGheoyDF8g2zV2cN0tpcUA23iPwxNo2IfXnofNWCOTQeLZaaPJiHbLGn1b2q+GaCCY
	 sMIJPeFOlWgpw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iJ2tG283lLo9; Fri, 27 Oct 2023 20:58:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90AC170967;
	Fri, 27 Oct 2023 20:58:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90AC170967
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CAF8E1BF307
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 20:58:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A12654F30A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 20:58:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A12654F30A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XR_ZysJR7Gnf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Oct 2023 20:58:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 72CF34F309
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 20:58:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72CF34F309
X-IronPort-AV: E=McAfee;i="6600,9927,10876"; a="9387342"
X-IronPort-AV: E=Sophos;i="6.03,257,1694761200"; 
   d="scan'208";a="9387342"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 13:58:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10876"; a="850351927"
X-IronPort-AV: E=Sophos;i="6.03,257,1694761200"; d="scan'208";a="850351927"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Oct 2023 13:58:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 27 Oct 2023 13:58:19 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 27 Oct 2023 13:58:19 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 27 Oct 2023 13:58:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LDl/6vWcG/N/S/3sbeBr/XwqUt6ZXOzBy+Y4RfdngmVvxnax2sMuGsvkza3VDelg6bY8Sb5SEZPHmaI0rbeYJhsyp51QNufcZ+cdg0AeXNKLkobyQ9gSLGCRxiagyo8mHToxgfnJwf34Rli4rnGhk/i2Q+mkwmNHHTZ2M/65jnEqHTfx4N01tBrQGdh81x0tx2PcydhqPMwRm55zwOHVVT7oQJNJ+AOHnqUlGVYg/vdpoIFtZdu2tYQkBm7H8zru8jzLsQy+Ghh6MgpEe+HP+cB44Vzmilc9tUnMAxgXHWCAqdekaOYbJAojNiis2B6Y+eGm3IEf5B+rGE74SqD+yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1m3qhuV4MVSHrt05pcTmAhMq5lIXwoEsqz8ArvWBggw=;
 b=OTCQDdzd8seZcIv6NxWv8aovO5okrC5n6ApSuYkxPaFmQ+giMIxLxJIxHqOAYoaEQAo/vP3up8udyF0s3ZB1T8uX/bHyOvGaxPtyNq0wQJAvZYIKXgQeDmO93ndDEMkzOdqgOuT9mhNxeaOkkTWVfdr4m7C45RXvYN3IKTvttpC0ikr2pd26qoM51DHEbpkdtXSTB40e6ndd/cBeN2qN6RsN/+fRkGck7/xRe3ohLAOtFKeJ3enVHi/yNGhHun0qg5wDWa2ULqpsgv1ynavwBwAi8BeZKas6ygSrmu+qAo+UFnEmT+VbQ6hbWACJia547faQAU8+JtCpqLRerl0fhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS7PR11MB7691.namprd11.prod.outlook.com (2603:10b6:8:e4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Fri, 27 Oct
 2023 20:58:14 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::2724:db16:fe7b:2ffa]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::2724:db16:fe7b:2ffa%6]) with mapi id 15.20.6933.024; Fri, 27 Oct 2023
 20:58:14 +0000
Message-ID: <335ef88e-3678-480c-846c-4287cb030d76@intel.com>
Date: Fri, 27 Oct 2023 13:58:12 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231026105955.282546-1-karol.kolacinski@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231026105955.282546-1-karol.kolacinski@intel.com>
X-ClientProxiedBy: MW4PR04CA0206.namprd04.prod.outlook.com
 (2603:10b6:303:86::31) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS7PR11MB7691:EE_
X-MS-Office365-Filtering-Correlation-Id: 30952d1a-daf1-4261-3a48-08dbd72f7008
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Yk4cH8unKJQzP3zOuLZpul2civhvljV0XjXskU011PFFsVZzJArVneND0Wi2ZjKXobhl8PwWeJK+yF8zCpbkFopthWWQbBzOSieg2b5RkFLDdgQD/0e9hqnqRMNs9eARsnSnjslkB36TTkP6wTypwa2S0ulHwTfeyDtU0qYBhPjo2xVVdkgOaQgP2kKNLqrYXLkHHLPUAIFz+c5cCTjCx1jj1uM7CjVTskQjSWKSzIm5i2nkEJ56ferL56Q6V/E95j+8tF8HLg2TtRdswbZrp5V7ehlstt1AQpT0KaEf0Qs6PSye1m6MsRIEo4u5w25DZb4dIBKl9JVUxCupGrnrRIXWpxpTyiE0xv+SSknpMw7krElTi+K6OH+3hsE05zNIpUjqnJ4N9txYQdNXWAPMJfo43A+AwfZKr4UHMFX4UysAllFsZ3/GXQkPUaIXIOuGGGE68NWPgbWUs3MUdydp4R9AratzU/7zdwQVw5axjV1fbKthB6R+BJa4d74D7i9HoI8nDxt4e1yPveSoFwjHOCe0agcV5y6vJSa+Xn17hCb0OG159raKlVvLsSSqCSyQvUzLzSaPOsxFilEW0k7U9BP99+qt5TeseA54X+UDPNdFY4Hb0rN8jobZYGYo8N+hzDO6ArSU4ibqaQwL17rGlg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(346002)(376002)(136003)(39860400002)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(316002)(82960400001)(31696002)(36756003)(6486002)(107886003)(66556008)(66476007)(478600001)(66946007)(2616005)(26005)(6512007)(6506007)(53546011)(2906002)(8676002)(41300700001)(5660300002)(4326008)(8936002)(38100700002)(83380400001)(31686004)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NDlOWUsyVC9FTXZYUEdiQ1BUeW0yN2hRSUw5Q01TUmQrYys2QStvdHNKOGNV?=
 =?utf-8?B?RjY3Y29uRFdsWFJOMm80UGVrb1oxelNvSUJBUHNtTklMaGlVUHBOMkVwWUV1?=
 =?utf-8?B?dGVuaytEaHhJak41VUcrKzg3Rnl3ODdnTGNKTkZxWXNkcG9MdVRzUEMzbHJN?=
 =?utf-8?B?T1NBWndyUGQyNDlpSityUjN6NkR6YlpQQXQ2ZVVGaEtiVDlFeHZ5WmZIRW12?=
 =?utf-8?B?S1ZMREFxclBnNUJMWTkvTmd3WTBQeUpCMTBDTUlaaE4xV01RTFE4K0ZKclBk?=
 =?utf-8?B?WlR0MEk2SGZKL1phZzBKcDhxbzNhZHZoQndHd2ZUaE80MERRTVRaVnJEUWhO?=
 =?utf-8?B?TmFnV0JFNW9NWFRvMS9reHN2MUcwSHdzMFIzV0xtR0FranFCR2x6U3pOc1Zs?=
 =?utf-8?B?am1TdXByM0FTcE9Ta21tMFhQRGVSenA3SUcraDB3RUFGVDlrQk4ycjFCMU9O?=
 =?utf-8?B?Z041U1Z4UUFKVk1VdmJKQ3VadkpHS09VQkF6OEZ5LzFISW9kdjY1My9rbUpy?=
 =?utf-8?B?cDJ6YnZranYxSUVMelNxMXpsTWdHZFNkY0ZiazkvT3F2eWpjdGtpN2VmWGgw?=
 =?utf-8?B?V1lSazlSMGJLbGtjR2hkbisxeGJYQjBpc2VrSHFmTnk1cEZkRmcvQm5YVXVr?=
 =?utf-8?B?dkl3dW53QkxFVy9wVkVvem9tU2liaGY5WnFnQ2NBWGdhbVdsV0tOaGpzS0Vi?=
 =?utf-8?B?ZW5ISEhRdVlrM25FU1hydEY5bXJRbW1SdzNnZUlzNFI4R3RFZ3VaL1BENCtT?=
 =?utf-8?B?dmx2a0p3Uk1JRTUwVlhmWjdIT2VCQm16cGNYNGRvd3htb3FlcXBKa25aeGpZ?=
 =?utf-8?B?VU5YcXh0ZWpERFdDQjhlYms0Q1ZyV0tOQWx6YlA4RWhGeE9TYnE0NVJEMjE3?=
 =?utf-8?B?a01nRytwY0JmcmcwYzNBYkJ6UmltcE11UjZjMStPNm1KdG92NnREd1g4bkZE?=
 =?utf-8?B?djVFV2UyTWJZVWFqRHdGbVpZbWx6akI1Q3BURVdicEFGdlhrdGgzYks0RmpF?=
 =?utf-8?B?QnpPL3ArVm0rZGoxaEpNRU5vcGVndm53VG80bU40a2xPVkJtTGFrcmgxdElo?=
 =?utf-8?B?UnI3bmFiNExocUJrTEEwZjFiaDBlTHJESXFQMXQxMnRWb3pTYUdJMzVSTXg0?=
 =?utf-8?B?anVUdnlKZnJZTG5pT2hmOGsxM2V6VTViS0MwTDRuZlZqSmtMNW8rSUNtQ2FF?=
 =?utf-8?B?S1AxUFNYbUppbm9wamdsYzJPM3NHeHcraVgvbVlhSVZJTERDTThFZWphU1ZR?=
 =?utf-8?B?anNydlVWT1hyaFRFMXpKb2FXUlkwbVJrM3B4TlRwWnB6WWtsUmliTmdObWY1?=
 =?utf-8?B?NmZRM3lOcHVsc0d3ZDhEZFAzMlExUlJCQjVJd1FiZmU5L0lsd3ZyU21XWWFs?=
 =?utf-8?B?aDlmajlaY3lEbVpSaTByOFBueVpHYjBhMzFUYnE0M3ZxOVJBOENITURpYnVG?=
 =?utf-8?B?VWFac253Wlc2anhNZ0F1bDFBNTZRNzFoT1BveU02UWhLYnNSUzJUZUVmQ0dS?=
 =?utf-8?B?U1JOZWZWdEJPRFRmam16cWQxVmxmenROemt4ZEhjSW8xbXJSWUEveW9OVjE4?=
 =?utf-8?B?NkhUVW5KVmVqTGRGdTdDUkIvWlBxRjBLeXh3eDVJZzMzM3JUekpHUmNCc0lT?=
 =?utf-8?B?dlpuZWNzYzNnSEFQRmZvakl5UjZ5ZlVIZ1VYWEtVcmtLVUVodHR3SVJGU1Aw?=
 =?utf-8?B?VmdJMk9hVXA2Z3Fldm5EeTVyb1IxYzVVNnRxNFpJWmhuRlA1V25YOEs5a2xq?=
 =?utf-8?B?VUt0a0dKZksyZGVFMmxLOGgweUJNV2xIYzBRN2d2WVdwcXZvQmI4VTZreWpl?=
 =?utf-8?B?bmpFMTFqNVNERFdoaDBOTFZJVm9CVzlDRUxCc3VKbk51N1dEOThrME5VZ3J6?=
 =?utf-8?B?emc5eXQ5b05aZE5KTmpsUW5uVVh2SVVBK1BIMXpMTmFDdVJxVW9heDg2S0Ft?=
 =?utf-8?B?NGtxVEV5Y0tpM0wya2s4TldmUGFKZjMzWWg0N09wMzBwT2t2d0w0cWpLV2Jq?=
 =?utf-8?B?MmhDS1lxeEFFdk0rTWxXbXY4VUdlVHZtZFAxc2ZZb2V6bFl5a2FTdFpYN0J1?=
 =?utf-8?B?b295VW43aHdRQytaZThzYTVmWmF2MVlYS0tWZHEvbXdjY0RoZk1VUDNvRGZz?=
 =?utf-8?B?Z01EZ3BjOXZjaUVQS0k1eFNFQ3RxWTlpOEZqU25SS0pDSGR1bHJSQ2tDRE1X?=
 =?utf-8?B?ZHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 30952d1a-daf1-4261-3a48-08dbd72f7008
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2023 20:58:14.7519 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S/fjWvf15n2DAhlo7pcjzGHDfJ5MyxKLhWocPqLNfGlRv/08XoXhKd7JpvSwljThY2KLINcL9f+h+qO8X+xO3WL0DoVZWrX4Ve21QVr205s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7691
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698440301; x=1729976301;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0qzo46eZiao9alb04ZWfQcsRsVEcJgE7sbNNcOpW5XA=;
 b=GNj/Mc8xgyv7fxBNZwWpicsXliUV4ZtVpKzo/jfSlBm7FO5EVmxpWZgL
 xKdSLbqOmRAF1nAzmWc9ttFawf0CxaxZKVh7kM8XL6iiUt7PT5tE+xMV2
 lZhoKRKXI92eMJQe1iiqReuuKraQhH6A7PBOFBH9ScYyYki2POTwCT+sN
 q7VslFqDfoASYoml28SzJeCFU1wn6NUDQS1CwGJQTxKOJPg5XVXMJD3HT
 7wp6ySQPgaXZrNI87LTuz2eE6n5SEbGI4dKKefr9wRxvSEsuhBssys4bB
 Ubr1HSeKv9LMdEyfZNvtMdZoK4gyYHE8dZxEt5cSUEMHI5Yq6XTbS53uq
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GNj/Mc8x
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: remove unnecessary
 discarding of timestamps
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/26/2023 3:59 AM, Karol Kolacinski wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The ice driver currently discards any outstanding timestamps that are
> happening very near to a .adjtime or .settime callback. This was
> originally added by commit b1a582e64bf2 ("ice: introduce
> ice_ptp_reset_cached_phctime function") and later extended by commit
> d40fd6009332 ("ice: handle flushing stale Tx timestamps in
> ice_ptp_tx_tstamp").
> 
> The original motivation for discarding timestamps was that extending an
> old timestamp using the new cached value of PHC was a problem, as it
> could produce incorrect results. The change did not describe what such
> "incorrect results" were.
> 
> There are no such incorrect results. Extending the 32 bit timestamp with
> the new time value just means that the timestamp is reported in terms of
> the newly updated and adjusted system clock. This won't produce
> incorrect results or problematic timestamps to applications. Either the
> timestamp will be extended with the value of the PHC just prior to the
> time adjustment (if the timestamp completes prior to the adjust
> callback), or it will be extended using the new PHC value after the
> adjustment. In either case, the resulting extended timestamp value makes
> sense.
> 
> The timestamp extension logic is very similar to the logic found in
> timecounter_cyc2time, the primary difference being that the ice hardware
> maintains the full 64 bits of nanoseconds in the MAC rather than being
> maintained purely by software as in the timecounter case.
> 
> Indeed, I couldn't find an example of a driver using
> timecounter_cyc2time which does discard timestamps that occur nearby
> a time adjustment. The ice driver behavior of discarding such timestamps
> just results in failure to deliver a Tx timestamp to userspace,
> resulting in applications such as ptp4l to timeout and enter a fault
> state. Reporting the extended timestamp based on the updated PHC value
> isn't producing "garbage" results, and doesn't lead to incorrect
> behavior.
> 
> Remove the unnecessary stale timestamp logic.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---

Karol,

I have some other work related to this that I'd like to send together,
so I am planning to re-spin this so that it passes compilation and
include it in a series I'm working on now.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
