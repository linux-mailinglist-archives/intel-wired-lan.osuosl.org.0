Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB187396AD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jun 2023 07:10:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C317383AB8;
	Thu, 22 Jun 2023 05:09:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C317383AB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687410599;
	bh=er/lsQpJJZQ0p4zHBm3th4ouBSNfoD9XiaVSGvWGlcc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iRdSEwlluODHjOuLQDnxyY6u0tC3yVDD+G6ygzdg8l3wGs1Da02keZI754fQtCcLv
	 9fdAdpP6hVqz6AGJNFW7C4BIHnCAaERkwPe6cey1/wlR9nlDtwWssynAbba/c31jHQ
	 cvHlPzjTXkjTVxUTLNcNJk0pb3l45iwgAxoumwR/OtZjym5Kp5PB6Olw1J9kwYVBmk
	 848z1M3PAD0tUKJEt9tsn+bA3Ajqf7EoN9ceJ5EKobP5bhr3WzRhd9JZtWslC1z3y6
	 1enwu38B2m+J2880qH+aYX6xucb1QVcQy8qoMx6jlSKX5eo7Q4eBZTHnsS7O8Nbczy
	 Fp9QQxWUCko5A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F9jjE6g2Imw7; Thu, 22 Jun 2023 05:09:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 030F883AB1;
	Thu, 22 Jun 2023 05:09:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 030F883AB1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 460351BF288
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 05:09:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1CEDA40112
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 05:09:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1CEDA40112
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GNp_wopqLXvr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jun 2023 05:09:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3DA7F400EF
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3DA7F400EF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 05:09:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="424059411"
X-IronPort-AV: E=Sophos;i="6.00,262,1681196400"; d="scan'208";a="424059411"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 22:09:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="717919197"
X-IronPort-AV: E=Sophos;i="6.00,262,1681196400"; d="scan'208";a="717919197"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 21 Jun 2023 22:09:49 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 22:09:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 22:09:47 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 21 Jun 2023 22:09:47 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 21 Jun 2023 22:09:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dKbiwnGSiM2VVPJCGfLIoxM3wfb0yTErwpG9yir47v5fuFiOBJY+M1uu/qSn9tjeMHmbAQ/ZjrFkhu6RzAln2qcpeW/EQ3/5DeRhgKF0k5rwIKcyIVAGga1G8pyzISZITMhcYi52EdKimb6GWVAopr7Qcv5ZlWgAT6NRzxzdlh6LTUvGgTg6beYllSNAyGBFrzOdgpxx0/Y2E9hC/sueIF5JAHFvN8+5VmcwuMbSG4gAo4XBQSK/Av44sMlByMVIMUHZlKdXCb2CsuD3V8ey9sbZjI1Wb0Ob1LKsnknyrYTYzsJ2kgRYp2UUeoAupQQev8wrw5KcFXC+cPHL80R0qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MQj3bZJDTrtqa3gJ7x8NcZwiV8dzCWbGyf2aXKXMMtQ=;
 b=VIvDcIOktlEJf12zHL1QMOc6lGBxkuz6eIkJRC8DC0jGG44BkYDU7SmFBEVwTLL7R26gclfMgZipUqdKq/oIJi2T4mo4dDGvGoo6//MGJz+iHGSIIncaniiWhJm/3oWE/YnnEshKqMKNsw0IYZGLt8IE01qTG8fhGm6brjj3jPU+PeLz+6uBOnsFXi68LibC7ZAAuRrdGC52oCQOr3yh2SHwX71I8BKjYHvo4jh4pp8bC0orRjIXOfPeEzHX5+Ac2wquOfJ4eyJhdj6Jr4JL2lcGMzx+zK0D2emXG/RHvU+xIRMmXh7cl8vn2M6usfivxTz56gXSlbpFHCCeWdKGNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by CO1PR11MB4994.namprd11.prod.outlook.com (2603:10b6:303:91::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Thu, 22 Jun
 2023 05:09:46 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::df65:1e83:71ec:e026]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::df65:1e83:71ec:e026%5]) with mapi id 15.20.6500.036; Thu, 22 Jun 2023
 05:09:45 +0000
