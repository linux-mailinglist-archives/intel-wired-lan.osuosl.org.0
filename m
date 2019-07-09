Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D498B638F1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jul 2019 17:56:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 932BF87A2F;
	Tue,  9 Jul 2019 15:56:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uvtbPRQ1oB1F; Tue,  9 Jul 2019 15:56:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 086EF87ADF;
	Tue,  9 Jul 2019 15:56:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EC0D01BF592
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2019 03:49:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E7FD68795A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2019 03:49:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P6qwUmnGi7WF for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jul 2019 03:49:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 69CDB878CE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2019 03:49:37 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id r21so14749877qke.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 08 Jul 2019 20:49:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KskYFE/Ug0iwkacs3vqwqivOLXYCEi71ZnQKnzUX30M=;
 b=cIPz3WCgEnb0VMxGUsvqL96sOL9BnY0u5UhIhfuMiadfYLJnB528+qruGwr0ZaHgQ2
 Qe+wyJ78woji2ZfoTBDiEgz/JCwRuzcLC3qAqOqVYrPG+nMgSYRZjX8RLqYJ6bFYyjfw
 dA54FcvAlWqoRgA/v26irblTCRQK/q6PlR3rOM6o66b9KrkN2qNfjduUEQLkoDQL6T/Z
 BHc3ZV3jjRVZd+i0/hF49PLAaTib/RsC00xGy/hZ5O+Bnd5oUgYCI8aDCkYzNbuQYUdI
 lOLNsLdzBBpwi712iaaq3cqH0NWj7cgrjD+Ec7U4lShSWfBE+ZS7SXvXt/Lz+PwBi65p
 dJWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KskYFE/Ug0iwkacs3vqwqivOLXYCEi71ZnQKnzUX30M=;
 b=ikLYhR+1Am5SbhJcSJQrRPF6A9+Jva1KcfWnIHJbFkocvno48hU+c4OVA0tpjdQx5h
 /KOUWyBR2qfldZDZlR5gKZG1aIjIWqVNRP7MkVCAKaVI63d3FJsv6iP6wTcdWMZy6knf
 ePHGhCXLLSOLFg0X58NFLGYXeEqEQ64Qn/bJk7ttRBqU1hjQFECkKvaECgXt/2sk5ucx
 35nP87AXBbnLioJnKjNANki3rOGUc5Bs0grJkQ5XES9xMh7UyelXLxRcqbL0rJ5tAtSr
 BFQM43L1+4t/ukmjRPb8kXd5JnLXGCh0H/xBnQkzoz/VIp1Vd7A69scJLbBypAAAh1A+
 OHRQ==
X-Gm-Message-State: APjAAAWFwDfGt8N2lraI8s3J2p7ZOInUQ9S/Yo4eHrshsgcxnccI8RoL
 Gd4yPKw73cx7UD8VvqOOR7xb50PtCZClWIbm9M4=
X-Google-Smtp-Source: APXvYqzjbKB8azSowHGtx9AS51EbPcJglyrtLqksfB1ogI0ZeH6D2CKl94ZNbdBM9ZNpiQydQYeVO7NEm1xV0pXMIfk=
X-Received: by 2002:a37:bf42:: with SMTP id p63mr17248085qkf.437.1562644176501; 
 Mon, 08 Jul 2019 20:49:36 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000b13e1d058d2da276@google.com>
In-Reply-To: <000000000000b13e1d058d2da276@google.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Mon, 8 Jul 2019 20:49:25 -0700
Message-ID: <CAEf4BzaUEWwGL3k0VeiFYFqyJexQU9cDZWN69jSDpBjP1ZEcpw@mail.gmail.com>
To: syzbot <syzbot+f21251a7468cd46efc60@syzkaller.appspotmail.com>
X-Mailman-Approved-At: Tue, 09 Jul 2019 15:56:52 +0000
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

#syz test: https://github.com/anakryiko/linux bpf-fix-precise-bpf_st
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
