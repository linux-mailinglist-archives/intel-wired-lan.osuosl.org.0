Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD6C724A3B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 19:30:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 915C782040;
	Tue,  6 Jun 2023 17:30:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 915C782040
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686072613;
	bh=nlTEmaRJvptyVUg0L/vvDMc83YN5LXwf9bwSn2vDHJ4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RjlS3JOo7Ndy+8YUrGJM4oKAccs12ixPjs7YwZBPtp54sN/aJzNQEHuW8GbOdDBht
	 6OHLJdcusfI+gJzYekpGNEeBoHqq/Pg8uaxxygTNH3JwHKTIBP0CJfle0wvzvdBAIW
	 PiLPBHc9vp1IqLI0XR7eIbPiJ68dQAxDjojycGe4+2IgL4DUaomhZHcJpKAuloxa34
	 6dLRZmC6HtPuS86ph29STBTkjImM98L3cLYOquy2a3klu9oPmkXqvbesZ6kQ8+Xjv1
	 t+OZl3rPZISdCxcbPvISd+MdtAs3iKg81EJHZmlQa/1OeW1bZxr2anJqSqzj7wrC3w
	 PuYNw72IEMD7g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IS4Idx24b1cz; Tue,  6 Jun 2023 17:30:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C31981D72;
	Tue,  6 Jun 2023 17:30:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C31981D72
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C437A1BF292
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 17:30:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9846E4018A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 17:30:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9846E4018A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Oe7QmFlfcxK for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jun 2023 17:30:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F20A40159
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7F20A40159
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 17:30:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="443118654"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="443118654"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 10:30:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="709158205"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="709158205"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 06 Jun 2023 10:30:04 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 10:30:04 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 10:30:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 10:30:04 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 10:30:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kazf4vlb6TNxQzV9m133AFMqMpUzlYxce3gmrC11RXG1Sz/b5Sr/0SfdljwN84WybrlTaPRG6R3N2MkUNu9HdEx1hhMhP0j59h5i/a6rEf7z/IDhr3Jq7qcBWcahLrMkbuw7RK6qWyGEWOb2HrzuT3xqsQGhAw8FUIYuY3OlEpDWxmjBBMcfQGiZYyD/xTsCmdmwAc3uHwCFppC7XTFLHwq8mozaa7firI0L2qzyaLhZX+iijftQ/w2wrF1H3HS7bpzsNAv7RGnH6r41dxU1mi4OFdsoDEwCRDGMb84Idsa3K4krEzRa19v0k7RxmADdpV6mwrgX62khUlcd1OR+iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6BvAKgQr1u6pTKKMuFiPTNlePQgNcb7KcekSITIHC4A=;
 b=avwG5BNJGVJ7by1mhtcRSMl96IqvtlbbDb6XtHlHK9emoLGT5BZpfTFCiVr/MWJXbLpRa+XOfUXbsy1eB6B7lD6ek5bnYvoYhNtNzlcYxqMLgKQcSieK5xaxqSGBxNC0ZcDXaozfbKtfyoxa1tY2mt1XDjDpaAgDwvF4WusP5y51vGaCxJWM2WgR6gfcDD6Vkz0ZelguwWbshQGPSEZOqoSjG60XoSRtThcIpLIHYbW3EaxSUleV6YuetM9W58aQ8oLK/4dn966use4TZclmjS+KGZ0XIu8ssUOq04lDGeRuSqCDV4yppLowQqr/RbTCnGDRrca5hiI9g71InPUWUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 PH7PR11MB6332.namprd11.prod.outlook.com (2603:10b6:510:1fc::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.32; Tue, 6 Jun 2023 17:30:01 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::9e4f:80cc:e0aa:6809]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::9e4f:80cc:e0aa:6809%2]) with mapi id 15.20.6477.016; Tue, 6 Jun 2023
 17:30:01 +0000
