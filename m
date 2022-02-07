Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0EF4AC8B8
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Feb 2022 19:39:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB4B1813AB;
	Mon,  7 Feb 2022 18:39:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S_3gUX55OsDm; Mon,  7 Feb 2022 18:39:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C59C781364;
	Mon,  7 Feb 2022 18:39:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C9CC51BF299
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Feb 2022 18:39:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AF03440359
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Feb 2022 18:39:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PDywgbADLdDg for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Feb 2022 18:39:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F00B740269
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Feb 2022 18:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644259186; x=1675795186;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=zZpVYrvlSJ817dUll7VzT5XWpAqPnK3ciDoWQYpcSxM=;
 b=B5s/HmN3HhimnM4xHegL04+ZvyPqqDdt+4CpaS7PeHKJJdL4H5LFMPDe
 RYqnBIGCLPLHzqTMWOtSpQcYt4IF9Hvx4sKVTSKuWz4WEv96Hzy2v4dIw
 +8JxOl/0nC8w3qIZzqhCsrYsWAKi86SvCVZcXn3ZYnUk8Hdlse7Kmm57y
 kS1eGa9XzAfgFBpTALScXYlQCC7fDeXqW8aC+p9N2dtA9BdqJtEuX0M9T
 LtTON9m0k4Dj9VFaLd4KGz7SDwjU4CXWcRcWHh8ANXZYiJ9cbOgpm0bWp
 wPVVS/K+YD7ZZy7as9DawUhyBCaiBkiqsidFldJf/X/OMKoeCtvsSMdIq g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10250"; a="335184942"
X-IronPort-AV: E=Sophos;i="5.88,350,1635231600"; d="scan'208";a="335184942"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 10:39:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,350,1635231600"; d="scan'208";a="484520532"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 07 Feb 2022 10:39:46 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 7 Feb 2022 10:39:45 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 7 Feb 2022 10:39:45 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 7 Feb 2022 10:39:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KdJTQobglGTDZwk1IMvRMpR/UNlVflaXC36KLHac/DURfOcogH0er4hmYuK6pwroKjNElTfe/IL/OyaC7UOMIglc5Wxo5arIDmFYvkq3K3OouX3DwqCsf5hWSNR75L0fXlS9vWkk9cWeaY6RPYhOr7/T4ipy5R61whycZsZraaJzJ3eCUblUE05How2T1GRWk3j4alnDqZs3esLMdo3hDzlMhq8sN9X7Fc/PENtcTJCJrcJnft46fEzew/xZr5D9vH2SNfRTbv9b5uKhZrxJIJCxQPzC02C1hHJXDGvSBmS46QRWxTZ4eYmOIzLSwgOjUa3QunN8lXizJCNuSm1+bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mHIY2tYXmVP/bOs9nrx5AkBETNKa3RUnHt5CwOPd/GE=;
 b=QBwu5oZaRnhlEIW0ELuGAvkK3/5Uauh3pUw51c7rGXMj1wY5X1t3n52pGSTYk38nz4t8OV41d1Uyc8mQmFZQQieFNjXEknbL5NOKOj94u8QOzAd91VqC4dfydP4G5Cq3XToaPR/oSLa9N9YcCZVLU8FxD/VqV0QP9syYSD+Uzu0L8wG1aEFTcQGEKr8N+u681IEQ4rCIdbi+B93s/8ijRzXAtS9lhdjnaokwhDh72eloPMw4sap+vCcu/V0p66cyj9o2Xuw8HdWolxxVJa+5obWk3S6382UhjVWyPExzVc1VmqHM4Zl+B4XzPhsNRW/N3tFAechjWD0HK+zSpBPdiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by CY4PR1101MB2328.namprd11.prod.outlook.com (2603:10b6:903:b6::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Mon, 7 Feb
 2022 18:39:44 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::d016:68bf:aa12:d92d]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::d016:68bf:aa12:d92d%3]) with mapi id 15.20.4951.019; Mon, 7 Feb 2022
 18:39:43 +0000
