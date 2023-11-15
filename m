Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FF87EC78B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Nov 2023 16:40:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E4D2A60FF7;
	Wed, 15 Nov 2023 15:40:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E4D2A60FF7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700062804;
	bh=sABSjVafWibUrrWSl/SSn+hIawqxyc+Taa9e4hcZaqA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5P7M75xhV39oTB4Mbxz0+LuJ9m/gFR1Vy1T/O/SfsJFCEKQb6aCNmX1m3oXJ95t3B
	 AnPT4nKKbQ+BTvTr+SNzcZQSL64NnfAebimdkCYY5S/muuut0p+MPONLqokZsXTpzA
	 sNiAlyRVvQo6RBLjvIp4DKCrEBeaQFrvT97fvRfMJR95gDBF2VEJoL44Kx7Nqhzdsx
	 aNMvZMoyg7WQhci4qqiuvA+IzdjlVPCaNVEat+MPTd9NWoTfKOl+CdHGgOkko/SQw1
	 ZC6k8kwTD3Wrtu7S1kEVvGjE3B1S0UHbk+jSF3TO2gnQVzIFcUWKv8JkkNL9PrR1kK
	 ewOCQBU9JQHrw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C9ScvxCxCipM; Wed, 15 Nov 2023 15:40:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7B4660AEE;
	Wed, 15 Nov 2023 15:40:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B7B4660AEE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AB2111BF3B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 15:39:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8F3DB60FD3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 15:39:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F3DB60FD3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zqWUI2SLyxQ1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Nov 2023 15:39:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A61BA60AEE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 15:39:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A61BA60AEE
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="455187616"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="455187616"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 07:39:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="765011896"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="765011896"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Nov 2023 07:39:53 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 15 Nov 2023 07:39:53 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 15 Nov 2023 07:39:53 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 15 Nov 2023 07:39:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZA0t+rlSVS4TC0z0bwrTf/lylS1Jyin4z9u2X6kqnn3uGFBCer3Mgrkel2tIPJP7rNyf1Y7tHkhIG8tRu3iU9ZFnJgRqpFAREmRptq/g6sveiVh0paGqijcC6TO28oF+1FvpwQk7izq8BIRcc8/8FBF/nU7SXcU+1dvpugeLHAGQ94AcQIrA3eHaeO8HXErNEn+mkj+9m38QQgpACQ6OwjjYhYJdMOV2lnYEqG0KHVF5MraqbiQl1V1lW7Xrm51Pc6BglyClagR4ENVdfXI7/kOK6TpHui2U5tn2GJ80dFtl07ly4t1Zys+KHIk1/NJ+A1wTER/7pQWqWNpMBX6sFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2ogeTNTEmovc7t2Jydo4QW+oLBWvi8MIZ2MUCtQ7J9s=;
 b=lnMCrI90aitJSwdjn9guzGUthDcypV+hIT24Uw47qd9m730d46y4SxVGKfH59Vy7x6BSrIN3CMPP0xIInzNOoAe7+r+0IUDn+FA1R7IOx/9FEBSVqUel/dqHcLDMS49YFuaYt1v+bSJqaa6eWSJLMLMCz9Gbt9gnNdDlsd7dfWzpchGIZkYQjz8AHutOQnU2Bnk128Blu0CHJ1dPHF5eR2LleXKh/8z3YstR8flqh3e40cQKsHvjR8HcXsHphzj0cjFKlMqvfHnZHp0IBdMVB4uqBuiK/dciSShDX3ODI6P6CsRhmPoppx0XCCJhgLf2pg/Qm1G0sGpycwYMnn70Kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by BL3PR11MB6364.namprd11.prod.outlook.com (2603:10b6:208:3b7::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.25; Wed, 15 Nov
 2023 15:39:50 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::36be:aaee:c5fe:2b80%7]) with mapi id 15.20.7002.018; Wed, 15 Nov 2023
 15:39:50 +0000