Date: Tue, 6 Jun 2023 19:29:55 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Kamil Maziarz <kamil.maziarz@intel.com>
Message-ID: <ZH9tE7bGwdrHnjrT@boxer>
References: <20230606103358.10632-1-kamil.maziarz@intel.com>
Content-Disposition: inline
In-Reply-To: <20230606103358.10632-1-kamil.maziarz@intel.com>
X-ClientProxiedBy: FR2P281CA0126.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9d::20) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|PH7PR11MB6332:EE_
X-MS-Office365-Filtering-Correlation-Id: e4096036-a3a4-4c61-2f58-08db66b3a822
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GxKuMC/2TSJ/QSOzqsePLXItJl148tKnyZhrkjaewUH+4DMC3DmQF92v8q40rfw7VkpjL5W05H9Ud1qbriNuGVePs8gF60b5d2USTqsp1pV8hi44zPvaiZU94989U234JmC2yfOQfG9oSf1o4ylCOFybZEBETNPkoBT2eraK2leVseXklFPSMmpJ/gNqvTDORW2SLFGflDhGyxNqS+/efzSwg0X4zgedOrL/EW77XBpAhJpgk1CCJbUql9oivs1zLyDbo1P1+6h//isqgCdmHyJX3uo3FoM9lzfkwH+/RX3bcffvA7lnxcF78RBLYEZpBwRg8Us0h0DEQJFOCFu9woZbbgU/aGYXnC5w7tQ61E81EJldPB1Vc2swe3sPKJ86HLLYQB/dNNsZoekjmW7pCLj2kEDvzXXgVIy5RSJ3tN46MfWGpiCvSEz9fAehzM1aYcp7M0TfMPEXux/9bOxRjTGX7rxWxj1gPlmNLSUWEOPu8xOfQWRqViJJ3mn1NR45yml5s02Pg1/HOZ2rfIeKheygMUu7yO+yGjCN3/DlmD8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(376002)(366004)(346002)(136003)(396003)(39860400002)(451199021)(6862004)(8676002)(8936002)(478600001)(966005)(41300700001)(6506007)(5660300002)(6666004)(316002)(6486002)(26005)(44832011)(4326008)(66476007)(66556008)(66946007)(6636002)(9686003)(6512007)(186003)(2906002)(38100700002)(82960400001)(86362001)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rIfDrSA1ykkIP0Y51SV0TX6d72bFN9eOaN4LFrwEZsCwHFh5YzVx6RujmjmU?=
 =?us-ascii?Q?g5RhG8lmM3siPjXWZYngGvYYUQC3E+Hh7jPHHU7DCGoz+Md5UYdOc3Mog4sL?=
 =?us-ascii?Q?GU3p12qvX6GOu5RVoh0whHjDOXqkYd7QgmoEUBfXY/HDn2KjUsBXbkKYle3j?=
 =?us-ascii?Q?R2RHtCTanDfLcZeiLwB2plvG7tQn0LbcZANIxkhq9ZprPNYEfxlmjxVd2atQ?=
 =?us-ascii?Q?Zfl4HsXZYNI3c+w8Ejp1+PvwWmF7vtnI/TMxlHxF7MD7c+kFVIw9cKwIpa1f?=
 =?us-ascii?Q?s5lKf3YKb26kZ/5y4nXzy46K/wL6Frs+/hzHakYmkJVbwUrzCTyqcjBUMOLm?=
 =?us-ascii?Q?zqrmRcVgdhW2iGgYxSRO7Cj96pYJelNb2bZI0U+IrsP8WMufZ8P3cXKfkqS6?=
 =?us-ascii?Q?Uyof4UpZFZ5mpGOPAOFflvnPa0MAWvTQh1vw+9hWuKfX0pvMieeBI5MjERbW?=
 =?us-ascii?Q?ceaAByhLHOhTWQg+OWQrS2jcuvRdteDJKg+EJVHTkmYqmdU3XInCwzWcBLTP?=
 =?us-ascii?Q?WBvPxnntQ1NoqBgaa5OXxyMbgZEdW4w5Uq3pt5+KZlisCMsOA+sFyryO2qLD?=
 =?us-ascii?Q?Zr46a8Imlxngk8M/MFo/G3ehgCui74mMLctyTkh2T+ph9FfPcMBYTsFoc6ul?=
 =?us-ascii?Q?yZil6YDybTFUlV6LTnd8Z2+kK1Y7+miDjR825CW+FS5rt8HrRhwQzVpD4hEb?=
 =?us-ascii?Q?IzLan5x/LAdcpSikwC7X9vhKt4kDN51VeWvcKP0ixl3dpeAg6OepuJXwcMX9?=
 =?us-ascii?Q?r2T6v1xgzgidluctzRqrLIBGQhoUZmSYAWjnPzk6UOoyfyNmCOxoB/kblpYB?=
 =?us-ascii?Q?Ib7kRuAwRxMflXC/vLM3UPkx2L+CSMaoRg4jc6JR/ErXKD4pBwRehdq8f6vt?=
 =?us-ascii?Q?nDYVOsvQp4x8HIR+K71YXVrHsSb3Au8SY4VwtLU3FOR2weSZWZSymGqFIp+Z?=
 =?us-ascii?Q?uFud/+VxHnAIWDMlwbsEdh+55a5ZfMeeBUk1a7fD/cqyv29aHdNTLjwvnBL5?=
 =?us-ascii?Q?so9K+f7ai9Y/XvxSM8cCz5h6AQgkdMhjqsh//m1t/PtDXnxSBW9CozT+rUTS?=
 =?us-ascii?Q?qbLz9drqkpubqVaEA0/EQnXo3QZ4eQElEa34fjh0kZ8bXfmjkOLGIq65lLpJ?=
 =?us-ascii?Q?tKCUo1i478NgUDCmCXPPf0xJPHb/Hf4ad00rlos53OvtRBufPcMr3RubRMOC?=
 =?us-ascii?Q?+7P4gMx0IioIy1AuexVxhYC3ci8etnZIhabwU49FaMCeCX22tcJ/ncLy5w7j?=
 =?us-ascii?Q?EcXiDrZo6jXJrR0rDsN21LsH/0+YciPC4tXqqWIgggutn0uo/L2ImZ8OWp+G?=
 =?us-ascii?Q?BONNsAydVzDWbTlf7DUSw52dM6czYx/dK1tH7mB1dpxlaAHX9Haxnp82IEBm?=
 =?us-ascii?Q?I25v9fvD49DervQ5CZd4kCkWhwLORPPgDyrs/JZm4ymMJxUIWNcB4SAkfIKe?=
 =?us-ascii?Q?ErjbRlg4E+Cjyv7QKwz9m0qotDJxOhNPfpziJpPZ728ao1jOsRTjVUE9xxGK?=
 =?us-ascii?Q?c77oMVZaCMawvn7hG3uK305rmtyqcR9LM1frRreTOnmhyTQCUSq+dPCZb6Fy?=
 =?us-ascii?Q?QOfKIaPSYSPgjMzsS1vP2HguNdn3eCYckdBq/rv2afE8Nlh2Z3GfDl070VP9?=
 =?us-ascii?Q?/sVo9MNM1DPCxg6G/X9LtQc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e4096036-a3a4-4c61-2f58-08db66b3a822
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2023 17:30:01.0428 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YDamcNK5NPD1eMmQOgJWRLFJnbgG2fuZUdSMlh2t9rB4oT/pV8drSNVngcPGDOHjVE/rAGJl5FyPctHzyXh40cixqJUWfOTW+AGMO26XDh8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6332
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686072605; x=1717608605;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=y1DG/giJD3GRBA+FVscpa1GagXtGL45XRddB2N/nB1o=;
 b=HxKkvE6vW/PcEg2A9R6sXxFiRvDye/uinzt6HHmy5id/y5mJqDZ8Ui/E
 YkDqoXfaNNM2YlFygLvrdKWpBJPE540xLmneDhNHnF5KVetpr5AjQr7Zc
 XHpPpp/xUCqRuiBNGlIqAkGC98ZrYlKTvs65UepjoP7S2eJrKrEyO2JmO
 ZvlA6D6nUYlmRX4BYP/nCx3i2sAGcAjdP3rFeUptYJJYVAYxn9tj61ZAD
 3OkFcueNLO9sXKRjVT6w4wQe8zJF7WBNfpWH7KWzCd3qofNZ3/K61Ghmc
 qn+EnQqxsW0tPIQtryHWs0PVZr9JcoWJcVSEYGdPulacDQ12sy2rAihvw
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HxKkvE6v
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: Fix XDP memory leak
 when NIC is brought up and down
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 06, 2023 at 12:33:58PM +0200, Kamil Maziarz wrote:
> Fix the buffer leak that occurs while switching
> the port up and down with traffic and XDP by
> checking for an active XDP program and freeing all empty TX buffers.
> 
> Fixes: efc2214b6047 ("ice: Add support for XDP")
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>

Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

thanks! this has been hiding there for a while.

> ---
> v2: new Fixes tag
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index a1f7c8edc22f..03513d4871ab 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -7056,6 +7056,10 @@ int ice_down(struct ice_vsi *vsi)
>  	ice_for_each_txq(vsi, i)
>  		ice_clean_tx_ring(vsi->tx_rings[i]);
>  
> +	if (ice_is_xdp_ena_vsi(vsi))
> +		ice_for_each_xdp_txq(vsi, i)
> +			ice_clean_tx_ring(vsi->xdp_rings[i]);
> +
>  	ice_for_each_rxq(vsi, i)
>  		ice_clean_rx_ring(vsi->rx_rings[i]);
>  
> -- 
> 2.31.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
