Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FDC96CCB3D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Mar 2023 22:16:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30A0040144;
	Tue, 28 Mar 2023 20:16:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30A0040144
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680034569;
	bh=pkYLW2MamOCHnArf79Odl6q9Sxt5ePL3QoOHnbf1OY8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=OX6Z0o0bc6wz7ZbGmrL2pJPVxeCsi6lz/G2tTMouootRd3Dp9FdtQn9UM+yARbFC/
	 zEaPtNOWOwcaI4SJ2Xptt3dRaakBpA1oNvfFnSI28i8RDn0yBdcGQIGmSGYzKnFmR0
	 IwJHv39tPj+7GY/QlRa5IwiAceYzWssnKp7HTAKj1zw5bpq+osW6gwFXchs62ElBFU
	 HnA1GrE/3kZY8i3ubHegROYJw8fH6z5Nrlyj3gdGEy9jLsB5KEdRq/r0fXH6BkUlLx
	 rVOMStFX26sRz8QUwwl5xCFeJepYvWGfgeZB4yFDZGqqFyaZXeGc4Pyh+B7vWq1k25
	 EMcYSzGiAmZUw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fVOGNMKKZ-Da; Tue, 28 Mar 2023 20:16:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF6C740059;
	Tue, 28 Mar 2023 20:16:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF6C740059
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 489CE1BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 20:16:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2BC2E4005F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 20:16:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BC2E4005F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ixY9_zryQze9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Mar 2023 20:16:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5321340058
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5321340058
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 20:16:01 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-592-OoImuCilPmWJnwZP-4tI8Q-1; Tue, 28 Mar 2023 16:15:55 -0400
X-MC-Unique: OoImuCilPmWJnwZP-4tI8Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 858DB101A553;
 Tue, 28 Mar 2023 20:15:54 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1E8DD440D6;
 Tue, 28 Mar 2023 20:15:54 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 21EE330736C72;
 Tue, 28 Mar 2023 22:15:53 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org
Date: Tue, 28 Mar 2023 22:15:53 +0200
Message-ID: <168003451121.3027256.13000250073816770554.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680034560;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=YigewdPBeYqOsJxoAFsWFxZgQfPRMsLTddttN90KAIE=;
 b=cpY9K7GoL9ctDNa/Q+O1NqSyNNNwq39QA4kDJDo+rtTiaBYkHvZsTk8j9qNuh0FathTJw2
 NNNayRNKLsg9GQ5yHBLEIdQhZZXz3ZFScTwBzQB5yDNfFheeZPzsaJHF8x3n+EV3dhn8eO
 Vc5oNZIsut6irFMbwpE/d0a6ZSz0YdQ=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=cpY9K7Go
Subject: [Intel-wired-lan] [PATCH bpf RFC 0/4] XDP-hints: API change for
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
 ast@kernel.org, jesse.brandeburg@intel.com, kuba@kernel.org,
 edumazet@google.com, pabeni@redhat.com, Stanislav Fomichev <sdf@google.com>,
 yoong.siang.song@intel.com, Jesper Dangaard Brouer <brouer@redhat.com>,
 boon.leong.ong@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net, hawk@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Notice targeted 6.3-rc kernel via bpf git tree.

Current API for bpf_xdp_metadata_rx_hash() returns the raw RSS hash value,
but doesn't provide information on the RSS hash type (part of 6.3-rc).

This patchset proposal is to use the return value from
bpf_xdp_metadata_rx_hash() to provide the RSS hash type.

---

Jesper Dangaard Brouer (4):
      xdp: rss hash types representation
      igc: bpf_xdp_metadata_rx_hash return xdp rss hash type
      veth: bpf_xdp_metadata_rx_hash return xdp rss hash type
      mlx5: bpf_xdp_metadata_rx_hash return xdp rss hash type


 drivers/net/ethernet/intel/igc/igc_main.c     | 22 ++++++-
 .../net/ethernet/mellanox/mlx5/core/en/xdp.c  | 61 ++++++++++++++++++-
 drivers/net/veth.c                            |  2 +-
 include/linux/mlx5/device.h                   | 14 ++++-
 include/net/xdp.h                             | 54 ++++++++++++++++
 net/core/xdp.c                                |  4 +-
 6 files changed, 150 insertions(+), 7 deletions(-)

--

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
