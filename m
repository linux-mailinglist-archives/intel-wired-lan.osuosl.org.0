Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8285A2A4D5A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Nov 2020 18:43:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3ADC520BF8;
	Tue,  3 Nov 2020 17:43:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pf1H9DVuDsq6; Tue,  3 Nov 2020 17:43:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6215221507;
	Tue,  3 Nov 2020 17:43:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B9CA71BF352
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 17:43:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ADA9E20C45
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 17:43:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hF6NAPBVwj7E for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Nov 2020 17:43:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id AA05520BF8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 17:43:36 +0000 (UTC)
IronPort-SDR: HhwmWLvd3ilzVXtHzZaERMSC33zIxnNQ2CRkhvpnwhgw8+rjeHMVPjWCKROER9RJFrquW55/QP
 deRtGd5R5w8A==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="230723508"
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="230723508"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 09:43:35 -0800
IronPort-SDR: KHrIPlPayNqv008sA1ZerMaDxelJmQmSO0liVkaBgcZOYnQEJ7rZ63kbWjZCetljWMS0I3DU5h
 BKECa868yY6Q==
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="538574273"
Received: from wrjurinj-mobl.amr.corp.intel.com (HELO localhost)
 ([10.212.132.93])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 09:43:34 -0800
MIME-Version: 1.0
In-Reply-To: <20201103143201.GA1477350@mwanda>
References: <20201103143201.GA1477350@mwanda>
From: Andre Guedes <andre.guedes@intel.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, jesus.sanchez-palencia@intel.com
Date: Tue, 03 Nov 2020 09:43:32 -0800
Message-ID: <160442541270.8198.8850590707916178617@wrjurinj-mobl.amr.corp.intel.com>
User-Agent: alot/0.9.1
Subject: Re: [Intel-wired-lan] [bug report] igb: Add support for ETF offload
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

Hi Dan,

Quoting Dan Carpenter (2020-11-03 06:32:01)
> Hello Jesus Sanchez-Palencia,
> 
> The patch 3048cf84d152: "igb: Add support for ETF offload" from Jul
> 3, 2018, leads to the following static checker warning:
> 
>         drivers/net/ethernet/intel/igb/igb_main.c:1862 igb_save_txtime_params()
>         warn: array off by one? 'adapter->tx_ring[queue]'
> 
> drivers/net/ethernet/intel/igb/igb_main.c
>   1854  static int igb_save_txtime_params(struct igb_adapter *adapter, int queue,
>   1855                                    bool enable)
>   1856  {
>   1857          struct igb_ring *ring;
>   1858  
>   1859          if (queue < 0 || queue > adapter->num_tx_queues)
>                                        ^^
> I feel like this should be >= instead.

If queue == adapter->num_tx_queues we end up with an out-of-bounds index when
accessing adapter->tx_ring[] in line 1862.
> 
>   1860                  return -EINVAL;
>   1861  
>   1862          ring = adapter->tx_ring[queue];
                                  ^^^^^^^^^^^^^^


>   1863          ring->launchtime_enable = enable;
>   1864  
>   1865          return 0;
>   1866  }
>   1867  
>   1868  static int igb_save_cbs_params(struct igb_adapter *adapter, int queue,
>   1869                                 bool enable, int idleslope, int sendslope,
>   1870                                 int hicredit, int locredit)
>   1871  {
>   1872          struct igb_ring *ring;
>   1873  
>   1874          if (queue < 0 || queue > adapter->num_tx_queues)
>                                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> Here too.

Same here as well.

So it looks correct to me.

Best,
Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