Message-ID: <bb1dc3f7-492b-0410-1fe7-ee66e4a8a506@intel.com>
Date: Mon, 7 Feb 2022 10:39:41 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20220207182329.2078272-1-jacob.e.keller@intel.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20220207182329.2078272-1-jacob.e.keller@intel.com>
X-ClientProxiedBy: MWHPR2001CA0011.namprd20.prod.outlook.com
 (2603:10b6:301:15::21) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 43dc8fc9-7ed7-49a2-f779-08d9ea693556
X-MS-TrafficTypeDiagnostic: CY4PR1101MB2328:EE_
X-Microsoft-Antispam-PRVS: <CY4PR1101MB2328A37387ACD0528CE24A32972C9@CY4PR1101MB2328.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QkO6tZMiWUsKuuWgyQCPH1onB9G0KN5oqXmFjBS0It+DeXYdJRGtIZ3W2WxBE1X8gHvgz2MKA68rqjXuucp9G52FO/c0/5kNUVbPhfMt+O9SAiuphBVHGhIvXuzKL3nDNGvB6z6eNC+/YCY+u0llDOdb8e/H+1mYaPArlNomgxE0XpNwtwS9qbejYeT0aMSAUtvL4NLClBGyrFWBR7Jt0piavgmziL4xYZeRmT+94rhldQWSmUHMD7KuEGbwLF1KgmIFHDjFHCe7ibkUzTefN1kXux+hya9tQug0Bmvjxh336tjU4wKMJhmZOQ+ldcUoLfkzLgiZH1QSWLaZwBpPHnEN+Ek1GCCs6ij8Q2e71N2tvQ+c3Gc8B3zP7BOar6uM+9jCVy1Gge4AO8cNN4YkRdBlb5+Al16PKt1TaN58jUu9XLdkYZ91zMyYtXEVWET9qnPmKfL0jRRGhrsZ9KU2tTjHNpZupcTk8oBPrNUQ6LZOa/N1PFApDnKk6wd4H6ePr+zu5KjBMhhayibnuaOC4IsF6XGW2EpfOt4OAbzZrD6Covazf+hlJhm73Xss2C5Dkg6OqeMP3ZMZ2O+bpGeeXU7CFJuzM/nbyAaIiSuMfKPJ3j8HETBu9r2DJXBNgFr/JKsypBmOYqWaHRs7aF4FgZ0LoYXko0bFcYA+vzjr0OM/+SzKIwZ159wmUNB68ZqtPCZfUujbmWuAMjUdCtBvu0XfN0ZV7IEjvAhrS33mPx4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6506007)(31696002)(508600001)(53546011)(38100700002)(83380400001)(6486002)(86362001)(6512007)(5660300002)(66946007)(316002)(31686004)(66556008)(66476007)(8676002)(8936002)(110136005)(36756003)(2906002)(26005)(186003)(44832011)(82960400001)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZWFjMDhzbWIxS2JRWnF2OEtBUFRBQitMcnVtU2dpOTlKMnhmZ2g3QnNTRXJw?=
 =?utf-8?B?dEQwdzZUazBEa2ZVNjlPVjJwdE5Pcm9DUVlKdXRTVk4rWkJjTnZuVjl2YUFn?=
 =?utf-8?B?NHlHYmVsM1A3eG9ONTljbGljQVdMRGg3d0ZHRVFBazB2VDJmSWlTeDZ2QlB6?=
 =?utf-8?B?NjMxY0o0dnZlZnRWeDRiY2tXZ2hiVHg4NCtyVHo4MGsvNUptV0dSQjFNSURs?=
 =?utf-8?B?RGZVb3o3ZXozYWYrMTVlU21ycFEycm9WanhtVkxBQVZWK3FUTUhLWWxsVDE0?=
 =?utf-8?B?TkZ6UHQ4VTZKUkR6ZFVVdFQ1QkMvYzJkQ0RMdCt5TTdZamc3MnhLc3JDMkI2?=
 =?utf-8?B?WExGTjV5OW5RSEV6dTFFazR2MEQ3L1IxcXpDQzRJTFhwMEhkWWdMeEU5YWow?=
 =?utf-8?B?MEZzaDJlS0luN3E5UnN4OGJrYTYvRFJIaXZPeUVvZ2ZMa05RbmJERUs0N0NP?=
 =?utf-8?B?MjJYOFl3aUpjWXQxRFBiSERkWHhsTVpNcjJuSklzaVdrbXEyOGRGUlQ4SG9y?=
 =?utf-8?B?UjRBdVdESWNzMnJxcFhISG4zNjBZZ2tiTnBGZXZNTloxejlrZUw2QndMOVlW?=
 =?utf-8?B?R0FWZnRuM3dXZ0p2SW1XN0N0MnVYMHl6cGswSXBiZ2RzN1F6UTU4T28xUXk2?=
 =?utf-8?B?dWRzS3IyK2FFd2NabEFRN2dGdmNONE1OU2xCcFNoNGZtK05kcCtnc3FUZWph?=
 =?utf-8?B?enNaT3FLWG5mM0FaMDh0cmNpM2lkNkI1eFBPUDhXWU5aRVBIUkMyVWwveU9S?=
 =?utf-8?B?aGcxOWF1UTFpSTVQVjNpOFJxZ3BBdTcyb0paY2V0Wk9UbXhDMmlXa2J6NENW?=
 =?utf-8?B?aUJBODNJd0tvemNsWjF5OHhsTHBRVEJPTlR4NVk1V0gveHNIZkEyZVhQZkxz?=
 =?utf-8?B?clU4QWJoNHBCWENDeXVoOUxiYTFZWG05dXZkWnNLdU5hc3FGTXBVU0FCMVR2?=
 =?utf-8?B?SEpwVUVWVkpUMHMzOEptRWpaOXk4YVk2VTZDb2YzUmNVcnV0T29ZK1VwaEFL?=
 =?utf-8?B?T0JYWEVaaFZFQzNBZ3Q0Z2NrYUVoWHg1b1U0cEovWitYVU1scXhCN25qMzI0?=
 =?utf-8?B?K2RLYUpWSkxYWHZweTBLM2IxSlhCTFpXQ0gxamJyb2N0WGdQSVNlWk0vTERS?=
 =?utf-8?B?dHh2ZHcyV1dPSTdRa2RRcWZFTzE5NXUxcCtkK0didmFQbjZkQzY0WURqMkd5?=
 =?utf-8?B?RFlFaXczQi9TMTIvYmd4bmg5RGh1citiVm1xd3J1MzBHK2NKNStqc0gvKzFk?=
 =?utf-8?B?Tmk0dklWSmtYQjRQdk00RWJSSjVjMDNGRFlkVmtTcm9xWWozZlJRMXBmTmNt?=
 =?utf-8?B?MHV5bzdnaXo1Y2ljNjQxeUMrUjI1SG54bHJnQXA3T0ZsdVNpOEV6WC85RzRI?=
 =?utf-8?B?Y2RETDBuRTJxdGREQVJnb3ZYaUQ3Q2VvNGdhem1JZEdlLytBOE9IWXFORWU3?=
 =?utf-8?B?OTVUbHcwWHZpU1lrZXVOc09ZTVZCb283RThqSGsyNG83RnVQUHZYMzV4VzZ5?=
 =?utf-8?B?NVJSN3Q5dGR3RlRPaTY0anJaR3ptR0U2OWxDNUdXRjh6Q3l0bnE5Sm5Wcy9Y?=
 =?utf-8?B?R0ZXdE5DdzMrTzZmeThndmtlTFlkUGljOE4zdnMvNU9tRDNMVlNuZmpPY0M1?=
 =?utf-8?B?SUIzbyt2TGRWTklwTFZxaE5VNWZDYXVRRGpMMnNXY3FidlhLd2l5SWt1YWo1?=
 =?utf-8?B?QXFxdC95eGJBQnVFL1NpTkRILzZnQkJVMG1RZU1mQXUxZCtrNHdVc29wckUy?=
 =?utf-8?B?b3Y2N2VpWTlzNkN4ajk1ZzRYOVNlK1dHUUc5cEorc3VFSzY4TmtpSGljVWRy?=
 =?utf-8?B?R0VSeWR2MUtmNVhXZUw3OVFqak94d2FySEJORzdKZ0NFdXI0TkhnY3UwMXps?=
 =?utf-8?B?c2IvM2FtOWN2clhINi8wV256bEdjcHlTZHdQUm9DTDVtSlVMalFhT0tmNmdS?=
 =?utf-8?B?dm9WY0hrUDFsWklrQzlRa09md2dOZ1RHVG1WcEZKMHl0M2NuNlQ3SklWK1Yv?=
 =?utf-8?B?bFZJU1hSRXowSW9HanBETGZpaFVacFlEKzRsMkpCN3pBV20wS2lmUVQyRGRG?=
 =?utf-8?B?amFzcWkzWmg1eXoxSmZ2cmUyTi90VlpWWnlLQU80aTdKSDBXckt2RGpxb2I2?=
 =?utf-8?B?dTV4eVIvYTNDcTlhSit2b2pzWk9GYk5WVGVQY2FVdmJKYUtUcTJyd2FDa29k?=
 =?utf-8?B?MjNhc0Y4RjhMSE1vNE1oK0NQd3BRaVZoRXRqbTUwNlNPRVVVb1VaTnlldUQw?=
 =?utf-8?B?Rk4xQnBVZW9UUUZaVVhFVGd4YVB3PT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 43dc8fc9-7ed7-49a2-f779-08d9ea693556
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2022 18:39:43.8243 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3q/HqSnAZPGBhgybJp2ocXo0M2lCmkeyPtgfB01pVjQ71SW9M9bhZ8Poe7DEDsnjacDxiGMLrpESPJfLtf/8nV71DbewT5wR6NlkZlCMCNE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2328
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] ice: fix concurrent reset and removal
 of VFs
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

