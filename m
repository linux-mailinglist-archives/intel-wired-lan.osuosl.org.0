Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D43451367A8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jan 2020 07:47:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8956487952;
	Fri, 10 Jan 2020 06:47:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2xrCHoGHhTBC; Fri, 10 Jan 2020 06:47:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 16431870DF;
	Fri, 10 Jan 2020 06:47:27 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9FE161BF3D6
 for <intel-wired-lan@osuosl.org>; Fri, 10 Jan 2020 06:47:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9BE0E86E49
 for <intel-wired-lan@osuosl.org>; Fri, 10 Jan 2020 06:47:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UZXlfTYsoBBY for <intel-wired-lan@osuosl.org>;
 Fri, 10 Jan 2020 06:47:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EA19A86C18
 for <intel-wired-lan@osuosl.org>; Fri, 10 Jan 2020 06:47:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 22:47:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,415,1571727600"; d="scan'208";a="304080909"
Received: from jbrandeb-desk4.amr.corp.intel.com (HELO localhost)
 ([10.166.241.50])
 by orsmga001.jf.intel.com with ESMTP; 09 Jan 2020 22:47:24 -0800
Date: Thu, 9 Jan 2020 22:47:23 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Message-ID: <20200109224723.00003603@intel.com>
In-Reply-To: <9400163aa83bbd414e43e2aebd5d9e1e23e394b5.camel@intel.com>
References: <20200103022342.820175-1-jesse.brandeburg@intel.com>
 <4185adba-3420-32ad-014d-64eee768d183@intel.com>
 <07213c35-b4fb-e230-75a2-1d11d51815c9@intel.com>
 <9400163aa83bbd414e43e2aebd5d9e1e23e394b5.camel@intel.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
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
Cc: intel-wired-lan@osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 9 Jan 2020 09:43:52 -0800 Jeff wrote:
> On Wed, 2020-01-08 at 14:55 -0800, Jacob Keller wrote:
> > On 1/8/2020 2:49 PM, Jacob Keller wrote:  
>  [...]  
>  [...]  
>  [...]  
>  [...]  
>  [...]  
> > 
> > It looks like this is handled in driver's Makefile via:
> > 
> > ccflags-y += -I$(src)>-->------->-------# needed for trace events
> > 
> > or the following:
> > 
> > CFLAGS_trace.o := -I$(src)  
> 
> I like the above solution, as it is much cleaner and less prone for
> future errors, if the directory patch would change for whatever reason.

Hi Jeff, please drop this patch, I found after bisecting and finding a
commit in January of 2019 that causes my issue, that if I just change
the command sequence I do, everything works fine.

FAIL: make O=../foo.obj M=drivers/net/ethernet/intel/i40e

PASS: make O=../foo.obj M=`pwd`/drivers/net/ethernet/intel/i40e

So the change in behavior is somewhat introduced recently (a year ago)
but me just having to learn a new trick is better than trying to fix
this in the kernel.

Jesse
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