Message-ID: <16bcc313-a4e1-ab50-4487-c99ccf5ecdf9@intel.com>
Date: Thu, 22 Jun 2023 08:09:34 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.12.0
To: Bjorn Helgaas <helgaas@kernel.org>, Kai-Heng Feng
 <kai.heng.feng@canonical.com>, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "Gomes, Vinicius" <vinicius.gomes@intel.com>, "Zulkifli, Muhammad Husaini"
 <muhammad.husaini.zulkifli@intel.com>
References: <20230621204349.GA116643@bhelgaas>
Content-Language: en-US
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <20230621204349.GA116643@bhelgaas>
X-ClientProxiedBy: FR2P281CA0074.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9a::16) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|CO1PR11MB4994:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f42a2e6-7c70-442f-5d00-08db72dee51c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gLUvNM7rxUG+wOLILYry4GSh3z58IxZZPAjKGS5WVXK+tHlrWu8IdmifGfOgaOu/RCFua7ZQ3uhpgR1cr/LjTziWTjHc3TF4CdcFZT1XPVq23BdWKsRt/Qn9AhejBs0VIad6Xq5Bel7SHbhvXyd6aD5NvCASni2L1RDAEJENRlp7x/3TazWLFP/e9sfcDTDwWydhr8fAw+9Pnc4tezcOJXtcq5+u7AD22p5Ml7L+ZfzstmY4xWx+ID/R4OV4qUQCEQINVZmLigso3gtiPk4HuxJAney8390zifbBNB6Gq2Ni2FaZxquW7mvsDdtAmGySbnSdTxmXsXL1XI6n4nOIAEp21IAAI516wZJKDKfLqe3lbSqDKfvyX5r1zjRkm2ip8P+VXXFGXGK68Dy07WYnb2PKJhle2LFBobVXw6LQIqCS5eJ8xyws5ZGgEy7jyHOtGFV0r8c4nT+/nLuS494Q8osjnx6QBD/oUbt6pb+e1P0Z3qqGKNHDz2TkX3wqa+WVR/pKFZBIsq/tyqQwbHngoZl0S4E+0yiDbJjdPM48xViatsGUQEJDNX6b6qRPSvJfAeXkvxuI2NA9Zz/9L//x5cI9MkAy+m+l2vp/9AIr0s/lw9e3pXbeTM3rNTTWSq5iLTI7hbzW5wPVaPfVaMvrfy4mou5SwWJpuZ4VUuuriaI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(346002)(136003)(376002)(39860400002)(396003)(451199021)(31696002)(86362001)(38100700002)(41300700001)(8676002)(8936002)(66946007)(66476007)(66556008)(2616005)(316002)(15650500001)(30864003)(83380400001)(7416002)(5660300002)(6506007)(53546011)(6486002)(478600001)(6666004)(107886003)(45080400002)(966005)(6512007)(6636002)(4326008)(186003)(26005)(54906003)(110136005)(82960400001)(2906002)(31686004)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WGRyN3dRaG1NeUhLbEhsMnlhVUtiYnA4T1RxZU1aSDJVNlNBSXJFQ1haVWhz?=
 =?utf-8?B?WXQyVmp5Njh3MW5WNzFnelE1UDlpemZTVDhTKzJOcWFuUEdhUEJxY0NiQWtr?=
 =?utf-8?B?cnQ0ZG5pcWZwYjJYYXZheW1pOG9LMG44UnlmZXRsbGpDWHdBVnB0ZWpUY2pH?=
 =?utf-8?B?VFYwM1l5OERWYithSU5NYkkrZmI2V3FnRnJFTEt4bjFFWjhBaXVZQUFuODhK?=
 =?utf-8?B?QlJMRzFzYnc1QmRNTjV2T2VKaUNCMnRsUnlMbU8zSjJINTdhU3FjblNueWJ3?=
 =?utf-8?B?SDZQMHZaWEFaaWtOK0c2VWFRVm9SSVJsYmxmandjMHlCMVVMWDBkN2RoWXNr?=
 =?utf-8?B?ZEZBbWpDOTNvRmR1Nkxna3RRYVZDQm82SDF5eHY0aHZsSGpJblVGRVE1QWxv?=
 =?utf-8?B?aXJUL01XL2hBL3pqdWlINkJ5TDFYSHpHWk51Ny91SGhpeXp2ZlN2SzM1dS93?=
 =?utf-8?B?cWUrRFI5NkZCaFFydTcrV3RiS1l1Rmo5NWdxTFBxclN2TjZvNEZOOUFJQVk4?=
 =?utf-8?B?MjlYVmM3dVZ5dng4RHNXRkE2bjhNZElUSWlBeHh1ZUUzN051cjV2YzAxSkZR?=
 =?utf-8?B?amx6bFIxdy9wT3FkWnpXYzRqTGt2YTNMNWtEa1ZLbWRwTlRicitpUW1nbElq?=
 =?utf-8?B?cWZ1NnJDdWdMbjdGZHdsTXZzUVFsSHRFRk5nYWRtUTY1TDFEWmpVWSsxSUNG?=
 =?utf-8?B?am50RXZMbGtHSmtheXRzc2hWK3pCbEpyc2pBRUtxdFlzQUdmblR4bnNmZVJ5?=
 =?utf-8?B?MXM0b1dOdm9NdzdHY0lCcWNGTXFkdWplTkF1T3NwT2xsZXdxcjZRTmZ1VjBD?=
 =?utf-8?B?dWhSMlhRbFBqZmNTcWY0cDEyUFBkYWNGa3FJdGNteE9wckpLWHZ1Vm9ZYitF?=
 =?utf-8?B?WEF5Y3E0dVFEcFJwUDVKOWY1cUlBN2xlU3dnNkhMMlVQVTRRaE1zU1lPc2dz?=
 =?utf-8?B?cVM4RVRYdHgwZXhYVmwyTXFKV0hqTTdKYm1EQkhEcWp5SmhOZlhrZkE4cDVW?=
 =?utf-8?B?T2YrZU1mWjFob1pGVXd1aTJTdzlOV0ppTEdqMEo5ZG12UXFGTEt1ZEZaUjFp?=
 =?utf-8?B?Y0dPaVZqV0psZlVrRnExK3ptNEhsNDR1aWZOcUs0N2RQN0g4MExucDdMNDBS?=
 =?utf-8?B?cjBOL3ovSDJDTHpyRW1LbWpxQjVwdUJrMHRmYmU2Z3l4emRhL0R0Ump3SlVT?=
 =?utf-8?B?YkEzQ2RPL3NJamlwajI2UGcrRkpOMk5RNWRzRURnWHZaS0dVeTJwU0lKWXdh?=
 =?utf-8?B?dXJpTjlIQVUva3dXYmVFOVBYdFQ1V21zdjlFOVg4ZllKZkRyNHQ5TjRJYUs0?=
 =?utf-8?B?eXBsa0NDOXpiWW9vK1B3RXhKaHlZdm50SDhlR1FJdVJsMHVqdFZNV2dsVjBX?=
 =?utf-8?B?c2dmS3oydGF2aHFtanJqWnFxbThIdTlNYmFPVWdCdWJhVGtIT0c3S01VSFYz?=
 =?utf-8?B?MnpjT2poK1JDYXZ5SDBreDFsdi9qblk0SmpWazZnTHRNV2RCVXBSQ3ZxSlcy?=
 =?utf-8?B?Vkw1SmlqVk9YVmVnMGwrRmlOeEFFYVo0SGVMVFRFb0pGNG4xK1RqOU1YOTcz?=
 =?utf-8?B?STRsTXFteGtJNVh6WHp0U1d6cXZnQzl6Zlg5aktzdS9acFA3RWovajZsUGh1?=
 =?utf-8?B?TWE3OGJkVFo0TVhNK1NFbVNQNm5oaEcrVU9KOVFMN1NRcnBWZjVTbEF1eCsz?=
 =?utf-8?B?RHMySTltWTJKR3ExcjJublJsVGN5MGJZVm0xWUYxaTlyWVNGNUdIQUJZSjlv?=
 =?utf-8?B?OCtua2JlcUhIWEJrNG9haWFPWVA4L2tmZGd1eVkydWQvMGp4SVlydE9BT0Rq?=
 =?utf-8?B?UW9QeHdNdjIwOWN1cFpMQWdmZGRQK3EzakVHdTFCMUtieGJ5RFQzczM0dWZ2?=
 =?utf-8?B?dHV5YlQ5ZHlET0d4U1ZyTGVnSC9ST1lHOTNrVUNXZGJ6c0duQVF0dGtsb25i?=
 =?utf-8?B?VGM5OUZ0K05DQTIwSldtVkZTQWovaXZ6WHJFN1lhbnl3TTlNL0NNWnVWY29V?=
 =?utf-8?B?LzdmUGFWL25iVGU5aWtQVXhmL2wyZTgzS0tFV25zZk1peVZwbEpxRUNrcmdm?=
 =?utf-8?B?OFpMTy9OLzUwQlJNakhSS01yRzFlenpDbHNGeENXeGhMenlZWjh0aGxjZ0F4?=
 =?utf-8?Q?IbX5P1J3Ch076MVSVpzpkSDrC?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f42a2e6-7c70-442f-5d00-08db72dee51c
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jun 2023 05:09:45.8069 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mi2FL60Q5yg6MlwLIrmsgVXtqbwjgJoqcXz8X7ylpxLyybmmek5w2GIbQnfYI5TK+fOhAqzeIijMHtuyP655eA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4994
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687410591; x=1718946591;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MQj3bZJDTrtqa3gJ7x8NcZwiV8dzCWbGyf2aXKXMMtQ=;
 b=QxjYBaa8dJNOaY/OnX1t7JSV7fiWhxMbW4uqLdrtQW+Thjq1/a+JXmKb
 p3s7PlQyYGreZWpaQe23wOjOVyzhnvujutY5oTAgdPs0qZjS3gPKSxtsS
 2yzedg4VdfflKCd4VDs9xUVIuY/oaz6bb0db2RyZyGPYySFxOH4OStqP4
 L+4rJkg2GpAn66xTIaZAqEG+JMjIUJuEZb4w8a9nw/ZgzC7P4rVQE2DHZ
 CEwWWNaSqUsjHbhKKrIK5LS2M13w7HgvP2lyzIuduMTXsSMZmkcDV+XkR
 hoOOsB8veUgnKW5p6dqOhqgreg4OHaBd8NOGJvhrFA6W7hfPAEJw9jVuE
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QxjYBaa8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igc: Ignore AER reset when device is
 suspended
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
Cc: Tony Luck <tony.luck@intel.com>, Kees Cook <keescook@chromium.org>,
 linux-pci@vger.kernel.org, "Mushayev, Nikolay" <nikolay.mushayev@intel.com>,
 linux-kernel@vger.kernel.org, jesse.brandeburg@intel.com, "Edri,
 Michael" <michael.edri@intel.com>,
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
 Eric Dumazet <edumazet@google.com>, anthony.l.nguyen@intel.com,
 linux-hardening@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, Paolo
 Abeni <pabeni@redhat.com>, "Avivi,
 Amir" <amir.avivi@intel.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/21/2023 23:43, Bjorn Helgaas wrote:
