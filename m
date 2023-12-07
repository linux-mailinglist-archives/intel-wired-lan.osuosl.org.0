Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A42C808549
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 11:16:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1BB2781453;
	Thu,  7 Dec 2023 10:16:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BB2781453
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701944191;
	bh=rVPqlsQcWYgygK0wdF12OjSp6ZKOEgn0eqOJ1KAsM54=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2DYnfCuNbLGdGXL4ErWvU+UZqPSbMELNgMLrOBhzRY8OWVg8sjGw+SeuSnmc+mwCJ
	 +jOsCEfgR57cNUKqMSDAdSfQmtAGaBmrDowmp+TgRM28ybvYcV8DtW6h+NUJyuZWWS
	 TZij9AVNvLQXdPEUKuUaEWEj4QIa8mTx08RB/jIgrgldfPhdw5bfromIZDw5oCugqX
	 3IXpueqa3wfhx5XOoMxBEbAq9EJCkeqCZ9/o6KKwk3ocjWNCMqjaJhvFMwqSWVSPIi
	 NoLl1KON0Tt/2CWnfvTMea4seEIpjefAINBKiY7avXSOGc8nMyyCWgFNCCcmgdvrnv
	 7gOJo+XADTfkg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KMxdntoflJzx; Thu,  7 Dec 2023 10:16:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F0C548142E;
	Thu,  7 Dec 2023 10:16:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0C548142E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3BA221BF30F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 10:16:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 11B608142E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 10:16:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 11B608142E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yOhbMwgFjtfl for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 10:16:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 89E988140B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 10:16:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 89E988140B
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="480397920"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="480397920"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 02:16:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="771675515"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="771675515"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Dec 2023 02:16:21 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Dec 2023 02:16:20 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Dec 2023 02:16:20 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Dec 2023 02:16:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AL3rh1xKa3s5MikYAsVq0Jpj6WSjPpchGHO7PIKMOeSfF4KT3GHiY4cnJvHfGkfU5sOCdcCDMToatH6IGeaFxlUtYUywKyfJCuFjG/2WPLQyNkRcTKGsIPD3c+r7Ri3jZxfWCWqRtS2zfnX0/VknBrswlSyenSpspNibTyNJEO6+AnXx3ZwmsOPxs0fQekOff/Pakm7fnTrJdF/r5jojMbCMTrqlZx0/D4ryQ13OhQ9R4FoEOhPr0Al/vQOXxkLjOTFuQEWk7aOI9UUSmYWyXUETfSUC3TMS1FUiwSeJdtbE/7J70bxPSZelzWZpMsLxCXfpws5y/V1dcqL1IZLARw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zdISJZprZtHwCXMPs3p+p6a7gS+YujP9XGb9YpZuotw=;
 b=PBp54m2SrJiYzBbxJIc5myhNJvb0v6nFoe+TPRP7pZyRqonOnDpa0X71W430yZErRl3EZTJvJsn1NqKgsznvsRiPjUHTL4XnotU9kR23w8dhSINyUHdFp48NgCJzjFudbYDE6ZkZ73ImPPSDOEpLu9UMz4AKGzYeKSjd8hWWjcQ21xIt/zkpCR/LRhv35IwaCaOQ6jzxlLgF7ylGEyAUfcQhr5BXLk9O8mma2AXwocwZ0NZK6Bg6Uhv4As79WmBfVXyRRGaBpDVLlSUtN6z0QpOmJAUwC0SWd0Vptz7rurLaEYCBydbYTIYnoTN28KGGi5H2a/huIIq6mK43rwA9wQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by DS7PR11MB7951.namprd11.prod.outlook.com (2603:10b6:8:eb::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.27; Thu, 7 Dec
 2023 10:16:18 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7%5]) with mapi id 15.20.7068.025; Thu, 7 Dec 2023
 10:16:17 +0000
