Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 444627A6ED7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Sep 2023 00:51:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD30941E53;
	Tue, 19 Sep 2023 22:51:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD30941E53
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695163881;
	bh=fueAcK5jmq58BMOFWPd26tsz/Tnlc4s9bUNoWl5+tNw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=n4jyEqW5T5I5u4zFQSUDgIS6Uoah/EDdbo1y3EBO8UooqOjfa9jw30uscbgpqWZ4G
	 Gb8x9qdwrITC38LDlRyssmc7gd1ZkTrC4gdASU32c+8Ph0mhlJRP+dauxuhXkLRqHh
	 9DW529Kmh2AoWt09iOJ96QIB0DokPoVxiVY65ZV2eL5TWbDGsX1KmTtkvvgrLguJDc
	 k4azUELPwrflsSMHw3r7XX+DE81Pbfv65lAzpkvvyR2UDG9UGv+581rsJy0M6eSH3H
	 5tfG3f0iJbJrmqtqGNV3KfeOUr+Oh8AdhlW84PyWMtmn5b5jc2MjzytE9ZCyinzFuZ
	 yXnYLxOpjkFaA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XRvZGIFqWmCB; Tue, 19 Sep 2023 22:51:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4AE6841E0B;
	Tue, 19 Sep 2023 22:51:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4AE6841E0B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C42361BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 22:51:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9B8A140519
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 22:51:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9B8A140519
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IW_P9o8HUVnw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Sep 2023 22:51:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7C7A1404D5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 22:51:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C7A1404D5
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="466385343"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="466385343"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 15:50:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="836605266"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="836605266"
Received: from lkp-server02.sh.intel.com (HELO 9ef86b2655e5) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Sep 2023 15:50:52 -0700
Received: from kbuild by 9ef86b2655e5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qijYP-00082C-2G;
 Tue, 19 Sep 2023 22:50:50 +0000
