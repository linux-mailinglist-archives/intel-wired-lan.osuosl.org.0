Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 819526DBC99
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Apr 2023 21:24:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 579A141DFB;
	Sat,  8 Apr 2023 19:24:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 579A141DFB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680981894;
	bh=oN+vuk+uRuSYy7BAwK2J7/iQ7vBMXLXv4jCPzSQiUWQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=SRvBpyimICRRj4YrQ6pjFY59pRWcGc4pc8G0LoJWknv+X2Ayl0JRewfpoiQ9Bbf1R
	 JWBUQ0Oj4OMKfQxA/27F7u9oYEMqWdcmhe/pxILDF3oFk0HpMHnlUJStuSvh8ty2Re
	 /ey/AQjbDtQSYkgmj1vbxtmpIMg7bnIuDBWqTU/dE8z/YoDDiwSf01UJLH8nYzBy4s
	 a50AqFBjxYvRI9vojJTWTnV1sJlSJW3N7UQBcO1cEzNQGUT+vZ+n8C67bG/n9IZhFs
	 cQNMpLb8tizuuV0pskoN+obyL9QpljV1P+AEngQhphO90alkxh2ai4KxtIr75drCY8
	 M+hy7QxeOSt1Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uSxaIrH1w1sC; Sat,  8 Apr 2023 19:24:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9CDB41D65;
	Sat,  8 Apr 2023 19:24:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C9CDB41D65
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 469491BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Apr 2023 19:24:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 14D2460B8C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Apr 2023 19:24:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14D2460B8C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rhsQ2Csz2TlI for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Apr 2023 19:24:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7ED360B73
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D7ED360B73
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Apr 2023 19:24:44 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-170-eMMT_24CMTGEkuTyNfCu2g-1; Sat, 08 Apr 2023 15:24:39 -0400
X-MC-Unique: eMMT_24CMTGEkuTyNfCu2g-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C8BE029AA2E7;
 Sat,  8 Apr 2023 19:24:37 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3E273492C14;
 Sat,  8 Apr 2023 19:24:37 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 4ED6B307372E8;
 Sat,  8 Apr 2023 21:24:36 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Sat, 08 Apr 2023 21:24:36 +0200
Message-ID: <168098183268.96582.7852359418481981062.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680981883;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=WHos8LM0VawSvsV7ilkV4J+3kFj+NjV9a1WkRGl+L9k=;
 b=CJ0ZOJ3aFlqXV34dD3Wlmmnem03FbTuGFNq3bcrgO6weRUcHR4fKXxAT60hUlB9SqoGzjY
 3mR8h7VGz/Tqq6oXi1CvUDNWtOtVbE1XQL7cZLLPIIPqJDL9UdmTfR4JLzF1VNxOfJkpS+
 oIoqTiLyumNPtZa9Py76lmqDycmhSl0=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=CJ0ZOJ3a
Subject: [Intel-wired-lan] [PATCH bpf V7 0/7] XDP-hints: API change for
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

Patchset also disables all bpf_printk's from xdp_hw_metadata program
that we expect driver developers to use.

---

Jesper Dangaard Brouer (7):
      selftests/bpf: xdp_hw_metadata default disable bpf_printk
      selftests/bpf: Add counters to xdp_hw_metadata
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
 .../selftests/bpf/progs/xdp_hw_metadata.c     | 42 ++++++++++---
 .../selftests/bpf/progs/xdp_metadata.c        |  6 +-
 .../selftests/bpf/progs/xdp_metadata2.c       |  7 ++-
 tools/testing/selftests/bpf/xdp_hw_metadata.c | 10 ++-
 tools/testing/selftests/bpf/xdp_metadata.h    |  4 ++
 14 files changed, 213 insertions(+), 30 deletions(-)

--

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
