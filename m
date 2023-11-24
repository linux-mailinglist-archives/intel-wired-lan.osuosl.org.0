Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B64EB7F7304
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Nov 2023 12:46:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45FF78224A;
	Fri, 24 Nov 2023 11:46:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 45FF78224A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700826411;
	bh=AowTd5VdMZF3SATblSrJgXWeyCzmBDUNuulm3n5cvSA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OXU0NeFUj2Iy65b1zorFPOPbLxvzR3FrjDDdBK1VQQo2Gy8gdOSR8VIWw7Hhiy1Xs
	 b/1DF0YtEIlVA/JLjot0AFRXBbEmMC5Ubj1MzEKTU8p0/Tmgh9+YOQPXkkX7TPcl7+
	 1dxMKNyLJmJfnDxVp73pjuCbHGMe/0tz5ukO8/sJydYzZf4ukKzMTUXNXvGh+AK7ZO
	 56WQeSvMzabSyxFHZZ4Zu/nKfx92xbO7+HWfvFomdC8tDh4CDMvyTmxztbzkBUrSD6
	 RFZqDBnQqh/Kq57WqqqVUB2J7y0jzoRvxU2pse8RIvnP1ojt4u0CMZRcTevY4tApJy
	 i5/6HW7y9D+yA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dw240G1Gg_jz; Fri, 24 Nov 2023 11:46:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 16A4582172;
	Fri, 24 Nov 2023 11:46:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 16A4582172
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 19FFA1BF383
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:46:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E579A82170
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:46:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E579A82170
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K_oQSJbEn06n for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Nov 2023 11:46:44 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 21FAB8214E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:46:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21FAB8214E
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="377449019"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; d="scan'208";a="377449019"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 03:46:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="1014884236"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; d="scan'208";a="1014884236"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Nov 2023 03:46:43 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 24 Nov 2023 03:46:42 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 24 Nov 2023 03:46:42 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 24 Nov 2023 03:46:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G+0zwRJI8v3BjamNNtywyO8XNtoIc1lPkYu94qOdjx3+jidiE3JMUH6n5UaTq7dEOI9j/FVNgUFJndx886EHFHhDS7yvJ7d7q7m+zHuy4LGLGvrwb8XwhL+tXfHt8cbNMVxNu8azrBUAz//x5MaUp6k9FLFMLt8aQb9+g3VLmad2edDi3jzmwqe72ec6UQmo7tGQt3LV/wYtmZvDaef5IQxzYIc8lT2Ky6k1yzwBqSlHy8dd4Fd0LIdrLukv124LV3j6ZtKaysNpX8/90U228Ls/koJHGja27Zhw/RI2NEeQfq6KuQpQlH+hNGzW7iXgbEb9tbLmlKUwNP98yaWnMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C9PyzDbztwVUEUUt5JMM096q7lFY7heRQwqHhxKHYR8=;
 b=RPubiK91l4LDTSQlio20YKROz8eJlLfgF7DX7dkjJ04eftiyncTrc1y3MBmPSnYOhfMfsvq/GABJRmg5zsd2FKOIjWyzdN1VqkpJ8V8M38upyP160o4QyK+inxmC2s36nZYQZJ54HEH/4LqtRvO0bWUKeUgI6N3AldJHHxWIBGqwwlXTzWny1mjvc8kX0kexQpDmWLSMGrKLbAfLwPlBPPQc50JWx8pEafgrHidnwMdwIiYOB0sX7EJitzVgQrkGgBYsfDMVBPS3c/Iuulp5HDjKUQbFk6ATzhKRY1DF4/mjJvIE52k/zuKoNfmpLBKYShduC7ViCTIdvliWazWrtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by PH0PR11MB5080.namprd11.prod.outlook.com (2603:10b6:510:3f::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.21; Fri, 24 Nov
 2023 11:46:40 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7%5]) with mapi id 15.20.7025.021; Fri, 24 Nov 2023
 11:46:40 +0000
