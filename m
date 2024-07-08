Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B78B92A304
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2024 14:41:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C687D80E1E;
	Mon,  8 Jul 2024 12:41:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GzENSnIntRJm; Mon,  8 Jul 2024 12:41:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E443C80CFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720442469;
	bh=Iwft6ENKS4+lcboaYqtGjrlfttDSnrTCnFK1p03v3rc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5s0uX0BUHQuXQWGGfzzg7U5qgaD2VPdk8sDDLKF0uJ/DS9QR/o45KON1A272KZyVV
	 ZgoUsfre+MZBb2TR6FNDMxkG+1q1QpHnWujIOjIEDIoO9fldBOavo7q7ODxWL3hS66
	 tcoseKLalt5Ta8/HGdpmvAvKO1KgzvDxhT9xOUNhzg3xOPNE6mMDoeXVxzt2vP4L0H
	 qxNIuw6zM+5etQb889DcB8KY0R7Lhq86bDCxbY923dfkHt2ens1Fa0zdPm1LU4oadQ
	 Tu1NZQZhA8fytvpUEZvdsY5uF/iT7XpDCUBGnNzP7mKl3zs2cqFD1Z3x33emJuWd8w
	 EoMOY5HNEAbvg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E443C80CFD;
	Mon,  8 Jul 2024 12:41:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4F6821BF390
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 12:41:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 39A9480E1E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 12:41:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Or5xkKYwgLSk for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2024 12:41:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1BD6480CFD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BD6480CFD
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1BD6480CFD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 12:41:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id F3C116033C;
 Mon,  8 Jul 2024 12:41:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F038EC116B1;
 Mon,  8 Jul 2024 12:40:57 +0000 (UTC)
Date: Mon, 8 Jul 2024 13:40:55 +0100
From: Simon Horman <horms@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20240708124055.GN1481495@kernel.org>
References: <20240703125922.5625-1-mateusz.polchlopek@intel.com>
 <20240703125922.5625-4-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240703125922.5625-4-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720442460;
 bh=inyrxK1CtvgUU1j2vs6I2E3bLGPJnrjr+jybS557Q/E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tEwrBgvox5WkrtncTXiEFe6ih35FbSdTY41UbbjL53JEMm7a/GJNjFjrbCpK26jge
 VVY0a/ZTk+csn26O7CGBCZ/7O6jDPIA7XMVYZgB7JU8XX8ExXp4fHvOdKtIsFIj7WY
 911F7g8SsGR+ECam03JBPXlwXDd8FIyvFJCV6f/akzFOEs0Sz546tcnFIw0RCoLLCK
 HYXB7BlNHdKuasE+hAmBVOAtJT+pdntP6oRII1vceGeLbYLDM1W5xNVxCXoCMNIdom
 MvRkPjTtC/gCGfvz3acgrCkTzA+6ZUm52hMRhMZAJ4ceLFhSu5AVkBF0i0EAffzgiP
 Lo1NBdu+q9T4Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=tEwrBgvo
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 3/6] ice: add Tx hang
 devlink health reporter
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
Cc: willemb@google.com, Wojciech Drewek <wojciech.drewek@intel.com>,
 dwaipayanray1@gmail.com, linux-kernel@vger.kernel.org,
 Igor Bagnucki <igor.bagnucki@intel.com>, joe@perches.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, apw@canonical.com,
 lukas.bulwahn@gmail.com, akpm@linux-foundation.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 03, 2024 at 08:59:19AM -0400, Mateusz Polchlopek wrote:
> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> Add Tx hang devlink health reporter, see struct ice_tx_hang_event to see
> what is reported.
> 
> Subsequent commits will extend it by more info, for now it dumps
> descriptors with little metadata.
> 
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

...

> +/**
> + * ice_fmsg_put_ptr - put hex value of pointer into fmsg
> + *
> + * @fmsg: devlink fmsg under construction
> + * @name: name to pass
> + * @ptr: 64 bit value to print as hex and put into fmsg
> + */
> +static void ice_fmsg_put_ptr(struct devlink_fmsg *fmsg, const char *name,
> +                            void *ptr)
> +{
> +       char buf[sizeof(ptr) * 3];
> +
> +       sprintf(buf, "%p", ptr);
> +       devlink_fmsg_put(fmsg, name, buf);
> +}

...

> +static int ice_tx_hang_reporter_dump(struct devlink_health_reporter *reporter,
> +				     struct devlink_fmsg *fmsg, void *priv_ctx,
> +				     struct netlink_ext_ack *extack)
> +{
> +	struct ice_tx_hang_event *event = priv_ctx;
> +
> +	devlink_fmsg_obj_nest_start(fmsg);
> +	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, head);
> +	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, intr);
> +	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, vsi_num);
> +	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, queue);
> +	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, next_to_clean);
> +	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, next_to_use);
> +	devlink_fmsg_put(fmsg, "irq-mapping", event->tx_ring->q_vector->name);
> +	ice_fmsg_put_ptr(fmsg, "desc-ptr", event->tx_ring->desc);
> +	ice_fmsg_put_ptr(fmsg, "dma-ptr", (void *)event->tx_ring->dma);

As reported by the kernel test robot, GCC 13 complains about this cast:

  .../devlink_health.c: In function 'ice_tx_hang_reporter_dump':
  .../devlink_health.c:76:43: warning: cast to pointer from integer of different size [-Wint-to-pointer-cast]
     76 |         ice_fmsg_put_ptr(fmsg, "dma-ptr", (void *)event->tx_ring->dma);
        |   

Perhaps a good solution is to add a helper similar to ice_fmsg_put_ptr,
but which takes a dma_buf_t rather than a void * as it's last argument.

> +	devlink_fmsg_binary_pair_put(fmsg, "desc", event->tx_ring->desc,
> +				     size_mul(event->tx_ring->count,
> +					      sizeof(struct ice_tx_desc)));
> +	devlink_fmsg_obj_nest_end(fmsg);
> +
> +	return 0;
> +}
