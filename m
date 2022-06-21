Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 04622553BB9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Jun 2022 22:40:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 71F2461093;
	Tue, 21 Jun 2022 20:40:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 71F2461093
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655844037;
	bh=vPN/liNLJK6PFGCLTv21U2JzHBBZnZUJ+rUPOb+4ElQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sMFJ8VCoJsAMCsd0JIDHHYO1NyDvZfOFPs8Kg0I1lHPuyLmVbqDu/zRwNOK1pH0/R
	 wpuqxU+tJBiOavHeQs8AVouRWRottlVGu55PxqkbIZMwEFl4IfFsUpXYKa4Fi9oLqA
	 0gLKp04pU+wlGC3Xvq2aV/yVdz1Wymzbs1vWWRMIPhiOsidReptYJ6qsoumwCCHvPk
	 +CVXIXIdmPdl8kgdu+YAXngSd0wNCrGWWo2BisXY3RrS2+qH01M9UPBXGxo0t1npAi
	 U8F0g7EVVyb3dbdoeZzST0K5jT9wn50zU6bDjs0Dr7w6n37fQjY+3/een9ki65ly7O
	 WK9iUDp/CBfuA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ckYAaqeK9E1j; Tue, 21 Jun 2022 20:40:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5AD5D60B1E;
	Tue, 21 Jun 2022 20:40:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5AD5D60B1E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 517441BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jun 2022 20:40:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 24AB840BDE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jun 2022 20:40:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24AB840BDE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zegLzvo1bWu4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Jun 2022 20:40:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 00F9D4023B
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 00F9D4023B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jun 2022 20:40:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="277780681"
X-IronPort-AV: E=Sophos;i="5.92,210,1650956400"; d="scan'208";a="277780681"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 13:40:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,210,1650956400"; d="scan'208";a="914309447"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 21 Jun 2022 13:40:29 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 21 Jun 2022 13:40:28 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 21 Jun 2022 13:40:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 21 Jun 2022 13:40:28 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 21 Jun 2022 13:40:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lSN0pF2J+AWfZ4h5RMgSV38lYtZLa4dQ3GERkUkpAuRfqYVtJ6+1pOPLsfb8/B0shcANxravYQQGOAuF77IdSqJuWdFy0WdOHpFed6Og0ZGHlSnRjtgdf6NqbRXzWlJlTHL6VrEA9SAhnZON010QSvNZBZH0N2LlceNJbj9Pjc+68+hSlZPPHiQFL5eeyvXkpTczKsD2hMvgpcjZ4hw+sJmZgVk8s2SqWAjFwLObYkk52iab1M7+Jcnd99dij8nglusYyBwS9/qWW8TS8Osgy7xJ6OJcEEZuIit69/y1T0oc1RnEgbrkYHc0t+LOQ/rpTv1uqkqhMBM3F0hJ9NtrMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JajPnLcZPZ/u3slVdtdyWIO/JVJUc4WcSYtv5BB0aV4=;
 b=LvoPlyYdnDkx+ydjLxZZQ6gYiPh/7lWpbVY5sOb0Ava8Cc+kPHkTK40xUAPARI1qTQrNpGeOK5DR8I1507psN7h4PhAT3VHKP4btHIif5kpR0P7wc85ir3Y0L/j38VBCqyj1CHJNFgM0Nm+f1cgQZ5gMgelKrN8Rzk6yfN3ojcb0KdtlV99az7aXT4d5zxqGLXEirepl2f0F9xGwQYI35yGrJ3I/AM/ea3jaMA9URB9jnmZY5XbsoOu6ZxAvjJ1h1DWTk2JFXDgJNQ7xfCIcQUnofWVUcC8yTyJTrQCSa/86wP+FKKhnOkShCImYi9rsLb5Teu0dtvE4nko+ANGVfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM6PR11MB3531.namprd11.prod.outlook.com (2603:10b6:5:61::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.16; Tue, 21 Jun
 2022 20:40:27 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::70f8:baee:885f:92ef]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::70f8:baee:885f:92ef%2]) with mapi id 15.20.5353.022; Tue, 21 Jun 2022
 20:40:26 +0000
