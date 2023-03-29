Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 64FCF6CEF5C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 18:29:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 05B3A83D22;
	Wed, 29 Mar 2023 16:29:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05B3A83D22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680107356;
	bh=bI+Yi4Gh2q0m5WYblzxMvWgaXZ2aqhmqWTBxOX/6SiA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=mT7NxarpzptkQ4tXiq2an6ZtOyLG483BJ6SzZ98c9aKbOWRuL7HeVrVsDFzS4nh4h
	 rz/3Y0NE69m96nRIheqnYxfHNmd9qGGFy+1Q2m8RjH/jrwApeitEl83guQxU6I+4Or
	 IQKaWn66j8u/Gp765imZPIoIvKM/Q4KquK5FcalZYZR4Tbt8U4qttApKk8URIv8wT9
	 42do+xS3waJc7ovkNnKrLi3bNJKhwK6o5+A5DgCS67yLuaMJaV/eoA7b7o65aasKNw
	 577P+5htizUomGdkkfFML2wHKDqJKhnlRKCiG3BZanHqeb8G/ZCfsVQt6RGFMOf6ih
	 TJl4YNG5vYMlA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TMAYw2zmHpED; Wed, 29 Mar 2023 16:29:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0171C83D10;
	Wed, 29 Mar 2023 16:29:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0171C83D10
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DFB771BF294
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 16:29:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B7A7041D3A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 16:29:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B7A7041D3A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6f-1w9V2Hc-s for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 16:29:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D89C4000B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D89C4000B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 16:29:07 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-142-SNscpT1SPMeRb3UWBuCMQw-1; Wed, 29 Mar 2023 12:29:01 -0400
X-MC-Unique: SNscpT1SPMeRb3UWBuCMQw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B9C3F2806046;
 Wed, 29 Mar 2023 16:28:59 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5FD59492B00;
 Wed, 29 Mar 2023 16:28:59 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 368D430736C72;
 Wed, 29 Mar 2023 18:28:58 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>
Date: Wed, 29 Mar 2023 18:28:58 +0200
Message-ID: <168010726310.3039990.2753040700813178259.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680107346;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=LRGCUeVsUs6xmha+0hhW8PleaE0DpIvvn/LbxoOLCm4=;
 b=C/DJfQhP2XLiWg8JSd6io6PzWVsXhoUvys2a2vU4l/NEl2NUOwLql52/P0SoGn3ojLX2dL
 B060HS3kErfb9zGgvQ34Am123FW6gY7l909MCHVTPC6e6ljurK3trinpYJ1JD6E5epgfpl
 GnPIeXxD62QvI+e3qLwSzWztlr1vkDg=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=C/DJfQhP
Subject: [Intel-wired-lan] [PATCH bpf RFC-V2 0/5] XDP-hints: API change for
 RX-hash kfunc bpf_xdp_metadata_rx_hash
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, linux-kernel@vger.kernel.org, jesse.brandeburg@intel.com,
 kuba@kernel.org, pabeni@redhat.com, yoong.siang.song@intel.com,
 Jesper Dangaard Brouer <brouer@redhat.com>, boon.leong.ong@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net, edumazet@google.com, hawk@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Notice targeted 6.3-rc kernel via bpf git tree.

Current API for bpf_xdp_metadata_rx_hash() returns the raw RSS hash value,
but doesn't provide information on the RSS hash type (part of 6.3-rc).

This patchset proposal is to use the return value from
bpf_xdp_metadata_rx_hash() to provide the RSS hash type.

Alternatively we disable bpf_xdp_metadata_rx_hash() in 6.3-rc, and have
more time to nitpick the RSS hash-type bits.

---

Jesper Dangaard Brouer (5):
      xdp: rss hash types representation
      igc: bpf_xdp_metadata_rx_hash return xdp rss hash type
      veth: bpf_xdp_metadata_rx_hash return xdp rss hash type
      mlx5: bpf_xdp_metadata_rx_hash return xdp rss hash type
      mlx4: bpf_xdp_metadata_rx_hash return xdp rss hash type


 drivers/net/ethernet/intel/igc/igc_main.c     | 22 +++++-
 drivers/net/ethernet/mellanox/mlx4/en_rx.c    | 20 ++++-
 .../net/ethernet/mellanox/mlx5/core/en/xdp.c  | 61 +++++++++++++-
 drivers/net/veth.c                            |  7 +-
 include/linux/mlx5/device.h                   | 14 +++-
 include/net/xdp.h                             | 79 +++++++++++++++++++
 net/core/xdp.c                                |  4 +-
 7 files changed, 196 insertions(+), 11 deletions(-)

--
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Sr. Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
