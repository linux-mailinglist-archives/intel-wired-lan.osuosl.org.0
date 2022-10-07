Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2370C5F750D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 10:10:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A26ED41930;
	Fri,  7 Oct 2022 08:10:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A26ED41930
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665130233;
	bh=x1vkpgZtObA39q27ws3roishBv5l93EWKJ9y+7kRXYs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UGYTCYFOQwzW+CzxNHgo3fHnJy1bQ1tHW5VnP4d5pwpPxbMZZ77wzxMs4pHJ4+BoL
	 dQpiha1H3CmbwL+X0LQrZH6KVLdjwQKCdcxeQbIn13+u8FZb7b5zwhvqyWKINeGJaf
	 ydePMROhWHn+6dWVwG6ihf4KY2bOD9f3XDxlRkm24GkuDZ/yby4HekYX9Hu0tUKVNM
	 y5hIwjNIUr9+C1lXTRVIZHmczc8iXPAYM90XxCGxcDIjNGLYkSuo44wKJ/pgI7trbU
	 +2srKJWhFsnQJZFvHUcue+v5UOgu+pNGjiStij4BTbG09y6v02TZgJWHRff3NqXAzG
	 hpi5QGz+kGj0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bf_jYosIYuiP; Fri,  7 Oct 2022 08:10:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E181E41928;
	Fri,  7 Oct 2022 08:10:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E181E41928
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 20E371BF423
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 08:10:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EE59860BBD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 08:10:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE59860BBD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gFPCodI_wOf0 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Oct 2022 08:10:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA3F960B2E
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CA3F960B2E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 08:10:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="302400853"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="302400853"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2022 01:10:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="693706319"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="693706319"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 07 Oct 2022 01:10:25 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 7 Oct 2022 01:10:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 7 Oct 2022 01:10:24 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 7 Oct 2022 01:10:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KsMlbwrpvgfktxPPXnpj/ZvNk5PmeW/fw9H1xoJRnbVdF3P7QONDrCc9D6U14Zwv52d01ytNygTyfFBV7vYAzFCOQSB/ogghLBQhyy/vZ3Wqe78VJ0oEP+eZm1jPW9C76qjCE1kWdzOzVzF06l7xAB30oC8WBljmJ97RQFqXDoAZqXAztiUt5EK5iUyQtmFGbBdv1eiUyFhTsrwYB+Q6/YxGzcWmaITd9gNiCsUb7EFH8f8KJboP1xDvCJIJu81TYOXrhiWMERwruffylqeBwE9fqOUEjW+o7nYh0pda8JVOeyHzxqpiwIesIZNh2WT7cMT5mWS8nXWnUIaGOQ7fcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1oGllprETgUiEUwxEn3NMpjZYkJrns6fUpcoMh1K42s=;
 b=mOyPtsLlgmF/qR6X5eUSmOFw2kWL4gPWd3dVwbTSrwdf1VKubCYuk6SglTL7TmNQolbBcw8/OC3mIiH6TEKR1MaX9HNUHav7kJlcrjk0b/xmM0hu3WV7hn5lcDsnq76eH9AQqzifQ/y5VejaaeKarQmIJ3Tp9tHjYUmwLkpA1RdUHlu6s/qdTVpses2+IX9TITyes/ZC+LLX+dJI2NfOOXKGabpIvEusXXu+XVD541TekZ/wcOYR+OK5eKkD1wx0yoD8Y+w6NjEU8RU3EhxhKnHSjv/L3PlkGz1pAL/vA04sp/3rFBFsYiShw+mT0BwOFs+KyaJUMYh2pWnZFzLsnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 SJ0PR11MB4877.namprd11.prod.outlook.com (2603:10b6:a03:2d9::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.24; Fri, 7 Oct
 2022 08:10:17 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::6ae9:91fd:f3e0:7923]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::6ae9:91fd:f3e0:7923%4]) with mapi id 15.20.5676.028; Fri, 7 Oct 2022
 08:10:17 +0000
