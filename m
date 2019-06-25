Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B35559BA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jun 2019 23:12:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8B24E2083F;
	Tue, 25 Jun 2019 21:12:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DJMq7Wie7r2O; Tue, 25 Jun 2019 21:12:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D4387207A9;
	Tue, 25 Jun 2019 21:12:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 948BA1BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 18:44:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8D18585F87
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 18:44:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UeMo60HkPh_b for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jun 2019 18:44:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4A95485ECE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 18:44:05 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id r7so9942475pfl.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 11:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=Fbh/+qgP4LBddXodFMfI0tKPb3y0XNzyf5BEgokE7RU=;
 b=dF6QkZWbwmtpecHu27CQ+3q4CePL38FBsSXQAPj8r2Er3XKRMYUrIEcAgQIQiOdrzy
 QvSl+YTgA8JULoxkIQAWD4mbNCeT3252Mml6EM7/fljlUExDsRlglCJ5klEEOva02b2T
 FVKKKznJ2Uri6Yd5VQ4/PVYYOa/HwsZWvfBisnzLOtAwkoYDV0cnywiF4LmFHjz8TIKR
 6uFlzRT1yndPfXITPCGzREVtj/1FYB35QU3XDCGfavja3vlLdBXwzEzGGt0YKRzlRav4
 G0FoT2gUqd38wBpMuL1BaDHsc1Vnq8A/G9f75ds6AAQTiUi/SibqElx3bqjbazBCnf2q
 VAsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=Fbh/+qgP4LBddXodFMfI0tKPb3y0XNzyf5BEgokE7RU=;
 b=ENq7cFIoOI/afLYt+9mjJsbNSDK84EHMdN2Z16j3o8dh8ziGLZDMdZtTA2hgkw4yGI
 7MvHeS18aRNZTpm92Eti1l3atUqFZ65oCpzjwA0KixiyXsnS5b6x1pgcp/7BdZ9f3xtn
 pr1wIR9gzAf9RzCJJMCZad3zUniIoi3afOybEshKhc2J1ilsiRTO6I0+yrHL/1k1rmwX
 k/zo1X2xwteDiBeQ+G94Z4BG7VsqePqQBDP4fblBYtkEqYVNph1kKRb2BmmjdgVGlUFg
 DYLFugxfzTaDHLb+eY8zvkNuYdk73T8xuUDnlG3GHPMRZDqMOijbv429ID/8LB0FEqwi
 +Kyg==
X-Gm-Message-State: APjAAAUBjirP+5Y4wsncTO1289ZJJwlVHi58zSTyafPA/6+WUpAWuLK3
 2DvAIK32NSeTAGbfjNiUQ+g=
X-Google-Smtp-Source: APXvYqxxisUGgmYPspgwA5mwlBmuVZwDePacu53JwzADQRBuh9kk4QYe+miKZcFkM8nnNmo1Ei7V3w==
X-Received: by 2002:a17:90a:33c4:: with SMTP id
 n62mr359185pjb.28.1561488244928; 
 Tue, 25 Jun 2019 11:44:04 -0700 (PDT)
Received: from [172.20.52.61] ([2620:10d:c090:200::3:e848])
 by smtp.gmail.com with ESMTPSA id b36sm3563049pjc.16.2019.06.25.11.44.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 11:44:03 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Kevin Laatz" <kevin.laatz@intel.com>
Date: Tue, 25 Jun 2019 11:44:01 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <FA8389B9-F89C-4BFF-95EE-56F702BBCC6D@gmail.com>
In-Reply-To: <20190620083924.1996-1-kevin.laatz@intel.com>
References: <20190620083924.1996-1-kevin.laatz@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 25 Jun 2019 21:12:38 +0000
Subject: Re: [Intel-wired-lan] [PATCH 00/11] XDP unaligned chunk placement
 support
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
Cc: daniel@iogearbox.net, bpf@vger.kernel.com, netdev@vger.kernel.org,
 ciara.loftus@intel.com, ast@kernel.org, intel-wired-lan@lists.osuosl.org,
 bruce.richardson@intel.com, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 20 Jun 2019, at 1:39, Kevin Laatz wrote:

> This patchset adds the ability to use unaligned chunks in the XDP 
> umem.
>
> Currently, all chunk addresses passed to the umem are masked to be 
> chunk
> size aligned (default is 2k, max is PAGE_SIZE). This limits where we 
> can
> place chunks within the umem as well as limiting the packet sizes that 
> are
> supported.
>
> The changes in this patchset removes these restrictions, allowing XDP 
> to be
> more flexible in where it can place a chunk within a umem. By relaxing 
> where
> the chunks can be placed, it allows us to use an arbitrary buffer size 
> and
> place that wherever we have a free address in the umem. These changes 
> add the
> ability to support jumboframes and make it easy to integrate with 
> other
> existing frameworks that have their own memory management systems, 
> such as
> DPDK.

