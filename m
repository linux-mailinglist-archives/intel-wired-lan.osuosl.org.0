Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 259A1A307E3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2025 11:02:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0EBA0408A0;
	Tue, 11 Feb 2025 10:02:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ONOZEUjdW6nX; Tue, 11 Feb 2025 10:02:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2CAF940B5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739268136;
	bh=prKXUibYt1K4pbIKCfk3kVUN2rDcrJpNYyGNwfZeo8o=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=srrKnZaBohS9c+nQ18OD5oo7/tj/REj4my1nQsi2yWTHA1uGAmI7dNqm6r1LV4U3X
	 nvpmX60sQGmlrUNpqONUREKpi+o05euBnOIJFgnk5WvtyxNMx061rC07TUVUobb97X
	 EemfzLb3QjFHdk8SAKLXLe3cHTT311ce4QDYauZl12HKMUa+8ig4ZhgW4ugH+eIk3L
	 iJATYrXG0nzxKIRiXFwuhFzsMalIQ/ntfGVIS64xXw5n69dis7c59T9brkbstu3giW
	 Nq84ERa5MXMySpRYhxfOsomJ314HHmOakIfs2HXB/y8YUS6SYjiWFhfidCjFxm7WMn
	 eZl0HjemD87Sw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2CAF940B5B;
	Tue, 11 Feb 2025 10:02:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1DC466C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 10:02:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E055040897
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 10:02:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u9w10vsyg6ob for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2025 10:02:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1B40A40627
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B40A40627
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1B40A40627
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 10:02:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 1D3C6A40181;
 Tue, 11 Feb 2025 10:00:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 768D9C4CEE6;
 Tue, 11 Feb 2025 10:02:09 +0000 (UTC)
Date: Tue, 11 Feb 2025 10:02:07 +0000
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 marcin.szycik@linux.intel.com, jedrzej.jagielski@intel.com,
 przemyslaw.kitszel@intel.com, piotr.kwapulinski@intel.com,
 anthony.l.nguyen@intel.com, dawid.osuchowski@intel.com
Message-ID: <20250211100207.GG554665@kernel.org>
References: <20250207104343.2791001-1-michal.swiatkowski@linux.intel.com>
 <20250207104343.2791001-4-michal.swiatkowski@linux.intel.com>
 <20250207145710.GX554665@kernel.org>
 <Z6mTraxmxHzsvrZ3@mev-dev.igk.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z6mTraxmxHzsvrZ3@mev-dev.igk.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739268131;
 bh=2XFOQGto3PgiVagmbsZZvoYAv2IJ2PJRYkFrOjY6j5s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IiABRgNoVvDoqW9Y4SAkclBCh+0y82rW/cDGb4kHx4P5H1g8Ct0Kbd4RpuhpKHLvL
 IzXaNzavUysztdEqLb6fLivNcd7ah7tHDl6A70mBfr/fAJ8UYtwh/i/6KaxaxiLGZN
 3JY41WNrpLgnaCmobYey5dXLALshVoB2yAVrKxnCLFETOnpwyGx0LRiwr5+jcLh2Gl
 6c4g5/n6xna7tebU6QalYjPnW9RIIcMezMIFoX8fD02s29P6iyC0fHsBN4PiVFI46i
 IuAOjJdjKvidhSHAczcRLOGmnUYQouMQYJaC9ZvjUw6ITLNzVIKx3N8rfWznk/M649
 p9GGYWwfQp/Vw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=IiABRgNo
Subject: Re: [Intel-wired-lan] [iwl-next v1 3/4] ixgbe: add Tx hang
 detection unhandled MDD
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 10, 2025 at 06:50:37AM +0100, Michal Swiatkowski wrote:
> On Fri, Feb 07, 2025 at 02:57:10PM +0000, Simon Horman wrote:
> > On Fri, Feb 07, 2025 at 11:43:42AM +0100, Michal Swiatkowski wrote:

...

> > > +/**
> > > + * ixgbe_handle_mdd_event - handle mdd event
> > > + * @adapter: structure containing ring specific data
> > > + * @tx_ring: tx descriptor ring to handle
> > > + *
> > > + * Reset VF driver if malicious vf detected or
> > > + * illegal packet in an any queue detected.
> > > + */
> > > +static void ixgbe_handle_mdd_event(struct ixgbe_adapter *adapter,
> > > +				   struct ixgbe_ring *tx_ring)
> > > +{
> > > +	u16 vf, q;
> > > +
> > > +	if (adapter->vfinfo && ixgbe_check_mdd_event(adapter)) {
> > > +		/* vf mdd info and malicious vf detected */
> > > +		if (!ixgbe_get_vf_idx(adapter, tx_ring->queue_index, &vf))
> > > +			ixgbe_vf_handle_tx_hang(adapter, vf);
> > > +	} else {
> > > +		/* malicious vf not detected */
> > > +		for (q = 0; q < IXGBE_MAX_TX_QUEUES; q++) {
> > > +			if (ixgbe_check_illegal_queue(adapter, q) &&
> > > +			    !ixgbe_get_vf_idx(adapter, q, &vf))
> > > +				/* illegal queue detected */
> > > +				ixgbe_vf_handle_tx_hang(adapter, vf);
> > 
> > It looks like ixgbe_vf_handle_tx_hang() will run for each illegal queue.
> > Could that be more than once for a given vf? If so, is that desirable?
> > 
> 
> Yes, it will be called for each hanged queue of a given VF. I assume
> this is fine, as the function is counting the hang events, not resetting
> VF.

Thanks for the clarification, much appreciated.

I missed that this is just accounting and agree this seems fine.

...
