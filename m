Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D5363DC7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jul 2019 00:16:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0A54187C63;
	Tue,  9 Jul 2019 22:16:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PZ+q9994eLZw; Tue,  9 Jul 2019 22:16:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 74DB687C3F;
	Tue,  9 Jul 2019 22:16:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 72AFC1BF4D8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2019 18:55:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6CE91204A2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2019 18:55:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jtBjQFJsSIV8 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jul 2019 18:55:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by silver.osuosl.org (Postfix) with ESMTPS id B7C7520407
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2019 18:55:29 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id r21so16565183qke.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 09 Jul 2019 11:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=f9RwapZGzyFkNT+dfGo5wVJbdzZuRB3mHC5GSj9LmJ8=;
 b=BmHqjFAfGGPLYECr2mLWMITHeNaZHCOuICzgPdidHDiuAYl1DuB9BIHuF8L9YXZZBN
 32fRp3SSz8YfQ9ebbRhi1MUTYnu1W5q4U5padrZzDoWDxjK6w4+GHDvFUEwCbWXuKhqQ
 V7H7zH65QGE6QRGOlLq4y3gwm6gwv1/GmzVS2ZP7A0B+6NObpJq/lCNkAoMvopXqhkZ4
 +hUhPTWV+2R/amH37Qw08ey3hykfYDMrk12/z8xg6aea9RvC6oPbm/ESUCy8qmGl44pc
 DPUY9/SJ4EOJ+RqTBxKQnK7lqFCMmjI8al7q6nuhAW9Tq7Wo/bHQ1F97J72/Ae8WDwOt
 gDqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f9RwapZGzyFkNT+dfGo5wVJbdzZuRB3mHC5GSj9LmJ8=;
 b=TQQDrcfbiiWV2jYSkYhXeLI+NUR1OWMwGBWT4dDKvJTtmIHIHu9Mzc6kQBidVLmPaG
 ghqrAyoLWcZ0Zo952yhO2Da+C/d6Y7DNYt1/AP+4R09bUdMmAsoZUXeMvKt154ZD+9HH
 VFeqrVOeb6FuXj+zSip5BILDV3lR9hDa2/y6S1AT0oTT3SPjnGuCKiF1/Myu22U0N/+S
 IA8g2/+jDXIKo/ZIqhlrGyz/cc7xtZSgZrR6xurOJPuM7tS3VY35xliDq8xnx0t5APCj
 tO8FOO6Y49xA9XpK9fmGpaufwICTcStc262DUdcTEuhVy7p+CmDXqxZdW6akodsoPEkT
 7gYA==
X-Gm-Message-State: APjAAAWC2zRCLwbWTwAHyElfXKc/VywA/tvSeweqKsCbeGbLiQPn2BK0
 5I2uTt3KETeukg47f+GptFDoWS+xvB6phIsghAY=
X-Google-Smtp-Source: APXvYqy2K48JPuWKCtWjDTYwAWXMIBHAHIA2ef38g1U6AO2efdVySfxR3FLKDJCS+JpAxv2GrF7QjA5Xj7T/w8AyjhQ=
X-Received: by 2002:a37:660d:: with SMTP id a13mr20589208qkc.36.1562698528762; 
 Tue, 09 Jul 2019 11:55:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAEf4BzaUEWwGL3k0VeiFYFqyJexQU9cDZWN69jSDpBjP1ZEcpw@mail.gmail.com>
 <000000000000a94981058d37f1a4@google.com>
In-Reply-To: <000000000000a94981058d37f1a4@google.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Tue, 9 Jul 2019 11:55:17 -0700
Message-ID: <CAEf4BzYTGuXgN+vNJEoMbH_GFAVnSsBvq_YhvoFOeGG5Y+N_ug@mail.gmail.com>
To: syzbot <syzbot+f21251a7468cd46efc60@syzkaller.appspotmail.com>
X-Mailman-Approved-At: Tue, 09 Jul 2019 22:16:01 +0000
Subject: Re: [Intel-wired-lan] WARNING in mark_chain_precision
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
Cc: xdp-newbies@vger.kernel.org, Song Liu <songliubraving@fb.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>, hawk@kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>,
 open list <linux-kernel@vger.kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Martin Lau <kafai@fb.com>, syzkaller-bugs@googlegroups.com,
 intel-wired-lan@lists.osuosl.org, Networking <netdev@vger.kernel.org>,
 Yonghong Song <yhs@fb.com>, bpf <bpf@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Original reproducer is almost identical to the one that is fixed by
https://patchwork.ozlabs.org/patch/1129479/.

bpf_prog_free_deferred bug that's undeterministically exposed after
this fix seems to be the cause of a bunch of other bug reports and is
not related to verifier precision tracking.

#syz dup: WARNING in __mark_chain_precision
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
