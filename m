Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 453CE2D9AAE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Dec 2020 16:17:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D2E128710F;
	Mon, 14 Dec 2020 15:17:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LLDdd2g92GY2; Mon, 14 Dec 2020 15:17:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4A27A8744F;
	Mon, 14 Dec 2020 15:17:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0DAE21BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 15:17:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EAD8E27236
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 15:17:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id thEh715r2aog for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Dec 2020 15:17:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 7298E27A5D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 15:17:08 +0000 (UTC)
IronPort-SDR: PUqb3rDe6lL+6xSgp72w9L+rSe9mm+mTpDa5/2QzMtqFyDdZV0fYGunGFVzKgBb3K4DC5CxiQ0
 G5tq83+Y4OMw==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="193082045"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="193082045"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 07:17:08 -0800
IronPort-SDR: lNPF00ciK5Gtp944ROTXfleYBCOhzczUlCIRfz5JCfqnQdVnEkuU6rnHnA3BEInFXCjCZwDXB/
 a7Aa4FLjrEnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="333478153"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga008.fm.intel.com with ESMTP; 14 Dec 2020 07:17:06 -0800
Date: Mon, 14 Dec 2020 16:07:40 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20201214150740.GA15222@ranger.igk.intel.com>
References: <20201211164956.59628-1-maciej.fijalkowski@intel.com>
 <20201211164956.59628-6-maciej.fijalkowski@intel.com>
 <20201211202315.570b6605@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201211202315.570b6605@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH net-next 5/8] ice: move skb pointer
 from rx_buf to rx_ring
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Dec 11, 2020 at 08:23:15PM -0800, Jakub Kicinski wrote:
> On Fri, 11 Dec 2020 17:49:53 +0100 Maciej Fijalkowski wrote:
> > @@ -864,14 +865,12 @@ ice_reuse_rx_page(struct ice_ring *rx_ring, struct ice_rx_buf *old_buf)
> >   * for use by the CPU.
> >   */
> >  static struct ice_rx_buf *
> > -ice_get_rx_buf(struct ice_ring *rx_ring, struct sk_buff **skb,
> > -	       const unsigned int size)
> > +ice_get_rx_buf(struct ice_ring *rx_ring, const unsigned int size)
> >  {
> 
> FWIW I think you missed adjusting kdoc here.

How ironic :) sorry for that.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