I'm a little unclear on how this should work, and have a few issues 
here:

  1) There isn't any support for the user defined umem->headroom

  2) When queuing RX buffers, the handle (aka umem offset) is used, 
which
     points to the start of the buffer area.  When the buffer appears in
     the completion queue, handle points to the start of the received 
data,
     which might be different from the buffer start address.

     Normally, this RX address is just put back in the fill queue, and 
the
     mask is used to find the buffer start address again.  This no 
longer
     works, so my question is, how is the buffer start address 
recomputed
     from the actual data payload address?

     Same with TX - if the TX payload isn't aligned in with the start of
     the buffer, what happens?

  3) This appears limited to crossing a single page boundary, but there
     is no constraint check on chunk_size.
-- 
Jonathan

>
> Structure of the patchset:
> Patch 1:
>   - Remove unnecessary masking and headroom addition during zero-copy 
> Rx
>     buffer recycling in i40e. This change is required in order for the
>     buffer recycling to work in the unaligned chunk mode.
>
> Patch 2:
>   - Remove unnecessary masking and headroom addition during
>     zero-copy Rx buffer recycling in ixgbe. This change is required in
>     order for the  buffer recycling to work in the unaligned chunk 
> mode.
>
> Patch 3:
>   - Adds an offset parameter to zero_copy_allocator. This change will
>     enable us to calculate the original handle in zca_free. This will 
> be
>     required for unaligned chunk mode since we can't easily mask back 
> to
>     the original handle.
>
> Patch 4:
>   - Adds the offset parameter to i40e_zca_free. This change is needed 
> for
>     calculating the handle since we can't easily mask back to the 
> original
>     handle like we can in the aligned case.
>
> Patch 5:
>   - Adds the offset parameter to ixgbe_zca_free. This change is needed 
> for
>     calculating the handle since we can't easily mask back to the 
> original
>     handle like we can in the aligned case.
>
>
> Patch 6:
>   - Add infrastructure for unaligned chunks. Since we are dealing
>     with unaligned chunks that could potentially cross a physical page
>     boundary, we add checks to keep track of that information. We can
>     later use this information to correctly handle buffers that are
>     placed at an address where they cross a page boundary.
>
> Patch 7:
>   - Add flags for umem configuration to libbpf
>
> Patch 8:
>   - Modify xdpsock application to add a command line option for
>     unaligned chunks
>
> Patch 9:
>   - Addition of command line argument to pass in a desired buffer size
>     and buffer recycling for unaligned mode. Passing in a buffer size 
> will
>     allow the application to use unaligned chunks with the unaligned 
> chunk
>     mode. Since we are now using unaligned chunks, we need to recycle 
> our
>     buffers in a slightly different way.
>
> Patch 10:
>   - Adds hugepage support to the xdpsock application
>
> Patch 11:
>   - Documentation update to include the unaligned chunk scenario. We 
> need
>     to explicitly state that the incoming addresses are only masked in 
> the
>     aligned chunk mode and not the unaligned chunk mode.
>
> Kevin Laatz (11):
>   i40e: simplify Rx buffer recycle
>   ixgbe: simplify Rx buffer recycle
>   xdp: add offset param to zero_copy_allocator
>   i40e: add offset to zca_free
>   ixgbe: add offset to zca_free
>   xsk: add support to allow unaligned chunk placement
>   libbpf: add flags to umem config
>   samples/bpf: add unaligned chunks mode support to xdpsock
>   samples/bpf: add buffer recycling for unaligned chunks to xdpsock
>   samples/bpf: use hugepages in xdpsock app
>   doc/af_xdp: include unaligned chunk case
>
>  Documentation/networking/af_xdp.rst           | 10 +-
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c    | 21 ++--
>  drivers/net/ethernet/intel/i40e/i40e_xsk.h    |  3 +-
>  .../ethernet/intel/ixgbe/ixgbe_txrx_common.h  |  3 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  | 21 ++--
>  include/net/xdp.h                             |  3 +-
>  include/net/xdp_sock.h                        |  2 +
>  include/uapi/linux/if_xdp.h                   |  4 +
>  net/core/xdp.c                                | 11 ++-
>  net/xdp/xdp_umem.c                            | 17 ++--
>  net/xdp/xsk.c                                 | 60 +++++++++--
>  net/xdp/xsk_queue.h                           | 60 +++++++++--
>  samples/bpf/xdpsock_user.c                    | 99 
> ++++++++++++++-----
>  tools/include/uapi/linux/if_xdp.h             |  4 +
>  tools/lib/bpf/xsk.c                           |  7 ++
>  tools/lib/bpf/xsk.h                           |  2 +
>  16 files changed, 241 insertions(+), 86 deletions(-)
>
> -- 
> 2.17.1
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
