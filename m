Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8A79A445E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2024 19:14:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9731160B5D;
	Fri, 18 Oct 2024 17:14:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b80damD9vEp6; Fri, 18 Oct 2024 17:14:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77A806072B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729271650;
	bh=CFjsAUn/PxYdzE4DD/nLrVfphyb/Zr3vviMVSUT4Zw0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=UfjUVm1i3ItG15LL9NidqhdfWdxZYzSkTDMb1yOQw3SP7KjmSvIX0ecU0sUi90Xw3
	 r8VZJYNWTZNR5Z4JD+JECvF3QnYMY7Ur8bWkZFTRmcT6n+k9+4WUU8zkhUOMfa7p+o
	 Ix2PCO7PY3pVgKo1YNykmb9oMnPvLjSDZA5fMiM4mkN5agmnoOWQ/vDyy4b6+nLU3v
	 h3cdGQ5t+T4ZjB9THuhmdrGIiU6JbWipdtuVywOte9jbifqIWiTnDuXcxz51GiuvVF
	 95XMuwkjqbtaFiNxx2+Mz5lakGXmaqPBM/f/8oqt8/qbascw+e6FiylyAA3gQNGN2S
	 uwdnWr5Puk3cA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77A806072B;
	Fri, 18 Oct 2024 17:14:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 414D927E1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 17:14:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2F88340153
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 17:14:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oeLjwNRCMuEC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2024 17:14:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::631; helo=mail-pl1-x631.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CE90A40132
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE90A40132
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CE90A40132
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 17:14:05 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id
 d9443c01a7336-20cdb889222so24761955ad.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 10:14:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729271645; x=1729876445;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=CFjsAUn/PxYdzE4DD/nLrVfphyb/Zr3vviMVSUT4Zw0=;
 b=r1DTcHEVZF8vpNhPb6HLHVqkKEu1j+7QMc9wzvzXMLVZk/BPWJsO6t5/yuyAoXMYzG
 Dklzn8foPq3YRJifWCtr2aJalbjwFxDpnyQpTlwCx5xgwUb9JfeCvYzL+oBFaebJ1SEs
 eWoReXzxi3/ucBCA5zrdUS3FPr+Siu07MrtfP7z4nJGneH8ZEN/385gCxH222/ZilLgi
 8cK+IKXcHDJ59lwTy/+eM8AS6YnRS6niNKMTfaewlfrjgn0Qz4l2hC7mV/ZHkfDxcW/U
 gtz3gz/3G43KvPZwdEQjQXQg9vbOWQtxYqS7EYfT9ElOlO1sacVjgr0maw1jwQ9lDSYL
 begg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVD6NJAC+xMLRbDroQkTcj+2bKQtyv9hEBE/GRsg26MdZioxzrEKQOSpbiBDbWg3m13ssxt0TsUNvPzDCuc5Ec=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxNP5Mhzrm2ZRqz7THGjV3Af6I1LPWQcDQ1lVCwcx6zDAeiTtE+
 XsFxqDYmO2bChM+BEuwPO9e3Daa+It4opjSfLOqVc4t+TZYtQw8FQPeLt1pNoqU=
X-Google-Smtp-Source: AGHT+IG7S25l5kYTZCLOYYG5W43ByabM2SSU7n5wk9MnoDpGPK4qQTjNKE74BI3vX8BOJC/OLuODWQ==
X-Received: by 2002:a17:903:24f:b0:20c:872f:6963 with SMTP id
 d9443c01a7336-20e5a8a4096mr32231115ad.33.1729271645283; 
 Fri, 18 Oct 2024 10:14:05 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20e5a71ecd2sm15000255ad.29.2024.10.18.10.14.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2024 10:14:04 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Cc: kurt@linutronix.de, vinicius.gomes@intel.com,
 Joe Damato <jdamato@fastly.com>, Alexei Starovoitov <ast@kernel.org>,
 bpf@vger.kernel.org (open list:XDP (eXpress Data Path)),
 Daniel Borkmann <daniel@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org (moderated list:INTEL ETHERNET DRIVERS),
 Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 linux-kernel@vger.kernel.org (open list), Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri, 18 Oct 2024 17:13:41 +0000
Message-Id: <20241018171343.314835-1-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1729271645; x=1729876445; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=CFjsAUn/PxYdzE4DD/nLrVfphyb/Zr3vviMVSUT4Zw0=;
 b=u0UN5oxSj+2BLJ5k5IfIVfvZeplHhWV6qZVnJaNbwEqa4GihmT2BkFNvxORtvC3vEK
 5T9hjaiJY694rgvXoreX8wqOfLQY/IqX4hZ6mhw662fe1NCfoSw+dQVBCQ98HkYgKJjK
 h2Dna+nvGpsqjj/aVOZAdDOyGDisPQXobGMd0=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=u0UN5oxS
Subject: [Intel-wired-lan] [net-next v3 0/2] igc: Link IRQs and queues to
 NAPIs
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Greetings:

Welcome to v3.

See changelog below and in each patch for changes from rfc v2 [1].

This series adds support for netdev-genl to igc so that userland apps
can query IRQ, queue, and NAPI instance relationships. This is useful
because developers who have igc NICs (for example, in their Intel NUCs)
who are working on epoll-based busy polling apps and using
SO_INCOMING_NAPI_ID, need access to this API to map NAPI IDs back to
queues.

See the commit messages of each patch for example output I got on my igc
hardware.

I've taken the feedback from both Kurt Kanzenbach and Vinicius Costa
Gomes to simplify the code from the rfc v2.

Thanks to reviewers and maintainers for their comments/feedback!

Thanks,
Joe

[1]: https://lore.kernel.org/netdev/Zw8QZowkIRM-8-U1@LQ3V64L9R2/T/

v3:
  - No longer an RFC
  - Patch 1: no changes
  - Patch 2:
      - Replace igc_unset_queue_napi with igc_set_queue_napi(..., NULL),
        as suggested by Vinicius Costa Gomes
      - Simplify implementation of igc_set_queue_napi as suggested by Kurt
        Kanzenbach, with a minor change to use the ring->queue_index

rfcv2: https://lore.kernel.org/netdev/20241014213012.187976-1-jdamato@fastly.com/
  - Patch 1: update line wrapping to 80 chars
  - Patch 2:
    - Update commit message to include output for IGC_FLAG_QUEUE_PAIRS
      enabled and disabled
    - Significant refactor to move queue mapping code to helpers to be
      called from multiple locations
    - Adjusted code to handle IGC_FLAG_QUEUE_PAIRS disabled as suggested
      by Kurt Kanzenbach
    - Map / unmap queues in igc_xdp_disable_pool and
      igc_xdp_enable_pool, respectively, as suggested by Vinicius Costa
      Gomes to handle the XDP case

rfcv1: https://lore.kernel.org/lkml/20241003233850.199495-1-jdamato@fastly.com/


Joe Damato (2):
  igc: Link IRQs to NAPI instances
  igc: Link queues to NAPI instances

 drivers/net/ethernet/intel/igc/igc.h      |  2 ++
 drivers/net/ethernet/intel/igc/igc_main.c | 36 ++++++++++++++++++++---
 drivers/net/ethernet/intel/igc/igc_xdp.c  |  2 ++
 3 files changed, 36 insertions(+), 4 deletions(-)


base-commit: 160a810b2a8588187ec2b1536d0355c0aab8981c
-- 
2.25.1

