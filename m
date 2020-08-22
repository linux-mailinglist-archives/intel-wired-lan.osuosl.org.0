Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2D024E474
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Aug 2020 03:24:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A95988237;
	Sat, 22 Aug 2020 01:24:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oRfGy+MI2e4c; Sat, 22 Aug 2020 01:24:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B0C8F88209;
	Sat, 22 Aug 2020 01:24:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 992A71BF341
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Aug 2020 01:24:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 922A98813C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Aug 2020 01:24:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MiBwXtkBQDaR for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Aug 2020 01:24:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 65097881EC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Aug 2020 01:24:51 +0000 (UTC)
IronPort-SDR: 76zbwrenWPzoBKnZmLwMbFOFbyEA7kv+RsbzM48cG4h4qEQim/WLo0Y7xnqxjOp/HyLyq2hpMr
 B8IoRZRLV8jA==
X-IronPort-AV: E=McAfee;i="6000,8403,9720"; a="143444493"
X-IronPort-AV: E=Sophos;i="5.76,339,1592895600"; d="scan'208";a="143444493"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2020 18:24:50 -0700
IronPort-SDR: XpiaKdDa4FHSs48BTVaLEpx4IofSVT3FxwUmKBJogwO8BM75iz+YLd0LprBvYYhfqwxHXyYKQ1
 z5jmwDN1f3kw==
X-IronPort-AV: E=Sophos;i="5.76,339,1592895600"; d="scan'208";a="280402786"
Received: from dmsimone-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.212.0.56])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2020 18:24:49 -0700
MIME-Version: 1.0
In-Reply-To: <DM6PR11MB2890FFB4041BB4F13D0326A3BC400@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200728233754.65747-1-andre.guedes@intel.com>
 <20200728233754.65747-5-andre.guedes@intel.com>
 <DM6PR11MB2890FFB4041BB4F13D0326A3BC400@DM6PR11MB2890.namprd11.prod.outlook.com>
From: Andre Guedes <andre.guedes@intel.com>
To: "Brown, Aaron F" <aaron.f.brown@intel.com>,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 jeffrey.t.kirsher@intel.com
Date: Fri, 21 Aug 2020 18:24:48 -0700
Message-ID: <159805948887.34417.3341607631899328702@dmsimone-mobl2.amr.corp.intel.com>
User-Agent: alot/0.9
Subject: Re: [Intel-wired-lan] [PATCH 4/4] igc: Fix race condition in PTP tx
 code
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jeff/Tony,

Quoting Brown, Aaron F (2020-08-13 20:09:42)
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> > Andre Guedes
> > Sent: Tuesday, July 28, 2020 4:38 PM
> > To: intel-wired-lan@lists.osuosl.org
> > Subject: [Intel-wired-lan] [PATCH 4/4] igc: Fix race condition in PTP tx code
> > 
> > Currently, the igc driver supports timestamping only one tx packet at a
> > time. During the transmission flow, the skb that requires hardware
> > timestamping is saved in adapter->ptp_tx_skb. Once hardware has the
> > timestamp, an interrupt is delivered, and adapter->ptp_tx_work is
> > scheduled. In igc_ptp_tx_work(), we read the timestamp register, update
> > adapter->ptp_tx_skb, and notify the network stack.
> > 
> > While the thread executing the transmission flow (the user process
> > running in kernel mode) and the thread executing ptp_tx_work don't
> > access adapter->ptp_tx_skb concurrently, there are two other places
> > where adapter->ptp_tx_skb is accessed: igc_ptp_tx_hang() and
> > igc_ptp_suspend().
> > 
> > igc_ptp_tx_hang() is executed by the adapter->watchdog_task worker
> > thread which runs periodically so it is possible we have two threads
> > accessing ptp_tx_skb at the same time. Consider the following scenario:
> > right after __IGC_PTP_TX_IN_PROGRESS is set in igc_xmit_frame_ring(),
> > igc_ptp_tx_hang() is executed. Since adapter->ptp_tx_start hasn't been
> > written yet, this is considered a timeout and adapter->ptp_tx_skb is
> > cleaned up.
> > 
> > This patch fixes the issue described above by adding the ptp_tx_lock to
> > protect access to ptp_tx_skb and ptp_tx_start fields from igc_adapter.
> > Since igc_xmit_frame_ring() called in atomic context by the networking
> > stack, ptp_tx_lock is defined as a spinlock.
> > 
> > With the introduction of the ptp_tx_lock, the __IGC_PTP_TX_IN_PROGRESS
> > flag doesn't provide much of a use anymore so this patch gets rid of it.
> > 
> > Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> > ---
> >  drivers/net/ethernet/intel/igc/igc.h      |  5 ++-
> >  drivers/net/ethernet/intel/igc/igc_main.c |  7 +++-
> >  drivers/net/ethernet/intel/igc/igc_ptp.c  | 49 ++++++++++++++---------
> >  3 files changed, 40 insertions(+), 21 deletions(-)
> > 
> Tested-by: Aaron Brown <aaron.f.brown@intel.com>

Please hold this patch back. I think I found an issue with it. I'm
investigating it and should send a v2 soon.

Cheers,
Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
