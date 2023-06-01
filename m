Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EC67197D1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jun 2023 11:54:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4DFB82331;
	Thu,  1 Jun 2023 09:54:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4DFB82331
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685613255;
	bh=X6mvXCf0ZJ7fELulStNXF1z3hX3rDKHgM/NFqXQX4+M=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UyDW4OWpUVqRGFPps41yz4mRnS3+HYaNwvVw4SMfb8kDn1d0Kn9Xru4oc6IIzYrZJ
	 SVGA9m5a5v9wncTLiN2GWs+PqFaK6pVWsU+HRdan9d/E4k5rBnTlas28B0GYHD7+5i
	 MhD/QWUITn2VNFo63bGyHiUKDYAEX1RMa8MHrHkF9r6lw0q7EJSrbSVEbO/zomRCcm
	 k4+MEtDgQqvpCNOuhWEdBzOkGPqN8y8W4Ttz0kA117c0pas7Rj5UZ6tqBXk+uRLolp
	 XarLvH524tDLa5E/QAZRuSNqfBTTrwguWCKOTytZxmQwOfF9SCK4D4seeSESP/IS6c
	 AFTMyTs5oMaGw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gnilLGBO93h4; Thu,  1 Jun 2023 09:54:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3499281ECB;
	Thu,  1 Jun 2023 09:54:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3499281ECB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2B86A1BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 09:54:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F3CB14242B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 09:54:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F3CB14242B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vvDLTNcJWOGA for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jun 2023 09:54:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76B9F4242A
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 76B9F4242A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 09:54:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="357913498"
X-IronPort-AV: E=Sophos;i="6.00,209,1681196400"; d="scan'208";a="357913498"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 02:54:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="701480669"
X-IronPort-AV: E=Sophos;i="6.00,209,1681196400"; d="scan'208";a="701480669"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 01 Jun 2023 02:54:06 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 1 Jun 2023 02:54:05 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 1 Jun 2023 02:54:05 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 1 Jun 2023 02:54:05 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 1 Jun 2023 02:54:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PCA25mDIV+u3UI4+RhTzwq7bTguBF5BDI9L7iiH7cMyDqkDp8RoYtCRwcTKD491b03mtmhPSw7T4Pgalr2g/ksJJt4OzXUBFJ84zutCnZ6qzuiXB77VcsxDUi2g0HGX4eU2LnxNUSdfNe9a6C84DGePt0dIbhIS7J27Z1hkcSoxnRoB8DCVG5OhZ/1vW6B1tFgXSs5aJ3LpFqtQlHWs8v4bnWb4F+DtT1p/lWc3UKaUfdQjkWCp2Dr9ky4M/US5uw0a62G8JW5XAmAJhTaNPyAA7edfxTc88f5xcGNKbx7Jx341Q+63o3jYT91NnVF93+Mk7UvSM39v44tKw9Frdmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OYuBQ9TUPh6o2AJtE6BKUU6EdTm9RPfFAalEhtZqcJs=;
 b=gQZav8yoMrrEbpAVzH8taD7XAEOw6CyykmbCn8Sv0A7AbGxYwEUXbNBfP9lhRJbUid4vDrDK+Vas3//Sn028k6GfbEdo5QBKvARirxZFx58WPBOEFLF+CENTfUsVkOEnT03fbb9frm7E8gr9o7IortdbqKBCtcQPFENt1oDoxBHdCiahMMOY9lsQwz2nbETdrdrQw3kFY8/mvz9FyzhZ6cZcXYtGDcQtHDZfI3ncNbcnwVn5jVtxg6x0n9AVeXXA2xPqpXtHp9UR3h7C9QL1KtVsp8PP5Y7gStolK+bKKvQ9Ce4yywCJRyxkcSO16HGo+YyQfQB/diHoIQXQSRmpUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 SA2PR11MB5114.namprd11.prod.outlook.com (2603:10b6:806:114::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.23; Thu, 1 Jun
 2023 09:54:03 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::9e4f:80cc:e0aa:6809]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::9e4f:80cc:e0aa:6809%2]) with mapi id 15.20.6433.024; Thu, 1 Jun 2023
 09:54:02 +0000
