Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 626A72F89AB
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Jan 2021 00:57:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DA23186C69;
	Fri, 15 Jan 2021 23:57:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6ZE-hNInzlad; Fri, 15 Jan 2021 23:57:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CF46886C6A;
	Fri, 15 Jan 2021 23:57:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 82EA61BF31B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jan 2021 23:57:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7E6E686C4F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jan 2021 23:57:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sBoagxcN7E3h for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Jan 2021 23:57:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D870086C4D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jan 2021 23:57:23 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1BC01239E5;
 Fri, 15 Jan 2021 23:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610755043;
 bh=Jugm7yT041wqfvRSYw3MdlF8tLFsAvalmyiaeKw8Jd4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=N0xHbYmttdidoLVINDbT8f4OEoalscoXogfQ9zam8wgk+OGu2ipltKpv8YaAIqtlT
 pypHYIT2Gsqj+jFVcpEf93gIEG1wXXrII1JwUwMJS6naXP6AQUGrSwdEDEZCsY9G54
 usmXPtaL8Oqe5bK7KzLbrwwsf7W4I6aYn7mpSCjweCXZfYCt6WrNTYbDWBMamd1dHe
 7vSVZsgbByxNmW+q5/22fEmooCXS5skphnD0xEAJV9JzRu2040wPMMp3cHnzqs3wvA
 LMrOGFKVNoEFSeYHS+lsCHe9n4WOTN+sKyeZYgEYoJtcZDlNiROEjeeYY6TRHgktnf
 xRZNOY2lptl1Q==
Date: Fri, 15 Jan 2021 17:57:21 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Michael Walle <michael@walle.cc>
Message-ID: <20210115235721.GA1862880@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3b101fff85ec1c490e9a14305a999cbe@walle.cc>
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
 linux-kernel@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 13, 2021 at 12:32:32AM +0100, Michael Walle wrote:
> Am 2021-01-12 23:58, schrieb Bjorn Helgaas:
> > On Sat, Jan 09, 2021 at 07:31:46PM +0100, Michael Walle wrote:
> > > Am 2021-01-08 22:20, schrieb Bjorn Helgaas:

> > > > 3) If the Intel i210 is defective in how it handles an Expansion ROM
> > > > that overlaps another BAR, a quirk might be the right fix. But my
> > > > guess is the device is working correctly per spec and there's
> > > > something wrong in how firmware/Linux is assigning things.  That would
> > > > mean we need a more generic fix that's not a quirk and not tied to the
> > > > Intel i210.
> > > 
> > > Agreed, but as you already stated (and I've also found that in
> > > the PCI spec) the Expansion ROM address decoder can be shared by
> > > the other BARs and it shouldn't matter as long as the ExpROM BAR
> > > is disabled, which is the case here.
> > 
> > My point is just that if this could theoretically affect devices
> > other than the i210, the fix should not be an i210-specific quirk.
> > I'll assume this is a general problem and wait for a generic PCI
> > core solution unless it's i210-specific.
> 
> I guess the culprit here is that linux skips the programming of the
> BAR because of some broken Matrox card. That should have been a
> quirk instead, right? But I don't know if we want to change that, do
> we? How many other cards depend on that?

Oh, right.  There's definitely some complicated history there that
makes me a little scared to change things.  But it's also unfortunate
if we have to pile quirks on top of quirks.

> And still, how do we find out that the i210 is behaving correctly?
> In my opinion it is clearly not. You can change the ExpROM BAR value
> during runtime and it will start working (while keeping it
> disabled).  Am I missing something here?

I agree; if the ROM BAR is disabled, I don't think it should matter at
all what it contains, so this does look like an i210 defect.

Would you mind trying the patch below?  It should update the ROM BAR
value even when it is disabled.  With the current pci_enable_rom()
code that doesn't rely on the value read from the BAR, I *think* this
should be safe even on the Matrox and similar devices.

Bjorn


commit 0ca2233eb71f ("PCI: Update ROM BAR even if disabled")
Author: Bjorn Helgaas <bhelgaas@google.com>
Date:   Fri Jan 15 17:17:44 2021 -0600

    PCI: Update ROM BAR even if disabled
    
    Test patch for i210 issue reported by Michael Walle:
    https://lore.kernel.org/r/20201230185317.30915-1-michael@walle.cc

diff --git a/drivers/pci/rom.c b/drivers/pci/rom.c
index 8fc9a4e911e3..fc638034628c 100644
--- a/drivers/pci/rom.c
+++ b/drivers/pci/rom.c
@@ -35,9 +35,8 @@ int pci_enable_rom(struct pci_dev *pdev)
 		return 0;
 
 	/*
-	 * Ideally pci_update_resource() would update the ROM BAR address,
-	 * and we would only set the enable bit here.  But apparently some
-	 * devices have buggy ROM BARs that read as zero when disabled.
+	 * Some ROM BARs read as zero when disabled, so we can't simply
+	 * read the BAR, set the enable bit, and write it back.
 	 */
 	pcibios_resource_to_bus(pdev->bus, &region, res);
 	pci_read_config_dword(pdev, pdev->rom_base_reg, &rom_addr);
diff --git a/drivers/pci/setup-res.c b/drivers/pci/setup-res.c
index 7f1acb3918d0..f69b7d179617 100644
--- a/drivers/pci/setup-res.c
+++ b/drivers/pci/setup-res.c
@@ -69,18 +69,10 @@ static void pci_std_update_resource(struct pci_dev *dev, int resno)
 	if (resno < PCI_ROM_RESOURCE) {
 		reg = PCI_BASE_ADDRESS_0 + 4 * resno;
 	} else if (resno == PCI_ROM_RESOURCE) {
-
-		/*
-		 * Apparently some Matrox devices have ROM BARs that read
-		 * as zero when disabled, so don't update ROM BARs unless
-		 * they're enabled.  See
-		 * https://lore.kernel.org/r/43147B3D.1030309@vc.cvut.cz/
-		 */
-		if (!(res->flags & IORESOURCE_ROM_ENABLE))
-			return;
+		if (res->flags & IORESOURCE_ROM_ENABLE)
+			new |= PCI_ROM_ADDRESS_ENABLE;
 
 		reg = dev->rom_base_reg;
-		new |= PCI_ROM_ADDRESS_ENABLE;
 	} else
 		return;
 
@@ -99,7 +91,8 @@ static void pci_std_update_resource(struct pci_dev *dev, int resno)
 	pci_write_config_dword(dev, reg, new);
 	pci_read_config_dword(dev, reg, &check);
 
-	if ((new ^ check) & mask) {
+	/* Some ROM BARs read as zero when disabled */
+	if (resno != PCI_ROM_RESOURCE && (new ^ check) & mask) {
 		pci_err(dev, "BAR %d: error updating (%#08x != %#08x)\n",
 			resno, new, check);
 	}
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