Date: Wed, 20 Sep 2023 06:48:52 +0800
From: kernel test robot <lkp@intel.com>
To: Eric Dumazet <edumazet@google.com>
Message-ID: <202309200607.eC7wVSd1-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695163873; x=1726699873;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=ngltZrqZ7X5pGJHeRyTEn6OUr2WIJhJqNV4iDYQ3CwM=;
 b=WtQ5WaKYZ//w/PjGkT6EWDAofVsp3orD+8weJZO7HC02L6NvzD+W9mtS
 TRDXLNHVLwIoLpZbYhUZ+9GOw0jr6iAmH9pxfMQmPBPLZVMcwSMaJ5RH2
 x39dqmh9CZ5RX1HR0gmuvlYRdKr9cNjMdmeh2yaZPoSwb7/Ubxog+QCBc
 bdIZiRy6oBEjBbCTCTYU+B1sVd+IMZ9gBfs2gQS97Yf1ArGfGVqjw9Ql5
 tcvXBT4jLgfynudmFmlfacgiOuNgX5zuBelLtyFZodNXq/2PiLmLDPEsG
 Z9a3A3cmO3q1H8cYw6zyfPciOSeRA/I2w/F4ZQ7kUgIzJYzdNXhdnVN45
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WtQ5WaKY
Subject: [Intel-wired-lan] [tnguy-next-queue:main 4/22]
 include/asm-generic/rwonce.h:44:26: warning: array subscript 0 is outside
 array bounds of '__u8[0]' {aka 'unsigned char[]'}
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
Cc: David Ahern <dsahern@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
head:   5bed8d585aa1db1651745173a66e32df82a5cb05
commit: fa17a6d8a5bd0cd7565b613cb804242cd0f6b7ab [4/22] ipv6: lockless IPV6_ADDR_PREFERENCES implementation
config: nios2-randconfig-002-20230920 (https://download.01.org/0day-ci/archive/20230920/202309200607.eC7wVSd1-lkp@intel.com/config)
compiler: nios2-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20230920/202309200607.eC7wVSd1-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202309200607.eC7wVSd1-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from ./arch/nios2/include/generated/asm/rwonce.h:1,
                    from include/linux/compiler.h:246,
                    from include/linux/string.h:5,
                    from net/sunrpc/xprtsock.c:23:
   In function 'ip6_sock_set_addr_preferences',
       inlined from 'xs_tcp_tls_finish_connecting' at net/sunrpc/xprtsock.c:2478:4,
       inlined from 'xs_tcp_tls_setup_socket' at net/sunrpc/xprtsock.c:2681:11:
>> include/asm-generic/rwonce.h:44:26: warning: array subscript 0 is outside array bounds of '__u8[0]' {aka 'unsigned char[]'} [-Warray-bounds=]
      44 | #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
         |                         ~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/rwonce.h:55:40: note: in definition of macro '__WRITE_ONCE'
      55 |         *(volatile typeof(x) *)&(x) = (val);                            \
         |                                        ^~~
   include/net/ipv6.h:1365:9: note: in expansion of macro 'WRITE_ONCE'
    1365 |         WRITE_ONCE(inet6_sk(sk)->srcprefs,
         |         ^~~~~~~~~~
   include/asm-generic/rwonce.h:50:9: note: in expansion of macro '__READ_ONCE'
      50 |         __READ_ONCE(x);                                                 \
         |         ^~~~~~~~~~~
   include/net/ipv6.h:1366:21: note: in expansion of macro 'READ_ONCE'
    1366 |                    (READ_ONCE(inet6_sk(sk)->srcprefs) & prefmask) | pref);
         |                     ^~~~~~~~~
   In function 'xs_tcp_tls_setup_socket':
   cc1: note: source object is likely at address zero
   In function 'ip6_sock_set_addr_preferences',
       inlined from 'xs_tcp_tls_finish_connecting' at net/sunrpc/xprtsock.c:2478:4,
       inlined from 'xs_tcp_tls_setup_socket' at net/sunrpc/xprtsock.c:2681:11:
   include/asm-generic/rwonce.h:55:37: warning: array subscript 0 is outside array bounds of '__u8[0]' {aka 'unsigned char[]'} [-Warray-bounds=]
      55 |         *(volatile typeof(x) *)&(x) = (val);                            \
         |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~
   include/asm-generic/rwonce.h:61:9: note: in expansion of macro '__WRITE_ONCE'
      61 |         __WRITE_ONCE(x, val);                                           \
         |         ^~~~~~~~~~~~
   include/net/ipv6.h:1365:9: note: in expansion of macro 'WRITE_ONCE'
    1365 |         WRITE_ONCE(inet6_sk(sk)->srcprefs,
         |         ^~~~~~~~~~
   In function 'xs_tcp_tls_setup_socket':
   cc1: note: source object is likely at address zero
   In function 'ip6_sock_set_addr_preferences',
       inlined from 'xs_tcp_finish_connecting' at net/sunrpc/xprtsock.c:2325:4,
       inlined from 'xs_tcp_setup_socket' at net/sunrpc/xprtsock.c:2405:11:
>> include/asm-generic/rwonce.h:44:26: warning: array subscript 0 is outside array bounds of '__u8[0]' {aka 'unsigned char[]'} [-Warray-bounds=]
      44 | #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
         |                         ~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/rwonce.h:55:40: note: in definition of macro '__WRITE_ONCE'
      55 |         *(volatile typeof(x) *)&(x) = (val);                            \
         |                                        ^~~
   include/net/ipv6.h:1365:9: note: in expansion of macro 'WRITE_ONCE'
    1365 |         WRITE_ONCE(inet6_sk(sk)->srcprefs,
         |         ^~~~~~~~~~
   include/asm-generic/rwonce.h:50:9: note: in expansion of macro '__READ_ONCE'
      50 |         __READ_ONCE(x);                                                 \
         |         ^~~~~~~~~~~
   include/net/ipv6.h:1366:21: note: in expansion of macro 'READ_ONCE'
    1366 |                    (READ_ONCE(inet6_sk(sk)->srcprefs) & prefmask) | pref);
         |                     ^~~~~~~~~
   In function 'xs_tcp_setup_socket':
   cc1: note: source object is likely at address zero
   In function 'ip6_sock_set_addr_preferences',
       inlined from 'xs_tcp_finish_connecting' at net/sunrpc/xprtsock.c:2325:4,
       inlined from 'xs_tcp_setup_socket' at net/sunrpc/xprtsock.c:2405:11:
   include/asm-generic/rwonce.h:55:37: warning: array subscript 0 is outside array bounds of '__u8[0]' {aka 'unsigned char[]'} [-Warray-bounds=]
      55 |         *(volatile typeof(x) *)&(x) = (val);                            \
         |         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~
   include/asm-generic/rwonce.h:61:9: note: in expansion of macro '__WRITE_ONCE'
      61 |         __WRITE_ONCE(x, val);                                           \
         |         ^~~~~~~~~~~~
   include/net/ipv6.h:1365:9: note: in expansion of macro 'WRITE_ONCE'
    1365 |         WRITE_ONCE(inet6_sk(sk)->srcprefs,
         |         ^~~~~~~~~~
   In function 'xs_tcp_setup_socket':
   cc1: note: source object is likely at address zero


vim +44 include/asm-generic/rwonce.h

e506ea451254ab Will Deacon 2019-10-15  28  
e506ea451254ab Will Deacon 2019-10-15  29  /*
e506ea451254ab Will Deacon 2019-10-15  30   * Yes, this permits 64-bit accesses on 32-bit architectures. These will
e506ea451254ab Will Deacon 2019-10-15  31   * actually be atomic in some cases (namely Armv7 + LPAE), but for others we
e506ea451254ab Will Deacon 2019-10-15  32   * rely on the access being split into 2x32-bit accesses for a 32-bit quantity
e506ea451254ab Will Deacon 2019-10-15  33   * (e.g. a virtual address) and a strong prevailing wind.
e506ea451254ab Will Deacon 2019-10-15  34   */
e506ea451254ab Will Deacon 2019-10-15  35  #define compiletime_assert_rwonce_type(t)					\
e506ea451254ab Will Deacon 2019-10-15  36  	compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),	\
e506ea451254ab Will Deacon 2019-10-15  37  		"Unsupported access size for {READ,WRITE}_ONCE().")
e506ea451254ab Will Deacon 2019-10-15  38  
e506ea451254ab Will Deacon 2019-10-15  39  /*
e506ea451254ab Will Deacon 2019-10-15  40   * Use __READ_ONCE() instead of READ_ONCE() if you do not require any
3c9184109e78ea Will Deacon 2019-10-30  41   * atomicity. Note that this may result in tears!
e506ea451254ab Will Deacon 2019-10-15  42   */
b78b331a3f5c07 Will Deacon 2019-10-15  43  #ifndef __READ_ONCE
e506ea451254ab Will Deacon 2019-10-15 @44  #define __READ_ONCE(x)	(*(const volatile __unqual_scalar_typeof(x) *)&(x))
b78b331a3f5c07 Will Deacon 2019-10-15  45  #endif
e506ea451254ab Will Deacon 2019-10-15  46  

:::::: The code at line 44 was first introduced by commit
:::::: e506ea451254ab17e0bf918ca36232fec2a9b10c compiler.h: Split {READ,WRITE}_ONCE definitions out into rwonce.h

:::::: TO: Will Deacon <will@kernel.org>
:::::: CC: Will Deacon <will@kernel.org>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
