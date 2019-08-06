Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DBE839E1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2019 21:53:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2A34E22049;
	Tue,  6 Aug 2019 19:53:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iPoABENw5z07; Tue,  6 Aug 2019 19:53:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 551BC22056;
	Tue,  6 Aug 2019 19:53:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 241071BF39F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2019 19:53:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1F3EF869D7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2019 19:53:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y9EHs5EHgJ3r for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2019 19:53:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5BCFA869C9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2019 19:53:03 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id t76so68435032oih.4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 06 Aug 2019 12:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KmU4HJB87X8xhCUfLfjkNelVmkZzhKKTTRnmGP3cf9U=;
 b=BVtj3Pifd5xr8+HJJFf4aJmYb9qybfaNXVqzIbEG9IIKBACsE97O8oil++vm+WDz3f
 nwOXAtDNiBE7kkTXWbyXNkrR+vUtboSqYBexi4cmkHKKx7Y21RHWf/TsIXh3OBqiyIn8
 kgEQgTkoUh/m6QVIPewlvTNVT86h2iU2w+1lZdEgSBVTfAwvY//38uEdGIsb4WBXzu8E
 RtebHHU2dCD/UM/5K4RmeMlAuyvypIJ+aMUFGDELhsZ/gBs2lRUspxTgyblGARaakmS/
 jYdNYkRuTEeqR5OiWTKp1kL44ROEmsy+3efPL++mXO8wtBHa7t8tiqTJYwKg+5X01RXs
 HRXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KmU4HJB87X8xhCUfLfjkNelVmkZzhKKTTRnmGP3cf9U=;
 b=Y+PD619DE1OVBz1w874h6ZQpEC3bYHK8xSMQsHFpBnYGHn/ovNSenLOI3XQxre9hv3
 jGl19Zm8yAYduhcS8PTzUsxkeHS0YYE5nR70eADLH8Nq2Sfs9VoyqmwL81fZNjy2q0Kb
 nGir2R2Kva0EQ+HRcWkpt4sdM2gRZVIkCUE+ET18NMt/fQ+D9c2S3CVS6K43b4c4Bwxc
 0aivhI8QjuAbMbSmuIL9fwnplf2wxbOdJgY/gedpOVxXRjO0789EJm7EHIio3+UvOqGe
 aNMxn2wLDYuHZd6jDQu5aBQKWDS1bc17F2HgC7mlO6UFZzvH2TnvgvlI3EmWukg26/KU
 54EQ==
X-Gm-Message-State: APjAAAVHcPHDeraaicXY9Sr19X1ucdbFqPgiGvwYsI18fe1mp3/ipSlp
 koJTX38/bMO6OZQHbtDKHrCDsuyZL9PvFKH4NvY=
X-Google-Smtp-Source: APXvYqx+q743nGPHX6aJH/9jIqgTQd8k5xwXFPshKqY+NszZolvWwtyutRRUfJ99Fcu5s3o7aw9Mdlg1WTzTh9OMidI=
X-Received: by 2002:a02:cd82:: with SMTP id l2mr5991247jap.96.1565121182404;
 Tue, 06 Aug 2019 12:53:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190806092919.13211-1-firo.yang@suse.com>
 <20190806.113640.171591509807004446.davem@davemloft.net>
In-Reply-To: <20190806.113640.171591509807004446.davem@davemloft.net>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 6 Aug 2019 12:52:51 -0700
Message-ID: <CAKgT0UctiHjKxGXHJEiJX4_aEJt1swBAxMOKPT9huXBOcf+2VQ@mail.gmail.com>
To: David Miller <davem@davemloft.net>
Subject: Re: [Intel-wired-lan] [PATCH 1/1] ixgbe: sync the first fragment
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
Cc: Netdev <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 LKML <linux-kernel@vger.kernel.org>, firo.yang@suse.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 6, 2019 at 11:36 AM David Miller <davem@davemloft.net> wrote:
>
> From: Firo Yang <firo.yang@suse.com>
> Date: Tue, 6 Aug 2019 09:29:51 +0000
>
> > In Xen environment, if Xen-swiotlb is enabled, ixgbe driver
> > could possibly allocate a page, DMA memory buffer, for the first
> > fragment which is not suitable for Xen-swiotlb to do DMA operations.
> > Xen-swiotlb will internally allocate another page for doing DMA
> > operations. It requires syncing between those two pages. Otherwise,
> > we may get an incomplete skb. To fix this problem, sync the first
> > fragment no matter the first fargment is makred as "page_released"
> > or not.
> >
> > Signed-off-by: Firo Yang <firo.yang@suse.com>
>
> I don't understand, an unmap operation implies a sync operation.

Actually it doesn't because ixgbe is mapping and unmapping with
DMA_ATTR_SKIP_CPU_SYNC.

The patch description isn't very good. The issue is that the sync in
this case is being skipped in ixgbe_get_rx_buffer for a frame where
the buffer spans more then a single page. As such we need to do both
the sync and the unmap call on the last frame when we encounter the
End Of Packet.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
