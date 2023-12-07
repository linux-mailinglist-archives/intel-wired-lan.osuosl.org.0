Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 30DAB808A85
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 15:28:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 37DD361ADE;
	Thu,  7 Dec 2023 14:28:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 37DD361ADE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701959292;
	bh=GtZKOWWLzqNvN8qMA4BhTmmeSpadLRX5D36UcxF97dk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oHlXOfbLVSzPKk3Zwl1VqUzOw7+gloTFk0HnZ4yr8Dqxv+LmdFWjD+5nIx3wK1z47
	 iN3qRxauDDacFHJpqOQLR9IteEycGwXlIgTZ+x/72OZph/h2hZ7ZRH8sUbqgOdZhJm
	 kdGwHdLB9TLGtC/drMLy/12xeMZ9qq863M56TWo1+cS+SKvtZ6FYipIAlo+LRGaeNj
	 GcEeOn0OYDtRxkU9zK2I/1TPO/ZbOyc4tdkhJSkhXE9Cy8vLFOosqXww8kYcVliO6F
	 duO6o8NZI8RFMnXg13CDRzlUVLOcsZ8Hs1+kgYvEndrl/3RWIWMIyXPDvkAT9EAjqB
	 WNAC68fVdMMBQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gT6h2pHOuON6; Thu,  7 Dec 2023 14:28:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F27E960D68;
	Thu,  7 Dec 2023 14:28:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F27E960D68
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A65F21BF5DD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 14:28:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7DB1660D53
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 14:28:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DB1660D53
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uVt2dWSqVNfq for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 14:28:04 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1D84F60D68
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 14:28:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D84F60D68
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="460728290"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="460728290"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 06:27:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="915603033"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="915603033"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Dec 2023 06:27:56 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Dec 2023 06:27:56 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Dec 2023 06:27:56 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Dec 2023 06:27:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D4ze0spG5DDDZ6DsEofDY50EwmfMMzQXI2QLnhsG7Cj167zZwB5H0QunavJbFCgvL2TLXJDFJ4OrID3v+ise2VSlV6WaoVR9PaNZKKIEAw6WCZTJXuJBxsnoMTvnJdNu0JxXJXAac7ChWF4jXT06O+1E8dP9ztt8mcDCfjFwij9AhOSD8MopD1el9IzsXdXvRRqQbLG/CydPMovCw8aDEKUghGLXQh34RHVZkWC8fm5KdbrSGRTVbq06EsKr07kCDZhjk/zpLodYo6NFTAL8Tvyf/aSntyWKk/8yJMnc0a1I5/T1eNkYZ8WxI1jnQPxPrOhshT+WzRITNkSEU71K2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2BpDLR1DtQ8s+DDyQ5gfxP2jV7NKuVm1EqCvgj0rJ6Q=;
 b=agEAjNcSp8KrDXzACUywHhkt6QjDDZ3Lej1QTRGR7E/PhRZ3wlEsNqf+ZUNaaMCUUqMVEjv8CVkeisa9Yr3/usDS34MgheuIrGsQazSIdbLxavNqs8wUHy28UeB+YmyqS+gAjGFRgJLAJ7ob9qdSGn3FrtGspIlnSlx2UwCyF3PRFAXejJQBAIqAn+/qKIyNNx7NDiHtstFpr8iFzigpeqNesHA7cb+UPVQ8nX2UswMoUE7g+yp2hhT8md9Q4meYOXDU4MDi4CdIawyLjhbP1VEap5gePEGUF8G34Ytim23eyZZfJqT7xFfZP+n819AxtPC81ZVQ2UZDBO5L4PQMeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by SA0PR11MB4685.namprd11.prod.outlook.com (2603:10b6:806:9e::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.27; Thu, 7 Dec
 2023 14:27:54 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80%7]) with mapi id 15.20.7046.034; Thu, 7 Dec 2023
 14:27:54 +0000
