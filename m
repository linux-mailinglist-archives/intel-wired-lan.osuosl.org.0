Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1927829EE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Aug 2023 15:05:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 069A0415E3;
	Mon, 21 Aug 2023 13:05:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 069A0415E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692623121;
	bh=I5q8qLBF0XuzLBPekBv37y5M2CR/w/v3Ng9HRX/c+IU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DTlRn9fnhnn3QCPImmQ+TUb0D++n2yujZSqe0czvYQ17bbtciJ8m2ZKwdRQq8jn/O
	 R15UA7HJJ6jN5iAcKHnXUHy//I5vvjJqtHSPi7KZUvRz7aVtpwZeOhOdQ7UNZ3hVa9
	 VgptrHUYqqD3FR66oy6qpu5yhNA0FLR9ODuO3PiVDw8JrgYskj16mS/rAnL2Qa2Iuz
	 l7ROuKSAD6yEosdOcSNjJDMEAxPsvBvJnPAVpujqL+hNiu1TqlIz8/KS7Cw+w+U3Gp
	 wtuGME1mKA4n77ZpqZsjGsqfPGydCxGDKcU3VHjEOq0I/IZxSOxa5p8RiJ/+I2kxg/
	 C6jQRamwa6Iag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 91Mnuw-8CidT; Mon, 21 Aug 2023 13:05:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87C904094B;
	Mon, 21 Aug 2023 13:05:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87C904094B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 36EDE1BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 13:04:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1C63E60FE5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 13:04:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C63E60FE5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aGejPR6XnTTq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Aug 2023 13:04:44 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2790060EF3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 13:04:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2790060EF3
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="439956840"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="439956840"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 06:04:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="850168753"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="850168753"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 21 Aug 2023 06:04:40 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 06:04:37 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 06:04:37 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 06:04:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OQIqx+AHGZ/Rs+pGlky1DBNS6faMqIzFfDAdQ/uQ0eCaZtT91nvByG2gX9Q84IzBGG2TY9QKEqfvP6AwgArShV4iKlarouuCy/mXaUtczAlp6c7Zq+qMLaWRsEqPa2ZR07UCQ07Nys/togyiTVIG9EVDHgWMuRQScoW8JnJDthNcZll7F0bUt9yIA4CUS8EN9PvjV8Fwi8bnvnV7Ejmz/AD0K0yUl2bOMvk26/ySX95CHGp3ulh6NvBbsl8aRUrcfoiJQ+8gH+YhOuPSlMrMoYxtCeMsUjzFNEqlxgExf3Mh3+uT5gZjpcMs8AjjVoiMSpgX2Jo1AzJA/7DYlPLg9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MBJeYYC3w6UsKoxcGFR5y7pmG6jAcmB02d0guuDhfZ0=;
 b=GGuMFELsUUK1yf1P1HF/BFckPxwq8SDe+owc8/x5qILW9tr8kBouOJ+D5MVR2f1qkN4UuoOpdmN/H4mm68CEN5ppNhyPNXMlig2/VOxMbZAVbfVtK/rcP5n9xIkWun8IWo36DUsbcSrdQLd/qNSer723WqawmTBwuRYB+aGLc5WxEIACcO4csx0IfkksqFatONWgmkqvSbXQNZUUTmr7E9+ORjNArqvsOs/4UVjAmfoipI91M7mK314YTL1aEZTEEkhdcXi5RcHvJ9reo8Vr5jzlSir0NgCPMl0ustfDGh6QKb6Y5mhVdTN/zwu/uulMTvEMuoRARcFNL1UmpoYD+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by MW4PR11MB6786.namprd11.prod.outlook.com (2603:10b6:303:20b::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20; Mon, 21 Aug
 2023 13:04:24 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a%7]) with mapi id 15.20.6678.031; Mon, 21 Aug 2023
 13:04:24 +0000
Message-ID: <a059f997-4703-5b83-43ef-7790e53f93ca@intel.com>
Date: Mon, 21 Aug 2023 15:03:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Paul Greenwalt <paul.greenwalt@intel.com>
References: <20230819094025.15196-1-paul.greenwalt@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20230819094025.15196-1-paul.greenwalt@intel.com>
X-ClientProxiedBy: DB7PR02CA0005.eurprd02.prod.outlook.com
 (2603:10a6:10:52::18) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|MW4PR11MB6786:EE_
