Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 597118A6D53
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Apr 2024 16:07:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 491C340315;
	Tue, 16 Apr 2024 14:07:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lLxwnS0BcVIG; Tue, 16 Apr 2024 14:07:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 733F840325
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713276421;
	bh=+J9P2ULNkyUwgvpEdf0Gep794Rg7+MINnBkDkinXNUQ=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xtEPqizGeMKCj2kkQ9W/NDOpzDpOo92i2FPxeSZMwPdWkPHxG7oZ87pY6KwII8rC0
	 dnXL4g63DRefryg8zofz7q7z8gFdv62zW7gc+JIbBWCSemnAY2uyq/Uq8I6oRNf5WC
	 i9fqlmNm6E14xVlWHFZgLSzdhK7G2apVGlCeC0JkPKbHiSxzSvvh0eE+XMbh5WNY6h
	 BNR/yjUZZgFPnRUySgNBVGA5p0nvCNQPYCkDw2dW85YrH3rFot2tGl890VRgbh+YXb
	 6WCoxZu229KVTqKz6ZXNfccBdkhsW+WdRG5UI9gS0/E+KHVUwjPjPTGJS2z0cjq9qT
	 WuBGlXz+CDa2g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 733F840325;
	Tue, 16 Apr 2024 14:07:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9DE271BF27C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 14:06:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 83103402F4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 14:06:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 47CwcY4GgRyT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Apr 2024 14:06:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BCB2A402E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BCB2A402E0
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BCB2A402E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 14:06:54 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Lukas Wunner <lukas@wunner.de>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <2f1be6b1cf2b3346929b0049f2ac7d7d79acb5c9.1713188539.git.lukas@wunner.de>
References: <2f1be6b1cf2b3346929b0049f2ac7d7d79acb5c9.1713188539.git.lukas@wunner.de>
Date: Tue, 16 Apr 2024 16:06:49 +0200
Message-ID: <87plupe70m.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1713276411;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+J9P2ULNkyUwgvpEdf0Gep794Rg7+MINnBkDkinXNUQ=;
 b=vOCo3gk03i2s2/ACNfZ8RH1vBt+vz15GsQrmoXKgT8pyqSLqueMk+ZRIcr8Gj1uJVtRINx
 08HYPThnstuT6SYiT+pePQSGVLAYvlQWwY4FgTr0QXBy4Y6U4WPuCjd5XNapR6ESLVOOCQ
 e/mzORvCSzpJRyMA7+G943QwtmmxZazNqs/5jgj8LffGfMAa4DaTwr8HxHctya489LcX+q
 eWiXbyPjFr8vZUfUdnuNTCru6fNaDkeMHjvJ5v2AF5z5+3Ke9ZIKihSzsVsTTgIaDMdJHv
 PHC2/p5KmRhFRth3YzikjR7vIbBsLmABk6MtVD01tml3u2quHDMSeS1XHkfi4w==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1713276411;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+J9P2ULNkyUwgvpEdf0Gep794Rg7+MINnBkDkinXNUQ=;
 b=Q5IXnJrP2NxOay1V1W+0xr3gFUCCVYBCJO7FA8D6FmJCbXxBwXP0mkWoyZgkY8RKkA/KQz
 5GezuL39/ULv6qCA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=vOCo3gk0; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=Q5IXnJrP
Subject: Re: [Intel-wired-lan] [PATCH net] igc: Fix LED-related deadlock on
 driver unbind
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
Cc: Andrew Lunn <andrew@lunn.ch>, Sasha Neftin <sasha.neftin@intel.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Roman Lozko <lozko.roma@gmail.com>, Heiner Kallweit <hkallweit1@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain

On Mon Apr 15 2024, Lukas Wunner wrote:
> Roman reports a deadlock on unplug of a Thunderbolt docking station
> containing an Intel I225 Ethernet adapter.
>
> The root cause is that led_classdev's for LEDs on the adapter are
> registered such that they're device-managed by the netdev.  That
> results in recursive acquisition of the rtnl_lock() mutex on unplug:
>
> When the driver calls unregister_netdev(), it acquires rtnl_lock(),
> then frees the device-managed resources.  Upon unregistering the LEDs,
> netdev_trig_deactivate() invokes unregister_netdevice_notifier(),
> which tries to acquire rtnl_lock() again.
>
> Avoid by using non-device-managed LED registration.
>
> Stack trace for posterity:
>
>   schedule+0x6e/0xf0
>   schedule_preempt_disabled+0x15/0x20
>   __mutex_lock+0x2a0/0x750
>   unregister_netdevice_notifier+0x40/0x150
>   netdev_trig_deactivate+0x1f/0x60 [ledtrig_netdev]
>   led_trigger_set+0x102/0x330
>   led_classdev_unregister+0x4b/0x110
>   release_nodes+0x3d/0xb0
>   devres_release_all+0x8b/0xc0
>   device_del+0x34f/0x3c0
>   unregister_netdevice_many_notify+0x80b/0xaf0
>   unregister_netdev+0x7c/0xd0
>   igc_remove+0xd8/0x1e0 [igc]
>   pci_device_remove+0x3f/0xb0
>
> Fixes: ea578703b03d ("igc: Add support for LEDs on i225/i226")
> Reported-by: Roman Lozko <lozko.roma@gmail.com>
> Closes: https://lore.kernel.org/r/CAEhC_B=ksywxCG_+aQqXUrGEgKq+4mqnSV8EBHOKbC3-Obj9+Q@mail.gmail.com/
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>

I think, the first SoB has to be yours, because you are the patch
author. In fact, my SoB is not required at all.

However, feel free to add:

Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
Tested-by: Kurt Kanzenbach <kurt@linutronix.de> # Intel i225

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmYehfkTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgphAD/9ltXyXjzN1q3F45uzk/J9xVD1M+yCM
lppwpQGGZrFVuI0wjOnTYdmGXMUC6xD+bUrm6+21zo+V6xd06Kvq1igO/mUDU/dz
7fAlEWKWjB0cg7QG1g0oC09xJSviTOoTXT9DDktsR9EaEVFz89UzLysYcdoPeTVa
m3pP8NSt9fhzCTkZbx09wAZeOCJrQLORfA3LMKaLnbh3JX12Slmh80qyrP7QtYcQ
oGT3KCURaycGzDh3Pa8eZSwx70Xnncx4+/Q2DyYMrlUoMHorJ0pIrxiGI0dnXm1L
NWF/3zhCCwNMqynmrbDK+WvWpwWhx/oKE++x3snZKIEZ8T1CZNke5pjMW8ysPSp2
ZnPYVE9+QdjzKnW7JpcEJQVDAuB4Id5D2qhNR02DJdXgu7ZpbJn2nm+gKuCPWMJF
pvVYktL8heufp/eae4nTTG/TV5I1qjtJEgTafFvk1mAaBJ8bOtn7AfPoh8jttrjj
HRRjsoZjITAu+oBPVZTATN5mM61I318IX/8KsKOgVQq35kZa8H2Q3YSATFw0NBHl
rUrMDDp8e5y0cdk2rFtGTqUZcIj6RPO+xR4HG7h/ZH9Zuqr6B/9Quo+v97uD8GZk
1JPDGqHErU/DD5LJjlEZSkQWAtBVQ2iMDEFYlnBWHU21qC+cqQrh9HWtBCw/KZJj
mLc1tBCTMJu3+w==
=pxWU
-----END PGP SIGNATURE-----
--=-=-=--
