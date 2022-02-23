Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC094C0758
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 02:47:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EFEBA405E6;
	Wed, 23 Feb 2022 01:47:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qIunbwmR-KRk; Wed, 23 Feb 2022 01:47:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A64A44047D;
	Wed, 23 Feb 2022 01:47:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 18E681BF342
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 01:47:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 05822408D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 01:47:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fr6NNYX3jCHS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 01:47:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5E2F8408F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 01:47:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645580830; x=1677116830;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=rHmKMy5R4381W2SpUAUyqkJrjc6B2rwjuckOqPahqJQ=;
 b=AiVtOQCIBJsfZo6I8o6woqOEC9f+lWJRKzVc6Wgdr/CMC6IzzRpa5T+V
 WsJUhc3jd4RZMh+93vB2XnIc4iExbRxUqDLHARu5BkkRNVb2cDbxL/jN5
 6OOdLabAslL+6lQ5Zt4VBFLGqZ9A+MIQTYQcBsrd9NkAjSKrZC1PllM52
 YuZwTTmxJjc+P/8GdNlDxZ52cTgv7q2/ba/JNQP/LxtQgTlbd34uMsWWp
 rvZCT2L6YMMmX8ull3dhpz+RCuwPZR9YQJMPUQTUJkPpRYp5kfSTdxsBG
 nI/rDbbN3j3sPGUacCXdXw7gvKur/enPgZPmwBPB1mlWMJxCB/zXHEtiX Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="232480876"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="232480876"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 17:47:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="683730403"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga001.fm.intel.com with ESMTP; 22 Feb 2022 17:47:09 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 22 Feb 2022 17:47:09 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 22 Feb 2022 17:47:08 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 22 Feb 2022 17:47:08 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 22 Feb 2022 17:47:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=di/m6ir9kZGYQyqjMyGONgi1GMUne7DhylTFhfyxCVg3I7PB/XTzNuRPfMZ+jsC7BJofR0YNBL9bOOv8Lva+dXYE31blx4CxQXztMlDVTTH1DPOooa+eSjyKhJVgz42jhv62QfQgO0Ix6dfqE+aEMXMkcfUjpahLUjbY409TDy6zyFmoLD+gaGhPDpPPC+CguRMxQTNHOha/bPA94x5jJG+m3cd8Sx/346sDeUDCLSmVU1YpqXNZa9qt00a1i8nmlZS+tLxp+pPYR3grDxEHeUK4ynDZaXtJ8SRnefx0xK9ni3mQCoNCAmljYY3AIskJyz5AsM0HS9LVhyzGyLlkBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PiHWB30BDijxVPLFe0M/VnhZ7hvWHEGifG3fqNNf4D4=;
 b=LligvHqYuw297LhVnSagcmCeuTonMrf4fk29BVrTjNHmPwN5hLgRkXiMq4YkR7Moe7L9v+AclprIpqh0JAfU+wM4z4ItoOV48Y5PZqYPOmzFueHuNRJWDRunLqlQt2Ig+s9xSnZvvPduBKZ0CoIE1V0fETgdH8iaaRTv39SOwDBmXeIbOjKZ2kHUjPyn0fscwJtiWHKJr3LtbMQFi9bFcl5ZgYrhk8PP/CIBGzBpMjVMnx0IsIuac6/Zmm8Icv7MTISI6m6OYMBWT9HHt9TyMVuVGPVPaHIXFEI9KK8zG+5CbWHBHkz+KEYlq517t3f2fmxIT1FEvVGtOnT5S213TA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by DM6PR11MB4756.namprd11.prod.outlook.com (2603:10b6:5:2a7::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.22; Wed, 23 Feb
 2022 01:47:06 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::2d6d:f382:c5a3:282b]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::2d6d:f382:c5a3:282b%6]) with mapi id 15.20.5017.022; Wed, 23 Feb 2022
 01:47:06 +0000
Message-ID: <bcba92ad-d159-2abc-f7d1-92043c9c44bc@intel.com>
Date: Tue, 22 Feb 2022 17:47:04 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-24-jacob.e.keller@intel.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20220223002712.2771809-24-jacob.e.keller@intel.com>
X-ClientProxiedBy: MWHPR07CA0022.namprd07.prod.outlook.com
 (2603:10b6:300:116::32) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c49117ac-918f-46f3-1e61-08d9f66e65ca
