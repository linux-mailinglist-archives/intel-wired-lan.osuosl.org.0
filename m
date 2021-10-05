Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CCB421B11
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Oct 2021 02:21:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92E7660762;
	Tue,  5 Oct 2021 00:21:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ctg6_p7vuh_w; Tue,  5 Oct 2021 00:21:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF06260698;
	Tue,  5 Oct 2021 00:21:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 92E511BF574
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 00:21:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7FBB14013C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 00:21:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rl7rq0pIBdj3 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Oct 2021 00:21:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from chris.i8u.org (mail.i8u.org [75.148.87.25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D9F434013A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 00:21:31 +0000 (UTC)
Received: by chris.i8u.org (Postfix, from userid 1000)
 id 4AB6616C959B; Mon,  4 Oct 2021 17:21:31 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by chris.i8u.org (Postfix) with ESMTP id 4A4A016C9327;
 Mon,  4 Oct 2021 17:21:31 -0700 (PDT)
Date: Mon, 4 Oct 2021 17:21:31 -0700 (PDT)
From: Hisashi T Fujinaka <htodd@twofifty.com>
To: "Andreas K. Huettel" <andreas.huettel@ur.de>
In-Reply-To: <1763660.QCnGb9OGeP@pinacolada>
Message-ID: <caf054b-c155-7614-5e97-e5ed34bf4eee@twofifty.com>
References: <1823864.tdWV9SEqCh@kailua>
 <20211004074814.5900791a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <7064659e-fe97-f222-5176-844569fb5281@twofifty.com>
 <1763660.QCnGb9OGeP@pinacolada>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [EXT] Re: Intel I350 regression 5.10 -> 5.14
 ("The NVM Checksum Is Not Valid") [8086:1521]
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
Cc: Jakub Kicinski <kubakici@wp.pl>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 5 Oct 2021, Andreas K. Huettel wrote:

>>>>
>>>> Any advice on how to proceed? Willing to test patches and provide
>>>> additional debug info.
>> Sorry to reply from a non-Intel account. I would suggest first
>> contacting Dell, and then contacting DeLock. This sounds like an
>> issue with motherboard firmware and most of what I can help with
>> would be with the driver. I think the issues are probably before
>> things get to the driver.
>
> Ouch. OK. Can you think of any temporary workaround?
>
> (Other than downgrading to 5.10 again, which I can't since it fails
> at the graphics (i915) modesetting...)

This is completely unofficial because I don't really work on client
systems, but I'd try different NICs, different slots, and the BIOS
settings.

You also might try support@intel.com because they're much more used to
client system support.

Todd Fujinaka todd.fujinaka@intel.com
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
