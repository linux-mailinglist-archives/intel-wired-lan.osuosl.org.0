Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8A2720796
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Jun 2023 18:31:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E186844BA;
	Fri,  2 Jun 2023 16:31:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E186844BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685723483;
	bh=DXJPP7vtMnMI71eY7zwtNoYt6bPmRaOBuJlBGqBTK/A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RN962OTxK9kE2UwSZ9vlAoj4KxhTPPbDnLppvH0NnlkUdN4SInRHEKGruOZE63Oyf
	 as1JnEq6PJCiMsNrbQ8+EbdXaHeAh1p46AdNH1/GTXiwr8lDIvApU1Z+2qU8BI/Jhw
	 smWur1MaWVUtL9AxaprpUaK20H4LO026IebFm6hG94s3VuYtfa+wjugEA8GyKnWSld
	 wwrZw40Z8CdZjjfE+RsGyPlE+zcHXr/B2djkbZIkQnqE0fdyPdwyki+FDNYqOnQ7OH
	 D2FxYiVf/69aV1o4PcDDVDjvQg4cDzwTHbzN0P9f3BMFhRc3Hyj8AXTGa2nA4OgG5Z
	 6SS71kkS0qStw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 31JoCS0ieKH2; Fri,  2 Jun 2023 16:31:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D1540844AC;
	Fri,  2 Jun 2023 16:31:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D1540844AC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C0FE31BF239
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 16:31:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 985CF844AC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 16:31:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 985CF844AC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9XjTOus6FQgX for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Jun 2023 16:31:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A1946844A4
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A1946844A4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Jun 2023 16:31:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="336273714"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="336273714"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 09:31:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="772931498"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="772931498"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 02 Jun 2023 09:31:09 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 2 Jun 2023 09:31:08 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 2 Jun 2023 09:31:08 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 2 Jun 2023 09:31:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZxIQmnTqhCWvKcBTJwkSvYyyRbw/+YZCZSICfli8JfXsOs/C0PybvpINc3Yz47iX3g7CExRRBguvBfrQReXO8ehl9yjd+nvuv8a1JmA9lV1pThUb+7IXzQ7gaH2DLaaQToZ9Pr9gZNE9P+CIu0621bDVKKda6D2p6Zs4d2Rw9xj1g4zYdoZSpJLENcoiWpNCO8I0R2o9kkIY/vEX/gFCVtEXqMotAUyOoCX3MyBOy99jgbm2czxEYPB/5COS7xa8w3FAjBML35geIa63mEKV8AIpIF/vJ+N2Orn/rqUp8K4YilNW83b6ka0ZEMBcTIgWVeqrs+UsVf9wxyqO52oAKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=axPrEnu5T3OcNTSZ/gsL8Xt3J5mGK0CYEu4jEwEV/Fg=;
 b=dhU2P2Z8BU5pD5D4U/dSMgiak/YiX9ZJZ6SJ+WhZXt8TY9gXLEj3QBiBWqrymTvRXE58hku1yDevQlqWvl13Wt5vOL/CbqZyE5q2z34mBFlFazfc7qoK6/uotEQECKvK4j7canTRtbQFPmjkPBbR1D/gMrnvVc7hO4kPnLKS9FYclSCGVgpb29KYm+UaSI+ZDz8/WccSNEOs1DRWTLHy3khsBoYIUGpOnnsRzqSGpZEQLQjM9yjnIsqxaoFi6zLSdWdtnHC96b6RX4POSaXfQG2j0vEODgSj9/Dc/5s/qGjmCP3X+aN4+YIVj9XDyQH63HRn6UElM3BjBX0n7gOfLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by BY1PR11MB8056.namprd11.prod.outlook.com (2603:10b6:a03:533::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.23; Fri, 2 Jun
 2023 16:31:05 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::82b6:7b9d:96ce:9325]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::82b6:7b9d:96ce:9325%6]) with mapi id 15.20.6455.024; Fri, 2 Jun 2023
 16:31:04 +0000
Message-ID: <51f558e3-7ccd-45cd-d944-73997765fd12@intel.com>
Date: Fri, 2 Jun 2023 18:29:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Alexander H Duyck <alexander.duyck@gmail.com>, Jakub Kicinski
 <kuba@kernel.org>
