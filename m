Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B8715432396
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Oct 2021 18:15:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6BD39404C5;
	Mon, 18 Oct 2021 16:15:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Efe0PEow5Z7O; Mon, 18 Oct 2021 16:15:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E58F40438;
	Mon, 18 Oct 2021 16:15:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1336D1BF293
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 16:15:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ED14F81CEF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 16:15:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id urHCZS50N3MI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Oct 2021 16:15:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 33E3080E81
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 16:15:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="251742638"
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="251742638"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 09:11:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="482801306"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 18 Oct 2021 09:11:09 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 18 Oct 2021 09:11:09 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 18 Oct 2021 09:11:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 18 Oct 2021 09:11:08 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 18 Oct 2021 09:11:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VmcHVNSfflEe8UN7uQuVxgc4LH8BR9c3QnXurus1B7r6A8jQcV6T6dVihkhalYH/cwmalYmUDtufC6KnMjh/56M6Y4VLixHTnaaJyJpyufC4VLlqhiZTqgojWljt09ypGXlpSPmcOZtIxT4L6xdJQntSUV6NPKDNbFXiH9LFugp+9pnjOCCw5XYK28kNi6lryTgBNzjxUzZx5teHnAfTgB3O5LNW9wHZ6wwFv48bCOAFEzkryUFOhGZade3uiR8VVUxVKlTkgF6GOLUnO40FwqM2sfQqbcv8Ubx0NO7fCwt8513Apb/qv2clw5dbmw3IHtuTkr/QedTihVh/AUI/+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JROWFTcOU3IhA3xNm45GSKqFS86LW96OYLEzZCcK2/g=;
 b=Qm83X0saelN1CmfGuuLzB0mz2AuvixwSK0Fzk4D414bCIgeFSNaewcIR5W1kkSXb22nM7hpwuSJC1b/9qfv2MeAxw28u4kfbNxeOjjSRXsZO/h0Wod3u4f/whgQ8QyBOC8aJzDMw8dYiEJwLwVadQJuLBm+xzXKL8mtAXpFkTMcadpaxfdE6STkr0c/Fnh44Y9RH+BEz6oU9caCineFbE3rs1COEGx3BjPFVWwLAVriQWxQaKbudiUNvumhKJqkoXcF9rW0g1Iu0ifN857ck0VEBI2XzU8WbmH269F6meDhz57w9svvsjeOhcrwj5A3YrDjpmFbo2X3UzdeezKkr/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JROWFTcOU3IhA3xNm45GSKqFS86LW96OYLEzZCcK2/g=;
 b=smdYC+lkWt4UiAS9Rvkt8fpegAestKCMLmVk3A1E0MC6YiLrXC+RCw/T5Xihb4zIW7wY43Hg3fgjJqEQlzRuGC9XnzMHIZHd6mzCObyMlYw2ZVAeUgXUGFq3C20xcqRvxV+g4lS3mCaL51v1PQVFeF6Lz6v6GyGZqBQe5HYeNgw=
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by MWHPR11MB1422.namprd11.prod.outlook.com (2603:10b6:300:25::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16; Mon, 18 Oct
 2021 16:11:00 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::3166:ce06:b90:f304]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::3166:ce06:b90:f304%3]) with mapi id 15.20.4608.018; Mon, 18 Oct 2021
 16:11:00 +0000
Message-ID: <fdd05a99-7cae-c6c2-f44a-d48202fb0543@intel.com>
Date: Mon, 18 Oct 2021 09:10:57 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
From: jesse.brandeburg@intel.com
To: luo penghao <cgel.zte@gmail.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, David S.Miller <davem@davemloft.net>, "Jakub
 Kicinski" <kuba@kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>, luo penghao
 <luo.penghao@zte.com.cn>, Zeal Robot <zealci@zte.com.cn>
References: <20211018085305.853996-1-luo.penghao@zte.com.cn>
In-Reply-To: <20211018085305.853996-1-luo.penghao@zte.com.cn>
X-ClientProxiedBy: MWHPR02CA0001.namprd02.prod.outlook.com
 (2603:10b6:300:4b::11) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
