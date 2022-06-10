Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB45546BAB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jun 2022 19:30:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58B944253E;
	Fri, 10 Jun 2022 17:30:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6PGlCaroIMxq; Fri, 10 Jun 2022 17:30:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F5F44191E;
	Fri, 10 Jun 2022 17:30:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B25B91BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jun 2022 17:30:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9E5DD4191E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jun 2022 17:30:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T3FFAxkxbbBQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jun 2022 17:30:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 63B3F41859
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jun 2022 17:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654882228; x=1686418228;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PfCfepZfPVuguXS2AVfsIZWxwHkAZmBO7uNfO5HkQeo=;
 b=Aj70/MSdK/sdAILIX4lBC2uQEuNDV6e4lvTWo8ktDocytjxGnn3j6AZG
 76RuTTICVKfvtjNymjldi1DABhQF6gF9ovONJu9aFxLotjXjcqSC475Pc
 rskpkzgpaFWIZhSLLaEZ7uK+kobcbA7N8ZA6aBwoBDsHxQ4H+FBWeeTKb
 fcF0gdLrLpt7+TrEEZCPzGXnvU2Wv0moDJd7Nm3OWKgCUfv1DRNbChtVF
 8qSqDmjDGUNwucfq7/9J7YWuHfOkbaJ71mbrpgKSbZ0m8cxCUxfU9ZGgw
 mzUPYyDaB4rt1+T4QeNZJiXuJ6gpYhEhlNQFoZ5elJ7yzzfHNACKDT4L7 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10374"; a="278491029"
