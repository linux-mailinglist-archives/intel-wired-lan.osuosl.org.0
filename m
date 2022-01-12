Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9477B48C67B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jan 2022 15:51:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0718740A28;
	Wed, 12 Jan 2022 14:51:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Po-N6lfJ0-L1; Wed, 12 Jan 2022 14:51:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B4C0E400B5;
	Wed, 12 Jan 2022 14:51:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0B60E1BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jan 2022 14:51:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EB8E2405D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jan 2022 14:51:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PZZNGrfbkhdy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jan 2022 14:50:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2F273400B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jan 2022 14:50:59 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 78C11B81F45;
 Wed, 12 Jan 2022 14:50:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2145C36AE5;
 Wed, 12 Jan 2022 14:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1641999055;
 bh=ZYIhQu0CJmEYqQPsxX+F20R/7TLgNCmuzU7RtO1+uBU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=TXQxe4XlT38nugbWRKDdxBY1KByqJNOv/XOXpZvLebOZ9mcEi/Uvcpz3dY0ztwTJa
 31sW3/JElg+npzFZ1JCgqG1CywPvdfrxwbIIeebzyAcX96Dm5aY2ox8kce6thXtQty
 lXJweipz0XlaCSlNN3NyKg2BCTVRBxDi+1uUqVJOcvg3to99k4HHQtL1CtXTYmb2FT
 1c/ELnOzN0FXUxAo5Btp4avLKJa/gvHEQU55udjSCtYrDChsyhtz82vpA5qr1+pyvf
 nDWPzMqKsE+vdyJwT+NYjm9enW3FGmAGiw/43NgBhbbMq8mB1E8JMzTf8Nqk/qx7sP
 iUoY9ndVvBQWQ==
Date: Wed, 12 Jan 2022 08:50:53 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Michael Walle <michael@walle.cc>
Message-ID: <20220112145053.GA254177@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9526698be0ced0f7a7ed00bd76538d16@walle.cc>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Dec 23, 2021 at 07:12:02PM +0100, Michael Walle wrote:
> Am 2021-12-23 17:37, schrieb Bjorn Helgaas:
> 
> > I intended to change the quirk from FINAL to EARLY, but obviously
> > forgot.  Here's the updated version:
> > 
> > commit bb5639b73a2d ("PCI: Work around Intel I210 ROM BAR overlap
> > defect")
> > Author: Bjorn Helgaas <bhelgaas@google.com>
> > Date:   Tue Dec 21 10:45:07 2021 -0600
> > 
> >     PCI: Work around Intel I210 ROM BAR overlap defect
> > 
> >     Per PCIe r5, sec 7.5.1.2.4, a device must not claim accesses to its
> >     Expansion ROM unless both the Memory Space Enable and the Expansion
> > ROM
> >     Enable bit are set.  But apparently some Intel I210 NICs don't work
> >     correctly if the ROM BAR overlaps another BAR, even if the Expansion
> > ROM is
> >     disabled.
> > 
> >     Michael reported that on a Kontron SMARC-sAL28 ARM64 system with
> > U-Boot
> >     v2021.01-rc3, the ROM BAR overlaps BAR 3, and networking doesn't
> > work at
> >     all:
> > 
> >       BAR 0: 0x40000000 (32-bit, non-prefetchable) [size=1M]
> >       BAR 3: 0x40200000 (32-bit, non-prefetchable) [size=16K]
> >       ROM:   0x40200000 (disabled) [size=1M]
> > 
> >       NETDEV WATCHDOG: enP2p1s0 (igb): transmit queue 0 timed out
> >       Hardware name: Kontron SMARC-sAL28 (Single PHY) on SMARC Eval
> > 2.0 carrier (DT)
> >       igb 0002:01:00.0 enP2p1s0: Reset adapter
> > 
> >     Previously, pci_std_update_resource() wrote the assigned ROM address
> > to the
> >     BAR only when the ROM was enabled.  This meant that the I210 ROM BAR
> > could
> >     be left with an address assigned by firmware, which might overlap
> > with
> >     other BARs.
> > 
> >     Quirk these I210 devices so pci_std_update_resource() always writes
> > the
> >     assigned address to the ROM BAR, whether or not the ROM is enabled.
> > 
> >     Link:
> > https://lore.kernel.org/r/20201230185317.30915-1-michael@walle.cc
> >     Link: https://bugzilla.kernel.org/show_bug.cgi?id=211105
> >     Reported-by: Michael Walle <michael@walle.cc>
> >     Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
> 
> Tested-by: Michael Walle <michael@walle.cc>

Applied to pci/resource for v5.17, thanks!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