Received: from [192.168.1.214] (50.39.107.76) by
 MWHPR02CA0001.namprd02.prod.outlook.com (2603:10b6:300:4b::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4608.15 via Frontend Transport; Mon, 18 Oct 2021 16:11:00 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 688dae37-0024-43fd-d473-08d99251e05c
X-MS-TrafficTypeDiagnostic: MWHPR11MB1422:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB142201D59EC2F44581FAEEA197BC9@MWHPR11MB1422.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pfTg8ATu+3alMzKoHthdUTIFEzMR3v4kVtZMfegxNmpv9d+5AJiHrunU5i7w85ilbNywb80scQV8OZBUhWolBAw5mZ7fHx8fFtvG6IsIIDF+0DgOxPoC+1x9O9tCQHOG4QODj5LjOxWuWD5lAqrMH5YsUuBMAGVO90XQ+KM+TPVZ6hJQu74HcU+X3LBetodKaWcxEJ0f1o79RYku2ZYQH1ea5yCf7/gCtmFGZrjhofnnaDIWo0j27DoZxzdlcgTPq8kMMuaYaiNmxUvMDaEz8EgA0kslA8ynxUwGW3ajIxa+g7y1VTPNeHHxRoDd5VvEH89pjUZMEwcjMWUanS2kqi9qiUNORPO7cbl3ZIS5QJWLAA3ALBD4s6YO9m9C+WhZwqy/fLQB9dzHEYJ0Dh+6P1e/3toUUmttcCVAcliWgx+n8OLHnPU4nK+3bMaeUlvaapGGiAnsJgo/3nh4A6dxFKU4av+8gctthj1fRMslzbY1QEUYJXizoXlUbeG3Hl20p5hnFLWWvEjwy6ba1BuvTQjaKAM3/nb71TFAJZcCRMZ2MIAzDeIYTkEqQP98w4aOrS5GSGK9QIelPFmGUzhBcUlaZmuzzBvC8dlevmj6OQEjpO3R33P6DT5epyDCjSVv1liLoPsvJXrVZxlYV2xEuS8XNJM+cs9Az103SQxdjBsJ/+QCid/RwgnjEOcOHfUV2mENcSNziDTNjsYE9OeYpQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(6486002)(110136005)(31696002)(956004)(2616005)(5660300002)(9686003)(16576012)(316002)(31686004)(38100700002)(6666004)(2906002)(26005)(66556008)(82960400001)(66476007)(66946007)(53546011)(8676002)(83380400001)(8936002)(186003)(86362001)(36756003)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RmVZVzlRZ0dqcE5ETmdOdUFiNlpVUjNxTHVsY0lVbUpnc1BZVFJMaWlzcmJM?=
 =?utf-8?B?YVEwNjdsOVkwdWxpMm1zNGV0bVQ4Q2FqR2VZbmVuQitxUGt0UEJ6dmhUbmhD?=
 =?utf-8?B?TXVXMGZuMERlYUQvMHdmeFN0MlZodDNhMVhzZXpZaWx1dVUrcmVnMlpYYXVG?=
 =?utf-8?B?MDduTlMybE9ucVA1ZGxrbVltbWMvQnljWVcyb3VpNkZ2TmpHZncybjJhbXdr?=
 =?utf-8?B?WmtnR2hQTXRTOTEwREdrMFJsei9jVDlVWmxvZGwzdjNHYnlxdVdIMWxqTUh4?=
 =?utf-8?B?a2hCSDB5dHNhOWpnUGRDdEtoQlc2T3FCM2FPd2VUNUdMMDJHWjZBK0RlRytO?=
 =?utf-8?B?WlVnTmNEelVZbWxEcy9LajNwUGhQemliNXY1MkZDNHczS3VpVmpuQzNkOXVR?=
 =?utf-8?B?MmthOFFLNUlaajZVZDRZMmttNW5DRFRKazIwZVFwNDNjNHVFaDZNYk5nTk5J?=
 =?utf-8?B?bFY0N1dySmFSRHVyUzg5S09aQ25RODZ6aW1ZTHdMMEhIU3hoTWNKL1ltOXVG?=
 =?utf-8?B?eUxHWXlKM1dTcllxd3BocFZTQVhYK1NPa1Avb1haZkxpdldheDcrV1V3Zm5Z?=
 =?utf-8?B?LzRRb2RDeTVkc3RTUlR3SkliTm5sUktJM0pWN2grU3BuaVNEN0xkcHpPYnRo?=
 =?utf-8?B?cHpCS25lL1Y4aTBzT1AxbjNsVEQyMEY0SmZKQVF2cnBlT3RraWdZVFB3aTlD?=
 =?utf-8?B?amJib1V0eGxmYmtrZUY0b0k1RjQwaWN3M2pJUnkxYXFpQll0ams5RE85T1NC?=
 =?utf-8?B?V2o3eFNIRXdZUDJQVUN0aVNNYlc1SkV4OWtHeXgxYVlaV0NTQlBqaUFoTm5a?=
 =?utf-8?B?d0w1YlQ5bmFJb3RyU2V4RUdxUTN3MFdRbWlVM1V3cmwzUUlSYXRWeGhXWUlL?=
 =?utf-8?B?OVN6ejBhWHNCd3FjaENyNkc2MG42MjJmbTNKS0l5Q2VwSG50TXFmUFpFaVBv?=
 =?utf-8?B?Wk92NmgxakZOc1prdDh2KzF3cmhXdUFHZXNrQml6MXlROFR2Y1VyOW0yS3NL?=
 =?utf-8?B?dVRHaG5HQWVLUVJidjNoamVYM3BsY0ZydXUzYTNRSm0xMFdSOU9uWjBvMjRQ?=
 =?utf-8?B?dHdXTDhjTFFXMzhmNGpKbG1VQml1Z09XNmI1dkpUSzJNOG91SDNsdU1Ca2Rm?=
 =?utf-8?B?b2FLR2h0UmtFWW00RlZ4cGN3OWluTXZmSGFiS2lsVzlNQzIveElZYXQ5NnZq?=
 =?utf-8?B?ZXdLYWhYZGp5TkRVZXRCRlBTK3BoOEkxOENZSEtrNDJlRHQvWFkzajhZM0sx?=
 =?utf-8?B?ampmekZyOWExNFZONDJrTmVHZnZjSllua3p0bGh4c0pyb3hVanVYSXI1bSt4?=
 =?utf-8?B?YzNyTlQ3V3RUNGZuUk9wRS9RT3c2OEh0Zkl1Z2JyMjVRTnNKckMrVjc1Rmc3?=
 =?utf-8?B?c3doQU1kZ2k4MUpXeHJlK3FBdWRUTnlGOG4wVGtqZGZwK1NKbEhwMGc4SGpo?=
 =?utf-8?B?TjdkbWN2dGl0NUFYWjR5dFhHQjZrTW8vdWp4QkdjSUYxTlNJT1YrVkVCRWNJ?=
 =?utf-8?B?VnF0UWd6SGR1TzhyZUhFMTBpZExOVmdyWGFXbU9XVjZsZDJ0TmphOGZZSmw4?=
 =?utf-8?B?RDl4VUh2OVl6Wk1kekk5bHZwWTQ2dkkxbWl2RkFTT1lKUm82LzlWN3VxNEh6?=
 =?utf-8?B?YzZJeGJpNjdUNlQvaHRLUmZnVUpVM3lhM2Q5dVRORy9aVWZOeUR0Zm8wMkVu?=
 =?utf-8?B?Z1hKYmNkVGdiRmRyT1ZyRUxzTUt5Q1JDeGt1NEdjdUdwbktWK1VzRFM4OUVw?=
 =?utf-8?Q?cQSByUkDn2NdZ8CLQyQSVucvW0X00bvQoSWofIW?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 688dae37-0024-43fd-d473-08d99251e05c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2021 16:11:00.7476 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1FcfUD5wzqzmF6sZlN+37ysg94v3w6sxrIu7gnOMuak7oMacBvVj85gsX+IB15mIogjipgxCVb3WL/DG/scv/m0awT0ZkWeoSn1w2Lcleo0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1422
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH linux-next] e1000: Remove redundant
 statement
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

