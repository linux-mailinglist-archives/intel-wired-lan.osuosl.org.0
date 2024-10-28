Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB389B3ACF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Oct 2024 20:53:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F66480F08;
	Mon, 28 Oct 2024 19:53:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9_Vu1XRl8QRU; Mon, 28 Oct 2024 19:53:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA632810C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730145180;
	bh=dOgHVETNvwv0GrKYIJJt6UQ/Zkj1FG5o1aowTjEXfjQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gHBAccGBnSUOgaJ/kcWuKRDPFl1xHolOZER0A3OGiPUjFt1jwU2ZteYSCKQIcOkkt
	 i4XD8EzsaqUGiEo9gQUe4BS3dJpF7hc30hysb1ySlzAHobfvTpTSnEDMmd3O8ujw2+
	 SVuIhO2r8p0fehNMouLf07UKqCin8xR1ER+OWvVfXQ7B+PefsMqgSDLgSbhcHuESgM
	 1wbQf3bkLhU6xgKWn+K/6ttNTJzMb+30zNG4Goq9uhgDQGUW0IDVLYC2BssLUZNcD1
	 g33e0dbLxOvStMLalvYfYouHgZEnghjrepecPTHtTYAUlTEiDB8w8rVkICUy1frFK2
	 FU4KWNsE1zPZw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA632810C3;
	Mon, 28 Oct 2024 19:53:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1B181AEE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 19:52:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 15DA1405A2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 19:52:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dNNTLFLezMUY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Oct 2024 19:52:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1033; helo=mail-pj1-x1033.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A87CD4059E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A87CD4059E
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com
 [IPv6:2607:f8b0:4864:20::1033])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A87CD4059E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 19:52:57 +0000 (UTC)
Received: by mail-pj1-x1033.google.com with SMTP id
 98e67ed59e1d1-2e2d1858cdfso3302329a91.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 12:52:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730145177; x=1730749977;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=dOgHVETNvwv0GrKYIJJt6UQ/Zkj1FG5o1aowTjEXfjQ=;
 b=Y8BmAsr4FdRE7+IcNOwfKguYX73f+n7w2T2BjoJ6Q5kwtBHNrbJuYWQhaWERqJr2hZ
 kJ64tv7yrwiRGaP3QWtKQmv2pv0JCJ20vanNFNh30Iwk7kIxfEnKauimt9QmTYwrO83D
 KVtMYm7BG1DeS67Coj0lwScpvycbA/BuiEKP8/vk+OBHce4TTalYL6JcNSBh2P0lgsl5
 oyvnbGBFwteih7aa1ynKXMGHumozVuEAKmADog/0qmn3kZi7L4fJstFOO8u31strXe8W
 LBQdU3XTQ4+CYQSTIKiC3W6yQ5QgC0JRGwcQdUYokkMPp3dX7AqQ723V526YMUq/hQfR
 JIuA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWoOierm4596/+lQ9Co0f/P3AmF00dHcQzX9/b/LLHzLSUeHBP/MhtBzEZrGJ5CQD4mISvpVFhGWNr5IJ5GsRI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxtJUCTC8qAYY1CiKqwmuPla3XQPV2wxG5IX/7XhzJ1nwJFpuOo
 n/I3C1+u9gpgJ2e+AHzItAgA4cgDlfNzQ1ccm6Oqf7B89SXiCIzZGHFwMAjApsM=
X-Google-Smtp-Source: AGHT+IExbYvofPHEquOHcWrySfi2hLqRWDZWOOEDh1nkJ7OI4InzrhdBk3weEUkkN59f4LvmjpwrkA==
X-Received: by 2002:a17:90b:2d8c:b0:2e2:ca67:dade with SMTP id
 98e67ed59e1d1-2e8f11b8b96mr11239428a91.32.1730145176542; 
 Mon, 28 Oct 2024 12:52:56 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2e8e3771e64sm7695247a91.50.2024.10.28.12.52.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2024 12:52:55 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Cc: vitaly.lifshits@intel.com, jacob.e.keller@intel.com, kurt@linutronix.de,
 vinicius.gomes@intel.com, Joe Damato <jdamato@fastly.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
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
Date: Mon, 28 Oct 2024 19:52:40 +0000
Message-Id: <20241028195243.52488-1-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1730145177; x=1730749977; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=dOgHVETNvwv0GrKYIJJt6UQ/Zkj1FG5o1aowTjEXfjQ=;
 b=CSuO0dluF0oj0M/W4CbSjAMM0vmkNoaoBIDDOKYz5wVo2FST9h7tk4/Nog+e1Ocz3w
 htWaWmX7qhhzdJWekXEXlS6aTASD8ku7oZVctDJ+DHwan9l97pQzxbidEKflFhdgXtlE
 PAYqJjkQP4cEvA7B2s9hbNan3tUnjp/Sha0pI=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=CSuO0dlu
Subject: [Intel-wired-lan] [PATCH iwl-next v5 0/2] igc: Link IRQs and queues
 to NAPIs
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

Welcome to v5.

See changelog below and in each patch for changes from v4 [1].

This revision was created due to a report from Vitaly [2], that my v4
was re-introducing a potential deadlock in runtime_resume which was
fixed in commit: 6f31d6b: "igc: Refactor runtime power management flow."

As you'll see, I've modified patch 2 to include a small wrapper to
either hold rtnl (or not) depending on whether runtime_resume or resume
are being called.

Overall, this series adds support for netdev-genl to igc so that
userland apps can query IRQ, queue, and NAPI instance relationships.
This is useful because developers who have igc NICs (for example, in
their Intel NUCs) who are working on epoll-based busy polling apps and
using SO_INCOMING_NAPI_ID, need access to this API to map NAPI IDs back
to queues.

See the commit messages of each patch for example output I got on my igc
hardware.

Thanks to reviewers and maintainers for their comments/feedback!

Thanks,
Joe

[1]: https://lore.kernel.org/netdev/20241022215246.307821-1-jdamato@fastly.com/
[2]: https://lore.kernel.org/netdev/d7799132-7e4a-0ac2-cbda-c919ce434fe2@intel.com/

v5:
  - Add a small wrapper to patch 2 to only hold rtnl when resume is
    called, but avoid rtnl when runtime_resume is called which would
    trigger a deadlock.

v4: https://lore.kernel.org/netdev/20241022215246.307821-1-jdamato@fastly.com/
  - Fixed a typo in Patch 1's commit message for the "other" IRQ number
  - Based on a bug report for e1000, closer scrutiny of the code
    revealed two paths where rtnl_lock / rtnl_unlock should be added in
    Patch 2: igc_resume and igc_io_error_detected. The code added to
    igc_io_error_detected is inspired by ixgbe's
    ixgbe_io_error_detected

v3: https://lore.kernel.org/netdev/20241018171343.314835-1-jdamato@fastly.com/
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

 drivers/net/ethernet/intel/igc/igc.h      |  2 +
 drivers/net/ethernet/intel/igc/igc_main.c | 55 ++++++++++++++++++++---
 drivers/net/ethernet/intel/igc/igc_xdp.c  |  2 +
 3 files changed, 52 insertions(+), 7 deletions(-)


base-commit: b8ee7a11c75436b85fa1641aa5f970de0f8a575c
-- 
2.25.1

