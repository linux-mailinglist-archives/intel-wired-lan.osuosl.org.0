Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD3051DD78
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 May 2022 18:20:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC39C41A02;
	Fri,  6 May 2022 16:20:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wSsNbYQynpCr; Fri,  6 May 2022 16:20:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 676AA41599;
	Fri,  6 May 2022 16:20:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2B6DC1BF860
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 May 2022 16:20:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 149CC4041C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 May 2022 16:20:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DdvHNQLewlrv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 May 2022 16:20:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 21136400E9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 May 2022 16:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651854021; x=1683390021;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MpLAnVXn3DG7J9QvFrCWyoxgdpU1ozMIGwtvnCWefoQ=;
 b=ZuhmHPYxkQLATSgcB/6eBYD2h5Bn/965527Lv99ctxPW5Lyr0N5htVvo
 LMIkInN3I8onOXwCAzhgLNEkDprWYu6LbF9nkhQuZqz209N/7JiqEN6q6
 rs3z8aO1/QfqIZtBNc4Ct3VrUpBthjhJqXzCUYFOiMHtW9+1YJ7LlD0u5
 zIm8waWNMNTtTpPWsWg12bqHUQ9RpWPQ0UZaD2f2azihcEcJ6z1RSxcOg
 o+KALZeP9Kag2XHjIrTkZYsL1BwSkgA4eoRunyKANuUZ6hc99QJFleiZu
 9OWZicNuLu0fZHUxHwFemIBnBd2gHiABQMu3bzEHtSjLY0bYaZ9TjURCD A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10339"; a="293718794"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="293718794"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 09:20:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="563888955"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 06 May 2022 09:20:19 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 6 May 2022 09:20:19 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 6 May 2022 09:20:18 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 6 May 2022 09:20:18 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 6 May 2022 09:20:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GHdBA2zforoXzkZTtV+/ma/bAA2DY1TCTx+cNx8Fg51m4aBv6o7Npc32K3VuhRzbTRc0s4fa3uKSonsgsoIv6WWXEb0PuJFiNjNIQmnJHemkF2ytJadygxiPSyc+tQazC/zCcq1fTOl7ry5WPhF2delJImpqkFSJYVkbO/B3y9HOsJH3iCf7lv1x5eJuA/dPLHK3y8DdHnivQGu0hsvCS5v0eFaH+GC0Yp0XsUtDSZ9q7LRtGBeOvCGMdOjA+x2o0KnavkxvnT+mwTgDIepL0O4rO9E3uK4E1cUNucKfsLoaFGG3sMA/zRCuCIy3Wn24Yu8Zz4yzDSk22JTNyKjzqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k8RbqzedTf2f6WgO/8U/wyBHASIt3Wnh/SM3D4AxzFk=;
 b=UiX47Y9gNOJcAS+hW3MKuMJr/xuLFX132MM4RULjgauiU1nUz3/On4+03IgjnHkYXDXSmHDR2sAO4zlSXQNGVhLRGzAGZd7Qi0EGLT/Tfe3HlYY9fh5l/UPPJe+Z3Rpn2uAlHMJBSsVDleyNrezXvUghU9sOhOtYzQrkZzdJJ34nX0Ylsrgn1MtMWgeq6Y2NCPtnipcHsKLkzuOdxtyKAWlhTXPhUSPBQgWxZGWhd8IaNeyCyZmmpW/qXKfU0gJRKUdMWY1+aCHGi3c7ixHbLEc6WoMvPCqTzaMfq1cPNeoN1Hm1PwrvmztxFOZJyTVKlhjWzdH3ETHj88YYo6Nq5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BYAPR11MB3125.namprd11.prod.outlook.com (2603:10b6:a03:8e::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.25; Fri, 6 May
 2022 16:20:17 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5206.025; Fri, 6 May 2022
 16:20:17 +0000
Message-ID: <7775a23b-199e-b0f2-fe6b-06a667ac9dee@intel.com>
Date: Fri, 6 May 2022 09:20:14 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>, Maximilian Heyne <mheyne@amazon.de>
References: <20220504201632.2a41a3b9@kernel.org>
 <20220506064440.57940-1-mheyne@amazon.de>
 <20220506091322.1be7ee6e@kernel.org>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220506091322.1be7ee6e@kernel.org>
X-ClientProxiedBy: BYAPR03CA0005.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::18) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f4e37c87-b103-4a89-4266-08da2f7c4ea9
X-MS-TrafficTypeDiagnostic: BYAPR11MB3125:EE_
X-Microsoft-Antispam-PRVS: <BYAPR11MB31252C8CBDCFC2BF009B8A1EC6C59@BYAPR11MB3125.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UHVFP65ufzLmo3BoencchrPLJ/jZxp2B02aZami3ejsKX6Kjm0iQHFK4+gz9boMqsQjL+9nl7yVoH4Pm83dLyMgyUSihHYLhOw5uKn+A0ynX+hqcgPOHmMNuak/qwVgmAz+0lJT8mrV8k/S1CCk1y3cY4xxrsR4BjFeT8toQmGtu7ca8vYrC/PDY2gaMBbI7znlMn6YANd9Ou21rkmwVjq1kiv01yx3qrNN6hmQeHiC2v/taPTvnVozW8ai+nfnXLPDOM3RFCRmH7eAnJmRfRep75traBDUH7PBr9GAINIlHMiL0BWto4WrqVK3/Z7g75KFDxOBWZt306KkVzsWA/Q6cRuAnuawNADBjFEPasRbflGymUvlaQcSH9H75Cn3ZYdQu7B3F1t3QYd/sgP/btIQLajPOVydr07p/JoH0+d6uWEoT93fAI181WBFCbTCSl+VU88ccLycDSGcIF7TT4V5B2O66i6cDaoM9NWkqIenVRw4rssLbQqySSnqHTKYtGxqBmfdgerQAXM3fhwW4KFD9LY190Vnt12W2RArxdlOWvmghOGFOpvgABYGWHwVEbfmfLgyV4JdMqSoY6r9LZHzlmaZwa3NjLMu1Xkidj+zzALm2MihioOfPkrIXePBT0TGWs6eH5/21M73XxZ1ajLqaOFdsqDu8+VG8e1SVN7WAGGmeuToIC+ppRtHKpQSByk+SourFjOh4PcSretO0UsEp1+bDK2+CM3pLgcaAHyMj3w8ZhBsTi2l29HZSaUYi
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(110136005)(6486002)(83380400001)(54906003)(8676002)(66476007)(4326008)(8936002)(36756003)(66556008)(2906002)(66946007)(508600001)(316002)(5660300002)(26005)(2616005)(6666004)(6512007)(186003)(6506007)(53546011)(31696002)(38100700002)(86362001)(82960400001)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S1NCT1BrM2kyblBqN2Z6cFlnYzRWNHNmaW0rODlZOVkzR1JQYUlKZzJqck0w?=
 =?utf-8?B?eVhqYjJ0QVl2ZC93UXpjQy9tSlZha1BjS210ODR6NXhwZGJYMzVLemNJUmcw?=
 =?utf-8?B?cFdSeU5LNjNnQURKamNrS2hnUU8vUmd0NnNGU2xaTzhrTHNIdHl0b2dNR3V2?=
 =?utf-8?B?cFBTRlV6ZmFQZnJkZ1dZeHNPbkFnbktjcXJ6dk04Y3ExMlVlMjE0T2NadUFQ?=
 =?utf-8?B?WVZmSFd4cjZSc2NJeWliY2IwZWZvTjZYZVczbCsrMGNJcGtXbmNwODJweUk0?=
 =?utf-8?B?WnV6ajQzRWl4WXpSUyttRVJuSVBMQURXZkw0bVRLcjY4RmZRYlREamczYys4?=
 =?utf-8?B?a3l1WXBFb1hMS3JHQTlTb1RKMEJZcEFYVGNjRjZ3K1l3dFhMNUhtd0J6a0Fj?=
 =?utf-8?B?ZkNXZGJvRHBHQVE2M3gzc1NQeEhsQVFHRUQvSVdMOENzWStDWWdlVTAyd2tQ?=
 =?utf-8?B?V1kyakdtUmpYVlhmdUpCRVRDUzRlV3RKN1ZvMHk0cVBVeU4ya043d2lYTngw?=
 =?utf-8?B?VHhqbFRZU2FZNElicHpKQ3FidnpoNXJTam10NVYzUUZjc2hxMHJhd0JqNlEz?=
 =?utf-8?B?S0V3SmRsdHphM1YrT0tzTGlCYUFQWGtSbEJtSnJOd2loRW92aGYrVzY3VzhM?=
 =?utf-8?B?UkRsMi9EQXd2dHdWT0orcm9nZld0VVRadGhLZ29iNWtmNjc2YWZhNGJsNXNB?=
 =?utf-8?B?YlBHekJwR1IyMUkza2ovdElRVkg4cjFMa2R3eENuSlEzZFdSbEdRem5ndm16?=
 =?utf-8?B?RGVNVHg4MytxWVRMQmNLZWtaTXc2ZGNxaERoYlczQ3BZRGtnaUZTVTJTTFA4?=
 =?utf-8?B?VlMza1ZoTGU4eHJXTlFhUWkyQnBPUElOcmtWcUNnemZNc2NCQXZIYUkwMXEy?=
 =?utf-8?B?aUxMVEE2dWtKS0pEY2R0dlNZUGkxTmdwT1ZNdnJTTERaRXJsR2tXRmZ2eitr?=
 =?utf-8?B?b1pHMzZQMFhBWWM0NkJHVStwSEE2ZDFESVZkaThBbUpoZXVmQTVyT1ZqYXNv?=
 =?utf-8?B?NHA1OVdLQ2xIRnIzQlUrSWplM1JVTisvL3g1TXViN1F4YzJ4aUx3VXhkVnN4?=
 =?utf-8?B?TEk3cXBkQU4vaWR1SDYwRFM4Qy9tMHc5czFkTTQ2YUNQb3ZkeUFCeHpRdE16?=
 =?utf-8?B?UUxINFRzb2dXdmRWN2c5U1NRYzJPb29yNEZOM05jaytrNzcvdG5Sb3Z2UDkx?=
 =?utf-8?B?ZFNDWjVjZmR4M0UrdEJ2cFpJaEtEeDIwdnQxK2NhL0lDRTlBMWZOZGV0dmg3?=
 =?utf-8?B?MGFjbml6WElubUNVeVdaSWRTcjQ4a0ZzdVArbXJURk00YkxDTFpzOHNIMjk0?=
 =?utf-8?B?MEliUE1LcXBWMkhVYXJidS93OHN5bkNwbjA0VnM5RzJLeHNNVEE3dzA0Q3A5?=
 =?utf-8?B?VG1XRnlBY09BWGZVSWNRMVdPSTZpMVN1aGZXdG1Lc2xoSWxTRG8yTmNLLytZ?=
 =?utf-8?B?dUpaOEZNaERvZ2RjMUd3bXN2UU1nVFZpcVNjR2pRK0xueVVGRVhEYUx5S0hW?=
 =?utf-8?B?STJSREFMdjYvUmVnWkNvYkpBNmg0VzUydTNjSXZiMjVHTjVRNWs4dlM2MFdW?=
 =?utf-8?B?Uk0wc0ppVG9GN2hnay9SOFBIYklYTDZiRUdrSUpVemVtM0dWUXFaTmVLd0o1?=
 =?utf-8?B?d1l2eWo4OVBTYnFZeW44S2p1VTdmT29qTDR4NVR6Y2lObmVtZENtYkdsdkFu?=
 =?utf-8?B?QnBIWGY4S0pBbmFCNENLT3Q1TlY0STRKSlBxM1M3d1NJWlRDZjZZdnhtMDIx?=
 =?utf-8?B?SFJvREkybm5KdlZRNVMzMGVnTmw1NDhNUHJMUXNlbmV3STB0dzlzYzY3YTds?=
 =?utf-8?B?bWZXNjlHNVJBejR1MVQyaTY5OWJlamwrSmZPRitNWjVJSXBXdEVjN2UvTHd2?=
 =?utf-8?B?WTcrTEFVYVM1OWVOK0pxdTVna0d6RUJQSjZSTWRZSG5GMDRoRHdpQTJRSHYr?=
 =?utf-8?B?Y1ptMjVVVmgxOFkvdFVkZkJJVjJhS2t4dFhIVDNwdU03V2dZVU81Y1Fvelhr?=
 =?utf-8?B?eDZVQmllaTJBVTJFSGs1Y2J2WDlxbWNYNTRhTTM2WEY0NllRcWRJUHBxcHJt?=
 =?utf-8?B?ZHowQlFPbVdBNzlzVUNUY0RENmliQmhKa1R1MnpSOHZ4ZGVmc3BwcmwvZ2hQ?=
 =?utf-8?B?SmFETlhzamJYcE9BT3FkOEpQUzN4OHRjR2R5MmhyeENFL0cxNFNPNnlLY2JO?=
 =?utf-8?B?UXdzMm0zLzNzeEFrMG5Jc3IzQ0M4dUhKVTZDSzRDRFFXT3FMK0h5MURkV2tY?=
 =?utf-8?B?SkhyakQxb3IxNGFEdExHWGlnKzduOHdTblpubnFtTDZJbkJLbElUOFFmNXM4?=
 =?utf-8?B?Z21DREl1LzQwNGJCa1dETU9xS0VHZEc4Tk1ZSTQ2bklwY3NPUzR2WmxWQVg2?=
 =?utf-8?Q?sM7KdTnnH57W+T7I=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f4e37c87-b103-4a89-4266-08da2f7c4ea9
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2022 16:20:16.9762 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uf7XeOF6F5zZQz5mdhUwhAk2MOOIGXrcpayEW+440+ZZKET2ag6gfmazCv/lrgQrCURuihOYERAx5Xt/D2vqFWqFXRJsHnRWBXhfeKRn0sY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3125
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] drivers,
 ixgbe: show VF statistics
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/6/2022 9:13 AM, Jakub Kicinski wrote:
> On Fri, 6 May 2022 06:44:40 +0000 Maximilian Heyne wrote:
>> On 2022-05-04T20:16:32-07:00   Jakub Kicinski <kuba@kernel.org> wrote:
>>
>>> On Tue, 3 May 2022 15:00:17 +0000 Maximilian Heyne wrote:
>>>> +		for (i = 0; i < adapter->num_vfs; i++) {
>>>> +			ethtool_sprintf(&p, "VF %u Rx Packets", i);
>>>> +			ethtool_sprintf(&p, "VF %u Rx Bytes", i);
>>>> +			ethtool_sprintf(&p, "VF %u Tx Packets", i);
>>>> +			ethtool_sprintf(&p, "VF %u Tx Bytes", i);
>>>> +			ethtool_sprintf(&p, "VF %u MC Packets", i);
>>>> +		}
>>>
>>> Please drop the ethtool stats. We've been trying to avoid duplicating
>>> the same stats in ethtool and iproute2 for a while now.
>>
>> I can see the point that standard metrics should only be reported via the
>> iproute2 interface. However, in this special case this patch was
>> intended to converge the out-of-tree driver with the in-tree version.
>> These missing stats were breaking our userspace. If we now switch
>> solely to iproute2 based statistics both driver versions would
>> diverge even more. So depending on where a user gets the ixgbe driver
>> from, they have to work-around.
>>
>> I can change the patch as requested, but it will contradict the inital
>> intention. At least Intel should then port this change to the
>> external driver as well. Let's get a statement from them.

We discussed this patch internally and concluded the correct approach 
would be to not have the ethtool stats and use the VF info. Jakub beat 
us to the comment. We would plan to port the iproute implementation to 
OOT as well.

> Ack, but we really want people to move towards using standard stats.
> 
> Can you change the user space to first try reading the stats via
> iproute2/rtnetlink? And fallback to random ethtool strings if not
> available? That way it will work with any driver implementing the
> standard API. Long term that'll make everyone's life easier.
> 
> Out-of-tree code cannot be an argument upstream, otherwise we'd
> completely lose control over our APIs. Vendors could ship whatever
> in their out of tree repo and then force us to accept it upstream.
> 
> It's disappointing to see the vendor letting the uAPI of the out of
> tree driver diverge from upstream, especially a driver this mature.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
