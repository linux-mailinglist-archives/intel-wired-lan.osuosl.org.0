Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E96958E33
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2024 20:44:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2CE5C60AB7;
	Tue, 20 Aug 2024 18:44:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IWpaX_vn0N_e; Tue, 20 Aug 2024 18:44:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8FA060ABD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724179473;
	bh=70AoaSjo96+DLI/aDgGJ/KSUUJum/oVq1+roRVZK2o8=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=1SvTtfT5YE4tMtLdSutkymAr1bwtKHMxqncRubV6hT9sQ5efe4NgmxljxsZwm88zy
	 v+gOSWWe5w3BE2KudXTZhKdwO80voacHjpv1Cwp0icQ1PUOLfMz4P6nS2T2p09szhB
	 SlxVgLnlcivZNmoodTZUHkBdWgxpYlza4IwRkLzgTMKeyniEZyzKSNRDYIG25BZBjE
	 gNI6pzUaub0dfqGG00uKr4hnPbwUif3YXiL2G3IKA+mlUlY0mgeM/GmYalDPOw5YU3
	 MDAbUKloOUcuXUsPisUN6d8DQt4AO6OUSw+IswdpFCB+qO5Fw5anedy2w7yM8srhv8
	 3hIjyCWk4nT3Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8FA060ABD;
	Tue, 20 Aug 2024 18:44:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 22B551BF575
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 18:44:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1B4DA4067B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 18:44:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 90drYmr9VE_g for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2024 18:44:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=helgaas@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8A1294067A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A1294067A
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8A1294067A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 18:44:29 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 3A033CE094C;
 Tue, 20 Aug 2024 18:44:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 130A5C4AF17;
 Tue, 20 Aug 2024 18:44:25 +0000 (UTC)
Date: Tue, 20 Aug 2024 13:44:24 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20240820184424.GA216935@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <782b7159-076a-4064-8333-69c454972b29@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1724179466;
 bh=R/txcs1DZkukly3Qa0Vt3JIrM10BbblB1vJcIw6/Yq8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=rliiBxSjFnjRgV0xG3x/qTaAvHoVWNLmRb0wKuTy2oPrAmwnkwsP22UkvwhsXTIL3
 F4dxD5FiaDReJIUlHPyTU2loYJXasYBu20Q2ibWG07aJtW81dvqdfL7NfmUCBCWe2A
 9hGNH2HZ+fJnjNWIYGotEr8FUouWMqGFPWocX60/G7eGkr5CY4dql0KmXCXpjHKjEj
 BeslEFR6tpTI59xZLd7vuRD8/gYfmGPtgUvDWxE1AEOVwghPbQIdiHkeXQtDheq0Wm
 bA1IXutwpO9Ztp+5LVZdKJtKlKqDO5iAJkAWOOTpKkazVmrgiAdLg+iiqwqNNnP32h
 RwwsvQ9IRG8/w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=rliiBxSj
Subject: Re: [Intel-wired-lan] ACPI IRQ storm with 6.10
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
Cc: Linux regressions mailing list <regressions@lists.linux.dev>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Linux kernel mailing list <linux-kernel@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Petr Valenta <petr@jevklidu.cz>, intel-wired-lan@lists.osuosl.org,
 Bjorn Helgaas <bhelgaas@google.com>, Jiri Slaby <jirislaby@kernel.org>,
 Len Brown <lenb@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[+to Tony, Przemek for e1000e questions; -cc Jesse]

On Mon, Aug 19, 2024 at 07:23:42AM +0200, Jiri Slaby wrote:
> On 19. 08. 24, 6:50, Jiri Slaby wrote:
> > CC e1000e guys + Jesse (due to 75a3f93b5383) + Bjorn (due to b2c289415b2b)
> 
> Bjorn,
> 
> I am confused by these changes:
> ==========================================
> @@ -291,16 +288,13 @@ static int e1000_set_link_ksettings(struct net_device
> *net
> dev,
>          * duplex is forced.
>          */
>         if (cmd->base.eth_tp_mdix_ctrl) {
> -               if (hw->phy.media_type != e1000_media_type_copper) {
> -                       ret_val = -EOPNOTSUPP;
> -                       goto out;
> -               }
> +               if (hw->phy.media_type != e1000_media_type_copper)
> +                       return -EOPNOTSUPP;
> 
>                 if ((cmd->base.eth_tp_mdix_ctrl != ETH_TP_MDI_AUTO) &&
>                     (cmd->base.autoneg != AUTONEG_ENABLE)) {
>                         e_err("forcing MDI/MDI-X state is not supported when
> lin
> k speed and/or duplex are forced\n");
> -                       ret_val = -EINVAL;
> -                       goto out;
> +                       return -EINVAL;
>                 }
>         }
> 
> @@ -347,7 +341,6 @@ static int e1000_set_link_ksettings(struct net_device
> *netde
> v,
>         }
> 
>  out:
> -       pm_runtime_put_sync(netdev->dev.parent);
>         clear_bit(__E1000_RESETTING, &adapter->state);
>         return ret_val;
>  }
> ==========================================
> 
> So no more clear_bit(__E1000_RESETTING in the above fail paths. Is that
> intentional?

I don't remember if it was intentional, but the use of
__E1000_RESETTING is a bit subtle and I don't know what is correct.

Here's how it was used before I changed it with b2c289415b2b, i.e., in
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/net/ethernet/intel/e1000e/ethtool.c?id=39f59c72ad3a:

  e1000_set_link_ksettings(...)
  {
    if (hw->phy.ops.check_reset_block(hw)) {
      ret_val = -EINVAL;
      goto out;
    }
    while (test_and_set_bit(__E1000_RESETTING, &adapter->state))
      usleep_range(1000, 2000);
    if (err) {
      ret_val = -EINVAL;
      goto out;
    }
    ...
  out:
    clear_bit(__E1000_RESETTING, &adapter->state);
  }

In this case, we *always* clear __E1000_RESETTING, even if we bail out
before the test_and_set_bit(__E1000_RESETTING).

It makes sense to me that we clear __E1000_RESETTING after we've set
it via test_and_set_bit() because we know it was set *here*.

But it seems wrong to me that we clear __E1000_RESETTING even when we
haven't done the test_and_set_bit() because it may have been set by a
concurrent thread executing a different operation.

  e1000_set_ringparam(...)
  {
    if ((ring->rx_mini_pending) || (ring->rx_jumbo_pending))
      return -EINVAL;
    while (test_and_set_bit(__E1000_RESETTING, &adapter->state))
      usleep_range(1000, 2000);
    err = e1000e_setup_tx_resources(...);
    if (err)
      goto out;
    ...
  out:
    clear_bit(__E1000_RESETTING, &adapter->state);
  }

But here, we *don't* clear __E1000_RESETTING if we bail out before the
test_and_set_bit(__E1000_RESETTING).  This seems like the correct
behavior.

In the e1000 driver (not the e1000e driver),
e1000_set_link_ksettings() does *not* clear __E1000_RESETTING unless
it has already done the test_and_set_bit().

b2c289415b2b changed e1000e to work that way, too.

FWIW, 3ef672ab1862 ("e1000e: ethtool unnecessarily takes device out of
RPM suspend") changed e1000e e1000_set_link_ksettings() to clear
__E1000_RESETTING even when bailing out before the test_and_set_bit().
That part of 3ef672ab1862 looks possibly buggy to me.

Bjorn