Message-ID: <55e07c56-da57-41aa-bc96-e446fad24276@intel.com>
Date: Wed, 15 Nov 2023 16:39:27 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Kunwu Chan <chentao@kylinos.cn>
References: <20231113093112.GL705326@kernel.org>
 <20231115031444.33381-1-chentao@kylinos.cn>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20231115031444.33381-1-chentao@kylinos.cn>
X-ClientProxiedBy: DBBPR09CA0046.eurprd09.prod.outlook.com
 (2603:10a6:10:d4::34) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|BL3PR11MB6364:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ac010ab-2e6f-41f8-9cac-08dbe5f11af3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DmFEkIjmFsdtOFLI24E9VwYrdXY9ggZQkYqvgFkYQi3ZxV1gVyN2inrYd5ZD20K1+XVhvpMOjZdCocky/eGwROeQPolrkgkk1HmxkaadZKofa29tc2cxc5dNyUuSFWWdvA2+gn5T/V8Xo1lZFkChtKdQ7CrGsb5FGuxqIFnOSWQ+CGgdI0a2Rew0Y8DaYgFzxm/u/kuPdwJVBRUFzLfUkv3g6TXc3EzKZCjTxhj6PX3L+kNY1LkOeVQlFUbB8z/ILsilmPUkz6mJI2O2m7Meag2VxIw1LfpH2YNKW0EsKSeO9bsryXq2ByG0Lbimfyzz0p8N1zG7ZJGJ/RJoFjeGqouSfCu9vbmYLfF9whn4DwBH/U4vmGU7jd/ogpEv2gzOfpsJdHXELdy8Nn8Rygzc+9HfH8amlPHINcV1tYey5Cb8iw1XbIhvYV2AAFbkhTdu36i8igi7YzV4Ut3VnemZ+3xH0/1QVqyuX8reLNww49GXCgXEnG107CQpYv4OWQIUTBrvuSrUh8jFyHq3KQ4TCZ3kvKzXRQDtKp0QCJjC6jfx5/+y06jZLBvPXsQqhyBMzWbqlj54l/zv05sg/jal4LbZMEwZ2rKV3s8/Whn/rvZQwYYHR5w4SavMM1P1Cnt359hfgIrcb2IyVUVeRYTu2w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(366004)(39860400002)(136003)(346002)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(66946007)(41300700001)(31696002)(2906002)(4326008)(8936002)(8676002)(7416002)(86362001)(5660300002)(31686004)(36756003)(478600001)(38100700002)(6486002)(6666004)(6506007)(6512007)(66476007)(6916009)(83380400001)(316002)(66556008)(26005)(82960400001)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SFc3UU5pVkJXUlRyOHhuem5vNXhneXpKWnhpaEV4eWJEMVlmbkNWWkIraEhw?=
 =?utf-8?B?V1BTNFdCdFpmM0MyVVlnK2ZmLzljLzZLSG9EOVpjWHpiZmhwRExraksyV3h4?=
 =?utf-8?B?cnZsTzJtT3RiZzRJM05IaWdZUXArdEdhdk1ZWlVqcW53MWk3T3QzUmp4cUhQ?=
 =?utf-8?B?bTZkY0c3OGF1aHhZUC9MTUIyTDN2TDhzMmtsTlZFS0ZRdGt3QjlLRXNSZDNE?=
 =?utf-8?B?eEEvZ0tGdnEwM0NIMHhUYTNGRGVBZFpSZFVQWlR5M1R3VHY0RFVyeXVRSDE5?=
 =?utf-8?B?Yys5SHJodXJ2V0Y0K253UEVDN2t5bmlyOURVelBxLzBEbGt0bFZ4RTQ0cjF0?=
 =?utf-8?B?cGFpclFWLyt5d0lZaWs2Z1dzeDViK0ltMlFsSVJLZ0RCcFoxMnpsUm9tTUgx?=
 =?utf-8?B?emhIVVkzUERCS0hwZjdEMTkvSGhKeVAyVEpJSXd5MmQ0MXFNUkQ3aDZIVzht?=
 =?utf-8?B?Y1R1c1ZXTFpkRUUzNmVOdW1lbUR4YUlKT0RWZGd5U0p4RTNWWnVVam5kQlR6?=
 =?utf-8?B?YklyQ1o4ZUpPUDRRdkR4OXloMmVSdTl2Q05CVE1Ya0J6a2s5YVFVSk0razlk?=
 =?utf-8?B?cFQ5SU1jMlZrekpWSmNGSGMxMmhndENuS3NpRURjWUQ4NzJmblBTTHRQM096?=
 =?utf-8?B?SXd5ckkzL1hrUE4yUUtBajBtQ3Z6MncwU0JuVWZ4SVdjLzMyeDhVczNsOUxh?=
 =?utf-8?B?WWxtdTc2cGNLTHRDM1VDd3Y1eFlpYzk3dlJ3ZXlMS09nZkhxTkw2eThOQ1d2?=
 =?utf-8?B?dWttNmRiS2NQTWVBOUNUckFDb3QxbjJYeG1zRzdiaXFDQmV5M29oTVErM2gr?=
 =?utf-8?B?QjNaVnJHVy9LbUI3NjF3aUxqeFJPazdRVG1pWnl0Vkh3bmhsRFpPcE15WFVU?=
 =?utf-8?B?U0Zvbk5LTWVMSWc2OEJpeEZGZ1lBaExLQXJyRC9SMVBhcHJDNmZGd2JmV244?=
 =?utf-8?B?azJ5aVRMU24wMDB2eGFMOHN2OUZaQTBMVllqRWQ0c3gxNGh6cHZJNmZSVzMx?=
 =?utf-8?B?cHhUZXk4QnkvaGFhcURtT1p1Qjg3bURXTTZpQ1NjbTNuSmRpcWFxTjhHUXJw?=
 =?utf-8?B?Q25nSE43NkZSM214L1lNTlNVZnlSRzlVNEdxbXZ4NkNUWk5wWCtmZm5FR1lB?=
 =?utf-8?B?eTdLbGhHTC9kUWJiM3EzbWRlbjlsbDlpVXRnUDdnUit2KzdKcmJtVnVRcG4w?=
 =?utf-8?B?Y0NmZ2xzOXlteEdLZU1WOGttWEY0aFYwTmVjYmtaa3JEd0tLcWlzTDRBRGQ5?=
 =?utf-8?B?QXhKMk1na2FTdkdEVjhGQm5sdmRyZTRRNUJZT0h3L2ExSzJOMEdTdTdNWHd4?=
 =?utf-8?B?ZzhheVFvRk1VTm1jaUNrWXRqekQ3RWdKS3NCR2pJRHJvTUx3bkc4WFpTbC9w?=
 =?utf-8?B?ZUV6L2pIejNqajdOWXd5bFFjNU5XY1NoSDF4SGFRV0lROFY0a0xHNEFiMWhI?=
 =?utf-8?B?Q3BMTitFOFdIOE5jZ3FveFFnTUExWDBUeXVLSGV0L2xkVXZpM3o0OGltTEo5?=
 =?utf-8?B?bmpsNkdpcS83UVJnaUNrRm5hYXd5S2tYZUk0TXUwRXhDdEdlWEhOSWR4Q21Q?=
 =?utf-8?B?TThZTUJINkRHOXliaTBQK3VJT0piRjcyZlhjOE5zKzViODhkOHNaUCtMa1JF?=
 =?utf-8?B?ZGtPa2ZwT2J6MlhwOWtod2JDcFdRZjFhOGJYUEJaRFpNNlJDU3hYQm5TOXE4?=
 =?utf-8?B?VzJkckd3MnhIZUZ5bkdrdWFlY1pzSEtkandKZ0xIK1hpTFo0QjBkd2NXVFZN?=
 =?utf-8?B?aFpnYmtzbEMzZ0VQTzJiMnUxaG1VeGVlR2JsaGFsNWJ0RWNDR2FUU3UrMkJZ?=
 =?utf-8?B?citHWkFwM3VwWlo5eE1mZksxNGd5cFBIMTdGZk96dXRnM0dIVnE1OVh2ZXY1?=
 =?utf-8?B?bERsYXcrWFlabW9nZDN1cm1xRzM2cHhBM2MzNnd0cFliMHh0TmN3RitxVnBO?=
 =?utf-8?B?WFRnc2ZJam9HV2M0UVcrdlkzYkJ6cDJpS1hZeUZYMGVWQy8yaDlBK1NGUjBq?=
 =?utf-8?B?Q3V3RkhqZXZXc2dXbnd0aFNHdTFFUzI3eHV6UU8rR0VQalRpeFpIL1dRTnBV?=
 =?utf-8?B?b292eHRaV1BQaFA3S20vRDVKUUp3U3pnV0NvREdXbjY1UHBNUVN5M1NwbWNJ?=
 =?utf-8?B?dkMxQUpPbi9lQjdHa1VJN0NyQ0wzd0ZLam55QUdWSFJoOUg4dlhTRm4rMFc2?=
 =?utf-8?B?MHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ac010ab-2e6f-41f8-9cac-08dbe5f11af3
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2023 15:39:50.7485 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RtupuzHn03DNXZLp10D6awjbZmjrtHR2VKFORTOmNMK9yzbW9ajfKlMUIqwr8XBOGaEdE6xOCG+X7MFPpVBP2v8znVOqHEKfge6NTeDR6Bc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6364
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700062798; x=1731598798;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VF1jDGjd7nzFTQLv2nq+qsY7rM0M/iGzpIybXJeZR08=;
 b=B70yNFo2GHnzCD74qByS81kuq9wn4LZZ8OSotJh9nm1gyjer9dkb67QC
 A3fietagbjZ+Rce24mVdQY7coUdBuKQwSOXt40v+AsyIyY3lG3tPxnAew
 HftP/pN3f1/4S3gRH3R+FdQy2eWikrl36JmEAxp311Bv1lHb3cVKj/5hC
 XY/6ZnPqmJJG5uwgVevmXhVcIeYmDxZxqW+EQEe+fy9bgb/0dEKREG+72
 U2tE+nRoxyKJaYl4S1CYqS5SQz0+gurCdsK+nE0YGsjqlHrik+H+S8nHz
 iysgKXC1VgHTcOlhu2n/ob0nFRgThhndou2ZpcTRQ2diD0+sEJVdoz1at
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=B70yNFo2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: Use correct buffer size
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
Cc: kunwu.chan@hotmail.com, netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, jeffrey.t.kirsher@intel.com,
 horms@kernel.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net, shannon.nelson@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Kunwu Chan <chentao@kylinos.cn>
Date: Wed, 15 Nov 2023 11:14:44 +0800

> The size of "i40e_dbg_command_buf" is 256, the size of "name"
> depends on "IFNAMSIZ", plus a null character and format size,
> the total size is more than 256, fix it.
> 
> Signed-off-by: Kunwu Chan <chentao@kylinos.cn>
> Suggested-by: Simon Horman <horms@kernel.org>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> index 999c9708def5..e3b939c67cfe 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> @@ -72,7 +72,7 @@ static ssize_t i40e_dbg_command_read(struct file *filp, char __user *buffer,
>  {
>  	struct i40e_pf *pf = filp->private_data;
>  	int bytes_not_copied;
> -	int buf_size = 256;
> +	int buf_size = IFNAMSIZ + sizeof(i40e_dbg_command_buf) + 4;

Reverse Christmas Tree style? Should be the first one in the declaration
list.

>  	char *buf;
>  	int len;

You can fix it in a different way. Given that there's a kzalloc() either
way, why not allocate the precise required amount of bytes by using
kasprintf() instead of kzalloc() + snprintf()? You wouldn't need to
calculate any buffer sizes etc. this way.

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
