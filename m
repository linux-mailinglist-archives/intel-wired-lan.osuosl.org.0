Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B063C9AB908
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 23:53:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 61BD5606F5;
	Tue, 22 Oct 2024 21:53:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gKnCRhpfMgty; Tue, 22 Oct 2024 21:53:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D0C06065D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729633982;
	bh=27PH9KJY9xP4iasns3riOle1zadFd8sn/XZWx1MVstg=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=NmEifciC9EUnURI4DgW9aY869971caROkw7qR2V0b4hMsBV2vszICnpvjB2CLREMW
	 H3FF7s3bWa8Jo+TGDQ9Bz8qHLG4EH4RCqu3UM3W01JVa8LeHuZshzzcaRZ6kmVxQOZ
	 9f8R78m3am2xN1k+UVGJVdwnRGI6c+UDbjhPmXtx/BgiVJd2tkJNXNAi9Q6/L6lWax
	 RW6Rg+9KBv+Ygc4VblRRH8X3/xaLgjWRGifF+K4zM3fdEfGeXeAtHIfheUmNT1e2N6
	 mjiD0heTKJRAGoEHjrRgDYfc6DcTaJHYwVKAwhxdh7PF9nEkILbGbWK/vZO8+FWYdX
	 NSerMxs5YOCWA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D0C06065D;
	Tue, 22 Oct 2024 21:53:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id EAA4E4C2A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 21:53:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D882E6065D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 21:53:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0Iy-0jRapdho for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 21:53:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::535; helo=mail-pg1-x535.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CFFD760664
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CFFD760664
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CFFD760664
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 21:52:59 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id
 41be03b00d2f7-7ea12e0dc7aso3936524a12.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 14:52:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729633979; x=1730238779;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=27PH9KJY9xP4iasns3riOle1zadFd8sn/XZWx1MVstg=;
 b=wH5QH0kfAaW/IGCZQmt7Us+xfJ8AlUAv/PoX6KldGMC2RVmBvuiyr0s8+abxSJzkMg
 G9u5cgobk/YGocOG+BNnUbIYbGBjAin9Wjfs/12Ln6hKfc6IcoJp4ZRzbjFxPvnYlrY9
 /GdzEKtQwskwr30uPNw8bqSMANcm7Z2nYOE4ieMG7VKRjouwLI/ToImPGPKkwW2hXwJ1
 rUOJFtegpiem0dGGRogApQSYNy1zKurBHSO9BLU0OZOlimjyPhB1uiqEg3yHowvUZuek
 jvXfVcMOrwy7hBx0rvR44Z3yRtMEIp4SbcEDpTfDAPBigUGep7P0Xd+iDPdv+4PgCHi4
 Xvwg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWGOC07khqJuq/Ry3dGZt1hpRWvbwoFrWEzxp+PYiLs5k1nXK9ffWVGJX5XUKWlVwKhIOX9m6YYDJl8Z5rdFng=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzo70o2NdaYvkj/uvjWhkPydEvMr0+sX+U0pqurMPjjj1YzM5jS
 UWCIoNpnk+TfMKimtBGsh6gs2I0DtmUzfs26vg5091m7y4hUqUZErUkLthhNfik=
X-Google-Smtp-Source: AGHT+IF+g37BAJ/gs+9A6578kVnZDjD+Y9MC0VzOxCi8OhwVz1VkHyQIRvT2Mam28b3hFk4yJnnKLw==
X-Received: by 2002:a05:6a21:4581:b0:1d8:fdf8:973c with SMTP id
 adf61e73a8af0-1d978b3dd71mr507279637.29.1729633979041; 
 Tue, 22 Oct 2024 14:52:59 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-71ec13d75b9sm5194375b3a.131.2024.10.22.14.52.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2024 14:52:58 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Cc: jacob.e.keller@intel.com, kurt@linutronix.de, vinicius.gomes@intel.com,
 Joe Damato <jdamato@fastly.com>, Alexei Starovoitov <ast@kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
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
Date: Tue, 22 Oct 2024 21:52:43 +0000
Message-Id: <20241022215246.307821-1-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1729633979; x=1730238779; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=27PH9KJY9xP4iasns3riOle1zadFd8sn/XZWx1MVstg=;
 b=HyG6obJMwcFDqHCJHj8OKE7zuzWjp4nnIBgnSDSCif35uKC4s1FM1jStcu1fa1gXp3
 5Ej5hBva5yrQ1qVgabevy9K9WXCvEWSkGC9r3m7y7rKzs6vl/l1EketlXDushi3NE20/
 SvQkWon5rhl1uppjddshIHHsPo5XTEFr95Axk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=HyG6obJM
Subject: [Intel-wired-lan] [iwl-next v4 0/2] igc: Link IRQs and queues to
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

Welcome to v4.

See changelog below and in each patch for changes from v3 [1].

This revision was inspired by a bug report for e1000 [2] and analysis of
the call paths for igc on the mailing list [3] to ensure that RTNL is
held in all appropriate paths.

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

[1]: https://lore.kernel.org/netdev/20241018171343.314835-1-jdamato@fastly.com/
[2]: https://lore.kernel.org/netdev/8cf62307-1965-46a0-a411-ff0080090ff9@yandex.ru/
[3]: https://lore.kernel.org/netdev/ZxgK5jsCn5VmKKrH@LQ3V64L9R2/

v4:
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

 drivers/net/ethernet/intel/igc/igc.h      |  2 ++
 drivers/net/ethernet/intel/igc/igc_main.c | 44 ++++++++++++++++++++---
 drivers/net/ethernet/intel/igc/igc_xdp.c  |  2 ++
 3 files changed, 43 insertions(+), 5 deletions(-)


base-commit: d811ac148f0afd2f3f7e1cd7f54de8da973ec5e3
-- 
2.25.1

