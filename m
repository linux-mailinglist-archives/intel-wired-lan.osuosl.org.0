Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E8099D900
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Oct 2024 23:30:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D3E680FB8;
	Mon, 14 Oct 2024 21:30:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4mDs59Ar1olL; Mon, 14 Oct 2024 21:30:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A7F980FB9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728941430;
	bh=o+VyLQJDda5qPJG1fPPKSJPMELfF1NGTd/R4wmdZQaU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=yrZbKll8noDSdoJ3TRyoT2zj7FjOUpSrP89OFPlmzhT53kLY8mMfGMahptUE53h6i
	 pK4hdFHmPYE8zu98/LvrCe/oflLDtgaQ0qt8dFlL4g6vUUX4hUNEeavbkKUJIfhKPP
	 X8FIZF8BzaqBeI63WjASZ7Ni1jPPJnZ581MnnH1/jZif9Vbme5FQGijyBYaZBvp6dM
	 9qyrluGd4fxGUQMHiRfHeFzZ2OBNDv3d8kU/m7CpUIRtBCNN13MV/Wx4laUzZE+f4K
	 XEJY5TqlAwjNpVSCCULIIgWuxCEcDG3RTl453Q9kmEIMTfW8WqalgCH0dkHXZX4JS5
	 I1Hmf4P42DpKg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A7F980FB9;
	Mon, 14 Oct 2024 21:30:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8834C1BF3DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 21:30:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 82C0D402F3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 21:30:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rIoWtAAddk0x for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Oct 2024 21:30:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::635; helo=mail-pl1-x635.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 434C3402A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 434C3402A8
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 434C3402A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 21:30:25 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id
 d9443c01a7336-20cf3e36a76so11900205ad.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 14:30:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728941425; x=1729546225;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=o+VyLQJDda5qPJG1fPPKSJPMELfF1NGTd/R4wmdZQaU=;
 b=PJQ76AYfdiOTjyv+8rBwavPY9xldA39s71HMPQ40NoBodw5oxN9JHrI27gC+TxWobw
 ru6uUdqcIqDk5UqtRGmvJitb0JTIl+ryeXaCRZ6XITvd0VlhrthBlL6T09qcSyoYT1iI
 tZnhEy0+4whrpLwNgbN68+4FtC1r6Cx7WsMMCmJj+z/NxOmdcMSnJ6uzJAJmyM1FPl2v
 f97exQbaj2t+UUE4VO9iPK11kqeYQfaQ7wr5dCrZUTraIltLcrx7wMXTJakKonDXvHPh
 rKS8SESUwqDlDua7UjxtBclQbPmpEjaYgwO0H187qfS0BcMq/iZtPHOm1G+GOTt8mnKq
 Zpog==
X-Forwarded-Encrypted: i=1;
 AJvYcCVsmJjzhcqjwfoK3uPyBoIRk0x8Kmk9ZPcqsaa/5fbOMAbHrc5KeA6+t+aIvC5H6nZWxEDYddG/InSKYkS7sZ8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxEXp4ZKqFFOSTNGhBrhMIjCF5ATmg6skgineDthhAwf4OLuCq3
 /mUIlGpdBBzl1qvJHMnEqtCIyFmaZ9TbXdmvgaTT3+2fO7WON5dE0dYmrXjCs4U=
X-Google-Smtp-Source: AGHT+IE3xgA3WQrzZiPsFMr/VZiJGc90cpU5Zyfzew+lfIaXONPM/rnaXq1ihZIG6cOXGviq0kaUJA==
X-Received: by 2002:a17:902:d487:b0:20c:bda8:3a10 with SMTP id
 d9443c01a7336-20cbda83bcdmr94374715ad.37.1728941424998; 
 Mon, 14 Oct 2024 14:30:24 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20c8bc1a54esm70197495ad.73.2024.10.14.14.30.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2024 14:30:24 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Date: Mon, 14 Oct 2024 21:30:09 +0000
Message-Id: <20241014213012.187976-1-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1728941425; x=1729546225; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=o+VyLQJDda5qPJG1fPPKSJPMELfF1NGTd/R4wmdZQaU=;
 b=nf9qowg4CxmZBK/1iswuQwQZkERTJV4BcyYH5EB8jCctP/hbq/aFAbQt6V/cLj+UvK
 qOaHHHHDfN/TOs64Y9s/4zwSVvZA9go2XXMyIpXJfc5CLYbnoS8vHdc7PT3OkQl8zJaZ
 mCmDoaO5lKppf0mY7PglM+BZj8gY67UJOuGIU=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=nf9qowg4
Subject: [Intel-wired-lan] [RFC net-next v2 0/2] igc: Link IRQs and queues
 to NAPIs
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, vinicius.gomes@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Joe Damato <jdamato@fastly.com>, kurt@linutronix.de,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 "open list:XDP eXpress Data Path" <bpf@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Greetings:

Welcome to v2, still an RFC. See changelog below and in each patch for
changes from v1 [1].

This series adds support for netdev-genl to igc so that userland apps
can query IRQ, queue, and NAPI instance relationships. This is useful
because developers who have igc NICs (for example, in their Intel NUCs)
who are working on epoll-based busy polling apps and using
SO_INCOMING_NAPI_ID, need access to this API to map NAPI IDs back to
queues.

See the commit messages of each patch for example output I got on my igc
hardware.

I've taken the feedback from both Kurt Kanzenbach and Vinicius Costa
Gomes to handle the IGC_FLAG_QUEUE_PAIRS bug and the XDP case
(respectively) from v1.

If this implementation looks OK, I will follow up in a few days with an
official (non-RFC) submission.

Thanks to reviewers and maintainers for their comments/feedback!

Thanks,
Joe

[1]: https://lore.kernel.org/lkml/20241003233850.199495-1-jdamato@fastly.com/

v2:
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

Joe Damato (2):
  igc: Link IRQs to NAPI instances
  igc: Link queues to NAPI instances

 drivers/net/ethernet/intel/igc/igc.h      |  3 ++
 drivers/net/ethernet/intel/igc/igc_main.c | 61 +++++++++++++++++++++--
 drivers/net/ethernet/intel/igc/igc_xdp.c  |  2 +
 3 files changed, 62 insertions(+), 4 deletions(-)


base-commit: 01b6b9315f15f199a206c8b3bd3e051584237d7e
-- 
2.25.1

