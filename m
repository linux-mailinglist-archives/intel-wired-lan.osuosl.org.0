Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7115E8DC6C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2019 19:55:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 870498665E;
	Wed, 14 Aug 2019 17:55:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bh544lbcOcVY; Wed, 14 Aug 2019 17:55:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C77C586672;
	Wed, 14 Aug 2019 17:55:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8F5D91BF45A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 17:55:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8B2758665E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 17:55:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iuxfqfelt-H6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2019 17:55:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C90F386559
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 17:55:08 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id l12so13486184oil.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2019 10:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=l1K5i8OVK92DcMPmZx/XiVa9DkiQ2mgLdSJzA/pv73c=;
 b=pXqPF1iGs8atkfs7GleStxYfpWFSulo/Yqp6k/sHcBZVDQqXl3yV/SwMNx6m4iG/6d
 lybDS+BTEBn/Xf9kF6zsuSvCC2BAzmc68hROEwrkw6xM/R3hmJZl3JmrOJSWEuMCQXaV
 nbmZP+gZhpTOFMQlllOt5Quj2hRfH6P7AgE6yCKcO6qpJxgIb/sp1v6bkES1TpSMDKXz
 doszGzyVgqrMwjIMfypo6z4z6hLFfzsCscoLtr9YC5DiZT6RKaLI0atsOhl/JerhW6NU
 x9EWgwbPUvyEEL9rq7I/veT3HObZqg/Kutz6xiRE8LFm5+6r244gcHsJwa0KsgNGcYO4
 1DGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l1K5i8OVK92DcMPmZx/XiVa9DkiQ2mgLdSJzA/pv73c=;
 b=W16+9mOOJ/of8kyaYCkWSXPNXQ755Nxzz3WzLeyna3DdmE4oeZxRXwMZgaAQ4sFxQv
 72u9beTz5R+9DEgKUEvBFtZbk2FRHT2Uzq3T4cCbvptkcvLJc4dHIUaM8mhlpEMwZfDd
 VmsU7ZtH9Vg/WcshQ50rIQG8EiH/Pk7rDH2Qg7awERWRi6KEVysevXp/Cdue7V40+39p
 CitkCpZ9aflu7UFvU2goloFHo57WSswPV/qWoYVmp/Nbo7WqzxlOIkMOASGByaZK0hu/
 JO6CmxQRxnvLL8Mx+8n5EcpDyiUJZxqSeCxFZDdMc6Xgp7gbkuneYp4ZCvRfPxFEzlx9
 rM/Q==
X-Gm-Message-State: APjAAAUxMI+yN0U0bh5mDDj5VklUDfVx7hgxauMdcArcp+Rgxixsfwne
 M5QBYdew/YEgaNP763UifW0bdC/RR8y0Nu5JLnA=
X-Google-Smtp-Source: APXvYqzT8HGsunG8s0mpWaa6uMBuCDLIAjThFeLxCqHGEM+Hxc6M0sY6z9u2D9UFW6Q/wjUfxRJCi6kKJjhJePerP6c=
X-Received: by 2002:a02:10:: with SMTP id 16mr565901jaa.96.1565805307791; Wed,
 14 Aug 2019 10:55:07 -0700 (PDT)
MIME-Version: 1.0
References: <9e598973-0bca-eda1-c5df-9f3ef16bf700@candelatech.com>
In-Reply-To: <9e598973-0bca-eda1-c5df-9f3ef16bf700@candelatech.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Wed, 14 Aug 2019 10:54:56 -0700
Message-ID: <CAKgT0UfyuDAnY5oHNAtFuBQkqn7NQiCxF9eSD+m+1EkrUOaaHA@mail.gmail.com>
To: Ben Greear <greearb@candelatech.com>
Subject: Re: [Intel-wired-lan] CMA alloc failed with 6 4-port X710 QAD4 NICs
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 12, 2019 at 2:19 PM Ben Greear <greearb@candelatech.com> wrote:
>
> Hello,
>
> I have a user trying to boot up our 4.20+ kernel with 6 4-port 10G NICs in it.
>
> dmesg is full of cma_alloc errors.  I increased CMA space to 32MB, but still no luck.
>
> Any idea how much CMA memory is needed for this config?
>
> Thanks,
> Ben

You are going to need to go much bigger since you have 24 ports. Each
port can consume several MB of contiguous space due to all the
dma_alloc_coherent calls. It also depends on the number of queues you
have enabled on the system as each queue pair will consume 24K of
contiguous space as well.

My advise would be to look at increasing it to somewhere in the range
of 64MB to 128MB.

Another alternative, assuming that the drivers are still working after
making a fall-back allocation out of non-CMA space would be to just
add __GFP_NOWARN to the flags passed to dma_alloc_coherent. That
should mute the warnings on allocation failures and just fall back to
the warning provided by the caller.

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
