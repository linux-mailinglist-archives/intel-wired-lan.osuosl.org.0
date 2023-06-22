Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE9773A18B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jun 2023 15:11:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A61BF83C5C;
	Thu, 22 Jun 2023 13:11:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A61BF83C5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687439494;
	bh=pFkpSB2Yv6Zm6gG3En3ejAqp2HpTakhIyCVHRaPhqT4=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=Rgvx1V8kIfDiY9DGW6BYoDFH9NVTIOaO8sz/ILIzIH4M3ahC7olrV190WlD7gogEm
	 jip69K8282PauffLKIs/gxpch5lzmaA0UyzCjO4upH1F2R9BC2QH36vz2u1OilPr2z
	 9tWbkWboLGPYRjid8XkFo30l9je2eIPuYcyzUriWQGrTQk/yU+hogvpGwVcZgkGXeQ
	 +JcYOuuLXN6jWunVh5SJfwpQa5ccbTNCW82P6dT/cY8unAE5pkE/WizH97BII8X8G7
	 PjAHJSqr99755IZd/Mx1khTsqnKrsMHg6A1rtJgDR+eAb+c5d8pzS6XHfwclMFbw6u
	 7zbciVhN6ZfbA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id thoES2JcZP8B; Thu, 22 Jun 2023 13:11:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C19983C4D;
	Thu, 22 Jun 2023 13:11:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C19983C4D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5CED21BF356
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 13:11:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3EB3D42128
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 13:11:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3EB3D42128
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pwxw_k0l8s-T for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jun 2023 13:11:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E8EA1420F6
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E8EA1420F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 13:11:26 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id BF07C617EE;
 Thu, 22 Jun 2023 13:11:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD4E6C433C8;
 Thu, 22 Jun 2023 13:11:24 +0000 (UTC)
Date: Thu, 22 Jun 2023 08:11:23 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <20230622131123.GA137990@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <16bcc313-a4e1-ab50-4487-c99ccf5ecdf9@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1687439485;
 bh=au2zGNMRZ0p6Mkinx6tnYwtEJKZLBcTxo0gn++q2a74=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=IKOo+QuyPCVrVRWrMVroUNNmli8B0Wt3YXpe1QZ3uedC3/luxMurbAaq0eLb+o+PG
 vdltEkhR33pKyyihbS25c+DIhJfzHwUoBwN3AtBz7IU5MkEgrDY0IJY/WRQw1IZpdA
 9oDwFA3pWo7MtcEgNevN1dwxNqHZPLOhDmO7wPsRDnFkQW1qaIUCrAFOP21dpZRXUk
 goPyvoxlkllSpD1g4QAMJmP8imAnEf5cGntoGsR1K70kZ0A6LVDDEorxleqf1VTZ1O
 NDnn236BCfuTdah4A+Olf8kSsYZMb88VSNLQdD9BhBBQrh8l+ptiq18Iw8XLl0w6o/
 hUM1lzKjjuSbg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=IKOo+Quy
Subject: Re: [Intel-wired-lan] [PATCH] igc: Ignore AER reset when device is
 suspended
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
Cc: Tony Luck <tony.luck@intel.com>, Kees Cook <keescook@chromium.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-pci@vger.kernel.org, "Mushayev, Nikolay" <nikolay.mushayev@intel.com>,
 linux-kernel@vger.kernel.org, jesse.brandeburg@intel.com, "Edri,
 Michael" <michael.edri@intel.com>,
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
 Eric Dumazet <edumazet@google.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, anthony.l.nguyen@intel.com,
 linux-hardening@vger.kernel.org, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, "Avivi, Amir" <amir.avivi@intel.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 22, 2023 at 08:09:34AM +0300, Neftin, Sasha wrote:
> On 6/21/2023 23:43, Bjorn Helgaas wrote:
> > On Tue, Jun 20, 2023 at 08:36:36PM +0800, Kai-Heng Feng wrote:
> > > When a system that connects to a Thunderbolt dock equipped with I225,
> > > I225 stops working after S3 resume:

> > > The issue is that the PTM requests are sending before driver resumes the
> > > device. Since the issue can also be observed on Windows, it's quite
> > > likely a firmware/hardwar limitation.
> > 
> > I thought c01163dbd1b8 ("PCI/PM: Always disable PTM for all devices
> > during suspend") would turn off PTM.  Is that not working for this
> > path, or are we re-enabling PTM incorrectly, or something else?
> 
> I think we hit on the HW bug here. On some i225/6 parts, PTM requests are
> sent before SW takes ownership of the device. This patch could help.

Is there an erratum we can read?  If this is needed to work around a
hardware defect, there should be a comment in the code to that effect,
and we should have a better understanding because there may be other
scenarios (suspend/resume, hotplug, etc) that need similar changes.

(I know this patch is to work around a suspend/resume issue, but the
change is in the AER error recovery path, so it doesn't quite fit
together for me yet.)

Are you saying the NIC sends PTM requests when it doesn't have PTM
Enable set?

What exactly does it mean for "SW to take ownership of the device"?
What PCIe transaction would tell the device the SW has taken
ownership?

So far this feels kind of hand-wavey.

> > Checking pci_is_enable() in the .error_detected() callback looks like
> > a pattern that may need to be replicated in many other drivers, which
> > makes me think it may not be the best approach.
> > 
> > > So avoid resetting the device if it's not resumed. Once the device is
> > > fully resumed, the device can work normally.
> > > 
> > > Link: https://bugzilla.kernel.org/show_bug.cgi?id=216850
> > > Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> > > ---
> > >   drivers/net/ethernet/intel/igc/igc_main.c | 3 +++
> > >   1 file changed, 3 insertions(+)
> > > 
> > > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> > > index fa764190f270..6a46f886ff43 100644
> > > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > > @@ -6962,6 +6962,9 @@ static pci_ers_result_t igc_io_error_detected(struct pci_dev *pdev,
> > >   	struct net_device *netdev = pci_get_drvdata(pdev);
> > >   	struct igc_adapter *adapter = netdev_priv(netdev);
> > > +	if (!pci_is_enabled(pdev))
> > > +		return 0;
> > > +
> > >   	netif_device_detach(netdev);
> > >   	if (state == pci_channel_io_perm_failure)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
