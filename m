Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE3680C9FD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Dec 2023 13:40:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 642E361416;
	Mon, 11 Dec 2023 12:40:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 642E361416
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702298416;
	bh=NrvGUSiKRSecRfuimsQoatohXU0M03KaxO3dsidFfMc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZnOVGq4FaUMkiN6tuU21brTLBWyBg78N6aiQ85BrlI1re/glXr87vlxD92L8g00lm
	 AkxlxzGEDcIDTQCBfDPC1iN9P8yGsJO4c7DX1qHRYeKjjk8FPQ6AxoAKR+usoZsEXR
	 2VFp+WTWVAzKGv98G7KTo967vPId35Eel/xlst5cF3orELaqiPWwRwx0JeKH4rmBwT
	 dQWve0y0y5fxwDU/SOiMVDZSYA7GkOvbO22hztbkVVKIxWJI3xbUd4NVrsRouAe0bQ
	 w/HoXpGFaTLReUcIOVeXFbl0C/XVbKdGZepasWHnOm5pvYGS8NglZC6jizlSn0GnQV
	 /jjQ+3kZBNqtw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fvJ7rYh_ExTd; Mon, 11 Dec 2023 12:40:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1CE6861415;
	Mon, 11 Dec 2023 12:40:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1CE6861415
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E18C01BF48D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 12:40:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C4F214181C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 12:40:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4F214181C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ffJ38Nhubm6y for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Dec 2023 12:40:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B54AF416C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 12:40:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B54AF416C8
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="458951826"
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="458951826"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 04:40:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="807290047"
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="807290047"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Dec 2023 04:40:07 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Dec 2023 04:40:07 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Dec 2023 04:40:07 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Dec 2023 04:40:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WN0f8VET7BMNw37T5x/MRtdxv7mR26GPKEEud/ReJKuBb1KhmOVZN5RXq7+z60AGgP/WCnwdDVt4WZTa04P+n2yR7NdL2mvZdFEO0rAPbkYpGWggQIFYg8mNraSgHLIHOqqGNaf9cIEN66YwsRnkmft2DdCod4JThm+1XIALutW73Zp5WQKLXem2AR0Q157bxgtPH/39M7zYer0kvRSkRVu7nC78zB6mPbmZI7NZbE4GSOF0dVilvpKjC+Viu69jWkgGZRV/UARf6WRM+lyiK0K/DDijiwmi+mivCWc6nVBWuhmgwBKrVEiXZ56Zl2hsxZUrlK+7z1/YxItCiKNEvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z1FBeULC9z/nmKAX4QKzAYGTLG4G8NPhJHY3LaDJSX4=;
 b=ehkrfadcuWiMvKpST9A+CLBQ79hMKqyPSvRcMt2k3ZweA2P9UqcAE5HL9rZF/5xGQHVcP23/jRXf9+eK/AvxN9qcYOW71JgaHhr+vzQ5wxt/apIYxsmemDNcJ8DM1q1IO+nXD6128QKYL82Aujxhz+C9PW7gnryWBAQ1CrEjhXLKehf/VUYM+lOCos2gS2Fpa+a97oFccUjLB2+0ymc5vBK7RsDO7KxY9yvhI+rgDrcjMN0tRMNyDrcvkcm7quNeA3jqOh/Ti/TkMgWhB0czhH3ZsyKeV4Wl6cOsE0gdzENUD0/NWYFE7K9ggWDulK4hOLPd+GKcoUSSu5z8JcW0iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by SA2PR11MB4988.namprd11.prod.outlook.com (2603:10b6:806:f8::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.32; Mon, 11 Dec
 2023 12:40:02 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::4ef8:c112:a0b4:90f2]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::4ef8:c112:a0b4:90f2%4]) with mapi id 15.20.7068.031; Mon, 11 Dec 2023
 12:40:02 +0000
Message-ID: <13f7d3b4-214c-4987-9adc-1c14ae686946@intel.com>
Date: Mon, 11 Dec 2023 13:38:48 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Marcin Szycik
 <marcin.szycik@linux.intel.com>
