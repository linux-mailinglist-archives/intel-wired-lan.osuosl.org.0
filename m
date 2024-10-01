Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B1198C999
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Oct 2024 01:53:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 31C4740621;
	Tue,  1 Oct 2024 23:53:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bqzLZdFCSSAF; Tue,  1 Oct 2024 23:53:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B6A14061F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727826814;
	bh=l5b1MjfGcd4AzGnOC54zgkOiQ8aJmBj62vqypQsDHj0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=GKqLzeDAHYBqIzaC5VVQuSEjDoGDoRoMF0o48tIqM7FZiGRRNBH03V41DmSPr+pNX
	 TV/kBOdk8cfk5NFxleOc+S2tTdYpKIjjuCHYzMeEbWhL8oz92Y+lNtPH3JLuYw/1dg
	 Vn916MWClJdQaE8ZKQpbD1YEEXAOtlSwSATVi7GIf/DXw7LAuikFyxJKgkTua+jqqd
	 ul5V7ZqaEyUHRYSrgZwLvLSRuELFyoJkxOxFjiGuT6s9bux7+j/GGjpLlB/+GaIciV
	 eQ2uIc6eTgJu147kwiW7YGAz9xhpUJx/vJOxemGvcJo6AXTJHGlrk/dH/rtxu647DF
	 N6jM6kllZC3CA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B6A14061F;
	Tue,  1 Oct 2024 23:53:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 25BE61BF31D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 23:53:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 13A0560752
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 23:53:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6ysLWlpmgE4p for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Oct 2024 23:53:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::52f; helo=mail-pg1-x52f.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 694AC60727
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 694AC60727
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com
 [IPv6:2607:f8b0:4864:20::52f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 694AC60727
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Oct 2024 23:53:30 +0000 (UTC)
Received: by mail-pg1-x52f.google.com with SMTP id
 41be03b00d2f7-7e6ba3f93fdso3859107a12.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 01 Oct 2024 16:53:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727826809; x=1728431609;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=l5b1MjfGcd4AzGnOC54zgkOiQ8aJmBj62vqypQsDHj0=;
 b=T0lkN6hzAV9SBpOC3Bkfq4pdxiGPtYbPIHjfUAioJDu0JqMgCMAv8PZKD+i/LMsqSR
 sO5U9T/AiXKXmkFCA72cHrh06ipprUlOgLBrc1Yl259SIXPQcvXjX/Y4OiNJQntMQ4n4
 MizQbOsay7Fi/+X++yZ0SniygZZOujZtbkryLVh74wxImoR5uc/b8jjxCVBkdiBugDg6
 ysBXUkKQR6Pu8yrg3eCmvvP/xaBVG3nXMTLcR3ZgEtkKPF1LX/FOdH5it1+cPN6juIun
 c4KllPeOoATOQnURbmkX3IhvamMth+J3XZe9tQBOKDl3NwV/LAWrLrBWjj0pJPGqLXoo
 WegA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWS0F0QRpx+5K/m/JswmfxVaOe0CHU8ztq3aH82v2cH9ZUYqyDmS9mQquJmHaAehdps+ic6tSHa8W74xzRK0V8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxqSCc5w7osDzNpmkqNr5t3wmcQXAhBB4A/hdKl5FgMEWZnvFEd
 6wCbFhGhH4rPRG7V6gnZgOt4SGqLr1svLDiui1d2FSFS3FL2rPGy3/fInO24024=
X-Google-Smtp-Source: AGHT+IEQAMwrZpWjGQQAXOYO52vF2PdxicVe8qt++Jyzou6vIB2WjqtQirUzcksNEccb8Ff5uAtXNg==
X-Received: by 2002:a17:90b:33c2:b0:2d8:7a3b:730d with SMTP id
 98e67ed59e1d1-2e1846a0525mr1731254a91.21.1727826809507; 
 Tue, 01 Oct 2024 16:53:29 -0700 (PDT)
Received: from localhost.localdomain ([2620:11a:c019:0:65e:3115:2f58:c5fd])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2e18f89e973sm213130a91.29.2024.10.01.16.53.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2024 16:53:29 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: netdev@vger.kernel.org
Date: Tue,  1 Oct 2024 23:52:31 +0000
Message-Id: <20241001235302.57609-1-jdamato@fastly.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1727826809; x=1728431609; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=l5b1MjfGcd4AzGnOC54zgkOiQ8aJmBj62vqypQsDHj0=;
 b=naDOofTi24RwNtnAIsdiJASvlv3mYuBlzuN+1qSBbkstnK5tw5gMbmVArITxV9topd
 xQN/NFgbwUysdx7iZ42xVU/vhfqAw6z28I0RykHqtiux1VBMOI2KH8Fjq0hZAkMtgh/H
 G7PY4jUBAgw4xvUsjzqd3Is9dNPVBMtEBwVzU=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=naDOofTi
Subject: [Intel-wired-lan] [RFC net-next v4 0/9] Add support for per-NAPI
 config via netlink
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
Cc: "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 mkarsten@uwaterloo.ca, Joe Damato <jdamato@fastly.com>, bjorn@rivosinc.com,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Daniel Jurgens <danielj@nvidia.com>, Breno Leitao <leitao@debian.org>,
 Mina Almasry <almasrymina@google.com>, Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
 willemdebruijn.kernel@gmail.com, Donald Hunter <donald.hunter@gmail.com>,
 amritha.nambiar@intel.com, Jonathan Corbet <corbet@lwn.net>,
 "open list:MELLANOX MLX4 core VPI driver" <linux-rdma@vger.kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, sdf@fomichev.me,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Jiri Pirko <jiri@resnulli.us>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Johannes Berg <johannes.berg@intel.com>,
 Michael Chan <michael.chan@broadcom.com>, skhawaja@google.com,
 Kory Maincent <kory.maincent@bootlin.com>, Leon Romanovsky <leon@kernel.org>,
 sridhar.samudrala@intel.com, David Ahern <dsahern@kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Greetings:

Welcome to RFC v4.

Very important and significant changes have been made since RFC v3 [1],
please see the changelog below for details.

A couple important call outs for this revision for reviewers:

  1. idpf embeds a napi_struct in an internal data structure and
     includes an assertion on the size of napi_struct. The maintainers
     have stated that they think anyone touching napi_struct should update
     the assertion [2], so I've done this in patch 3. 

     Even though the assertion has been updated, I've given the
     cacheline placement of napi_struct within idpf's internals no
     thought or consideration.

     Would appreciate other opinions on this; I think idpf should be
     fixed. It seems unreasonable to me that anyone changing the size of
     a struct in the core should need to think about cachelines in idpf.

  2. This revision seems to work (see below for a full walk through). Is
     this the behavior we want? Am I missing some use case or some
     behavioral thing other folks need?

  3. Re a previous point made by Stanislav regarding "taking over a NAPI
     ID" when the channel count changes: mlx5 seems to call napi_disable
     followed by netif_napi_del for the old queues and then calls
     napi_enable for the new ones. In this RFC, the NAPI ID generation
     is deferred to napi_enable. This means we won't end up with two of
     the same NAPI IDs added to the hash at the same time (I am pretty
     sure).

     Can we assume all drivers will napi_disable the old queues before
     napi_enable the new ones? If yes, we might not need to worry about
     a NAPI ID takeover function.
 
  4. I made the decision to remove the WARN_ON_ONCE that (I think?)
     Jakub previously suggested in alloc_netdev_mqs (WARN_ON_ONCE(txqs
     != rxqs);) because this was triggering on every kernel boot with my
     mlx5 NIC.

  5. I left the "maxqs = max(txqs, rxqs);" in alloc_netdev_mqs despite
     thinking this is a bit strange. I think it's strange that we might
     be short some number of NAPI configs, but it seems like most people
     are in favor of this approach, so I've left it.

I'd appreciate thoughts from reviewers on the above items, if at all
possible. Once those are addressed, modulo any feedback on the
code/white space wrapping I still need to do, I think this is close to
an official submission.

Now, on to the implementation:

This implementation allocates an array of "struct napi_config" in
net_device and each NAPI instance is assigned an index into the config
array.

Per-NAPI settings like:
  - NAPI ID
  - gro_flush_timeout
  - defer_hard_irqs

are persisted in napi_config and restored on napi_disable/napi_enable
respectively.

To help illustrate how this would end up working, I've added patches for
3 drivers, of which I have access to only 1:
  - mlx5 which is the basis of the examples below
  - mlx4 which has TX only NAPIs, just to highlight that case. I have
    only compile tested this patch; I don't have this hardware.
  - bnxt which I have only compiled tested. I don't have this
    hardware.

NOTE: I only tested this on mlx5; I have no access to the other hardware
for which I provided patches. Hopefully other folks can help test :)

