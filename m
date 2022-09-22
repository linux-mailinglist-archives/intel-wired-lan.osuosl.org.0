Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C5B5E5907
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 05:10:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 39BCF610B1;
	Thu, 22 Sep 2022 03:10:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39BCF610B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663816242;
	bh=/8d/W5Qag9lG6F2PAG6LJ1dcPUIpjfRB9upWtH+ugiE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=2AKJUt+V+Va+JbleGDMHpdlJeI8G2CqKG36cTp3CsF6dUuEY1+WZOJFwz3reSCDCn
	 ZqV2bnuy5xNwAfZ9zWcLrKtgFakRwVfmnvxAlxVG6VAYba/8hhvUju7IsTeZTXYNZK
	 Z0dWLc0g7HhgSqDrAsVe+HJ2y02e7U8X4jxncWtFnFx/6IcPXAnsf02ndzUgMeN4iW
	 VtSSetpt+Umcjtsh46VRmw0YGILiasIf3W1/4phQP1X66wsF2G6XUkGWcNC5BSK2Pr
	 EOnXWztyBsaQcsoxTOf/uhpxg3oC2/kV3hPqZkTJPgo8kqPGvWNxcRiCcfDRYFYVgJ
	 vXCWiTkKqOX1g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 81r3dzpdYoAE; Thu, 22 Sep 2022 03:10:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1FE4610A8;
	Thu, 22 Sep 2022 03:10:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1FE4610A8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 40DE51C1190
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 27931405BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 27931405BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9396bOEXCYkH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 03:10:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7AE9400EA
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com
 [IPv6:2607:f8b0:4864:20::52d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E7AE9400EA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 03:10:23 +0000 (UTC)
Received: by mail-pg1-x52d.google.com with SMTP id u69so7873524pgd.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 20:10:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date;
 bh=Vn16rLGrbDDjaKey8W5tBl33Bv/zSWk+J99kOTcbUQE=;
 b=t1M29HoS+kPNS9Xjl9tH9A1oZA35IgwbwuM2g3Q8EwSxCtyd1daThjZhPfjxMoULp3
 cn53ybPXcHVTRQdCDdoDq+Z6vM34sFCUxdZw3QqxVNsaADtwqNRWG2PcDMEgR+ydt91R
 VlOHZKGZkKa0QrYiWuNB79rxYwGOQaqPQZ16XoHHGSuVBERnx5+J7JaWAL+19iUPa2Hg
 gxJ/E3TxiTmf0fT8TQKYD3CYnWamutJ7Uakyor/L5N+l36CHDh1SRfjOyqmdOeGud3Kj
 Gb0qld0AKdkXN8VfuKvcpvo/kkni2OdaIkfWPMBSm5LCZPtZX2ULJNA1yHRw/pu+bXSL
 Wcfg==
X-Gm-Message-State: ACrzQf0d4WhNjilvegIAFHcb+nlg8UYY3svo4Lk/0H0ng7wl287jQ0c9
 20hj8v0CGMaFRgvI9PnQ5BkSAQ==
X-Google-Smtp-Source: AMsMyM5kbtfQXBGy+UgqYmJ89cy++RVO/0JPV5R9E0qA9P5D2h03X/wzrRsUp18SKmZq4kCTVEHctQ==
X-Received: by 2002:a05:6a00:2314:b0:546:ce91:89a3 with SMTP id
 h20-20020a056a00231400b00546ce9189a3mr1393996pfh.77.1663816223317; 
 Wed, 21 Sep 2022 20:10:23 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 q21-20020a170902bd9500b001785fa792f4sm2713016pls.243.2022.09.21.20.10.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Sep 2022 20:10:22 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Wed, 21 Sep 2022 20:10:01 -0700
Message-Id: <20220922031013.2150682-1-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4981; h=from:subject;
 bh=s4SaVhOuX1ncHIDJErOKK4BV4PgBIHpDN/h97+EEvV8=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjK9ISNp90ZWOfSod9OsDV3Pgtvy1E13pzv3DCmYbF
 tf0g8d2JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYyvSEgAKCRCJcvTf3G3AJkzwD/
 wIy7miKIK9lOw6XzF5heENIATw2uhYlNzjs0acveP+ZCyoyc5I/WgCfqRAXAmHiXedbujzGw2FDqqT
 syY2emsesoSNP3gS/GOKo8RJDSOQC9cSQtEjb+mjbPF7Fkzqn/ZGRwMTbs9UaBsTj9Tj2fL7NNiO9p
 dwoQsa5XdmYV2vD0OlPuGJimN4Jz3oRQSNVQkawd+40awqnlGD9yQqU64uaLr5mwdGgPkIuw3aLLFd
 5YiPwZw6bM1vgbnqBIuIHr/Z7XwM9EEapPwfqVdg/9dcOavsB633n1itcgsIqIDBioJGxOM0Ts7T86
 4Jlikvby9AVebqTHq4+YuA+QwXaCQlzI8PxvKGF5ANAjeoheIYOhRCZTs4Dpe3aQtWFnO3FqVYLrzT
 cc2coPLbTlqbCxnMzWO5XK6k+LQJYAS5r5kCiddkkzITSqNSDkHLgAWrVT+WoO8GDM5wBJEy4K4BDX
 /s7uUaLCb4fXbubShHzmjelGTOPkp/YtKLrJhFLmk8oztScmMVc7cus/HhSCEpn2aXj3zHgtLJzUfw
 SN01q4wcwhmS6xqLuWl/PHEsTyaH69+g+rznvzhR64VGsg0V8g68wKeLcHDL9rQRALeFd3MBdV5n9s
 KFNBVsIrnbnnS1eImonqd1xuYH0pPRl+0Ng4aVcGGvP/yynpBokeriuTdCqA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date;
 bh=Vn16rLGrbDDjaKey8W5tBl33Bv/zSWk+J99kOTcbUQE=;
 b=AE85R2lewHV6WpJoVOU7vYZV1LEmLLSYclgKQnUnY2xKVDNii5Fo/BkTgD3yH2NCT3
 SVad2gPnMgif6X0cTuEEQWajnZUigllF8Swz/AIt7V/3KOVHG8p4eV2QEjA7+Ig8Tbzm
 hCWNqHwmKS+0LzUeaR2ah/lhPJclhFqcjfbic=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=AE85R2le
Subject: [Intel-wired-lan] [PATCH 00/12] slab: Introduce
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
Cc: linux-wireless@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
 llvm@lists.linux.dev, dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Eric Dumazet <edumazet@google.com>, linux-hardening@vger.kernel.org,
 Sumit Semwal <sumit.semwal@linaro.org>, dev@openvswitch.org, x86@kernel.org,
 intel-wired-lan@lists.osuosl.org, David Rientjes <rientjes@google.com>,
 Miguel Ojeda <ojeda@kernel.org>, Yonghong Song <yhs@fb.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-media@vger.kernel.org,
 Marco Elver <elver@google.com>, Kees Cook <keescook@chromium.org>,
 Josef Bacik <josef@toxicpanda.com>, linaro-mm-sig@lists.linaro.org,
 Jakub Kicinski <kuba@kernel.org>, David Sterba <dsterba@suse.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jacob Shin <jacob.shin@amd.com>, linux-kernel@vger.kernel.org,
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

This series fixes up the cases where callers of ksize() use it to
opportunistically grow their buffer sizes, which can run afoul of the
__alloc_size hinting that CONFIG_UBSAN_BOUNDS and CONFIG_FORTIFY_SOURCE
use to perform dynamic buffer bounds checking. Quoting the first patch:


In the effort to help the compiler reason about buffer sizes, the
__alloc_size attribute was added to allocators. This improves the scope
of the compiler's ability to apply CONFIG_UBSAN_BOUNDS and (in the near
future) CONFIG_FORTIFY_SOURCE. For most allocations, this works well,
as the vast majority of callers are not expecting to use more memory
than what they asked for.