On 2/7/2022 10:23 AM, Jacob Keller wrote:
> Commit c503e63200c6 ("ice: Stop processing VF messages during teardown")
> introduced a driver state flag, ICE_VF_DEINIT_IN_PROGRESS, which is
> intended to prevent some issues with concurrently handling messages from
> VFs while tearing down the VFs.
> 
> This change was motivated by crashes caused while tearing down and
> bringing up VFs in rapid succession.
> 
> It turns out that the fix actually introduces issues with the VF driver
> caused because the PF no longer responds to any messages sent by the VF
> during its .remove routine. This results in the VF potentially removing
> its DMA memory before the PF has shut down the device queues.
> 
> Additionally, the fix doesn't actually resolve concurrency issues within
> the ice driver. It is possible for a VF to initiate a reset just prior
> to the ice driver removing VFs. This can result in the remove task
> concurrently operating while the VF is being reset. This results in
> similar memory corruption and panics purportedly fixed by that commit.
> 
> Fix this concurrency at its root by protecting both the reset and
> removal flows using the existing VF cfg_lock. This ensures that we
> cannot remove the VF while any outstanding critical tasks such as a
> virtchnl message or a reset are occurring.
> 
> This locking change also fixes the root cause originally fixed by commit
> c503e63200c6 ("ice: Stop processing VF messages during teardown"), so we
> can simply revert it.
> 
> Note that I kept these two changes together because simply reverting the
> original commit alone would leave the driver vulnerable to worse race
> conditions.
> 
> Fixes: c503e63200c6 ("ice: Stop processing VF messages during teardown")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Tree target (net or net-next) wasn't specified in title, since this is a 
fix maybe it should be targeted to net?


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