This iteration seems to persist NAPI IDs and settings even when resizing
queues, see below, so I think maybe this is getting close to where we
want to land in terms of functionality.

Here's how it works when I test it on my system:

# start with 2 queues

$ ethtool -l eth4 | grep Combined | tail -1
Combined:	2

First, output the current NAPI settings:

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                         --dump napi-get --json='{"ifindex": 7}'
[{'defer-hard-irqs': 0,
  'gro-flush-timeout': 0,
  'id': 345,
  'ifindex': 7,
  'irq': 527},
 {'defer-hard-irqs': 0,
  'gro-flush-timeout': 0,
  'id': 344,
  'ifindex': 7,
  'irq': 327}]

Now, set the global sysfs parameters:

$ sudo bash -c 'echo 20000 >/sys/class/net/eth4/gro_flush_timeout'
$ sudo bash -c 'echo 100 >/sys/class/net/eth4/napi_defer_hard_irqs'

Output current NAPI settings again:

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                         --dump napi-get --json='{"ifindex": 7}'
[{'defer-hard-irqs': 100,
  'gro-flush-timeout': 20000,
  'id': 345,
  'ifindex': 7,
  'irq': 527},
 {'defer-hard-irqs': 100,
  'gro-flush-timeout': 20000,
  'id': 344,
  'ifindex': 7,
  'irq': 327}]

