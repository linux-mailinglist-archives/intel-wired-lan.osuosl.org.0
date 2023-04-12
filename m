Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2796DFEFB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 21:48:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B150741F00;
	Wed, 12 Apr 2023 19:48:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B150741F00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681328926;
	bh=fES0jBd5d4COKAZg75/YZ6Q+0klfxWb06kjAWgsQ1I8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=jRUcfs+O8KyqXgmp1a4rcRn3idNRneaXh43gsMUGRbaljtOAhmY40JMJo9absOdvM
	 WqpD3hsvLwYGHeNeeS6i6I9OLTWp1sqhBe7uYcO+5Qn7fbgpO+0OZcNaPkVToa42IL
	 bTMPMn8rscSjuo9K6miuBpKH5e8xlmxocUwrr+WMwWJ9xST5D50ZEomhkWBURovYQy
	 xUI09k/yzs9di1+68IXnM6eu0FXEIKYZu7BSv1vpjdA7u1DQJEL7fcsytvkQ7rQ4+E
	 xyOI+O6411/ulqhYD9LYwuTTpnTdqzlP6RkN6TfqxDWuyuisrJQfhKLVRJYQay3hYO
	 5fpAS1gywWZvA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dYpsUZDjiyFH; Wed, 12 Apr 2023 19:48:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76B8C41DE5;
	Wed, 12 Apr 2023 19:48:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76B8C41DE5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E0831C3D46
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 19:48:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2D1FC815CF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 19:48:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D1FC815CF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 833tC7g8oq6S for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 19:48:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67BDE81551
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 67BDE81551
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 19:48:39 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-645-AbRl1TENOq6TPs0u1ZC_uw-1; Wed, 12 Apr 2023 15:48:33 -0400
X-MC-Unique: AbRl1TENOq6TPs0u1ZC_uw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E52A18996E8;
 Wed, 12 Apr 2023 19:48:31 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7F4651415117;
 Wed, 12 Apr 2023 19:48:31 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 4B71D307372E8;
 Wed, 12 Apr 2023 21:48:30 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Wed, 12 Apr 2023 21:48:30 +0200
Message-ID: <168132888942.340624.2449617439220153267.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681328918;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=nASbvUSnsaeFCXOfTkcdVrQuPHnFeQGcQeYLYHUVI1w=;
 b=gWzqZ+V9ukMUbnd8jkuRtM+/XTG+N6kZ/H1U1IXWUIFa9e5em1Av+5Ob4oZk3XfDAiSxhA
 YFqN0mFSUHIGBKY4VpHF7tsPKae6NC5LCBEjHLGJbDiM6sHLrAGkdj91fUN49MOSrQUv7Z
 TzRmNdzufelhq2MEcMs1bB/nizMhxyw=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=gWzqZ+V9
Subject: [Intel-wired-lan] [PATCH bpf V10 0/6] XDP-hints: API change for
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
Cc: ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 boon.leong.ong@intel.com, hawk@kernel.org, xdp-hints@xdp-project.net,
 daniel@iogearbox.net, linux-rdma@vger.kernel.org, john.fastabend@gmail.com,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 Jesper Dangaard Brouer <brouer@redhat.com>, kuba@kernel.org, pabeni@redhat.com,
 martin.lau@kernel.org, larysa.zaremba@intel.com, leon@kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, tariqt@nvidia.com,
 yoong.siang.song@intel.com, saeedm@nvidia.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Current API for bpf_xdp_metadata_rx_hash() returns the raw RSS hash value,
but doesn't provide information on the RSS hash type (part of 6.3-rc).

This patchset proposal is to change the function call signature via adding
a pointer value argument for providing the RSS hash type.

Patchset also removes all bpf_printk's from xdp_hw_metadata program
that we expect driver developers to use. Instead counters are introduced
for relaying e.g. skip and fail info.

---

Jesper Dangaard Brouer (6):
      selftests/bpf: xdp_hw_metadata remove bpf_printk and add counters
      xdp: rss hash types representation
      mlx5: bpf_xdp_metadata_rx_hash add xdp rss hash type
      veth: bpf_xdp_metadata_rx_hash add xdp rss hash type
      mlx4: bpf_xdp_metadata_rx_hash add xdp rss hash type
      selftests/bpf: Adjust bpf_xdp_metadata_rx_hash for new arg


 drivers/net/ethernet/mellanox/mlx4/en_rx.c    | 22 ++++++-
 drivers/net/ethernet/mellanox/mlx4/mlx4_en.h  |  3 +-
 .../net/ethernet/mellanox/mlx5/core/en/xdp.c  | 63 ++++++++++++++++++-
 drivers/net/veth.c                            | 10 ++-
 include/linux/mlx5/device.h                   | 14 ++++-
 include/linux/netdevice.h                     |  3 +-
 include/net/xdp.h                             | 47 ++++++++++++++
 net/core/xdp.c                                | 10 ++-
 .../selftests/bpf/prog_tests/xdp_metadata.c   |  2 +
 .../selftests/bpf/progs/xdp_hw_metadata.c     | 42 +++++++------
 .../selftests/bpf/progs/xdp_metadata.c        |  6 +-
 .../selftests/bpf/progs/xdp_metadata2.c       |  7 ++-
 tools/testing/selftests/bpf/xdp_hw_metadata.c | 10 ++-
 tools/testing/selftests/bpf/xdp_metadata.h    |  4 ++
 14 files changed, 205 insertions(+), 38 deletions(-)

--

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