X-IronPort-AV: E=Sophos;i="5.91,291,1647327600"; d="scan'208";a="278491029"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 10:30:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,291,1647327600"; d="scan'208";a="649923759"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga004.fm.intel.com with ESMTP; 10 Jun 2022 10:30:14 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 10 Jun 2022 10:30:14 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 10 Jun 2022 10:30:14 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 10 Jun 2022 10:30:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kqrZnagOABv35CNb4V/ZXTFKWlBIqFQx4g2QPPvAscmL2mRTevU4YAk+3ovaK4PqKUM/vi+qB+Imd9IREHzSqqCi4LqRK4Yy4kbwdehP/QIPy0oR6fzzDmFc5Fs9hvzMSSuP8b9zyVVuR0+kFO2vnFmJbpDmIimwu0TqWZ6DbEabXucT+XJCMrbF1FGQHsvBNqOqUqf6Ki2st2hKGRb0oZpay7f7wSb0CXXitoj2zvk2PMKz4pLKZn2z/TUmCe6qa3E+Yvj9dWREY63lObJnBGsPV2F4wpTZnRAJTOpFLEkPKDNvlNtKMfy+IzbGOzJa3RQfiAXx3VnK1thNEcfTLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MSr3TXFOIRY9o9tdr/zPooO8hBtoK9kl4Y+Hbde1S3c=;
 b=hi0+PGSo/YZg/CpWVmPB4epH9CCN590v4OVwFhQCB5MRofOywb6ZnDo9C0GR7ioHV3TInsqLaenWHksxUE0OMgg/n/JBsMFTjkWFhlJy3bIQf4i/SaFSatMsKip1jYLsOMmKCuWYtr4OxISGVYZYFIh31TkRGLZCEsVzbsQeS7x/OUujiMQy78XKK0zTFtXIgICC205M7Bg7Rs/Krc9FmI3WcYBeTXTEO4Tya/slpCRLx4Yx3kPrGMZVyGZ+DQVEwcE2vRINMeJdNSvLx3pcdIlCf7N2untBNBXi1GKDqxW5kFjf4tn0csu3ma1e6Y9cd8DSiiKcaeKU3uIibk4Lmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM5PR11MB1914.namprd11.prod.outlook.com (2603:10b6:3:112::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.12; Fri, 10 Jun
 2022 17:30:12 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5314.019; Fri, 10 Jun 2022
 17:30:12 +0000
Message-ID: <050871e8-98c6-c815-f8ef-19e7a94dc017@intel.com>
Date: Fri, 10 Jun 2022 10:30:00 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Jun Zhang <xuejun.zhang@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20220609214315.548305-1-xuejun.zhang@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220609214315.548305-1-xuejun.zhang@intel.com>
X-ClientProxiedBy: MWHPR2001CA0012.namprd20.prod.outlook.com
 (2603:10b6:301:15::22) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: db2195ca-471a-48ef-b92b-08da4b06dfba
X-MS-TrafficTypeDiagnostic: DM5PR11MB1914:EE_
X-Microsoft-Antispam-PRVS: <DM5PR11MB1914B4AE72A9B473B16FB4ECC6A69@DM5PR11MB1914.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qO+azhVY2qOKaju/AdpkoluSgKSODj5WNbbnAuUsfoAQeGa5nBZFqqAaCVyFxs4C0GUQOi/SrU22gdLvyGKOn2vUo+GLc1jXH4asH6Ufv+dxw+cxjmH7JBA2cGleJJ5G/CxoH6Hi1AIHakn79k98cNOygUevDTNsQG+CxUkXg8EwISJIq/G4/rooFhPbXfrDTAAgU9n4/H5urT8H+bBh34yFND+KyUw9BPxe6n+QSrlzpx7SFhwdpKBtjIs781KMDjtM+jd35WxiVTaQjZATsZyMKYsYItWIoYBY+dr0sTMrJZjF7hDz7KbpeYvp+Tit7GRGJ2PpOjE/RStQxt9NBNxlrDAo0DfzPZIh32XCzKD3PQEdZ/RXHovh13dUvGdLqvSweqt1otnRvFSpaNAK5cwZLoaE6KkeJnBFq7xEblLCIumnNSm34AXi0VpdjYEYyNaaNcWtHIpSdP0c2TO0t1zrHoMf/iGEF6/vn8y0A+VxyE1ceU2yePo/ueuFrK6/zaRqG1FLLOZp14ne8Rfjno6gTlhggB12c+kvyO6Vb9tTGvq5CrBk9zS+AIxXEmtRMW2PGEc5O5AIdJhqocLrNpH9KILKzmvlzriXjzNbUPj5iACaJ14HHsjn8mrEVX98Tw0NZoRz+bdJXnmS5ixkiwkD6PAhq065kLbKozskGROaXV2IV0gEn3AIaauZ5b93gSpBK14MBVbiBXPZYvvN0isu+JjaiuWxeohDPdT9Tu+A2NeTKzYElRPH4lr2DiNmZW3MpjpF6N2zBnFMlL8T1fKgrlDEfO0ylaybnlXsiarZDKHY3cgMjQHdfsjUEKu8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6506007)(6666004)(2906002)(6512007)(6486002)(31696002)(107886003)(966005)(508600001)(2616005)(86362001)(53546011)(186003)(8936002)(83380400001)(26005)(38100700002)(82960400001)(5660300002)(36756003)(316002)(66476007)(4326008)(66946007)(66556008)(31686004)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YkR2ejNkZU9FRnFGb2JqN1RIQTJVSm9QVHRjRVY4OXJaV2ZXODAvVC9LWmhC?=
 =?utf-8?B?Skc2SmtqTTZBZTB4eGZKZ29VWVZQckNOWXUybnRISG41L0p4dHltZzdNR2pK?=
 =?utf-8?B?bmNSbnB6Z0dOYkVnZmZmbWZzNHdic1pGNmVLdllpS1llUWNTUlowMXpzaVJJ?=
 =?utf-8?B?LzM5c1V3cUZwWkpGZFQvNHVoLy84akFRRk5ZZGlvNitsQkpUWXRYd1hRR3U3?=
 =?utf-8?B?bWMrbEFZSC9MVURqUndhellFOFEvOCt5VmVjTVRYNUNxOTJwelZxcHkxVW1i?=
 =?utf-8?B?N0xjVzR2NzdQNXZQa21IbTUyUUdUd0ZLdEJGWldvWnRITEhFWEpBR1hnVUFa?=
 =?utf-8?B?WTlXNy9zK3BWbWVNUkVZaFlManIxWnliMU1aRExvY1p2ZlhQRHFWNmxBaWwx?=
 =?utf-8?B?Vkt1dEV5Q2lZT0JQdHA2d2JKdzlOak9pT2FlL2FDRlZCT1lTeTRsK3ZYa2xR?=
 =?utf-8?B?TTJSdmlHSnd6Z2hkT2kzTWZ2d3A4aFRiNE9xU3NCaURWdHhncDlGRlp5bVpi?=
 =?utf-8?B?Wm83dHhaTThqVWpzcWdZNjlFU1dDT1djbVlvRjlENUg3UDhEM2VnWGg1ejJ6?=
 =?utf-8?B?eGFaYjUxMlZWN3ZaUW9rUkFsUGtUa3NlR0pXK3piYkRXa0Y3Yzg0MnNjUnVC?=
 =?utf-8?B?cFhmNjZxSU9PQU52Y2Y5NHF5aUIxbmZnY0d5SGtTNUE2VjhLUmdGQVFsQ09h?=
 =?utf-8?B?SEx6T1VXWU42cktJaDgwNXVvUjRnZ2RYTW9KVGUyeTZOaU5FU2pzdElWblV5?=
 =?utf-8?B?bzExTDNHUVZjalNVRWlmYlpPdm4xMXA3ZDdDMnIyN2J5aGJTNTdSRFNGbDRM?=
 =?utf-8?B?Z1BDWWxDTE91Qy9YbWdUVmNxVm9uUHMwVlBjbEY1TThKc3Nqck9UQlBzVlZ6?=
 =?utf-8?B?WEwrSzROSU5OR25LdEc4bkZrbDJ2dk50cnYvdUJETU9STW0vMmtDTDRBUTBS?=
 =?utf-8?B?aitCRS9GazVab0RVbW9hano5NkMxOUpDVE90UmhOQXlZVlpUUnYzRnRCK2M5?=
 =?utf-8?B?UUhXREFNOXNEQTVuYnFhbjErc0ZFTmJQbk9mSFRBVWl6clV2dHlkcDhxMHVj?=
 =?utf-8?B?OXVrMmdRNVJqaU1LbER4cXlTT1hJM2pubjJERUFKTDFyajZlL3hweFZHdmpU?=
 =?utf-8?B?aVYxZnFPT3lSb1JQS05iQ2NlQUcwNFc3TFMxVEFNYU5IMlQ3L2p3czY0VmZ1?=
 =?utf-8?B?aHY4dWU1eUNrRTg3ZzRHRVVQUm1TUTJ3MmQrMWVhRE5MR3Bod0JTSUZzTUR2?=
 =?utf-8?B?MC96TjA5T3ZHUW9aTjJwRWF0ZlhLZ0p0L3c1YWkzN0hzRFBEM0JWVVdKTk02?=
 =?utf-8?B?MTcwVGFJVzFhS1RLVnNzSHg0Y25lb3llSWlVWTNoR20vYXJoNXdZQms4K0FH?=
 =?utf-8?B?cFBCRW5TcFI3cUswNGhObkl2dEthTWZRcGJQbWZKaGRMMXQvOU04M0lPZjZU?=
 =?utf-8?B?SFdjQkpzdllGN2tONDBQOWY0L25va1pKUVp5SHRTN3hqQ3FnbFl5aklJMnpO?=
 =?utf-8?B?LzU1R2c1U2RaU3dYY1VobzZvZFoxTFFSWUZKa2tLK01ET0UwamliSHF0KzVk?=
 =?utf-8?B?R0xzeUw5L21IVVpoeXlXQWwydDNLTUxMVUpIazJFVEtBaHFPeHJwK05tdFRx?=
 =?utf-8?B?WFdiS3c4dnhaMzdHZnYza0hOYUtFYWhXQTd4N1NYeVRLSDc4a3NXTTlveU5z?=
 =?utf-8?B?ekRZWWVmeUthVFFqSXhXSlJJZlhub1JYUVkxbFJyOW0zQjdRNGQrbWQ3dFVR?=
 =?utf-8?B?bmwzM3o5WmJHeitMbFRuemVpVXo5dTBUMWFhQnNZTWhFbzg4eTRQcGwxRVJI?=
 =?utf-8?B?OGtTR2VVZ3BDNjErUlRZV1JzdktGcjV6S1RQckg1NkZub1IxbHdWcHZ1K2xX?=
 =?utf-8?B?RFVWNTI3MUZRbkFjQW5uMzdPSVJpbXlNQzBqdmJJU2ZHblFPYVhabXJaRjYv?=
 =?utf-8?B?NkVWanRtUm9uajJwV1pwNzEzMzIvWHhrZzBZbnA2VXEwOXczOGhPNnE5S3NT?=
 =?utf-8?B?d0tyUlFyandFTnIvYTNQTWpkNlhaNUlDb3JreXhPRHBJUVNkQ3ExNHdhWnRu?=
 =?utf-8?B?Wmp3QmExa3crL2J6UWlVTXpNcERBQTBIY0xOOUNBRW1oTHBZY28vNDdFRFVn?=
 =?utf-8?B?ZmhMd2MvYXJtVkw3S3FtT0ZOTmk0bHUvS2xpMWtidGlxaTZ3UlI4NWNIaWJv?=
 =?utf-8?B?MEk5c0pyWkVzaWZvbzdXSlVuOFlRTEhsU3VnNU5OTUhEdDRFNWdSN05oM0Zp?=
 =?utf-8?B?RHVYbGQyS1RCTzlhSUpHMlVIQTdjK211VVFVcHQrTWpqTEF0MlZWVnJTL3h2?=
 =?utf-8?B?alh4dVU4TFhvVXh3SEFmc0tSYUIzZUZBdkRMVVFkZ0dOTUppNEUvMEFSZW4v?=
 =?utf-8?Q?TH6jvXfadbh04H1Y=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: db2195ca-471a-48ef-b92b-08da4b06dfba
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2022 17:30:12.3664 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IdRvaCv4WGwrJXWL3XPj0hjrhvi1HU+JI3IfVMl4reh+G8/rT7aTrsK6exiFh2usR6kt9eAR5hnOWw0izTfuSLb3Xy/NBswqn2wKTD9QW5A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1914
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v3] iavf: Fix max_rate limiting
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/9/2022 2:43 PM, Jun Zhang wrote:
> From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> 
> Fix max_rate option in tc, check for proper quanta boundaries.
> Check for minimum value provided and if it fits expected 50Mbps
> quanta.
> 
> Without this patch, iavf could send settings for max_rate limiting
> that would be accepted from by PF even the max_rate option is less
> than expected 50Mbps quanta. It results in no rate limiting
> on traffic as rate limiting will be floored to 0.
> 
> Example:
> tc qdisc add dev $vf root mqprio num_tc 3 map 0 2 1 queues \
> 2@0 2@2 2@4 hw 1 mode channel shaper bw_rlimit \
> max_rate 50Mbps 500Mbps 500Mbps
> 
> Should limit TC0 to circa 50 Mbps
> 
> tc qdisc add dev $vf root mqprio num_tc 3 map 0 2 1 queues \
> 2@0 2@2 2@4 hw 1 mode channel shaper bw_rlimit \
> max_rate 0Mbps 100Kbit 500Mbps
> 
> Should return error
> 
> Fixes: d5b33d0 ("i40evf: add ndo_setup_tc callback to i40evf")

The fixes tag should be 12 chars [1].

Commit: b181df353c12 ("iavf: Fix max_rate limiting")
	Fixes tag: Fixes: d5b33d0 ("i40evf: add ndo_setup_tc callback to i40evf")
	Has these problem(s):
		- SHA1 should be at least 12 digits long
		  Can be fixed by setting core.abbrev to 12 (or more) or (for git v2.11
		  or later) just making sure it is not set (or set to "auto").


> Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>

[1] 
https://www.kernel.org/doc/html/latest/process/submitting-patches.html#describe-changes
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