There is, however, one common exception to this: anticipatory resizing
of kmalloc allocations. These cases all use ksize() to determine the
actual bucket size of a given allocation (e.g. 128 when 126 was asked
for). This comes in two styles in the kernel:

1) An allocation has been determined to be too small, and needs to be
   resized. Instead of the caller choosing its own next best size, it
   wants to minimize the number of calls to krealloc(), so it just uses
   ksize() plus some additional bytes, forcing the realloc into the next
   bucket size, from which it can learn how large it is now. For example:

	data = krealloc(data, ksize(data) + 1, gfp);
	data_len = ksize(data);

2) The minimum size of an allocation is calculated, but since it may
   grow in the future, just use all the space available in the chosen
   bucket immediately, to avoid needing to reallocate later. A good
   example of this is skbuff's allocators:

	data = kmalloc_reserve(size, gfp_mask, node, &pfmemalloc);
	...
	/* kmalloc(size) might give us more room than requested.
	 * Put skb_shared_info exactly at the end of allocated zone,
	 * to allow max possible filling before reallocation.
	 */
	osize = ksize(data);
        size = SKB_WITH_OVERHEAD(osize);

In both cases, the "how large is the allocation?" question is answered
_after_ the allocation, where the compiler hinting is not in an easy place
to make the association any more. This mismatch between the compiler's
view of the buffer length and the code's intention about how much it is
going to actually use has already caused problems[1]. It is possible to
fix this by reordering the use of the "actual size" information.

