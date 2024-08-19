Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 473CC9570B3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2024 18:47:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8900B60815;
	Mon, 19 Aug 2024 16:47:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gFJPUUyC6ajk; Mon, 19 Aug 2024 16:47:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD02260819
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724086068;
	bh=S1yYZT57zcCVLx8uKH7bWjwOH3U/ZedOLLBMZ/3pAaA=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=H7MK5WqTXaumvHqTVJQx6cQDCseoEv588Iv2ZqGMvQh2Sdxt92M1RyoSNRShYPBOy
	 plrrIkEN3Sfc/1hT34iPO+UvS1j3gdZ0wTqgRNUyBRZjR2PwvY7XAJSrT1lc5FEF7j
	 w70v54FCg3cDOZ9yxHa3Oa+4t4b6gCIG+w+0tzKzFIMYMeh5SmGhL5jW4ooit0vuan
	 Ea9j2gw37RzYUVT+HNP9paUiv3LOmBezKH88Yb1sPiE1Kv+rlYzsnOw/fhkT5gp5Z0
	 gPVbzbBGRha6WE1QJxwPPWlIk1FJMvJIzrzkxv3EtfsvmCggbZcrH7XeHmE3pYJHtU
	 udRPWURN/LvLQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD02260819;
	Mon, 19 Aug 2024 16:47:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0E0841BF83E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 16:47:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ED896403D4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 16:47:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5Y9DulVEO27X for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2024 16:47:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=helgaas@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0FEDF401A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0FEDF401A3
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0FEDF401A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 16:47:45 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id CFB56CE0939;
 Mon, 19 Aug 2024 16:47:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2481AC32782;
 Mon, 19 Aug 2024 16:47:40 +0000 (UTC)
Date: Mon, 19 Aug 2024 11:47:39 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jiri Slaby <jirislaby@kernel.org>
Message-ID: <20240819164739.GA160626@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <782b7159-076a-4064-8333-69c454972b29@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1724086062;
 bh=AKwTNHLgA+6APIxNBMqNwEfniEaV2liiz8suz5WwnOA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=tFx7RQGDu+Zz+KfB/IrBweL3kUJ2q2YhPRjG7fSZHNJ3623goj1a3Cfc2776b54lz
 MGZwj1ZPBI13XK5Kwi81RG8lPEdnJMfos100gGtfSp8t0ktd9kxSnYa9/tzkF28yxY
 hXzjwFWvual5Cu4kWDKv8JgzMNenIX3SaqtnxqpUqRrx5lFez06ZqCMNLZk8djrsr2
 kA5uKCEaLfjXw+qzqD618LYzZ0MxiHLitm3MpmACVNjFmbn+a4I5WEsOUvmLwlPrEj
 aNSIDClhbwtpQghtCT3SZoBwwZGwHHzMXCTNMWzDq0ViK4HfjmQ+uBnlSIzt3w7Jjo
 Rd6JPMsYC2y9A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=tFx7RQGD
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
 jesse.brandeburg@intel.com,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Petr Valenta <petr@jevklidu.cz>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Bjorn Helgaas <bhelgaas@google.com>, intel-wired-lan@lists.osuosl.org,
 Len Brown <lenb@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

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

No, not intentional, looks like I just blew it, sorry.  Will post a
fix soon.  Thanks a lot for debugging this.

Bjorn
