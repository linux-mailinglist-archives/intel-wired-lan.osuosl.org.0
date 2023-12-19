Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B7190817F19
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Dec 2023 01:56:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 779526139B;
	Tue, 19 Dec 2023 00:56:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 779526139B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702947383;
	bh=5zmuUq6fBYM8L75B9v05Ne5ddXTb2sxk4mLRyFbcCPQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=32o7dC97RD1LO1iWWvKuHKIqLnT2o8nPRF/ZMKMEuN1vbdV4EgA0nsA9aYJWRmtyo
	 LLXJ71/nnMwnsFLIGHGBpqKZ/OsMQgLU/YTdv7zPLUQnhBtTrSSFTkWO0ZAFjPZjeq
	 EIc1j+mdU5dRkyMHkLYvfcCzYSDclGOricu6SqAZn+jnndp0nSXHTVp8z61xjyKt6q
	 BgyLKTO4vpc+ebd3WrxlqZl4ie2bUf2XnMG+CYQ9fQBcYOOr9PndQ4E6jpiaqfj+3Q
	 v3IVLL7iIahyq2DELwu7rxv/H9iRIZv8TMWcuVjKNIkKEq6NbgYMNm30Drj4PXNcu/
	 wmH2bf+7AlJmw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LBygvt1VIp07; Tue, 19 Dec 2023 00:56:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 12EEC60EE9;
	Tue, 19 Dec 2023 00:56:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 12EEC60EE9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 916BF1BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 00:01:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6413540148
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 00:01:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6413540148
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1IfCIkKTG8Ut for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Dec 2023 00:01:21 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2A9744004A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Dec 2023 00:01:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A9744004A
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id F3B30611D4;
 Tue, 19 Dec 2023 00:01:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C79BC433C8;
 Tue, 19 Dec 2023 00:01:18 +0000 (UTC)
Date: Mon, 18 Dec 2023 17:01:16 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: kernel test robot <lkp@intel.com>
Message-ID: <20231219000116.GA3956476@dev-arch.thelio-3990X>
References: <20231215171020.687342-21-bigeasy@linutronix.de>
 <202312161212.D5tju5i6-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202312161212.D5tju5i6-lkp@intel.com>
X-Mailman-Approved-At: Tue, 19 Dec 2023 00:56:17 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702944079;
 bh=fMgl5f1cxsDp2Ro+Gy0GmSHDb4UdBfrTzpxZdw6xSOI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rr8a9wCcxzUWjy+33BEpF+Rz/shtCM1gzDwv6ucq4Mp+VdWWx+hVaiF+tmXKbzUQ7
 wObo1de1uj0lA8td3opQu8p2rEAxvlh+inTqEEmqXhxdvD0qtAD6IhSfTs4NII0EIG
 lw+Zey2sh4dFZYPEWd/NGIGXAmjGKubHZm5SgQzagOwYliWG5sFMICElNin3u4lOHE
 f6rzfFg29C//Uw1vAdwPHRcW3a2mGwhnNKM0o95Z/7d3mbznhulW2VnALuxSiCMA34
 aRbeIFGIE9JczjyLsDc+cmS8RyBopRKqHd967KNsrt6slkFwU68j+plOP3/yNrqDAf
 r20wNTWUyx20g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=rr8a9wCc
Subject: Re: [Intel-wired-lan] [PATCH net-next 20/24] net: intel: Use
 nested-BH locking for XDP redirect.
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, llvm@lists.linux.dev,
 Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Will Deacon <will@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, Ingo Molnar <mingo@redhat.com>,
 intel-wired-lan@lists.osuosl.org, Waiman Long <longman@redhat.com>,
 Paolo Abeni <pabeni@redhat.com>, Boqun Feng <boqun.feng@gmail.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Frederic Weisbecker <frederic@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 oe-kbuild-all@lists.linux.dev, Thomas Gleixner <tglx@linutronix.de>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Dec 16, 2023 at 12:53:43PM +0800, kernel test robot wrote:
> Hi Sebastian,
> 
> kernel test robot noticed the following build errors:
> 
> [auto build test ERROR on net-next/main]
> 
> url:    https://github.com/intel-lab-lkp/linux/commits/Sebastian-Andrzej-Siewior/locking-local_lock-Introduce-guard-definition-for-local_lock/20231216-011911
> base:   net-next/main
> patch link:    https://lore.kernel.org/r/20231215171020.687342-21-bigeasy%40linutronix.de
> patch subject: [PATCH net-next 20/24] net: intel: Use nested-BH locking for XDP redirect.
> config: arm-defconfig (https://download.01.org/0day-ci/archive/20231216/202312161212.D5tju5i6-lkp@intel.com/config)
> compiler: clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)
> reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231216/202312161212.D5tju5i6-lkp@intel.com/reproduce)
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202312161212.D5tju5i6-lkp@intel.com/
> 
> All errors (new ones prefixed by >>):
> 
> >> drivers/net/ethernet/intel/igb/igb_main.c:8620:3: error: cannot jump from this goto statement to its label
>                    goto xdp_out;
>                    ^
>    drivers/net/ethernet/intel/igb/igb_main.c:8624:2: note: jump bypasses initialization of variable with __attribute__((cleanup))
>            guard(local_lock_nested_bh)(&bpf_run_lock.redirect_lock);
>            ^
>    include/linux/cleanup.h:142:15: note: expanded from macro 'guard'
>            CLASS(_name, __UNIQUE_ID(guard))
>                         ^
>    include/linux/compiler.h:180:29: note: expanded from macro '__UNIQUE_ID'
>    #define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __COUNTER__)
>                                ^
>    include/linux/compiler_types.h:84:22: note: expanded from macro '__PASTE'
>    #define __PASTE(a,b) ___PASTE(a,b)
>                         ^
>    include/linux/compiler_types.h:83:23: note: expanded from macro '___PASTE'
>    #define ___PASTE(a,b) a##b
>                          ^
>    <scratch space>:52:1: note: expanded from here
>    __UNIQUE_ID_guard753
>    ^
>    1 error generated.

I initially thought that this may have been
https://github.com/ClangBuiltLinux/linux/issues/1886 but asm goto is not
involved here.

This error occurs because jumping over the initialization of a variable
declared with __attribute__((__cleanup__(...))) does not prevent the
clean up function from running as one may expect it to, but could
instead result in the clean up function getting run on uninitialized
memory. A contrived example (see the bottom of the "Output" tabs for the
execution output):

https://godbolt.org/z/9bvGboxvc

While there is a warning from GCC in that example, I don't see one in
the kernel's case. I see there is an open GCC issue around this problem:

https://gcc.gnu.org/bugzilla/show_bug.cgi?id=91951

While it is possible that there may not actually be a problem with how
the kernel uses __attribute__((__cleanup__(...))) and gotos, I think
clang's behavior is reasonable given the potential footguns that this
construct has.

Cheers,
Nathan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
