Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D59026D3634
	for <lists+intel-wired-lan@lfdr.de>; Sun,  2 Apr 2023 10:29:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D98C81F8B;
	Sun,  2 Apr 2023 08:29:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D98C81F8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680424193;
	bh=7iMEUqORT0hkthY073bS4FbNrtWCBAWdkJQrRew2XIk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=SQJzahzEsNm1216o1hX6b0lGodjWy4zpdFoYXq0wrPW+2Oj3hsqa9OxVnFwcq5nb/
	 YgnltFGfX8xgONqutD4YApIyRcG7bXUMPdUkRq4VMXJoEXj5CNVpcJrTcEaVCQRU6B
	 uA7INYSM2Vf8FO9MxJQAHw3k3U4KLl46CxUGx+KtM07WMrj1K9DmxfjpmQoej17Oqe
	 dUIHJhY/vJ6mV7te5rtYKZ4F0m0pu634fMCP7sUiJeBRSyhw5Qhb1o+4hoU8gweeCQ
	 aIMgUK89dd+ioaeAOEEV4thMasw60LzEh1f8blhlmfYjpggArBykR9lodCDoUCm3gW
	 JlXpUaKQab7hQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nhVRr7yL2uEO; Sun,  2 Apr 2023 08:29:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6BFC581F6A;
	Sun,  2 Apr 2023 08:29:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6BFC581F6A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2F6681BF57B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Apr 2023 08:29:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F37AD81F6A
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Apr 2023 08:29:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F37AD81F6A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wpo76EG9lnjE for <intel-wired-lan@lists.osuosl.org>;
 Sun,  2 Apr 2023 08:29:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 813B281F2D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 813B281F2D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Apr 2023 08:29:45 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-497-pC-a7scgODqWaQKYKe72UQ-1; Sun, 02 Apr 2023 04:29:40 -0400
X-MC-Unique: pC-a7scgODqWaQKYKe72UQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BC516811E7C;
 Sun,  2 Apr 2023 08:29:39 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.12])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 26D1E175AD;
 Sun,  2 Apr 2023 08:29:39 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 2459830736C72;
 Sun,  2 Apr 2023 10:29:38 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Sun, 02 Apr 2023 10:29:38 +0200
Message-ID: <168042409059.4051476.8176861613304493950.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680424184;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=fjMU4p9+DXZHNmOHLlNl/8Bfex0ApnD0yNYoZFOYHXs=;
 b=OHGqFfDD8k1/QCR16zT4wwLFn9RocYL5ecElMK0NIv8QxRfMpPNuPWopk1RnaAaVv12k0q
 uDsGPEkHtKHEjChv6rsiAHPL/YS7Ql05Ppe3cy02TbrFPODiwjxe2/ss80Wt6Pn0dJ3aQm
 KnnNixCluuJswZeCbtdx4Mnmvf/2644=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=OHGqFfDD
Subject: [Intel-wired-lan] [PATCH bpf V6 0/5] XDP-hints: API change for
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

---
V6:
 - Resend: selftest failure is unrelated (in xdp_do_redirect)
   Issue in fccca038f300 ("veth: take into account device reconfiguration for xdp_features flag")
V5:
 - Fixes for checkpatch.pl
 - Change function signature for all xmo_rx_hash calls

Jesper Dangaard Brouer (5):
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
 .../selftests/bpf/progs/xdp_hw_metadata.c     | 14 +++--
 .../selftests/bpf/progs/xdp_metadata.c        |  6 +-
 .../selftests/bpf/progs/xdp_metadata2.c       |  7 ++-
 tools/testing/selftests/bpf/xdp_hw_metadata.c |  2 +-
 tools/testing/selftests/bpf/xdp_metadata.h    |  1 +
 14 files changed, 180 insertions(+), 24 deletions(-)

--

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