References: <20231207164911.14330-1-marcin.szycik@linux.intel.com>
 <b3e5ec09-d01b-0cea-69ea-c7406ea3f8b5@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <b3e5ec09-d01b-0cea-69ea-c7406ea3f8b5@intel.com>
X-ClientProxiedBy: FR3P281CA0070.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::22) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|SA2PR11MB4988:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a938c6f-0a3c-400c-0e0f-08dbfa464b66
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I5BJYcS79cKWsTzyQ+tOslroIHaxj/2YDD7WU0mkIrKeVap/nm/x6JXJuRuWu1R/23tP4i7WkkvKJV8o/AcSwxvv2meogKpIYOTEj4CiCmjGxbu9ultC20w9IBFtCm8wudYbAr4F7VhdBtS3WugCSnBRUhysyKfKW1MwVwAcA0DtiWoS7ACluYBcSpDzmq2xkE/PYUz3JGFE69/TGi2uhBmav2MtL3xwnmgAjp5OqlWAOc8VskZTBR8De9Y8mjJLaQemxYDv5N19YpLK2ILXazBzAoVPFScy8gH4ht0Oq4o6Tfey/HswbzIEkYrNi8PzSKd5nbphXyyWUgosJzASSxhZof2oWla+cntvIUAJ697cLZzFrwABDOB+1tA28CAHGuwkT5Iw6W2iZ9EvVxCblrEw8XRGqbulljnfRHh/dh86cRYFAKr7SNZVDBhnxAU/JqRuYX41Q8PjAuSTgpYWGmUde8hUzfUc3zen6CB2DxJxMgw406335XKnVeyEyCDZn+siBy0whOmSPBC64R0rBh3A+OxfsWagAKxSHscRS+mdkgn3AacuYJ2Oy7+lqGhzTUG4K68NeVytnr/WZFzv/Mf/udWGNDoJUBoGcYnyXmW64rzD5z2zlGcLDxgrZTr2MsA+pt/3Tj+yzwhfxf3NcA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(376002)(136003)(346002)(366004)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(26005)(2616005)(6506007)(6666004)(6512007)(53546011)(5660300002)(7416002)(41300700001)(2906002)(4326008)(478600001)(6486002)(66946007)(8676002)(8936002)(110136005)(66556008)(966005)(66476007)(316002)(82960400001)(86362001)(31696002)(38100700002)(36756003)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a0UrTG5SdHVqdTJvdldOK28vTWFncjAveENmbWdNSWt5akJENG9Cb3d1WnRE?=
 =?utf-8?B?N0pnTjkrSm93NVNnemtUZlNmcGE1ejJFMXpFNVY5VVJGMFo4ZUZxREpxVEdo?=
 =?utf-8?B?NVg1ZjIxWUM5WThXR1VEdE1rVXA3QUY5SmlBQTNDTGk2ODJyQkRsT2NiMVI3?=
 =?utf-8?B?MG1HS24yV2haMFdsdFpMZDJkS3loS00rWlVoMndWUzFSbkVrallyampIRVM3?=
 =?utf-8?B?UUZrajRtRHJRYkk0RXYyYTFHVFZYSllObG82MWRuUEpaRE5IMEM4WXExb0RS?=
 =?utf-8?B?N0FNTUZPanJvR2JIaTRUVVVpUWd4QjZLVldJUlYwb2YwU1kxc2loUGhOcGg4?=
 =?utf-8?B?QzRZL0pUc1V0Z1U5d1NSRjJ6VnU1dlp4WnFHMFl1SkY3TXJXWUN1Z1BveHBC?=
 =?utf-8?B?RHdNSkw5Y0pSSmlwTTdaTW5JVWdOaVd1VW5xVFhIWTRSZHVVN1djNDJCL0pE?=
 =?utf-8?B?dE9hOC9JbkJrbjZJMWRJb2VWV1JubzVSVTdjMHlXU29EcGdvd2FYMUtZcjda?=
 =?utf-8?B?TUNCRngxMExEVWFxZGt3OHhrZG1mSDBNMW1CTGc2OHlLZkNPNnVIWnFWK1BL?=
 =?utf-8?B?NmFrajVVZHZVemxhZ0dJZmxCS3c5NlBuZ1B2UGVHUnFVN0JlVEhqWWtwQndC?=
 =?utf-8?B?UUxIVmJ2WVFJa0RoQWVnckNMc0RiK1FEcTI1RXVXdVdyR2dIWTg0MEV1YUdq?=
 =?utf-8?B?bnNQeWl4a0tFZUFYYTZucVV3ek4xOGROejFEcENQK1B4M1pRSVd5QnNGWkw4?=
 =?utf-8?B?eHd0YmF1M3NTNTdlZTZUcTB2SjV5aGRGMk9IS0hlYXZKcXlMTVNDdjNMSDZw?=
 =?utf-8?B?d1VOOG5aWE9vbU94UUhmdGJBOEpIeDRMTnNGbkxlMnMwakhOMDNTR0txZnZ4?=
 =?utf-8?B?ZVlwSFJaUFBsYW8vVG9rbnhyaW12Rzh5Y0Q1UDk3NU5wa1N5MXRndGRRZ3Jz?=
 =?utf-8?B?VDQvZ3VDRGhyTWpHTEZiQ0loVlFTN3J1eEU4SHAxMll0MTZ2UWVDY29NKzNP?=
 =?utf-8?B?WmtNV09UZXVGSko0ekswWWVhY2Voc0xVYmVTdStEdUFzZXljRUhhS0J2Y0FH?=
 =?utf-8?B?VGNNOWlnUEIrK2hpaWVndTRaQ1NNVHo0eXp3WnNsemdmV0wvVHNnWU1mSE5Z?=
 =?utf-8?B?dkpieFZTMGNqTWFXRWptdys3ejdxTDRVaU1rdHdDL1d5ZDlSSXpVQWpTYm1V?=
 =?utf-8?B?RmZFMG1IR2lzZDI1SDA5TjJzRUV1YjFRZDdsMm0wd3JCd0l5a2IvazhnaER2?=
 =?utf-8?B?LzA0akplMEhHVldVRmNBVDlGdzhSSzloaWNWWnRWRnJPaHNPM2VvallLeFRH?=
 =?utf-8?B?V3gwdDNZK0RCTmIrVXAvYW4zNmVCVU1kbWZxQm1nOFNUOEgxZnJyZGFCUUxS?=
 =?utf-8?B?dk1WdW4xKytNN0R5SVIyMlRRaDBSbzZuYnNzNkNySktya2drZm1GbGM1VE4y?=
 =?utf-8?B?N1VwT0prSFVwM291UHkrYUhhTjcvQU5wU0REOHN3RS8zSkRHbjBqZTdNRXlv?=
 =?utf-8?B?NDgwVVdzTGg5eThTaUdmeUI5cVM3bVlUTUcxdGxyZXIwd0c5bEJUU25YSWRm?=
 =?utf-8?B?S051dkNnZVBWRjJBR3FtUjk3MnhtYWhWUnB4NERDazBZYzNTZVBocS9OaWZG?=
 =?utf-8?B?MnVMZDlBN1puS0M3UG5PdnV0VDA3eW1JeGtaaS8vajdmMlBKL2VlRWxBMUd5?=
 =?utf-8?B?Uit3alpaTlk3Slg2dU8rSkNVdEd5MW55UlhWVWR3NmdxWDRhVGRzODdvV3Zr?=
 =?utf-8?B?Sk1SNWtvTUJGY2IxZzc0SHdnZFZzMC91anR2N3ZxZ3MzNmsrUGc2K3MxS1Bn?=
 =?utf-8?B?cHpmUFlrOGtteEZWSUpsb09rcGQxWlpGYVJjZUpnS1BvWDdja3o0YnR0bnZC?=
 =?utf-8?B?R0lxb0FzKzhMY0tTUExmRVozdFpjU3NQNlIxbkVadjJrV1Q3aWhGemYvR20z?=
 =?utf-8?B?cTl4a1I4NVIzRGxkRGFyZGg2bFdZa0NqeE5FVGtVUnE5b0JDZUo5ZlhGeVo0?=
 =?utf-8?B?RmVTOWtGRmlLYmhjNDl2UGdwb1p0QmZGRG9uNmdINEZaS0t3ZUdXRjg2OG1K?=
 =?utf-8?B?dVlBVVJtb0U1TnMrc0hvcjNrT0FOQTV2elhDYkpaR2VISjRjcUVJZXoxcnBN?=
 =?utf-8?B?S0t5THdJS0lwN2RneXozdmNUcGdUdzkvV242KzNIdXZIYThXem5ORk0zOWxl?=
 =?utf-8?B?Z1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a938c6f-0a3c-400c-0e0f-08dbfa464b66
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2023 12:40:02.5163 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HIg+mWcXMWirge/OW8G4ST8xQRgU4IIS5CrOHy1MAA950YlbH8A5LiOj/LwnDbPib34VqYGY10jcBccQ5lIg4sPmw4NtwFlgesfjVr2z6Rc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4988
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702298408; x=1733834408;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=h5+1uB4anuceGe6n85onATBVolLqjiTKZDskpkUWnpE=;
 b=Y/V/1/szFW+N4QPUeVqJe1IxGvFa0/8gLIGEXf/hwVRfFjMGGNogdgqa
 Misjan8Ba52A7zizrg0EX/Cy3NCHKQjp9KoEiHuLkkic2CJ80pai0fclM
 keyuOazMQ9I1kX3GgIiod6WxMnb5t3QWCAgAAT7BDZNN3OlKgJ3bMckeX
 HNkjugnXLB5ERe4n+BiLBqfKoMyXYKnmLgSQwRMSkVrQrnZJeq+ovzRuk
 9WjW4q3oXA2l3Hp0ZTUF+Iik5zz2k2JOPRjeQFXOzBlXugVgWjMuZWnDG
 iLF4vLb4lWmVOXQbwG4B7jnNj/J56G9jeqUGuimFax14ZFEn7c0RrqSt3
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y/V/1/sz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/7] Add PFCP filter
 support
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
Cc: andy@kernel.org, michal.swiatkowski@linux.intel.com,
 wojciech.drewek@intel.com, idosch@nvidia.com, jesse.brandeburg@intel.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 simon.horman@corigine.com, jiri@resnulli.us, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogVG9ueSBOZ3V5ZW4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPgpEYXRlOiBGcmks
