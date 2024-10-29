Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 358EF9B531C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Oct 2024 21:12:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE61840583;
	Tue, 29 Oct 2024 20:12:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RFUvKmkwX6QX; Tue, 29 Oct 2024 20:12:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 704A54058A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730232757;
	bh=aYeDjnJ9XjjabwCbCHH6fW3AjTnql2GKv5MU7+hVLE0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=59388suqF1XpCfrX8R7LgqnUf3SZavmxj3fnRVZ7wWojnCs/Aym/IzEEfEf+IabIh
	 dXNGfbB08Cs3OmP23f4Wz/0WX6QRukVDhwB5BhWzo9w4LJ1v0Kc6H9ZrEv/vLJHs34
	 zgISPf8l5uOXFabkHcfTeyEYBl46Ay1po8gkT9WObwhsIUsqlVbNNKgTjmOPbnTKzS
	 he7Y3eSxe72T2T4Ij7pf7TO/5k/SDlsRb5g946Y1Ukl+FrQK5co5L9bRPqLJZXXLFq
	 2HBC8jThid4TdrT9i93t8r4eEXnKl9pfOwG0c0XVzTu5+snDdaL6R2UtSaI/k2pMma
	 RFAAoD29F0V0Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 704A54058A;
	Tue, 29 Oct 2024 20:12:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 952454EC0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 20:12:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 837054058A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 20:12:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LtsSG_3D9i8g for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Oct 2024 20:12:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::629; helo=mail-pl1-x629.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0FBB24057F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0FBB24057F
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0FBB24057F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 20:12:33 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id
 d9443c01a7336-20ca388d242so55222215ad.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 13:12:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730232753; x=1730837553;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=aYeDjnJ9XjjabwCbCHH6fW3AjTnql2GKv5MU7+hVLE0=;
 b=egray9aIp5BPAWwuKz4KQ1lIYoS2FkyawkS3l5tGwsGR+KD6jMg1TbG6rQPJxKnTFb
 3XHCqMRfXwsJmOPSqolR5rJBLfqe5M3KTFSe80a7SwDZzVB970G2iZxEdt3UAXFMfL6q
 aQMoeZFB/wcmbakGnKVLyX5Z/HfC/FyfP++VyxT2Ishbg0m/ECOiGX2A+kumAxO92BMn
 0oPlJhovkMp3QR2jrXQfyxBXW+Q4lkMPISLCTwURGmiHplFJyCQgwrLTok7Qo0sl16DI
 wKghmOSJ1LFjqoMmXjCUDFA6gVKZyBl1+rmf3SpBCpfo5IB9q0wXXqsj6JNINgvMOo4S
 Li6Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVfiip48bISlchvhLcAd6AGnt+H9rbza8pp4gaCEm+AeGyvqSn0jh5pTP2jseNEsL0q9gaLWHPJOuE9bk7OgE0=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy5zgKAvuPkhCtUp52qEcRJX3QHDB9Dzn7QbFnhJvjS+qjKFdmi
 8UcNFEaf05PT7yPXAE2zI7vtY8aD97dzze5wY1OiuJ0kk8oFoiFxnwXwGVH1zmI=
X-Google-Smtp-Source: AGHT+IGUOvUKsYl+v6XsSJnfSFz7opvXhNHNYeTGLJ2ZfxGHrI8y/ZFsuIcwco2C5yyMyOskSAYVrQ==
X-Received: by 2002:a17:902:d4c9:b0:20b:7e1e:7337 with SMTP id
 d9443c01a7336-210c689ab32mr200616595ad.13.1730232753076; 
 Tue, 29 Oct 2024 13:12:33 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-210bc0864d7sm70113735ad.303.2024.10.29.13.12.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2024 13:12:32 -0700 (PDT)
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
Date: Tue, 29 Oct 2024 20:12:15 +0000
Message-Id: <20241029201218.355714-1-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1730232753; x=1730837553; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=aYeDjnJ9XjjabwCbCHH6fW3AjTnql2GKv5MU7+hVLE0=;
 b=B44T1oCFTGN/M1k2VrGXEPM1GVUdBBKi+7d1gLqMgCJgggsWf2urSF0V3v7V9SHGfY
 1Rztz4FtaXYbOpPovhx1uPr0kxVKVm0Wfx5N1xRtaZOhie26GfcfLcxAASwhb9WgJ7Xg
 GFD0wJ/WmWwVOdBmcHsd8zs6htmIRNQjYeOdQ=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=B44T1oCF
Subject: [Intel-wired-lan] [PATCH iwl-next v6 0/2] igc: Link IRQs and queues
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

Welcome to v6.

See changelog below and in each patch for changes from v5 [1].

This revision was created due to a report from Vitaly [2], that my v5
should use different function and variable names, like igb.

As you'll see, I've modified patch 2 to use __igc_resume instead of
__igc_do_resume and bool rpm instead of bool need_rtnl.

I retest the patches on each revision using my igc hardware as
documented in the commit messages. I have no idea how to test
suspend/resume (or if my NUC even supports that), so the power
management bits are untested.

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

[1]: https://lore.kernel.org/netdev/20241028195243.52488-1-jdamato@fastly.com/
[2]: https://lore.kernel.org/netdev/f02044c0-1d90-49f8-8a2d-00ec84fba27a@intel.com/

v6:
  - Adjusts patch 2 to use different names: __igc_resume instead of
    __igc_do_resume and bool rpm instead of bool need_rtnl. No other
    functional changes were introduced.

v5: https://lore.kernel.org/netdev/20241028195243.52488-1-jdamato@fastly.com/
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
 drivers/net/ethernet/intel/igc/igc_main.c | 59 +++++++++++++++++++----
 drivers/net/ethernet/intel/igc/igc_xdp.c  |  2 +
 3 files changed, 54 insertions(+), 9 deletions(-)


base-commit: c093e2b9768b3a5cd7a37ea654cd47094519f843
-- 
2.25.1

