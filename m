Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE5E763758
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jul 2023 15:17:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AEBC783131;
	Wed, 26 Jul 2023 13:17:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AEBC783131
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690377467;
	bh=hUiFJEqjjkei90wO6BQdX4byLSjEptaNRhCBLZEyCmo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BIUanFFwLN4zyZJvdEbzB4oJnNYv/C7hG1AkUY92rCBsHRc6OuN7ed0TUyK4xvekv
	 Ox5LXFD7CYMuupuyW+6YHsTgKs7DlGsWW9fuR6mUNlpVqREfDUcU1FrSBV+t20DY8/
	 efyzkk31jUQPrPdeMfLUbYMf1nJIcWQzhZ9+cTXATbzpCSia/hZbRG1XhKUSmYFktM
	 A3pTCD1hEC7LZQpjlkAYnn7pHAyEaM18OyPxN1nnoS7P1S02+jy3mU1oQszzM2uiKe
	 7cmWtxsRQKPdEH9h256ilB6FoCD1sJNync8cqdplW7Dw/9rPKb9KbW31Cxgtvfabwb
	 vK6fiPFWmd8wg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hhYk65N1uN3U; Wed, 26 Jul 2023 13:17:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 74A28830C0;
	Wed, 26 Jul 2023 13:17:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 74A28830C0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5C5CC1BF41F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 13:17:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2D26041DAC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 13:17:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D26041DAC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yNoE9pylZBIC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jul 2023 13:17:40 +0000 (UTC)
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A355141DB3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 13:17:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A355141DB3
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="352913759"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="352913759"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 06:17:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="791861189"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="791861189"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 26 Jul 2023 06:17:37 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 26 Jul 2023 06:17:37 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 26 Jul 2023 06:17:37 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 26 Jul 2023 06:17:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SqQQ8dPaDt1jrA/ZOuEwhsZ1qZ3qDg2ecvG0YKVgMj3K4sauXXuSeKrr/sDRLhgtlvmN6XoCHgK22jixO/wl6FxrIdSZQ0zeGbxrTKyCCpuF0qcepBhf7q/EG0j39udwxfCEzcfZH1ZMYebeEC0QafehSEoIOXVAECGgoY/aLbFjobgQPypecona9BQ68Pofhix7i2G3WTcAJRA2AbfdXOwKdTPj8V01HzDvjVG35HGahuSWSmY+bFm0DGLDyqq8W4MHr6PNgUpSQNJTLuD61kq8okFAaJHzVGVwFUa50Jigas7ySoBdVuFsjzy4FKMgF69cbiIO75ShfsCITDOt/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JAOJQWLlnC53yJUYc2/o2a7yp8wk+BW5CVt1jRzEU/s=;
 b=RO7/9e1b+Z54FqhSDwTwC53lvO7iuArw5n3p1G3GVaaJINGxeQWbi+111GKmifws6mJSuQgLUxHgX00nTVFIxBINLU2aCK+foZoX5GhNzjAQkAWsQCXbfFSibnukXRwrSg9GuI2+z2FV+z1H6BUZ9409AgsUggIfyz4ftsDY6PGJKmERQrsA0XDzaI9vMoHyx5s0EiSpWk3SP/KCl/TbMxedzcln/4oCQa5HkCmMkEGo2WjkKtOyzj0GKjoLe9Asu016TzYdmAqI+E2UkturwRPsAAC55mkdm9MnMvoeL4QBZbyslw6IdUMEGKR/EGT2npZpVpAA4/ewGjfrNrYHqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by CH3PR11MB8660.namprd11.prod.outlook.com (2603:10b6:610:1ce::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.32; Wed, 26 Jul
 2023 13:17:35 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a%7]) with mapi id 15.20.6631.026; Wed, 26 Jul 2023
 13:17:35 +0000
Message-ID: <d5ffe1d3-0378-eaaf-c77f-a1f8a2875826@intel.com>
Date: Wed, 26 Jul 2023 15:16:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Andy Shevchenko <andy.shevchenko@gmail.com>
References: <20230721071532.613888-1-marcin.szycik@linux.intel.com>
 <20230721071532.613888-3-marcin.szycik@linux.intel.com>
 <ZLqZRFa1VOHHWCqX@smile.fi.intel.com>
 <5775952b-943a-f8ad-55a1-c4d0fd08475f@intel.com>
 <CAHp75VcFse1_gijfhDkyxhBFtd1d-o5_4RO2j2urSXJ_HuZzyg@mail.gmail.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <CAHp75VcFse1_gijfhDkyxhBFtd1d-o5_4RO2j2urSXJ_HuZzyg@mail.gmail.com>