Date: Thu, 1 Jun 2023 11:53:50 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>
Message-ID: <ZHhqrk8e2QR8FzAm@boxer>
References: <20230601074621.14755-1-magnus.karlsson@gmail.com>
Content-Disposition: inline
In-Reply-To: <20230601074621.14755-1-magnus.karlsson@gmail.com>
X-ClientProxiedBy: FR2P281CA0060.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:93::16) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|SA2PR11MB5114:EE_
X-MS-Office365-Filtering-Correlation-Id: c656d7f2-5f73-45de-b95b-08db628620f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CX8BVLz0U6j8hmqKNJu2O+kLoXZFoT4sXVHMIgu4wer4RnyYjKzDgZrYEznM+thcVPY3Y/wov6AkILCcd2wQj2vX6HFgMtRQFaRn3iR0gumN1+QXvaQY8elb1VpXjXBchip2yOZW6KzS1VxIes8jl43Ao8fZN48QLuGv50Uk0niuZBqhDME6fkvI7I+kWSiuzJU1qqm3LPiPa2vkMWbWMViVQ+yXylTMYviQVy+dJB7SRPbGN8K72Q8JhOddpD6O5uyrej56vRaG0MXucDWWLfxRtTrWyACQw9qwFo8UFfTzFADM4+mx0zeCzsZ7azTLuFqwVpfSi9qljXVzFKTO9qZKn50iluPZcoviz3+jvU+jmtwLgPDCzH2ozXhAr+TWVFAuMaWgonV/Bz+6dz9rkDy+Az4553HuJM92OOP/yf3FN1w+Gam2SRd9//Lh9J/xt74PBjKtrGFl4lX2WaLul29RXVPNoaFTfsV7Q6nps/Rolp7VkqF+LKP3Qhy5Di95Es2zQE6GzTi8r470Ed2aS7k1SPh8TjzQPOLJFcHPo0c4VHuYybBBmFfhgwcT5sCx
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(376002)(39860400002)(366004)(136003)(396003)(346002)(451199021)(2906002)(44832011)(8676002)(8936002)(83380400001)(41300700001)(6916009)(38100700002)(4326008)(316002)(6486002)(66946007)(82960400001)(66476007)(66556008)(26005)(86362001)(6666004)(5660300002)(186003)(33716001)(9686003)(6512007)(6506007)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6qs7y9YYRTsAxuPUBuy+/HmtrXEaXWN5agmTDSgO8XqD5cmFtGoWtKAGUgF0?=
 =?us-ascii?Q?9HBGvx6fqdXXx1cJGuktBadYaw5tuldGX3N2O43m0NPZ/UiPVkpETHq3k6E4?=
 =?us-ascii?Q?jV1r1W1b+CKoJebKAscHSdBA2fqbcyKJnBvbiakGwXvNlyRVvAZkWQ7he7Jo?=
 =?us-ascii?Q?fMs6HbcZPHx+4ytg1WUAsfoerNBVECZMMDqVZCalHpYcDkW2C4rBrr3IbtF0?=
 =?us-ascii?Q?wnZqcSh2nDOg8bUnrc+R+gfu5ewgcggvpdFAxsnD7gtMt96O9effAsG7BKKH?=
 =?us-ascii?Q?cV8T+NwbcVzpgsJ+TQgJ8mGWRCB9MctNp56GOrwHhfB6qOoueg0j303VfYQx?=
 =?us-ascii?Q?QpH7encnaDITrhhPrr3LkxjKgG+gk/651jySnLG2qd25MbWnSCNbRwnLNBlQ?=
 =?us-ascii?Q?O/txrrhXJr7lPIcxw8QZ3nzcWmoirMynq9Kbq70Sr+M20U4L5bOSjiGA/ctT?=
 =?us-ascii?Q?PhmyXGOsg9T8JGTwZOh3OT+1V4NItEwYHag4rR3XZ4slI3jzu/t0Q6CNgoMh?=
 =?us-ascii?Q?AWEbRr9X2KTiFdISSq1ucdU4gnw1gZEpzeTOmeOH1NVYW8XxhlW3YkdM0kAv?=
 =?us-ascii?Q?rTcSSSLFYmr+SQ2RbgR3W1iJpT1baLD8pme21dDgFotri79FGeWmyWjcZEyY?=
 =?us-ascii?Q?mfYc5wSdBS7X42epK0Jfc8oMaZ2yrAfwQYgFhUPWczTzVVU9FSmoqBNTbiF9?=
 =?us-ascii?Q?KDmyTnDyUlQHLXdwMivaZa6f5idFmsXGGYfnJhOTrGVij0y/ayRrpfQuBqld?=
 =?us-ascii?Q?ER2i9ST2r7YywDDu/B5AdUYe6KnzDVrIYwxbCHTlp2JrxT5gfsCsIopOhlbY?=
 =?us-ascii?Q?JObhMHb952duhEGTZI+LeDSxwfFNhbu9VjYohF/5EU9kKzuYwAn2DcgR8/yv?=
 =?us-ascii?Q?jNdvIcWRIY5jzJ6gYbX7KE7k3AQg7QbEYYedWO/FG3oGNgwhwwzV4qqZHWxS?=
 =?us-ascii?Q?joSklU5/cueqiGaIA6MdeRbI2MTOr2j5dslAr90f3c0W/53DQMm8C0FMKWyq?=
 =?us-ascii?Q?cYt55Gx63JfoRTInCB1VQFrpwIwo9B3F0fGS/3YWtsh1kDKlTN3lKXOCXVau?=
 =?us-ascii?Q?uE+J1eV8tZi5TKQsLQOjFkoAS9LKY9bEEG6yCe37GxzDtkO0xSvHLQ76xgIX?=
 =?us-ascii?Q?QfeNfl0nXi7ecafUe63ip0OfMYzNPIA8Jihs8U0qPJar5scOADE9gi9r1A/x?=
 =?us-ascii?Q?bkKKXw0lGG28Ak71+on0E+wiHIT2/HhaFm9VDBFtFMJzmf0vEVior5iSIvvP?=
 =?us-ascii?Q?fcE6BCu7egdaZIiKPjnL2RWbr96/PjFq67kPImwH0Lj6Whh4FncOP4ndnysW?=
 =?us-ascii?Q?POiv2U3O4wLHxKT7mFOOll5QY283ToHUDGhIcxmv0dWXXKbRH22lp6OYLl/c?=
 =?us-ascii?Q?2w/6M+maSCUuZXXDHveeVVy3QS8KrycAeltP3ajMY5QyzXF/0wFtl2U/wqPw?=
 =?us-ascii?Q?++OgkzyuXHL+1AazBir2YZByKnWxmCUxqxB0On/yM1yMBMpcNm7gk8v5HqWl?=
 =?us-ascii?Q?xk6iZ8uGNpvWEdJATbO5OfO5Tp7js680VzsCypo9Hv+YgiOk2RZt7p22jCc9?=
 =?us-ascii?Q?ZCJSbtt7UQ91mXQlP10J94eTAcVwWSAObSLxKhOJToo9LTVbNocwA9Xe/jrW?=
 =?us-ascii?Q?6g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c656d7f2-5f73-45de-b95b-08db628620f8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2023 09:54:02.3843 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yaaQsxyxSdbILUrcyW2IHBjR1U1YmmSH7Bc65Qr0LIad1HWLjv4gUttk3sy7aG/BzzGOW6FDPzQDwSbA36Shqo4khK+Ky0cs/2FD8AyYTMI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5114
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685613247; x=1717149247;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=oBNBWdqu4a0ySUNf6zlkdibU8d5WnH7aMhJhcnJa/Zc=;
 b=JpiBIVpnwVJ32YdKKXU1FqgBNE26+4AJedoChSc8hDkpOpfnMxRY/9N8
 7hidIFkY7L4PXd0baJvb6/SSnIawE3AF+fNrO9OqM/9YfVKAg5OxubyGj
 ShCKMRAsBe95xZb433hZVTt1psXQ0KKUIs1Ve0u64Pp0zwfdtg4ljMXOl
 IXv/hgIf1aG2Di26u/YZsxnpdCE8SCYV1MAmdsA/lt8XM0nBIu3cqz3sW
 XC6CwZ819F/CUVyBexSgtEv9DyymUirXTyxVMXJnHma4GFEaIIixsN5qu
 FoetX+21/49iTqUIzpqFcPEKdNQPHufU3tJ4q4bducj/HSONHhfQmpe9n
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JpiBIVpn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: allow toggling
 loopback mode via ndo_set_features callback
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
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, magnus.karlsson@intel.com, hao.ma@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 01, 2023 at 09:46:21AM +0200, Magnus Karlsson wrote:
> From: Hao Ma <hao.ma@intel.com>
> 
> Add support for NETIF_F_LOOPBACK. This feature can be set via: $
> ethtool -K eth0 loopback <on|off>. This sets the MAC Tx->Rx loopback
> used by selftests/bpf/xskxceiver.
> 
> Signed-off-by: Hao Ma <hao.ma@intel.com>
> ---
>  .../net/ethernet/intel/ixgbe/ixgbe_common.c   |  4 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 73 +++++++++++++++++++
>  drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  1 +
>  3 files changed, 76 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
> index 878dd8dff528..b8998a56ad24 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
> @@ -3337,7 +3337,7 @@ s32 ixgbe_check_mac_link_generic(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
>  
>  	if (link_up_wait_to_complete) {
>  		for (i = 0; i < IXGBE_LINK_UP_TIME; i++) {
> -			if (links_reg & IXGBE_LINKS_UP) {
> +			if (links_reg & IXGBE_LINKS_UP || hw->loopback_on) {
>  				*link_up = true;
>  				break;
>  			} else {
> @@ -3347,7 +3347,7 @@ s32 ixgbe_check_mac_link_generic(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
>  			links_reg = IXGBE_READ_REG(hw, IXGBE_LINKS);
>  		}
>  	} else {
> -		if (links_reg & IXGBE_LINKS_UP) {
> +		if (links_reg & IXGBE_LINKS_UP || hw->loopback_on) {
>  			if (crosstalk_fix_active) {
>  				/* Check the link state again after a delay
>  				 * to filter out spurious link up
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 5d83c887a3fc..70b34b7b5cb0 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -8864,6 +8864,57 @@ netdev_tx_t ixgbe_xmit_frame_ring(struct sk_buff *skb,
>  	return NETDEV_TX_OK;
>  }
>  
> +static int ixgbe_force_loopback(struct ixgbe_adapter *adapter, bool on)
> +{	struct ixgbe_hw *hw = &adapter->hw;
> +	u32 reg_data;
> +
> +	hw->loopback_on = on;
> +	/* Setup MAC loopback */
> +	reg_data = IXGBE_READ_REG(hw, IXGBE_HLREG0);
> +	if (on)
> +		reg_data |= IXGBE_HLREG0_LPBK;
> +	else
> +		reg_data &= ~IXGBE_HLREG0_LPBK;
> +	IXGBE_WRITE_REG(hw, IXGBE_HLREG0, reg_data);
> +
> +	reg_data = IXGBE_READ_REG(hw, IXGBE_FCTRL);
> +	if (on)
> +		reg_data |= IXGBE_FCTRL_SBP | IXGBE_FCTRL_MPE;
> +	else
> +		reg_data &= ~(IXGBE_FCTRL_SBP | IXGBE_FCTRL_MPE);
> +	reg_data &= ~(IXGBE_FCTRL_BAM);
> +	IXGBE_WRITE_REG(hw, IXGBE_FCTRL, reg_data);
> +
> +	/* X540 and X550 needs to set the MACC.FLU bit to force link up */
> +	switch (adapter->hw.mac.type) {
> +	case ixgbe_mac_X540:
> +	case ixgbe_mac_X550:
> +	case ixgbe_mac_X550EM_x:
> +	case ixgbe_mac_x550em_a:
> +		reg_data = IXGBE_READ_REG(hw, IXGBE_MACC);
> +		if (on)
> +			reg_data |= IXGBE_MACC_FLU;
> +		else
> +			reg_data &= ~IXGBE_MACC_FLU;
> +		IXGBE_WRITE_REG(hw, IXGBE_MACC, reg_data);
> +		break;
> +	default:
> +		if (hw->mac.orig_autoc) {
> +			if (on)
> +				reg_data = hw->mac.orig_autoc | IXGBE_AUTOC_FLU;
> +			else
> +				reg_data = hw->mac.orig_autoc & ~IXGBE_AUTOC_FLU;
> +			IXGBE_WRITE_REG(hw, IXGBE_AUTOC, reg_data);
> +		} else {
> +			return 10;
> +		}
> +	}
> +
> +	IXGBE_WRITE_FLUSH(hw);
> +
> +	return 0;
> +}
> +
>  static netdev_tx_t __ixgbe_xmit_frame(struct sk_buff *skb,
>  				      struct net_device *netdev,
>  				      struct ixgbe_ring *ring)
> @@ -9915,6 +9966,15 @@ static int ixgbe_set_features(struct net_device *netdev,
>  	if (changed & NETIF_F_RXALL)
>  		need_reset = true;
>  
> +	if (changed & NETIF_F_LOOPBACK) {
> +		if (features & NETIF_F_LOOPBACK) {
> +			ixgbe_force_loopback(adapter, true);
> +		} else {
> +			ixgbe_force_loopback(adapter, false);
> +			need_reset = true;
> +			}

on ice we just do:

	if (changed & NETIF_F_LOOPBACK)
		ret = ice_set_loopback(vsi, !!(features & NETIF_F_LOOPBACK));

don't you need to set need_reset to true as well when you are disabling
loopback in order to clear appropriate bits from registers?

> +	}
> +
>  	netdev->features = features;
>  
>  	if ((changed & NETIF_F_HW_L2FW_DOFFLOAD) && adapter->num_rx_pools > 1)
> @@ -10286,6 +10346,17 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
>  			/* Wait until ndo_xsk_wakeup completes. */
>  			synchronize_rcu();
>  		err = ixgbe_setup_tc(dev, adapter->hw_tcs);
> +		if (adapter->hw.loopback_on) {
> +			u32 reg_data;
> +
> +			reg_data = IXGBE_READ_REG(&adapter->hw, IXGBE_HLREG0);
> +			reg_data |= IXGBE_HLREG0_LPBK;
> +			IXGBE_WRITE_REG(&adapter->hw, IXGBE_HLREG0, reg_data);
> +
> +			reg_data = IXGBE_READ_REG(&adapter->hw, IXGBE_MACC);
> +			reg_data |= IXGBE_MACC_FLU;
> +			IXGBE_WRITE_REG(&adapter->hw, IXGBE_MACC, reg_data);

can you explain why do you need to set loopback bits again after they were
set on ixgbe_force_loopback() ? are they not preserved after downing an
interface?

> +		}
>  
>  		if (err)
>  			return -EINVAL;
> @@ -10969,6 +11040,8 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	if (hw->mac.type >= ixgbe_mac_82599EB)
>  		netdev->features |= NETIF_F_SCTP_CRC | NETIF_F_GSO_UDP_L4;
>  
> +	netdev->features |= NETIF_F_LOOPBACK;
> +
>  #ifdef CONFIG_IXGBE_IPSEC
>  #define IXGBE_ESP_FEATURES	(NETIF_F_HW_ESP | \
>  				 NETIF_F_HW_ESP_TX_CSUM | \
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> index 2b00db92b08f..ca50ccd59b50 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> @@ -3652,6 +3652,7 @@ struct ixgbe_hw {
>  	bool				allow_unsupported_sfp;
>  	bool				wol_enabled;
>  	bool				need_crosstalk_fix;
> +	bool				loopback_on;

please explain why are you introducing this flag

>  };
>  
>  struct ixgbe_info {
> 
> base-commit: 735c9ee9a374769b78c716de3c19a6c9440ede85
> -- 
> 2.34.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
