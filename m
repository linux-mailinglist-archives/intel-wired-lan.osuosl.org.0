Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5212047B087
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Dec 2021 16:44:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF98560E2A;
	Mon, 20 Dec 2021 15:44:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zDOEl7qxNyU2; Mon, 20 Dec 2021 15:44:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D05960E1A;
	Mon, 20 Dec 2021 15:44:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0D4071BF418
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Dec 2021 04:15:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E82C34022C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Dec 2021 04:15:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GZwfS4IwPL2u for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Dec 2021 04:15:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0D99240157
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Dec 2021 04:15:07 +0000 (UTC)
Received: by mail-il1-f199.google.com with SMTP id
 g14-20020a056e021e0e00b002a26cb56bd4so4446045ila.14
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Dec 2021 20:15:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=dA41sw2aNHV4UHGeC8RSbb14+HrrLILYaej89YpH4eE=;
 b=yyk7L992UJTXxU5fOTSNbIcJDYX18ajcvtgq/okWaYhcX8rsYN+vm6G00JGU8eHAFE
 M5t/cyh7NnnRBubmdpzBDkQH/IwLnnujJrqaUuDSg8j9ILk5SMdsXuCComWNzYJwLtCd
 CB0UFE3JlJejM1Hnqk6MKK4rXzDUT3sC5Azxsg5qeWthzaJe2kiuK3cNJIlnp/9/8r3M
 SB3i1duPVxkgfHjGXjcNAC8+bJdXXk7q/0/osCspp7MS/WrIAONYWubsDogP1F8gVF2Q
 /FJx0Cv/1BwcvK452qoorBqMju2ed3ApEcdD+xA1TBy4Xc6ydEl4Mye0Z7AG8hjbUIxK
 dL0A==
X-Gm-Message-State: AOAM531uPYeORhcfL6iKORUO1JIpd/B/XVs7B1NfrEWNmvX1JBP8etVw
 QmRLOUeoNj2oSvL4T2RgT8O5ZR4aVAZezkph2BDaWPHchH2Y
X-Google-Smtp-Source: ABdhPJyXcmpph7Uxs90eXgZ4J6O5bHwJHb0SeCJqzeX4nFnzR45jGIA0ziodV3xPBXpgT54fSJAUrsGi/SHKY0zsV96A9223mP06
MIME-Version: 1.0
X-Received: by 2002:a05:6638:22c8:: with SMTP id
 j8mr8937412jat.21.1639973707134; 
 Sun, 19 Dec 2021 20:15:07 -0800 (PST)
Date: Sun, 19 Dec 2021 20:15:07 -0800
In-Reply-To: <0000000000007ea16705d0cfbb53@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000413eba05d38c22c2@google.com>
From: syzbot <syzbot+4c63f36709a642f801c5@syzkaller.appspotmail.com>
To: anthony.l.nguyen@intel.com, changbin.du@intel.com, 
 christian.brauner@ubuntu.com, davem@davemloft.net, edumazet@google.com, 
 eric.dumazet@gmail.com, hawk@kernel.org, hkallweit1@gmail.com, 
 intel-wired-lan-owner@osuosl.org, intel-wired-lan@lists.osuosl.org, 
 jesse.brandeburg@intel.com, kuba@kernel.org, linux-can@vger.kernel.org, 
 linux-kernel@vger.kernel.org, mkl@pengutronix.de, netdev@vger.kernel.org, 
 socketcan@hartkopp.net, syzkaller-bugs@googlegroups.com, yajun.deng@linux.dev
X-Mailman-Approved-At: Mon, 20 Dec 2021 15:44:04 +0000
Subject: Re: [Intel-wired-lan] [syzbot] kernel BUG in pskb_expand_head
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

syzbot has bisected this issue to:

commit e4b8954074f6d0db01c8c97d338a67f9389c042f
Author: Eric Dumazet <edumazet@google.com>
Date:   Tue Dec 7 01:30:37 2021 +0000

    netlink: add net device refcount tracker to struct ethnl_req_info

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=109e6fcbb00000
start commit:   434ed2138994 Merge branch 'tc-action-offload'
git tree:       net-next
final oops:     https://syzkaller.appspot.com/x/report.txt?x=129e6fcbb00000
console output: https://syzkaller.appspot.com/x/log.txt?x=149e6fcbb00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=7488eea316146357
dashboard link: https://syzkaller.appspot.com/bug?extid=4c63f36709a642f801c5
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14141ca3b00000

Reported-by: syzbot+4c63f36709a642f801c5@syzkaller.appspotmail.com
Fixes: e4b8954074f6 ("netlink: add net device refcount tracker to struct ethnl_req_info")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
