Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C8A134FAB
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jan 2020 23:55:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4BD2381E5E;
	Wed,  8 Jan 2020 22:55:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fkPJMfcW4taQ; Wed,  8 Jan 2020 22:55:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6FACE8684A;
	Wed,  8 Jan 2020 22:55:17 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 383F01BF3DD
 for <intel-wired-lan@osuosl.org>; Wed,  8 Jan 2020 22:55:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3397086849
 for <intel-wired-lan@osuosl.org>; Wed,  8 Jan 2020 22:55:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vNobUfNZHwor for <intel-wired-lan@osuosl.org>;
 Wed,  8 Jan 2020 22:55:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 47C6981E5E
 for <intel-wired-lan@osuosl.org>; Wed,  8 Jan 2020 22:55:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 14:55:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,411,1571727600"; d="scan'208";a="211691562"
Received: from jekeller-mobl.amr.corp.intel.com (HELO [134.134.177.84])
 ([134.134.177.84])
 by orsmga007.jf.intel.com with ESMTP; 08 Jan 2020 14:55:14 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: intel-wired-lan@osuosl.org
References: <20200103022342.820175-1-jesse.brandeburg@intel.com>
 <4185adba-3420-32ad-014d-64eee768d183@intel.com>
Organization: Intel Corporation
Message-ID: <07213c35-b4fb-e230-75a2-1d11d51815c9@intel.com>
Date: Wed, 8 Jan 2020 14:55:14 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <4185adba-3420-32ad-014d-64eee768d183@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e/iavf: use better trace
 path
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

On 1/8/2020 2:49 PM, Jacob Keller wrote:
> On 1/2/2020 6:23 PM, Jesse Brandeburg wrote:
>> I'm seeing compilation fail of the i40e/iavf driver for some reason.
>> I just checked 5.5-rc4 and the tip of net/net-next and all fail.
>> Fails all the way back to v5.1 at least, I didn't check further back.
>>
>> repro steps:
>> $ gcc -v
>> gcc version 9.2.1 20190827 (Red Hat 9.2.1-1) (GCC)
>>
>> $ git checkout -b my-net davem-net/master
>> $ make mrproper
>> $ make O=../my-net.obj defconfig allmodconfig modules_prepare
>> $ make O=../my-net.obj M=drivers/net/ethernet/intel/i40e
>>
>> make[1]: Entering directory '/home/jbrandeb/git/my-net.obj'
>>   CC [M]  drivers/net/ethernet/intel/i40e/i40e_main.o
>> In file included from
>> /home/jbrandeb/git/linux2/drivers/net/ethernet/intel/i40e/i40e_trace.h:209,
>>                  from /home/jbrandeb/git/linux2/drivers/net/ethernet/intel/i40e/i40e_main.c:20:
>> /home/jbrandeb/git/linux2/include/trace/define_trace.h:95:42: fatal error: ./i40e_trace.h: No such file or directory
>>    95 | #include TRACE_INCLUDE(TRACE_INCLUDE_FILE)
>>       |                                          ^
>> compilation terminated.
>> make[2]: *** [/home/jbrandeb/git/linux2/scripts/Makefile.build:266: drivers/net/ethernet/intel/i40e/i40e_main.o] Error 1
>> make[1]: *** [/home/jbrandeb/git/linux2/Makefile:1693: drivers/net/ethernet/intel/i40e] Error 2
>> make[1]: Leaving directory '/home/jbrandeb/git/my-net.obj'
>> make: *** [Makefile:179: sub-make] Error 2
>>
>> Just for sanity, I tried building the ice driver the same as above and
>> it succeeds, so the build does work for some drivers.
>>
> 
> So.. ice works for some reason but i40e and iavf do not? Is the ice
> driver using a path relative to the root?
> 
>> So fix the include path for the i40e driver trace file to be relative
>> to the kernel root like (some) other drivers do.
> 
> I'd really like to know why this isn't required by all drivers...
> 

It looks like this is handled in driver's Makefile via:

ccflags-y += -I$(src)>-->------->-------# needed for trace events

or the following:

CFLAGS_trace.o := -I$(src)

This seems like the preferred solution when building with a separate
object tree.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
