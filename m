Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7705E8386
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 22:28:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C89E41A62;
	Fri, 23 Sep 2022 20:28:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C89E41A62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663964924;
	bh=jAsrjYEwEEnEv74cevrJWoJEOADERALYLz+SblBeTSs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=COnBpnu3uJHrXwKAD1RztcQRlj4gnBt+CCuIKU6xjC/wJ78CyjJLyrFQKWeTgHjZ9
	 3plhbMs9i5cgr2kwI32vF1h3+4oemX1Dv0g+zMDLhp+RWWijmBpURzsnuuBkgaTW98
	 huQ1Yxgon3UuqGH864TB9CVsKKWrsEO8Xl/WCDlq9dulkjxcpa9CAm/2GRvphP0vjy
	 AaSIUP/ZVDhiYramYduClu2rxOLYRMulPic9P+5USzea8VHQTKAemw6aYcS8223sJe
	 TchO5F3Z6S1+70qNxpZd0mE6a0/3thLbsPZr2MUwkuEc7Polgwk+wn/nJCspWYjQJn
	 bNJQpqVpalI6Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wo5r9UneJD1B; Fri, 23 Sep 2022 20:28:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1014840908;
	Fri, 23 Sep 2022 20:28:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1014840908
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 264E81C2744
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0EF1640122
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0EF1640122
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ab_NdXUjJBCl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 20:28:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2AEAC400C4
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2AEAC400C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:27 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id
 j6-20020a17090a694600b00200bba67dadso1232185pjm.5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 13:28:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date;
 bh=WK0bGuD2tAxqqCEo+J+Vcp/Ca26AMBReT0rLu9mHjWo=;
 b=nBSd1+A4hbevGG5kOXJ5jA/b+//zqEYKOgYxowlTr1+2g5oWOhKPfIZ9edEHZUeOXL
 E5cYywzVMLjavL4n5c7w/XE75mLpd2uqV0d00zDg+Vrhye8xHvd46pVb19WZGo6WYNMl
 vJRblQMkpv0bI//St1QuMqQ2Gd9cpgwfJw1T3PvQpL2Vk50GqY6/2b7Cs0UTJqlwt5GR
 MJpFlzs9Iqk1+I0gjWglmci0MpdDqb/CGYtXqjYCNdIGTT9vheaoHF4FI1xOU+WUHHRA
 SqmP6N2xCNcwwcb/oNmjzvZIHm/QjxsMjaanje/YiPzRDvMCpZt+GcAaf8gVUcTTPRuk
 WygA==
X-Gm-Message-State: ACrzQf0emLmyYIAbhuwcMf1qLtAc0mC9OgYaMrCbCINvIxx3Td+yNbij
 +w6g36y0/6z1s/1LXKycxbIy0w==
X-Google-Smtp-Source: AMsMyM72+AZrvCjzG0TpHX1QWIyqlT+yIJNjqD6XgzhlX4O0lN7py3H0HnAbWO3N8SQjTT6PAgNtPQ==
X-Received: by 2002:a17:90b:17cf:b0:202:95a2:e310 with SMTP id
 me15-20020a17090b17cf00b0020295a2e310mr23778042pjb.76.1663964906615; 
 Fri, 23 Sep 2022 13:28:26 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 t2-20020aa79462000000b0053639773ad8sm6832080pfq.119.2022.09.23.13.28.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Sep 2022 13:28:25 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Fri, 23 Sep 2022 13:28:06 -0700
Message-Id: <20220923202822.2667581-1-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3290; h=from:subject;
 bh=6t8CTnxnusXxlhLGNxOhRs5l2789SVRbReUcmZgsVm4=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjLhbjKWBYYij171TDp3TdZmoZXSs7dXXkRN1eGod1
 9RjCiP+JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYy4W4wAKCRCJcvTf3G3AJnMrD/
 9AYEfZWXDOv2krdFVvtjQthCuAcgKZVOWzfaX/ZBtQRlYjuppFlG2ED1IEpuIhD0Ir80c5xPT0sC6o
 NsiMZw3mMRacDRN1JKTgZIg3s63bBHGPVJzr9Ms7LrhbLULxcInTn8Kmx1m+j/SOpIaVQbOz2eMMkZ
 hq15TaNyE7pBLM9SdfCtAyTs9eRAtVTuYrwZqvgSDjZ61SXuxi2k37cjMCmPHUTq/sIlGgP+BbmYVU
 h4TXPtyeel8GsxvMTh+ZJLwcMIm74VL8RdFIlqhUbTT1t2IHy48AtxwQQhaVX0FoQuaeRVIHGZ6W3H
 G8nJ1wcWlIzz3bYBH022dj7eQTsTkVCk6mdVQzd0tBA9yKVcNDoLBacX1DCakWCtJtW9hB3nI7wGSo
 dddWD44+KFc7CqbVkUJUBWKf0KFDD+RBxraKtYUvKQrLMx0oq545fsuTe+Wx85iePymCMknPsuIu7T
 RqpkKnn423yOsp7n6oWGz2jCxpOIGyTubVpWH5O/cuXKNmrDFZz8jsL8Js/2Of2DYZ5nq9YGQsiXeg
 2S+DEM7sXnFtd9YfGznNOceTXn0B6askh1+E8cTpDv624NJQscze/0hYjyKnnV10f4gf0FRf/X6SzA
 azwQEVgyfXgzY00yn92DXcmjocb95A4MMqEAG/m2SLnjQl6aJMp6R561rcig==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date;
 bh=WK0bGuD2tAxqqCEo+J+Vcp/Ca26AMBReT0rLu9mHjWo=;
 b=Bq646OyB58An4Ya0i1tJSWid5B14G8+Igfn3fxCST+TPDeet6KAginBjtHf1G+96pP
 KMbRLvXh6hUd7mw6RJpRt7mflnBYm9ibc+vu8XY4rLIHczU3FqSb/xj3tEHFFGtr1oRe
 sICyRsZLX9/FsK6U8cZvA0aX8m/YlImy46ePk=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=Bq646OyB
