Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CE22A3318
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Nov 2020 19:38:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BE2848727E;
	Mon,  2 Nov 2020 18:38:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id koZCzpG0Xo+2; Mon,  2 Nov 2020 18:38:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5D50987284;
	Mon,  2 Nov 2020 18:38:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EEFA71BF37E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Nov 2020 18:38:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D528E203E3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Nov 2020 18:38:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0z96RopvDW5V for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Nov 2020 18:37:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id ABF0020243
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Nov 2020 18:37:58 +0000 (UTC)
IronPort-SDR: 3inxP+0BMO2KV7KyRX2IjaRr7SrSW3+BnGDaAkFHwx+hkFijT2N+NSXt/rhB30vFALKmo44s//
 m7YjkfuF1RWw==
X-IronPort-AV: E=McAfee;i="6000,8403,9793"; a="186770641"
X-IronPort-AV: E=Sophos;i="5.77,445,1596524400"; d="scan'208";a="186770641"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 10:37:58 -0800
IronPort-SDR: xOnPm11siogwiR8wEtbN7P1ckGl41LEPtBjm6EG5yZyI8Xgg+rSAAYK8uVvSs4Sjg8ptf66JHn
 JM+NfkPIPjBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,445,1596524400"; d="scan'208";a="526768412"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga006.fm.intel.com with ESMTP; 02 Nov 2020 10:37:57 -0800
Date: Mon, 2 Nov 2020 19:26:59 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Andre Guedes <andre.guedes@intel.com>
Message-ID: <20201102182659.GK6427@ranger.igk.intel.com>
References: <20201030210351.46482-1-andre.guedes@intel.com>
 <20201030210351.46482-9-andre.guedes@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201030210351.46482-9-andre.guedes@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH v3 8/9] igc: Add support for XDP_TX
 action
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

On Fri, Oct 30, 2020 at 02:03:50PM -0700, Andre Guedes wrote:
> This patch adds support for XDP_TX action which enables XDP programs to
> transmit back receiving frames.
> 
> I225 controller has only 4 tx hardware queues. Since XDP programs may
> not even issue an XDP_TX action, this patch doesn't reserve dedicated
> queues just for XDP like other Intel drivers do. Instead, the queues
> are shared between the network stack and XDP. The netdev queue lock is
> used to ensure mutual exclusion.
> 
> Since frames can now be transmitted via XDP_TX, the igc_tx_buffer
> structure is modified so we are able to save a reference to the xdp
> frame for later clean up once the packet is transmitted. The tx_buffer
> is mapped to either a skb or a xdpf so we use a union to save the skb
> or xdpf pointer and have a bit in tx_flags to indicate which field to
> use.
> 
> This patch has been tested with the sample app "xdp2" located in
> samples/bpf/ dir.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---

[...]

> +
> +static struct igc_ring *igc_xdp_get_tx_ring(struct igc_adapter *adapter,
> +					    int cpu)
> +{
> +	int index = cpu;
> +
> +	if (index >= adapter->num_tx_queues)
> +		index = index % adapter->num_tx_queues;

I'm not sure why you don't want to take the suggestion for getting rid of
modulo op. I won't insist anymore ;)

> +
> +	return adapter->tx_ring[index];
> +}

[...]
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
