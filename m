Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0495511DB42
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Dec 2019 01:49:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7CC54889EC;
	Fri, 13 Dec 2019 00:49:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xVQ2J6upEbrj; Fri, 13 Dec 2019 00:49:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1550E88A06;
	Fri, 13 Dec 2019 00:49:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C26871BF9B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Dec 2019 00:49:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BE63C8720E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Dec 2019 00:49:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MArMoVSogf1k for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Dec 2019 00:49:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com
 [209.85.166.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2E24F8712F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Dec 2019 00:49:01 +0000 (UTC)
Received: by mail-il1-f196.google.com with SMTP id n1so634299ilm.6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Dec 2019 16:49:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LXMfdGtpPwo1nM9kkoN12NplXgpmiYVMokpj1wCUqnI=;
 b=C82E5s4pRIUwQbm0UuzY7t9EJw8vRJpQLibE2K6+OTEhvb/97vKx0+v2Vt1vaufkV8
 xvVirfJzjvKCwRfqIN2ilj9Bhv4jgameRLMwFNHJNQRs1A/rJ8l2G374RmaXeI9tU3o7
 A9w1LXQJ9kg0Z0OwDDZk3BwY5kFQ/OV3G7Nceg84WHk5njwnCcS+0HzVnegcBzuA4Gga
 8hz9BG1QCTZggxmT9B4j3LHzSMZFYZ25Zi/IH+ytSDLOusjir48JF0XohfFPW9UTAtmU
 604x2Apj2xxlmHhJJwZ/0HTKuw7EAhFcB5xZKRVIO0iJQVFey8u4hPQg3eDzwTpVvBh/
 zaBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LXMfdGtpPwo1nM9kkoN12NplXgpmiYVMokpj1wCUqnI=;
 b=KdE/cUfOISC1kuQ6nBnkd9ssa6LsD7uG2NYHMnw6EiNtRCgjkp+lsEz53pfTkPEUF+
 KSQkadGlTU2QrYMUTYDQe4eYGn71dhH6XtQsDYMr8BZoDSWjE1YQAJvoJaxeQep3HEYB
 okTCgt1p50rO9db69s6sTelx4A6ojFxH+SAAoSdbPQUceceje+vqa2NO4I9pB7ld8xUo
 tTUdfsOa8CQvqS4lFp3qyjaMZSVxGNxc8aPBApmR1EbOZcg2+WTGlCtXm/34VF0t1xpf
 Zc5zEpViTdHtAehr6gvRyOLBzI9OwpbI974LefwdjR+/tvVjjObS6Fem9Wb3B2MVdrUY
 QKZA==
X-Gm-Message-State: APjAAAW0d9fne8I5t4RKpTT9KTdrZJJy4tTB+N0myMPje4s3L/7nnzx1
 rZkxKbcMoPGlK/jCY6ekWUdp4f0JiUF5I5Vh0X4=
X-Google-Smtp-Source: APXvYqxvMYOFRr6KT5lk7SC1D52QaM/O5Dt1mVrz2PTIjrnRB0zIovZeqMEuIpnZCrVKVy1gdr39Tfssc+qgeqbjuig=
X-Received: by 2002:a92:d081:: with SMTP id h1mr10340696ilh.97.1576198140191; 
 Thu, 12 Dec 2019 16:49:00 -0800 (PST)
MIME-Version: 1.0
References: <20191212105847.16488-1-gomonovych@gmail.com>
In-Reply-To: <20191212105847.16488-1-gomonovych@gmail.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 12 Dec 2019 16:48:49 -0800
Message-ID: <CAKgT0UeTgGmQGEaJ3ePmCoEW5r5KDMmE0c0jrBGGeb-uzbq=3A@mail.gmail.com>
To: Vasyl Gomonovych <gomonovych@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH] igb: index regs_buff array via index
 variable
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
 LKML <linux-kernel@vger.kernel.org>, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Dec 12, 2019 at 2:58 AM Vasyl Gomonovych <gomonovych@gmail.com> wrote:
>
> This patch is just a preparation for additional register dump in regs_buff.
> To make new register insertion in the middle of regs_buff array easier
> change array indexing to use local counter reg_ix.
>
> ---
>
> Basically this path is just a subject to ask
> How to add a new register to dump from dataseet
> Because it is logically better to add an additional register
> in the middle of an array but that will break ABI.
> To not have the ABI problem we should just add it at the
> end of the array and increase the array size.

So I am pretty sure the patch probably breaks ABI. The reasons for the
fixed offsets is because this driver supports multiple parts that have
different register sets so we cannot have them overlapping.

We cannot change the register locations because it will break the
interface with ethtool. If you need to add additional registers you
will need to add them to the end of the array.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
