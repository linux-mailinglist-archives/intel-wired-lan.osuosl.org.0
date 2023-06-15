Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C82731C1A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 17:02:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6325141949;
	Thu, 15 Jun 2023 15:02:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6325141949
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686841353;
	bh=MP/wpTkLZfOffY7PJxAWTm5drTuT7KJ79sG0y8Bfnjk=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=5AbtNYr10o61Q7P348lnTRDOBMDDD4ORKSOVo4nV4MTgzyDgZQBnoQV4nowWxP/5X
	 zj4IlFq5BXn2PD9InXTUIRsBSs70cKXbmLx/Q0dc4GymDoOz6sRoqXWTMtA9rFZ6Fj
	 qrp+Y1sfEncb5cFthlkNZThepByUNbptvL1JIGwrrrgPJwhbEJbRa2TcDO+QL6PfQ8
	 ll4QYOtMaKjvnPpxAhi8Mjcfq6pI7CFhk0hXuE0bRAJRqeTp3r+qiFCiy3OLKytkZe
	 FU+Y7pjsbfM6yokSm+kOQvKZw0YirH2jw1kNSFQOYR+XeogHK/d8WOtT0jy2MdUH+H
	 4jrAKvYA4clyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RbYiUvZ_ITjo; Thu, 15 Jun 2023 15:02:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 41ECA41938;
	Thu, 15 Jun 2023 15:02:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 41ECA41938
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 645401BF32A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 09:46:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3A90641F56
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 09:46:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A90641F56
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t3g7txHdn-9m for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 09:45:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B46641F51
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5B46641F51
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 09:45:58 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0537261BED;
 Thu, 15 Jun 2023 09:45:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF640C433C8;
 Thu, 15 Jun 2023 09:45:53 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
Date: Thu, 15 Jun 2023 11:45:36 +0200
MIME-Version: 1.0
Message-Id: <20230615-igc-err-ptr-v1-1-a17145eb8d62@kernel.org>
X-B4-Tracking: v=1; b=H4sIAL/dimQC/x2NwQrCQAwFf2XJ2cB2pSJeBT/Aq3jYpq9toKwlW
 0Uo/XeDxxkYZqMKU1S6hI0MH636Kg7NIZBMuYxg7Z0pxXSMp6ZlHYVhxstq3AKDIMm5j5m86HI
 Fd5aLTN6U9zy7XAyDfv+LB91v11Cw0nPffyFv31Z7AAAA
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.12.2
X-Mailman-Approved-At: Thu, 15 Jun 2023 15:02:27 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1686822357;
 bh=VXmgec0SvoWNjD+zQJUGR2dz0bJtpAmkZ85WuhMZ1Vk=;
 h=From:Date:Subject:To:Cc:From;
 b=ul02Ap/uEzBhWv5cvpcsaJ49I13Y8VZvNH5Lz1HvhDCmylTKEAaFsm2M3XlB7l1E7
 D9qWbeZtCI77KdL8iMwRa2zC26kh7u8TiVOK9Ja0OmiVBFdOemN/3NNEKpPigwEE8W
 c96Vto88G0n29VaVkOeWa5A/KfqIZy7+ZM5/ZkWwVNuoryumL7+mHaAS/+swfQECKv
 HdXS+ZbvFgplp//3I6dI0sGR54dkLMw/6hZuYIQtCe4SvHO9ThGbRNYXmJM6OUQMVM
 u/NQIweyXo9T0lWOtT/+xoUjwIIQTNZ9FsVhd7WxrIGSpCZp2q5nkvueUoo0WjRCnP
 EqWj4wLbDtf+Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ul02Ap/u
Subject: [Intel-wired-lan] [PATCH RFC net] igc: Avoid dereference of ptr_err
 in igc_clean_rx_irq()
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
Cc: Andre Guedes <andre.guedes@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jithu Joseph <jithu.joseph@intel.com>,
 netdev@vger.kernel.org, John Fastabend <john.fastabend@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Vedang Patel <vedang.patel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In igc_clean_rx_irq() the result of a call to igc_xdp_run_prog() is assigned
to the skb local variable. This may be an ERR_PTR.

A little later the following is executed, which seems to be a
possible dereference of an ERR_PTR.

	total_bytes += skb->len;

Avoid this problem by continuing the loop in which all of the
above occurs once the handling of the NULL case completes.

This proposed fix is speculative - I do not have deep knowledge of this
driver.  And I am concerned about the effect of skipping the following
logic:

  igc_put_rx_buffer(rx_ring, rx_buffer, rx_buffer_pgcnt);
  cleaned_count++;

Flagged by Smatch as:

  .../igc_main.c:2467 igc_xdp_run_prog() warn: passing zero to 'ERR_PTR'

Compile tested only.

Fixes: 26575105d6ed ("igc: Add initial XDP support")
Signed-off-by: Simon Horman <horms@kernel.org>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 88145c30c919..b58c8a674bd1 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2586,6 +2586,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 
 			total_packets++;
 			total_bytes += size;
+			continue;
 		} else if (skb)
 			igc_add_rx_frag(rx_ring, rx_buffer, skb, size);
 		else if (ring_uses_build_skb(rx_ring))

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
