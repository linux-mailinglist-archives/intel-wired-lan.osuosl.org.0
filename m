Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 71591B48423
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Sep 2025 08:26:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10BF561487;
	Mon,  8 Sep 2025 06:26:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AMDgYt9s95wr; Mon,  8 Sep 2025 06:26:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3AB966147B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757312782;
	bh=6bBqlMJnbWGXcmUBtE9PTudTuxx/UefA7GFyXkZGpvA=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ofXskWtJpZqCkdUwECnH7rR5tmJbSw3yAC9FXIE62GgIgqx5BTVE255QPkIm4KLSG
	 iefkCkLHdhf+PSeFtQFpUGmhJHj78WPHH1OgwZdpbkZ3dOx3IIVc8+CKss8wb6TmAJ
	 gZRpBM7T+V79i8roB7smJu59V+O4Y9G3O0NWLcA6XrNa11FzJQ6VhMUoT2mYhBwqlf
	 PmK0QCzeZ0G+BE1stQXtkbFt8/iD5h67I8MyfY0Phd5+ZMHkfynsozUjwJ0ivdtbVe
	 n0w8ucwnZwfs0CKF50LivAgzOB2M5Q5TxfsgmKPpKAR/RQ9l/UokY/8lj5bHkrTatH
	 qGrL8vJUPsaWg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3AB966147B;
	Mon,  8 Sep 2025 06:26:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4DE1B1D9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 06:26:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4014A42275
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 06:26:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CqscrbRAetHx for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Sep 2025 06:26:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 69B19421F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 69B19421F1
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 69B19421F1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Sep 2025 06:26:19 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Kohei Enju <enjuk@amazon.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 kohei.enju@gmail.com, Kohei Enju <enjuk@amazon.com>
In-Reply-To: <20250906055239.29396-1-enjuk@amazon.com>
References: <20250906055239.29396-1-enjuk@amazon.com>
Date: Mon, 08 Sep 2025 08:26:10 +0200
Message-ID: <87ikht794t.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1757312773;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=6bBqlMJnbWGXcmUBtE9PTudTuxx/UefA7GFyXkZGpvA=;
 b=4qo1JKGKfc4m9J1ccMlKLIidd6d4Ri5vxJjAvTeZabJNXQCmaBEh+REgLXSGSNy5h2mii5
 tBZW9eRI0zYa5r/i3GvrKZOELCOUzqet5E65QeQ3oRyFK/gfGiIHXfgz7tMGmDhXKV1EW/
 /2HA95Xf9CVR7MIYU4p+VOpTfFEtX8NXRMX27QHtCR5X4Sha4Q2m7eRA1gjWlt/sgFTQ8H
 AY0MIG7U9jMyosM/EGYuy37AsSWlfdd+O86/sUP6H2AHRQ22bY5eRKfiwYJzWhzhGMnjnf
 7/AvtW4qYqsLAhhmewgjsCfi5oZ/PXAqqZJVpdU4DYKny1Jv7oYZx3QagdW81A==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1757312773;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=6bBqlMJnbWGXcmUBtE9PTudTuxx/UefA7GFyXkZGpvA=;
 b=pF4zonKhlnCDDbr7IsNBTtEWjdQnqtuoR+n2vFMFv1eZLbY0K7DGdfPuEHE0togKWtbSMT
 jKzYqlA5ChYh4uDA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=4qo1JKGK; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=pF4zonKh
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] igc: unregister netdev
 when igc_led_setup() fails in igc_probe()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain

On Sat Sep 06 2025, Kohei Enju wrote:
> Currently igc_probe() doesn't unregister netdev when igc_led_setup()
> fails, causing BUG_ON() in free_netdev() and then kernel panics. [1]
>
> This behavior can be tested using fault-injection framework. I used the
> failslab feature to test the issue. [2]
>
> Call unregister_netdev() when igc_led_setup() fails to avoid the kernel
> panic.
>
> [1]
>  kernel BUG at net/core/dev.c:12047!
>  Oops: invalid opcode: 0000 [#1] SMP NOPTI
>  CPU: 0 UID: 0 PID: 937 Comm: repro-igc-led-e Not tainted 6.17.0-rc4-enjuk-tnguy-00865-gc4940196ab02 #64 PREEMPT(voluntary)
>  Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2 04/01/2014
>  RIP: 0010:free_netdev+0x278/0x2b0
>  [...]
>  Call Trace:
>   <TASK>
>   igc_probe+0x370/0x910
>   local_pci_probe+0x3a/0x80
>   pci_device_probe+0xd1/0x200
>  [...]
>
> [2]
>  #!/bin/bash -ex
>
>  FAILSLAB_PATH=/sys/kernel/debug/failslab/
>  DEVICE=0000:00:05.0
>  START_ADDR=$(grep " igc_led_setup" /proc/kallsyms \
>          | awk '{printf("0x%s", $1)}')
>  END_ADDR=$(printf "0x%x" $((START_ADDR + 0x100)))
>
>  echo $START_ADDR > $FAILSLAB_PATH/require-start
>  echo $END_ADDR > $FAILSLAB_PATH/require-end
>  echo 1 > $FAILSLAB_PATH/times
>  echo 100 > $FAILSLAB_PATH/probability
>  echo N > $FAILSLAB_PATH/ignore-gfp-wait
>
>  echo $DEVICE > /sys/bus/pci/drivers/igc/bind
>
> Fixes: ea578703b03d ("igc: Add support for LEDs on i225/i226")
> Signed-off-by: Kohei Enju <enjuk@amazon.com>

Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmi+dwMTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgjOrD/4qyV9TBth01mlwn58WqE8vBfJlONOe
DEpsPViibjk9BIC5L0H0gtHfGhn7mST2PN8rH6BSlLa5/wXJZjv6Il0go6kkdzEN
MGeYSZF+JRf2gf6rj35ILThlbN0z9WdM+3ezZqd89v5nXVBZ8PgMLXcsNAZOlPEu
iChtRaXSYXU8JVqT+AxYje4k90qDXJcXz/j7OtDpw7cV5swdLLiIJ+6rBjzudN9m
q0hG2mkQPq9zlBScBocrZXOIDvOw1mk1s0h6W1UwnQPDy/0YUJxFdPsea4M99mKn
WoW5YC4zMkDfXhYdfSVesqRHq1nxM0gv2QiLu11oo3TQYUyzkZHs6360ury7lezf
pHJHfS0+g2WPzUuLxe6bijAHCv3fHIzsIjpswfezyVcQs+kGUWBOosvPWfuBf4qH
uzSk6+tlwlGccroAHMaCSFfzgiV91nn/KS9F6Q4cI+0ay+4A7oUcRHHNrvfmk4nK
eLuznh5E9p8D8IsE0lkAAj/YZsOotLe191bCCVHSEWQLLzDeQQNR8ZcQsBweVifS
jRklktMfyY5BfpohaOr2wNUb/Q+f4eusSBghHGF6F7AFbPY4s9F6zMzwLAbBkJhh
LE90hCQfZ2fG4KUxGqoezKplfM1wc16HE+gC+Qluk01QPrkmY2KTcC/OLvtFThQu
KXwFMmOLdZDBeg==
=GFLf
-----END PGP SIGNATURE-----
--=-=-=--
