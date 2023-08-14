Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAF777C358
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Aug 2023 00:19:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7479440B75;
	Mon, 14 Aug 2023 22:19:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7479440B75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692051565;
	bh=cvO5ZX5t7ZY9HMHGfpn4Y+/7E5QVlcnmVQg4+7uHdCc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j3gp84pK6/FBSLMqv1TH44/DDALJOqOEFQjk50fSz1GE8Fd01kzQpDZ07yorrmRaw
	 iI3p1ozpoKUBj6AByZhOCIyP0aaR5RqO73Vk7AyKa6L0UwQTu4hBsfgrGJOxHdhggJ
	 tQth9cvtZBcz5a1Kbhy8lPvye8m2htT4DWIVJaxJ9YYVI/tlr4vTk4rUX2cVEJdlwV
	 pb0apUFEWvIJYXRAJfgXvsIUKyx/AY7OFpOXnv8ovPQyTGf2QkmTKULB0FkVSj83bw
	 9lfWHI4tFk9jsYNCm3h7YtIn2pHURSskFjY5+8WKsKuH4aWVJNHpP0N0T7Hl9zRRm1
	 fLVYdzJFNKJ1Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EKRwwOz9sLZf; Mon, 14 Aug 2023 22:19:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6AAEA408C0;
	Mon, 14 Aug 2023 22:19:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6AAEA408C0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 35ED11BF36C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Aug 2023 22:19:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0BD4860E44
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Aug 2023 22:19:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BD4860E44
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ft5-JSAPU_mT for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Aug 2023 22:19:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CE85960BA3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Aug 2023 22:19:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE85960BA3
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="357115870"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="357115870"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 15:19:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="823628537"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="823628537"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Aug 2023 15:19:16 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 14 Aug 2023 15:19:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 14 Aug 2023 15:19:16 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 14 Aug 2023 15:19:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YrJ31yiu84P74RtQOoz4BKCGX870z/x6SB/y3zcry519fat8oHEJh/0iSIUP2lYl2phHHBVMzx0AcgNHJOkFl+Ab2FsbuGMRIqM/UhSgEuwzRjnDEKwDvU00aa3NxoBLRi9ZE/pnNjt/eALJGvVdKRph6y37KdOCI8k3yGU/E7k6axJQhGC1mfUlzUodIZX0nucjh0UPmLPDLNkRGShUJyAn5UL0vaKOH3D0DMtfJwsPjrU6Qdz9S0VZ+LozuJyJ6MGSCGKGgO3y4hkBiaVx37DZ1aMj+w+0xLBA4jZp3osVjRReo9pn2O8+kb2B01EVM/6oKNFz5mAzyuBB3p9vxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cbqtAWIAWdLKRgmbD2wvK6AxllRSmvqj51hiQrNvhKA=;
 b=WtzauaMeasH5XA5bIN4VJYZMnaOrOf1fPvBqqOo4TJlsqMEXF7VtiXD4QXT2lztdujDXCwYyM4oYavRaqrsO8jfQUT/4xCtjUmm3g94nOzs3FEyqwz9goT6HWk3tIIoCDrE4jLCpgfGSAosb4APHpgGCNpt4AJvWbQ1m9PrgKD0Iy/Ti5X5najGXtZqnuQpVHE0U9c8LZyniErk6p8GPeW/Wsx58Z/0B8idmpmevTv53LoK0Bavgi14nxjYBZ53JnmjIlrgZkMGz0W2jvuC35i03d1JxBFtmAZpK2A0JHrv9IgCNWDiMfWoGxc0oKVS5JZK1BXDJ9goIDo+CBv80MA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA1PR11MB6688.namprd11.prod.outlook.com (2603:10b6:806:25b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.24; Mon, 14 Aug
 2023 22:19:15 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6678.022; Mon, 14 Aug 2023
 22:19:14 +0000
Message-ID: <2ef66ad0-d8d2-ae28-9624-04a3fbe94de4@intel.com>
Date: Mon, 14 Aug 2023 15:19:10 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Yue Haibing <yuehaibing@huawei.com>, <jesse.brandeburg@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>
References: <20230814135821.4808-1-yuehaibing@huawei.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230814135821.4808-1-yuehaibing@huawei.com>
X-ClientProxiedBy: MW4PR04CA0330.namprd04.prod.outlook.com
 (2603:10b6:303:82::35) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SA1PR11MB6688:EE_
X-MS-Office365-Filtering-Correlation-Id: 555eed3c-6a8c-4c7e-5735-08db9d147e49
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uVvhOLPLOrPYc3gpbo0DRmzcpD+JF9CnvJYsiu8zmDRIs3E/w0sSJI85PtWr3bYm5MsCIr6M4eW+k+o4t+/5DOITIbCYoHl/4dPk9VtAGGjRD2foE/mtzwtcRLkVjondw/u4vKBwsQt2XwQKOQs6FMVwKH8n3JTb6biDKOMpCQ3c05pBobEBeBfMwz0gzK2rvMMhu1q+c7VdsLNvOfbXbg5RltbJjOy2jrL+gyrU1vI5dw/QCmsaAiOU4kEz8LLGnGFCwr+u75nztRh06Eh6+lKQFJb38nMEJi7sVIYoKxyntg4KFVH4DnPVo/daPyA8E1/EYw4ddlwbU/cVb/yFCSvzF2L/wvuL3J4WFVoN4Zm8nk74fdmnkS9lRBc6PdqicmxX+vymruInBA+0AWeFuMPS3mvzq0UNuv3u1vNUff6TzLXQBF/awc7mWSkcE35So/Qhl9ozqXUEg7umM46HO0/tlAoudx6tFOUO5EZsCRzjAcMugp2gbOmKP7NV2Zhx9KP/19C+yZHDlLZH9rF4xVuqTVlx7U6o2SM6CoetiBQSZSGDJ599BKOw+CYONasukLDvhAdTKFZCwyU2H827875c7SO4cDqms0WxjLy8FunHZ2MGyWi730Wj39TenQjfJenrE1VPaHbfHa6Hky57oA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(376002)(366004)(136003)(396003)(1800799006)(186006)(451199021)(6506007)(53546011)(26005)(41300700001)(8936002)(66476007)(66556008)(66946007)(8676002)(316002)(6512007)(2616005)(83380400001)(31686004)(6666004)(6486002)(478600001)(38100700002)(36756003)(86362001)(31696002)(4326008)(82960400001)(5660300002)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WTRERHNRdjI4c0tkcTdkZ1RQMEFBRlQ2WGFtSWdvaHFGMjZ3YjNFWUMzVFZx?=
 =?utf-8?B?S052YVN6STJ0dVJHWWJlMWI3QjFWVStkTER1L0prZXRObVgvYlR2aXA3WE5V?=
 =?utf-8?B?azlZOU9jZTJhc2VIWk5RdmcrRTArMnhYREg2ZWVDRkxPNXdFNURQUFR6bGU5?=
 =?utf-8?B?STFNTVBXeitPMTBlb3BqbHo2R1M5ai9Uakg2enhjNEtXMSsxTUV5OGpLNDh2?=
 =?utf-8?B?RWk5c0NzSzhkUWJJQlVOK3JkTVR5ZjBWZCtGSVZSL3FBNmROWUIyS21RMlBQ?=
 =?utf-8?B?QWhEUUtXdW5UTzN0aFZpVnY2dkdYc2ZKVkNFQ0E1MEt1MkQrdmRBWFFyMlN4?=
 =?utf-8?B?aytTbzhlR0xoY01qOEt0T2dOeldpckNoNk5LeThNTGxVMVhLQmh0QUJERmxu?=
 =?utf-8?B?ZmVzWm9SeHNRc0VWT0dReGNkdnFSYmVYUDA0bGdYUkVvSGN5dzRYNy9sTVJS?=
 =?utf-8?B?SlcyR1RBeUJ2ODd4U282SXVqRnB2VWVSb0E5dXorczFHN3U4RmxGMk1Ec0ZE?=
 =?utf-8?B?cU1LUU5WVDhaOEVUTWd6alpaS3ExYVhjMXZUdU4xc0xncjVUK0o5dXJLZ21o?=
 =?utf-8?B?Mnp2aFdIaTJvMS8xcGk2Z0VxV2JzRzh3MEFCMjVXUkZaTy9SOXlrazU2eDA0?=
 =?utf-8?B?M0ZhZmN6TU1GdXZlcTlFZlRhSzVmNmtPOTRVbjhjVXBLL0dhb3JYQ0pFbVNz?=
 =?utf-8?B?dlQrYTdVTkVpdWVLakVxbmZwQ3k5MFFDbFNKWXpIR2I3bDc4K2tjNC8xMHlI?=
 =?utf-8?B?ZEhndmwxbXhZazZNWFMwZEFLM1dUbWZtdDllWmFONXBJRnJVZ0RZdUdJTzIv?=
 =?utf-8?B?ZnEvcDEvUGRlVGlxMlRwMTNIdFJaUzJnK1BJMEVseHhtYlZPSmY3YUVjK1ZU?=
 =?utf-8?B?a2NCdG5zZXlNcURmTWJMTjZld25waU9LZ2RYZm1mczg4NW5LSGMzckRINUVY?=
 =?utf-8?B?Z0IzMHM0RlQrMTFFL3MyOWEvWXVkZkFHcmd6YmhMK3g1cmdLZXNDT2REbTZn?=
 =?utf-8?B?Nm1Pb1N0bnpad2ttSE5GRjFmNVZqVWJmRHRpOG1qK1pUQUlzRDl3djRXelRw?=
 =?utf-8?B?QXBvUi9PajRaQ093ZlVPNTI3NkprUmxTV0tSQ3ZzdlpnZDRQNDdFdG1MWk1W?=
 =?utf-8?B?cTNmYzV2RnI5QWZFQjZ2cmJSUURQbUhMQldDVDdoYnIyNnBIQnBGSFlHcHRD?=
 =?utf-8?B?YkJUNlJoK1pad200RGprTVFNM2pHdEE5K0lIMWVGcm56STUyNG9ELzVyMS9l?=
 =?utf-8?B?OFhQam1BZmRhVUdyTTBIcFVQTW1WTXI4cUhHTHJWa1YzYmtRb2JZOWJZd1Iw?=
 =?utf-8?B?NFp6U0QwcHliZGRlRkwrZWtzUnYxR1RvMTcvWVJpRXVhb1o1V1FVcGROUGRh?=
 =?utf-8?B?bGptT0l0dDVLU3htOVg0eU90c2MwQUtSNlRMdUpwY1JiVDRLZmlPdHZLUW81?=
 =?utf-8?B?UkNSR0ZhdFlFSURkRGNnNU1mWUt0ekFJY1ZtTHVwUFUvYUcwRGtrc1FmQUNL?=
 =?utf-8?B?T0hIQWh6cVoxVkEvcjhKdEZKdFd6Mmpra0c4a0V3RFlzU2cxOVZaaVQ4MzVV?=
 =?utf-8?B?Vk1xOFhkQSs1aWthUDQ2WkNCcmZpbFFDb2hkZi9uNVFBVWxqMWtVYVl6bjQ0?=
 =?utf-8?B?UUl0TWZsUUFtU085Rzc5NDd3TjF0cXYzeGEyT2lTR1gwenpRWCswcVY1R0Zn?=
 =?utf-8?B?V21wOGViVTJPZ21jUVM1cG42RXAzUWR3eURlU2VXUW1XbjNVR3IvdjcvZXFI?=
 =?utf-8?B?aG5wbnU1eGR1SENIcUppV2c2ZldVYVh3ajJ4c1RTYkpBWUJwdDMvNGhqemJ0?=
 =?utf-8?B?RGpWOVliOVRoN21waGY3RDIxMEltY1lCaUp6aFA1eGg0VVE2NVVWSGRsaVJn?=
 =?utf-8?B?bC90eFpybmV0UkxEajA1OHROMFh3dmMxeFA4NEFhMXhsU3Uya0Q4bWYzMkk0?=
 =?utf-8?B?ZHozbVN3ZUJTNVhCNXIwSWJ4NXMvYldDQjFVY3RyYWdsUW9ucWh4WWRlT2t5?=
 =?utf-8?B?TWF1QzdVTUNCZTVVdnlucUdNKzUwb1VlcmlKTndScGxKUW5vZHhoMWlqazBx?=
 =?utf-8?B?M2FNU1dUUXBwc2o5MjBmZnNsRXFxbU4wMFMxZzY2STZWQTZTcnBQSVdHelBu?=
 =?utf-8?B?T1hJeEQ5MXQwRmlzeXBMVVU5VUR0VnR1NWM5NGhGRGRRVEM4VEdyOHBjM05N?=
 =?utf-8?B?Qmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 555eed3c-6a8c-4c7e-5735-08db9d147e49
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2023 22:19:14.8833 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fk3Cm19Mp9XDTvCkIgEovz1HVFQ7XW7fFKE2VD2VQ/rDolmCeapKUBK7RaJJ8ROumghAKXdIElTTyKU5sVza20fAQHvzPxFZ9UW7GSLTMoQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6688
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692051558; x=1723587558;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IEXl9VKIxh2l46MXtSTHhGRQH0LqdvDXO7Y2dwE1P6k=;
 b=QirIXSjXfihAgUePlN55QbgrqKHrn0/qhtoClBeboDqdtso+bCgKunjh
 QrSHp4fyCsbfQgR40ALM6RK53zerhG8tKk/S+Lwk3wF7doScUH/BP16UV
 EY4dtqmf12zWQvee2NwSy8pRb8kRXcK3+uTpLNjnFNZEvMa7VhT8gOUL0
 vVRJqAaj0qwvJFWpsFrvN2kVv9jJMg4LmTTPHDuL/eSt2gblZvtc80T8N
 AIEBw8BtX61OEFNfC0sC6Q9JP/A6MaFOpfABSkHvSoU064P1aWvZHE6tB
 k5WRV6ghaDNYNbPf9aDQjI1EnOJ7MxFbkdDN3bFgNy85AJenNCxFqD66I
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QirIXSjX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: e1000e: Remove unused
 declarations
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/14/2023 6:58 AM, Yue Haibing wrote:
> Commit bdfe2da6aefd ("e1000e: cosmetic move of function prototypes to the new mac.h")
> declared but never implemented them.
> 
> Signed-off-by: Yue Haibing <yuehaibing@huawei.com>

I believe netdev has been taking all these unused declaration patches 
directly so...

Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>

> ---
>   drivers/net/ethernet/intel/e1000e/mac.h | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/mac.h b/drivers/net/ethernet/intel/e1000e/mac.h
> index 6ab261119801..563176fd436e 100644
> --- a/drivers/net/ethernet/intel/e1000e/mac.h
> +++ b/drivers/net/ethernet/intel/e1000e/mac.h
> @@ -29,8 +29,6 @@ s32 e1000e_set_fc_watermarks(struct e1000_hw *hw);
>   s32 e1000e_setup_fiber_serdes_link(struct e1000_hw *hw);
>   s32 e1000e_setup_led_generic(struct e1000_hw *hw);
>   s32 e1000e_setup_link_generic(struct e1000_hw *hw);
> -s32 e1000e_validate_mdi_setting_generic(struct e1000_hw *hw);
> -s32 e1000e_validate_mdi_setting_crossover_generic(struct e1000_hw *hw);
>   
>   void e1000e_clear_hw_cntrs_base(struct e1000_hw *hw);
>   void e1000_clear_vfta_generic(struct e1000_hw *hw);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
