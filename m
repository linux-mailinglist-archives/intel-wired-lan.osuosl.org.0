Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 370328509D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2019 18:06:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A5B7122829;
	Wed,  7 Aug 2019 16:06:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MDDrTmaznDP6; Wed,  7 Aug 2019 16:06:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7E7052280C;
	Wed,  7 Aug 2019 16:06:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1DF621BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 16:06:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EE0F2869F5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 16:06:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VU63H8X2DwdT for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2019 16:06:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E76A2869EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2019 16:06:24 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id j11so6005036otp.10
 for <intel-wired-lan@lists.osuosl.org>; Wed, 07 Aug 2019 09:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AOfNJoVis4tu5FW/x4K5fd3Kb4BI9lC9c+PcHuGbSJI=;
 b=rHZRSP4Mj7U/HkytF9Zva56bn+5Sg4odmEri/N7n+ITRLCyiUj2eMmCJlHy4XlLYsc
 7gJIN/GF3DAsUHa4BH7V0W2QaOPem6U3rgj0srz/w+BOfWwZ+8s7urdEe+Z3nXeAP9o6
 6+oCplvH6V5cloglseO3mDXC06ioD25CV2idliDu8whCh8Py2B8HSijwVJ4l/U3wzT/e
 2PI/Sf1UElctkc8X8QP9CZGa6RbSuvH81uctJMqTFtQhvbRtItLQ5e4wLnXl8N3jSmuI
 E0FWZ/m5t803vlXqBH1l4W/l02psddI0zSf8Vq/2EzBEDcA8/sbkzk7IYRug/6obhO5Q
 MI3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AOfNJoVis4tu5FW/x4K5fd3Kb4BI9lC9c+PcHuGbSJI=;
 b=hf+rnSHB9FgiJqrQBnZPD6GPe5cAdRqM0kwxAPYGqklSjPPqNKEwIFzlB/0kChT81n
 hu+VjwxN76UqZpQhEEEAXhBkzWPTEkVxDNlKDytW/q2Xuh29LOT/CtBX6o6WMSFmCtz+
 GBgSw7mnvXCLi5KOsGJ6O2+7UQDqxKmYyiSgiWIKCii2j6SegPU1nDApSn2OZK7GddEs
 d5Sdk0bC6PcJ+zmAexWBW3Z2JhiNHblZHh2Sym0eiHYc3O7kVoxZy6iO6Sn4FG4CKpel
 ASz4IN0EvBNxSWGMdxgifa65MU3PYmXiPNlXgATqTF7NzSJ+a67fHNOEAtjUsaVbhCCq
 75Vg==
X-Gm-Message-State: APjAAAX/4V4Mm78OrxvKgw8KT/abmhmgQnUnk8qie2OFFj9QWHKzIG3A
 Wq29x+g+jaZygMkCnpJWpukYShkCzL8tLBDDdtw=
X-Google-Smtp-Source: APXvYqwVvjHIkuTBZZW6ETURsPt3jc50m2JDUoKCPRZ5XBlEz5RskqQ9NfuypJ8JlV4IerpOHeGb3SA1EexymMe2UPE=
X-Received: by 2002:a6b:dd18:: with SMTP id f24mr9312803ioc.97.1565193983972; 
 Wed, 07 Aug 2019 09:06:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190807024917.27682-1-firo.yang@suse.com>
 <85aaefdf-d454-1823-5840-d9e2f71ffb19@oracle.com>
 <20190807083831.GA6811@linux-6qg8> <20190807160853.00001d71@gmail.com>
In-Reply-To: <20190807160853.00001d71@gmail.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Wed, 7 Aug 2019 09:06:12 -0700
Message-ID: <CAKgT0UfEh8cvTht3yceyXqwReJOQkcpJV8j0vHSJwookTWhn_Q@mail.gmail.com>
To: Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] ixgbe: sync the first fragment
 unconditionally
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
Cc: Netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Firo Yang <firo.yang@suse.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jacob Wen <jian.w.wen@oracle.com>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 7, 2019 at 7:09 AM Maciej Fijalkowski
<maciejromanfijalkowski@gmail.com> wrote:
>
> On Wed, 7 Aug 2019 08:38:43 +0000
> Firo Yang <firo.yang@suse.com> wrote:
>
> > The 08/07/2019 15:56, Jacob Wen wrote:
> > > I think the description is not correct. Consider using something like below.
> > Thank you for comments.
> >
> > >
> > > In Xen environment, due to memory fragmentation ixgbe may allocate a 'DMA'
> > > buffer with pages that are not physically contiguous.
> > Actually, I didn't look into the reason why ixgbe got a DMA buffer which
> > was mapped to Xen-swiotlb area.
>
> I think that neither of these descriptions are telling us what was truly
> broken. They lack what Alexander wrote on v1 thread of this patch.
>
> ixgbe_dma_sync_frag is called only on case when the current descriptor has EOP
> bit set, skb was already allocated and you'll be adding a current buffer as a
> frag. DMA unmapping for the first frag was intentionally skipped and we will be
> unmapping it here, in ixgbe_dma_sync_frag. As Alex said, we're using the
> DMA_ATTR_SKIP_CPU_SYNC attribute which obliges us to perform a sync manually
> and it was missing.
>
> So IMHO the commit description should include descriptions from both xen and
> ixgbe worlds, the v2 lacks info about ixgbe case.
>
> BTW Alex, what was the initial reason for holding off with unmapping the first
> buffer? Asking because IIRC the i40e and ice behave a bit different here. We
> don't look there for EOP at all when building/constructing skb and not delaying
> the unmap of non-eop buffers.
>
> Thanks,
> Maciej

The reason why we have to hold off on unmapping the first buffer is
because in the case of Receive Side Coalescing (RSC), also known as Large
Receive Offload (LRO), the header of the packet is updated for each
additional frame that is added. As such you can end up with the device
writing data, header, data, header, data, header where each data write
would update a new descriptor, but the header will only ever update the
first descriptor in the chain. As such if we unmapped it earlier it would
result in an IOMMU fault because the device would be rewriting the header
after it had been unmapped.

The devices supported by the ixgbe driver are the only ones that have
RSC/LRO support. As such this behavior is present for ixgbe, but not for
other Intel NIC drivers including igb, igbvf, ixgbevf, i40e, etc.

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
