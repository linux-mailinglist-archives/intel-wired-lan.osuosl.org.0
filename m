Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA17958DCF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2024 20:10:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E314560A8D;
	Tue, 20 Aug 2024 18:10:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Da3sbKbD1bPH; Tue, 20 Aug 2024 18:10:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B0576088D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724177404;
	bh=6fGbYP0Pgm08W0S4sOq2N6tdqzefoudfHbaLxkP0eWc=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=mh3K2h8X5Z9DW0gn3G0H4qJEHEoEDjBDcZ3eNG/udvJ8gewEj07Z7t631PWVlvMbC
	 jmFjzXCg0StHAo3FniLFOVCF8HlYJ2oAaLZ8S4aKg+CgkfVPvksE57+luq6/ycxcvS
	 P/r8pE7twpBEYxy+4Pc0W1zgX8A9EaqJu6S/ASAYn9B2feFx2LseKA5gutbyjErAZ6
	 ShxUAMW4jFWIPjgkxyeR1dnkT/jGl1ys1fnZWzkEEK7BvtUn+5JqLpG0Vmde8kADTg
	 kwGTcXO28oOs+lCQYHYj/g2r42EFfHFIbvb5Jlvt1f7CCli7zR7YyEyX3FYPu8EhkG
	 l2+qK5A/sytJw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B0576088D;
	Tue, 20 Aug 2024 18:10:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B15261BF575
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 18:10:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9D58A406C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 18:10:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g8_DUWu2_JZA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2024 18:10:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=helgaas@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 30A28406C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30A28406C8
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 30A28406C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 18:10:00 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 1F9A8CE0BB0;
 Tue, 20 Aug 2024 18:09:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F28E8C4AF0E;
 Tue, 20 Aug 2024 18:09:54 +0000 (UTC)
Date: Tue, 20 Aug 2024 13:09:52 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jiri Slaby <jirislaby@kernel.org>, Petr Valenta <petr@jevklidu.cz>
Message-ID: <20240820180952.GA217979@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <782b7159-076a-4064-8333-69c454972b29@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1724177395;
 bh=dsZSsTHCSmyV6T/HkBCcmiJ+V5vOuti6g8kY5++amGs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=N8k2MJlhET5rv+1jo4tv5ZBudM9YrFu2mVRe1/LgB+1ZvMGY7Tm1DKNSLR86DGiJI
 OA9J8eSiF4/nNO9B0H6aHsFnB+Ce/UFCW8euHssufXCYACgvv5tBHVT8W/t32DRb5s
 XD2yMMoXTj4Rgyyq1hd8WsnbkXQBSSsQm9TnPTwK5V4Phc31W/07qpC0bC2AkSKTFF
 dRnboBz7W2gG4JjxazgocTmpEkRR1/aQvmKk2/FI7eie4JNNPNRS4CH8t+aN6cj03d
 +Mkmh1IPiApyuZ/YRWny2G21MAfw21XaMb9ebvk299nyPknhYRYHid689O+LehIfWW
 IJRU//hL1vIPA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=N8k2MJlh
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
 "Rafael J. Wysocki" <rafael@kernel.org>, przemyslaw.kitszel@intel.com,
 Linux kernel mailing list <linux-kernel@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Bjorn Helgaas <bhelgaas@google.com>,
 intel-wired-lan@lists.osuosl.org, Len Brown <lenb@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[+to Petr, -cc Jesse, bouncing]

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

Not intentional.  Petr, do you have the ability to test the patch
below?  I'm not sure it's the correct fix, but it reverts the pieces
of b2c289415b2b that Jiri pointed out.

diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index 9364bc2b4eb1..9db36ee71684 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -280,7 +280,8 @@ static int e1000_set_link_ksettings(struct net_device *netdev,
 	if (hw->phy.ops.check_reset_block &&
 	    hw->phy.ops.check_reset_block(hw)) {
 		e_err("Cannot change link characteristics when SoL/IDER is active.\n");
-		return -EINVAL;
+		ret_val = -EINVAL;
+		goto out;
 	}
 
 	/* MDI setting is only allowed when autoneg enabled because
@@ -288,13 +289,16 @@ static int e1000_set_link_ksettings(struct net_device *netdev,
 	 * duplex is forced.
 	 */
 	if (cmd->base.eth_tp_mdix_ctrl) {
-		if (hw->phy.media_type != e1000_media_type_copper)
-			return -EOPNOTSUPP;
+		if (hw->phy.media_type != e1000_media_type_copper) {
+			ret_val = -EOPNOTSUPP;
+			goto out;
+		}
 
 		if ((cmd->base.eth_tp_mdix_ctrl != ETH_TP_MDI_AUTO) &&
 		    (cmd->base.autoneg != AUTONEG_ENABLE)) {
 			e_err("forcing MDI/MDI-X state is not supported when link speed and/or duplex are forced\n");
-			return -EINVAL;
+			ret_val = -EINVAL;
+			goto out;
 		}
 	}
 
