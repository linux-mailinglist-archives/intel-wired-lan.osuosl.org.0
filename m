Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EFAE326676
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Feb 2021 18:49:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 598A384386;
	Fri, 26 Feb 2021 17:49:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RtFjpZADfL8F; Fri, 26 Feb 2021 17:49:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 453D384385;
	Fri, 26 Feb 2021 17:49:02 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A1761BF292
 for <intel-wired-lan@osuosl.org>; Fri, 26 Feb 2021 17:48:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1401D4F061
 for <intel-wired-lan@osuosl.org>; Fri, 26 Feb 2021 17:48:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JWiQuenXgvtJ for <intel-wired-lan@osuosl.org>;
 Fri, 26 Feb 2021 17:48:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D3AB74F060
 for <intel-wired-lan@osuosl.org>; Fri, 26 Feb 2021 17:48:55 +0000 (UTC)
IronPort-SDR: co3qzrAoGqV6FPG9LjEt7v28UJgmMLaLybmnxglqjsP4MrOv7H3SK5tT1G7+3BI+tZVgC53iVJ
 3iy+exy9x6Rg==
X-IronPort-AV: E=McAfee;i="6000,8403,9907"; a="270927380"
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; d="scan'208";a="270927380"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2021 09:48:54 -0800
IronPort-SDR: YHC9P6wkjbanDNshOxuBBhPl5KqyJW1TvUDxCrkHs7dADJusrdiONGFdmS8A0GuK8VQTPSsb/b
 Gsp8PsSeqlUA==
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; d="scan'208";a="365931351"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.213.187.220])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2021 09:48:54 -0800
Date: Fri, 26 Feb 2021 09:48:53 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Billy Croan <BCroan@unrealservers.net>
Message-ID: <20210226094853.0000470c@intel.com>
In-Reply-To: <CABJL2KoxdiBV6BBOJKfU4pAxANy3F-65c3+mtM2BhS5Lu89vfw@mail.gmail.com>
References: <CABJL2KoxdiBV6BBOJKfU4pAxANy3F-65c3+mtM2BhS5Lu89vfw@mail.gmail.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] How to "arm" WoL with OS running?
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

Billy Croan wrote:

> I was reading https://en.wikipedia.org/wiki/Wake-on-LAN and came across
> this phrase: "not armed for WOL"
> 
> I have some OpenCompute hardware which uses the WoL signal from the intel
> network chip to cause a reset/reboot.
> 
> this works when the system is in bios or in memtest86, but not when an OS
> is loaded.  I suspect that the e1000e driver "disarms" WoL on load, and 're
> arms' it when unloaded or when the OS shuts down or changes to a lower ACPI
> state.

That's right, that's the supported use case for WoL.

> Is there a technical reason any WoL can not be armed at the same time as OS
> is using the nic?

The short answer is we don't support it.

There are a couple of reasons that you might not want to do this. 
1) anyone can reboot your server remotely without authentication
2) IPMI can/should probably be used to control/manage the server
instead, if available.  If the server is already available remotely
then you can just reboot it after logging in. :-)

> I get that it serves no useful purpose of the os is already running, but
> does it pose a problem?

Functionally the hardware can assert the Wake signal (PME+) any time,
and it won't cause a problem (on a normal system). However, we don't
support this. The developer manuals for the e1000e hardware should
mostly be available from intel.com if you want to learn more about the
hardware, but I'm sorry I can't help you much further since this is out
of scope for our software support.

Good luck and thanks for the question,
Jesse
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
