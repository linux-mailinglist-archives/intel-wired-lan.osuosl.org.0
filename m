Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A77586EAD45
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Apr 2023 16:42:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 233F96FF8F;
	Fri, 21 Apr 2023 14:42:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 233F96FF8F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682088126;
	bh=4q01Halg1fXvDlXeLQltx2j/6q6ZLVXjdNzuI4j2Cu0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ag5TJUryjIj+WV2fDRePFkgs1hx5EYOS4cDYUtFBuAHpnIdBu+4290HDpa+D565Ul
	 Y86+HUwqWJ0fkTqKRwww2dI22vDKujx4l4oFnD030s29e6gHKnwvTCkSpwc8pgbOoH
	 d0wp6Tmnmp9PcW/pwA+gaHdUz0PH/7IkIpV6c3HecLVmwXYeKdrcaM60Mx9lcYOvlt
	 6g8gYYcEF5krRF3tzRELUKGQDWMODWaJJdIC9cUrDkFuzsDHyVSMCLXNFVkANtYxZu
	 +0I6QVB6HTkPSk3vC0an/fLPFEWa7RY27qpDw8egtoBL4aL0ozJS43l4I8s+A9+E5i
	 4VP4Rv5S2kJDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r2Wki_M4eDch; Fri, 21 Apr 2023 14:42:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F15AD6FF7E;
	Fri, 21 Apr 2023 14:42:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F15AD6FF7E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D60D1C279D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 14:42:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 651F181D70
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 14:42:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 651F181D70
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5yI9b2UYCM0M for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Apr 2023 14:41:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8993981D65
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8993981D65
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 14:41:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="432282887"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="432282887"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 07:41:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="866722299"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="866722299"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 21 Apr 2023 07:41:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 21 Apr 2023 07:41:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 21 Apr 2023 07:41:57 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 21 Apr 2023 07:41:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QwKBjWtEq3UApvXk25HA6Zhm/ICC/7psSrUYirZNa/koGMELvG2jbtCjb2TBvMjvE7m3DzVb+sPFxh1O0KV3W9yjG7hprpfWcr5g1XKJK3sduPRahJ26hFmSqFhPu5tW2y3aCqQOWa+G1NYJcFSy4pZHgkHNTGzIZ2h5hk766Ncv4I2sPlUE4HjPFQhybkKjcZIFJwP6uvaGRqhSPRS7KkRI1tkcXi6+/C4b2AV/lruf8yCwDLu6WfE+iaH8OM7gJLr7DWJKVc0UaTY9UWDJTZ0tsQSSE2qZQ5qEd1XPrNa2KrYzosqnn40Vhw+/YelXyDaz2u30380G6s/gz6lwbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=svLIV4/UP3Tgitbgdl340ntJ5oKC99htqmFmxG4KTeM=;
 b=GW6HQf0vzbJTYfzc2dQcJuAyYgXfKjSCcYrSm32Ert82zf530yjbX1raSlQzQKvHkUL+D+oq9MHoCdqqwljcFbrBNYK2t1N4IyONqRW/X30nwS10TqHCs+VSBd6VJNUQeuVnbH/Q/IrZfZVlpah/8LFuxZcip57mKgXRCMV1xdiF8NshCw8oiZfzQgyN3L93D3CXP9skx0IJ9DDlWNJ/bryYLc6uBqzKBFi7rfzxhnuUP8cthFsdz84JRtBeek8iHC+NMzHUZy4C2QgzGOjL0NnAxksaYcyV9NMDt4lQM6RksvfHDNP3McsUXCJl/dbO2aEbfNSasaoak+YMgoJupg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by SJ0PR11MB4847.namprd11.prod.outlook.com (2603:10b6:a03:2d9::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Fri, 21 Apr
 2023 14:41:50 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::4c38:d223:b2ac:813e]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::4c38:d223:b2ac:813e%5]) with mapi id 15.20.6319.022; Fri, 21 Apr 2023
 14:41:50 +0000
Message-ID: <ee3d3162-bba6-d65b-92d4-e44930b9110b@intel.com>
Date: Fri, 21 Apr 2023 16:40:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Wojciech Drewek <wojciech.drewek@intel.com>
References: <20230417093412.12161-1-wojciech.drewek@intel.com>
 <20230417093412.12161-8-wojciech.drewek@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20230417093412.12161-8-wojciech.drewek@intel.com>