X-ClientProxiedBy: BE1P281CA0498.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:7e::28) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|CH3PR11MB8660:EE_
X-MS-Office365-Filtering-Correlation-Id: 3538bbae-ed10-4f0c-27a4-08db8ddaad05
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ddOAmY66xogMYPrW/z8auBhM++uuVWlaNF8f+0MWUFoy6Porm/ZTtS0XY/Drb/zveKJ4AvFQEdDJMbKlQTCBWN0hMLXNt5cmrEIcy469AzI5+YiFskebdSr4iZupMJZOemHep5oZgYgphAtikxT08fO5KJDOozxjcUI/n9d6io5LdsVjBaSwnuPz7YXnnPnL6nT896cE9h9a1mPWF8IX9DgduCD/v4hEY+iMzksQCIRtG0wAH13+hxvOnh8hd9MWiy6BrErCo7+NjPAiNjRKmyo09ER1/RliodpE9B1JOd0XCmIZisQT9SUyLgDp0CQ8Mq53U+deCJsNXSp3OAC+2gxwucli8kQeMfdM2VibfFAszz8FytsQ2VK94wioHKvvMs8SFARLa7mRi98tp5WtoRBVWNQVc2gTy49De0JbHmMymP3O+F8UA9Z1SzFm2Hh5UDTwsEuGUyzI9VGFPqssuo0V3YCb/VMFA73rrI9fEzYKUEaNoGTGM+isiVyhmtskMFPDQgJ3oBAdqUphFin6YzHrS+kRFQozCTRZCMkXVZrMHJ5vpE9WvflcAkKMJO53kNqD4rn4OeC1Jbf4TWAH/r02oMPv1Xb7SP7U5MqxpHs2DE8pOhRI2AlFA5ajLV2PtpbViTM8FfPx4Wf/2OdFrg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(366004)(376002)(346002)(396003)(451199021)(31686004)(86362001)(82960400001)(31696002)(38100700002)(6512007)(4326008)(478600001)(41300700001)(66946007)(316002)(66476007)(5660300002)(7416002)(54906003)(6486002)(8676002)(8936002)(26005)(6666004)(2906002)(6916009)(6506007)(186003)(66556008)(53546011)(83380400001)(36756003)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VzR3eDBUYThMSkwrckgzRld4bjErNVI1L0lZODJ6TVladngzelJaR1ZXTHNG?=
 =?utf-8?B?VEFwSDcwKzRkQkVadzFqQnhsbjQzejhUSUdpakQ0RVVpQ0xZNyt2K0RLUmYx?=
 =?utf-8?B?NzBFTisxNm5pbmJNRGxGWGdDKzVja1Y5bm5Teklpb3JVZVZVdTE2OVBpNlV2?=
 =?utf-8?B?ZmQ1NC84UGh4TStzRDRMOWlXZ25UdmNSRjdRUzh2Kyt1Vkg0blIrbTJULytt?=
 =?utf-8?B?SVQwNSswU1p3amM5WmZ0ZjVyN01KMHA3OWh3bFJ5QjRSdm9qN2dZUHZOYWlQ?=
 =?utf-8?B?Q2wvWkRETU9tSUJJSThqdE5tRFptSTBOV0xXWGVSZlI4U0JlSU9wdDk1SFlh?=
 =?utf-8?B?Unpyb3dUUU92azh5NTFmVzE2czEzN3BXaHJadnhSZWZMd2ZRaTcycE5HdGZq?=
 =?utf-8?B?MGI3MTZuVE1QWVNpK2gzL2dReFJScGRYUTEydHZtNlgyL09HUXdEWUx6WEZJ?=
 =?utf-8?B?dDk5VUNqNmRzSUFMWElCL0d5dUJ5c1Bic01yQkc0TjVOYXVadzBVRWNsYVFD?=
 =?utf-8?B?cndjdE9ob0tVbVFkYTNYT0d2SFd4UFJsUGp6YnVsUzV6cUM0R2h3UWNnb041?=
 =?utf-8?B?eGtGb2JkSzRiZ3g0Y3gxc0ZHODBXVlBzWnV6M1VBTHV0ZTZkL2FWeDRKZXVv?=
 =?utf-8?B?dHdxZXB3VHVITlExUVo5S3RJNEtRdFByTlB2cVBCbG1IZ29GdzlHeWNKY0FH?=
 =?utf-8?B?TVJROU0vUHYrdTBkNGhRSi9HVzNMSW0xVFRWUDZobk5reTlhOE1maUd4N1Zk?=
 =?utf-8?B?d1JYU2RkOHUzVmZzd01qTVZ6cWY2MkhPSzcweUVsc0dnQzhKKy9YZ0xXcEln?=
 =?utf-8?B?VWZEQTlBVXdUTWc2UldaUTd0U21UaDU3bElzbTBJN3BLYlFLZGZoRzRtelUw?=
 =?utf-8?B?c1JuRGgvQjJBcmloRCtLUWR3cFFRL3JYZmZzdkREU3FoaDBFSFo1dWZNaEF1?=
 =?utf-8?B?RHh0a0RnaDdScExIZlAzYU5mNlZvbHRYZEZGdUo4UlZxOXhVZEgzakVEZHY3?=
 =?utf-8?B?dzU5UUZaVzNCQi9kU0JjZXdVZ3BZampxRmRMQmhGNmNXUDlyaHppOE9yQS91?=
 =?utf-8?B?ZlFVL2xCUUJuOStVWllqZldGYUNIYk44RXNkbStQUVJZNEhYM0ZRTjNlaTlM?=
 =?utf-8?B?S3IrOTVBa0hwTXZTMjY3TSt6a0ZoM3lVSXpEK2JINHNZczMwK284bGJiM3l0?=
 =?utf-8?B?cmNYRGV2cFpDaFFvRkdFSFN2eGZWWjh2UlRKK3VjNWRUMWJNZkZzcG4xaVJF?=
 =?utf-8?B?SGxzWDFqdmFwalExN2RENGUwRE9Talo1cDFMbDZUUHdSbi9Zc2RLcmdIZGRD?=
 =?utf-8?B?QkR4c0IwT3hPaG9LMUVoZERjVXdvM1V2b1U5bCs4dlFZdmYxek52aFhhaDVM?=
 =?utf-8?B?emZkZ2hZK3Z2L28ydHA3SkhZN09oSTFVcVlBejlCV2FKMHBhQWhqa0tJNEMw?=
 =?utf-8?B?OG8vdGlDc243VGp2K3QvOU0yazB2Mk9uNEJZTjhmUXU1QTg5SC9uTzRtVGdZ?=
 =?utf-8?B?QnNRK0hDcVFwOG1YUW5xZ2dUQnV0UGNMTGFZUU1pUlFqU2JKODRzcUpFM1Fv?=
 =?utf-8?B?Z0JhQzAvV2l2RDE3UTdHdTlKOERRQUdpK3YrdmpCQmt0TERMRlhDRDZ6eUlt?=
 =?utf-8?B?WjFxcmdRN3FFb2F4cW1EM1NwQitKOTFTUDlBU0plVVFEcmVrbzBrcW1QTE0y?=
 =?utf-8?B?eHhYbDRNZTVRdUo1VWFQalFzdWJvRzVQZVp4aTBjNFE5SWs5QVlGSTRtQjNO?=
 =?utf-8?B?aythMHhRSHMwZFRPaEVYQ0JBUGpPS2cwb1Jnbkp5b3hnTHd0Q3ZrbUdLNlVm?=
 =?utf-8?B?ZzVyL0tPYWRuTlVWdW1iekx5Zy9ybkxoc08zbXNGYmphSnVLMXphaUxXVVho?=
 =?utf-8?B?NG5MSlU2Ny9VMzJHQnN5bnRFVzJNbmJZSlNNRTBYd0g5dnFFLzJDUThTOEIy?=
 =?utf-8?B?V0VOMGM2bTRCTDJXOVorUm9vd1ZwZHVnMVhDQXRHaWdvLzYwa1hDOEkzSjJt?=
 =?utf-8?B?Szc3OFdRd2U4WWxlRlBRZ2NFbXV1dWVWeUd3UFF3c1RRbytkTGlkaXlxWEtL?=
 =?utf-8?B?U1hGdVV4bWZBNlJyK0pKSHJVb3FvdFNKa0J0TUhiRzY4NFlwSVN5QUxuNkNj?=
 =?utf-8?B?TlBPMjRFZ0huYTAyTnV2ZVVkOUdpbjcyb0dlQ2Z6TGlBN3U4TnZKQlNvK3R0?=
 =?utf-8?B?Ymc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3538bbae-ed10-4f0c-27a4-08db8ddaad05
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2023 13:17:35.1393 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R32duqn/iOpMxF3L1qw9Eu0n7+9PBZJYs7JxIKx6VAfdXRb+9ekW2nUGyxhJmF/cKkEMFkqorO8j53kRaWUkr/pRDGGNZVjKZsRg5A4nfAs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8660
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690377459; x=1721913459;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tdwInxS3FZyBEO9JgO2qkxjwqQxm9RYaaeMJ895hjmw=;
 b=LIJfvhHdzzfztH/1EXc1CK5Sj0iser0RM41XNCC0V1O/Dr2tMju4y78U
 rn8OABFnZjjWW5s6wXV8/RSt3hh2PBpBsS/wkuLLe06R8jo0JztY38r+9
 i24+ZCu/xQwdA0SFIoM++ISfpqjcfnQFqwjYRlIAELRvu5HgyzQiP8tNq
 GDs+g6Vy8L3wXEobA6qpnNR36eVm+wRFCtyiZNZz1fdhlGZTRN6A55hAD
 UCTc4jEGUxCqDf25u/LoRMo/qCieKmh1kVsu5bc2ueXAZgQ1CGudhAOcz
 XgP3+jvAfFVyfik3S+wpxcg+LZpBo2J+Hnm02ZTSs5qWviL5AirmANTfM
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LIJfvhHd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/6] ip_tunnel: convert
 __be16 tunnel flags to bitmaps
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
Cc: Andy Shevchenko <andy@kernel.org>, Yury Norov <yury.norov@gmail.com>,
 netdev@vger.kernel.org, idosch@nvidia.com, jiri@resnulli.us,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 simon.horman@corigine.com, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQW5keSBTaGV2Y2hlbmtvIDxhbmR5LnNoZXZjaGVua29AZ21haWwuY29tPgpEYXRlOiBX
