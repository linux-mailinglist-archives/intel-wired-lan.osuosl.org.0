Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 807852A65E1
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Nov 2020 15:09:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3938884578;
	Wed,  4 Nov 2020 14:09:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id te50Lg6Zwhi7; Wed,  4 Nov 2020 14:09:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8C4C284581;
	Wed,  4 Nov 2020 14:09:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3A49B1BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 14:09:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 357EE874E0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 14:09:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ss2viY6msj4j for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Nov 2020 14:09:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9A1A687477
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 14:09:33 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id j18so17386549pfa.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 04 Nov 2020 06:09:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=zvWqwPBwGiZ2MsWmzeudBmT5RUtfYx6rpVfpWTyIQxo=;
 b=kZ6/upa+TFOrj8kQW4cldkJOCRYF0SPuSig+boblXP8cXym15pxx3J3SLQ98uLdkjH
 +HwDr8imuWk4azRG834k7mFT9mbO96Pe6hom1wcUKO4b8lL0JLWzXm48LLnW7h1b5Lfe
 7rtjzkyxmP8VltYVz7OgDLGykA3IBssXOuCbySMN7iqNX/OKIgHV5j5sfnSh507LFxhq
 qQ+ohgShJ7vQyRxDnHVnESP8JHS4D9J21KbwGzcdFzIEpQURICqW9AbH5Okfc5QZCFgy
 nnVptr2zkJtUOCO78SfJVbdaFkm07Mi38ODZe+YZfH/I/xVVZIQA89s5AuF64Oq2cHUz
 +DgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=zvWqwPBwGiZ2MsWmzeudBmT5RUtfYx6rpVfpWTyIQxo=;
 b=oZIVpf3Mr8p4fnt3kQz39jFmvxK7QGnl1atNAZcQvSk1NuDBwbCsql6kXN2rRVXXbO
 18Qc/PGhzlQNLVs0TccBpFJ2Jx7KkLaQVt9curXtkasG/2vcyNXMSRJpvcRfC3mJOy0L
 bLozbzZkisrHGint7D3AoEm+XF97si4IJIO6bbId/lvh7zZUE3MlAGUBaj8po/P4AQ71
 v1id4HALddXVMQiHpIfVTy24ExemzkuDhFp39G8OX3A7sBjYkjxi42tHux4FD6Khej/+
 5WRh7jR8nlTsSzjTNSncCeNzc5aDYGDYn4gKjeT1DFDEpnvOXVSMoIbhE3gzQonymjP2
 NtaA==
X-Gm-Message-State: AOAM532Pi3f1ScB3WipK8pusTkwM5nMWaeXC/MltdnXlsWG/l93SonA9
 3V5knkkrS6BulZJXJHKrhAM=
X-Google-Smtp-Source: ABdhPJz+BhCegRf9c9cn7GWbuBbLx9eu+DDSpEFSV4VcIdy7x/7CoUhxcRa7zyDBnU/2UUCz8PK04A==
X-Received: by 2002:a62:2bd0:0:b029:18a:df0f:dd61 with SMTP id
 r199-20020a622bd00000b029018adf0fdd61mr15398993pfr.19.1604498973244; 
 Wed, 04 Nov 2020 06:09:33 -0800 (PST)
Received: from VM.ger.corp.intel.com ([192.55.55.43])
 by smtp.gmail.com with ESMTPSA id q123sm2724818pfq.56.2020.11.04.06.09.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Nov 2020 06:09:32 -0800 (PST)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, jonathan.lemon@gmail.com
Date: Wed,  4 Nov 2020 15:08:56 +0100
Message-Id: <1604498942-24274-1-git-send-email-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-wired-lan] [PATCH bpf-next 0/6] xsk: i40e: Tx performance
 improvements
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
Cc: maciejromanfijalkowski@gmail.com, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Subject: xsk: i40e: Tx performance improvements

This patch set improves the performance of mainly the Tx processing of
AF_XDP sockets. Though, patch 4 also improves the Rx path. All in all,
this patch set improves the throughput of the l2fwd xdpsock
application by around 14%. If we just take a look at Tx processing part,
it is improved by nearly 50%.

Hopefully the new batched Tx interfaces should be of value to other
drivers implementing AF_XDP zero-copy support. But patch #4 is generic
and will improve performance of all drivers when using AF_XDP sockets
(under the premises explained in that patch).

@Daniel. In patch 4, I apply all the padding required to hinder the
adjacency prefetcher to prefetch the wrong things. After this patch
set, I will submit another patch set that introduces
____cacheline_padding_in_smp in include/linux/cache.h according to your
suggestions. The last patch in that patch set will then convert the
explicit paddings that we have now to ____cacheline_padding_in_smp.

This patch has been applied against commit d0b3d2d7e50d ("Merge branch 'selftests/bpf: Migrate test_tcpbpf_user to be a part of test_progs'")

Structure of the patch set:

Patch 1: Introduce lazy Tx completions in the i40e driver.
Patch 2: For the xdpsock sample, increment Tx stats at sending instead
         of at completion.
Patch 3: Remove an unnecessary sw ring access from the Tx path in i40e.
Patch 4: Introduce padding between all pointers and fields in the ring.
Patch 5: Introduce batched Tx descriptor interfaces.
Patch 6: Use the new batched interfaces in the i40e driver to get higher
         throughput.

Thanks: Magnus

Magnus Karlsson (6):
  i40e: introduce lazy Tx completions for AF_XDP zero-copy
  samples/bpf: increment Tx stats at sending
  i40e: remove unnecessary sw_ring access from xsk Tx
  xsk: introduce padding between more ring pointers
  xsk: introduce batched Tx descriptor interfaces
  i40e: use batched xsk Tx interfaces to increase performance

 drivers/net/ethernet/intel/i40e/i40e_ethtool.c |   2 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c    |   4 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c    |  14 ++-
 drivers/net/ethernet/intel/i40e/i40e_txrx.h    |   3 +-
 drivers/net/ethernet/intel/i40e/i40e_xsk.c     | 140 +++++++++++++++++--------
 include/net/xdp_sock_drv.h                     |   7 ++
 net/xdp/xsk.c                                  |  43 ++++++++
 net/xdp/xsk_queue.h                            |  93 +++++++++++++---
 samples/bpf/xdpsock_user.c                     |   6 +-
 9 files changed, 249 insertions(+), 63 deletions(-)

--
2.7.4
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