X-ClientProxiedBy: FR2P281CA0058.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:93::9) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|SJ0PR11MB4847:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ee02ec7-dcc5-43d8-d958-08db42768a7d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DnxuD0pO3TV4rdJSOouE525qdnbDIKeol7UcDZaa+DEsxooqI4/gIAPXV5ecavm8vrhmiXQfAJAjnMSMialxrJu644upN8tEOqM9O2/VmpWOk9T+cUhEo4IPSfR0KNVqZBeY9V1qlgID3CX/x6MlAoRAk7qSZVAZ63iEAZUJD8a+PEit3GNYeu/XBmAFmzMiDiJpIFK8blTBGqDApQIm3lUtuoKd29LwWOomNlyJwKVVqD4U1Wmv8SW+fjgPjZz4VGAIuW+Sqg2iM6nSe6Ox9wPfYDTaKCn6qoM30iVZ0PL9Yhz9pf7FJqtSBWt47s584L6efosqx8wXhbP2O00DiC47lYP4ZM+Py9LlThlFb11kTFtGhtf7OtmqKYRPvzZ2ZAD/TlibFHXwiSCXNKi59RsIeOigIjQcGMrKN+AWHwdELRp+SY9u34FeUG5u8/RUrPUjXIOg8uUu/zS8lfrN3bcS+YbUFmXI4ToojKbMI8SJ0ZZX5275AyhJNck+uzTLUrvJiFDdXK0VveyQ7pcPeUbsBiIcO4lJ48RRtXtGSNzHJFElRorJgEoIVa08PtphES4ud9PQXB2W+CiX+X2bwDmloNF1S057Ekj4HKaAIu6IMiZnDtAj+3DesdTY5pMFwc/sAfjUWGkohrMtGHClKQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(376002)(366004)(136003)(39860400002)(451199021)(82960400001)(186003)(38100700002)(6506007)(6512007)(26005)(31696002)(5660300002)(2616005)(6862004)(8936002)(8676002)(2906002)(83380400001)(478600001)(37006003)(86362001)(6486002)(36756003)(66476007)(41300700001)(66556008)(6666004)(66946007)(316002)(4326008)(6636002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?by9reGZtRlJxN0NDOGJFM3gvYy8yT3VTbmZYZGQ3eExFTUhmcVl2cWw0OVNG?=
 =?utf-8?B?bUczR2NIZnBXREVlcUZReTdjeFRLNjZaNFhWVUJSaTJuYS8rT2lQQ0JPVEpq?=
 =?utf-8?B?Ynd4YTIzY29HWG1HQVVyRU5RLzQvSUV2QURGTmJvNGF0Ly84SjFOeUp6aUo4?=
 =?utf-8?B?Y0V2dGNRTGxWdXAyUFVqVjczTmdIcE1WeTl2WFhPbWNSQVNRandYeHA0ak1w?=
 =?utf-8?B?bEVWb2VaYkZMUEZyaTljUllvQ1RPaHlLMllwSmhlaGJoQ252VnNZalM1UEZX?=
 =?utf-8?B?TTNHWlZGV21uWVZFSVBRZmdXM0RsNVo0SGM4N0xYVTJycG9rR3ZNRUpSaWwz?=
 =?utf-8?B?YmJMaHgxUUpvbVRQNHpRL2ppZmlQT1JRNmpSeFBwRVNZRC9WMEJjdlM5UzhC?=
 =?utf-8?B?ZzBKVU8yTDNKOHVCTHFIeVRaL3BPUEVuUGRyeFBZN0RhSzc4c081REtmZG5p?=
 =?utf-8?B?WnJXY3pvMUVTQ1hKWWY3TXJySHlsR0JlV0x1TWxNQitmS0pSOFdyWGhaTm8y?=
 =?utf-8?B?aDk0bGV6Z1BnTWVzM1FTR2JsbFM1UFdGYU1aWERVMnRCdVRSZmRGTFpTV1hy?=
 =?utf-8?B?TWpCU08yTytSdUhIbTF3dm94bXFCZW1JRjR2bmlnMVdkU0FHMTFoK0FZOHRr?=
 =?utf-8?B?dE51L0Eyb2NFcWlZeFVXWGhrMUJLK200SGhhY1BYdCs3aitHclhFajZ0V3pi?=
 =?utf-8?B?dTU1RmpKV21ET0RiZ1VwWmx4aFJnbnhnRVZOb0tmSWxRcmczWmdqdWY0YVJL?=
 =?utf-8?B?UzYwWHJxbEFFQ1Q4RllkNnV4OGE5VFBHak54U3NGeWY4NjkxRnVLTk9jS3Fv?=
 =?utf-8?B?aDJmN05uWDFDOVF5dkFLSUY0T3Z0RVREalo4VkoyV2lraU1IS09MUXQ3dHhB?=
 =?utf-8?B?RUpwWTBHazRmMnMwZVZTVmxqL3hKaDJiM1IxSmRUcGdnQWNvU0RiT2s5VjVr?=
 =?utf-8?B?T2RGNXp5Y2g4bDVCM1NpSzBGRGdPNC9UTkNqSmlpUTVFNlZ5YkpqV253SzV2?=
 =?utf-8?B?YzRRcWdKdmRycWNOcEdIOUZra0R3VC85WnNtdWpqSmFaMVpRS1cyalV2TktO?=
 =?utf-8?B?WDBaMUpScEZPMWdWQXhQMUFMKzFZRXQxSXEvQUYxdmNRTkRUdDZmQkozV1c2?=
 =?utf-8?B?b2QwaW5DRTJOSkZ3N2EvN21pRHdLdkJXbnVKaysvK3d4MUxMbVFzMTlRNmdm?=
 =?utf-8?B?TkpDZnRzeXR5Zis3WU9qZ005elR3T0lNWktPZ2w1VXlKNHV1MXdhN1hTNGJs?=
 =?utf-8?B?NHdhdmtacFhyU3JrT1hmcE1RdUhUQktGYWhveG1Fbksxdk8vcVBNMFVkeWFC?=
 =?utf-8?B?bkVVY0M2RUpKZnNSVWllQ1ZMTi9yM1ZSUzNaZnIybzNyMzJEOTdTdDNrWTlB?=
 =?utf-8?B?VGVPWExnd1RxU3FKbzBzUHlMYTF3b0VwUmswVjBMdk83VDdTUTZUcy9jbjNp?=
 =?utf-8?B?TFdhQ2dldkcxR3RiRUJUOGpUWC91NC9LYUtsdHhYT1Y0eGJlWmh2NjF3YmVV?=
 =?utf-8?B?WDJLV0dEQVNoNHVkWnhvRFFocmFxa3hrTGQrZHJRSDhTR3dkeGt3elplcWJ4?=
 =?utf-8?B?d0JFTHBaV0RabEcxMW9FamNzQmVqVDIzVUVOOUxLSjg4YitVd2pIWXdWYkx0?=
 =?utf-8?B?YmFENjVYRThYOC9STGZjZTdTY2RRa0VJQjAvSDQ4RUt1TFdIa3B0eDNFQlMy?=
 =?utf-8?B?RlVKQ2o4cDU0S0NZTnExT2FEc013aWs3U3lkNUczQlNhcEIyOTUvaXdTNGxl?=
 =?utf-8?B?azI3VmtmK2NNamhzUVlSZDNOOTlQMXdtWGxDQUI2MVpLZ1dWUDA4R2xESjUx?=
 =?utf-8?B?dk1Rb2VsY0JqM1Y0Q3hNZDcyY3hsWCtPT3NaRFNQdXE2blA0cmpNVUNGeUhV?=
 =?utf-8?B?clhKSmx2OWdGTXZRTmNwc3BsRzkxdTNqcmk0UVkySWpwVE94UjBYV2ZBMXJ0?=
 =?utf-8?B?ejVmT3NrZWtvZjVUdmVJbEpaWDhtZklYSGZnZ2c4YmU4SW5Ha0N3SDl2N0Mw?=
 =?utf-8?B?OUwwZG5PRVB6SEZ5VmxQMCtPUER4N2xlQlp4VEJhbDU0QS9ETjZoMjArcElL?=
 =?utf-8?B?ZmlsT2FIZS9zSEQ4WnFqVzhjVit5SllyYmlPZjM0RFk5SmRoWnpsby9PQXRz?=
 =?utf-8?B?UXZvZXZqcUtQc0dZU05kRkpXdHMvOUxTamVVTk5Jbk9pbVdaR3ZGM2EyWkRm?=
 =?utf-8?B?d3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ee02ec7-dcc5-43d8-d958-08db42768a7d
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2023 14:41:50.3345 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XSAra1aGzpFUYqVdD0DZChpfhfO18zTkMoPHo32B3dtXLqjHWZUO4OxQcivTnd1OqE0sHOVruMyG9ChWBeuvCvXKNjtOmsywEQ4GRHq6qpY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4847
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682088119; x=1713624119;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BpqOurGCAPnHpk45A2nqqCi0jmFkTh9PcsMW6op1x1Y=;
 b=ZRASn5oMdKI3DbzxeAKriLNEP0qCN79OZTfRp9caa+/m7gOIz2s2kGOP
 X5YVscL+wWGG9AszEm+b9DoWkaqBlAARd+806oKYgM0lVOyej9b/CSnIj
 BxeH+WlFAQgWyV/wlZF8om2eOggrXPkOeOimohMy2Vv8FFV47r06OZGxN
 N5EfKVcfz+BfaFYLwNjpict3a7TQAz+22305fgvqAoF9OOaUSltZyGrae
 Wp+UaFWc5a6vFITS0IH15yASO/muBVVOAuDKGF7fcSZWSQ75RqpMy9Si2
 yYB5xxPh9ZzZqe+WYrlQ/gB6Nkwu+Mut9YguqzlrVTGT/GaldWnvn2qiY
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZRASn5oM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 07/12] ice: Accept LAG
 netdevs in bridge offloads
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>
Date: Mon, 17 Apr 2023 11:34:07 +0200

