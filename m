Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF1261F138
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Nov 2022 11:55:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D7CEA402B9;
	Mon,  7 Nov 2022 10:55:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D7CEA402B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667818502;
	bh=2JSTiJ7rEyMWpxw4r8IF3mkxacevp0ZLFRwo1f1UveQ=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5sm7dUMVBsfXByULC5+TsBtOg7isrpedvinQQkaBEEWnQ89ECdjllbDvKeFQuvhnA
	 4zVQnVBmBz1QlR4DmcsB8SsOsiL7x6ksFT12XBriNg6B2WReU8ik/q6zvB+sEUnB8U
	 azKyDQ3q6BFSEzWtIHaZQ4er8Ap/9wbPJpAA/uA7JEnQPifbGqFkiPrMxXMhuib+N4
	 j9bU+l9pJO1J4dcsSgNgFth/CKrlRpMt4E2Ldd9cElsUo908YAq8crRqDhRdmci3V9
	 ZZDbnUdm0iPRD01NV7EFrE0TaK8oKCg9agGWYfmF1JUG+DkEhACGmuk8oaodKBlZzl
	 P4XKCJU4V+3fg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kwoxH8PtAxRE; Mon,  7 Nov 2022 10:55:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7583C40247;
	Mon,  7 Nov 2022 10:55:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7583C40247
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7ED241BF410
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Nov 2022 10:54:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 58E0D400E4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Nov 2022 10:54:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 58E0D400E4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XcaIfjdWjTRe for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Nov 2022 10:54:55 +0000 (UTC)
X-Greylist: delayed 00:07:47 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B333400DD
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0B333400DD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Nov 2022 10:54:54 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
To: Steven Rostedt <rostedt@goodmis.org>, Linus Torvalds
 <torvalds@linux-foundation.org>
In-Reply-To: <20221106223256.4bbdb018@rorschach.local.home>
References: <20221106223256.4bbdb018@rorschach.local.home>
Date: Mon, 07 Nov 2022 11:47:04 +0100
Message-ID: <87pmdzvy6v.ffs@tglx>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1667818024;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=qnhu/C4/dTNGh+9YxTAUPF0AHXOgpdZiA4TofS1TDao=;
 b=m8gFAB2FYV5B4BIkkbSCrPl5kngI1vwmC89wOqBJ/q73+RRLDUvN8153YBd0ancpYaUudU
 +fTzmJoLwRrrXw9ulhVtc41yRIMLNrOmB9kVLUOAn2xwOs861TQYPTmwfVqoXOpGOLsPn5
 hNBacxD9XN6Mi6tXS/NIbwjqzso2C6oqm6/L/mt2cpmfqfHELnCL8o8Pn38Ir7+eD8OVqk
 Lj3kRr5Ls1MIF7+wsJc3Ym/BQIZf8UhWrd8aE7FpoY/qhjIfIvELeoa8/ZXUqY5eKhjinO
 ZF4FT08X0F8jeyihKYji9kBCreFY8X9nEznXEcECfWmIcYVRm4zXH9JmYOmiiQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1667818024;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=qnhu/C4/dTNGh+9YxTAUPF0AHXOgpdZiA4TofS1TDao=;
 b=bzVvnuX1mysTSSrkmkIGsLumN3FZV+biUwiIDeLZdScudMhEXojJ3c4U7ytkUdHNPdLCjD
 NbhAMzPLE4OU4lBA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=m8gFAB2F; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=bzVvnuX1
Subject: Re: [Intel-wired-lan] [GIT PULL] treewide: timers: Use
 timer_shutdown*() before freeing timers
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
Cc: alsa-devel@alsa-project.org, linux-staging@lists.linux.dev,
 linux-sh@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-afs@lists.infradead.org, linux-leds@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-atm-general@lists.sourceforge.net,
 lvs-devel@vger.kernel.org, linux-acpi@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org,
 bridge@lists.linux-foundation.org, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org, cgroups@vger.kernel.org,
 Anna-Maria Gleixner <anna-maria@linutronix.de>, linux-nfs@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, netdev@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Julia Lawall <Julia.Lawall@inria.fr>,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Linus,

On Sun, Nov 06 2022 at 22:32, Steven Rostedt wrote:
> As discussed here:
>
>   https://lore.kernel.org/all/20221106212427.739928660@goodmis.org/

Please hold off. It's only nits, but tip has documented rules and random
pull requests are not making them go away.

Thanks,

        tglx
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
