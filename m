Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1863690C6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Apr 2021 13:04:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 13AEF41829;
	Fri, 23 Apr 2021 11:04:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3-UD-Kc56Gq4; Fri, 23 Apr 2021 11:04:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C506D40472;
	Fri, 23 Apr 2021 11:04:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4963E1BF33F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 11:04:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 372898354B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 11:04:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kgDHm0hcLwds for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Apr 2021 11:04:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1F8CC83260
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 11:04:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619175876;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cDqRU4xoeQBq+o0x4/mB6P0WkqM1pYsz0fuPPw/7z8s=;
 b=hxV6M7YQLW9SLnw0qhKanFnNScNzir6oAfGYnbDrr04GA+IbQp6FmfgUyd3eI24gc+F95u
 4SRMYyOW+KgYKD2fznLRcEaucgmDKDQqz2nW42CDEFbN74NMFwDgS2t7uQTGNWsQO6ssFN
 lj9rlWGL0KwT6KIxaMbrNix4hp4Cg7A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-571-4IUDAQOzOgOBTwnbUgIRUw-1; Fri, 23 Apr 2021 07:04:35 -0400
X-MC-Unique: 4IUDAQOzOgOBTwnbUgIRUw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 90FF5817469;
 Fri, 23 Apr 2021 11:04:33 +0000 (UTC)
Received: from carbon (unknown [10.36.110.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 521D660BE5;
 Fri, 23 Apr 2021 11:04:28 +0000 (UTC)
Date: Fri, 23 Apr 2021 13:04:27 +0200
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>
Message-ID: <20210423130427.1bbe4df2@carbon>
In-Reply-To: <20210423095955.15207-1-magnus.karlsson@gmail.com>
References: <20210423095955.15207-1-magnus.karlsson@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Subject: Re: [Intel-wired-lan] [PATCH intel-net] i40e: fix broken XDP support
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
Cc: netdev@vger.kernel.org, brouer@redhat.com, intel-wired-lan@lists.osuosl.org,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 23 Apr 2021 11:59:55 +0200
Magnus Karlsson <magnus.karlsson@gmail.com> wrote:

> From: Magnus Karlsson <magnus.karlsson@intel.com>
> 
> Commit 12738ac4754e ("i40e: Fix sparse errors in i40e_txrx.c") broke
> XDP support in the i40e driver. That commit was fixing a sparse error
> in the code by introducing a new variable xdp_res instead of
> overloading this into the skb pointer. The problem is that the code
> later uses the skb pointer in if statements and these where not
> extended to also test for the new xdp_res variable. Fix this by adding
> the correct tests for xdp_res in these places.
> 
> Fixes: 12738ac4754e ("i40e: Fix sparse errors in i40e_txrx.c")
> Reported-by: Jesper Dangaard Brouer <brouer@redhat.com>
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)

Acked-by: Jesper Dangaard Brouer <brouer@redhat.com>

Tested-by: Jesper Dangaard Brouer <brouer@redhat.com>

I also tested that i40e works on my system again.
 Intel(R) Xeon(R) CPU E5-1650 v4 @ 3.60GHz

Running XDP on dev:i40e2 (ifindex:8) action:XDP_DROP options:no_touch
XDP stats       CPU     pps         issue-pps  
XDP-RX CPU      4       33,670,895  0          
XDP-RX CPU      total   33,670,895 

RXQ stats       RXQ:CPU pps         issue-pps  
rx_queue_index    4:4   33,670,900  0          
rx_queue_index    4:sum 33,670,900 


Running XDP on dev:i40e2 (ifindex:8) action:XDP_DROP options:read
XDP stats       CPU     pps         issue-pps  
XDP-RX CPU      4       31,424,994  0          
XDP-RX CPU      total   31,424,994 

RXQ stats       RXQ:CPU pps         issue-pps  
rx_queue_index    4:4   31,424,997  0          
rx_queue_index    4:sum 31,424,997 


Running XDP on dev:i40e2 (ifindex:8) action:XDP_TX options:swapmac
XDP stats       CPU     pps         issue-pps  
XDP-RX CPU      4       14,777,900  0          
XDP-RX CPU      total   14,777,900 

RXQ stats       RXQ:CPU pps         issue-pps  
rx_queue_index    4:4   14,777,893  0          
rx_queue_index    4:sum 14,777,893 


$ sudo ./xdp_redirect_map i40e2 i40e2
input: 8 output: 8
libbpf: elf: skipping unrecognized data section(24) .eh_frame
libbpf: elf: skipping relo section(25) .rel.eh_frame for section(24) .eh_frame
libbpf: Kernel error message: XDP program already attached
WARN: link set xdp fd failed on 8
ifindex 8:    8212980 pkt/s
ifindex 8:   11725145 pkt/s
ifindex 8:   11727939 pkt/s
ifindex 8:   11727640 pkt/s
ifindex 8:   11729593 pkt/s

-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
