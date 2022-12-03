Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B37A56411CE
	for <lists+intel-wired-lan@lfdr.de>; Sat,  3 Dec 2022 01:06:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6598820EF;
	Sat,  3 Dec 2022 00:06:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6598820EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670026012;
	bh=kufwgIOfgUNmAUdF9ujHj/naQYvyZYjuQHyl34uL7Ds=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ykV6qKAYaQ4get3p+WewKPX5Fi/UWovr/gz7tzWq7EwVZwhAB85ZVDLuLlVdEKq5P
	 Ytll/M1dgPGxjEMWSx84LMLo1qSw3d5nKc/H1+FIJ13PmQCfLh5JJoh8as0XTr+wzV
	 0LSgxIbr/q6jXVdJDLhqgsj67hSJ713Fs/eVqd4IL327WV82Ubs09i5fbyB7F+U5m2
	 kqXBKm9rGthpGK+kIqMVtLRR2vJmWfj5grunWtbGKQ+omtCPY8xGz2mc3khLNgkIRJ
	 wt/VnP9hZft85YZAHNJjN89Gzctk3gMeK4mCcyYNgW6P/WS7QX2FlHOTP5IYxjZ0P9
	 II7WaaLT1ywSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id asKfsb6lk4fB; Sat,  3 Dec 2022 00:06:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6687820E7;
	Sat,  3 Dec 2022 00:06:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6687820E7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7FE1C1BF37F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Dec 2022 00:06:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 596C9400CB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Dec 2022 00:06:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 596C9400CB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S1TOa0yi_nSO for <intel-wired-lan@lists.osuosl.org>;
 Sat,  3 Dec 2022 00:06:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E55D40498
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2E55D40498
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Dec 2022 00:06:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10549"; a="380363117"
X-IronPort-AV: E=Sophos;i="5.96,213,1665471600"; d="scan'208";a="380363117"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 16:06:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10549"; a="595617748"
X-IronPort-AV: E=Sophos;i="5.96,213,1665471600"; d="scan'208";a="595617748"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 02 Dec 2022 16:06:37 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 2 Dec 2022 16:06:36 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 2 Dec 2022 16:06:36 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 2 Dec 2022 16:06:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RkMScLQg1pD9DYTj27TYVugB4OHUQcCdd7LTw9C00K9rPuYJHyO3dvA3zOICIYHqKdTYhQLs7COTfw3XIzbEXe0QuwbfBxKY/U3JArWQ6so8qao8RfqJ5EG/DzgtFUPoFS8pOgIP8kWcGJMOyHYmEDesK3USzOH8kkMYRuTYfQBjrgEAUE3eW2iuhxQvy6mIMCN8OHIPRTz0LDiBtgDn+tdZlk72cuYBGEZx8keozIwMZbaxYS8trV0eGhfpESqG2t6GupEZ4EFzhrBVIODIbQcUKv3H7d3kMcIgmPZiWASjgmnQ0DRo27MvwXkiFr1jzAYeRiishJT+MtuoZXmmyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lF+/vZPKOuYZzCSBOJtcqo3uIFAoxQnWxocYEYCy7IQ=;
 b=M2m7G0bupn5/9TeGQpkZa5J2N4lxYdQ1Km5Yl1JsBJbYBO6m5JFvBHldwsnOtFhE/8tn+1LVwtfe+Y2pjt/X5rgHxAFfV41HUmCtRFuIv6ukXm38r6MtlbPrqnnoPqiHr254dAf789NLe3EsNN533ROtt9xb9YQyKZn+3Yv4rVvvTSy2b/oePML4LZP3rk/T7RmJk9ZYxSWU47RKFVsDoIBGTwkvQy3tEX71TJ2rWwrtbCROV1ajpf9Cc6sfjeLDM+orhzCWGi97uKbvPBPQ0F8rbTVwEvJ6HL1jQV3WP0dMRpo5qX4kVjVTvnI/+MlPZ8GBBJn5VcWGYXrrcjMhAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MW4PR11MB6739.namprd11.prod.outlook.com (2603:10b6:303:20b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.10; Sat, 3 Dec
 2022 00:06:29 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5857.023; Sat, 3 Dec 2022
 00:06:29 +0000
Message-ID: <42f45fc0-3077-abe9-1700-299e5631767b@intel.com>
Date: Fri, 2 Dec 2022 16:06:27 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Jan Sokolowski <jan.sokolowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20221130124651.3246167-1-jan.sokolowski@intel.com>
 <20221130124651.3246167-4-jan.sokolowski@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221130124651.3246167-4-jan.sokolowski@intel.com>
X-ClientProxiedBy: SJ0PR13CA0183.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::8) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|MW4PR11MB6739:EE_
X-MS-Office365-Filtering-Correlation-Id: de1bf7d7-7e6f-43cc-f6f1-08dad4c23a5a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Dt3RSeowtAXPATJ9gtTncbJKbaajaQyBeyTR91QiMtXpluagP3ynxUn82mYSiEM7Zoe9+ItrOxj4mlgcs/nzt/uDXtLMcm+xgLAAh9fRqCOKKualH+JNFoZ6JyGYFvs1GVlQ/XwllW9jbB3/bYnxUOagfAiCqW7rEBEd74Cb3FNZwcFY7xwTtFty4iX5HFcdeGN4ci0KGH8iOSHua4Wj+89RGwqMb7x5RnMJftGUcUjaD6epIaNrKcBG7sWU/MJwGJ+vUXDUzt+pvb1OJcuYQiDcSVKfbThz0yJeesYWDEptGKisuSsWP1AagteXmACwij8jwuq85SNvVwrv09ElEk+yGjmZdj3M5hI33zhyFT8LgoiVo/8t20tmnOH3A7UEyH0U0M+RRxJKBd2nhAWXVaIaPiiD8EQkrgGuP+NYbtfei3fCPV7FWGI5hM7KY1AlHwmFX+D9TbsswLQzxfwz1Px0983ZJ9txpNXTSZpKMlpN0m+Fl13DPdkAWGPYwRzaCjSqo9zMjba+A6HiN8KuBsZDpr3C3QkogTelb33dxXaNaW/9fnhWUVeLByuN2XTUCAmoN4qLK6PNaAQyVjxqBMArHuyd5tH6bKK7Yx3DZJ3xAss++k1jHKyKRltd5G/OCcEVc8m5lSMivcjGJWkLXb0zNFCnuCSl91kUKdohMGaXeckkT7nth/jbWkpYe3/OfZF5F9Flw7lQFosY0H8/2RFCRJnVbL+UWtrizw3UYhw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(39860400002)(346002)(376002)(366004)(451199015)(82960400001)(6512007)(36756003)(86362001)(316002)(31696002)(31686004)(38100700002)(66476007)(8676002)(66556008)(6486002)(66946007)(478600001)(26005)(186003)(6506007)(53546011)(2906002)(83380400001)(2616005)(41300700001)(5660300002)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ellHT2d5T2Rza096a282Z1IwTHpUQXNVZWlaVCt3T1Q1U21xN2tsMUVIZ2x4?=
 =?utf-8?B?U0NxYTc5YlM0YnYxZ0xvdm0xVFVJUFh6cEdhR3k3SmtlWm1Sak1MZ3U3d3dj?=
 =?utf-8?B?ZGtCVnp5cTlBbjhYWTlUZzU5MkFqbEd3SDFkQTN2ZzhZeHRFQmR0VG81dzJY?=
 =?utf-8?B?TFo5aEcyekp5RVVxMGMvQ3NKTHNFcStGODVTaHRTYUtqZi93bUZOZmtmR2w5?=
 =?utf-8?B?R0o5eWNDSHdWNVl2bERyZmFOWkx1NTZDNEVHNlJYd0licXJPdUlaQ2VXM2tq?=
 =?utf-8?B?cnJFMU9tZzRwdjV5a0wxNGUrQU9FWlZHLzdMTU5vWVg3eFBmMTBOVFZNQzlx?=
 =?utf-8?B?TUVFNytTQlhBZ3N1dVVVaEhwRERPS1NDYVZJTUtVSEMvZGpYTXlvd2hNaHFZ?=
 =?utf-8?B?d3UzTVV4ZGZsRU04YTRzVmV3TDBVd3ZDbzFxbmJNOWh5a0RQV0htUzlZYzJO?=
 =?utf-8?B?ZC9YVmIzQmVQTHU3Vk5mYS90WWZxVHNZZDM5MFU5eGVFMkh3N1NqVlE5Rldw?=
 =?utf-8?B?NExSVjZaMnQ0RXdHREhSMjNrOEEvNUlCZVo2WWhUd2hFVkxzcGxDL1pqZTFR?=
 =?utf-8?B?UXFTd0I1MkZIUkFHMDk5MkQ2T1dXMGVvNEp3QWZ1QjVUTFAvNCtseFpyNGVO?=
 =?utf-8?B?MzUwZnpza3RwWUd1WXlJOVc1dzFJRkJNU1RpMXlndC9QYlZsY2I3YktJN2t1?=
 =?utf-8?B?N3cyZWlFYkk2TFR3UVYxL0thL28zaFV2RjFVOExVSjNIVWczQ2RHWlhmMHBI?=
 =?utf-8?B?OGdpeGhzemgzNHJDdnByd3IydjIyTFJiUXVIWmN3VXpJRDZrdGlyOFRldVBR?=
 =?utf-8?B?UllURnNaeDZVUm1vVTRGUS9CUWhiZlhlNGxmUzJQUFVNNnAxWXlmeUhTaDlH?=
 =?utf-8?B?MEVLVEJqNHY4c2tkY3ZIUWEwdTNlVGJzZ1pZL0RsQ3VHVkI1Y3hsTzdWUUZV?=
 =?utf-8?B?Sng4OXhZa1ljZkRDK0J1dkkyOFNQdk9zeTdTN3l6QTZOWUc5NVIzZk5LMU9F?=
 =?utf-8?B?VjNoNjVxanlUd3JRS3k1Sm04U0Q1ZkxKcVd2akkxdXFiS1YweGtSVlFiaDZn?=
 =?utf-8?B?eHVPNWxIREJIeXRpc1NickloV2pGbmdSNFNFUThMWlQ5STAyRXhUMm5ibU0y?=
 =?utf-8?B?b25ySVNsWVhKUENqSTIrS2FIU2ZndDQwczk1bVMyQkNXZnFkM28rUTJkWkpY?=
 =?utf-8?B?NmJKNlIxcFFjK0lGTGJBTUowNjF4RDc3enQ5RmxGcERMand4NTIvalp6NU1D?=
 =?utf-8?B?V24weXA1UFRsVGxiMWVlTUhsTEh5d01GaG00Q04xZGFYeERFS1E4cE45dFFp?=
 =?utf-8?B?S0Y5RjF2TWdWcnFrSnM2aE5GMngvVm05YWJJanVLbGY0V0VhUUw2VjRzbFRY?=
 =?utf-8?B?UzBSZlZLRFRtc3RqWTk5bGlmSGx3Nk5wdlZLVEJxK1hSZWtRRFJyZGpXSDRE?=
 =?utf-8?B?NzRhdStyUUlqZXp4Z01yNVkxL0IzL2VBRkhxNGlkRGZqZ21pOXRpVFhPLzBv?=
 =?utf-8?B?M3N6RElrYkxCT3JEV1NWcnpzSy9NREFZcnFHTkF5Skp2TVFUMmpmck9IWXRL?=
 =?utf-8?B?TmFPWFNqdm9mRk5iZWw3OUNjVmRFbUQ0WGY1RHIrVjhzS0ZaZzE0Zy9xNUs5?=
 =?utf-8?B?NXhUWXl4TEVyZnNpV3lyTnFOV3ppMi9KeTJYb0h1KzBRYnJFUnNnQ1ZGazZN?=
 =?utf-8?B?N0c4SVhSa3FDbFRORlkxUUpJM2l5a041ZFFKdDhDSGZxczQrS1NjVi9raXI2?=
 =?utf-8?B?aEdVeHB1WUJwWmxsd1dUYTBsTU1YZStxdUpxSForZ2lLSXJuZ2RvK0V6YTVu?=
 =?utf-8?B?eUtlWEt5NExOUkViWlkwYklrMHZIYzFrWjVRVDBYbTA0aW40MVJUYU1qdDVG?=
 =?utf-8?B?N24yRmVvdHF1OXFHRnUyMjR3c29NU2VUblVyb2gvWTVzVW9lOEt0Z1VGVUh0?=
 =?utf-8?B?ckozRjFtakNGdVpFVHZETXczdTZGalAvRGFKcFlIcmd5cnFndk44U3BUZnNs?=
 =?utf-8?B?clVnYUp2czNZR25ubHRpUDgxWkVuaE8xODFNNDVyWng5Y3hGTEpVbUtheXR1?=
 =?utf-8?B?dHhkMFgrUjVvUUd1SDMzcXdXQkNiaGpTbmNTQ3VPWmRjTUZaTFkwNmZQVDF6?=
 =?utf-8?B?bjdkMkl3aTUvQVJKQ2dnSVNwV3FISFBKZWdORlF4YlEwNUJIT3ArbHNPT1Ry?=
 =?utf-8?B?aHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: de1bf7d7-7e6f-43cc-f6f1-08dad4c23a5a
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2022 00:06:29.5380 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iY06eL5yp/WrhbAFkfoTrK6weIr2omZgCP317483zYpW9GvvoAfU8hStP3cCpJoEqIYRsj1l5prSbt9zxEZhGGHxcJK6merBk4Gj+sCS238=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6739
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670026002; x=1701562002;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=b6tj8owAbrUaAY2iTpP85iyd1TsHfoYEx94z2xga0NA=;
 b=Sc++y8Aoe2x5UCz3pK5On62nbZQ/txHXLo+2WDfmNKCCSl7c9FtsGLvk
 CkF2H5PE7kejyFz+tHGMklemJ1vHthrPNSYzNKDOAPvEZvj+UB7sQ1InO
 SMJAlt0XyjeYkkC7wkpVpxVOuTUB/G2tP+n6e6y4qTXUQCHNh7Kshe9ed
 eEiqxGkFKVN9BeBZV4GzoEnkqPfYb2Kq8etHsxr/KF8MqBWbSmrNeRKgX
 r7Fex95ZosBmOQ+LKeygvGyYyTLbuNCc24lsstRW9HloI+tWhTdU+qsqn
 Gq/0UnvMH/YD5FsAxwym04yM+5j6u+u2BVji73uqLWD29QJUNEp5Iu7P7
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Sc++y8Ao
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 3/4] i40e: use int for
 i40e_status
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