> On Tue, Jun 20, 2023 at 08:36:36PM +0800, Kai-Heng Feng wrote:
>> When a system that connects to a Thunderbolt dock equipped with I225,
>> I225 stops working after S3 resume:
>>
>> [  606.527643] pcieport 0000:00:1d.0: AER: Multiple Corrected error received: 0000:00:1d.0
>> [  606.527791] pcieport 0000:00:1d.0: PCIe Bus Error: severity=Corrected, type=Transaction Layer, (Receiver ID)
>> [  606.527795] pcieport 0000:00:1d.0:   device [8086:7ab0] error status/mask=00008000/00002000
>> [  606.527800] pcieport 0000:00:1d.0:    [15] HeaderOF
>> [  606.527806] pcieport 0000:00:1d.0: AER:   Error of this Agent is reported first
>> [  606.527853] pcieport 0000:07:04.0: PCIe Bus Error: severity=Corrected, type=Data Link Layer, (Receiver ID)
>> [  606.527856] pcieport 0000:07:04.0:   device [8086:0b26] error status/mask=00000080/00002000
>> [  606.527861] pcieport 0000:07:04.0:    [ 7] BadDLLP
>> [  606.527931] pcieport 0000:00:1d.0: AER: Multiple Uncorrected (Non-Fatal) error received: 0000:00:1d.0
>> [  606.528064] pcieport 0000:00:1d.0: PCIe Bus Error: severity=Uncorrected (Non-Fatal), type=Transaction Layer, (Requester ID)
>> [  606.528068] pcieport 0000:00:1d.0:   device [8086:7ab0] error status/mask=00100000/00004000
>> [  606.528072] pcieport 0000:00:1d.0:    [20] UnsupReq               (First)
>> [  606.528075] pcieport 0000:00:1d.0: AER:   TLP Header: 34000000 0a000052 00000000 00000000
>> [  606.528079] pcieport 0000:00:1d.0: AER:   Error of this Agent is reported first
>> [  606.528098] pcieport 0000:04:01.0: PCIe Bus Error: severity=Uncorrected (Non-Fatal), type=Transaction Layer, (Requester ID)
>> [  606.528101] pcieport 0000:04:01.0:   device [8086:1136] error status/mask=00300000/00000000
>> [  606.528105] pcieport 0000:04:01.0:    [20] UnsupReq               (First)
>> [  606.528107] pcieport 0000:04:01.0:    [21] ACSViol
>> [  606.528110] pcieport 0000:04:01.0: AER:   TLP Header: 34000000 04000052 00000000 00000000
>> [  606.528187] thunderbolt 0000:05:00.0: AER: can't recover (no error_detected callback)
>> [  606.558729] ------------[ cut here ]------------
>> [  606.558729] igc 0000:38:00.0: disabling already-disabled device
>> [  606.558738] WARNING: CPU: 0 PID: 209 at drivers/pci/pci.c:2248 pci_disable_device+0xf6/0x150
>> [  606.558743] Modules linked in: rfcomm ccm cmac algif_hash algif_skcipher af_alg usbhid bnep snd_hda_codec_hdmi snd_ctl_led snd_hda_codec_realtek joydev snd_hda_codec_generic ledtrig_audio binfmt_misc snd_sof_pci_intel_tgl snd_sof_intel_hda_common snd_soc_acpi_intel_match snd_soc_acpi snd_soc_hdac_hda snd_sof_pci snd_sof_xtensa_dsp x86_pkg_temp_thermal snd_sof_intel_hda_mlink intel_powerclamp snd_sof_intel_hda snd_sof snd_sof_utils snd_hda_ext_core snd_soc_core snd_compress snd_hda_intel coretemp snd_intel_dspcfg snd_hda_codec snd_hwdep kvm_intel snd_hda_core iwlmvm nls_iso8859_1 i915 snd_pcm kvm mac80211 crct10dif_pclmul crc32_pclmul i2c_algo_bit uvcvideo ghash_clmulni_intel snd_seq mei_pxp drm_buddy videobuf2_vmalloc sch_fq_codel sha512_ssse3 libarc4 aesni_intel mei_hdcp videobuf2_memops btusb uvc crypto_simd drm_display_helper snd_seq_device btrtl videobuf2_v4l2 cryptd snd_timer intel_rapl_msr btbcm drm_kms_helper videodev iwlwifi snd btintel rapl input_leds wmi_bmof hid_sens
 o
