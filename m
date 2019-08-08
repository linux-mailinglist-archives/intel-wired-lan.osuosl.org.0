Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C59858C0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2019 05:48:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 068C988178;
	Thu,  8 Aug 2019 03:48:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rIFVB7S2vM0l; Thu,  8 Aug 2019 03:48:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9E85A88157;
	Thu,  8 Aug 2019 03:48:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 24D551BF295
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 03:48:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1CE8B85BDF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 03:48:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rY_KbQKT2vuu for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2019 03:48:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8A27285BC6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 03:48:12 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id b7so62904456otl.11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 07 Aug 2019 20:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/VvNaj/wtNAj4hKnQgUonNXIEppB0e4o77A5BHU4ets=;
 b=oFgFpikvDc0LWHCtOrIugnKh9+eXAJVHHOe4wklWYmEDIMxXfijLbgBnwiTvXiIVlk
 Jy1Ou8DeMrrjB8dTWDhTXAZEgNDJqZ63tYjKxq4yzkcN57krzxBQtt8HI5OiqP13yNcC
 PTQ/3S62lHM3mAYwndCc8Grk8/THRDreZUf2a/b0HbHxfirQUiOKrcm1/6lVtF172WDp
 ShwJgFtlu3dr0eIt1LbMkFfMOIQvkH1td9BeHWROPViUKRxJQcoYeKiukHkLL5+5qMpX
 73c3tPDkbsXGLXG92Ffxb3T1Ek0pLZm+RYBDW4YAwjJVdaslCQ+h4DqVslQBbfrmwNOZ
 sCsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/VvNaj/wtNAj4hKnQgUonNXIEppB0e4o77A5BHU4ets=;
 b=AjBFC39XxDK+nNjvFNqaCphcNSYmrtYjlb0Mj+OZwhC7cvo6g0BRXdvlWinMLsBLwk
 4ZPiTsOH/++5uveny4FPVfMmFEZTu0iQueToGyxgdKUkreYvj30Kj45WWjIB4k1dUHOp
 VEuFHc0cR0WGvnROw/F1nXe7mz4HuR3zU8mXmkFYnR07p1cxaEkJrDp8uOyb8YSWnwDt
 /yhWf6hY7jdiSJ9HJeDUDiFwxKkMBTHLBt18oiNNAovUO8x704FE46kYkxzGeZRR+taH
 OIYCQy0XNze8QFb5tRt+sHSL4wnLezcJ6QTb06jMiRrwRxTNjKDl4P35LoqNHRn/wipB
 ru0g==
X-Gm-Message-State: APjAAAVu1ZORHaGl61PPPizFsAX0kwhLCGvGVPzRwAUDoiDfXeV1bgW9
 7AjUYRnUxqSLQ+hKayE7HLFKHA+1SlTOjd7Wn/I=
X-Google-Smtp-Source: APXvYqwF/lDey/44H3kjnI1EW/XcWxjPOi+4mT3kp6ztUTkr7W6KuiYV+NefQFDaFmFbmfRUPcsC+RIWfCeo8thfE8E=
X-Received: by 2002:a6b:b549:: with SMTP id e70mr6033144iof.95.1565236091528; 
 Wed, 07 Aug 2019 20:48:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190807024917.27682-1-firo.yang@suse.com>
 <85aaefdf-d454-1823-5840-d9e2f71ffb19@oracle.com>
 <20190807083831.GA6811@linux-6qg8>
 <901704f1-163d-9dd8-4d20-93fa19f4435d@oracle.com>
In-Reply-To: <901704f1-163d-9dd8-4d20-93fa19f4435d@oracle.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Wed, 7 Aug 2019 20:48:00 -0700
Message-ID: <CAKgT0Uda0x8N7jv5Ex4x0tv85RgeHr5XQJCvDWCrD9VBu-4QPA@mail.gmail.com>
To: Jacob Wen <jian.w.wen@oracle.com>
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Firo Yang <firo.yang@suse.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "alexander.h.duyck@linux.intel.com" <alexander.h.duyck@linux.intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 7, 2019 at 6:58 PM Jacob Wen <jian.w.wen@oracle.com> wrote:
>
>
> On 8/7/19 4:38 PM, Firo Yang wrote:
> > The 08/07/2019 15:56, Jacob Wen wrote:
> >> I think the description is not correct. Consider using something like below.
> > Thank you for comments.
> >
> >> In Xen environment, due to memory fragmentation ixgbe may allocate a 'DMA'
> >> buffer with pages that are not physically contiguous.
> > Actually, I didn't look into the reason why ixgbe got a DMA buffer which
> > was mapped to Xen-swiotlb area.
> Yes. I was wrong. You don't need to tell the exact reason.
> >
> > But I don't think this issue relates to phsical memory contiguity because, in
> > our case, one ixgbe_rx_buffer only associates at most one page.
>
> This is interesting.
>
> I guess the performance of the NIC in your environment is not good due
> to the extra cost of bounce buffer.

If I recall correctly the Rx performance for ixgbe shouldn't be too
bad even with a bounce buffer. The cost for map/unmap are expensive
for a bounce buffer setup but the syncs are just copies so they are
pretty cheap in comparison. The driver can take advantage of that on
Rx since it leaves the pages mapped and just syncs the portion of the
pages that are used.

Now if you are hitting the bounce buffer on the Tx side that is
another matter as you have to allocate the buffer on demand and that
is quite expensive.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