References: <20230530150035.1943669-1-aleksander.lobakin@intel.com>
 <20230530150035.1943669-10-aleksander.lobakin@intel.com>
 <0962a8a8493f0c892775cda8affb93c20f8b78f7.camel@gmail.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <0962a8a8493f0c892775cda8affb93c20f8b78f7.camel@gmail.com>
X-ClientProxiedBy: FR2P281CA0061.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:93::18) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|BY1PR11MB8056:EE_
X-MS-Office365-Filtering-Correlation-Id: ed9d80d7-774a-4102-98b2-08db6386c272
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cgiFxMF9sK1LH/xzylhffnHbGQI4FrPD42QCcqB0dyC06OuDRgcnypoIOsZIjf4qgwld2+lfExjF4U4AWi8CEve41wHdJABKCyEGuAIAaKbNoiqhdiVNvKv6mGWPSY2GX4nqua9D5UX64muet2zROw23qYQQhIMZjj4JnzUFZJhcyTOfSNRw+4mzPOHT2jT+hPp/1rWhTCycpqnFHMXvUpj89xg24bwihqKtpePDPgNeHxThIJiPPwyjlPGquFXOXvs8VJHOXPJj6wzBvQxvImsMQaVSSjuP2n6C38anXcu9ilaAheVOgULVJMX7vkr9j4BQSoNdoM8XDYF78AavqVCOotmpoTEGdHCkxsyIw5TWM/xNivImcfsqQV2C0H2IxgDiSaIPA5eH0NHW5rOAfgmV/2b6VlG+Npt8AHLPawuq8pahNlbf977NmzPim31cAQ0wXwFB7Odn/7arVzGSWnGfPabyMT4GHrv6jZlEo9lM1nfzPkfGuQ2KKnWySqu+JAth7UBxTIPnL16FQ59kaMr3mtACBXJaRzDwOVGugdn4VBBTThC0F5NtCNqY7znbzRo8fJpgTQ71TPvW59CNq3LnG3xZZwbxCGTUcjA9+TlEg5YKF4HByJZfQc+0GFgABw7gro8aUeXNjWqEpsJ5WQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(366004)(136003)(346002)(376002)(451199021)(478600001)(6512007)(2616005)(6506007)(26005)(36756003)(186003)(83380400001)(6486002)(6666004)(41300700001)(38100700002)(4326008)(82960400001)(66556008)(66476007)(66946007)(316002)(7416002)(31696002)(86362001)(2906002)(5660300002)(8936002)(8676002)(31686004)(54906003)(110136005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZFRKK1NxS2J5MU4zUEJ2SUM2MlB5dHdLWXgrd3JmMDJycmx3WVBJUVJtVldi?=
 =?utf-8?B?Y1FDaW9OY01Ya0FSNFY2VC9OV2VzQlFQY3hKR0plMG9vN0h4THlYRkF2eHJB?=
 =?utf-8?B?Uk9kV2U2RUVzOXF6WE51cyt3bUl4ekMvZk5ET25wT2l0ZjZTWEtNQ3V0ekxO?=
 =?utf-8?B?cEgvRHpKRS8vS3RpZXduZmFYVTZ3V1NvTDVMZzVOT0JoUHVsdlEwVUNyWHlR?=
 =?utf-8?B?MTE5eHBmVFlxNXV5eTJqMHoxQjgza2ZUeUVIcEs0YitWOVZMakZudmVIU0I5?=
 =?utf-8?B?a2QySHhBYnBDTlR4NWJ3SngzaVpRaitUd0RVUFV6djVGZHBQWDBvNGNmZVV2?=
 =?utf-8?B?Ukhsajc1ZUxkQmRSQlRZY0FUY2xzenRXUHRQWGtoK1BmTUtmM01kVEk1UVRs?=
 =?utf-8?B?YjdxZ1VEai9rRlJSSFRtUjJEQTVyMUtpZGJzelZ2TitIekV6ZzdzYTN0aWJ6?=
 =?utf-8?B?dURwVU1ZRWk4OWFvL3REb3JpRkNuTGV0Vk1wM3dFdmU4UXM0MzlGbUFvNlVK?=
 =?utf-8?B?eE5xTFJ3Zkp3elRkWkhQRzA3M21KT0psMDFRc2EyQmN1aFE1dHNjNVlwWlZk?=
 =?utf-8?B?VzZCVmlOd05NVi9mb1FrTE5FYm9hcHpFb0VwUTc2MDR3c0tYV1ZIN3lOcC90?=
 =?utf-8?B?eW8wMmgrWDA1STExTExlYzU3VllUc0QzVzNlVmVaTEVpbkZHdXBZTWpJSGZn?=
 =?utf-8?B?T1BCOXhCcUxBRzNDUHhYZy8yOXlZRFdxTEZ4TWpEemd4eHB6c3FCRmIybGd4?=
 =?utf-8?B?eFFDSWYzc2x6bkJIanBUcjcvTHhtWGZkazVSeFZwTXJJc0s3SFM1UDZNdWFW?=
 =?utf-8?B?Uml6UzJmOGV3blExaHh4SVRacGZ1endqbmpmanRJdDRTTlNqR05VdWx0R3FZ?=
 =?utf-8?B?L2RtalBhbUNocXAxTXRCRTdwblJlckNyYWdIdnZHTWxxMGUvdlV4S2diSnh1?=
 =?utf-8?B?cFEvc2doRncweVJ1SHRTOW4xamNqQ0E2ZDRxOGlrL1ZvVmx1R0x6RTJPRG55?=
 =?utf-8?B?cmFIbHRSZGx1VE9LaVdYVFFHVElzWkcxKzJHbnBVMDk3YVAyK2xlM1l5T3F5?=
 =?utf-8?B?a0NZdVJUWFJUQVEyYWhuWExjRnU5NTYyL2JkamdVTHBSa2d5VUdXSHN3NUI2?=
 =?utf-8?B?bElRRHYrR1ptRk9kbGxrMkxQa3pYOHJEOVhiVmNEblc1aklvUk9sRzB0NVVC?=
 =?utf-8?B?eVlnYktBUjI5OThHa1FsZllDcU1BTG5OV3JMR2tic2J2TklwWXB0T2RqNFhW?=
 =?utf-8?B?b2J3R2ozRkxsQ3ZtZlBpUFhDcFQ1TDYzU1AzUER0TTZPQS9iWS9zVW8weDdE?=
 =?utf-8?B?RmNpU3AwQ1lLeUhmK2tsbExVQ0dFTnFVQjRjandOVmpiWFRzUFJvaWthMGto?=
 =?utf-8?B?dnhWT0JCcnZCUXZxOGEvTHU3U2VyNy9iOHFNS28zRUR2aXpCQXpaZEppMnY0?=
 =?utf-8?B?TWJ6elo5elYyL2ZLcjNtRFQwdFNidkFIbGtTckNXNjRPTzk5dGp4d0xjZFZu?=
 =?utf-8?B?WExZdHcyeWcxUnAxU2pWeEhReXFiRjIyM3Q3U0l3SnBIVzFSbWlucndUajgx?=
 =?utf-8?B?cHVDSkhaYi82Z3hZR2kzcngwYklNV01kTkRONzJSMDNQcUtqMUk1MDRZRjdy?=
 =?utf-8?B?WHlqYmZzWUJyV0NoVkpNVndCWSt3NzZrRzB4NkpMWGQrMWptY2svbmcxNHNn?=
 =?utf-8?B?VFZvbGV0UHJUVUZ6eGNWbzlVbkcyMlBJeDNjeW9ORmlJVDVzL0ZHbFI2c3pX?=
 =?utf-8?B?eFBValFXOVlYMEpmNUxsdzh5Z3BBczFOemlnQk9PYkRPdEZ4WGJCQTBGbVR1?=
 =?utf-8?B?OU5YcWRZamc4Q3VqMjJQU0lXTERYZTlDeHczSkFzZGFwb3JaakV5RmtWV3Fy?=
 =?utf-8?B?NVN5QWx3Q2FzYU5FZ2lCR3hPQkhjYzVEeHhhcWsxcGwwNXYxNnV2ZnR4Qk1T?=
 =?utf-8?B?Y05GdFo3WWZBRWdHOVhtQU1SaXJFL1JlVTFZaTBCd1VKdGZZdDZGMGFhY3Rj?=
 =?utf-8?B?M0lqOE1sSjVBUk96MHR1VjZ2WGxPc0tmWXBEeStlT3V2dUYvQ3B2OHNjL1ZC?=
 =?utf-8?B?TkhuaVE5ZUU0MmFFekNiZlUwZFNPdHh2Rjc4OFUzZWlXRVViL08xTm1BRzhj?=
 =?utf-8?B?a21zbGRRbHU3RVRINS9qa0ZSTDE3bUFIdkdJb1p6UFRIekh1T0cxOEE4ZTJP?=
 =?utf-8?B?QlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ed9d80d7-774a-4102-98b2-08db6386c272
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2023 16:31:04.6240 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mQcvAdTG7P1amvg/PGR+TrIseSi+d89TNQsfreVRkRZsTRDCy91Ds9a7H2uS/NAmMDkY9z9hDDnPbXyiqQCVFTg7ezoA76cYerGAQMOyefU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8056
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685723475; x=1717259475;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9H31JwSLJbIMerupqoDEcfZ+oGWaVPKVD/YXIFrdsQw=;
 b=BKKGMNKcbcgCDgnEtS986GtbCs1Vvoz6xowkRsMIpsvSyTP67cyiSCqf
 hyxlwMnkC1N0hW+VeLkIIJzgLzA1I3elvJONiAZuxhT56JdPrVtHFF54h
 ccT3H1OnOL1P7afnj45gDDQumUwRgTpj+xOEVsrDupFQryIBqCtNrOTRM
 FR4dfiySZv0ZxsKY1NzQCyO9Wnt7tlUbhqnMqwozpS66he6Db6QgZUh1w
 tS9G7ALIbAmp/ZqihBuWM2RkdKg/eN3VU+spxteuDqVu6N1v2XozHC3Qw
 iuxiV4R1wV+LM8DRYCNVZrdiRObB42R1ecBywPH4vjtWSN4GGOBF7Jn7a
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BKKGMNKc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 09/12] iavf: switch to
 Page Pool
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org, Ilias
 Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander H Duyck <alexander.duyck@gmail.com>