> Allow LAG interfaces to be used in bridge offload using
> netif_is_lag_master. In this case, search for ice netdev in
> the list of LAG's lower devices.
> 
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_eswitch_br.c   | 40 ++++++++++++++++---
>  1 file changed, 35 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
> index 82b5eb2020cd..49381e4bf62a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
> +++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
> @@ -15,8 +15,21 @@ static const struct rhashtable_params ice_fdb_ht_params = {
>  
>  static bool ice_eswitch_br_is_dev_valid(const struct net_device *dev)
>  {
> -	/* Accept only PF netdev and PRs */
> -	return ice_is_port_repr_netdev(dev) || netif_is_ice(dev);
> +	/* Accept only PF netdev, PRs and LAG */
> +	return ice_is_port_repr_netdev(dev) || netif_is_ice(dev) ||
> +		netif_is_lag_master(dev);

Nit: usually we align to `return` (7 spaces), not with one tab:

	return ice_is_port_repr_netdev(dev) || netif_is_ice(dev) ||
	       netif_is_lag_master(dev);

> +}
> +
> +static struct net_device *
> +ice_eswitch_br_get_uplnik_from_lag(struct net_device *lag_dev)
> +{
> +	struct net_device *lower;
> +	struct list_head *iter;
> +
> +	netdev_for_each_lower_dev(lag_dev, lower, iter)
> +		if (netif_is_ice(lower))
> +			return lower;

Here I think the kernel guidelines would require to have a set of braces
(each multi-line code block must be enclosed, even if it works without).
I mean, I wasn't doing it myself using the rule "as minimum braces as
needed to work", but then my colleague showed me the doc :D

	for_each_lover(...) {
		if (is_ice(lover))
			return lover;
	}

In contrary, this:

	for_each_something()
		/* Some useful comment */
		do_something();

is not mentioned in the rules as requiring braces :s

> +	return NULL;
>  }
>  
>  static struct ice_esw_br_port *
> @@ -26,8 +39,16 @@ ice_eswitch_br_netdev_to_port(struct net_device *dev)
>  		struct ice_repr *repr = ice_netdev_to_repr(dev);
>  
>  		return repr->br_port;
> -	} else if (netif_is_ice(dev)) {
> -		struct ice_pf *pf = ice_netdev_to_pf(dev);
> +	} else if (netif_is_ice(dev) || netif_is_lag_master(dev)) {
> +		struct net_device *ice_dev = dev;
> +		struct ice_pf *pf;
> +
> +		if (netif_is_lag_master(dev))
> +			ice_dev = ice_eswitch_br_get_uplnik_from_lag(dev);

Maybe just reuse @dev instead of one more var?
Or do it this way:

		struct net_device *ice_dev;

		...

		if (netif_is_lag_master(dev))
			ice_dev = ice_eswitch ...
		else
			ice_dev = dev;
		if (!ice_dev)
			return NULL;

Otherwise it's a bit confusing to have `if` in one place and `else`
(implicit) in another one, at least it took some time for me ._.

> +		if (!ice_dev)
> +			return NULL;
> +
> +		pf = ice_netdev_to_pf(ice_dev);
>  
>  		return pf->br_port;
>  	}
> @@ -719,7 +740,16 @@ ice_eswitch_br_port_link(struct ice_esw_br_offloads *br_offloads,
>  
>  		err = ice_eswitch_br_vf_repr_port_init(bridge, repr);
>  	} else {
> -		struct ice_pf *pf = ice_netdev_to_pf(dev);
> +		struct net_device *ice_dev = dev;
> +		struct ice_pf *pf;
> +
> +		if (netif_is_lag_master(dev))
> +			ice_dev = ice_eswitch_br_get_uplnik_from_lag(dev);

(same)

> +
> +		if (!ice_dev)
> +			return 0;
> +
> +		pf = ice_netdev_to_pf(ice_dev);
>  
>  		err = ice_eswitch_br_uplink_port_init(bridge, pf);
>  	}

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