Subject: [Intel-wired-lan] [PATCH v2 00/16] slab: Introduce
 kmalloc_size_roundup()
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
Cc: llvm@lists.linux.dev, dri-devel@lists.freedesktop.org, "Ruhl,
 Michael J" <michael.j.ruhl@intel.com>, Eric Dumazet <edumazet@google.com>,
 linux-hardening@vger.kernel.org, Hyeonggon Yoo <42.hyeyoo@gmail.com>,
 Christoph Lameter <cl@linux.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 dev@openvswitch.org, x86@kernel.org, intel-wired-lan@lists.osuosl.org,
 David Rientjes <rientjes@google.com>, Miguel Ojeda <ojeda@kernel.org>,
 Yonghong Song <yhs@fb.com>, Paolo Abeni <pabeni@redhat.com>,
 linux-media@vger.kernel.org, Marco Elver <elver@google.com>,
 Kees Cook <keescook@chromium.org>, Josef Bacik <josef@toxicpanda.com>,
 linaro-mm-sig@lists.linaro.org, Jakub Kicinski <kuba@kernel.org>,
 David Sterba <dsterba@suse.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Alex Elder <elder@kernel.org>, linux-mm@kvack.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Pekka Enberg <penberg@kernel.org>,
 Daniel Micay <danielmicay@gmail.com>, netdev@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

The main details on this series are in patch #2's commit log. It's long,
so I won't repeat it again here for the v2. As before, I've tried to
trim the CC list.

v2:
- _keep_ ksize(), but remove instrumentation (makes patch series smaller)
- reorganized skbuff logic to avoid yet more copy/paste code
- added a WARN to a separate skbuff ksize usage
- add new refactorings: bpf, openvswitch, devres, mempool, kasan
- dropped "independent" patches: iwlwifi, x86/microcode/AMD (sent separately)
v1: https://lore.kernel.org/lkml/20220922031013.2150682-1-keescook@chromium.org

Notes:

Originally when I was going to entirely remove ksize(), there were a
handful for refactorings that just needed to do ksize -> __ksize. In
the end, it was cleaner to actually leave ksize() as a real function,
just without the kasan instrumentation. I wonder, however, if it should
be converted into a static inline now?

I dropped Jakub's Ack because I refactored that code a bunch more.

The 2 patches that didn't need to call kmalloc_size_roundup() don't need
to be part of this series. (One is already in -next, actually.)

I'd like to land at least the first two patches in the coming v6.1 merge
window so that the per-subsystem patches can be sent to their various
subsystems directly. Vlastimil, what you think?

Thanks!

-Kees


Kees Cook (16):
  slab: Remove __malloc attribute from realloc functions
  slab: Introduce kmalloc_size_roundup()
  skbuff: Proactively round up to kmalloc bucket size
  skbuff: Phase out ksize() fallback for frag_size
  net: ipa: Proactively round up to kmalloc bucket size
  igb: Proactively round up to kmalloc bucket size
  btrfs: send: Proactively round up to kmalloc bucket size
  dma-buf: Proactively round up to kmalloc bucket size
  coredump: Proactively round up to kmalloc bucket size
  openvswitch: Use kmalloc_size_roundup() to match ksize() usage
  bpf: Use kmalloc_size_roundup() to match ksize() usage
  devres: Use kmalloc_size_roundup() to match ksize() usage
  mempool: Use kmalloc_size_roundup() to match ksize() usage
  kasan: Remove ksize()-related tests
  mm: Make ksize() a reporting-only function
  slab: Restore __alloc_size attribute to __kmalloc_track_caller

 drivers/base/devres.c                     |  3 +
 drivers/dma-buf/dma-resv.c                |  9 ++-
 drivers/net/ethernet/intel/igb/igb_main.c |  5 +-
 drivers/net/ipa/gsi_trans.c               |  7 +-
 fs/btrfs/send.c                           | 11 +--
 fs/coredump.c                             |  7 +-
 include/linux/compiler_types.h            | 13 ++--
 include/linux/skbuff.h                    |  5 +-
 include/linux/slab.h                      | 46 +++++++++++--
 kernel/bpf/verifier.c                     | 49 +++++++++-----
 lib/test_kasan.c                          | 42 ------------
 mm/kasan/shadow.c                         |  4 +-
 mm/mempool.c                              |  2 +-
 mm/slab.c                                 |  9 ++-
 mm/slab_common.c                          | 62 ++++++++++-------
 net/core/skbuff.c                         | 82 ++++++++++++-----------
 net/openvswitch/flow_netlink.c            |  2 +-
 17 files changed, 192 insertions(+), 166 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
