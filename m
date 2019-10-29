Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F750E7D7E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Oct 2019 01:26:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3F073854E7;
	Tue, 29 Oct 2019 00:26:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j5UvoI_PYV0N; Tue, 29 Oct 2019 00:26:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6ABE3854C4;
	Tue, 29 Oct 2019 00:26:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E6EB41BF980
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2019 00:26:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E2D7886FB0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2019 00:26:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vys0JKrXOCpn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Oct 2019 00:26:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CFBD686F13
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2019 00:26:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 17:26:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,241,1569308400"; d="scan'208";a="283086915"
Received: from jbrandeb-desk4.amr.corp.intel.com (HELO localhost)
 ([10.166.241.50])
 by orsmga001.jf.intel.com with ESMTP; 28 Oct 2019 17:26:21 -0700
Date: Mon, 28 Oct 2019 17:26:21 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Shannon Nelson <shannon.lee.nelson@gmail.com>
Message-ID: <20191028172621.00002a46@intel.com>
In-Reply-To: <CAP-MU4PtF0eJuuihH6VQ12RDak=Vrn8oYPitqU7Z10pD3YcM_w@mail.gmail.com>
References: <20191028183714.50528-1-jesse.brandeburg@intel.com>
 <CAP-MU4PtF0eJuuihH6VQ12RDak=Vrn8oYPitqU7Z10pD3YcM_w@mail.gmail.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: implement VF stats
 NDO
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

On Mon, 28 Oct 2019 15:02:12 -0700 Shannon wrote:
> On Mon, Oct 28, 2019 at 11:37 AM Jesse Brandeburg
> <jesse.brandeburg@intel.com> wrote:
> >
> > Implement the VF stats gathering via the kernel via ndo_get_vf_stats().
> > The driver will show per-VF stats in the output of the
> > ip -s link show dev <PF>
> > command.
> >
> > Testing Hints (Required if no HSD): ip -s link show dev eth0,
> > will return non-zero VF stats.  
> 
> Oh, I remember the "HSD" acronym... but it isn't needed in an external patch.

Dang, stupid template, will fix.
 
> > +       vf_stats->rx_packets = stats->rx_unicast + stats->rx_broadcast +
> > +               stats->rx_multicast;
> > +       vf_stats->tx_packets = stats->tx_unicast + stats->tx_broadcast +
> > +               stats->tx_multicast;
> > +       vf_stats->rx_bytes   = stats->rx_bytes;
> > +       vf_stats->tx_bytes   = stats->tx_bytes;
> > +       vf_stats->broadcast  = stats->rx_broadcast + stats->tx_broadcast;
> > +       vf_stats->multicast  = stats->rx_multicast + stats->tx_multicast;  
> 
> Are you sure these are supposed to count up both Tx and Rx multicast
> and broadcast?  With a quick peek at VF stats output from "ip -s link"
> I see that only the Rx line mcast and bcast, the Tx line does not.  I
> would infer that we're only counting what has been received.
> 
>     vf 0 MAC 00:00:00:00:00:00, spoof checking off, link-state auto, trust off
>     RX: bytes  packets  mcast   bcast
>     0          0        0       0
>     TX: bytes  packets
>     0          0
> 
> I suspect there's a definition somewhere, but I haven't stumbled
> across it recently.
> 
> (yes, I still occasionally read these patches)

Thanks for the feedback, it's not very clear from the code if those
variables named "broadcast" and "multicast" are for receive, transmit,
or both.  That's how I got into trouble here at least.  I spent some
time investigating and it seems that they're only mentioned and used in
the context of receive most elsewhere in the kernel, so v2 on its way!

Thanks!
Jesse


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