On 10/18/21 1:53 AM, luo penghao <cgel.zte@gmail.com> wrote:
> This statement is redundant in the context, because there will be
> an identical statement next. otherwise, the variable initialization
> is actually unnecessary.
> 
> The clang_analyzer complains as follows:
> 
> drivers/net/ethernet/intel/e1000/e1000_ethtool.c:1218:2 warning:
> 
> Value stored to 'ctrl_reg' is never read.
> 
> Reported-by: Zeal Robot <zealci@zte.com.cn>
> Signed-off-by: luo penghao <luo.penghao@zte.com.cn>
> ---
>   drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> index 0a57172..8951f2a 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_ethtool.c
> @@ -1215,8 +1215,6 @@ static int e1000_integrated_phy_loopback(struct e1000_adapter *adapter)
>   		e1000_write_phy_reg(hw, PHY_CTRL, 0x8140);
>   	}
>   
> -	ctrl_reg = er32(CTRL);

Thanks for your patch, but this change is not safe. you're removing a read that could do two things. The first is that the read "flushes" the write just above to PCI (it's a PCI barrier), and the second is that the read can have some side effects.

If this change must be done, the code should be to remove the assignment to ctrl_reg, but leave the read, so the line would just look like:
        er32(CTRL);

This will get rid of the warning and not change the flow from the hardware perspective.

> -
>   	/* force 1000, set loopback */
>   	e1000_write_phy_reg(hw, PHY_CTRL, 0x4140);
>   
> 
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
