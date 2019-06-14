Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A6E46864
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jun 2019 21:55:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AA4B1203A2;
	Fri, 14 Jun 2019 19:55:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xb+RNrA43vfG; Fri, 14 Jun 2019 19:55:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B004C203A4;
	Fri, 14 Jun 2019 19:55:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9456B1BF318
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2019 14:18:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8E71B881DC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2019 14:18:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NWiyrlqFClq4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jun 2019 14:18:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9B89988347
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2019 14:18:10 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id n2so1624654pgp.11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2019 07:18:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tq2E9BaMBW8aSF1f5kHaKuSm/qfkPHS5HXGl0qPPcFw=;
 b=DxpxUC8lcRD4PyxDEUfU/eby1s+AVG3cNIJEjbQSBMFkoIqB0TxIN6o4YLEIMQDq72
 XOCTyAlv0NeDlG1219jQJDENaj6ig6zHxnl/OQAVHbIh/zlLV2ZIHFUJMkhW9Aoa3UiP
 jCr5gRVO+iJYMxIkeIMDEKtP3h6/UqlDfcc2wfcFpAgQWfcCaJA2Rqis6eqK2NZ/6ROi
 54aL8p6+jj04kOUXabQidHVBhFCrVSiRtscHJEdb5sEAbPOM5q1+EwJ1E7Zvzx/yzy9t
 Z3D2uN8FAlxfepIPreEPrkWu6tGGuhUoQxKfoNzOK+AIcZVjv8GzXwJgowraiT9PhJ+U
 kukQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tq2E9BaMBW8aSF1f5kHaKuSm/qfkPHS5HXGl0qPPcFw=;
 b=gu273qDTduSmvwgl2Wrlfc1P9Xw/d0N7LtJMVZwVaQepAHpUVnfYnAEeoVcd6kgX7f
 VBHX0qhc3ltN2jfl2jm9Kci0tNMegJg45rQ040t8NOYAZKqgPb7r14pV1qxVIcfiv7u1
 QPO9hJcadYrLqZp/Pue8ABwaIOHrHyO7jKHx3K8bC/Ws6qH9Es6vgw3D2BvCnzlgImpY
 UjhH2joR8n68TAPF6Zs4t5zwPdjJDKTC6vbakN5XpNQuLclT2CHA3pgMTum2MhfY5uz1
 n6/v0p+hojk3i12bBqfA0szQZZlYVD6gzKlM1OO9aSOXId6WnNxH03kldvMcoAucxK3X
 p91g==
X-Gm-Message-State: APjAAAUTC+UWJIixLokhfAjBBhC1wVHZuB/7yciCFt2Fd41OCzzVoNoT
 8yWy/7hyuhQlFjJ93Aanqus=
X-Google-Smtp-Source: APXvYqxzTYmH+IIhQb8HZJ2cexLAai0xTnPn8j+b9OOEBpPknUOScLoYj6idws9tz9tor/0Pss5veg==
X-Received: by 2002:aa7:92d2:: with SMTP id k18mr74356pfa.153.1560521890003;
 Fri, 14 Jun 2019 07:18:10 -0700 (PDT)
Received: from localhost ([192.55.54.45])
 by smtp.gmail.com with ESMTPSA id k11sm3163533pfi.168.2019.06.14.07.18.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 14 Jun 2019 07:18:09 -0700 (PDT)
Date: Fri, 14 Jun 2019 16:17:20 +0200
From: Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>
To: Maxim Mikityanskiy <maximmi@mellanox.com>
Message-ID: <20190614161720.00002da5@gmail.com>
In-Reply-To: <b84b2128-da38-3f0e-35fe-7d1466005dca@mellanox.com>
References: <1560411450-29121-1-git-send-email-magnus.karlsson@intel.com>
 <b84b2128-da38-3f0e-35fe-7d1466005dca@mellanox.com>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 14 Jun 2019 19:55:19 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 0/6] add need_wakeup flag to
 the AF_XDP rings
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
Cc: "axboe@kernel.dk" <axboe@kernel.dk>,
 "kevin.laatz@intel.com" <kevin.laatz@intel.com>,
 "jakub.kicinski@netronome.com" <jakub.kicinski@netronome.com>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "ciara.loftus@intel.com" <ciara.loftus@intel.com>,
 "qi.z.zhang@intel.com" <qi.z.zhang@intel.com>,
 "ast@kernel.org" <ast@kernel.org>,
 "xiaolong.ye@intel.com" <xiaolong.ye@intel.com>,
 "ilias.apalodimas@linaro.org" <ilias.apalodimas@linaro.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "brouer@redhat.com" <brouer@redhat.com>,
 "bruce.richardson@intel.com" <bruce.richardson@intel.com>,
 "maciej.fijalkowski@intel.com" <maciej.fijalkowski@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "bjorn.topel@intel.com" <bjorn.topel@intel.com>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 14 Jun 2019 13:38:04 +0000
