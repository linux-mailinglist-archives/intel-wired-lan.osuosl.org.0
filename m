Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC3A80DD3C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Dec 2023 22:35:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E993141AAE;
	Mon, 11 Dec 2023 21:35:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E993141AAE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702330526;
	bh=B1uzV7aaF7/e7+pb23mECIV3vsYDnsXzVk17jkgO5RI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2tOGGLTw1Gu2cx7YhVXhmfRIlv9085ZV9FqQMDQADu4oZCexYgjBpqyrxcjk57Jxi
	 ezi08AeEjRpjAqecomN4GvYeDGNWCDdcioICbGGDzwT5O8Yn7NY41Wdj0K3zI+2gvv
	 LoHxJ25pqC6D4cON6zIHcPS0waBA/vwOf9cwxMvCKxINKF38A4Jqrv7vmOlcHjXejb
	 6xCdVnESFhQk7JuNXUEk6R87cdGyAhzYvNvi3EnZ/XSlfve0YHzWmuShFe1fIdMm4q
	 omr44DHJxAhv0o9n2AIJibF9we8GqudCGsMZ0maSXaEjIJkbN6+QG64LgczyAloTve
	 HwyBxlP0iByvA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I-ybdfEent-b; Mon, 11 Dec 2023 21:35:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F87A404E5;
	Mon, 11 Dec 2023 21:35:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F87A404E5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A1E331BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 21:35:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 85ED860BC1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 21:35:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 85ED860BC1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fvEeGW4S6S00 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Dec 2023 21:35:17 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7C6EF606EC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 21:35:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C6EF606EC
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="393588306"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="393588306"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 13:35:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="773264414"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="773264414"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Dec 2023 13:35:16 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Dec 2023 13:35:10 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Dec 2023 13:35:10 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Dec 2023 13:35:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PHrnUyTkgVToNgW5ew2Xp6EeUEZRh1XTNNJanQ5rKPJKJHfORfhIEjURs3/68hiYixEvupNpjNiymDTBWFzTNifvu+95eIdSvUWQRpJ+YN4XuAAAvt29LEoU4kD0aLq6pFOficODguq+4pjrsVmZJiBTNG91tQ8z6JYSJevw1OLIRG/dyGceiR6iBe19ag7oMcIsBJMBIJ1fKQWW3K5p6l7NDkP9TbSvSrL2TkFbuI7KpetPlZLfQkgMl/SZ5xJp9C2GKZhn6fcYrh7YlssnGAMz3wpz4jW/XNtWFy6mUZY5K+voFFLJebRs0kmYbdTJ41QJ1kCY6bUv2e5I/XtVWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FDxj6IZJHuiatUK4NO7NV8sPcT9H+/kRG+aJ2ELBbQg=;
 b=SG0yOEefTOt8e3ZwWE55nptcliCiC94BQCPt28V1eTuE51AEkP8Mm46rxfNsmBMWFx9w14v/UjnkimF9daC7Un9LT4Us8fh3f00Mh8MqJKnQOIVNRgB+BGguGdB8r3CLgGx8r83zrhR0wcBZvkB2PCzFECNshiAHgCAXH776E/IwEEZhEP8g6tWvG3gsXLayNDauVFCpskir5Z/WQuLdsPZXbLFrSRKdyCCX0Q5OCaHKJ2cDdViYsNoxIh7V2K8j9VgAvLZIMROw0Q5O40NOGCYhb885p/5uLVm4+v+lwSbm39uDU+Th95gUXfaf4Oi2tYzfyXQEj4JJLVlM0+nn0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by MN0PR11MB6033.namprd11.prod.outlook.com (2603:10b6:208:374::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.32; Mon, 11 Dec
 2023 21:35:07 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3%4]) with mapi id 15.20.7068.031; Mon, 11 Dec 2023
 21:35:07 +0000
Message-ID: <3a899036-be91-4ac3-1ced-f32df9ba9c13@intel.com>
Date: Mon, 11 Dec 2023 13:35:04 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
References: <20231208090055.303507-1-jedrzej.jagielski@intel.com>
 <20231208090055.303507-2-jedrzej.jagielski@intel.com>
 <f63dca8f-0082-6e22-5ab5-3b940b646053@intel.com>
 <DM6PR11MB2731EFF4B5E7BDE8886EA913F08FA@DM6PR11MB2731.namprd11.prod.outlook.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <DM6PR11MB2731EFF4B5E7BDE8886EA913F08FA@DM6PR11MB2731.namprd11.prod.outlook.com>
