Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 82ECE601455
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Oct 2022 19:08:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1205E813BF;
	Mon, 17 Oct 2022 17:08:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1205E813BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666026525;
	bh=XoZsDF8rSEgy2X2VKjy2Qagc2FbdyGdDjwbpg7aziTk=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=119c39/U5Vk7fDR0DPPyDiixBjx40xlG86Rk+WounqyPwYjxffycLUj/3XL3v+jIa
	 rIdsiBa5AAQnbxZ95E8x+VAhiFq9Wx3ZP6OcSBZWdWaQqi6HzOnau2JLATevPxHcmU
	 CkEvKf4FL9oixFXMqEA8NRj8GHmeU/wqhqjkeM5svQX2ivUiTgYAkryOIEcX7wRckJ
	 xTuG5TDTFDoJULWVZ+yWLHzUnT2TmYyX5dA00ts+dDLpMTmJaPqjvG8k4Olz7H4R8t
	 BBmYVmvFDkNogGMJ1OGgpecNZGoG6zc6aVoai1QHoYuceRtgdaLBrzpqWN1srfWjn9
	 /EzEEQqyeopaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NHFgqjOqn8nw; Mon, 17 Oct 2022 17:08:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA90A8137C;
	Mon, 17 Oct 2022 17:08:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA90A8137C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 298161BF322
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 17:08:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0280641797
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 17:08:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0280641797
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5NUVV3g847l9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Oct 2022 17:08:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD4F4408DF
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AD4F4408DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Oct 2022 17:08:27 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id EEE1FB819A6;
 Mon, 17 Oct 2022 17:08:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73065C433C1;
 Mon, 17 Oct 2022 17:08:22 +0000 (UTC)
Date: Mon, 17 Oct 2022 12:08:20 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20221017170820.GA3712555@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bug-216599-41252@https.bugzilla.kernel.org/>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1666026502;
 bh=KdUaY1/13+fnvQg7dGcqMAbtIcx96IH8hUYqJC8QAJ8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=XopEiKeMz0xAqDySvCRIy/9wJiF27eMUrvzSI5IiEW0kQl+xYIsJKToEI3ZDzQiz1
 KKXh/VYTo9DsmswmqKrA9CkIj4BRbs9sA2d4tPBA68hsezhM949Cs9izoV1y4olSGc
 Z8DAph7c5ofVit31xCqBYC8Y0acBpdG4AxjQFYCr06BjWaRvbW0sauADnW29QWKO0e
 yxkLev/7SKgzfaiIMRjI3c/fOWl3DmHiQRce6IYzcs6guh6TZytakviVXL1zr1d2GF
 IurjDobWdLtqcmAPcwIQo1LEZtrXMWQF2ULEwYUCcFn5U08+iYZ7k+NTKuihggWWar
 W9TsG7W9f3ddA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=XopEiKeM
Subject: Re: [Intel-wired-lan] [Bug 216599] New: i210 doesn't work and
 triggers netdev watchdog (Linux 5.10)
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jeffrey Tseng <jeffrey.tseng@gigabyte.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Oct 17, 2022 at 11:09:20AM +0000, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=216599
> 
>             Bug ID: 216599
>            Summary: i210 doesn't work and triggers netdev watchdog (Linux
>                     5.10)

> Created attachment 303021
>   --> https://bugzilla.kernel.org/attachment.cgi?id=303021&action=edit
> This is the complete dmesg log and "sudo lspci -vv" output.
> 
> Here is my question.
> My platform : imx8mm
> Ethernet Control : Intel I210
> Linux version 5.10.72-lts-5.10.y+g22ec7e8cbace (oe-user@oe-host)
> (aarch64-poky-linux-gcc (GCC) 10.2.0, GNU ld (GNU Binutils) 2. UTC 2011
> 
> I follow this  https://git.kernel.org/linus/500b55b05d0a
> to add the patch in my platform.
> 
> The issue and problem is still there. Anyone can give me a hand ?

Note this is an old v5.10 kernel on ARM64.  No indication of whether
the problem occurs on a recent kernel.

We had an earlier issue with i210 when the disabled ROM BAR
overlapped BAR 3 [1] and the watchdog triggered:

  BAR 0: 0x40000000 (32-bit, non-prefetchable) [size=1M]
  BAR 3: 0x40200000 (32-bit, non-prefetchable) [size=16K]
  ROM:   0x40200000 (disabled) [size=1M]
  ...
  NETDEV WATCHDOG: enP2p1s0 (igb): transmit queue 0 timed out
  Hardware name: Kontron SMARC-sAL28 (Single PHY) on SMARC Eval 2.0 carrier (DT)
  igb 0002:01:00.0 enP2p1s0: Reset adapter

But this case looks different because there is no ROM BAR at all.
From the dmesg attached at [2]:

  pci 0000:01:00.0: BAR 0: assigned [mem 0x18100000-0x1817ffff]
  pci 0000:01:00.0: BAR 3: assigned [mem 0x18180000-0x18183fff]
  pci 0000:01:00.0: BAR 2: assigned [io  0x1000-0x101f]
  ...
  igb 0000:01:00.0: Detected Tx Unit Hang
  NETDEV WATCHDOG: eth1 (igb): transmit queue 1 timed out

I'm assuming this is a driver issue, not a PCI core issue.  But please
ping me if you think otherwise.

Bjorn

[1] https://git.kernel.org/linus/500b55b05d0a
[2] https://bugzilla.kernel.org/show_bug.cgi?id=216599
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