Date: Wed, 31 May 2023 09:19:06 -0700

> On Tue, 2023-05-30 at 17:00 +0200, Alexander Lobakin wrote:
>> Now that the IAVF driver simply uses dev_alloc_page() + free_page() with
>> no custom recycling logics and one whole page per frame, it can easily
>> be switched to using Page Pool API instead.

[...]

>> @@ -691,8 +690,6 @@ int iavf_setup_tx_descriptors(struct iavf_ring *tx_ring)
>>   **/
>>  void iavf_clean_rx_ring(struct iavf_ring *rx_ring)
>>  {
>> -	u16 i;
>> -
>>  	/* ring already cleared, nothing to do */
>>  	if (!rx_ring->rx_pages)
>>  		return;
>> @@ -703,28 +700,17 @@ void iavf_clean_rx_ring(struct iavf_ring *rx_ring)
>>  	}
>>  
>>  	/* Free all the Rx ring sk_buffs */
>> -	for (i = 0; i < rx_ring->count; i++) {
>> +	for (u32 i = 0; i < rx_ring->count; i++) {
> 
> Did we make a change to our coding style to allow declaration of
> variables inside of for statements? Just wondering if this is a change
> since the recent updates to the ISO C standard, or if this doesn't
> match up with what we would expect per the coding standard.

It's optional right now, nobody would object declaring it either way.
Doing it inside is allowed since we switched to C11, right.
Here I did that because my heart was breaking to see this little u16
alone (and yeah, u16 on the stack).

> 
>>  		struct page *page = rx_ring->rx_pages[i];
>> -		dma_addr_t dma;
>>  
>>  		if (!page)
>>  			continue;
>>  
>> -		dma = page_pool_get_dma_addr(page);
>> -
>>  		/* Invalidate cache lines that may have been written to by
>>  		 * device so that we avoid corrupting memory.
>>  		 */
>> -		dma_sync_single_range_for_cpu(rx_ring->dev, dma,
>> -					      LIBIE_SKB_HEADROOM,
>> -					      LIBIE_RX_BUF_LEN,
>> -					      DMA_FROM_DEVICE);
>> -
>> -		/* free resources associated with mapping */
>> -		dma_unmap_page_attrs(rx_ring->dev, dma, LIBIE_RX_TRUESIZE,
>> -				     DMA_FROM_DEVICE, IAVF_RX_DMA_ATTR);
>> -
>> -		__free_page(page);
>> +		page_pool_dma_sync_full_for_cpu(rx_ring->pool, page);
>> +		page_pool_put_full_page(rx_ring->pool, page, false);
>>  	}
>>  
>>  	rx_ring->next_to_clean = 0;
>> @@ -739,10 +725,15 @@ void iavf_clean_rx_ring(struct iavf_ring *rx_ring)
>>   **/
>>  void iavf_free_rx_resources(struct iavf_ring *rx_ring)
>>  {
>> +	struct device *dev = rx_ring->pool->p.dev;
>> +
>>  	iavf_clean_rx_ring(rx_ring);
>>  	kfree(rx_ring->rx_pages);
>>  	rx_ring->rx_pages = NULL;
>>  
>> +	page_pool_destroy(rx_ring->pool);
>> +	rx_ring->dev = dev;
>> +
>>  	if (rx_ring->desc) {
>>  		dma_free_coherent(rx_ring->dev, rx_ring->size,
>>  				  rx_ring->desc, rx_ring->dma);
> 
> Not a fan of this switching back and forth between being a page pool
> pointer and a dev pointer. Seems problematic as it is easily
> misinterpreted. I would say that at a minimum stick to either it is
> page_pool(Rx) or dev(Tx) on a ring type basis.

The problem is that page_pool has lifetime from ifup to ifdown, while
its ring lives longer. So I had to do something with this, but also I
didn't want to have 2 pointers at the same time since it's redundant and
+8 bytes to the ring for nothing.

[...]

> This setup works for iavf, however for i40e/ice you may run into issues
> since the setup_rx_descriptors call is also used to setup the ethtool
> loopback test w/o a napi struct as I recall so there may not be a
> q_vector.

I'll handle that. Somehow :D Thanks for noticing, I'll take a look
whether I should do something right now or it can be done later when
switching the actual mentioned drivers.

[...]

>> @@ -240,7 +237,10 @@ struct iavf_rx_queue_stats {
>>  struct iavf_ring {
>>  	struct iavf_ring *next;		/* pointer to next ring in q_vector */
>>  	void *desc;			/* Descriptor ring memory */
>> -	struct device *dev;		/* Used for DMA mapping */
>> +	union {
>> +		struct page_pool *pool;	/* Used for Rx page management */
>> +		struct device *dev;	/* Used for DMA mapping on Tx */
>> +	};
>>  	struct net_device *netdev;	/* netdev ring maps to */
>>  	union {
>>  		struct iavf_tx_buffer *tx_bi;
> 
> Would it make more sense to have the page pool in the q_vector rather
> than the ring? Essentially the page pool is associated per napi
> instance so it seems like it would make more sense to store it with the
> napi struct rather than potentially have multiple instances per napi.

As per Page Pool design, you should have it per ring. Plus you have
rxq_info (XDP-related structure), which is also per-ring and
participates in recycling in some cases. So I wouldn't complicate.
I went down the chain and haven't found any place where having more than
1 PP per NAPI would break anything. If I got it correctly, Jakub's
optimization discourages having 1 PP per several NAPIs (or scheduling
one NAPI on different CPUs), but not the other way around. The goal was
to exclude concurrent access to one PP from different threads, and here
it's impossible.
Lemme know. I can always disable NAPI optimization for cases when one
vector is shared by several queues -- and it's not a usual case for
these NICs anyway -- but I haven't found a reason for that.

[...]

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
