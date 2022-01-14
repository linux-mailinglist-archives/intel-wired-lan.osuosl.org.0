Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5164748E197
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jan 2022 01:37:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6D24440256;
	Fri, 14 Jan 2022 00:37:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9miAdBB8pJQ0; Fri, 14 Jan 2022 00:37:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1DE0440185;
	Fri, 14 Jan 2022 00:37:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E83EB1C1148
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 00:37:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D487B415AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 00:37:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3vZsmXqUqLTS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jan 2022 00:37:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8ECC44159C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 00:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642120623; x=1673656623;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=WpqWIfjtUFSQVtFFBjHKmiadBFigY6i0v+ya3JWe/1c=;
 b=SIk0XvcR8lbMCnwibZuePalZlOfie3Kr1rWUE/7EAOU6459eE3bPpxfd
 IKb2Wkn/otTJy4c6BnUnogzX6Aro77H9o80g6/YzM3eDIBvAJlrPd2m3V
 caqXomA1ZN3G8pfThyIY6qVXRBxmeXHgThaE4TjM/ote/+uGKxauFDVVb
 T8gFdsprHPExvAFYylVQFVAvhpjQgsOSCCJ2Gkm4PZfDliZzj4uM3eDid
 gfdOuYXwQdZDUPT0GMJYM/AxuG9GRwClQaEf/6GSb9O2mG7pEOV96zDhk
 9SnJQQpiZfmJuKG/dJ+2JdGJO8lEjPaObtOSGZdVQaWrowdwQFcPgDuF5 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="244105009"
X-IronPort-AV: E=Sophos;i="5.88,287,1635231600"; d="scan'208";a="244105009"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 16:37:02 -0800
X-IronPort-AV: E=Sophos;i="5.88,287,1635231600"; d="scan'208";a="624138722"
Received: from lyang24-mobl.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.212.236.107])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 16:37:02 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Corinna Vinschen <vinschen@redhat.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
In-Reply-To: <20220113160021.1027704-1-vinschen@redhat.com>
References: <20220113160021.1027704-1-vinschen@redhat.com>
Date: Thu, 13 Jan 2022 16:37:01 -0800
Message-ID: <87sftr6tle.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next] igc: avoid kernel warning
 when changing RX ring parameters
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
Cc: Andre Guedes <andre.guedes@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Corinna Vinschen <vinschen@redhat.com> writes:

> Calling ethtool changing the RX ring parameters like this:
>
>   $ ethtool -G eth0 rx 1024
>
> triggers the "Missing unregister, handled but fix driver" warning in
> xdp_rxq_info_reg().
>
> igc_ethtool_set_ringparam() copies the igc_ring structure but neglects to
> reset the xdp_rxq_info member before calling igc_setup_rx_resources().
> This in turn calls xdp_rxq_info_reg() with an already registered xdp_rxq_info.
>
> This fix initializes the xdp_rxq_info member prior to calling
> igc_setup_rx_resources(), exactly like igb.
>
> Fixes: 73f1071c1d29 ("igc: Add support for XDP_TX action")
> Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index 8cc077b712ad..93839106504d 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -671,6 +671,10 @@ igc_ethtool_set_ringparam(struct net_device *netdev,
>  			memcpy(&temp_ring[i], adapter->rx_ring[i],
>  			       sizeof(struct igc_ring));
>  
> +			/* Clear copied XDP RX-queue info */
> +			memset(&temp_ring[i].xdp_rxq, 0,
> +			       sizeof(temp_ring[i].xdp_rxq));
> +

Reaching "inside" xdp_rxq to reset it doesn't feel right in this
context, even if it's going to work fine (for now).

I think that the suggestion that Alexander gave in that other thread is
the best approach. And thanks for noticing that igb '_set_ringparam()'
has the same underlying problem and also needs to be fixed.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