Message-ID: <2916e3e2-4222-ebf5-0ae0-4982ce57f1ef@intel.com>
Date: Fri, 24 Nov 2023 12:46:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231124114155.251360-1-karol.kolacinski@intel.com>
 <20231124114155.251360-2-karol.kolacinski@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20231124114155.251360-2-karol.kolacinski@intel.com>
X-ClientProxiedBy: FR2P281CA0130.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9e::11) To DM6PR11MB3674.namprd11.prod.outlook.com
 (2603:10b6:5:13d::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|PH0PR11MB5080:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d5354e2-1e41-4d8b-eed3-08dbece3055c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Q3541hgzs6vZxrrbE0dYMuyk0Orx6ylKBsLdlRjgO3eiRe1HyBs3uUtpLCiCm0TNLYdp41Ig2Ep+fg0RYaxh8uscYgzfwmCsaYKQlHkW/dQbNMHq21oXBstIQMpyRluRBFIYmHL2CCzSTDPoihDQ9nixO4nLAocPcd7rNAmeoD4gzToqXQ/6Zv9app2Ert2E3HuRHfdTjclVlhATCughc+hO/r2IywRQQAeY60KlukisBqOO+pRXyhg+QTufg6w50l3eNbCu32kzmzPhGbWilHAZZDhSUnetcHD4Y0SL2RwR+s4Z7+Hs50bpN8x0lp0UF2P319w5qn+t3V0cBlkJwdJfh+QPA+XQ0AmgJTKL/IgZYF6uQdoJASqOT30zL5MznqzH4spR8jazMsvCWU//ma9Q3nZlyZgfqGMxkOPDUxNihIw2maE4rh6aJmHQJpJHnzc9AHRl9/vF5gkzd9EJCb99hzcAJkqjcxVaiGbFlNCf/KABTdCniOaH4gT3nIvzxq0bS1H4Zup2KsYDs47RG2FOQkNuz5c7l53Depoi+LeDp2uinCABBeeSn49IvAvbO01OoqJWtyq8rS5Z2QMb/HFcvrWu5fjukGKpqHvIm3tOYHP0hFUN11tNxdZ9SdLNnBQerbpKWaxBQmimRvJSkw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(136003)(39860400002)(396003)(376002)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(316002)(66476007)(66946007)(66556008)(478600001)(6486002)(6666004)(5660300002)(41300700001)(36756003)(2906002)(8936002)(8676002)(86362001)(4326008)(31696002)(2616005)(82960400001)(26005)(107886003)(83380400001)(53546011)(6506007)(38100700002)(6512007)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VXM5VHdiQUU5QWxXUzlhdDRHeWpxL29YMldNMllTNU8wL3hVY3ZuS3hyL0Nz?=
 =?utf-8?B?QzVadFc2Yy92ck1yUmRrQjJFQzNVSkVMVVVmMWdMbkFsU3BJQ0lMZXUzUGNE?=
 =?utf-8?B?eksyWVNuSjlWa3hNTHNHMXdEWUpDZVZQYTlDRkpodVA3UTIxM1ZRYmluM3NH?=
 =?utf-8?B?b0E3V3hMZjlIaFlDZWM3L1dTWTZpSXJTekU4SzZLYVg5eE42a2lJY2lHL1FG?=
 =?utf-8?B?L1JacHBYbUN1cHFnN2pYUVgwTjVqSElZMTRKc3dJeHJXSUtucGdIMXo5TEIz?=
 =?utf-8?B?T3BweEVYbk5DZmJvMU1rSEVNL01ja25jK0dhSEtOUDMxTDJHd0lwakwyVVU4?=
 =?utf-8?B?QlRaNUNsSHhnMmNaNGJidThqV0ZhMkZzWVZFK2p5UUI5NEtkOUlrK0t6ZDRw?=
 =?utf-8?B?U0picXYrQjlNWFI1NG1CZEtLRitJMUw1ajJBT2xCMGwrZ2NUWEV6T1I3eHlz?=
 =?utf-8?B?Q0FYZUtOa0w3YjRZUkNncy9hS1RybVo4TTFzcnpsVUw5cjdzUVRiSkVTNE5G?=
 =?utf-8?B?VGxIdmlSMWVZSVNQKzY2empISU5BL0tKZU1iR2dOOFh6WVpweWVQbldvb0NE?=
 =?utf-8?B?U2pHZUI5ZEo4TjBqR3d0QXB2NmxRSFlHdTFhcklRMXRFN1ZOQXB6dFVBcGd5?=
 =?utf-8?B?M2RIY2NpZm1IUEhodGw2QXRaOFRra1pETGF3LzBQekhVKzVOd0NUbXYxbmh3?=
 =?utf-8?B?OW5Cd0M2NVlBQml6TzVFa2p1Z3Y0ejRHdHZNTkJlcUVPYjlYbEpUcGFwRThu?=
 =?utf-8?B?c0MyOTVCSytRV0VVRGV6cUhEWlhuWmxERDRjZDc4Qk9vYjFQYmt6T2pzWkYz?=
 =?utf-8?B?Wk9FeTZ5c2g3Q3ZKbjhyR0d1ZjlzOForajhCQVlMUEF3bEZqa3NsRWNRTzVy?=
 =?utf-8?B?MGJOcDhsRm9TRHA1VzRhckJuQXRoK3pJQXdqS1NoKzlxSjlQWUtoRjAvc0JX?=
 =?utf-8?B?Z0xVT3h0bk9pcVU4NFFtUm5tTG02T0pURVlETmZGZ2pnK1R1c2NKSUhTTDRy?=
 =?utf-8?B?c3dHYmR2TUFvRWxMcmtvQVV0OG45c0lRWjNYcmo4U3lDQTYwTXQyWElreVJu?=
 =?utf-8?B?QlJ5dGM3WXZMUVVCNE5ycG91UVhpWXkwUmU0eGlMVGYvOEVvVm82TUZLYTRJ?=
 =?utf-8?B?bkNKV0xPSlF6TzkrUlh3S2ZCd3R6QjFwVVAwamJkS1F0SlpodHRuQk42ZUht?=
 =?utf-8?B?RTJOcjlGajhvWjNhdWJvL08ya0RRaE4wOEtPWVpwN0pvb3BZNzNqdFAxT0Jl?=
 =?utf-8?B?Z1d0SlFNeDdJdUljUEljc1NoMWNDMGhqd3d4ZkYvY1YrV0liMzJDeWI4NHVG?=
 =?utf-8?B?ZXgrcytGVUg1WG5hcjJBb0dsWThJcEptUUljUFRRNmxxMXgxRmd5bHBJMXlq?=
 =?utf-8?B?L3NJR0hJVXgyVUVjeGdJc3F2bFdkb3FkWkdPTUMwOWpGemdibzluS2xEMzB4?=
 =?utf-8?B?Vm1rSzFWS1JoeWhKWkd2UTlIeHpvcnQyYVRrRklqeGt3RzBaMm90R2ZtY2RL?=
 =?utf-8?B?UEdyc0FlWW5hcG5YRnk2UVNVTzcvWnVRSFdzdmpuT09TdHJaR2J3Y2JSbXNS?=
 =?utf-8?B?NTRXR1NFS2dubUZEV1VPU3k3UWlwS3VCY2dlWHFoK2M4VDI3Vmt2MnQzcWtq?=
 =?utf-8?B?NmpKcndYNmRHb0luN05FU2xTZVFBRWRWNEVSU1ZtRU44YXUwUVQ4RlJNYW43?=
 =?utf-8?B?c09CWEkyY1dPUVNxOE1haDZzR2grREpZcEc0TFlyUFpVdGlSV2RPbEhQbWxO?=
 =?utf-8?B?TXhCQkp4Y3RXQUxuZ1B2YUtpcktxN1RuNnlJc3EyR3k2eFc5Vkx0SWJqa3NI?=
 =?utf-8?B?aEJIVzRKRVFKOU1pbS9VYWpiVlM3MG50SktoQWFXUEhQWVBVV0lnQ0J0a01H?=
 =?utf-8?B?SmRFdS82SFJqSkg0dUYyZzVvY0tJbmZvZjRPSDdtaGFDUTgydnNUc3UvY0NP?=
 =?utf-8?B?Y2NZMkNwNTNHVGREamF0NWZYVm94YlpNWWVrUWRhbWJIa2pBZXBPclI5a2c4?=
 =?utf-8?B?N2JtbUpRbDJDNEl0V1BzSVBsSEZYZ0xrMWc4TXh0OThuMTBXVEFGUXhXbUE2?=
 =?utf-8?B?c2N4dWRsdDZuSnExWVZrOUpkSjJGcmRtcDdQOFVQajBmWkxEb0N4eEk5WGtn?=
 =?utf-8?B?NUtlY2RKSTFmQTRuZDFsRjFVeitTdi9hNGlMMWQ0NnFUZzFwZE5KQmMzWTZ6?=
 =?utf-8?B?N2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d5354e2-1e41-4d8b-eed3-08dbece3055c
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3674.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2023 11:46:40.6392 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6V/tVdBe1msiyl9Y+WZdLGClJOpdQJPkCGg6MCL2d3JSyVNAdW1un85ZXLtomrtKuf4GKbYTa7CrCxCiUx6+hRa9+MmpDJkmS6KnLCSOh8k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5080
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700826404; x=1732362404;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CQ75jS/3UODlLh5nlSOxG99/vEKcPXTlbC23RZsjRsE=;
 b=HE4CfLkfboqFnTRn2zwG6pcViGNyr3SM0jmPLWfAqYTeawZ/ddvEXOO1
 K9vcffkHD/hcSksPamIotvzxJuJTwB75sKxSXjhuRJ8WVLlr7Yr3oh+J5
 ksGOiwRi2KcCrZvf6gZdFdC2T0XXnUAbks5GXT6Z0dYjY9gYxm192T4sY
 2WGu7bY3Z+Uc2Klb3+jfixBVsMg3kCO76VFxrt8gTbIXzZI/cUSx3XIZV
 0Yfct0EWLI0i8wvAOz9qV5wZbE7j6kKKGQcXT6zFWOovf36leuck5rc7d
 j4Fcw2Dy7YUhsedD7uHbVLEJbxEJFNBlNoKjrx08PUCObkfJym3D2iRZh
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HE4CfLkf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/2] ice: Enable SW interrupt
 from FW for LL TS
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com, Yochai Hagvi <yochai.hagvi@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/24/23 12:41, Karol Kolacinski wrote:
> Introduce new capability - Low Latency Timestamping with Interrupt.
> On supported devices, driver can request a single timestamp from FW
> without polling the register afterwards. Instead, FW can issue
> a dedicated interrupt when the timestamp was read from the PHY register
> and its value is available to read from the register.
> This eliminates the need of bottom half scheduling, which results in
> minimal delay for timestamping.
> 
> For this mode, allocate TS indices sequentially, so that timestamps are
> always completed in FIFO manner.
> 
> Co-developed-by: Yochai Hagvi <yochai.hagvi@intel.com>
> Signed-off-by: Yochai Hagvi <yochai.hagvi@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice.h          |   2 +
>   drivers/net/ethernet/intel/ice/ice_common.c   |   3 +
>   .../net/ethernet/intel/ice/ice_hw_autogen.h   |   2 +
>   drivers/net/ethernet/intel/ice/ice_main.c     | 120 +++++++++++--
>   drivers/net/ethernet/intel/ice/ice_ptp.c      | 163 ++++++++++++++++--
>   drivers/net/ethernet/intel/ice/ice_ptp.h      |   9 +
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   1 +
>   drivers/net/ethernet/intel/ice/ice_type.h     |   2 +
>   8 files changed, 274 insertions(+), 28 deletions(-)

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
