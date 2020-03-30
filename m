Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D7D197F6D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2020 17:20:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 62BFC863E1;
	Mon, 30 Mar 2020 15:20:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iwBwZQjnWDPi; Mon, 30 Mar 2020 15:20:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4AC9A86190;
	Mon, 30 Mar 2020 15:20:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EF8781BF40E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2020 15:14:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E85A985D92
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2020 15:14:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VPvVULAbPmLD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Mar 2020 15:13:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D52F385EA5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2020 15:13:37 +0000 (UTC)
Received: from fsav305.sakura.ne.jp (fsav305.sakura.ne.jp [153.120.85.136])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 02UFD7Hq079755;
 Tue, 31 Mar 2020 00:13:07 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav305.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav305.sakura.ne.jp);
 Tue, 31 Mar 2020 00:13:07 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav305.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 02UFD7n5079751
 (version=TLSv1.2 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Tue, 31 Mar 2020 00:13:07 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
To: syzbot <syzbot+89731ccb6fec15ce1c22@syzkaller.appspotmail.com>,
 casey@schaufler-ca.com
References: <000000000000db448f05a212beea@google.com>
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Message-ID: <a293a766-4329-f6de-c8a9-1a5051217c45@I-love.SAKURA.ne.jp>
Date: Tue, 31 Mar 2020 00:13:05 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <000000000000db448f05a212beea@google.com>
Content-Language: en-US
X-Mailman-Approved-At: Mon, 30 Mar 2020 15:20:03 +0000
Subject: Re: [Intel-wired-lan] kernel panic: smack: Failed to initialize
 cipso DOI.
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
Cc: linux-security-module@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 jmorris@namei.org, serge@hallyn.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2020/03/30 22:51, syzbot wrote:
> Hello,
> 
> syzbot found the following crash on:
> 
> HEAD commit:    1b649e0b Merge git://git.kernel.org/pub/scm/linux/kernel/g..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=14957099e00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=4ac76c43beddbd9
> dashboard link: https://syzkaller.appspot.com/bug?extid=89731ccb6fec15ce1c22
> compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1202c375e00000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1390bb03e00000

Wrong bisection. This is not a network / driver problem.
There is a memory allocation fault injection prior to this panic.

  [ T1576] FAULT_INJECTION: forcing a failure.
  [ T1576] Kernel panic - not syncing: smack:  Failed to initialize cipso DOI.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