Message-ID: <a44865f5-3a07-d60a-c333-59c012bfa2fb@intel.com>
Date: Thu, 7 Dec 2023 11:16:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Johannes Berg <johannes@sipsolutions.net>, Jakub Kicinski <kuba@kernel.org>
References: <20231206113934.8d7819857574.I2deb5804ef1739a2af307283d320ef7d82456494@changeid>
 <20231206084448.53b48c49@kernel.org>
 <e6f227ee701e1ee37e8f568b1310d240a2b8935a.camel@sipsolutions.net>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <e6f227ee701e1ee37e8f568b1310d240a2b8935a.camel@sipsolutions.net>
X-ClientProxiedBy: FR0P281CA0042.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:48::9) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|DS7PR11MB7951:EE_
X-MS-Office365-Filtering-Correlation-Id: 823fd9da-e7c9-45e9-a495-08dbf70d8cba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5Bmg8gbv6QO9CHnPEMJfPbleIDdjPJfq6UOebhhG9OfP/rSsJYJJu16HEV0kK2bPrT6kQUQEHAM71BZUy1lL3UYCOPQ80VrQJttQLIBMOfla+MWn3gbGPS4bRWB/N7fwyaTvwJLieZRzzKi7ulaqES50iR8QT8mZmHqEpSxaFQ7XRxyLnqDHWz0+cSwmWKZx4QgQ6aamFY/gsDTIW99JZeBrM2YIuqhDi2dlU/4Hh5GCtYIj2jG0lBsVdhxWLMs211/FLO1wOIkLMhwd68zfPDAVAvHD3ojpedoXzMU/b47DVpk85rK7w/HqFEBPiMwuP1ejHsshitZvFwapNQvxW2qmfUxwaYrKqpDPbKtM8qYGgpMxssVevx7rxEptPbWVE96Lx0DaJgeA5WWYllprl/BNeX0UtDYNuafWD6yagHXHp9nVdLPFrhr/UvV2WOZyzVVCHTVfw3LdEnyGXRiSX1LGbyuAxpMeYGoCQOq1zuZWA+S89DnkvJFfXCnaEKkyMxxJDO2vWX3aLAePPQKQW5brtfAMERlXEnnknmotlHBRk1zJverO6clpdTsvGoN1tS4wrPF/EUCZwXTDq2W4fQwnftlvWOs08Bx2kDScvlMJqqVOX0wEIJd7/nCBzTFvswUpRYhFtn9dZzw122u1Lg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(136003)(396003)(366004)(39860400002)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(2906002)(31686004)(5660300002)(41300700001)(6512007)(53546011)(38100700002)(6486002)(478600001)(8936002)(8676002)(36756003)(4326008)(82960400001)(83380400001)(2616005)(6506007)(6666004)(86362001)(316002)(110136005)(54906003)(66556008)(66476007)(31696002)(66946007)(26005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NVgzWkVNKzU3Y0hMZ3BWS21rd2pJOGlNWVZQNWhqQnBBSFArWGEvQXlWUFhY?=
 =?utf-8?B?YlZsbG1Dd3FpZkpQRngzaFRkeFlvemNZcVc2dTJuMHdQbk0vOVNSakVkeU03?=
 =?utf-8?B?UXEyOGpKb2xaZFVOV1NuVzZvVEZxamN3SmR1eWZMZnFZNGp6NmJvRXBxb0ps?=
 =?utf-8?B?L0hydE5ySndlQkVQY3JETU44aVRGSE1PTE10NEt0NXhlaGlzMUhlYVV3aTh1?=
 =?utf-8?B?WXV1QnUvd0tjR1NXTkZ2bFN4TmhJcXoxSUdGTGJudEVpWHU5RmI3WU40QUN6?=
 =?utf-8?B?MHV2UkxJdWlXQ0xkcmNOV01oRERQemhiVTkwc3dWUUU5ajN3bGp1RFB1Vk9t?=
 =?utf-8?B?TlF5QmdIcGtzZHpZMnlXUFJBRmRvdzVZUkg1ZWpEazJzZ3hsMHFER2hLQm1z?=
 =?utf-8?B?cHBadlJpU2dQNERJa09LNjBjSFpRTXNESDNhTFVkSTRCYVZZZ1ZJdzB2eHdh?=
 =?utf-8?B?UmVSWkxoaitVeEc2Y2FtejZ0d2tDam04ZHdBNlYzblBsUmM4R2YyQTVhQVRZ?=
 =?utf-8?B?eG9vNmMzZGZybUdBaHd1WkpHMlFFcnhBNnArYmJocGhnSEpBSnVHTjAzTlpj?=
 =?utf-8?B?MGtTcmF6NHJ0eWlib0tzVmFEWUNQTnFJUnRzeVZ2T0JiSHdQdVlEbDhIdkFH?=
 =?utf-8?B?RVN6MXluRDRTNllLbmQvUHp4SlBDOW9QOHJwZ28ySVJJYWZGYU1ETzkzNlVJ?=
 =?utf-8?B?ZGM4ZnpoQ2g0K3BIV1Q0SEYwUEdsVXYxenQ5cEc0TDlKWTcrYWNNczR4VTlZ?=
 =?utf-8?B?Rk9pQ3ZndWRjanlkbGV1MW9oTHlNWDNiQXUyN0QwcStLUHRpOUgvNFFDWWxo?=
 =?utf-8?B?bHlmemtUR2N2d0RkbmErTUNKZ0VWMUgycHZjbTlLQTJYMVJ6a0hwQnVQdFp6?=
 =?utf-8?B?TzZDOSs3NzVUYUp3UjQrTHBJRSt1bGk5YkIreVZzYlpqT3E2dFRIMVBZUFN4?=
 =?utf-8?B?RmFmTVQxcjB6ZExDV3lhTHMyRnU5VkZrK25LM3lXd1pvYnFpOWFmVXNFN2ty?=
 =?utf-8?B?dXI2WjJBajFXcG56V2YzVjUwdW9jUlVJMUtqQW43NlBDMmhjN3NoMS8ycUk4?=
 =?utf-8?B?ZERTWVhZVHZHS1hCL2ZjeVc1bnQ1M3h4a0liaHRkWExWVTZKOVVHTzBVc00r?=
 =?utf-8?B?TWlobmw2bkMrYWM4ZXdERDhnaHhjT3NMLy9KVjVCY1lUeDhFYlFQVk9LS3cz?=
 =?utf-8?B?d2VPelFPaEFsOXUzUHpVNWo1OEphU3BCWHRHRW45YnlocFRXY0tqYTNpQkdQ?=
 =?utf-8?B?Y3dKS0s1UmNZaDRyTy93ZTd3cERMMDZSUmdyVFBWMUlBN3FKQmR3bUhZcitY?=
 =?utf-8?B?Q0JHa25FSngrYitzd1BDNElSazJxbVRxb012OG5zaWZvaDk3c3J6NXBPTEZB?=
 =?utf-8?B?Sk9hTEFFZkErNzY4Z1BBWnFtVURTMW1ZVnRLZXUyZ2lFeHBSc1c2VmJXZUFj?=
 =?utf-8?B?SDhyLytsU25UeXFGQVNORVMxNHZKaEtmWWowWFd1dS9KUkUzNXc4bjM1bXkv?=
 =?utf-8?B?UE1NTlp0ZDkwT1FTdnIrTkoyWE1vZnNOTlgvSUhEeG5GamlVTnFadUFtUzlQ?=
 =?utf-8?B?Vk5qN3hJT1FiZm5ITHpSQ1VpKzFXWmlRcmoxM1Zocmd5eHN3bWxUclE2UEVo?=
 =?utf-8?B?OHNrdG5ZdVorcDRCOUo5VWRZVVNPaURnRm1CZ1QyUmFodWljR1ZtM2I4a0VF?=
 =?utf-8?B?YTcwM0Q0akNua3hsdllHamY0UW5ESXNDSmxEbGdtbExHK1dobE8xL0QyL2Y4?=
 =?utf-8?B?Uzkxa1hYMlJZUm43SnFhNURLSE9rTW1sWCsyK0ZLRWwwOEtJRUpGU0sya0s3?=
 =?utf-8?B?S1QvVnRWa2dRNkNWUW9rTEljUnJYbXE2ci9FWGdOMXdoWmNiOVdLclBJT05P?=
 =?utf-8?B?ajFKSFE3Uk41eTJlOTNFWnZva1NLZHU3eEZRa1dmRzVFZ2JEN3hjMGpTdnhx?=
 =?utf-8?B?SGFGRFpKekpkK0lxTmVVWWZPVWhzYlN5Z2crYTloZDhiWkRsdk1YNTh2cjhH?=
 =?utf-8?B?U3k1TlVXU0pkYVUwZGc4UjU4anIzcGxLZmtyeW5ncFFzeTQ2c0gweml3dUU2?=
 =?utf-8?B?cXl3SFlKRmptYWJjdFQzdWFGMEgrRmcwMnh1UmtLSFlmYUN1TGhMM1pjOUZQ?=
 =?utf-8?B?dm11bDcwUllrVHJpYms5TVBBRFY2dHFhQmllQjJBZFordnNPWGpzRXFEQUd5?=
 =?utf-8?B?WGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 823fd9da-e7c9-45e9-a495-08dbf70d8cba
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2023 10:16:17.2982 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NQPiW0udZOvSTd/Lxc6jJlP0YslZi0RuUsYNHEVwTYcAV5TXpvOzEy940mucZKdzWP5HGPhb3Gm3Vcrjt0QIe/JOpFTC614zY9rFbc/I2Dg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7951
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701944183; x=1733480183;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aM3Vm1n15ecrrggaYbRfW7j+OUZtXehISj6vHJ3Xx9I=;
 b=dmCUXzs3gNWnZtPdVqex2YKtzufmdiaNgqhmSdlyYVMmYAWYA7bGeM0G
 JUYW5dqMLyHJGMnJMKOfApys9PaaCo4M9j8vJ7xjJXUnS50+8M7To9s3s
 sYVu20OF5pfrVVYxv15lsfhG8gxIlQqbELMz/XLLNPd6Epi0VFJvc9lNc
 BmmHTcQpNIbe5HCd/nGM0hFYarydDgMHHynAw3IC3ByRzxsRxl28KewEJ
 P9cyM47ZNFqINY3QNG3rNhceBMyBhxsJBOekuW4BPGWB3ZDYMlUtankIg
 +gA6ut9YYQBrCtnSg8evEBLiY0waRK7o2Q6vTICosk9/VCIqU32WrSKq2
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dmCUXzs3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] net: ethtool: do runtime PM
 outside RTNL
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
Cc: netdev@vger.kernel.org, Marc MERLIN <marc@merlins.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/6/23 17:46, Johannes Berg wrote:
> On Wed, 2023-12-06 at 08:44 -0800, Jakub Kicinski wrote:
>> On Wed,  6 Dec 2023 11:39:32 +0100 Johannes Berg wrote:
>>> As reported by Marc MERLIN, at least one driver (igc) wants or
>>> needs to acquire the RTNL inside suspend/resume ops, which can
>>> be called from here in ethtool if runtime PM is enabled.
>>>
>>> Allow this by doing runtime PM transitions without the RTNL
>>> held. For the ioctl to have the same operations order, this
>>> required reworking the code to separately check validity and
>>> do the operation. For the netlink code, this now has to do
>>> the runtime_pm_put a bit later.
>>
>> I was really, really hoping that this would serve as a motivation
>> for Intel to sort out the igb/igc implementation. The flow AFAICT
>> is ndo_open() starts the NIC, the calls pm_sus, which shuts the NIC
>> back down immediately (!?) then it schedules a link check from a work
>> queue, which opens it again (!?). It's a source of never ending bugs.
>>
> 
> Well, I work there, but ... WiFi something else entirely. Marc just got
> lucky I spotted an issue in the logs ;-)
> 
> I'll let you guys take it from here ...
> 
> johannes
> 

I have let know our igc TL, architect, and anybody that could be
interested via cc: IWL.
And I'm happy that this could be done at relaxed pace thanks to Johannes
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
