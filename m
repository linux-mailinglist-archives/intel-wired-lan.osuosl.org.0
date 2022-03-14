Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BBBCE4D8923
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Mar 2022 17:30:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58F7241526;
	Mon, 14 Mar 2022 16:30:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w-084xrQbLde; Mon, 14 Mar 2022 16:30:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B1B704151F;
	Mon, 14 Mar 2022 16:30:37 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C24811BF35B
 for <intel-wired-lan@osuosl.org>; Mon, 14 Mar 2022 16:30:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BA699607B5
 for <intel-wired-lan@osuosl.org>; Mon, 14 Mar 2022 16:30:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cna1n4eo0LxU for <intel-wired-lan@osuosl.org>;
 Mon, 14 Mar 2022 16:30:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 830866068B
 for <intel-wired-lan@osuosl.org>; Mon, 14 Mar 2022 16:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647275431; x=1678811431;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=oAiCPoHFTAc8E0ydDJ2ItDZ3g+TMhPgT2XXuku22xgY=;
 b=lJtcdUBFhMP6rN2YOlg9rqoC9S5y+pbp9bpyZECQOHNgvnhI9iN0zj4r
 3Gf2o7P5BYM0nuD7PeexGz7F1h9xvIo4Ulhmtq8LZHS6h7ZRslNfmG0KQ
 33G/H4orRXszLe4/47aWaoWiuH4kd2X+SEt6ulc9aXj98UvNp7/X41vfe
 0Awf/W2nDk9V7XUYdSUl9fCsnO+178IFy67pFH4tkpyD7l8ryJeBawGKK
 Ikm1QbFDeEdmWK/QZkKrAgTdBwJNTmbHMk8ceGNCYnpseVj3Opg/7dnsA
 5fnk+Ikz5lIRnJ6CMheYvn7rSexqj19DlOce/vcHKauYGe7ZlNwpOrbdT A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="319300285"
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="319300285"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 09:30:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="713779876"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 14 Mar 2022 09:30:09 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 14 Mar 2022 09:30:09 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Mon, 14 Mar 2022 09:30:09 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Mon, 14 Mar 2022 09:30:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GESbM8Pp1ilCRVHv3YacAPtSvIMa8eTlt+0YkAlEuIk1dtXZ15jM5jzPH+HOv/oYLXe5QVCq5F0WDOPw2LjIglSCQ2NOlfxw3i545EtGS642hjqU9Gu2wTw7EJMyRKrHpu4ZErTLLp6BNBkqcn7WsRwbQXgC/+RgmphLj/tLsw9SjPr6TnEIK9nWVMclc9r0gESorCb1HuhoiP1gKRliinmH8u4XwsqKP3n6eG7fAV4XcrW0xgoJ0FncI6CfkRqF+A8XbzqMmppG5nYZbbvFgygQXhtJ2YE8WkG1O6LKDK4Qe49IEhTESeDT7PsPQXoQIIcLhgrhrU66leUqKw+IXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CqvwBp6yoosaDrV+59T+bNIQyd5AFsE9y6lILTrd7Jw=;
 b=mBku+PA0t5PB9y/48qRzg/BnaAXWvDVXBZEVMqQsI/B+n96EWSI+Kq1JVua9keNDlCDBDbg181xZCLztEuwuRLkWSP+0Iqv7EFVbzg955mNc07Fm634xuphVSkMmlI9dlWDol5zh+vCgu9xEvbMLv83SAgXQUxt3jBzptZUxTaunXjXL9GNpVn6uPxxxqVz5phiudDq8lqIcImAQjUP1vDBmQg7pNtogDU+DprToGUJVhcGMSHszPoIwcvdesacWu7llMBbLGtFPuwfs1M7SRN1H4oLNZrQoW30ToQmx61z+lJpcjd6DhYAYc1lWv4JyM9F1X+zLrRScxJQou31fAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BY5PR11MB4244.namprd11.prod.outlook.com (2603:10b6:a03:1bb::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.24; Mon, 14 Mar
 2022 16:30:07 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d484:c3ff:3689:fe81]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d484:c3ff:3689:fe81%6]) with mapi id 15.20.5061.028; Mon, 14 Mar 2022
 16:30:07 +0000
Message-ID: <40f168ef-f610-4082-d032-d3625505a323@intel.com>
Date: Mon, 14 Mar 2022 09:30:03 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20220127154009.623304-1-alexandr.lobakin@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220127154009.623304-1-alexandr.lobakin@intel.com>
X-ClientProxiedBy: MWHPR10CA0004.namprd10.prod.outlook.com (2603:10b6:301::14)
 To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ef1e7bf7-27f6-4cbc-c4be-08da05d7e68f