Message-ID: <6ba23f52-6a80-4db4-8081-f6568c81b6ca@intel.com>
Date: Thu, 7 Dec 2023 15:27:13 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Eric Dumazet <edumazet@google.com>
References: <20231201143821.1091005-1-aleksander.lobakin@intel.com>
 <20231207115751.GG50400@kernel.org>
 <CANn89iKiiexYLXP1fW3anaZt0TJWPUBBmXdjsAV8t3CH3Ra8aw@mail.gmail.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <CANn89iKiiexYLXP1fW3anaZt0TJWPUBBmXdjsAV8t3CH3Ra8aw@mail.gmail.com>
X-ClientProxiedBy: FR4P281CA0047.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cc::14) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|SA0PR11MB4685:EE_
X-MS-Office365-Filtering-Correlation-Id: 45c4d7c4-20dc-4df2-0cda-08dbf730b31b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2unsatmZWf5gRG5LQMPotJfGx5SIHJWpAQ7e2dhEUp3bOwPM5ev698DUNiiFyqDsAptGZVN6dpcTNWwfg7OCJhHtUu+fUHfGKro0Sj8+eLCvChAXHEcVoHFzmzvZAdha2XsHeNUoKMx0WK4GtJ9QBJortoNSvC6wCp+bIYlXkrdBGDrIb1EwUweqPkkZRnPg+N+MP6tzxZcylaOI9544W01WHxC8FgBSTKVJk1AIdiPkpEJMyrpfxPz6cgD4ygv92RD1LTSJIl88V4dLd4P9Hv3VS+q686CuNmw8kGhYd+j2/JQqTjx7xhNjVlX7lGmc9vhf2yEykuZ5DQk/dJGZwXGGXkifcC087B3XpLzzO1lCZ7GB202Xu60T619L003dmvFifKufubrA6tak1/Dgq7owQleqgL76qUCE0O5bqtqv5QvBdeRZuFftVKt9AWX8uCRu643FrPsMzLFR9HsyITygrimBhgM+gJNjLIFp0UTJg3nCYJhDXn4NeFp3L0uxWQhA8a0L2bGj6NwVYZQawbkfiE9t7BZdWn9VWwVBm0kzKg1IDY1N71udD3t5Xf1qM4T6BXyRxXwlsiVRqOzihi6EBcWO+FN55Z6i355BwHubF7iOWdfFJDg4f1goqDaKZBWRI62r1ISZ8q907ip7tw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(366004)(136003)(376002)(346002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(26005)(6506007)(53546011)(2616005)(6512007)(6666004)(5660300002)(41300700001)(2906002)(4326008)(6486002)(478600001)(316002)(8936002)(8676002)(54906003)(66556008)(66476007)(6916009)(66946007)(86362001)(31696002)(36756003)(38100700002)(82960400001)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S1lNR1EvWFlHbXdCMGorclhVOTdYck9DWFJzaVNvK0NOVjZPRkFRMmEwZlJW?=
 =?utf-8?B?VGphRjZqeWpSd09HSzdYWVk2ZFVsSDJVczZwZ0RwSE9yTHhDbWpHb2dkTUhC?=
 =?utf-8?B?cUlrRlM5cjlTS0tLYXRaV1lYM2tsalRLR3hKbVp6RFlkQjdCTVFpb0phT0dS?=
 =?utf-8?B?ZjlJM2JZQ3BSa3k4YVBzelQvc3ZTT001bjlpeE4zekJwbkVmNDJQL3NveUJs?=
 =?utf-8?B?dVUxV01vUkdGdlFpRmk1VC9WL0NHYWs5VEdsNEdzYjNqdUJkcWlOMnkxWXZU?=
 =?utf-8?B?aHk1STY3NXhXTzJiazI1Yi9kV0JzUG9kOEY3WmNRdWs4aGxjSXNzd2szb2lN?=
 =?utf-8?B?ZTgxTXd0TUVRQkMrb2txUkw4ZG5KVXBEVHZsWlIyb2VyY3h3SFZyTkdFUVhQ?=
 =?utf-8?B?Kzl4OHZ6U1pWTUh2cm1NbHh2SjVObHBFamdndXdlWUpJZU41QlZlTytpYTJx?=
 =?utf-8?B?L1RQWGVPc2RtMC9idGltNG1nNWNjWGh5WUVlbUpHZ2ZBaEZUS3V2RUVHMWZu?=
 =?utf-8?B?SG1IRzRjK1NVaVhFRjNqcWVOMW1Dc0RaRHpIeVZQM0xSUzNuOU9CbHpXaWpY?=
 =?utf-8?B?dDFucGVRWkthdjU4anQrOSt4Rzl5cDJjanBjRWIrbk5KRU1KUCttTGwyS2dG?=
 =?utf-8?B?WlZWRExZTHFSOUxOckhZT3RGc2NyTVVjVzBqUWlOSXhyYmZTcG1XYnVyNjVh?=
 =?utf-8?B?eFBjQXFMUW56MlFjRFZIekFzWjA3NzRsSjc1bng3dWttUFBoNEVmc0h2clVk?=
 =?utf-8?B?QS8zT3VXaEJRZW5qUGtoRnBFKzlsT0VETHpMOEQyWlh4Q29SeDVld0JiRTRM?=
 =?utf-8?B?SEsrbWdkN1BsaGtrS0tjeVRXK3VqdC9BQW1RMGJMekRwelhmQm1iZU05MjZH?=
 =?utf-8?B?c0djMlNyZHBEQXQ0Y2NRUTUvOGFURGlEQU1Kc2lqRW03MGQ5Y0RWL3VBU2Rt?=
 =?utf-8?B?ZytaUEQzS3Iva0tHS3VWNzhLTHpSN2hXS3JQc2xsNlJHbVJkdWtQanJzZjN0?=
 =?utf-8?B?ekVjbFpiSVV1VXZqZjNldFlGbTdyYzBYbGh6NldEb1JxL0pBdStYZmRIWWFj?=
 =?utf-8?B?SC8vS0JNL09qRUFvakxBQmtDaGZPS1NJMU0xOTFoWjJ3UjhZaStwQ0hsSjBQ?=
 =?utf-8?B?bzgrajU1cmpIWTVRQys5N3RySjcxNURBbVQ2dzBkZTltaDdPRngremt0aWRo?=
 =?utf-8?B?VjJWUk8xQkZZUWNGeTkxem5wZTZYS1FuNUx4c2tveU1hY1dGU1ZwOFA5QmhO?=
 =?utf-8?B?Y1VqcUREajhObE4xaEp2QlpmU2dsSWExMWE2UmVEY2VHRzFDdm13NEdkUTJM?=
 =?utf-8?B?RjQxek44Q0l6eDZkU2FVOEpqb3NleDhZenlzMG45OEJQTFZ5cndESW5hcG95?=
 =?utf-8?B?Y3R1QlUvajVoZ3lwcDlJWldiUWNOeGtHbXk0bzV3ZjJaVE92NS85WXAyNlNB?=
 =?utf-8?B?alJuZGI5MDBMaHRvL1MzVFg3SVprTUtaNjBWcVJYMmtHSWJzUjBmR1dHalM4?=
 =?utf-8?B?c3ZCay9TUzV4KzArYTgrL3lpdjNWWXV3djBiYmgybnhxcGI5M3g3dVEwRFZv?=
 =?utf-8?B?dm9JaDIzQ2dpTHNqU3JXTmhjQVZsSWZMUjlJMjhXV09ETW5IS2ZiaHU0Q2hU?=
 =?utf-8?B?dFpDK2w1bHBrYUEwWUZlRkp5Y2t0QmUrdmt1U1d2TzAweG16WFNHTFh6SUI3?=
 =?utf-8?B?L3R4U3BNdnJrRkhGVm1RVWNJVEJqVmZrTjhFdDgzci9Ed1lLTlRJNnFGbHVX?=
 =?utf-8?B?YnpFYUk1aG50VENsRnJHSTVGcHF2UlFxS01MWXZyRENOTlVmM3VlNzIrajgy?=
 =?utf-8?B?aXhma1BPS1dtaHlsQThIZFRYblk4bjBpOUlKSE9xbzlndG15THpTS2QvOVJi?=
 =?utf-8?B?eXZaMGpudTlzS3djdXd0NytldXZ4MU5JeVRtSjhnYlNEM0Q1M3dOMzdTMzBO?=
 =?utf-8?B?STZOVVZXZXJuZVYvMktYY0ltdVFJdlZtMlA5eWVIYTA0OTdrQlJzQWlSZkM1?=
 =?utf-8?B?UEpnc0pXa1RXSjgwQUJvcjRRT3gxdWpIR3JBTHo5Wm9JZXlyU1JjZ3ZBemha?=
 =?utf-8?B?ZXRlTngzbzFpMDlDS0tPVkF0Qlh1ZmU1NnZXMDZpc0k2Tk5LQjAzSW0ydW93?=
 =?utf-8?B?ZUNxR0hsNXFYU1pScThNYUV6SlUwUEFBVktISWFWdVFvS0JkYkhJcjZKREpw?=
 =?utf-8?B?T2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 45c4d7c4-20dc-4df2-0cda-08dbf730b31b
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2023 14:27:54.0856 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P5wVSq15oTAyCAmBIeAMdv8PZb4ezYT6UaTEiER03KS5E8qxu7v4e0pEJcsKHPTlRDz1WrR1OPLMF3kWnyEq/5MU0bmZcbldfkXOAHjth8E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4685
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701959284; x=1733495284;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZG1vMO4cSUhVul76dBImy73eOf3+jvZTzN/AOEghMDQ=;
 b=TaR99j4s8QXiNgJymJLsx+M4i30jIxcSnDmJVOWa9gkPQLY9ncnU+Hr8
 HyJAG5FIW6kUWB1z8UDszMo54KY1FKXSCe4dOQajcRM/Oy8d+HkbYYrGz
 TjqH+BOZLe0w5xCoMN3NrXB2zHheAUqDOz7P7nhGo7c1ExHTktdJM6R3g
 GmBKtWrE7bVzETsugLI6ArNP+ArWj3diSWZTFeA9B9ekQKxlKpWV1E9ey
 ofiGZIa5rhGgfulNUaLi1yL9+bqO1U3I/0Hlaxh/JchHCKWM5nOuCuZ3t
 i/gpDCxpYIMB+E7Hy5ESBFeEVyb/CnUVlvjDq6EL7yuhHfNX+kf6Ru2x6
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TaR99j4s
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl] idpf: fix corrupted frames and
 skb leaks in singleq mode
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-kernel@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29tPgpEYXRlOiBUaHUsIDcgRGVj
IDIwMjMgMTM6NDg6NTIgKzAxMDAKCj4gT24gVGh1LCBEZWMgNywgMjAyMyBhdCAxMjo1OOKAr1BN
IFNpbW9uIEhvcm1hbiA8aG9ybXNAa2VybmVsLm9yZz4gd3JvdGU6Cj4+Cj4+IE9uIEZyaSwgRGVj
IDAxLCAyMDIzIGF0IDAzOjM4OjIxUE0gKzAxMDAsIEFsZXhhbmRlciBMb2Jha2luIHdyb3RlOgo+
Pj4gaWRwZl9yaW5nOjpza2Igc2VydmVzIG9ubHkgZm9yIGtlZXBpbmcgYW4gaW5jb21wbGV0ZSBm
cmFtZSBiZXR3ZWVuCj4+PiBzZXZlcmFsIE5BUEkgUnggcG9sbGluZyBjeWNsZXMsIGFzIG9uZSBj
eWNsZSBtYXkgZW5kIHVwIGJlZm9yZQo+Pj4gcHJvY2Vzc2luZyB0aGUgZW5kIG9mIHBhY2tldCBk
ZXNjcmlwdG9yLiBUaGUgcG9pbnRlciBpcyB0YWtlbiBmcm9tCj4+PiB0aGUgcmluZyBvbnRvIHRo
ZSBzdGFjayBiZWZvcmUgZW50ZXJpbmcgdGhlIGxvb3AgYW5kIGdldHMgd3JpdHRlbgo+Pj4gdGhl
cmUgYWZ0ZXIgdGhlIGxvb3AgZXhpdHMuIFdoZW4gaW5zaWRlIHRoZSBsb29wLCBvbmx5IHRoZSBv
bnN0YWNrCj4+PiBwb2ludGVyIGlzIHVzZWQuCj4+PiBGb3Igc29tZSByZWFzb24sIHRoZSBsb2dp
Y3MgaXMgYnJva2VuIGluIHRoZSBzaW5nbGVxIG1vZGUsIHdoZXJlIHRoZQo+Pj4gcG9pbnRlciBp
cyB0YWtlbiBmcm9tIHRoZSByaW5nIGVhY2ggaXRlcmF0aW9uLiBUaGlzIG1lYW5zIHRoYXQgaWYg
YQo+Pj4gZnJhbWUgZ290IGZyYWdtZW50ZWQgaW50byBzZXZlcmFsIGRlc2NyaXB0b3JzLCBlYWNo
IGZyYWdtZW50IHdpbGwgaGF2ZQo+Pj4gaXRzIG93biBza2IsIGJ1dCBvbmx5IHRoZSBsYXN0IG9u
ZSB3aWxsIGJlIHBhc3NlZCB1cCB0aGUgc3RhY2sKPj4+IChjb250YWluaW5nIGdhcmJhZ2UpLCBs
ZWF2aW5nIHRoZSByZXN0IGxlYWtlZC4KPj4+IEp1c3QgZG9uJ3QgdG91Y2ggdGhlIHJpbmcgc2ti
IGZpZWxkIGluc2lkZSB0aGUgcG9sbGluZyBsb29wLCBsZXR0aW5nCj4+PiB0aGUgb25zdGFjayBz
a2IgcG9pbnRlciB3b3JrIGFzIGV4cGVjdGVkOiBidWlsZCBhIG5ldyBza2IgaWYgaXQncyB0aGUK
Pj4+IGZpcnN0IGZyYW1lIGRlc2NyaXB0b3IgYW5kIGF0dGFjaCBhIGZyYWcgb3RoZXJ3aXNlLgo+
Pj4KPj4+IEZpeGVzOiBhNWFiOWVlMGRmMGIgKCJpZHBmOiBhZGQgc2luZ2xlcSBzdGFydF94bWl0
IGFuZCBuYXBpIHBvbGwiKQo+Pj4gUmV2aWV3ZWQtYnk6IFByemVtZWsgS2l0c3plbCA8cHJ6ZW15
c2xhdy5raXRzemVsQGludGVsLmNvbT4KPj4+IFJldmlld2VkLWJ5OiBNaWNoYWwgS3ViaWFrIDxt
aWNoYWwua3ViaWFrQGludGVsLmNvbT4KPj4+IFNpZ25lZC1vZmYtYnk6IEFsZXhhbmRlciBMb2Jh
a2luIDxhbGVrc2FuZGVyLmxvYmFraW5AaW50ZWwuY29tPgo+Pgo+PiBSZXZpZXdlZC1ieTogU2lt
b24gSG9ybWFuIDxob3Jtc0BrZXJuZWwub3JnPgo+IAo+IEl0IHNlZW1zIHNpbmdsZXF1ZXVlIG1v
ZGUgaXMgbm90IHJlYWxseSB1c2VkIG9uIGlkcGYgOikKCkZyb20gd2hhdCBJIGtub3csIHRoZXJl
J3MgY3VycmVudGx5IG5vIGhhcmR3YXJlIHN1cHBvcnRpbmcgc2luZ2xlcSBtb2RlLgpJJ2QgcmVt
b3ZlIGl0IGNvbXBsZXRlbHksIGJ1dCBzZWVtcyBsaWtlIGl0IHdhcyBkZWNpZGVkIHRvIGtlZXAg
aXQgaW4KY2FzZSBzb21lb25lIHdvdWxkIGxpa2UgdG8gc3VwcG9ydCBpdCBvbmUgZGF5Li4uCgo+
IAo+IFJldmlld2VkLWJ5OiBFcmljIER1bWF6ZXQgPGVkdW1hemV0QGdvb2dsZS5jb20+CgpUaGFu
a3MsCk9sZWsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