X-MS-TrafficTypeDiagnostic: DM6PR11MB4756:EE_
X-Microsoft-Antispam-PRVS: <DM6PR11MB47563B6174A0A9BD5D095294973C9@DM6PR11MB4756.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OUpi1Kp+AAnGCOOapJuVnTDesTBLW5k9o3+V/Uqa6GloOgMjxCbsHl8Nz/fgrrXIynQSix5l/L6KvQKDi+LvesQRoNdtgNSSwqmL9VMdaDjsc22SWx9Hz7QqB6VXPw4QQGwAzlNlTb8D94Lv9nFvvIbL2n3VyguA3F2mELiXLVCTsezFflbcgn6nngE575Y8Tpv2LqPvDel/3o1PI19Emh7iikkI8spznFRkqL7lWb6PwVgCUCIy4/up1bOIkAUyBYl9dWlcLnOjP6PjAU4zjFuTIQ3zCDIaLGOpjBFmngUUI9Qm8qZ+oa4VKrwsamMfk+1qlHJsWb71jn6VMWzOyGNoxJMK3zvvqHnl3AmvselQslJyvshyeDVrwRKJEMw7ECa1VXytpYdkVZsSnTrE4mBhpNlDx1gkbuc6C+ZjXEx2KLyXRfMiMzdfb8pqENtXfcWPwSjvw3PUKZcpPsmRiL3nTaK6lp426KENkA3/X1hLb9z0V7Lrh3X9qUd6oexCogPcXPpmKax88l0eD7Grewf1Z6Ao1QN8eWV1oefLfHUfctC5SjWEmumpRyMEvMdx/edighmjR/ElFVf1bMgxFida5SVl8AWanzzijrgTSxsCQoz7SaJEWjwZf+G4iR3t74J4cyd763NkEtifv6TAb8H7ip1feOyL7B4Qjwe/X+MowStRfJc2I/rDVnaTh+z+94V3PxgqyeZiEfZLwEiqXPoOSuyIxmdOJYhDsNwSve8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(8676002)(66476007)(66946007)(110136005)(66556008)(316002)(508600001)(6486002)(86362001)(44832011)(4744005)(53546011)(31696002)(5660300002)(2906002)(2616005)(82960400001)(26005)(186003)(8936002)(6506007)(38100700002)(6512007)(83380400001)(36756003)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TlJ2ZlFnOHNhNzRySU9FWVdQdzBGNWVPL2srSWwxODlURHY4NzBuSDZaZnlP?=
 =?utf-8?B?Y3N0NkNOc2cwWWdGU0xKb094Ti8vVzRvTTNId2ZVM1MvREUrOU92UGN6b3d5?=
 =?utf-8?B?WXFxQ01sY2J1a3FDSUZDK0FVTTJyMDRSVlA5bjJ2Sm5PKzVQNEFobWkrV2tw?=
 =?utf-8?B?WjFaSTNzNk9aNmRlZzRQN21CMG9ZaUJPbHRwMUxCM0ZwWkhJd3A3eGNLS0VM?=
 =?utf-8?B?UTdEN0hKQ2dsNEVqVkxnUk5lUHRNUzJQMnE1eFkvbzNvYUtpZ1pQb3Z2TGxj?=
 =?utf-8?B?TFpITGxINU1yeE5NakJ2Ris0UkRKRjV3Z0RlbmNNUGRqRHk2Z3Jlc1hGRG5Z?=
 =?utf-8?B?ZUxQMlVRaUM3ZDJtSlZBR3gwMTNPNmtib1FkY2hybmFaSTJPdVg0dnBhRE5P?=
 =?utf-8?B?eWlaNXFjZ1FwNzBHNnIwMVlzSWNwNU1SYytJU2RKVVNTdEhxU2VYcnErK1p4?=
 =?utf-8?B?SGJ2NXFjR2ptNThaUWpOazFqQU9ydGQ1NEhpVWtyaVRZY0JXaTc0NTBmM3Vz?=
 =?utf-8?B?Z0NzOE1uNC9DcVhFRE8vYW9iYUxHcE1xOFdsaURDWGdhOVVyT25XcFpvU29Q?=
 =?utf-8?B?R3VaQXY0UG5xVjcxWFA4empsWmNsNWtTZnc2R0JvbTJ0UkkvT0FuZnphOFEw?=
 =?utf-8?B?b0N1SzVQL05qUEpyMUY4MkhYVDZtVHhnQk9NeGV4RzNpZk5IdUptelJCc21o?=
 =?utf-8?B?R0F2WFpabm1RK29scEpDQTU2OTJwSEU4WUE0MkdTU0NUa3QzVWV0NytJelp3?=
 =?utf-8?B?MGtlOHoySnI0T3NTUkFSRkJVN3J5aDI5YStWeWcyZ0x0VHRHMUp1QzRlZW1z?=
 =?utf-8?B?cVpTTURPeDR6OHlxRFBwRXAwZ213eStnYm9CVWNhMnFaa2ZjdmFoaDJ2Tjdn?=
 =?utf-8?B?UTNqbFhtVUdKUDNEQjlZcUQvcnhhbVhsUk9WOUNGY3lMejVCTllFejAyRjF3?=
 =?utf-8?B?VWJHU0FKczZDaFhUYXoyN2ZnWjdBYmFIZDEyNXNYNE5Va3BaK0lpR2s4Ym9Z?=
 =?utf-8?B?SldCMkdXUUJmMFdlbFRXaDFVMkJVYjZ3RWlrNGh4ellhRklLVXpZQzhWUE1s?=
 =?utf-8?B?eTlaQnV1cG50YWJoOFd0VWNBMWNHa2xkeGYxT2NtY2VVYkJxejJnVzFBa1hj?=
 =?utf-8?B?czBOMkdNUjNZUEJId1J4VHF4WFpKSHJVT0MrY01TV24zbHo3cm5MUTh5T1I5?=
 =?utf-8?B?bFhIYWJqUFdPR2xyMjJjNzZxNkJ2QVBCb0U0cFQ2MklDYTFGL055OTRqQjUy?=
 =?utf-8?B?VDhFbGhWUHd1ZlYxNUpsZ3RtaE1jV3BES1IyRlRJeUhiUVRWaVhTYjRCdkRv?=
 =?utf-8?B?QXM5TFhEbERtL0h6dzlXcUd1eTlTc3d5aWVhRDhTbXkyellQM21ISk1ub0RK?=
 =?utf-8?B?QURSekdLUGFpOGU2V1ZJeHJiUTNacXlvZDd1RHJJdUZCNkZZQzBNcnFxNU9m?=
 =?utf-8?B?bE5JN2tpa0FqUkwvS2p6MGlxVkRqSDlxaTVScUxkbEpqNG1ySGJaY0g3Y3pP?=
 =?utf-8?B?eXBjMlcvNWQyRkN1enZZdnhkK29GNmJNTjRzbG5TZU9xWTJweTZCOGpHVU4w?=
 =?utf-8?B?ZnlQSi8vZGtPSjIraDhSY0w0UjNUNzhlTjE2bEdTdE5RS2tUUm9MNEhORlBt?=
 =?utf-8?B?OCtNYlF0OHFOZ0lQeFk4dmVKOFRicFJEc1Nic2RHNkZVWGd6RUJOSnlacUNs?=
 =?utf-8?B?TnFDVEUxQlRPYStITHhPdHdYdFh3UXRHaldvNnl4SEZzYUVDYWZoK1FRZ05v?=
 =?utf-8?B?U1haK1VvQ1o4UTBNNWMzNmJ5K1o3YVV1cVRkN2lxNGxWbTBCUnNzMXNobDh6?=
 =?utf-8?B?Q0ZiQytNeXJtTmxISHMvN2c3Q09MUjJjRHB4cVZqbnA0NDB4cXdydnp2SkE3?=
 =?utf-8?B?ZTVUWU5HVmMxVHBheXc1NFFJV2NIblZVNERwczRLNzg3cUx6azV2SllrL3Nu?=
 =?utf-8?B?aEJXWkRGeDRheTQ2WEJ4Nk9maUlUQmV1SzI1RHZ4d0RrTVZ0b1RUay9jZXcw?=
 =?utf-8?B?WVlGam1KMmxVKzRvenM5ckdJRVkvdDNyOWFBVWxZaWY3UCtvanVJa1VTcG43?=
 =?utf-8?B?VWRVYk00YktXVk5hTUg2TmFOekV1d0dDTFBwekZELzczT2REcFJueEhxd1M4?=
 =?utf-8?B?R21ZT2R3TU1vbXExdUZJRVd4TWhWYVJuZWpwTmxuMFBVZkFOZkp3ang4NS9p?=
 =?utf-8?B?UHVvY0lCQWhIZUFmQmxzbXhkQVE0ZkpFTWV4UUl5VjhsOGJ0SVhzMVF4ZXNz?=
 =?utf-8?Q?ICAVrIg7clH7tX9szJgqtijCTBqKdO8OX+QYpVcW+M=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c49117ac-918f-46f3-1e61-08d9f66e65ca
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2022 01:47:06.6559 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 74cMZ+v8TbotwqKCncucsYvmhzYn9rM3wDhDJDVf8iQNB+lVxM0fK+q9OF5qly2WIg8guLoTeNYa5fYOSPHo4fDwXmovpAKTRoiZlbfKnmo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4756
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 23/25] ice: cleanup long
 longs in ice_sriov.c
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Subject should be "cleanup long lines" not "cleanup long longs"


On 2/22/2022 4:27 PM, Jacob Keller wrote:
> Before we move the virtchnl message handling from ice_sriov.c into
> ice_virtchnl.c, cleanup some long line warnings to avoid checkpatch.pl
> complaints.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