Message-ID: <bc8d3d9d-fa62-7e90-9809-449b7338800d@intel.com>
Date: Tue, 21 Jun 2022 13:40:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, "Gustavo A. R. Silva"
 <gustavoars@kernel.org>, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
References: <20210525230429.GA175658@embeddedor>
 <ee2c8631-6e3f-c113-cc8e-29834bcc348e@embeddedor.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <ee2c8631-6e3f-c113-cc8e-29834bcc348e@embeddedor.com>
X-ClientProxiedBy: MW3PR05CA0028.namprd05.prod.outlook.com
 (2603:10b6:303:2b::33) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c2fb7eb6-7367-468d-6843-08da53c645d5
X-MS-TrafficTypeDiagnostic: DM6PR11MB3531:EE_
X-Microsoft-Antispam-PRVS: <DM6PR11MB3531430A97FC3623186E6B07C6B39@DM6PR11MB3531.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: a4GUbxFm5x+VvO2gf/3qmTth6XKPkG5igm2ZkEKJfmsW0/ynnR95BiZY3SWUfWrwJMD+rEZwzDdS0iUEVuF+jVK++gmQPLnvwa+Ik2i77x6mbuVnRcrXIAPzWRGY/UBpFDRJaGDm9Cu5Uzr6WWRDuQUMfE/uXLqwHFPJfuUNxtrlxGroDsfsZMPBT1D8bZgX9e1wVG+9XAmWo0XWWePgONbMa0f2URIyNpC8jz/Uvd8vLrs3D9m03FBAL+3KmnVarHysXQhk6zF18xbcEXHjE9IMR9qSHy2iIEvJkgsZx/jhcInQQrGSf1JOAjX/5LH4sfcWXJuZRHY2OF8PHPodIhQl6AjPStGfBi0wa9DGHrWzBpBen+Fn40gtuRijYZEa8u4HBdoqABqmaTKQNyUqxGbipkFRz0qreQ/pAMauitrQHkQyzRqsM2KN7G6ekyz364bUco1bY+30aPkg3l7uZ7Tfl0s0NIBUI4FVOfZyF9+AOH0bRx6CFqXWdVDFFexHFMlsB5QDOlOk/6cCI1UpaeN5WPWP/Nee+PJAPO0G8zfQK07LQW2PD194ylOXhjDoiDVjwfOOs83yBpjnSCX/CWe4tjQvZH19XaFWhBJNJDrjF/CSb+nPe4ftz793tDd2sbJ1b/WEj1X56WFf+sTKD2nAYvBHJu29zYcWuo+VG74YkNdTjPtGQZfBN36YVVUUACpTsPlaVNESt758MxEK1XX6mil7AT/GCHpxLn+NrAICmGwM79lTOKtdpUG1sMf9hu4XxOGs5YXj7im4xEr9Jd74yOZmtO2LyTHQiWTXZ4Mn3tdrhXEGZcg49auYRVGOyT9hjcBkuB8v8OQh3NAv9g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(376002)(346002)(366004)(39860400002)(136003)(6512007)(26005)(2906002)(53546011)(31696002)(66476007)(31686004)(6506007)(86362001)(41300700001)(66556008)(66946007)(6666004)(110136005)(4326008)(38100700002)(8676002)(478600001)(82960400001)(6486002)(186003)(36756003)(83380400001)(5660300002)(316002)(8936002)(966005)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K3kzbnk0anprU2oxWDM5RkJ4YlFHSHllWWhiTUJBZ3g1eTRRK2EwVmZiWENj?=
 =?utf-8?B?WHVsZ0RWK2pCaHNSSmprRGdVemZ6dkY3Z0k0dVI1a3pqUURyK0h2L2JWOHMw?=
 =?utf-8?B?bEg2OUprREhheTJsS2xTcFd1Q2NkSE90TERhT2xuM0RvSjRFSFpMSU5DQ0dB?=
 =?utf-8?B?UDNKVS9XVWh4UjZpK0xOWHR0aTVBZ3ZHTnlHWGpGa3VMa3lHaWNtc3pXcHZY?=
 =?utf-8?B?Wjlsc3N0azVlS0NjYUxhdnJxRVhLZEs4NDFMR0lVU1NKNzg5YmpIL2Q0MEJq?=
 =?utf-8?B?N0JjS29tdjVWeUszVTBob2krWWRRYnBnTWNqODJCZkJFTDhzNm1ROWRHYmhq?=
 =?utf-8?B?NFNJWDVpd0tYeTdmSmhhVG9DTVNPNGt0Y2JiRXFRTlZzeEVTbzRyTUJWMFZs?=
 =?utf-8?B?NDFBTE9jVEExRm4vckxCS1llbDJDOE1tK0FpOHdnQ0k2ckZqMVhHTzVaNWUy?=
 =?utf-8?B?Q2tnZ0wyZ2pGYmRNRkcxRUpFM0UvRUMrM25KWWhsZ2dqb3RkSmtUY3NCcXpL?=
 =?utf-8?B?S2FPb0VzbEpFZWp5NXlxejMzeWxDMVlyOFZuOWlmRmx2eUsrY1JzZTRRQ2pr?=
 =?utf-8?B?c2tXeGlXVHE3TGtCVW1yTlJ2aElNeGdkMmo2VHJ0NG15VDdZSEQ1K3UwcDE5?=
 =?utf-8?B?bDNSdmE1STBzQzV0amhzUHB1ejgvRExtenorOFBlTEIzd2RZbU9uUnNXaXRv?=
 =?utf-8?B?YmJMYmNxZ3l2dXVDcE9HaVhGM1M2K2ZpZ01wSTNiL0NhaG1Pemo5RGEzcUh0?=
 =?utf-8?B?N3ZURWhSdEUrWnduejJESzJJZy84cklHbWF1UUxKb0llWjVCMU56UVhBdnhF?=
 =?utf-8?B?T1F3bGNFdFBEQlVleXV2OEF1VkNRdEF3V0kyMlhmOFpGZ2RHbUVEOFdIVFI4?=
 =?utf-8?B?d3FGOTUwNElGNWpNamhZSHpUZkhEeFlYUVNDMFBKS1FnOW1yQ3JQUitiSUh6?=
 =?utf-8?B?YXlBRTBrZUovKzQvOXR4dWpqb1gyUHo2d1ozb0ZDeGtIVTNtOHc3RHd3K3JO?=
 =?utf-8?B?aTdBU2RWWUI3VVZJSWF2a0ZtQVAzbGcxWjBGSnkyVzJ4UWNub0Y0N0tSeU4w?=
 =?utf-8?B?NXowVlVqVVRaMXZTRStCZ0NIYkROSnFOb1pwaDBBQjFIUFd6U0hzeVh2Vk1F?=
 =?utf-8?B?anB1KytEZHQ1bXVHNHdTYm54TkhqNXVVS0U4b2ExTjFveU9NSWxWNFVFUThB?=
 =?utf-8?B?azFVRkN4SHBGazdTN2dCVlRsRkdCZmFQbjdPUUNDekNqWmhXaXhBYkVVZW11?=
 =?utf-8?B?bUJpVlF3Y2Z6allwZkR0T0thNjYrbjdZUk9pNkh3MVRmR2tjTkhVSDZXNVV3?=
 =?utf-8?B?RWQzQlV4b1ZHQU9vZzRCS3dsaDdxY3JsenplSDc2bzVObDlzNW90a2g1SXVF?=
 =?utf-8?B?R3MxcEUyNmFjd2ttVGhGeThhWnduaEJZV2tuVWZ1S1JpRzNDK0dMUmxtYlAx?=
 =?utf-8?B?K2RRNjJ4RG9EdjgwK3BDa09qVmxweUZiNGlrZlROK2tRNHkrYXk0S2dwY0xB?=
 =?utf-8?B?ZFIzU05CQ1REZzhJb0twOVU3TTNuSWNSNTR3SmJIQXdhQjBDNVFuUFRiTGpl?=
 =?utf-8?B?aXFGdm5XODJ6VG0rM3RFbTJUQzFsNU14WmRuWERyZWZrang4Vk1hVnRaWWdu?=
 =?utf-8?B?TXVaUjliWEFKR0Y1TWwrdUl0NE9sbUN6ejl5eHRWWTlMOXIxNHMzaDhMZXBT?=
 =?utf-8?B?bmppcGVXS1d4R2FtRWl6U3h3ditXM1ZzMVdIV0cxMWFOVUJLWnNVWGFORUxj?=
 =?utf-8?B?WmRGODRDN2RTYjREYU1pVCsrZGNZUzRQb0xENlZBYmNMdmRFaE5QWGxhS2ZK?=
 =?utf-8?B?b3VxYmVCR0ZXeUt1eXBrdHJNcU1MMjg1K2pwTlU5MU9tU0RDOE5uNUZrT2Z1?=
 =?utf-8?B?R3kxN3F3T1RzckZaT2tNTVAxZU5wYldneHp4NGUveUw4ZjlwSGhReWo5c3Rh?=
 =?utf-8?B?czdzUVE4WGM0ZW5LY0cxbjByZVVhRks2SHlTK25HamxiMjQ3N1d2b1pGSXla?=
 =?utf-8?B?WS85c2U0UzE3eVpOQndJTCtjVnpoYUc4SmIzaFY0anZ2K2hvOSszVXpJckY0?=
 =?utf-8?B?WEtPVDlTZVJOMW9WVXlWb0E4dEFHVmdwdzAvc1ozN090QUZpZzRzckxwdHpH?=
 =?utf-8?B?R3MycDdpcnVkazR6UzExWW4wUVI3dGxtOTBESnR3cnVwTUNLcGlLQTBhTmcw?=
 =?utf-8?B?NXNwYi8wMmdMNXlZbkYxTEIxQU9mazMrUUpHSjAxbVJZdFlVV1ZyTGhEaHNF?=
 =?utf-8?B?V3pzS3o4L0hwSjdCVC9pcWsrVGpMYXF2UHFjbnVaQnpiYUxmSGlqaWdoMXA2?=
 =?utf-8?B?VEVhbXZnRUo5NnZyczQvU2lRam04MG1DZWxEa1lkZk9qeHlaSVo5aHZ0VGpN?=
 =?utf-8?Q?QsBD2zzcgTvo6OuI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c2fb7eb6-7367-468d-6843-08da53c645d5
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jun 2022 20:40:26.8308 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k0dRxAyhCvIMiYh8byb4YfVflfe0IodEf/YuUZ5NBs6LWBni/Bd/i7DHy1cWv++1U64xwjv3/XQ0kZwkaLDx3c6Vu/zBAQp8xbgt++EEZe4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3531
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655844030; x=1687380030;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oRToPcyoR5anodSGmLeoEQrxshMAAj35tyI4OUz/vAE=;
 b=k3gs4gmKJ+ppSxUQFCcu/Wg4ptUpY6uNLg0RhcEFPTmvHr4c7p7SBwZS
 nE6W5CxIwM4WSPNDVNIsYPgrDPntu6m7M1/TW9AoCuHunWWcQlla9ZgS7
 vl8VeKttFXIvCKcPtj2nyfG0F15FoDv+Ch+NY7A3JlkvZlZ+KOOyUpJ0S
 s/K9Ntq99adLgq/0/oksmKIj6PWGmUsw1yiL8S8K1xuFkaudQqMxin4yH
 /0EKKpxW2iaAUKUPqMm3+AgkrOJ35zUm9JXviokBcrngU0ol98Pg13SAn
 NPTAF5+dz0Ho2NgwfIqdqsZtpA6EgL2Co1QDsTBBCfvphs2l+dLbLf47g
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k3gs4gmK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH][next] iavf: Replace one-element array
 in struct virtchnl_iwarp_qvlist_info and iavf_qvlist_info
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA2LzE3LzIwMjIgOTowMCBBTSwgR3VzdGF2byBBLiBSLiBTaWx2YSB3cm90ZToKPiBIaSBh
bGwsCj4gCj4gRnJpZW5kbHkgcGluZyAoYWZ0ZXIgbW9yZSB0aGFuIGEgeWVhciBhZnRlciBJIHNl
bnQgdGhpcyBwYXRjaCA6Tyk6Cj4gCj4gV2hvIGNhbiByZXZpZXcgYW5kL29yIHRha2UgdGhpcyBw
YXRjaCwgcGxlYXNlPwoKSGkgR3VzdGF2bywKCklJUkMgdGhpcyBjb3VsZCBjYXVzZSBzb21lIGlz
c3VlcyB3aXRoIHRoZSBleHBlY3RhdGlvbnMgb2YgdGhlIHZpcnRjaG5sIApzdHJ1Y3R1cmVzIFsx
XSBmb3IgY29tcGF0aWJpbGl0eS4gVGhlcmUgd2FzIGEgZGlyZWN0aW9uIHRoYXQgd2Ugd2VyZSAK
Z29pbmcgdG8gaGVhZCB0byByZXNvbHZlIHRoaXMuIFVuZm9ydHVuYXRlbHksIHRoZSBwZXJzb24g
d2hvLCBJIGJlbGlldmUsIAp3YXMgZ29pbmcgdG8gbWFrZSB0aGlzIGNoYW5nZSBpcyBvdXQgZm9y
IGEgY291cGxlIG9mIHdlZWtzLiBJIHdpbGwgYXNrIAphcm91bmQgYW5kIHNlZSBpZiBJIGNhbiBn
ZXQgYW55IHVwZGF0ZXMgb24gdGhpcyB3b3JrLiBPdGhlcndpc2UsIEknbGwgCmFzayBoaW0gd2hl
biBoZSByZXR1cm5zLgoKVGhhbmtzLApUb255CgpbMV0gCmh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2ludGVsLXdpcmVkLWxhbi9mMmZlMTMzNDZmMWQ0NGVlOTA0NzI1NGE5NTkxNGQwMEBpbnRlbC5j
b20vCgo+IFRoYW5rcwo+IC0tIAo+IEd1c3Rhdm8KPiAKPiBPbiA1LzI2LzIxIDAxOjA0LCBHdXN0
YXZvIEEuIFIuIFNpbHZhIHdyb3RlOgo+PiBUaGVyZSBpcyBhIHJlZ3VsYXIgbmVlZCBpbiB0aGUg
a2VybmVsIHRvIHByb3ZpZGUgYSB3YXkgdG8gZGVjbGFyZSAKPj4gaGF2aW5nIGEKPj4gZHluYW1p
Y2FsbHkgc2l6ZWQgc2V0IG9mIHRyYWlsaW5nIGVsZW1lbnRzIGluIGEgc3RydWN0dXJlLiBLZXJu
ZWwgY29kZQo+PiBzaG91bGQgYWx3YXlzIHVzZSDigJxmbGV4aWJsZSBhcnJheSBtZW1iZXJz4oCd
WzFdIGZvciB0aGVzZSBjYXNlcy4gVGhlIG9sZGVyCj4+IHN0eWxlIG9mIG9uZS1lbGVtZW50IG9y
IHplcm8tbGVuZ3RoIGFycmF5cyBzaG91bGQgbm8gbG9uZ2VyIGJlIHVzZWRbMl0uCj4+Cj4+IFJl
ZmFjdG9yIHRoZSBjb2RlIGFjY29yZGluZyB0byB0aGUgdXNlIG9mIGEgZmxleGlibGUtYXJyYXkg
bWVtYmVyIGluIAo+PiBzdHJ1Y3QKPj4gdmlydGNobmxfaXdhcnBfcXZsaXN0X2luZm8gYW5kIGlh
dmZfcXZsaXN0X2luZm8gaW5zdGVhZCBvZiBvbmUtZWxlbWVudCAKPj4gYXJyYXksCj4+IGFuZCB1
c2UgdGhlIGZsZXhfYXJyYXlfc2l6ZSgpIGhlbHBlci4KPj4KPj4gWzFdIGh0dHBzOi8vZW4ud2lr
aXBlZGlhLm9yZy93aWtpL0ZsZXhpYmxlX2FycmF5X21lbWJlcgo+PiBbMl0gCj4+IGh0dHBzOi8v
d3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvdjUuMTAvcHJvY2Vzcy9kZXByZWNhdGVkLmh0bWwjemVy
by1sZW5ndGgtYW5kLW9uZS1lbGVtZW50LWFycmF5cyAKPj4KPj4KPj4gTGluazogaHR0cHM6Ly9n
aXRodWIuY29tL0tTUFAvbGludXgvaXNzdWVzLzc5Cj4+IFNpZ25lZC1vZmYtYnk6IEd1c3Rhdm8g
QS4gUi4gU2lsdmEgPGd1c3Rhdm9hcnNAa2VybmVsLm9yZz4KPgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