ZWQsIDI2IEp1bCAyMDIzIDE1OjAxOjQ0ICswMzAwCgo+IE9uIFdlZCwgSnVsIDI2LCAyMDIzIGF0
IDI6MTHigK9QTSBBbGV4YW5kZXIgTG9iYWtpbgo+IDxhbGVrc2FuZGVyLmxvYmFraW5AaW50ZWwu
Y29tPiB3cm90ZToKPj4gRnJvbTogQW5keSBTaGV2Y2hlbmtvIDxhbmR5QGtlcm5lbC5vcmc+LCBZ
dXJ5IE5vcm92IDx5dXJ5Lm5vcm92QGdtYWlsLmNvbT4KPj4gRGF0ZTogRnJpLCAyMSBKdWwgMjAy
MyAxNzo0MjoxMiArMDMwMAo+Pgo+Pj4gK0NjOiBZdXJ5IG9uIGJpdG1hcCBhc3NpZ25tZW50cy4K
Pj4KPj4gSSB0b2xkIE1hcmNpbiB0byBhZGQgeW91IHRvIENjIHdoZW4gc2VuZGluZywgYnV0IGZv
cmdvdCBZdXJ5LCBteQo+PiBhcG9sb2dpZXMgPVwKPj4KPj4+Cj4+PiAoWXVyeSwgSkZZSSwKPj4+
ICBpZiB5b3UgbmVlZCB0aGUgd2hvbGUgc2VyaWVzLCB0YWtlIG1lc3NhZ2UgSUQgYXMgJE1TR19J
RCBvZiB0aGlzIGVtYWlsCj4+PiAgYW5kIGV4ZWN1dGUKPj4+Cj4+PiAgICBgYjQgbWJveCAkTVNH
X0lEYAo+Pj4KPj4+ICB0byByZXRyaWV2ZSBpdCkKPj4+Cj4+PiBPbiBGcmksIEp1bCAyMSwgMjAy
MyBhdCAwOToxNToyOEFNICswMjAwLCBNYXJjaW4gU3p5Y2lrIHdyb3RlOgo+Pj4+IEZyb206IEFs
ZXhhbmRlciBMb2Jha2luIDxhbGVrc2FuZGVyLmxvYmFraW5AaW50ZWwuY29tPgo+IAo+IC4uLgo+
IAo+Pj4+IGFuZCByZXBsYWNlIGFsbCBUVU5ORUxfKiBvY2N1cmVuY2llcyB0bwo+IAo+IG9jY3Vy
cmVuY2VzCj4gCj4gLi4uCj4gCj4+Pj4gb3RoZXJ3aXNlIHRoZXJlIHdpbGwgYmUgdG9vIG11Y2gg
Y29udmVyc2lvbnMKPiAKPiB0b28gbWFueQo+IChjb3VudGFibGUpCgpPb29mIDp6Cgo+IAo+IC4u
Lgo+IAo+Pj4+ICtzdGF0aWMgaW5saW5lIHZvaWQgaXBfdHVubmVsX2ZsYWdzX2Zyb21fYmUxNih1
bnNpZ25lZCBsb25nICpkc3QsIF9fYmUxNiBmbGFncykKPj4+PiArewo+Pj4+ICsgICAgYml0bWFw
X3plcm8oZHN0LCBfX0lQX1RVTk5FTF9GTEFHX05VTSk7Cj4+Pgo+Pj4+ICsgICAgKmRzdCA9IGJl
MTZfdG9fY3B1KGZsYWdzKTsKPj4+Cj4+PiBPaCwgVGhpcyBpcyBub3QgZ29vZC4gV2hhdCB5b3Ug
bmVlZCBpcyBzb21ldGhpbmcgbGlrZSBiaXRtYXBfc2V0X3ZhbHVlMTYoKSBpbgo+Pj4gYW5hbG9n
dWUgd2l0aCBiaXRtYXBfc2V0X3ZhbHVlOCgpLgo+Pgo+PiBCdXQgSSBkb24ndCBuZWVkIGBzdGFy
dGAsIHRob3NlIGZsYWcgd2lsbCBhbHdheXMgYmUgaW4gdGhlIGZpcnN0IHdvcmQKPj4gYW5kIEkg
ZG9uJ3QgbmVlZCB0byByZXBsYWNlIG9ubHkgc29tZSByYW5nZSwgYnV0IHRvIGNsZWFyIGV2ZXJ5
dGhpbmcgYW5kCj4+IHRoZW4gc2V0IG9ubHkgdGhlIGZsYWdzIHdoaWNoIGFyZSBzZXQgaW4gdGhh
dCBfX2JlMTYuCj4+IFdoeSBzaG91bGRuJ3QgdGhpcyB3b3JrPwo+IAo+IEknbSBub3Qgc2F5aW5n
IGl0IHNob3VsZCBvciBzaG91bGRuJ3QgKGFjdHVhbGx5IHlvdSBuZWVkIHRvIHByb3ZlIHRoYXQK
PiB3aXRoIHNvbWUgdGVzdCBjYXNlcyBhZGRlZCkuIFdoYXQgSSdtIHNheWluZyBpcyB0aGF0IHRo
aXMgY29kZSBpcyBhCgpHb29kIGlkZWEgQlRXIQoKPiBoYWNrIGJlY2F1c2Ugb2YgYSBsYXllcmlu
ZyB2aW9sYXRpb24uIFdlIGRvIG5vdCBkZXJlZmVyZW5jZSBiaXRtYXBzCj4gd2l0aCBkaXJlY3Qg
YWNjZXNzLiBFdmVuIGluIHlvdXIgY29kZSB5b3UgaGF2ZSBiaXRtYXBfemVybygpIGZvbGxvd2Vk
Cj4gYnkgdGhpcyBoYWNrLiBXaHkgZG8geW91IGNhbGwgdGhhdCBiaXRtYXBfemVybygpIGluIHRo
ZSBmaXJzdCBwbGFjZSBpZgo+IHlvdSBhcmUgc28gc3VyZSBldmVyeXRoaW5nIHdpbGwgYmUgb2th
eT8gU28gZWl0aGVyIHlvdSBzdGljayB3aXRoCgpCZWNhdXNlIHRoZSBiaXRtYXAgY2FuIGJlIGxv
bmdlciB0aGFuIG9uZSBsb25nLCBidXQgd2l0aCB0aGF0IGRpcmVjdApkZWZlcmVuY2UgSSBvbmx5
IHJld3JpdGUgdGhlIGZpcnN0IG9uZS4KCkJ1dCBJIGFkbWl0IGl0J3MgYSBoYWNrICh3YXNuJ3Qg
aGlkaW5nIHRoYXQpLiBKdXN0IHRob3VnaHQgdGhpcyBvbmUgaXMKInNlbWktaW50ZXJuYWwiIGFu
ZCBpdCB3b3VsZCBiZSBva2F5aXNoIHRvIGhhdmUgaXQuLi4gSSB3YXMgd3JvbmcgOkQKV2hhdCBJ
J20gdGhpbmtpbmcgb2Ygbm93IGlzOgoKCWJpdG1hcF96ZXJvKCkgLy8gbWFrZSBzdXJlIHRoZSB3
aG9sZSBiaXRtYXAgaXMgY2xlYXJlZAoJYml0bWFwX3NldF92YWx1ZTE2KCkgLy8gd2l0aCBgc3Rh
cnRgID09IDAKCldpdGggYWRkaW5nIGJpdG1hcF9zZXRfdmFsdWUxNigpIGluIGEgc2VwYXJhdGUg
Y29tbWl0IG9idmlvdXNseS4KVGhhdCBjb21ibyBzaG91bGRuJ3QgYmUgdG9vIGhhcmQgZm9yIHRo
ZSBjb21waWxlciB0byBvcHRpbWl6ZSBpbnRvCmEgY291cGxlIHdyaXRlcyBJIGhvcGUuCgo+IGJp
dG9wcyAvIGJpdG1hcCBBUElzIG9yIGRyb3AgYWxsIG9mIHRoZW0gYW5kIHVzZSBQT0QgdHlwZXMg
YW5kIGJpdAo+IHdpc2Ugb3BzLgo+IAo+IC4uLgo+IAo+Pj4+ICsgICAgcmV0ID0gY3B1X3RvX2Jl
MTYoKmZsYWdzICYgVTE2X01BWCk7Cj4gCj4gU2FtZSBhcyBhYm92ZS4KPiAKPiAuLi4KPiAKPj4+
PiArICAgIF9fc2V0X2JpdChJUF9UVU5ORUxfS0VZX0JJVCwgaW5mby0+a2V5LnR1bl9mbGFncyk7
Cj4+Pj4gKyAgICBfX3NldF9iaXQoSVBfVFVOTkVMX0NTVU1fQklULCBpbmZvLT5rZXkudHVuX2Zs
YWdzKTsKPj4+PiArICAgIF9fc2V0X2JpdChJUF9UVU5ORUxfTk9DQUNIRV9CSVQsIGluZm8tPmtl
eS50dW5fZmxhZ3MpOwo+Pj4+ICAgICAgaWYgKGZsYWdzICYgQlBGX0ZfRE9OVF9GUkFHTUVOVCkK
Pj4+PiAtICAgICAgICAgICAgaW5mby0+a2V5LnR1bl9mbGFncyB8PSBUVU5ORUxfRE9OVF9GUkFH
TUVOVDsKPj4+PiArICAgICAgICAgICAgX19zZXRfYml0KElQX1RVTk5FTF9ET05UX0ZSQUdNRU5U
X0JJVCwgaW5mby0+a2V5LnR1bl9mbGFncyk7Cj4+Pj4gICAgICBpZiAoZmxhZ3MgJiBCUEZfRl9a
RVJPX0NTVU1fVFgpCj4+Pj4gLSAgICAgICAgICAgIGluZm8tPmtleS50dW5fZmxhZ3MgJj0gflRV
Tk5FTF9DU1VNOwo+Pj4+ICsgICAgICAgICAgICBfX2NsZWFyX2JpdChJUF9UVU5ORUxfQ1NVTV9C
SVQsIGluZm8tPmtleS50dW5fZmxhZ3MpOwo+Pj4KPj4+IEluc3RlYWQgb2Ygc2V0L2NsZWFyLCB1
c2UgYXNzaWduLCBpLmUuIF9fYXNpZ25fYml0KCkuCj4+Cj4+IEp1c3QgdG8gbWFrZSBpdCBjbGVh
ciwgeW91IG1lYW4KPj4KPj4gICAgICAgICBfX2Fzc2lnbl9iaXQoSVBfVFVOTkVMX0NTVU1fQklU
LCBpbmZvLT5rZXkudHVuX2ZsYWdzLAo+PiAgICAgICAgICAgICAgICAgICAgICBmbGFncyAmIEJQ
Rl9GX1pFUk9fQ1NVTV9UWCk7Cj4+Cj4+IHJpZ2h0Pwo+IAo+IFllcy4KPiAKPiAKClRoYW5rcywK
T2xlawpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