Maxim Mikityanskiy <maximmi@mellanox.com> wrote:

> On 2019-06-13 10:37, Magnus Karlsson wrote:
> > =

> > This patch set adds support for a new flag called need_wakeup in the
> > AF_XDP Tx and fill rings. When this flag is set by the driver, it
> > means that the application has to explicitly wake up the kernel Rx
> > (for the bit in the fill ring) or kernel Tx (for bit in the Tx ring)
> > processing by issuing a syscall. Poll() can wake up both and sendto()
> > will wake up Tx processing only.  =

> =

> At first sight, sounds useful! (I didn't have time to have a deeper look =

> at the series yet.)
> =

> I see you are replacing ndo_xsk_async_xmit with another function to =

> support your extension, and some driver changes are made. Does it mean =

> that every driver must support the new extension? How about making it =

> optional? I.e. the kernel can check whether the new NDO is implemented =

> or not, and use the new feature with drivers that support it.

I think I can speak up for Magnus.
That NDO was just renamed in order to better reflect cases where it is
currently being used, e.g. having ndo_xsk_async_xmit() called in order to g=
et
into NAPI and take the buffers from fill queue was misleading a bit, as you
were waking up the Rx side.

The functionality of that NDO stays the same. Magnus also provided explanat=
ions
in commit messages, which I suppose will clarify it more once you go through
the series.

> =

> Thanks,
> Max
> =

> > The main reason for introducing this new flag is to be able to
> > efficiently support the case when application and driver is executing
> > on the same core. Previously, the driver was just busy-spinning on the
> > fill ring if it ran out of buffers in the HW and there were none to
> > get from the fill ring. This approach works when the application and
> > driver is running on different cores as the application can replenish
> > the fill ring while the driver is busy-spinning. Though, this is a
> > lousy approach if both of them are running on the same core as the
> > probability of the fill ring getting more entries when the driver is
> > busy-spinning is zero. With this new feature the driver now sets the
> > need_wakeup flag and returns to the application. The application can
> > then replenish the fill queue and then explicitly wake up the Rx
> > processing in the kernel using the syscall poll(). For Tx, the flag is
> > only set to one if the driver has no outstanding Tx completion
> > interrupts. If it has some, the flag is zero as it will be woken up by
> > a completion interrupt anyway. This flag can also be used in other
> > situations where the driver needs to be woken up explicitly.
> > =

> > As a nice side effect, this new flag also improves the Tx performance
> > of the case where application and driver are running on two different
> > cores as it reduces the number of syscalls to the kernel. The kernel
> > tells user space if it needs to be woken up by a syscall, and this
> > eliminates many of the syscalls. The Rx performance of the 2-core case
> > is on the other hand slightly worse, since there is a need to use a
> > syscall now to wake up the driver, instead of the driver
> > busy-spinning. It does waste less CPU cycles though, which might lead
> > to better overall system performance.
> > =

> > This new flag needs some simple driver support. If the driver does not
> > support it, the Rx flag is always zero and the Tx flag is always
> > one. This makes any application relying on this feature default to the
> > old behavior of not requiring any syscalls in the Rx path and always
> > having to call sendto() in the Tx path.
> > =

> > For backwards compatibility reasons, this feature has to be explicitly
> > turned on using a new bind flag (XDP_USE_NEED_WAKEUP). I recommend
> > that you always turn it on as it has a large positive performance
> > impact for the one core case and does not degrade 2 core performance
> > and actually improves it for Tx heavy workloads.
> > =

> > Here are some performance numbers measured on my local,
> > non-performance optimized development system. That is why you are
> > seeing numbers lower than the ones from Bj=F6rn and Jesper. 64 byte
> > packets at 40Gbit/s line rate. All results in Mpps. Cores =3D=3D 1 means
> > that both application and driver is executing on the same core. Cores
> > =3D=3D 2 that they are on different cores.
> > =