Now set NAPI ID 345, via its NAPI ID to specific values:

$ sudo ./tools/net/ynl/cli.py \
          --spec Documentation/netlink/specs/netdev.yaml \
          --do napi-set \
          --json='{"id": 345,
                   "defer-hard-irqs": 111,
                   "gro-flush-timeout": 11111}'
None

Now output current NAPI settings again to ensure only NAPI ID 345
changed:

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                         --dump napi-get --json='{"ifindex": 7}'

[{'defer-hard-irqs': 111,
  'gro-flush-timeout': 11111,
  'id': 345,
  'ifindex': 7,
  'irq': 527},
 {'defer-hard-irqs': 100,
  'gro-flush-timeout': 20000,
  'id': 344,
  'ifindex': 7,
  'irq': 327}]

Now, increase gro-flush-timeout only:

$ sudo ./tools/net/ynl/cli.py \
       --spec Documentation/netlink/specs/netdev.yaml \
       --do napi-set --json='{"id": 345,
                              "gro-flush-timeout": 44444}'
None

Now output the current NAPI settings once more:

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                         --dump napi-get --json='{"ifindex": 7}'
[{'defer-hard-irqs': 111,
  'gro-flush-timeout': 44444,
  'id': 345,
  'ifindex': 7,
  'irq': 527},
 {'defer-hard-irqs': 100,
  'gro-flush-timeout': 20000,
  'id': 344,
  'ifindex': 7,
  'irq': 327}]

Now set NAPI ID 345 to have gro_flush_timeout of 0:

$ sudo ./tools/net/ynl/cli.py \
       --spec Documentation/netlink/specs/netdev.yaml \
       --do napi-set --json='{"id": 345,
                              "gro-flush-timeout": 0}'
None

Check that NAPI ID 345 has a value of 0:

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                         --dump napi-get --json='{"ifindex": 7}'

[{'defer-hard-irqs': 111,
  'gro-flush-timeout': 0,
  'id': 345,
  'ifindex': 7,
  'irq': 527},
 {'defer-hard-irqs': 100,
  'gro-flush-timeout': 20000,
  'id': 344,
  'ifindex': 7,
  'irq': 327}]

Change the queue count, ensuring that NAPI ID 345 retains its settings:

$ sudo ethtool -L eth4 combined 4

Check that the new queues have the system wide settings but that NAPI ID
345 remains unchanged:

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                         --dump napi-get --json='{"ifindex": 7}'

[{'defer-hard-irqs': 100,
  'gro-flush-timeout': 20000,
  'id': 347,
  'ifindex': 7,
  'irq': 529},
 {'defer-hard-irqs': 100,
  'gro-flush-timeout': 20000,
  'id': 346,
  'ifindex': 7,
  'irq': 528},
 {'defer-hard-irqs': 111,
  'gro-flush-timeout': 0,
  'id': 345,
  'ifindex': 7,
  'irq': 527},
 {'defer-hard-irqs': 100,
  'gro-flush-timeout': 20000,
  'id': 344,
  'ifindex': 7,
  'irq': 327}]

Now reduce the queue count below where NAPI ID 345 is indexed:

$ sudo ethtool -L eth4 combined 1

Check the output:

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                         --dump napi-get --json='{"ifindex": 7}'
[{'defer-hard-irqs': 100,
  'gro-flush-timeout': 20000,
  'id': 344,
  'ifindex': 7,
  'irq': 327}]

Re-increase the queue count to ensure NAPI ID 345 is re-assigned the same
values:

$ sudo ethtool -L eth4 combined 2

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                         --dump napi-get --json='{"ifindex": 7}'
[{'defer-hard-irqs': 111,
  'gro-flush-timeout': 0,
  'id': 345,
  'ifindex': 7,
  'irq': 527},
 {'defer-hard-irqs': 100,
  'gro-flush-timeout': 20000,
  'id': 344,
  'ifindex': 7,
  'irq': 327}]

Create new queues to ensure the sysfs globals are used for the new NAPIs
but that NAPI ID 345 is unchanged:

