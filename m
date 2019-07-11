Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E74065DB7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jul 2019 18:42:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B68F3880F5;
	Thu, 11 Jul 2019 16:42:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OkzBVVSBFtWO; Thu, 11 Jul 2019 16:42:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 08F66880E0;
	Thu, 11 Jul 2019 16:42:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D09831BF381
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2019 16:10:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CC0C58511C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2019 16:10:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gf_PvjUXLSy3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jul 2019 16:10:22 +0000 (UTC)
X-Greylist: delayed 00:09:40 by SQLgrey-1.7.6
Received: from mail7-211.sinamail.sina.com.cn (mail7-211.sinamail.sina.com.cn
 [202.108.7.211])
 by fraxinus.osuosl.org (Postfix) with SMTP id 904B884C19
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jul 2019 16:10:19 +0000 (UTC)
Received: from unknown (HELO localhost.localdomain)([221.219.5.31])
 by sina.com with ESMTP
 id 5D275D2100004CDD; Thu, 12 Jul 2019 00:00:35 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 81968550200754
From: Hillf Danton <hdanton@sina.com>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Fri, 12 Jul 2019 00:00:25 +0800
Message-Id: <20190711160025.8796-1-hdanton@sina.com>
MIME-Version: 1.0
Thread-Topic: bpf_prog_free_deferred bug. WAS: Re: WARNING in
 mark_chain_precision
X-Mailman-Approved-At: Thu, 11 Jul 2019 16:42:43 +0000
Subject: [Intel-wired-lan] bpf_prog_free_deferred bug. WAS: Re: WARNING in
 mark_chain_precision
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
Cc: "xdp-newbies@vger.kernel.org" <xdp-newbies@vger.kernel.org>,
 Song Liu <songliubraving@fb.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 "hawk@kernel.org" <hawk@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 open list <linux-kernel@vger.kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Martin Lau <kafai@fb.com>,
 "syzkaller-bugs@googlegroups.com" <syzkaller-bugs@googlegroups.com>,
 Networking <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 syzbot <syzbot+f21251a7468cd46efc60@syzkaller.appspotmail.com>,
 Yonghong Song <yhs@fb.com>, bpf <bpf@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On Thu, 11 Jul 2019 07:29:42 +0800 Andrii Nakryiko wrote:
>
> I'm curious what makes BPF_PROG_TYPE_SOCKET_FILTER (and

Me too. And thanks to folks casting light on it.

> BPF_PROG_TYPE_SK_REUSEPORT) special, compared to all the other types
> of BPF programs. If it's something to do with sockets specifically,
> there are a bunch of other programs that deal with sockets, so should
> they be handled specially as well (e.g., BPF_PROG_TYPE_CGROUP_SOCK)?
>
> Daniel, do you have any insight here?

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
