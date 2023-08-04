Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4785A770A85
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 23:08:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C043141EEC;
	Fri,  4 Aug 2023 21:08:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C043141EEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691183336;
	bh=7enIJbq6BWtP+C7MK1hc0Nl3vu5e1N/hg7G45UWvUjk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RhO/reQVUaswWY3af09IOtJyd83em9EClobQWopiDb4dw5nQNdCDuSBLt0xa55AVs
	 54OMprTcN8c/zjVxiAYD8Fg97F+V7cv7OLecDU7bdA3+1898CQYtab8L3HGR14M/XB
	 X/fylwRHSgA+i9JW3K+09haFALFpxJYBlhAm/Mqv5EEV5z6N82JefB6JJbjrb2nQZ4
	 yhxf3kzmyHy1tVO0slApFYjZEKw9Q6x6kXJ/yMivT1Ruo8kD0OZgb4kHmp4WbCgsb3
	 ez2ScjfXvCKmfWIDRyF3taiVJQfSgQ0eefelYT9mmTncEvFUICPAHW1d1VnGi4VwzW
	 c//Uu6etla9qw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lsQeteGiPeMX; Fri,  4 Aug 2023 21:08:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9FF85418CF;
	Fri,  4 Aug 2023 21:08:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9FF85418CF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 521B41BF31C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 21:08:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A75688211A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 21:08:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A75688211A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vWb9EQzVnbol for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 21:08:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 81ACC83918
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 21:08:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81ACC83918
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="401204881"
X-IronPort-AV: E=Sophos;i="6.01,256,1684825200"; d="scan'208";a="401204881"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 14:08:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="680104320"
X-IronPort-AV: E=Sophos;i="6.01,256,1684825200"; d="scan'208";a="680104320"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 04 Aug 2023 14:08:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 4 Aug 2023 14:08:34 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 4 Aug 2023 14:08:34 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 4 Aug 2023 14:08:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H+/5pK/+Tu+gjJpr9q4MvySUFY5NzsD7EB2RfbJ67LbyqfWk4pnnuof5mTJBnFM8l45tOlvW5LIgAKGCy8gTQof8s0OW6Gp0ECu2WzTM89oAYmSy/b+hWWiO2tuVBO3X/RmFK8utA/VLkvcHC66eyLsk9VeWahx9wydCyHHXbnXDCz/vKcyEvhsYLLi2XYK8JiK99Aq1AEkunn2rojEn44Mb1z/311Y03TCLXwiABlZOBBh9uvJAte5yetNjHCmmnh2UGfmC3ofkeFCq6fem5n9iLZ1FQlSb9rTbsZGQxFVtMffwF4TSdvOwvrhXD4lbF2aPj0TarIOx3QM1WcbwZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yBnEaR9DkedXvQtZwzTTbXHQeaJIv2TPzA0hvvEdX7U=;
 b=TrIKktY42s213IK5S0T/grmpN40UK4lpbjVoSALYU6RQKeCmxgxc85ctBBcGCaJxj7rEAai+sJAH/93AZyhtSsQZ9LDufaBhqstwjXLbAqJ8se33Toen0OmgIsM6NDTPEXEJLaLstqTf+y6/UYv+DE8DPm4/B0nJsQTVNASYag5Bb9k6+cTi9K9Zn65kHfEUDFBf6Jc+KPO1WESEUjCrJ8SNUbytNZfLyO6rmTbWi4uim8m96L5e4fABEJD2SAW8esCLTaE7nSmy3uZQptGGaW+qOtKq4ykjrUl499esRqp4Nzjt0maNkOApSAkVnna3+iaUfFzaUuU0flVlB79k0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by IA1PR11MB6290.namprd11.prod.outlook.com (2603:10b6:208:3e6::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.21; Fri, 4 Aug
 2023 21:08:30 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6631.046; Fri, 4 Aug 2023
 21:08:29 +0000
Message-ID: <115b409a-8e03-4c9d-3e05-a7570c808918@intel.com>
Date: Fri, 4 Aug 2023 14:08:26 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Jan Sokolowski <jan.sokolowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230801115309.697331-1-jan.sokolowski@intel.com>
 <20230801115309.697331-4-jan.sokolowski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230801115309.697331-4-jan.sokolowski@intel.com>
X-ClientProxiedBy: MW4PR03CA0358.namprd03.prod.outlook.com
 (2603:10b6:303:dc::33) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|IA1PR11MB6290:EE_
X-MS-Office365-Filtering-Correlation-Id: 462e256d-48c1-470f-95f8-08db952ef3d4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +n8oSVWEza/mvnHxVACUsoOz5r64AwMEx7pDn1JSvHkuVYM+EV3Hoi6BNDxqeuAaOmUlTYfOv4wn9RASjEFlaQYx9Begc0MzuRkgQrY+1hX1GUoTtIdKAWuFfXHfylknViGErT5Yr1304zh8Eg7yRyWYd+GJTv2RF3jxcAt4y6H9d36FOFkfnsfa1al4FEubzBkgdZHhl/wnk9TYLeoxJmPrUMTe4EDh++IA3+5oXJCmSBBBVYwdKyePHDLF55XtWB5LB1Z0E/TQqQyVq8s4lGJ0fuNGO9f5SBYMWFqAGKXFPVvDqmElPQM6IDv2F5R+MrNHcrAz0wXC6UJkMZ+uLv24lLu4TxEyhxufkBrdbdeZtUyX0plNiH+nh2fv501MTIaqf1SFOhEDe0tAUrdEE2nty11bNEpD7LLMw2tcA/tzZ6RSyaPEnuPE2Pzlnw5wSnJhJV38vc24TDw02NBy+JFDtkzJIKM7yIJ2IGgTkH6w5sEs1waa85dX3YN/x9NA036kqCL2oAt0z5YN62VLNgvPKd1/PyRnAHdB07acdJu9nXly4q9u/D4+tlexR/6m1ZsRaINeW/JA6DaOTjsIWk4OXyY2eSnWOhcvU5OBqQfDg/HGQJX8iEBZSuhM6zyJufMlNnpj8kMN87X6TjbNOA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(366004)(136003)(346002)(376002)(451199021)(186006)(1800799003)(6666004)(6486002)(6512007)(86362001)(31696002)(6506007)(26005)(36756003)(2616005)(53546011)(83380400001)(38100700002)(82960400001)(5660300002)(41300700001)(8936002)(8676002)(31686004)(2906002)(66556008)(316002)(478600001)(66946007)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aUh0WmFYNTU0dXFYbW9USVVyQzI5dVpZdlFuS2NUQWphWW1aWG9yRVg0bGU4?=
 =?utf-8?B?S21ZVEUzNExWTWpMN3RNT2JzU1NCRW5QN2dJeUs5UnUxSHJZbUFSNE1CRng4?=
 =?utf-8?B?L1lKcWNTZnBLU0lZRnArOS9OdUtwY0tiM2pVVDNoeFVHSjBrejBkdnd0S3kx?=
 =?utf-8?B?NmpuQ01tbUtadC9MTm4xb2hha2gxcmY2b3E3Um1CL1BXbytSZWRkcS85RW43?=
 =?utf-8?B?c2Z0T3FBQnFPNzVvWFJaNTNMYUljZVVYRnA3UmpuQ3pTZkYvVWVlTFZCdDZl?=
 =?utf-8?B?eXRmYnFaODc2VW1RZ01BMEZMTTAyclNnWWNTdTFSbWdrbXlpa1Y5ZFpvN0RR?=
 =?utf-8?B?b0VwUk1MdllzZWw2OWowaUZmanN0K1RwQSt4NHNwOHRzQ2xya0xNNFV2dkQ0?=
 =?utf-8?B?ZXRTbkhYNGNZdHoxRlZWMnYvbGVVT2YwKy9ORjZxRFF2NjVKSGdjQ0N5Mjcw?=
 =?utf-8?B?TVRUTmFrSkR6SzluTFUvUi9IN2E1ZE12Z3FQS1M1cWpJVGtMVDdLdXo2U2NY?=
 =?utf-8?B?eU82UU9BNDc0b2tjam1PSlFoUXVMa2J5YUlvL2l3YTIrVFgrK0dLWWlTVkFa?=
 =?utf-8?B?dUlhVUdEZlBreDh6eU5zMWowSzRvWjJ1NmlHSlczZndPRDhsL3BuZ1d4bEtX?=
 =?utf-8?B?SlNJRVpzSnFGd296VkhkOFI5SjdtdnQ2UWw4YjBObVMyL2pBQ2RGeEo2N1M3?=
 =?utf-8?B?TWxwL0R2NU8xeEFteTNLSG5qSVJLd1gvWTdRNnREYVpLK2Q4R2NnQ2k4T2t4?=
 =?utf-8?B?VmJXUDlVRFQvcDZiSHhkRGRpQ1ZOWDdsSHcrNkREVytEMGg3V0d6QjNzSDVT?=
 =?utf-8?B?clVnUmdDU0tHQlk3RE1FRFY4QmFhR1daUTRkQStDbzBRTzNlQnFBMExMTkFs?=
 =?utf-8?B?WkJMd1J2YWgyS2NOQTJHaTZJQzZYYmdMZ1VTSGZBZmozMmFjc1ZRREdsc2Zz?=
 =?utf-8?B?bzcweXhRY1RhT0xRL0lXcXErM1ZyaEdvbHVsc2ZoT3BDcTdaa0E2Y3l2S29z?=
 =?utf-8?B?Q2lWN3J4OEgrTms0ZGVSYVdMSVBPUWZWQzJoMWN2eUh1SDZ1VGs1bWtpSVM5?=
 =?utf-8?B?N0M2TnJCSXpqV0Q5bk5jSEs2ZUxMWGdXZTlSUU1jV3hXM20vWHB4d0NPVnRo?=
 =?utf-8?B?cTJOY2J0RzRmYkhWcjVmVUtQbFMySjg1bzlTd1lSK2xzT1RvbHdySFNaTGxq?=
 =?utf-8?B?c2M5bUh2N1ZjRzQ3QW5Jb1A3STBPU1U5VUpKM0N2WloyRDVMckpDbWdNNndF?=
 =?utf-8?B?T3VhaDB1Q3pWUTNRN2VVU0s0eUd2a0N0NkpnQkN5M0JySDIzZVdJcmo4enM5?=
 =?utf-8?B?Z0xuRytXeHFmTmhvRi91cFNub1ZpR3VWQmdXa1JBbXlSTnlYNGNTVHZzSDhZ?=
 =?utf-8?B?aHZwc2NzS1pRWE04b05xMHlEdDhiQlVzNGJyeUNqcHMvOEdMUHBzYjVYdzZy?=
 =?utf-8?B?SlNtSWI2Ry9GRnR0LzdKd1d4NVF3TVpkNFVZMUVOUkxrSndDV3ZoVDR1bUs3?=
 =?utf-8?B?TVhVQXVFQ012YTBxNjhnU1g0R3FWUmtFbWtScG0yODdVa1A0UHJqcXJ4bkpO?=
 =?utf-8?B?MFBCamVGMkMrelFxWDNqcTNXQkQzbFhaTlYyaW90NlFhM2ZmWGVya005d1J3?=
 =?utf-8?B?VTFFdWwwZ2dycEp4VFFaOVJJUzBSc2xwWERJaDFTNDZLZThrZS9EWXphQm13?=
 =?utf-8?B?OWVUK2VuNXFQdkt4MFVIM3UvSDE2WTdpaGQxK0xiLzBMdWdlLzFvZytGM1RX?=
 =?utf-8?B?cVBOc3c3WVFvdTdoeElnb3FsQ1FJTXN2alcyZ1Z0bUNydTNtemt6V3pkV0pH?=
 =?utf-8?B?cTU5b1RqeFlOSWg2RXgwR3J4U2dhSFZJRG9NRzNBQnA0WXFGalJNS1BZWEw5?=
 =?utf-8?B?VVZ3Nisya0krb0tua3VHZ29QK0hVNVBxaUVuVGV2RXUrYjMyMHhNbUNYbWl0?=
 =?utf-8?B?dTdwV2xGWGdVNW8rbHZmdFBzejRXbGpKVVFObkJvVFpjalB3V29EdXRCY0VX?=
 =?utf-8?B?elhKUXlqd1lYUXdHdHpCbTdNNGxwL2poaDJjNmQ4NnZDMkx4UHVIbVFNN3g3?=
 =?utf-8?B?c0hnSmcxVVI2MzJlbFVPOUI1a0Vyc044U2xBUEEwY1pYYW1NQVFUZVl0eU05?=
 =?utf-8?B?OTdiQ01XeGtZQmJsaTlzdC9NdHpSRW5oWDFUZjh5alQwNkd0a2NYT3lzS1hM?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 462e256d-48c1-470f-95f8-08db952ef3d4
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2023 21:08:29.6916 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kPNcl/vlZP7/SazTMUuse6X95N+s3X5JCknePCZayVgEPLx0Sgf8DPZJkXxvUbnwRL4PrQkRcKqEURhBWC42tm4V3uqlrkUBOYFEaTMzNZ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6290
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691183317; x=1722719317;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=YNs2whw/6fGd/fY7Q2B2N5f/ug1hlW+fRJd6unloXHg=;
 b=CshSTtKMeJdSA8EGXFB+JVqw+rLqPLvCe7Z5LStbEh2KdWKernb6jDxj
 kehpwe5OeoX5nMipzxBf5uIZkHWfhkIetUc5aGRJAypUYx397wOY0Xssp
 AD1ukiCarLs+PgLqLX37zsANhVdPwas2l3raovz1XAZgbszgoWYmGCqI+
 TB/13tINameWThjSwzNS64wyJJDTw2fl9DDGVm+cHjOxWTS0+xGI2nXDa
 2KiQYn78FYsEbpQJusiSr/1YqQu6Nueq5OWXFJ7oLE0qS9CgZoaeyqAVh
 AyXn4gjYua1mWE58DhGzBQpdu+7tg2ScD/HgfV9AP28NePWlFrUZKLtNu
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CshSTtKM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/6] ice: refactor ice_lib
 to make functions static
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