Date: Fri, 7 Oct 2022 10:10:11 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Joe Damato <jdamato@fastly.com>
Message-ID: <Yz/e41NCjZje1+IM@boxer>
References: <1665099838-94839-1-git-send-email-jdamato@fastly.com>
 <1665099838-94839-3-git-send-email-jdamato@fastly.com>
Content-Disposition: inline
In-Reply-To: <1665099838-94839-3-git-send-email-jdamato@fastly.com>
X-ClientProxiedBy: FR3P281CA0044.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::7) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|SJ0PR11MB4877:EE_
X-MS-Office365-Filtering-Correlation-Id: c3460abb-2779-4294-214e-08daa83b5ee4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kvKSK83vPI1iMsRXVY/+9Fw6+wyoQKWxKAftf6uW+ieBVPi7+CLfq3rAlnRFl4WamE+bAZM6ZWRZwwABlP0w1ru12LeO6SULrxyqnrX9MbNlXwaUanP4nZlU1dnDYcmH5FCZ54dmmDrlALkMQ0TydeHz3n++Xeac+laGo4dYf1JY07GtFMdqheFuGvTv2/yFaSZ0sMGH1lOTIZw4PAG2Er9MbRENY8QPvnXxauiF+G6ZRYgEqGtp4hXmgp5w/aO6FItdlEmU/D+UNG4AUHOB4tssfO2CRGZFYqqMEmLanQachy2Z4u0dy+9gPpsD7taeUeRBp/VXWnc9atmep/5HFqksCTdN34VbKJL7W1V8iNFjqXEXxb6vbgTtwPrywBrShV14QtzMErKMq1Ggpbp8CfhOFLzdKViCCV6QK0vvM8fO5QqKfWeDV5qxRgDIu5abyiH5QSpD5UXGE6nQhWcu5bXob1A3uP9GeEDFjJcqjJypY4R1P3NuivmliN3A82QHkeOaZB+q/KLX3pXqSzu3Rwf/9SXD3YOmfnQJsYsIrf1mGcqV7Gl5iGNJcSZGCzjAOJLtzgNvGv1I43aWaX6gnbBH9vVO5NeR8E1gCEgXn9gVH71jUM8Bn2+X2uhXCbdebBjQSTrTukm5D8ZyI9d3tT/ymKllcVz6NZD4hI846d/TA6dfRp1DWkbCoPfgEmIORYDEmT25xlQ2rs/isaojJ3ngtwEUWFn/M3JPDz+GNgbPPAYmpjQI7gEQaznXMa9s
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(376002)(136003)(346002)(366004)(39860400002)(396003)(451199015)(186003)(9686003)(5660300002)(26005)(6506007)(6512007)(2906002)(38100700002)(44832011)(33716001)(8936002)(82960400001)(86362001)(83380400001)(6916009)(316002)(478600001)(6486002)(66946007)(66556008)(41300700001)(4326008)(107886003)(8676002)(6666004)(66476007)(309714004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wkgzk0mkOQgr/R9VHv/Gh7R1nSnm0zSYTnh8MJKdhi+R6FwWCCnfMYFpQCSb?=
 =?us-ascii?Q?XXd5kcEcnDJqOFGKwfN9iFRMqLtBvR7a+9TKxVoaInfkFYP4BApl3yU7fmE5?=
 =?us-ascii?Q?VxN8JT4sCw6t9EXTWxdf8gnivkwt11IvVy1KgG3+soxXgrYbwSwCpcXIN82w?=
 =?us-ascii?Q?pQRuZArhzIbRU5UZHFEo0OXVsgkRMuRHFxPggHTrV+4JN6f473IDjTjtvEGO?=
 =?us-ascii?Q?7lyH2Iuzi4yXOxhW1Z3DuU7Tl91EKOUTPAO1WlE5LrTWDSYKR5iEHbZF2DQW?=
 =?us-ascii?Q?8ODGxeL1uXrG3zi+0g3BYzmdezbHvGwTTecOUU7Af5DgvlgaJ6bs6Wk88TjL?=
 =?us-ascii?Q?EajQa4Ablx1rSoPpsTdKJzE6ycqNt7XDbZpEO16b6UB3CMHneXUi+2YSfMPc?=
 =?us-ascii?Q?RU31qdTzqYG5SPYU0eZ4bD6hJAHYnj4tIIgddthNZoAK8h3b2Lgjn6aSYelA?=
 =?us-ascii?Q?vfGZ4ir99Ls9u+7XoZ77bE86AVRd5vsuMbpAIqmZM2Ith6xmKksiEZ9YYuTC?=
 =?us-ascii?Q?5waBY+LDBY8MbEyNf8i6B0xOEYP0yDy/CqwIlmlak9dXErFJkPYZdZ9JmFbO?=
 =?us-ascii?Q?sOhsaF4YksKtDUXuASpnj/Jf+zqCr/CCEtW5Ie1TXuA9Lhu0HRnAGzA8ZJHi?=
 =?us-ascii?Q?6tWljitmbSBIg++sZlW2vmE8y7uRX9sW7voawcCicZfeo7iuOvQZ0AVfQfZV?=
 =?us-ascii?Q?qKkQbeMpEG+0oyeTxUkQqaArHCCa+x20xIVZ1YYE8G9XJIhdGmdUy8UjFzC8?=
 =?us-ascii?Q?pHnZH2Im9xlBpnhsYmhmtcAY2Yy5cSJdzZSqpMkdUyvtcpYcW0FNQ2up2ejI?=
 =?us-ascii?Q?Pp51Pm7yLsiKoow3t9Z7qEyBnAMTUc7v6xgSqy5Hth+ntw1a4T6MXwL8u9X7?=
 =?us-ascii?Q?ajeL8q0kzVRqwD/LmSf2T7IWylOVoAi6NKCDeVPWFfgx6RFYTHA4d9LkNUTX?=
 =?us-ascii?Q?ENGXWMSNrICzyISry32i3SsndMZVoagMCAmuRuTfVgCYolrkEgZ0K//Q95Cz?=
 =?us-ascii?Q?freFomzS4w8+6qRRCc1+yySc4Di/FPGbFl2kG7anMWBwafuSFI0a9MQgktFe?=
 =?us-ascii?Q?NTQ9rpAt053hPc4C0cw/q1Ghl2l3Y3XHqI2UiwzBlO9MF78szLCJaAndWMs8?=
 =?us-ascii?Q?ZBWeBYKts//F/ljNxyZ6anBTxq1p3EtQDZKJ/NdP7kiNMoEDX0HL8hfP1Y/W?=
 =?us-ascii?Q?Goz0JL6Qhv54Xw1X2+uE2TjlXE4gR6DlDt/k/2DZC2Tvb24gwONb6etHHsiO?=
 =?us-ascii?Q?Of5B3ar6c+247O8SYesQz1tdh1oRhSS+JePAzfYT0oZzErFy0gVbaLLCdi1D?=
 =?us-ascii?Q?TG/nOL2DF/r2k28fsiZXEwnRu8GmIoNK8x0ePEzEw+jMWPNBdDWQ0x/lN9k6?=
 =?us-ascii?Q?wR5UBJv7jfnemp48KVYMbl3wsoheiCcxDUTz5Nfu4dNZxHDGpv0QvCYLqnty?=
 =?us-ascii?Q?UdM1BcHLAfADABkmt6c9/Pmtl2JRY8npZSRx8+HTzT+peXFr209Jl+7UszZA?=
 =?us-ascii?Q?ezhTnhDGFlfJ5jwT4H01vibtauJsU4Vwrh4yBNfu30GrVdRJg7gF81c4n1p1?=
 =?us-ascii?Q?r5SwfRqpnE3xI9SPDDAdU4qF3gZKpC98LqCqLNu/FhSEGIm7ctjbJhWVljRY?=
 =?us-ascii?Q?oA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c3460abb-2779-4294-214e-08daa83b5ee4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2022 08:10:17.6142 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CekHx5VWzry4360+QQxr7IsU6gw9Sv4sVe0yGBPIdZEj3Oo49fso+k1PYT80W5gFGUkoFlTt8HZlBOlvQBxTZ2Z7OsVMDDiFxPyAaUQu6ag=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4877
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665130225; x=1696666225;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ayLxDkSRUoc9G9/x29BeuDoQLpvJid7mLJmKYHKQiAA=;
 b=drdPdaPTR0ZJ6INwqn5rrXxV2vOtlKhdI1Ii9WPo+DhNkY1BEtyRqfen
 AHsY0sn9ClH/Fkgj3Wwpi58Mw1pNhARITyq8DeG0PBPTAjY3afjUe0BE8
 86akCj6CexCIgNjCzXaO+cRqRsc/zDLJ9t2gmqh9OZtukP0dMlK+45eko
 umtK91UIuSJMnCb4ci+cPoMQHBzZOPaplH57XHHFBh1SsppCglpO9ohRi
 o9pulg8FubS030qrSPvbK3QLc3lyXsJWE5qBfVZgaipv/vt8kuDRoJWAK
 PyD2SOXlxwGUzkPkDylCdfdeE+nzK8eUdeRU9lH4+VrdJcFt/0GsuTxlb
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=drdPdaPT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [next-queue v3 2/4] i40e: Record number TXes
 cleaned during NAPI
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
Cc: netdev@vger.kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 06, 2022 at 04:43:56PM -0700, Joe Damato wrote:
> Update i40e_clean_tx_irq to take an out parameter (tx_cleaned) which stores
> the number TXs cleaned.
> 
> Likewise, update i40e_clean_xdp_tx_irq and i40e_xmit_zc to do the same.
> 
> Care has been taken to avoid changing the control flow of any functions
> involved.
> 
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c | 16 +++++++++++-----
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c  | 15 +++++++++++----
>  drivers/net/ethernet/intel/i40e/i40e_xsk.h  |  3 ++-
>  3 files changed, 24 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index b97c95f..a2cc98e 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -923,11 +923,13 @@ void i40e_detect_recover_hung(struct i40e_vsi *vsi)
>   * @vsi: the VSI we care about
>   * @tx_ring: Tx ring to clean
>   * @napi_budget: Used to determine if we are in netpoll
> + * @tx_cleaned: Out parameter set to the number of TXes cleaned
>   *
>   * Returns true if there's any budget left (e.g. the clean is finished)
>   **/
>  static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
> -			      struct i40e_ring *tx_ring, int napi_budget)
> +			      struct i40e_ring *tx_ring, int napi_budget,
> +			      unsigned int *tx_cleaned)
>  {
>  	int i = tx_ring->next_to_clean;
>  	struct i40e_tx_buffer *tx_buf;
> @@ -1026,7 +1028,7 @@ static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
>  	i40e_arm_wb(tx_ring, vsi, budget);
>  
>  	if (ring_is_xdp(tx_ring))
> -		return !!budget;
> +		goto out;
>  
>  	/* notify netdev of completed buffers */
>  	netdev_tx_completed_queue(txring_txq(tx_ring),
> @@ -1048,6 +1050,8 @@ static bool i40e_clean_tx_irq(struct i40e_vsi *vsi,
>  		}
>  	}
>  
> +out:
> +	*tx_cleaned = total_packets;
>  	return !!budget;
>  }
>  
> @@ -2689,10 +2693,12 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
>  			       container_of(napi, struct i40e_q_vector, napi);
>  	struct i40e_vsi *vsi = q_vector->vsi;
>  	struct i40e_ring *ring;
> +	bool tx_clean_complete = true;
>  	bool clean_complete = true;
>  	bool arm_wb = false;
>  	int budget_per_ring;
>  	int work_done = 0;
> +	unsigned int tx_cleaned = 0;
>  
>  	if (test_bit(__I40E_VSI_DOWN, vsi->state)) {
>  		napi_complete(napi);
> @@ -2704,11 +2710,11 @@ int i40e_napi_poll(struct napi_struct *napi, int budget)
>  	 */
>  	i40e_for_each_ring(ring, q_vector->tx) {
>  		bool wd = ring->xsk_pool ?
> -			  i40e_clean_xdp_tx_irq(vsi, ring) :
> -			  i40e_clean_tx_irq(vsi, ring, budget);
> +			  i40e_clean_xdp_tx_irq(vsi, ring, &tx_cleaned) :
> +			  i40e_clean_tx_irq(vsi, ring, budget, &tx_cleaned);
>  
>  		if (!wd) {
> -			clean_complete = false;
> +			clean_complete = tx_clean_complete = false;
>  			continue;
>  		}
>  		arm_wb |= ring->arm_wb;
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> index 790aaeff..f98ce7e4 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> @@ -530,18 +530,22 @@ static void i40e_set_rs_bit(struct i40e_ring *xdp_ring)
>   * i40e_xmit_zc - Performs zero-copy Tx AF_XDP
>   * @xdp_ring: XDP Tx ring
>   * @budget: NAPI budget
> + * @tx_cleaned: Out parameter of the TX packets processed
>   *
>   * Returns true if the work is finished.
>   **/
> -static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
> +static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget,
> +			 unsigned int *tx_cleaned)
>  {
>  	struct xdp_desc *descs = xdp_ring->xsk_pool->tx_descs;
>  	u32 nb_pkts, nb_processed = 0;
>  	unsigned int total_bytes = 0;
>  
>  	nb_pkts = xsk_tx_peek_release_desc_batch(xdp_ring->xsk_pool, budget);
> -	if (!nb_pkts)
> +	if (!nb_pkts) {
> +		*tx_cleaned = 0;
>  		return true;
> +	}
>  
>  	if (xdp_ring->next_to_use + nb_pkts >= xdp_ring->count) {
>  		nb_processed = xdp_ring->count - xdp_ring->next_to_use;
> @@ -558,6 +562,7 @@ static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
>  
>  	i40e_update_tx_stats(xdp_ring, nb_pkts, total_bytes);
>  
> +	*tx_cleaned = nb_pkts;

please either call it tx_processed or just always fill it with 0 (see my
reply to 4/4).

>  	return nb_pkts < budget;
>  }
>  
> @@ -581,10 +586,12 @@ static void i40e_clean_xdp_tx_buffer(struct i40e_ring *tx_ring,
>   * i40e_clean_xdp_tx_irq - Completes AF_XDP entries, and cleans XDP entries
>   * @vsi: Current VSI
>   * @tx_ring: XDP Tx ring
> + * @tx_cleaned: out parameter of number of TXes cleaned
>   *
>   * Returns true if cleanup/tranmission is done.
>   **/
> -bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring)
> +bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring,
> +			   unsigned int *tx_cleaned)
>  {
>  	struct xsk_buff_pool *bp = tx_ring->xsk_pool;
>  	u32 i, completed_frames, xsk_frames = 0;
> @@ -634,7 +641,7 @@ bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring)
>  	if (xsk_uses_need_wakeup(tx_ring->xsk_pool))
>  		xsk_set_tx_need_wakeup(tx_ring->xsk_pool);
>  
> -	return i40e_xmit_zc(tx_ring, I40E_DESC_UNUSED(tx_ring));
> +	return i40e_xmit_zc(tx_ring, I40E_DESC_UNUSED(tx_ring), tx_cleaned);
>  }
>  
>  /**
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.h b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> index 821df24..396ed11 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.h
> @@ -30,7 +30,8 @@ int i40e_xsk_pool_setup(struct i40e_vsi *vsi, struct xsk_buff_pool *pool,
>  bool i40e_alloc_rx_buffers_zc(struct i40e_ring *rx_ring, u16 cleaned_count);
>  int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget);
>  
> -bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring);
> +bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring,
> +			   unsigned int *tx_cleaned);
>  int i40e_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags);
>  int i40e_realloc_rx_bi_zc(struct i40e_vsi *vsi, bool zc);
>  void i40e_clear_rx_bi_zc(struct i40e_ring *rx_ring);
> -- 
> 2.7.4
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