>   r_rotation btmtk hid_sensor_accel_3d
>> [  606.558778]  hid_sensor_gyro_3d hid_sensor_als syscopyarea videobuf2_common intel_cstate serio_raw soundcore bluetooth hid_sensor_trigger thunderbolt sysfillrect cfg80211 mc mei_me industrialio_triggered_buffer sysimgblt processor_thermal_device_pci hid_sensor_iio_common hid_multitouch ecdh_generic processor_thermal_device kfifo_buf cec 8250_dw mei ecc processor_thermal_rfim industrialio rc_core processor_thermal_mbox ucsi_acpi processor_thermal_rapl ttm typec_ucsi intel_rapl_common msr typec video int3403_thermal int340x_thermal_zone int3400_thermal intel_hid wmi acpi_pad acpi_thermal_rel sparse_keymap acpi_tad mac_hid parport_pc ppdev lp parport drm ramoops reed_solomon efi_pstore ip_tables x_tables autofs4 hid_sensor_custom hid_sensor_hub intel_ishtp_hid spi_pxa2xx_platform hid_generic dw_dmac dw_dmac_core rtsx_pci_sdmmc e1000e i2c_i801 igc nvme i2c_smbus intel_lpss_pci rtsx_pci intel_ish_ipc nvme_core intel_lpss xhci_pci i2c_hid_acpi intel_ishtp idma64 xhci_pci_renesas i2c_
 h
