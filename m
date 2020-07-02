Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D56C1212D41
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jul 2020 21:43:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7863F2040F;
	Thu,  2 Jul 2020 19:43:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yqUolJAqeijp; Thu,  2 Jul 2020 19:43:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 83A162043A;
	Thu,  2 Jul 2020 19:43:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0FB281BF379
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 19:43:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0B0F986F52
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 19:43:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xZcU0mFAmhJ9 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2020 19:43:17 +0000 (UTC)
X-Greylist: delayed 00:08:00 by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 850E086F51
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 19:43:17 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id e12so22203119qtr.9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 Jul 2020 12:43:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vMrH7R2vPu3gkZfS+H01Ns/eTvn1XgH9B+3gDwbQS4Q=;
 b=P9akivtIL9OPr+h9G/Fq5VLuJfJuZFU9rGS5Kge23ZeuGNoA7zxXxtsApOQceAsw6N
 zYga8mXjNlZK5Mvgsfb2jIlScoppXGu5RrJ7BabzEAKp2/k0ffQlljRgcBnNx9qC5h0R
 O6EofygNMl6l/Y/YTNgauT/ckyh7h2hTXn/7ydmUbt3BpC45FLu+/6eN9d3Ywp//sb+V
 PAExWPcfBHhw5fS0k41aMb/xwvvM0qaTW+fsjqhA5ynNn9ftJRVGxBZ3pSo7GYlHaEmO
 u6+mrBt7xUelVphkgi6lJCm+2qg8x9rWmdTENTwnBzTCnzfoqXMge5J9Vq5JWYibWus2
 n8FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vMrH7R2vPu3gkZfS+H01Ns/eTvn1XgH9B+3gDwbQS4Q=;
 b=Ep7atopriFDqJrJdphFC5FcBHYIqndR5Dq1ToEXVhPaOMTeY+Y+wilfEd++oftDq0B
 vdpEsb8mvl2AnMtWYFDHa/w4HNG46JVjaBD69GR12Kr0Iidw56ILxJH5MY1WQpPQ/sFm
 D4G5oUlcWrZjMXSsvqS8ej7iwCOalw+bZs1sNGIujDXcvvSA2DfvkLdt6PRGKEuDpug3
 Q1PlX1d+TVDcOvA66Hn7KM/sBLDrsCiK+KtsUxDD8Ozw/C38Mub6SnK8G15tgSpVACvj
 YdzfzqhRsDXSPX1QftY81Q6m5tkwlykfN/E/b6/S7RBh9Njm662sqGyqh+8iaaS6cked
 aJGQ==
X-Gm-Message-State: AOAM530IuCQDl+Ql1M45SL0lFXmrFt2p8juFuZI13T027tT/NeerDlDt
 V3B4WBY+NidieFQksjHJbAt3YwzXB/Uy3E6VdLCZiznW/zw=
X-Google-Smtp-Source: ABdhPJzY/c3o9AVELnYdRdQGQ5SGjtPMLSoJTN+S95yvl3HqiQ5qFGNKsi2igRT/SjswXN+cm3rHq5ojlC52o2axmxA=
X-Received: by 2002:ac8:7a90:: with SMTP id x16mr32827703qtr.233.1593718516626; 
 Thu, 02 Jul 2020 12:35:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200629211801.C3D7095C0900@us180.sjc.aristanetworks.com>
 <20200629171612.49efbdaa@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CA+HUmGjHQPUh1frfy5E28Om9WTVr0W+UQVDsm99beC_mbTeMog@mail.gmail.com>
 <61CC2BC414934749BD9F5BF3D5D940449874358A@ORSMSX112.amr.corp.intel.com>
In-Reply-To: <61CC2BC414934749BD9F5BF3D5D940449874358A@ORSMSX112.amr.corp.intel.com>
From: Francesco Ruggeri <fruggeri@arista.com>
Date: Thu, 2 Jul 2020 12:35:05 -0700
Message-ID: <CA+HUmGhfxYY5QiwF8_UYbp0TY-k3u+cTYZDSqV1s=SUFnGCn8g@mail.gmail.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH] igb: reinit_locked() should be called
 with rtnl_lock
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
Cc: Jakub Kicinski <kuba@kernel.org>, netdev <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 David Miller <davem@davemloft.net>, open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Do not worry about the other Intel drivers, I have our developers looking at each of our drivers for the locking issue.
>
> @David Miller - I am picking up this patch

There seems to be a second race, independent from the
original one, that results in a divide error:

kworker         reboot -f       tx packet

igb_reset_task
                __igb_shutdown
                rtnl_lock()
                ...
                igb_clear_interrupt_scheme
                igb_free_q_vectors
                adapter->num_tx_queues = 0
                ...
                rtnl_unlock()
rtnl_lock()
igb_reinit_locked
igb_down
igb_up
netif_tx_start_all_queues
                                dev_hard_start_xmit
                                igb_xmit_frame
                                igb_tx_queue_mapping
                                Panics on
                                r_idx % adapter->num_tx_queues

Using in igb_reset_task a logic similar to the one in
ixgbe_reset_subtask (bailing if __IGB_DOWN or __IGB_RESETTING
is set) seems to avoid the panic.
That logic was first introduced in ixgbe as part of commit
2f90b8657ec ('ixgbe: this patch adds support for DCB to the
kernel and ixgbe driver').
Both fixes seem to be needed.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