On 11/30/2022 4:46 AM, Jan Sokolowski wrote:
> To prepare for removal of i40e_status, change the variables
> from i40e_status to int. This eases the transition when values
> are changed to return standard int error codes over enum i40e_status.
> 
> As such changes often also change variable orders, a cleanup
> is also applied here to make variables conform to RCT and
> some lines are also reformatted where applicable.

You missed one conversion:

drivers/net/ethernet/intel/i40e/i40e_common.c:1693:1: error: unknown 
type name 'i40e_status'
i40e_status i40e_aq_set_mac_loopback(struct i40e_hw *hw, bool ena_lpbk,


This is filled with checkpatch entries for: "CHECK: Alignment should 
match open parenthesis", please fix where applicable.

and one

"
CHECK: Please use a blank line after function/struct/union/enum declarations
#3113: FILE: drivers/net/ethernet/intel/i40e/i40e_hmc.h:190:
  }
+int i40e_add_sd_table_entry(struct i40e_hw *hw,
"

> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---

<snip>

> @@ -788,7 +788,7 @@ i40e_asq_send_command_atomic_exec(struct i40e_hw *hw,
>   				  struct i40e_asq_cmd_details *cmd_details,
>   				  bool is_atomic_context)
>   {
> -	i40e_status status = 0;
> +	int status = 0;

Missed this one for RCT

>   	struct i40e_dma_mem *dma_buff = NULL;
>   	struct i40e_asq_cmd_details *details;
>   	struct i40e_aq_desc *desc_on_ring;

<snip>

> @@ -3107,7 +3108,7 @@ static void i40e_parse_discover_capabilities(struct i40e_hw *hw, void *buff,
>   	u32 number, logical_id, phys_id;
>   	struct i40e_hw_capabilities *p;
>   	u16 id, ocp_cfg_word0;
> -	i40e_status status;
> +	int status;

Another one here

>   	u8 major_rev;
>   	u32 i = 0;
>   

<snip>

> @@ -15636,7 +15635,7 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	struct i40e_aq_get_phy_abilities_resp abilities;
>   #ifdef CONFIG_I40E_DCB
>   	enum i40e_get_fw_lldp_status_resp lldp_status;
> -	i40e_status status;
> +	int status;

This one needs reordering as well.

>   #endif /* CONFIG_I40E_DCB */
>   	struct i40e_pf *pf;
>   	struct i40e_hw *hw;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