X-MS-TrafficTypeDiagnostic: BY5PR11MB4244:EE_
X-Microsoft-Antispam-PRVS: <BY5PR11MB424473F6D6CF53372C65ED5CC60F9@BY5PR11MB4244.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: E79Uygew+K9EGoNxm4zgFa6eY3i+olvgfgJ/xEZAZW+Va389TpxOEvxwoeJABX+75JAedj0NqAtiAiXqRrHPtVP5w3KOnvpDa+9gEzBiycQPljNQsiYfmaEAGhE5VjprPhoyASywWSMEhnPsOifeNBA19EzQtTOyDFzH0wwJxVup863m+ecdDzoTOG5kFgJqp3lEJvoX+47ZbDeGwMyN7OQ9HokbkggCWKLPBulj1XIC+Pxovar6JYOgU+vjFHVTdV+OnFFm6gvwO9Dy469cG1cz+ng6Um8dIWOaUmVT0mVXhBuPTVSCgOUHFMOsIenyderbYuqgewiGOpEOO2twzZLQMydsMEEmqDVTOcjUa7RRMEYQorq0iO3sFfz0gehA/HvYKQl0B5LgWGFKkceFUF/9jRBiwPbZ+8ka22x39HpGz1TOWAmyXM7TlF26H+8ZW92GNexlCAyttUQgfAzAsU7Qi0XyboC9IKJZXHWbQ+p0/LDGNvvSZOuogsH25eqv+hxDtM1WCErNF9iWBEDbi9dYsATyGk276xRzaBRwWGXwNRBFzKA8RAif2l/CTLkuuAyoM4Hmh2tiah5VVEQsvuBQO/4gptEmr/jBmD2WqX6kIZew/PrILMNNIoH1RSWpvjOTyujeS0KntZh50tSnTYIoJp7xfFTdZJM4/MMe4dlG/j9oHYqphg9dDgeIAeTtu3agQJQ3Z4g5z53B+SmSwAbKkBOQHh6WPsMohSyLPZqmDS4Wh/bP0YhO9vE90kmKQHtBzxFiE/5klz2q+JCXWMloIYey4I+Ut6OG/ed4IKd9KbSt75NQSaOh12cOpah83wDPyC1AVK89uJQBKaqxOyxu+gDBLGs7buGfUW/J1/k=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(53546011)(83380400001)(316002)(36756003)(6506007)(6666004)(2906002)(6916009)(6512007)(186003)(26005)(2616005)(31686004)(38100700002)(82960400001)(31696002)(66476007)(66556008)(66946007)(86362001)(5660300002)(8936002)(8676002)(508600001)(966005)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a2NZQ0MvMHNpd21OSm43MVY3U0k0TnNQWVNFRGtZRytIem1wUm1FZVltNW5N?=
 =?utf-8?B?R3d4eEc3T1R2Q1kycGlBOWpNZmNKRzVHMXZKeWl5WW9pa0xOZVdGQ0VuaTVY?=
 =?utf-8?B?eWZpSzZJWUl3Skx5b1pncm0vYkFYem9JMGQ4dlI1UFlyT21qSXdBZXNEelov?=
 =?utf-8?B?YmRBa3hHMXZZR25CVDNMNFU2TTVRVi9IdVdKL1lnU3l4Y2NaSjNub2JHR1dV?=
 =?utf-8?B?a0hkV283cGdXMzNjU2tMQlZuMWdydmxmKzZnM2tOVTZRYS9YT25HSDBUa3hj?=
 =?utf-8?B?ZDJwOHpRQi9KVEx1cjY4SnVUcnBCY1E4bUs0SGk5dDE4bUplZUdGc1hhRGNi?=
 =?utf-8?B?S29hVDREdExFY3lqNVA5SmJZQWhzOGZ0TUdnZ1d1dFAvek5BeXBkZ2Z0M1dI?=
 =?utf-8?B?cFB5UW1XQlBJVWZGSXIzSktQR282anVVbEZPdFk4cUtxVE14d3lvekhPRnRw?=
 =?utf-8?B?a1gvcVd4NzVYM3ptb0RSZXovNWJ2QzQ4enFlODlGL2lRS09ZejNNU0xSM1RF?=
 =?utf-8?B?Uzc1Nnk5ZEEwdGVLMWZ4RXp3WDJjc2tWOHZia1dXL0dyTFgxcXlmU0RXeDhj?=
 =?utf-8?B?dUIzN3FNY0oxSWtKTTZYdmRzVDVyemE1N2QzQWQzQzRCNmlEbFlWUzNHV2RV?=
 =?utf-8?B?QThLK1JqdkhlMThuNVh6MlNPcWFTL0xxVjIrUkhaVTZZZ2VIWnVvbGNaY1o2?=
 =?utf-8?B?NFpTdXZkVDArbHcxRzJ0SDFmRlZjNlRkQ2oxVStvakFVbFVjL1V0NXNNZG9C?=
 =?utf-8?B?QUc4ekNZREkzd3VIVjJtOGg2OEtKT0hZMnBmNE1HazE1dnd3TG1mdFRiUjhW?=
 =?utf-8?B?REExUTMxeFU4OGd1OTAzY2VkY3JzWFJvU3ZpdEhlVXNMNis0ZnZObkRuc1RX?=
 =?utf-8?B?Z1BBVGdFY1hmWFd0eUhwc29FRXkrdVZWbTg1Z21JMUZYeDVlSmVwWnZDYUNV?=
 =?utf-8?B?UEo0Ry9aQ3o4S1JNV1BWVHZMSWEraXR3TUtWdHlKeHMrY2Y1WGczamgxTkxH?=
 =?utf-8?B?cU93Zk5iKzZHTGMrRGxnNEdDS0lIdHNza05qZW54N1A3ZHFSM3RxN2JydzlS?=
 =?utf-8?B?RTRBRlNzYUczYlBUUkFSb1F6SVNGYUR3NllqWmlBWW9FSEt0Nm5xZzhmNGls?=
 =?utf-8?B?clNPa0lhZCtBSWY2YnpNcXB6S3FGenhiT08vSFRvSFdoWitnUldWZ1dnUGRK?=
 =?utf-8?B?NGdianhoQVB5S3V0Zlp2eVdKK3JnUjZNWEVpcE00YkhjZktqeTdJT25aYWl4?=
 =?utf-8?B?S1lmWGRMWlMwQjdDU295bnBxKy85aDB4Z2dNZlZQc2JWbHgvYW5nTnRPaGNm?=
 =?utf-8?B?RU5ZRGZGd2NiWldwaDZrNnIxaktBU3BhbEhyeUxJOFUvTXBiL1NQMEFhZWVi?=
 =?utf-8?B?M1QyeEY2cHYxSEh5Qkw0VGxyNGZ1REc1V0duVXhLazZvRWdDcjZwMVp2R3JF?=
 =?utf-8?B?VkxOZXFaK29jS2ZOdE1rYnBkQTRaU2E4UlFmMkwva1FBWndWUG5sZmx4WUxl?=
 =?utf-8?B?Mm9UcTR6ZlZSYlFPYjNMZ1NhdGgrYmVQaUxMdCtsK0dGV3VlYTEvbXJTT2VL?=
 =?utf-8?B?WmVQWVJnV3dqeFd6bzdTSEg5NWZvQkoxTXdGanE3Z0QzdUVMaGpGU0p6dlJJ?=
 =?utf-8?B?ejBnVEZlVTd0TXFtVnpvRUNTZzE4NmhnTEQ0OEl4U3U0Tjlpb2tuTnRXbXQ0?=
 =?utf-8?B?Vm81NmR0Q21sYmg5MXZrNDlxTDB2bStyMDlGRkVsN3pPeWdxbDJ3UU4xRWU1?=
 =?utf-8?B?RnlSYm4xdkJWVytOVVJ2aVZiVHJwRjdCTm1oaGc3c1ZuUUVOYlpoSXBqY2NE?=
 =?utf-8?B?ZlRvaUN2SFRPNjdDSkR2eUxncW1UYitKVVFnYWIzakxTd2x6ZXlGazNsRm1k?=
 =?utf-8?B?YWoza0doNC8rR3VCdUR6K1FOZUg5cVZTTFRvNHFJT2ZmTjU1enFBTkZvRXRx?=
 =?utf-8?B?SW1CekhYVGEzM3JMM2FGdzEzMkhTQWRUdk1zaDJGMzdzZnJYWmpqOGxlY3l6?=
 =?utf-8?B?N2c4SWJpRTVBPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef1e7bf7-27f6-4cbc-c4be-08da05d7e68f
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2022 16:30:07.1885 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o9xxQK2fYbT7V45YOGOu5c7Fm1zdV1nF6PwZbew8MQyOJ+FKMTuPgxu9j8QBKqnWuPaFtUvOGLxXxfG+4Q0rjAzcWG+TmNqMTL8uJmSv3Yc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4244
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 0/4] ice: switch: debloat
 packet templates code
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