> >                                Applications
> > need_wakeup  cores    txpush    rxdrop      l2fwd
> > ---------------------------------------------------------------
> >       n         1       0.07      0.06        0.03
> >       y         1       21.6      8.2         6.5
> >       n         2       32.3      11.7        8.7
> >       y         2       33.1      11.7        8.7
> > =

> > Overall, the need_wakeup flag provides the same or better performance
> > in all the micro-benchmarks. The reduction of sendto() calls in txpush
> > is large. Only a few per second is needed. For l2fwd, the drop is 50%
> > for the 1 core case and more than 99.9% for the 2 core case. Do not
> > know why I am not seeing the same drop for the 1 core case yet.
> > =

> > The name and inspiration of the flag has been taken from io_uring by
> > Jens Axboe. Details about this feature in io_uring can be found in
> > http://kernel.dk/io_uring.pdf, section 8.3. It also addresses most of
> > the denial of service and sendto() concerns raised by Maxim
> > Mikityanskiy in https://www.spinics.net/lists/netdev/msg554657.html.
> > =

> > The typical Tx part of an application will have to change from:
> > =

> > ret =3D sendto(fd,....)
> > =

> > to:
> > =

> > if (xsk_ring_prod__needs_wakeup(&xsk->tx))
> >         ret =3D sendto(fd,....)
> > =

> > and th Rx part from:
> > =

> > rcvd =3D xsk_ring_cons__peek(&xsk->rx, BATCH_SIZE, &idx_rx);
> > if (!rcvd)
> >         return;
> > =

> > to:
> > =

> > rcvd =3D xsk_ring_cons__peek(&xsk->rx, BATCH_SIZE, &idx_rx);
> > if (!rcvd) {
> >         if (xsk_ring_prod__needs_wakeup(&xsk->umem->fq))
> >                ret =3D poll(fd,.....);
> >         return;
> > }
> > =

> > This patch has been applied against commit aee450cbe482 ("bpf: silence =
warning messages in core")
> > =

> > Structure of the patch set:
> > =

> > Patch 1: Replaces the ndo_xsk_async_xmit with ndo_xsk_wakeup to
> >           support waking up both Rx and Tx processing
> > Patch 2: Implements the need_wakeup functionality in common code
> > Patch 3-4: Add need_wakeup support to the i40e and ixgbe drivers
> > Patch 5: Add need_wakeup support to libbpf
> > Patch 6: Add need_wakeup support to the xdpsock sample application
> > =

> > Thanks: Magnus
> > =

> > Magnus Karlsson (6):
> >    xsk: replace ndo_xsk_async_xmit with ndo_xsk_wakeup
> >    xsk: add support for need_wakeup flag in AF_XDP rings
> >    i40e: add support for AF_XDP need_wakup feature
> >    ixgbe: add support for AF_XDP need_wakup feature
> >    libbpf: add support for need_wakeup flag in AF_XDP part
> >    samples/bpf: add use of need_sleep flag in xdpsock
> > =

> >   drivers/net/ethernet/intel/i40e/i40e_main.c        |   5 +-
> >   drivers/net/ethernet/intel/i40e/i40e_xsk.c         |  23 ++-
> >   drivers/net/ethernet/intel/i40e/i40e_xsk.h         |   2 +-
> >   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c      |   5 +-
> >   .../net/ethernet/intel/ixgbe/ixgbe_txrx_common.h   |   2 +-
> >   drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c       |  20 ++-
> >   include/linux/netdevice.h                          |  18 +-
> >   include/net/xdp_sock.h                             |  33 +++-
> >   include/uapi/linux/if_xdp.h                        |  13 ++
> >   net/xdp/xdp_umem.c                                 |   6 +-
> >   net/xdp/xsk.c                                      |  93 +++++++++-
> >   net/xdp/xsk_queue.h                                |   1 +
> >   samples/bpf/xdpsock_user.c                         | 191 ++++++++++++=
+--------
> >   tools/include/uapi/linux/if_xdp.h                  |  13 ++
> >   tools/lib/bpf/xsk.c                                |   4 +
> >   tools/lib/bpf/xsk.h                                |   6 +
> >   16 files changed, 343 insertions(+), 92 deletions(-)
> > =

> > --
> > 2.7.4
> >   =

> =


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
