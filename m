Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D16B9B529D5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Sep 2025 09:27:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B93F41F55;
	Thu, 11 Sep 2025 07:27:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pHDgBSl4kD8Y; Thu, 11 Sep 2025 07:27:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 90D8441F4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757575628;
	bh=JxoRqRXqoKpRnVayyesoDxNe1k2DbyGFUFDxp1DbRBM=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n/KaB6szR0A9RYVH7iU6xUyqR7gWjwRgDxL3nci16LWF9YPmWV15gfyEFwYz0mMYx
	 fLF31S0LedpZ1wJjlEHmZIcDwvNaVPwPQCsZu8AUFT56pYdB5cYBzH+G3sUqEN+MtQ
	 OgEL6FOZshouae4vaa7cOL+inZyYxflC/q5+RGghDiEcf0K2AT6ffou+O6Dvbhah0t
	 GvRT8WSlf7tsoyO2TdcY+8ZlLS6IOrAovBQ4OMP82YJt8NkMrCnSwjUNUwbhu6ln6E
	 HfN1KDx7+7JARPSVnknBh/EYL8pAQ3NyJsikP79DXsuGxPHwDdfgGQRuDiNziTBV0E
	 xuTe5dVN1S2Dg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90D8441F4F;
	Thu, 11 Sep 2025 07:27:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 36D0BE20
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 07:27:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 28A2A40911
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 07:27:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ojzY_HooaLa3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Sep 2025 07:27:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 33287408C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 33287408C6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 33287408C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 07:27:05 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Kohei Enju <enjuk@amazon.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Aleksandr
 Loktionov <aleksandr.loktionov@intel.com>, Vitaly Lifshits
 <vitaly.lifshits@intel.com>, kohei.enju@gmail.com, Kohei
 Enju <enjuk@amazon.com>
In-Reply-To: <20250910134745.17124-1-enjuk@amazon.com>
References: <20250910134745.17124-1-enjuk@amazon.com>
Date: Thu, 11 Sep 2025 09:27:00 +0200
Message-ID: <87plbxwit7.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1757575622;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=JxoRqRXqoKpRnVayyesoDxNe1k2DbyGFUFDxp1DbRBM=;
 b=jsg6ldPSaiKsLnKcDrcgjlywTlU2NYekzlsTrHyf/5Pw+lEJaljciZhFr4ZEaAueO6+cgP
 0RfsKg/3hbdcV9q0lNuAOG3WrLPo2ECX5jjyQkJyxuZA3vFi3NFKr3T0JQ4Db+FJM2+7jc
 oQxbV7uLo4YTom/8U+idSaV32P/CPFZqdug6PiqEJcWnfBytpyqDwMu7OUzHeRZlvCNrXg
 5e7GvfixSK9LxCAB4F+HS9bS0RY7kyvhuTrxGmQ646+DoRtpROYZEoDzKkvz18MyKPh0NX
 FlDjzkIyNJvV45VtH5G+OqSA26rnpBgYe7hhgDA/X57wcyYf8fEk7VOwCmdqxQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1757575622;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=JxoRqRXqoKpRnVayyesoDxNe1k2DbyGFUFDxp1DbRBM=;
 b=dFniVzrwYeAGOWQifnwv6OJwg7fxqwqgCcK0t1SvvWpS8TJRTl1mg5baRgWfRFG12/gY+M
 qxGY4IgsQ+1jy9Cg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=jsg6ldPS; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=dFniVzrw
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net] igc: don't fail
 igc_probe() on LED setup error
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

On Wed Sep 10 2025, Kohei Enju wrote:
> When igc_led_setup() fails, igc_probe() fails and triggers kernel panic
> in free_netdev() since unregister_netdev() is not called. [1]
> This behavior can be tested using fault-injection framework, especially
> the failslab feature. [2]
>
> Since LED support is not mandatory, treat LED setup failures as
> non-fatal and continue probe with a warning message, consequently
> avoiding the kernel panic.
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

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmjCecQTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgouOD/9wg6uDEBn9/vhNheAKhC/ywBUqkkiO
RSRwdgqdL14Opwj/K1d24X9SN5Hrk/2qVaBAHJciRFuuUNCBDjoAS4m1q2QEi6oJ
u64KakTLwxlNk1wrTJ9k05bGzILT0yN1bBjwzb8xKhpAoZE7oTTYAPWk9E7+J4tt
IrxnITZhDDvfnzxyBOQdRy0FIytz/+zgGUfvYnIYNuSXm7NyD3CTFqI4nnU49BzY
jvfizwKoqmZGBv5yKI+jgX74BnG78NsjCMFs41VxJPez2zJ+4cseNUeNuBSGbgZl
4BO6TfuswIM70esYMay8CzhtZhbWfqVyKWBFvqv/8xkXihVIDn+YHsx2qaNmfGab
Vdy8XKpnDynmkvvuLWQM2g7TmJCqbXiV0lYgQ2MyWmP0k7o0bYoSlMACm1oJBhba
joUI6g1Iqkr9K/ec/D9UJhRm87S0PLxAbEbRxIXfMrbqtxvfMQUcda/miIYyUvg4
8mOHRLTcGAJKdWbkgNSnJNJLzbJOAYaVnX0yxpQDJmt+SE3V6FqaBprV2b5b4nFP
5Myz1cAtb0+anT1MIt74ksUQHP8VeynSSreR4sMzTt+Zqc4vi0yQFzHUEVlZUv8N
eW3tGHns1g3xNx1RGF3SSEa9yCdYr6F8/nSclePq/W+ZZFz3wOZxyTUpAf5gKNt/
T1MKdw/Ll3/vbw==
=zhJS
-----END PGP SIGNATURE-----
--=-=-=--