>   id hid pinctrl_alderlake
>> [  606.558809] CPU: 0 PID: 209 Comm: irq/124-aerdrv Not tainted 6.4.0-rc7+ #119
>> [  606.558811] Hardware name: HP HP ZBook Fury 16 G9 Mobile Workstation PC/89C6, BIOS U96 Ver. 01.07.01 04/06/2023
>> [  606.558812] RIP: 0010:pci_disable_device+0xf6/0x150
>> [  606.558814] Code: 4d 85 e4 75 07 4c 8b a3 d0 00 00 00 48 8d bb d0 00 00 00 e8 5c f5 1f 00 4c 89 e2 48 c7 c7 f8 e6 37 ae 48 89 c6 e8 9a 3e 86 ff <0f> 0b e9 3c ff ff ff 48 8d 55 e6 be 04 00 00 00 48 89 df e8 62 0b
>> [  606.558815] RSP: 0018:ffffa70040a4fca0 EFLAGS: 00010246
>> [  606.558816] RAX: 0000000000000000 RBX: ffff8ac8434b2000 RCX: 0000000000000000
>> [  606.558817] RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
>> [  606.558818] RBP: ffffa70040a4fcc0 R08: 0000000000000000 R09: 0000000000000000
>> [  606.558818] R10: 0000000000000000 R11: 0000000000000000 R12: ffff8ac843435dd0
>> [  606.558818] R13: ffff8ac84277c000 R14: 0000000000000001 R15: ffff8ac8434b2150
>> [  606.558819] FS:  0000000000000000(0000) GS:ffff8acbd6a00000(0000) knlGS:0000000000000000
>> [  606.558820] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>> [  606.558821] CR2: 00007f9740ba28e8 CR3: 00000001eb43a000 CR4: 0000000000f50ef0
>> [  606.558822] PKRU: 55555554
>> [  606.558822] Call Trace:
>> [  606.558823]  <TASK>
>> [  606.558825]  ? show_regs+0x76/0x90
>> [  606.558828]  ? pci_disable_device+0xf6/0x150
>> [  606.558830]  ? __warn+0x91/0x160
>> [  606.558832]  ? pci_disable_device+0xf6/0x150
>> [  606.558834]  ? report_bug+0x1bf/0x1d0
>> [  606.558838] nvme nvme0: 24/0/0 default/read/poll queues
>> [  606.558837]  ? handle_bug+0x46/0x90
>> [  606.558841]  ? exc_invalid_op+0x1d/0x90
>> [  606.558843]  ? asm_exc_invalid_op+0x1f/0x30
>> [  606.558846]  ? pci_disable_device+0xf6/0x150
>> [  606.558849]  igc_io_error_detected+0x40/0x70 [igc]
>> [  606.558857]  report_error_detected+0xdb/0x1d0
>> [  606.558860]  ? __pfx_report_normal_detected+0x10/0x10
>> [  606.558862]  report_normal_detected+0x1a/0x30
>> [  606.558864]  pci_walk_bus+0x78/0xb0
>> [  606.558866]  pcie_do_recovery+0xba/0x340
>> [  606.558868]  ? __pfx_aer_root_reset+0x10/0x10
>> [  606.558870]  aer_process_err_devices+0x168/0x220
>> [  606.558871]  aer_isr+0x1d3/0x1f0
>> [  606.558874]  ? __pfx_irq_thread_fn+0x10/0x10
>> [  606.558876]  irq_thread_fn+0x29/0x70
>> [  606.558877]  irq_thread+0xee/0x1c0
>> [  606.558878]  ? __pfx_irq_thread_dtor+0x10/0x10
>> [  606.558879]  ? __pfx_irq_thread+0x10/0x10
>> [  606.558880]  kthread+0xf8/0x130
>> [  606.558882]  ? __pfx_kthread+0x10/0x10
>> [  606.558884]  ret_from_fork+0x29/0x50
>> [  606.558887]  </TASK>
>> [  606.558887] ---[ end trace 0000000000000000 ]---
>> [  606.570223] i915 0000:00:02.0: [drm] GT0: HuC: authenticated!
>> [  606.570228] i915 0000:00:02.0: [drm] GT0: GUC: submission disabled
>> [  606.570231] i915 0000:00:02.0: [drm] GT0: GUC: SLPC disabled
>> [  606.663042] xhci_hcd 0000:39:00.0: AER: can't recover (no error_detected callback)
>> [  606.663111] pcieport 0000:00:1d.0: AER: device recovery failed
>> [  606.721642] iwlwifi 0000:00:14.3: WFPM_UMAC_PD_NOTIFICATION: 0x1f
>> [  606.721677] iwlwifi 0000:00:14.3: WFPM_LMAC2_PD_NOTIFICATION: 0x1f
>> [  606.721687] iwlwifi 0000:00:14.3: WFPM_AUTH_KEY_0: 0x90
>> [  606.721698] iwlwifi 0000:00:14.3: CNVI_SCU_SEQ_DATA_DW9: 0x0
>> [  606.842877] usb 1-8: reset high-speed USB device number 3 using xhci_hcd
>> [  607.048340] genirq: Flags mismatch irq 164. 00000000 (enp56s0) vs. 00000000 (enp56s0)
>> [  607.050313] ------------[ cut here ]------------
>> ...
>> [  609.064160] igc 0000:38:00.0 enp56s0: Register Dump
>> [  609.064167] igc 0000:38:00.0 enp56s0: Register Name   Value
>> [  609.064181] igc 0000:38:00.0 enp56s0: CTRL            081c0641
>> [  609.064188] igc 0000:38:00.0 enp56s0: STATUS          40280401
>> [  609.064195] igc 0000:38:00.0 enp56s0: CTRL_EXT        100000c0
>> [  609.064202] igc 0000:38:00.0 enp56s0: MDIC            18017949
>> [  609.064208] igc 0000:38:00.0 enp56s0: ICR             80000010
>> [  609.064214] igc 0000:38:00.0 enp56s0: RCTL            04408022
>> [  609.064232] igc 0000:38:00.0 enp56s0: RDLEN[0-3]      00001000 00001000 00001000 00001000
>> [  609.064251] igc 0000:38:00.0 enp56s0: RDH[0-3]        00000000 00000000 00000000 00000000
>> [  609.064270] igc 0000:38:00.0 enp56s0: RDT[0-3]        000000ff 000000ff 000000ff 000000ff
>> [  609.064289] igc 0000:38:00.0 enp56s0: RXDCTL[0-3]     00040808 00040808 00040808 00040808
>> [  609.064308] igc 0000:38:00.0 enp56s0: RDBAL[0-3]      ffc62000 fff6b000 fff6c000 fff6d000
>> [  609.064326] igc 0000:38:00.0 enp56s0: RDBAH[0-3]      00000000 00000000 00000000 00000000
>> [  609.064333] igc 0000:38:00.0 enp56s0: TCTL            a50400fa
>> [  609.064351] igc 0000:38:00.0 enp56s0: TDBAL[0-3]      fff6d000 ffcdf000 ffce0000 ffce1000
>> [  609.064369] igc 0000:38:00.0 enp56s0: TDBAH[0-3]      00000000 00000000 00000000 00000000
>> [  609.064387] igc 0000:38:00.0 enp56s0: TDLEN[0-3]      00001000 00001000 00001000 00001000
>> [  609.064405] igc 0000:38:00.0 enp56s0: TDH[0-3]        00000000 00000000 00000000 00000000
>> [  609.064423] igc 0000:38:00.0 enp56s0: TDT[0-3]        00000004 00000000 00000000 00000000
>> [  609.064441] igc 0000:38:00.0 enp56s0: TXDCTL[0-3]     00100108 00100108 00100108 00100108
>> [  609.064445] igc 0000:38:00.0 enp56s0: Reset adapter
> 
> I don't *really* care since this will go via a networking tree, not
> the PCI tree, but IMO there's a lot of irrelevant detail above:
> timestamps, probably the correctable errors, module list, register
> dump, most of the stacktrace, i915, iwlwifi, usb messages, etc.
> 
> I think what *would* be useful is an outline of the relevant PCI
> topology, e.g.,
> 
>    00:1d.0 Root Port
>    04:01.0 Switch Upstream Port? (in dock?)
>    05:00.0 Switch Downstream Port? (in dock?)
>    38:00.0 igc I225 NIC
> 
>> The issue is that the PTM requests are sending before driver resumes the
>> device. Since the issue can also be observed on Windows, it's quite
>> likely a firmware/hardwar limitation.
> 
> I thought c01163dbd1b8 ("PCI/PM: Always disable PTM for all devices
> during suspend") would turn off PTM.  Is that not working for this
> path, or are we re-enabling PTM incorrectly, or something else?

I think we hit on the HW bug here. On some i225/6 parts, PTM requests 
are sent before SW takes ownership of the device. This patch could help.

> 
> Checking pci_is_enable() in the .error_detected() callback looks like
> a pattern that may need to be replicated in many other drivers, which
> makes me think it may not be the best approach.
> 
>> So avoid resetting the device if it's not resumed. Once the device is
>> fully resumed, the device can work normally.
>>
>> Link: https://bugzilla.kernel.org/show_bug.cgi?id=216850
>> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
>> ---
>>   drivers/net/ethernet/intel/igc/igc_main.c | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
>> index fa764190f270..6a46f886ff43 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -6962,6 +6962,9 @@ static pci_ers_result_t igc_io_error_detected(struct pci_dev *pdev,
>>   	struct net_device *netdev = pci_get_drvdata(pdev);
>>   	struct igc_adapter *adapter = netdev_priv(netdev);
>>   
>> +	if (!pci_is_enabled(pdev))
>> +		return 0;
>> +
>>   	netif_device_detach(netdev);
>>   
>>   	if (state == pci_channel_io_perm_failure)
>> -- 
>> 2.34.1
>>
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