X-MS-Office365-Filtering-Correlation-Id: 4df5e4f3-994c-4567-2bbb-08dba24724b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I4YjSYhEWMpMzpJWFzw7blCOSkDBQfA2PnHE5R5RobORRBxVUMWZAU5r/6KRlD/+rL1anuCx/7nz6lnGyJ2/rzxLNtNpoQV96h5E5UDHSuA8qmp6CAt+tJRjb/QY0X52z+08mF6KokLieqzNSuKMvZVtX6r3HJNgD6CMgxoTguMLb56ix67tjZNsIyu6w+mmAYU94lNwT/VuP2YFCRTITXZtQzwvCccJTZoR7gWl+luB7gqTIStF0lg0gHdZQr/Hc5B9FoqsBurZ/zO/66ovjApS4jP54+T2jOaWju6JW8z777mYQqPcJnmo3Mi+UYpVvEgGrZZubS5zuOHLBZronRRgbr0Bo1ge7VroxzpkkoGX393GSFqqTgmANKjw5bhG4MYSVqdhUKGlacgFtXbPjMBH8MddrDJOZiIMdaj1h2qd/Dfub/Ni+5q0DqaoGhpKR+771Iy89xX2M9LRW4pkESEsKDlLShItInHW5slJJjn5W/Bik3dZSHdD8jPNs/RRskMPGZ+md3IRtyZ1wKBc17wU+MeWV/IMaxtaQZ1BDmuxyd8/fHiRaAvYqGRnly/liG6NFSlTWv9rpIxx4NKwvRRbNHMOlIpFMLBVryxMxoMSfpn4xAFj1GkoMh+g2gpnFzsGHHcc+me0x7UX1Xi0Hw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(376002)(39860400002)(366004)(396003)(1800799009)(186009)(451199024)(6666004)(6486002)(6506007)(38100700002)(6512007)(82960400001)(31696002)(36756003)(26005)(2616005)(41300700001)(37006003)(66556008)(316002)(2906002)(66946007)(6636002)(66476007)(86362001)(5660300002)(6862004)(8676002)(478600001)(4326008)(8936002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bjZ4MjlLNVZGMWxVWjdndzAySzZQem1XeHBOK2puV055SUF0OHVzMHc1UFhN?=
 =?utf-8?B?R0IvbjN2b2xBMUNkUXlsQi8zNENPNlp1UktXWFpGWDFra1RDK01RaktrdWdI?=
 =?utf-8?B?MkpYSjRsK0toVjhvSVhhU1pJYzExYmtLdFZqRjlPRnJUb01IdHI3V3k5eE14?=
 =?utf-8?B?L2p6TmhhK3J2K29rb2FHUDhnSWgwSjNaVlZCMXdKbGN4MnJvWCtPNHJTN2px?=
 =?utf-8?B?R3pvdXdRZlJvWVBSM0E2TVJXdEpEUjd3cjBzaXUzL3Q0TVRURHVERzlWTitl?=
 =?utf-8?B?V1ZBWGhtSmJWbXFUT2J3RFpiRWxvclJLMFd2RHJVK1lzMm9HZ0wxTWNNSHlX?=
 =?utf-8?B?UTFneTlvYi83dFgwaXQxeXVkS01Wayt1Zmh1c1lwMGoyNXc4a3ZBbFVndGVy?=
 =?utf-8?B?cnR6NURQcW1ibHE1ajFWZExPbkxubE1nWlhuZm53ODBNM1JGdHpnZm9xdE5r?=
 =?utf-8?B?SVV5YzVYYUREd1g4eVUyNnlxVFFKcUlLMWp4VkZic3BqNDc2Qyt2YkIzRm5K?=
 =?utf-8?B?REwxOFZsaHJoNFRzY1NCZm94dDk0cm82MmllQzBBeXdIVUNjTFJFRnJKb1Iw?=
 =?utf-8?B?T0V5MDVUaGdWZENLQnpkMDBrNHROL3BNZFVpSHBvVURJbUpOOTZWSGsyYmdB?=
 =?utf-8?B?REFHU3pKQlNWT0dQNHpqUDN4SjhEaXMyRVFWU3NBbjNMcnVYMDRHSVh0azdu?=
 =?utf-8?B?dFo3RFUxWUZiZWNHb0ExSjNKaTF4bVkwR01IcHlFcTUrVkNNdjB5N0VTNzd5?=
 =?utf-8?B?YTA1YVVLQzRYak5YUnVEbEJVWjBUSDFXQ3JIaDA3dG90UHJyYXdvbVBaMDJ5?=
 =?utf-8?B?Y2R5QnVsZitOMThEODlsSGZweTFiVjlIekorZTZhRGtBcFBVYXIwOC9RT215?=
 =?utf-8?B?UzZlcUd2YWFZSjBJRUkzSnVMS2wyRWFWQlZhOC9Lb0NNN0hEbExhWHJ2anBh?=
 =?utf-8?B?blJZMm1YREpaR2wzczVja0IrWDRUTGprZUlwcnRZY2l0bk5vUUpYMmN2NWEv?=
 =?utf-8?B?aFBzYmRiUGxmeFd3cXh0eFUvZEo2R1pFMytRT3JlbHJFL0FtQWJLOWZYZmJ0?=
 =?utf-8?B?RThiWFVvVlhWZU1EbnNFUEZSbEIrR0hrUko1TEd1VEpsUk5XMXFlSTJnWnU5?=
 =?utf-8?B?V3ZoZUlkaGF1YWRQdkRwQ3ZlN1hpVW11VXp4Q1JZTkdkZEhJYUx1U2UyTTdp?=
 =?utf-8?B?TnZuSVMxU2xwN0xoYTBSZktrSUlxOUpBdWRweE1RR21hQ21LWi9rd1RkZnJR?=
 =?utf-8?B?NFk5YmRTdGE4T1VzdklJcE1IVnNZaCs0eE1aTXBsbDZaakp1VEN6M3FuYmI0?=
 =?utf-8?B?QTc3Qk16UEZBOVFJZ3BCUGw1aDE0VHFUVVRKU1RrdmF0b0NnNkp6c2wxcnh2?=
 =?utf-8?B?WU9xVVI3NVBpSGsxN05iZW1QNlE1UFp1T0gwMElacFlOYklhS1Z3aVBGeUF0?=
 =?utf-8?B?WXN6a0hQUXBHSnNZemVGUTZ5a2h5aTJBdGdIcHcwNUtsbEZTcS92Mlh0cjA3?=
 =?utf-8?B?bDRxZC9NWVJENG0zWkpLSlcvSDZGQ1lvM2JUYTh5VXRyZUtCZTYvSTRtZzV5?=
 =?utf-8?B?ajB5djY5OTE0c2lQWWJ4elkyQXEwbE16aWJYT0lNN1lqcHNQQytWRE5ZNXoz?=
 =?utf-8?B?NkZEd0FZVThxeHAxc2xUY1U0NFhJVDNlNkdoY3F6d0o0VkRKNzJLbExQQlhF?=
 =?utf-8?B?WFB2aFJNVUNNT1hNYTM1MWNJOGMvWHBoSTNwR0NVM1d2dEp5QitIMTFTSHAy?=
 =?utf-8?B?cll3UmxVMFdvYW5QaENScUUyYzJjVzcyOXdxczVNbzcrRVQ1UzlLYkxtbzF2?=
 =?utf-8?B?eDNUQlRoVzYyWERtalhxK1FvTFoyd3FWdzBZbU1naE51RFhPZ1hob3ZoVmE4?=
 =?utf-8?B?VjVTOHR3TzkvQ2RtbnN6bGcxSnBZbGoycGg2aEM2VjQ4NGI2WDYrWDlQa3NT?=
 =?utf-8?B?enVPWmhsdEF6U1dITDlIVVVYZGtWQy8wSFpxWGw3M1R2cFowZlU4d1FMUzhO?=
 =?utf-8?B?ZEU3cm1TOS9tN1k5RVNJbkduV1NVOWRvbGhka2MyTEpnYUdTVEU3STdrM0VN?=
 =?utf-8?B?RU5xN2QwY1hkSmVlYjVLZXdJVUdQdERPUElpcEROUmFTejJ3b1pqdG5KSVlE?=
 =?utf-8?B?UU5GTWh2enY1K28rNFlxUHBsa2c1MEd4N1BISUNlMStQL0lYeXlHVFU1RDNw?=
 =?utf-8?B?Ync9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4df5e4f3-994c-4567-2bbb-08dba24724b6
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 13:04:24.7597 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xYGLVMDJvagejtnahVsHy7NhxWAQbYvkeJdAKwa4hbVKJf6+084Wp3lSBrADUubFppdNPxO08kLLroATcEM0mxqhQoP/I402BgRTAgVqqmE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6786
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692623084; x=1724159084;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dHXQKAeiDvtRG6II389yywxdqfvT6k9laCrNMTTeD30=;
 b=m3Jk6UK5okbm/nb+TWBq0LVZStDFi+mVdd9MEacFUVy0Gimd8JX1Aal/
 biMmNeg0COMmBT/TlYsPp51AdCF4XIvhkK/evh+eLsAvsHPWFYpw/n7LO
 sSZyEhqKgTkg2CZuRSQb3dAla7V+JqH7UrNkB/fuCZKvec/1w7dTAc8OA
 SKLDgEDFO+LO1qEXLlJ0kynU55PEfmfo59FikythHZsrteEyJcyegl+KB
 HDtQ3btbW1b2kZaQafECZQZtJg/Ysv6/WwzrTdBFOIkGr1/stBo0YYG49
 3i6MNy24kU6n0asRmuRpcTRRQZI6iejNqXFfbL3AkU3MTBuLlJEuQJ8Dl
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m3Jk6UK5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/9] ethtool: Add missing
 ETHTOOL_LINK_MODE_ to forced speed map
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
Cc: aelior@marvell.com, andrew@lunn.ch, intel-wired-lan@lists.osuosl.org,
 manishc@marvell.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Paul Greenwalt <paul.greenwalt@intel.com>