We can serve the needs of users of ksize() and still have accurate buffer
length hinting for the compiler by doing the bucket size calculation
_before_ the allocation. Code can instead ask "how large an allocation
would I get for a given size?".

Introduce kmalloc_size_roundup(), to serve this function so we can start
replacing the "anticipatory resizing" uses of ksize().

[1] https://github.com/ClangBuiltLinux/linux/issues/1599
    https://github.com/KSPP/linux/issues/183
-------

And after adding kmalloc_size_roundup(), put it to use with the various
ksize() callers, restore the previously removed __alloc_size hint,
and fix the use of __malloc annotations.

I tried to trim the CC list on this series since it got rather long. I
kept all the suggested mailing lists, though. :)

Thanks!

-Kees

Kees Cook (12):
  slab: Introduce kmalloc_size_roundup()
  skbuff: Proactively round up to kmalloc bucket size
  net: ipa: Proactively round up to kmalloc bucket size
  btrfs: send: Proactively round up to kmalloc bucket size
  dma-buf: Proactively round up to kmalloc bucket size
  coredump: Proactively round up to kmalloc bucket size
  igb: Proactively round up to kmalloc bucket size
  openvswitch: Proactively round up to kmalloc bucket size
  x86/microcode/AMD: Track patch allocation size explicitly
  iwlwifi: Track scan_cmd allocation size explicitly
  slab: Remove __malloc attribute from realloc functions
  slab: Restore __alloc_size attribute to __kmalloc_track_caller

 arch/x86/include/asm/microcode.h              |  1 +
 arch/x86/kernel/cpu/microcode/amd.c           |  3 +-
 drivers/dma-buf/dma-resv.c                    |  9 +++-
 drivers/net/ethernet/intel/igb/igb_main.c     |  1 +
 drivers/net/ipa/gsi_trans.c                   |  7 ++-
 drivers/net/wireless/intel/iwlwifi/dvm/dev.h  |  1 +
 drivers/net/wireless/intel/iwlwifi/dvm/scan.c | 10 +++-
 drivers/net/wireless/intel/iwlwifi/mvm/mvm.h  |  3 +-
 drivers/net/wireless/intel/iwlwifi/mvm/ops.c  |  3 +-
 drivers/net/wireless/intel/iwlwifi/mvm/scan.c |  6 +--
 fs/btrfs/send.c                               | 11 +++--
 fs/coredump.c                                 |  7 ++-
 include/linux/compiler_types.h                | 13 ++----
 include/linux/slab.h                          | 46 ++++++++++++++++---
 mm/slab_common.c                              | 17 +++++++
 net/core/skbuff.c                             | 34 +++++++-------
 net/openvswitch/flow_netlink.c                |  4 +-
 17 files changed, 125 insertions(+), 51 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