X-ClientProxiedBy: MWH0EPF00056D1B.namprd21.prod.outlook.com
 (2603:10b6:30f:fff2:0:1:0:18) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|MN0PR11MB6033:EE_
X-MS-Office365-Filtering-Correlation-Id: f6cc9ac7-2e3b-4aa0-b1e3-08dbfa910b2d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tCQ5dbI0a0b1bFAp/AZ2qnn4QKZhzwhilWG3zuD+rSpeapYeQszMdppBdI7cpaDVUSljmfUAzjYSsNjEHRJmiObzCwY3ShfdAlQvFheTjw+pJuJxXU3njwwUBh4NZx0+bvtMuban4WlMv2cXUi712vdkknis6+2YDa6aNZCKodWhQN5r8bwL1eTr0r+Oy6elbYS8z4tM8HZRevQcYDoAUy15eHlr5fRmEbJA1tKatYx34EL3eKLcSOX7aFqw1aGNyh3eBtDrQ/aKsLPeOWzwPO/zY7qK9tIe8jsTgE3Bb/90PSyvfLZ5BdcXwU7RYPa0IIF9OVEMB496aWOruUIof/o8oL9cn/khpIntQxwNXAXXqQRfFv7yETFS+5vjxA/Q4ZOIC01xcUIC7/hg7geDrYtXfEyyb6l+KXXO5Zx6cXkrmVdo2VtF1uFbQYtKzo813CZI31DWhGeFd60797bIgWiuUYag+gDjthBw5zrQ5WPDwVpK2lYB3LAPXEiarA9m8F/BDCl0oHpPnNdBotQy6sdgUjexGpH61uDFe46ihnFyXPbq9R59dkHNQxqEzFyz+9TsBuOa52LVW/r+0Vy2IGdzh0vqhpOxwhrD5R15j19O4O+b0fLOJjqI1xO771Z5xLgL87BTSGduvMnTiKsgEg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(376002)(136003)(346002)(366004)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(53546011)(6512007)(2616005)(6666004)(26005)(6486002)(478600001)(6506007)(41300700001)(83380400001)(5660300002)(2906002)(66476007)(66556008)(66946007)(4326008)(316002)(8676002)(8936002)(110136005)(38100700002)(86362001)(31696002)(36756003)(82960400001)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZkxUM0xnV1NOTmVyeG9wdkpOanhQR09xbFN1dnpMdWxlZm9ma1RtYzB0YzF3?=
 =?utf-8?B?NzY5THRLaDRzTG45cjU1aVNCcHFOUlp0KzE4UXZobVlOS3VmQkFKOEtHaExn?=
 =?utf-8?B?THBKQTNJYUJ4RGRWNExmcU1aVndIZHVJdWxqbVJsbDI5NGNDVTN1YjZpc3Ft?=
 =?utf-8?B?YkttMVVYKzVKUWlBUTh5UU5NZ2hES0pQbFd2QnY0eEhIQ0ZZaDNiS1FVN3VT?=
 =?utf-8?B?ZGN3NGZ5WlF6cXNsYi95dmwvZjhmZ01tRERmK3ZrakpVWW9ZUkJHQ1ZjVU9v?=
 =?utf-8?B?K0NVTG5xWHlRaHhONkZGRGlvRW12T1IrakE2ZXpuT0NLNVBJN1JjenF3ZTJ2?=
 =?utf-8?B?MmJhaklkRTB3NFhQcHlkYm1TVzF1Z0dkeFNoekhaa1BpcUluZGdHdDhZelNu?=
 =?utf-8?B?dURZbHdLc0FsWmVmWEw2bVA4NGg2SjRQYWlmQ2lHNGNYNDZTZjB0Y3RKNzNZ?=
 =?utf-8?B?Rzl1VStCWXEwaHJZV3kxSkFQUUZwYVpFa2JQRUF6RmFrUitKR0FEd3ozNlBG?=
 =?utf-8?B?V0dzMEtsUjNwa21HOVhYeFhENGJjNkxrRjRJZ2JRazFPOWVPS2hzeXJXbUtY?=
 =?utf-8?B?UHF3VGFyL1lLZkZROE5IZGZtQzJRN2NFdGpMSWc0cklvM2M4ZEVjeTB2UWx3?=
 =?utf-8?B?bVNWbW9iTmVWajZ1bXg3Nk53WUhxY3lpL3pRYjVKR2MxdVd2Sy9hWXJ1N1Ay?=
 =?utf-8?B?ZUY2NmxZODZnV0hlTGNoak1xNTQrSWFUVEM2NlRTK3BnOHRnb01IYzdIYW5r?=
 =?utf-8?B?cnM4T3BISjZVaElCRGIxRGxuSkNZd1NDeFdIekg2SkZPUXR2UkI5Qjc5Yzhu?=
 =?utf-8?B?QnhWeVNzK3J2bkZBN3VjWDVrNG9HMXBEK3J6emRPQVRNZkEzZEluM0hPcEdD?=
 =?utf-8?B?RUJTZGJkT1REY3RtU3djK0NCV2tYR24xKzVIcGVVdTlWRGVOWXBUVUZVT3R2?=
 =?utf-8?B?bXJLa2xPVVJvbEh4K3oyWHlYZ29LemJqcUNRRCtqY3JQQ0h3Q2trdkxucTcy?=
 =?utf-8?B?dm9odkdQbVppdHV2UWVwZk9rYXM3aUNTdHVLcU0rTXZrY0FCdzR6clNZdmhq?=
 =?utf-8?B?R2NNNVQ1VStCMFgxUSthMmZQamw0M1hsckQ2em5UazFLODFOdW16b3NiWUZB?=
 =?utf-8?B?YnoxVWhTeTU3cjhtU0hjd3VrSFh5Y1JQNVJVSkdXUmxDdndaMGRlRVBwV2NQ?=
 =?utf-8?B?ZFFLL0ozUzFGSXg3dFJwMkprK1hFKzhWcnZnWFFvMnhiMFZPbmM3N3lSWXhm?=
 =?utf-8?B?NFlOdERHeVlGaGdwaElGLzZkWW1DbDBnVTFIV000WTVwMkg4WXpQSUQxc293?=
 =?utf-8?B?UDd1WFV4MHNZSkdYaFQ1VjhpZms5OStpaWY1Qk0wOW9VaTd1MTZLZW5qeEFq?=
 =?utf-8?B?MVJJUGNwUDFiK2tDVDJwZmJ0Q2F5RnRxOW9BSGtYQVU0RnQyM2tPUUcvV2xM?=
 =?utf-8?B?R3U4NVdFeS8zNkVMRHVGSHF2WjNKR2lBalB5ZGtjWWpwUyt1SDdXZjhNS2Nt?=
 =?utf-8?B?UlNpWWU3L3Nwd3JPdVBlUGpSOEdJUS92YUl5N1BlT3IzTFlZMkdtMUlBWmdn?=
 =?utf-8?B?cVE2WGN3YWVwOTd1Q3FRVmJyS3ptSjRzMWVUUXZlZDVmTnYzVlhOaTBOOW5q?=
 =?utf-8?B?SjRqNE5UcWFQMU5yU0JYbXFLaVhrUzRnbHlKd2VnL2puV1ZTaHlGcjZGVjZQ?=
 =?utf-8?B?aGswQ0NsNjBjL1JETmhmY2V6eEdmd2MrbjU5MjVFcGcrc1VMSWhWbWhIQWxj?=
 =?utf-8?B?VXRhWjcvUzluWTYrdXhqTVFpYng1Q0h1elFvakNiMDF6bk9DUmo3SW83MSto?=
 =?utf-8?B?Z2Z3bGNxalZ1ZTFjZERISXVLclFwaFNLK2NoeDdxMWhxRVRTbWw0T3Rqa29r?=
 =?utf-8?B?ZDk2RnMzREVkYS81Sm5xZGF5UWtwZXNaUWlkZXFjTDJzOGhvNnlRaGhKeUpn?=
 =?utf-8?B?NTl4RjdmcmhaSFJKbXdOS3E5UlorMGFEYnFlNmY1RTdYaXpOMTlOUWlVeHly?=
 =?utf-8?B?ZTBMUnZBT0FiR3MyYUd5V2pQaHkrV3p6TDlwR1RVR1cvS3FocEVpQUtUM0JC?=
 =?utf-8?B?dEFaSWZqM01XeU52bzdVa2RYVVN6T01tdzVEcHFjak9KNjc1eFFXbEtMWDRr?=
 =?utf-8?B?bkJycmhOdUZQQzZjODFqeXNaRHd4VUwrNmFZYlBwRjFFYlFObXVSTytUY2o0?=
 =?utf-8?B?RlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f6cc9ac7-2e3b-4aa0-b1e3-08dbfa910b2d
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2023 21:35:06.9577 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: os2KwW2BrnvfUIqkCc8gmKDyczG6FzUaXZbD32RxfdejugGSNwqUF5fCFS9D+ECiMIx530iY3QMuRYcdWlawO4PFsEi+lfzbTR5ddebebLY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6033
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702330517; x=1733866517;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EgXb2HLL1panCNq7ye2Jv/B8vVAHUq/QfnZ/GKDU3Zs=;
 b=eVwmMikDca/QiwnQMBv9YPUmb8WNNRHmx9O5GmWNVauJzo57pp3Sthb2
 MY264pJp/vaRz9d5LbuclfPAbJO42oQN1HqOyqOoQrsgHRHz4YxePkDLL
 r6yzCvyoveI0Fqic5O8QGCUiqA+i/JFTgtePwKjdmLo01tRcb1tf53TL6
 r9QOO2xSGA/ESXyfvnp9ivxzhC34zsFm2VkR+GvvwTDYxQzegFt2s3L97
 Jg4jN4VJFQj1j7xUR7HAcxs1ax5Ch/uvRX3kHOgRhAVb0eeHX1sOt/nLh
 ijhrQhyBOACQhJWx8/kAyLg1CepITB0Krw1U+KH3rIcQjw/kIeQI05zZL
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eVwmMikD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/2] ixgbe: Refactor
 overtemp event handling
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/11/2023 1:45 AM, Jagielski, Jedrzej wrote:
> From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Sent: Friday, December 8, 2023 11:07 AM
> 
>> On 12/8/23 10:00, Jedrzej Jagielski wrote:
>>> Currently ixgbe driver is notified of overheating events
>>> via internal IXGBE_ERR_OVERTEMP error code.
>>>
>>> Change the approach to use freshly introduced is_overtemp
>>> function parameter which set when such event occurs.
>>> Add new parameter to the check_overtemp() and handle_lasi()
>>> phy ops.
>>>
>>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>>> ---
>>> v2: change aproach to use additional function parameter to notify when overheat
>>
>> on public mailing lists its best to require links to previous versions
>>
>>> ---
>>>    drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 20 ++++----
>>>    drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  | 33 +++++++++----
>>>    drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h  |  2 +-
>>>    drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  4 +-
>>>    drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 47 ++++++++++++-------
>>>    5 files changed, 67 insertions(+), 39 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>>> index 227415d61efc..f6200f0d1e06 100644
>>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>>> @@ -2756,7 +2756,7 @@ static void ixgbe_check_overtemp_subtask(struct ixgbe_adapter *adapter)
>>>    {
>>>    	struct ixgbe_hw *hw = &adapter->hw;
>>>    	u32 eicr = adapter->interrupt_event;
>>> -	s32 rc;
>>> +	bool overtemp;
>>>    
>>>    	if (test_bit(__IXGBE_DOWN, &adapter->state))
>>>    		return;
>>> @@ -2790,14 +2790,15 @@ static void ixgbe_check_overtemp_subtask(struct ixgbe_adapter *adapter)
>>>    		}
>>>    
>>>    		/* Check if this is not due to overtemp */
>>> -		if (hw->phy.ops.check_overtemp(hw) != IXGBE_ERR_OVERTEMP)
>>> +		hw->phy.ops.check_overtemp(hw, &overtemp);
>>
>> you newer (at least in the scope of this patch) check return code of
>> .check_overtemp(), so you could perhaps instead change it to return
>> bool, and just return "true if overtemp detected
> 
> Generally I think it is good think to give a possibility to return error code,
> despite here it is not used (no possibility to handle it since called from
> void function, just return).
> All other phy ops are also s32 type, so this one is aligned with them.
> 
> @Nguyen, Anthony L What do you think on that solution?

We shouldn't carry a return value only to align with other ops. If we 
there's no need for it, we shouldn't have it... however, aren't you 
using/checking it here?

@@ -406,9 +407,12 @@  s32 ixgbe_reset_phy_generic(struct ixgbe_hw *hw)
  	if (status != 0 || hw->phy.type == ixgbe_phy_none)
  		return status;

+	status = hw->phy.ops.check_overtemp(hw, &overtemp);
+	if (status)
+		return status;

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