On 8/1/2023 4:53 AM, Jan Sokolowski wrote:
> Refactor ice_lib.c/h in order to make as many methods
> as possible static.

Please word the commit titles and messages to reflect the changes you 
are making and not a generic one for every patch/file.

> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_lib.c | 70 ++++++++++++------------
>   drivers/net/ethernet/intel/ice/ice_lib.h |  3 -
>   2 files changed, 35 insertions(+), 38 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 54aa01d2a474..d3fb2b7535e7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -1227,6 +1227,20 @@ ice_chnl_vsi_setup_q_map(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt)
>   	ctxt->info.q_mapping[1] = cpu_to_le16(qcount);
>   }
>   
> +/**
> + * ice_vsi_is_vlan_pruning_ena - check if VLAN pruning is enabled or not
> + * @vsi: VSI to check whether or not VLAN pruning is enabled.
> + *
> + * returns true if Rx VLAN pruning is enabled and false otherwise.
> + */
> +static bool ice_vsi_is_vlan_pruning_ena(struct ice_vsi *vsi)
> +{
> +	if (!vsi)
> +		return false;

Now that this is static, it looks like this is an unneeded defensive 
check. Can you add a new patch on the series to clean this up?

> +	return (vsi->info.sw_flags2 & ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA);

Maybe remove these parentheses as well.

> +}
> +
>   /**
>    * ice_vsi_init - Create and initialize a VSI
>    * @vsi: the VSI being configured
> @@ -1684,6 +1698,27 @@ static void ice_vsi_set_rss_flow_fld(struct ice_vsi *vsi)
>   			vsi_num, status);
>   }
>   
> +/**
> + * ice_vsi_cfg_frame_size - setup max frame size and Rx buffer length
> + * @vsi: VSI
> + */
> +static void ice_vsi_cfg_frame_size(struct ice_vsi *vsi)
> +{
> +	if (!vsi->netdev || test_bit(ICE_FLAG_LEGACY_RX, vsi->back->flags)) {
> +		vsi->max_frame = ICE_MAX_FRAME_LEGACY_RX;
> +		vsi->rx_buf_len = ICE_RXBUF_1664;
> +#if (PAGE_SIZE < 8192)
> +	} else if (!ICE_2K_TOO_SMALL_WITH_PADDING &&
> +		   (vsi->netdev->mtu <= ETH_DATA_LEN)) {
> +		vsi->max_frame = ICE_RXBUF_1536 - NET_IP_ALIGN;
> +		vsi->rx_buf_len = ICE_RXBUF_1536 - NET_IP_ALIGN;
> +#endif
> +	} else {
> +		vsi->max_frame = ICE_AQ_SET_MAC_FRAME_SIZE_MAX;
> +		vsi->rx_buf_len = ICE_RXBUF_3072;
> +	}
> +}
> +
>   /**
>    * ice_pf_state_is_nominal - checks the PF for nominal state
>    * @pf: pointer to PF to check
> @@ -1758,27 +1793,6 @@ void ice_update_eth_stats(struct ice_vsi *vsi)
>   	vsi->stat_offsets_loaded = true;
>   }
>   
> -/**
> - * ice_vsi_cfg_frame_size - setup max frame size and Rx buffer length
> - * @vsi: VSI
> - */
> -void ice_vsi_cfg_frame_size(struct ice_vsi *vsi)
> -{
> -	if (!vsi->netdev || test_bit(ICE_FLAG_LEGACY_RX, vsi->back->flags)) {
> -		vsi->max_frame = ICE_MAX_FRAME_LEGACY_RX;
> -		vsi->rx_buf_len = ICE_RXBUF_1664;
> -#if (PAGE_SIZE < 8192)
> -	} else if (!ICE_2K_TOO_SMALL_WITH_PADDING &&
> -		   (vsi->netdev->mtu <= ETH_DATA_LEN)) {
> -		vsi->max_frame = ICE_RXBUF_1536 - NET_IP_ALIGN;
> -		vsi->rx_buf_len = ICE_RXBUF_1536 - NET_IP_ALIGN;
> -#endif
> -	} else {
> -		vsi->max_frame = ICE_AQ_SET_MAC_FRAME_SIZE_MAX;
> -		vsi->rx_buf_len = ICE_RXBUF_3072;
> -	}
> -}
> -
>   /**
>    * ice_write_qrxflxp_cntxt - write/configure QRXFLXP_CNTXT register
>    * @hw: HW pointer
> @@ -2185,20 +2199,6 @@ bool ice_vsi_is_rx_queue_active(struct ice_vsi *vsi)
>   	return false;
>   }
>   
> -/**
> - * ice_vsi_is_vlan_pruning_ena - check if VLAN pruning is enabled or not
> - * @vsi: VSI to check whether or not VLAN pruning is enabled.
> - *
> - * returns true if Rx VLAN pruning is enabled and false otherwise.
> - */
> -bool ice_vsi_is_vlan_pruning_ena(struct ice_vsi *vsi)
> -{
> -	if (!vsi)
> -		return false;
> -
> -	return (vsi->info.sw_flags2 & ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA);
> -}
> -
>   static void ice_vsi_set_tc_cfg(struct ice_vsi *vsi)
>   {
>   	if (!test_bit(ICE_FLAG_DCB_ENA, vsi->back->flags)) {
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
> index cb6599cb8be6..f24f5d1e6f9c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.h
> @@ -76,8 +76,6 @@ int ice_vsi_cfg_xdp_txqs(struct ice_vsi *vsi);
>   
>   int ice_vsi_stop_xdp_tx_rings(struct ice_vsi *vsi);
>   
> -bool ice_vsi_is_vlan_pruning_ena(struct ice_vsi *vsi);
> -
>   void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create);
>   
>   int ice_set_link(struct ice_vsi *vsi, bool ena);
> @@ -128,7 +126,6 @@ void ice_update_tx_ring_stats(struct ice_tx_ring *ring, u64 pkts, u64 bytes);
>   
>   void ice_update_rx_ring_stats(struct ice_rx_ring *ring, u64 pkts, u64 bytes);
>   
> -void ice_vsi_cfg_frame_size(struct ice_vsi *vsi);
>   void ice_write_intrl(struct ice_q_vector *q_vector, u8 intrl);
>   void ice_write_itr(struct ice_ring_container *rc, u16 itr);
>   void ice_set_q_vector_intrl(struct ice_q_vector *q_vector);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
