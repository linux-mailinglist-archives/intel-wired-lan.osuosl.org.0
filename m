Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5FB4E51DD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Mar 2022 13:08:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 82DD140AB7;
	Wed, 23 Mar 2022 12:08:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VVKIL1W3Xyn6; Wed, 23 Mar 2022 12:08:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 342CD40A9F;
	Wed, 23 Mar 2022 12:08:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3D47C1BF584
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 12:08:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 316DF41846
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 12:08:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w7oex_sfpHpo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Mar 2022 12:08:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 31D49417B2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 12:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648037308; x=1679573308;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kh1zhhFyD5e+xt5v88i7C1KQ20psD7NhVkn7j6I0Ibg=;
 b=EBwkdhJajzcQdt0MpNSi7p0l1jt8wLQpyAZASaIJW15tNlvUIuKGoxPl
 TWcHEwGmyYbGHs3K3fCq5/kcVdJVxmRU5csBIr+HAtoR8pxvd1JeQFg4y
 rqmG6mv0MxEMO59IYqgiqlLVQJ1GjVifyr+GSmkUYXRD0p7f7XJkWhvib
 dmAMCtZ6+oiINHm3xvOPpdNxwGpWBHFS4iRYq1SDOhgRCbpZBdoGlQcCb
 ol5+Etev7WnEdBg6JRGiPuXdkQmkZykqLKHHZ1FGtS/KXjbTyxtnOAO/U
 vHnsNqxXd+UfswOktC9Z7A98bPlZwoeJBT9PotIA60Uzk1Ae1/XA4cYfm A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="321290982"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="321290982"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 05:08:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="544167582"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga007.jf.intel.com with ESMTP; 23 Mar 2022 05:08:24 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 22NC8N9O006846; Wed, 23 Mar 2022 12:08:23 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Date: Wed, 23 Mar 2022 13:06:43 +0100
Message-Id: <20220323120643.2759011-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <68ccb162-459b-cb95-19cf-3e0335e4c981@molgen.mpg.de>
References: <20220321135947.378250-1-wanjiabing@vivo.com>
 <f888e3cf09944f9aa63532c9f59e69fb@AcuMS.aculab.com>
 <20220322175038.2691665-1-alexandr.lobakin@intel.com>
 <af3fa59809654c9b9939f1e0bd8ca76b@AcuMS.aculab.com>
 <20220322112730.482d674d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <68ccb162-459b-cb95-19cf-3e0335e4c981@molgen.mpg.de>
MIME-Version: 1.0
Subject: [Intel-wired-lan] Don't do arithmetic on anything smaller than
 'int' (was: [PATCH v2] ice: use min_t() to make code cleaner in ice_gnss)
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
Cc: Paolo Abeni <pabeni@redhat.com>, Wan Jiabing <wanjiabing@vivo.com>,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 David Laight <David.Laight@ACULAB.COM>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Paul Menzel <pmenzel@molgen.mpg.de>
Date: Tue, 22 Mar 2022 22:02:06 +0100

> Dear Linux folks,
> 
> 
> Am 22.03.22 um 19:27 schrieb Jakub Kicinski:
> > On Tue, 22 Mar 2022 18:12:08 +0000 David Laight wrote:
> >>>> Oh FFS why is that u16?
> >>>> Don't do arithmetic on anything smaller than 'int'
> >>>
> >>> Any reasoning? I don't say it's good or bad, just want to hear your
> >>> arguments (disasms, perf and object code measurements) etc.
> >>
> >> Look at the object code on anything except x86.
> >> The compiler has to add instruction to mask the value
> >> (which is in a full sized register) down to 16 bits
> >> after every arithmetic operation.
> >
> > Isn't it also slower on some modern x86 CPUs?
> > I could have sworn someone mentioned that in the past.
> 
> I know of Scott's article *Small Integers: Big Penalty* from 2012 [1].

Thank you all guys, makes sense!

Apart from this article, I tested some stuff on MIPS32 yesterday.
Previously I was sure that it's okay to put u16 on stack to conserve
it and there will be no code difference. I remember even having some
bloat-o-meter data. Well, human memory tends to lie sometimes.
I have a bunch of networking stats on stack which I collect during
a NAPI cycle (receiving 64 packets), it's about 20 counters. I made
them as u16 initially as it is (sizeof(u32) - sizeof(u16)) * 20 = 40
bytes. So I converted them yesterday to u32 and instead of having
+40 bytes of .text, I got -36 in one function and even -88 in
another one!
So it really makes no sense to declare anything on stack smaller
than u32 or int unless it is something to be passed to some HW or
standardized structures, e.g. __be16 etc.

Another interesting observation, on x86_64, is that u32 = u64
assignments take more instructions as well. I converted some
structure field recently from u64 to u32, but forgot that I'm
assigning it in one function from an onstack variable, which was
still unconverted from u64 to u32. When I did the latter, the .text
size became smaller.

> 
> 
> Kind regards,
> 
> Paul
> 
> 
> [1]: https://notabs.org/coding/smallIntsBigPenalty.htm

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
