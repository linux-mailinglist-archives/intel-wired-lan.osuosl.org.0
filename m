Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2852235380
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Aug 2020 18:52:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8877C88251;
	Sat,  1 Aug 2020 16:52:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id briCC6pWX9tQ; Sat,  1 Aug 2020 16:52:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BEF768822B;
	Sat,  1 Aug 2020 16:52:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7EBFA1BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Aug 2020 14:41:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 22EF8203AD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Aug 2020 14:41:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZCZt30SRqhDZ for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Aug 2020 14:41:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc
 [193.142.43.52])
 by silver.osuosl.org (Postfix) with ESMTPS id AD16420346
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Aug 2020 14:41:10 +0000 (UTC)
Received: from fw by Chamillionaire.breakpoint.cc with local (Exim 4.92)
 (envelope-from <fw@strlen.de>)
 id 1k1sh4-0006yJ-FS; Sat, 01 Aug 2020 16:41:02 +0200
Date: Sat, 1 Aug 2020 16:41:02 +0200
From: Florian Westphal <fw@strlen.de>
To: kernel test robot <lkp@intel.com>
Message-ID: <20200801144102.GI5271@breakpoint.cc>
References: <202008012237.F1NJb2jD%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202008012237.F1NJb2jD%lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Approved-At: Sat, 01 Aug 2020 16:52:20 +0000
Subject: Re: [Intel-wired-lan] [jkirsher-next-queue:dev-queue 1901/1959]
 include/linux/kernel.h:47:38: warning: division by zero
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
Cc: Mat Martineau <mathew.j.martineau@linux.intel.com>, kbuild-all@lists.01.org,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Florian Westphal <fw@strlen.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

kernel test robot <lkp@intel.com> wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git dev-queue
> head:   9217a41c8ac7e1ca23399f9af7455f1085df9594
> commit: 9466a1ccebbe54ac57fb8a89c2b4b854826546a8 [1901/1959] mptcp: enable JOIN requests even if cookies are in use
> config: parisc-randconfig-c004-20200731 (attached as .config)
> compiler: hppa-linux-gcc (GCC) 9.3.0
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 9466a1ccebbe54ac57fb8a89c2b4b854826546a8
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross ARCH=parisc 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    In file included from include/linux/skbuff.h:13,
>                     from net/mptcp/syncookies.c:2:
>    net/mptcp/syncookies.c: In function 'mptcp_join_cookie_init':
> >> include/linux/kernel.h:47:38: warning: division by zero [-Wdiv-by-zero]
>       47 | #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))

I forgot ARRAY_SIZE can't be used for spinlock_t arrays because they are
0 on UP.  I've sumitted a build fix.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