Hi Alex,

On 1/27/2022 7:40 AM, Alexander Lobakin wrote:
> Note: this will conflict with [1] going through net-next,
> a followup will be sent once accepted.

The series you referenced was accepted and now I'm conflicting as you 
alluded. I'm dropping this version and will await your updated one.

Thanks,

Tony

>  From v1 ([0]):
>   - rebase on top of the latest next-queue (to fix #3 not applying);
>   - adjust the kdoc accordingly to the function proto changes in #3;
>   - no functional changes.
>
> [0] https://lore.kernel.org/netdev/20220124173116.739083-1-alexandr.lobakin@intel.com
> [1] https://lore.kernel.org/netdev/20220127125525.125805-1-marcin.szycik@linux.intel.com
>
> Alexander Lobakin (4):
>    ice: switch: add and use u16[] aliases to ice_adv_lkup_elem::{h,m}_u
>    ice: switch: unobscurify bitops loop in ice_fill_adv_dummy_packet()
>    ice: switch: use a struct to pass packet template params
>    ice: switch: use convenience macros to declare dummy pkt templates
>
>   drivers/net/ethernet/intel/ice/ice_switch.c | 273 ++++++++------------
>   drivers/net/ethernet/intel/ice/ice_switch.h |  12 +-
>   2 files changed, 123 insertions(+), 162 deletions(-)
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