Date: Sat, 19 Aug 2023 02:40:25 -0700

> The Ethtool forced speeds to Ethtool supported link modes map is missing
> some Ethtool forced speeds and ETHTOOL_LINK_MODE_. Add the all speeds
> and mapped link modes to provide a common implementation among drivers.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  include/linux/ethtool.h | 80 +++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 80 insertions(+)
> 
> diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
> index 245fd4a8d85b..519d6ec73d98 100644
> --- a/include/linux/ethtool.h
> +++ b/include/linux/ethtool.h
> @@ -1069,12 +1069,33 @@ struct ethtool_forced_speed_map {
>  	.arr_size	= ARRAY_SIZE(ethtool_forced_speed_##value),	\
>  }
>  
> +static const u32 ethtool_forced_speed_10[] __initconst = {
> +	ETHTOOL_LINK_MODE_10baseT_Full_BIT,
> +	ETHTOOL_LINK_MODE_10baseT1L_Full_BIT,
> +	ETHTOOL_LINK_MODE_10baseT1S_Full_BIT,
> +};
> +
> +static const u32 ethtool_forced_speed_100[] __initconst = {
> +	ETHTOOL_LINK_MODE_100baseT_Full_BIT,
> +	ETHTOOL_LINK_MODE_100baseFX_Half_BIT,
> +	ETHTOOL_LINK_MODE_100baseFX_Full_BIT,
> +};
> +
>  static const u32 ethtool_forced_speed_1000[] __initconst = {
>  	ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
>  	ETHTOOL_LINK_MODE_1000baseKX_Full_BIT,
>  	ETHTOOL_LINK_MODE_1000baseX_Full_BIT,
>  };
>  
> +static const u32 ethtool_forced_speed_2500[] __initconst = {
> +	ETHTOOL_LINK_MODE_2500baseT_Full_BIT,
> +	ETHTOOL_LINK_MODE_2500baseX_Full_BIT,
> +};
> +
> +static const u32 ethtool_forced_speed_5000[] __initconst = {
> +	ETHTOOL_LINK_MODE_5000baseT_Full_BIT,
> +};
> +
>  static const u32 ethtool_forced_speed_10000[] __initconst = {
>  	ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
>  	ETHTOOL_LINK_MODE_10000baseKR_Full_BIT,
> @@ -1084,10 +1105,12 @@ static const u32 ethtool_forced_speed_10000[] __initconst = {
>  	ETHTOOL_LINK_MODE_10000baseSR_Full_BIT,
>  	ETHTOOL_LINK_MODE_10000baseLR_Full_BIT,
>  	ETHTOOL_LINK_MODE_10000baseLRM_Full_BIT,
> +	ETHTOOL_LINK_MODE_10000baseER_Full_BIT,

But some HW can support different link modes. I mean, it's not
guaranteed QLogic HW really does support ER mode even if Intel HW does
(same for others).
Or am I missing something?

>  };
>  
>  static const u32 ethtool_forced_speed_20000[] __initconst = {
>  	ETHTOOL_LINK_MODE_20000baseKR2_Full_BIT,
> +	ETHTOOL_LINK_MODE_20000baseMLD2_Full_BIT,
>  };

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
