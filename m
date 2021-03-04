Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB45832CEE4
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Mar 2021 09:54:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E5B96F5B7;
	Thu,  4 Mar 2021 08:54:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6z9U68u_GMLi; Thu,  4 Mar 2021 08:54:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B8206F5B6;
	Thu,  4 Mar 2021 08:54:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 887401BF3B9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Mar 2021 08:54:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 75EA183F12
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Mar 2021 08:54:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KocS4AEMxEXL for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Mar 2021 08:54:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6BA848372B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Mar 2021 08:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614848050;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0ALBoN6GuLRnOc5Ing6JXs8nS20VaQ0+cVKOusK5494=;
 b=DkjlGN6W96V9ejSrv1efkCOc8QumOnZIzEJ4RS/xu0Sn9xoW+qrlyrPKMi54MojltZbShD
 iv4B1wjv3QrkSt35d9GvvhH1LA3bTDdrWYDJFvAVvncEIEGwN7pD4ZXa8Oi4Yz/YI7pfzj
 6D8ExTJXtzLUjkfbWjMY5F7VSZzJwdU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-594-ag5dkR-hMJW0UvGJkkLgAA-1; Thu, 04 Mar 2021 03:54:06 -0500
X-MC-Unique: ag5dkR-hMJW0UvGJkkLgAA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D712157;
 Thu,  4 Mar 2021 08:54:04 +0000 (UTC)
Received: from carbon (unknown [10.36.110.37])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0A5F810023AB;
 Thu,  4 Mar 2021 08:53:58 +0000 (UTC)
Date: Thu, 4 Mar 2021 09:53:56 +0100
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <20210304095356.054a8778@carbon>
In-Reply-To: <20210303153928.11764-2-maciej.fijalkowski@intel.com>
References: <20210303153928.11764-1-maciej.fijalkowski@intel.com>
 <20210303153928.11764-2-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Subject: Re: [Intel-wired-lan] [PATCH intel-net 1/3] i40e: move headroom
 initialization to i40e_configure_rx_ring
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
Cc: netdev@vger.kernel.org, brouer@redhat.com, Jean Hsiao <jhsiao@redhat.com>,
 Zhiqian Guan <zhguan@redhat.com>, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org, bjorn.topel@intel.com,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed,  3 Mar 2021 16:39:26 +0100
Maciej Fijalkowski <maciej.fijalkowski@intel.com> wrote:

> i40e_rx_offset(), that is supposed to initialize the Rx buffer headroom,
> relies on I40E_RXR_FLAGS_BUILD_SKB_ENABLED flag.
> 
> Currently, the callsite of mentioned function is placed incorrectly
> within i40e_setup_rx_descriptors() where Rx ring's build skb flag is not
> set yet. This causes the XDP_REDIRECT to be partially broken due to
> inability to create xdp_frame in the headroom space, as the headroom is
> 0.
> 
> For the record, below is the call graph:
> 
> i40e_vsi_open
>  i40e_vsi_setup_rx_resources
>   i40e_setup_rx_descriptors
>    i40e_rx_offset() <-- sets offset to 0 as build_skb flag is set below
> 
>  i40e_vsi_configure_rx
>   i40e_configure_rx_ring
>    set_ring_build_skb_enabled(ring) <-- set build_skb flag
> 
> Fix this by moving i40e_rx_offset() to i40e_configure_rx_ring() after
> the flag setting.
> 
> Fixes: f7bb0d71d658 ("i40e: store the result of i40e_rx_offset() onto i40e_ring")
> Reported-by: Jesper Dangaard Brouer <brouer@redhat.com>
> Co-developed-by: Jesper Dangaard Brouer <brouer@redhat.com>
> Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 13 +++++++++++++
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c | 12 ------------
>  2 files changed, 13 insertions(+), 12 deletions(-)

Acked-by: Jesper Dangaard Brouer <brouer@redhat.com>
Tested-by: Jesper Dangaard Brouer <brouer@redhat.com>

I'm currently looking at extending samples/bpf/ xdp_redirect_map to
detect the situation.  As with this bug the redirect tests/sample
programs will just report really high performance numbers (because
packets are dropped earlier due to err).   Knowing what performance
numbers to expect, I could see that they were out-of-spec, and
investigated the root-cause.

I assume Intel QA tested XDP-redirect and didn't find the bug due to
this.  Red Hat QA also use samples/bpf/xdp* and based on the reports I
get from them, I could not blame them if this bug would slip through,
as the tool reports "good" results.

-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
