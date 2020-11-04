Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A24812A7032
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Nov 2020 23:07:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1ACCF20467;
	Wed,  4 Nov 2020 22:07:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xZJ3xfRuB50R; Wed,  4 Nov 2020 22:07:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4074A20457;
	Wed,  4 Nov 2020 22:07:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5B8921BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 22:07:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 212C12044F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 22:07:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ASJcqMxIpvQM for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Nov 2020 22:07:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 40F5720400
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 22:07:47 +0000 (UTC)
IronPort-SDR: vvPef49Ev1aDRnoWztcAmq08G57um2Mm7nhsFF+KEmkvoyz7HUp0Woiw2HC5UDUyjxuWfkq87c
 Xy4x1PBXlXTQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9795"; a="156282832"
X-IronPort-AV: E=Sophos;i="5.77,451,1596524400"; d="scan'208";a="156282832"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 14:07:44 -0800
IronPort-SDR: BhC58LLPkSdEbrHuc25XwVwK4FuwVklhXIz6Ur6ICYRZ/pLnGlfD/YfAxaYnRt8LT3s4OghaEN
 Lx42lFjcIglw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,451,1596524400"; d="scan'208";a="354011406"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga004.fm.intel.com with ESMTP; 04 Nov 2020 14:07:43 -0800
Date: Wed, 4 Nov 2020 22:56:27 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Andre Guedes <andre.guedes@intel.com>
Message-ID: <20201104215627.GA39754@ranger.igk.intel.com>
References: <20201030210351.46482-1-andre.guedes@intel.com>
 <20201030210351.46482-8-andre.guedes@intel.com>
 <20201102180700.GJ6427@ranger.igk.intel.com>
 <160444682187.10323.11872975494131598005@anemani-mobl2.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160444682187.10323.11872975494131598005@anemani-mobl2.amr.corp.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH v3 7/9] igc: Add initial XDP support
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

On Tue, Nov 03, 2020 at 03:40:21PM -0800, Andre Guedes wrote:
> Quoting Maciej Fijalkowski (2020-11-02 10:07:00)
> > >  static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
> > >  {
> > >       unsigned int total_bytes = 0, total_packets = 0;
> > > @@ -1912,8 +1974,10 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
> > >               union igc_adv_rx_desc *rx_desc;
> > >               struct igc_rx_buffer *rx_buffer;
> > >               ktime_t timestamp = 0;
> > > +             struct xdp_buff xdp;
> > 
> > I'm wondering if this patch should zero-init the xdp_buff. There are two
> > pointers that are left untouched below (rxq/txq) so maybe bpf prog would
> > get some weird behavior if it would be touching them.
> 
> I see your point. While rxq is set by the next patch txq is not. I took a look
> at ice, i40e, ixgbe, and they don't seem to zero-init neither set txq so maybe
> that's OK.

To clear it up, txq in xdp_buff is explicitly set in dev_map_run_prog(),
which is sort of a xdp tx hook. That's why none of the driver has to do
that. Sorry for confusion :)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
