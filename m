Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0432AD450
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Nov 2020 12:02:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 683C920464;
	Tue, 10 Nov 2020 11:02:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cbozKNBqMdXO; Tue, 10 Nov 2020 11:02:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1EDE7226E9;
	Tue, 10 Nov 2020 11:02:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 48E051BF298
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 11:02:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 31CC320767
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 11:02:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KKw5xSM6CsU0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Nov 2020 11:02:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 0182322636
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 11:02:02 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id g7so11107906pfc.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 03:02:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=tIKGrt6J+Y8Csinv4zD15DzbbGsvacQGOQzlpB8RApI=;
 b=bUm3ugH/WQyhNNfXO9goc2kRRJEKo1uOcw7LOry7/J4y1zlDwvUDDi8gIoFKskhxtm
 m+uUuDpgB3XPI9912mg4Pqxliae4UHqzlRqTyodZUEhylKDCAZli0BdC5zpJ/4fuCNgD
 OD9BE8Jz3TflqDPfD7B6pPzHFwPWY/wNcrxzMp0t2HkgFuZqlY9QsGZTuPcw0rNjEyaC
 6YuC9MuA1C3/rucA0rxndCHNuW8f4VyqF0g8afL5fkyg4YYVoZggHk7jH27ys3rSSyr9
 X78TN8ls0CL/PzK9BRK9K9ba44eCUgErDxenOURPkGk3+L528zeEUkQDlBNAO+ggDyU+
 jLCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=tIKGrt6J+Y8Csinv4zD15DzbbGsvacQGOQzlpB8RApI=;
 b=TOdb267GKZFQjQfQGUOEIHHKyjtaxebRqUixtotXCT5kVTkLC/aNVkoTGVslhlgkue
 TUGDgQ8cor5+y7pZTMOEVHFEAKBS0Q3FeinhV6yjY0CxvQwOuw/tTKIAx/YhiC6I5Bfv
 7GyY4k2me04Q4PfMMGeM+cEStCILu/WksBXtQwwZ7/KJsKBHvpAEk1rpxB9skXz1dLgg
 ErZSCFD7yOyyqUWZu4mEisc9X28KEq8QJJmeveor+gnswG80sQrTxcNDGsB5hU+eWi2+
 ew6EKitxHEdVMX40dwtJrUgzY6m5Ks1qSu0iaS/hY5plvkQUkKfvQ9hbQDCJS9vwDYtl
 JXDg==
X-Gm-Message-State: AOAM530ZiQrfeBNLzPToMTWvjOEo8iS4byJk8J7F30Orn84Nsr3HwKIM
 1PlOocwMTRJNAg5IKILXtaM=
X-Google-Smtp-Source: ABdhPJxWM9IZLP4RLhCzAfXWllkGCFfb1U9El/YV03L7+W5dopH6LLZvyszz1tc78C3UAnUEVkaQBw==
X-Received: by 2002:a17:90a:ec17:: with SMTP id
 l23mr4584694pjy.154.1605006122575; 
 Tue, 10 Nov 2020 03:02:02 -0800 (PST)
Received: from VM.ger.corp.intel.com ([192.55.55.45])
 by smtp.gmail.com with ESMTPSA id 22sm3012024pjb.40.2020.11.10.03.01.57
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Nov 2020 03:02:02 -0800 (PST)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, jonathan.lemon@gmail.com,
 kuba@kernel.org, john.fastabend@gmail.com
Date: Tue, 10 Nov 2020 12:01:29 +0100
Message-Id: <1605006094-31097-1-git-send-email-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-wired-lan] [PATCH bpf-next v2 0/5] xsk: i40e: Tx performance
 improvements
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
Cc: maciejromanfijalkowski@gmail.com, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch set improves the performance of mainly the Tx processing of
AF_XDP sockets. Though, patch 3 also improves the Rx path. All in all,
this patch set improves the throughput of the l2fwd xdpsock
application by around 11%. If we just take a look at Tx processing part,
it is improved by 35% to 40%.

Hopefully the new batched Tx interfaces should be of value to other
drivers implementing AF_XDP zero-copy support. But patch #3 is generic
and will improve performance of all drivers when using AF_XDP sockets
(under the premises explained in that patch).

@Daniel. In patch 3, I apply all the padding required to hinder the
adjacency prefetcher to prefetch the wrong things. After this patch
set, I will submit another patch set that introduces
____cacheline_padding_in_smp in include/linux/cache.h according to your
suggestions. The last patch in that patch set will then convert the
explicit paddings that we have now to ____cacheline_padding_in_smp.

v1 -> v2:
* Removed added parameter in i40e_setup_tx_descriptors and adopted a
  simpler solution [Maciej]
* Added test for !xs in xsk_tx_peek_release_desc_batch() [John]
* Simplified return path in xsk_tx_peek_release_desc_batch() [John]
* Dropped patch #1 in v1 that introduced lazy completions. Hopefully
  this is not needed when we get busy poll. [Jakub]
* Iterate over local variable in xskq_prod_reserve_addr_batch() for
  improved performance
* Fixed the fallback path in xsk_tx_peek_release_desc_batch() so that
  it also produces a batch of descriptors, albeit by using the slower
  (but more general) older code. This improves the performance of the
  case when multiple sockets are sharing the same device and queue id.

This patch has been applied against commit f52b8fd33257 ("bpf: selftest: Use static globals in tcp_hdr_options and btf_skc_cls_ingress")

Structure of the patch set:

Patch 1: For the xdpsock sample, increment Tx stats at sending instead
         of at completion.
Patch 2: Remove an unnecessary sw ring access from the Tx path in i40e.
Patch 3: Introduce padding between all pointers and fields in the ring.
Patch 4: Introduce batched Tx descriptor interfaces.
Patch 5: Use the new batched interfaces in the i40e driver to get higher
         throughput.

Thanks: Magnus

Magnus Karlsson (5):
  samples/bpf: increment Tx stats at sending
  i40e: remove unnecessary sw_ring access from xsk Tx
  xsk: introduce padding between more ring pointers
  xsk: introduce batched Tx descriptor interfaces
  i40e: use batched xsk Tx interfaces to increase performance

 drivers/net/ethernet/intel/i40e/i40e_txrx.c |  11 +++
 drivers/net/ethernet/intel/i40e/i40e_txrx.h |   1 +
 drivers/net/ethernet/intel/i40e/i40e_xsk.c  | 131 +++++++++++++++++++---------
 include/net/xdp_sock_drv.h                  |   7 ++
 net/xdp/xsk.c                               |  57 ++++++++++++
 net/xdp/xsk_queue.h                         |  96 +++++++++++++++++---
 samples/bpf/xdpsock_user.c                  |   6 +-
 7 files changed, 253 insertions(+), 56 deletions(-)

--
2.7.4
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