IDggRGVjIDIwMjMgMTM6MzQ6MTAgLTA4MDAKCj4gCj4gCj4gT24gMTIvNy8yMDIzIDg6NDkgQU0s
IE1hcmNpbiBTenljaWsgd3JvdGU6Cj4+IEFkZCBzdXBwb3J0IGZvciBjcmVhdGluZyBQRkNQIGZp
bHRlcnMgaW4gc3dpdGNoZGV2IG1vZGUuIEFkZCBwZmNwIG1vZHVsZQo+PiB0aGF0IGFsbG93cyB0
byBjcmVhdGUgYSBQRkNQLXR5cGUgbmV0ZGV2LiBUaGUgbmV0ZGV2IHRoZW4gY2FuIGJlCj4+IHBh
c3NlZCB0bwo+PiB0YyB3aGVuIGNyZWF0aW5nIGEgZmlsdGVyIHRvIGluZGljYXRlIHRoYXQgUEZD
UCBmaWx0ZXIgc2hvdWxkIGJlIGNyZWF0ZWQuCj4+Cj4+IFRvIGFkZCBhIFBGQ1AgZmlsdGVyLCBh
IHNwZWNpYWwgbmV0ZGV2IG11c3QgYmUgY3JlYXRlZCBhbmQgcGFzc2VkIHRvIHRjCj4+IGNvbW1h
bmQ6Cj4+Cj4+IMKgwqAgaXAgbGluayBhZGQgcGZjcDAgdHlwZSBwZmNwCj4+IMKgwqAgdGMgZmls
dGVyIGFkZCBkZXYgZXRoMCBpbmdyZXNzIHByaW8gMSBmbG93ZXIgcGZjcF9vcHRzIFwKPj4gwqDC
oMKgwqAgMToxMmFiL2ZmOmZmZmZmZmZmZmZmZmZmZjAgc2tpcF9odyBhY3Rpb24gbWlycmVkIGVn
cmVzcyByZWRpcmVjdCBcCj4+IMKgwqDCoMKgIGRldiBwZmNwMAo+Pgo+PiBDaGFuZ2VzIGluIGlw
cm91dGUyIFsxXSBhcmUgcmVxdWlyZWQgdG8gdXNlIHBmY3Bfb3B0cyBpbiB0Yy4KPj4KPj4gSUNF
IENPTU1TIHBhY2thZ2UgaXMgcmVxdWlyZWQgYXMgaXQgY29udGFpbnMgUEZDUCBwcm9maWxlcy4K
Pj4KPj4gUGFydCBvZiB0aGlzIHBhdGNoc2V0IG1vZGlmaWVzIElQX1RVTk5FTF8qX09QVHMsIHdo
aWNoIHdlcmUgcHJldmlvdXNseQo+PiBzdG9yZWQgaW4gYSBfX2JlMTYuIEFsbCBwb3NzaWJsZSB2
YWx1ZXMgaGF2ZSBhbHJlYWR5IGJlZW4gdXNlZCwgbWFraW5nIGl0Cj4+IGltcG9zc2libGUgdG8g
YWRkIG5ldyBvbmVzLgo+Pgo+PiBbMV0KPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2
LzIwMjMwNjE0MDkxNzU4LjExMTgwLTEtbWFyY2luLnN6eWNpa0BsaW51eC5pbnRlbC5jb20KPj4g
LS0tCj4+IFRoaXMgcGF0Y2hzZXQgc2hvdWxkIGJlIGFwcGxpZWQgb24gdG9wIG9mIHRoZSAiYm95
cyIgdHJlZSBbMl0sIGFzIGl0Cj4+IGRlcGVuZHMgb24gcmVjZW50IGJpdG1hcCBjaGFuZ2VzLgo+
IAo+IElzIHRoaXMgZm9yIGNvbW1lbnQgb25seSAoUkZDKT8gVGhpcyBkb2Vzbid0IHNlZW0gdG8g
YXBwbHkgdG8gaXdsLW5leHQKPiBhbmQgaWYgdGhpcyBiYXNlZCBvbiwgYW5kIGhhcyBkZXBlbmRl
bmNpZXMgZnJvbSwgYW5vdGhlciB0cmVlLCBJIGNhbid0Cj4gYXBwbHkgdGhlbSBoZXJlLgoKSXQn
cyBub3QgYW4gUkZDLgpUaGUgc2VyaWVzIGNvbnRhaW5zIGdlbmVyaWMgY29kZSBjaGFuZ2VzIGFu
ZCBtdXN0IGdvIGRpcmVjdGx5IHRocm91Z2gKbmV0LW5leHQuIFRoZSBkZXBlbmRlbmN5IG9uIHRo
ZSBiaXRtYXAgdHJlZSB3YXMgZGlzY3Vzc2VkIHdpdGggSmFrdWIgYW5kCll1cnkgYW5kIHdlIGFn
cmVlZCB0aGF0IHRoZSBuZXRkZXYgZ3V5cyB3aWxsIHB1bGwgaXQgYmVmb3JlIGFwcGx5aW5nCnRo
aXMgb25lLgoKVGhhbmtzLApPbGVrCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
