Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E79C6480B84
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Dec 2021 17:44:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68D0681398;
	Tue, 28 Dec 2021 16:44:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W_Bnj5fv12ni; Tue, 28 Dec 2021 16:44:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4652A81355;
	Tue, 28 Dec 2021 16:44:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AE2E41BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Dec 2021 18:12:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9C4C7818B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Dec 2021 18:12:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hP8vRqxFrR6G for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Dec 2021 18:12:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from ssl.serverraum.org (ssl.serverraum.org
 [IPv6:2a01:4f8:151:8464::1:2])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 53EEA81458
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Dec 2021 18:12:06 +0000 (UTC)
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 2103E223E9;
 Thu, 23 Dec 2021 19:12:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1640283123;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nRX7vAwWjeC+5mIHv2fkVxYbCFKHsJmLOBQYXaEnGoc=;
 b=t5jQaHjtifmYXk96YE3zxFBmUUzMx/fAG34lCURwpKTj6zE8naRnTr9HWUtdQmBTs0yM85
 rvUu9QbX1nivR0VyadbTes7pB7y4y7Pt+/TR1Xvk7pw8t+60iOcVXdlrFLWa1S/vSg6b7d
 vYI3aIPMNdYkbajHDCphv9r0N9ciqIk=
MIME-Version: 1.0
Date: Thu, 23 Dec 2021 19:12:02 +0100
From: Michael Walle <michael@walle.cc>
To: Bjorn Helgaas <helgaas@kernel.org>
In-Reply-To: <20211223163754.GA1267351@bhelgaas>
References: <20211223163754.GA1267351@bhelgaas>
User-Agent: Roundcube Webmail/1.4.12
Message-ID: <9526698be0ced0f7a7ed00bd76538d16@walle.cc>
X-Sender: michael@walle.cc
X-Mailman-Approved-At: Tue, 28 Dec 2021 16:44:19 +0000
Subject: Re: [Intel-wired-lan] [PATCH v2] PCI: Fix Intel i210 by avoiding
 overlapping of BARs
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Bjorn Helgaas <bhelgaas@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Am 2021-12-23 17:37, schrieb Bjorn Helgaas:

> I intended to change the quirk from FINAL to EARLY, but obviously
> forgot.  Here's the updated version:
> 
> commit bb5639b73a2d ("PCI: Work around Intel I210 ROM BAR overlap 
> defect")
> Author: Bjorn Helgaas <bhelgaas@google.com>
> Date:   Tue Dec 21 10:45:07 2021 -0600
> 
>     PCI: Work around Intel I210 ROM BAR overlap defect
> 
>     Per PCIe r5, sec 7.5.1.2.4, a device must not claim accesses to its
>     Expansion ROM unless both the Memory Space Enable and the Expansion 
> ROM
>     Enable bit are set.  But apparently some Intel I210 NICs don't work
>     correctly if the ROM BAR overlaps another BAR, even if the 
> Expansion ROM is
>     disabled.
> 
>     Michael reported that on a Kontron SMARC-sAL28 ARM64 system with 
> U-Boot
>     v2021.01-rc3, the ROM BAR overlaps BAR 3, and networking doesn't 
> work at
>     all:
> 
>       BAR 0: 0x40000000 (32-bit, non-prefetchable) [size=1M]
>       BAR 3: 0x40200000 (32-bit, non-prefetchable) [size=16K]
>       ROM:   0x40200000 (disabled) [size=1M]
> 
>       NETDEV WATCHDOG: enP2p1s0 (igb): transmit queue 0 timed out
>       Hardware name: Kontron SMARC-sAL28 (Single PHY) on SMARC Eval
> 2.0 carrier (DT)
>       igb 0002:01:00.0 enP2p1s0: Reset adapter
> 
>     Previously, pci_std_update_resource() wrote the assigned ROM 
> address to the
>     BAR only when the ROM was enabled.  This meant that the I210 ROM 
> BAR could
>     be left with an address assigned by firmware, which might overlap 
> with
>     other BARs.
> 
>     Quirk these I210 devices so pci_std_update_resource() always writes 
> the
>     assigned address to the ROM BAR, whether or not the ROM is enabled.
> 
>     Link: 
> https://lore.kernel.org/r/20201230185317.30915-1-michael@walle.cc
>     Link: https://bugzilla.kernel.org/show_bug.cgi?id=211105
>     Reported-by: Michael Walle <michael@walle.cc>
>     Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Tested-by: Michael Walle <michael@walle.cc>

Thanks,
-michael
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