$ sudo ethtool -L eth4 combined 8

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                         --dump napi-get --json='{"ifindex": 7}'
[...]
 {'defer-hard-irqs': 100,
  'gro-flush-timeout': 20000,
  'id': 346,
  'ifindex': 7,
  'irq': 528},
 {'defer-hard-irqs': 111,
  'gro-flush-timeout': 0,
  'id': 345,
  'ifindex': 7,
  'irq': 527},
 {'defer-hard-irqs': 100,
  'gro-flush-timeout': 20000,
  'id': 344,
  'ifindex': 7,
  'irq': 327}]

Last, but not least, let's try writing the sysfs parameters to ensure
all NAPIs are rewritten:

$ sudo bash -c 'echo 33333 >/sys/class/net/eth4/gro_flush_timeout'
$ sudo bash -c 'echo 222 >/sys/class/net/eth4/napi_defer_hard_irqs'

Check that worked:

$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/netdev.yaml \
                         --dump napi-get --json='{"ifindex": 7}'

[...]
 {'defer-hard-irqs': 222,
  'gro-flush-timeout': 33333,
  'id': 346,
  'ifindex': 7,
  'irq': 528},
 {'defer-hard-irqs': 222,
  'gro-flush-timeout': 33333,
  'id': 345,
  'ifindex': 7,
  'irq': 527},
 {'defer-hard-irqs': 222,
  'gro-flush-timeout': 33333,
  'id': 344,
  'ifindex': 7,
  'irq': 327}]

Thanks,
Joe

[1]: https://lore.kernel.org/netdev/20240912100738.16567-1-jdamato@fastly.com/
[2]: https://lore.kernel.org/netdev/20240925180017.82891-1-jdamato@fastly.com/T/#m56b743bd16304a626848b14f90cecb661f464b74 

rfcv4:
  - Updated commit messages of most patches
  - Renamed netif_napi_add_storage to netif_napi_add_config in patch 5
  - Added a NULL check in netdev_set_defer_hard_irqs and
    netdev_set_gro_flush_timeout for netdev->napi_config in patch 5
  - Removed the WARN_ON_ONCE suggested in an earlier revision
    in alloc_netdev_mqs from patch 5; it triggers every time on my mlx5
    machine at boot and needlessly spams the log
  - Added a locking adjustment suggested by Stanislav to patch 6 to
    protect napi_id in patch 5
  - Removed napi_hash_del from netif_napi_del in patch 5. netif_napi_del
    calls __netif_napi_del which itself calls napi_hash_del. The
    original code thus resulted in two napi_hash_del calls, which is
    incorrect.
  - Removed the napi_hash_add from netif_napi_add_weight in patch 5.
    NAPIs are added to the hash when napi_enable is called, instead.
  - Moved the napi_restore_config to the top of napi_enable in patch 5.
  - Simplified the logic in __netif_napi_del and removed napi_hash_del.
    NAPIs are removed in napi_disable.
  - Fixed merge conflicts in patch 6 so it applies cleanly

rfcv3:
  - Renamed napi_storage to napi_config
  - Reordered patches
  - Added defer_hard_irqs and gro_flush_timeout to napi_struct
  - Attempt to save and restore settings on napi_disable/napi_enable
  - Removed weight as a parameter to netif_napi_add_storage
  - Updated driver patches to no longer pass in weight

rfcv2:
  - Almost total rewrite from v1

Joe Damato (9):
  net: napi: Make napi_defer_hard_irqs per-NAPI
  netdev-genl: Dump napi_defer_hard_irqs
  net: napi: Make gro_flush_timeout per-NAPI
  netdev-genl: Dump gro_flush_timeout
  net: napi: Add napi_config
  netdev-genl: Support setting per-NAPI config values
  bnxt: Add support for persistent NAPI config
  mlx5: Add support for persistent NAPI config
  mlx4: Add support for persistent NAPI config to RX CQs

 Documentation/netlink/specs/netdev.yaml       | 25 +++++
 .../networking/net_cachelines/net_device.rst  |  5 +-
 drivers/net/ethernet/broadcom/bnxt/bnxt.c     |  3 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  2 +-
 drivers/net/ethernet/mellanox/mlx4/en_cq.c    |  3 +-
 .../net/ethernet/mellanox/mlx5/core/en_main.c |  2 +-
 include/linux/netdevice.h                     | 38 +++++++-
 include/uapi/linux/netdev.h                   |  3 +
 net/core/dev.c                                | 95 ++++++++++++++++---
 net/core/dev.h                                | 90 ++++++++++++++++++
 net/core/net-sysfs.c                          |  4 +-
 net/core/netdev-genl-gen.c                    | 14 +++
 net/core/netdev-genl-gen.h                    |  1 +
 net/core/netdev-genl.c                        | 57 +++++++++++
 tools/include/uapi/linux/netdev.h             |  3 +
 15 files changed, 320 insertions(+), 25 deletions(-)

-- 
2.25.1

