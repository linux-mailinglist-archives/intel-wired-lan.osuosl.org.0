Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D66B511E4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Sep 2025 10:57:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0BAD583E3D;
	Wed, 10 Sep 2025 08:57:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9eV9dxDa3EBD; Wed, 10 Sep 2025 08:57:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7714A83E4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757494645;
	bh=pc/v+5JWAGJNdou9DYjUduiOh9htdW77VarGrhFdsfU=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=j7Uw0aoz/JCAm1U1+3tzJl2bqg814/kaIw+ThnqRqrunqRdwsMW+yMaskrp3pCgl8
	 bNrLR001eVeB23JPtrdFgaal3TT9GE2nB3VL+Up4uKh/x7K+aY7o+HDnR2XIhzclb1
	 1XNgTzO9D8fAjIyw9h251zCkiWbIgul7o8b4eatVYbMxowsroYjLGAINL2+yy1uF58
	 ffipRO+3h2DAkMahsx47swT3ALC4gm9VuyC6saNoimXkdrMS2Gd7CIwaGm287nhtrD
	 lkbu6BlrmPen2k3IY4joy9qS5k5bkrI0mQDwl8+BnhZcGDIua9BAaCeH+K+mfeinTK
	 gpDwEBHa60zXg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7714A83E4B;
	Wed, 10 Sep 2025 08:57:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D43E1E1F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 08:57:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C5F3060B63
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 08:57:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oV6SXHAMeB1h for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Sep 2025 08:57:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A8887607FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A8887607FF
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A8887607FF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 08:57:22 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Kohei Enju <enjuk@amazon.com>, vitaly.lifshits@intel.com
Cc: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, enjuk@amazon.com, intel-wired-lan@lists.osuosl.org,
 kohei.enju@gmail.com, kuba@kernel.org, netdev@vger.kernel.org,
 pabeni@redhat.com, przemyslaw.kitszel@intel.com,
 aleksandr.loktionov@intel.com
In-Reply-To: <20250910075231.99838-1-enjuk@amazon.com>
References: <15453ddf-0854-4be6-9eed-017ef79d3c77@intel.com>
 <20250910075231.99838-1-enjuk@amazon.com>
Date: Wed, 10 Sep 2025 10:57:17 +0200
Message-ID: <87cy7yk7ma.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1757494638;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=pc/v+5JWAGJNdou9DYjUduiOh9htdW77VarGrhFdsfU=;
 b=aN12IBeLmQo21aQlVNThc1EpUhg4L6W6cmFgCOYjrLiqDxPjUtGrkon8xZNAPN8MEXAy7R
 lD2oKJgqBLLBRiL5MXb31XQ0yuZgcg8qbddr9eXJi2P6vmR237Ur85UXXjuNlf8HFq6JPX
 n3ca4ktYKETDtKQb6LnFoFN90APMWGEQe5USGhq5seuKSaYWoH7StFVBhgFPmmpmRfRlJu
 x5Jg7iyjQv5jHLQYD84yBiDn4NVhr4U0UWVjzkKihnxsh+0dZYZkYlAnElAtpEwJ8C6uPi
 NUTlravFNK/cbpbvtoV67XhBWkDmiAXwSgliq+NNNiS9Q8U7UOhfXdGB9m7n0w==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1757494638;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=pc/v+5JWAGJNdou9DYjUduiOh9htdW77VarGrhFdsfU=;
 b=WFCvfnlzo33gNofzRk7Wi34l4vbkWKvQU4gIuAvAiaGKiRKxYd14v0T5F3nbVz0xR4LYCT
 W5PIyc3HMkDYMOBw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=aN12IBeL; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=WFCvfnlz
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
Content-Transfer-Encoding: quoted-printable

On Wed Sep 10 2025, Kohei Enju wrote:
> + Aleksandr
>
> On Wed, 10 Sep 2025 10:28:17 +0300, Lifshits, Vitaly wrote:
>
>>On 9/8/2025 9:26 AM, Kurt Kanzenbach wrote:
>>> On Sat Sep 06 2025, Kohei Enju wrote:
>>>> Currently igc_probe() doesn't unregister netdev when igc_led_setup()
>>>> fails, causing BUG_ON() in free_netdev() and then kernel panics. [1]
>>>>
>>>> This behavior can be tested using fault-injection framework. I used the
>>>> failslab feature to test the issue. [2]
>>>>
>>>> Call unregister_netdev() when igc_led_setup() fails to avoid the kernel
>>>> panic.
>>>>
>>>> [1]
>>>>   kernel BUG at net/core/dev.c:12047!
>>>>   Oops: invalid opcode: 0000 [#1] SMP NOPTI
>>>>   CPU: 0 UID: 0 PID: 937 Comm: repro-igc-led-e Not tainted 6.17.0-rc4-=
enjuk-tnguy-00865-gc4940196ab02 #64 PREEMPT(voluntary)
>>>>   Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debi=
an-1.16.3-2 04/01/2014
>>>>   RIP: 0010:free_netdev+0x278/0x2b0
>>>>   [...]
>>>>   Call Trace:
>>>>    <TASK>
>>>>    igc_probe+0x370/0x910
>>>>    local_pci_probe+0x3a/0x80
>>>>    pci_device_probe+0xd1/0x200
>>>>   [...]
>>>>
>>>> [2]
>>>>   #!/bin/bash -ex
>>>>
>>>>   FAILSLAB_PATH=3D/sys/kernel/debug/failslab/
>>>>   DEVICE=3D0000:00:05.0
>>>>   START_ADDR=3D$(grep " igc_led_setup" /proc/kallsyms \
>>>>           | awk '{printf("0x%s", $1)}')
>>>>   END_ADDR=3D$(printf "0x%x" $((START_ADDR + 0x100)))
>>>>
>>>>   echo $START_ADDR > $FAILSLAB_PATH/require-start
>>>>   echo $END_ADDR > $FAILSLAB_PATH/require-end
>>>>   echo 1 > $FAILSLAB_PATH/times
>>>>   echo 100 > $FAILSLAB_PATH/probability
>>>>   echo N > $FAILSLAB_PATH/ignore-gfp-wait
>>>>
>>>>   echo $DEVICE > /sys/bus/pci/drivers/igc/bind
>>>>
>>>> Fixes: ea578703b03d ("igc: Add support for LEDs on i225/i226")
>>>> Signed-off-by: Kohei Enju <enjuk@amazon.com>
>>>=20
>>> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
>>
>>Thank you for the patch and for identifying this issue!
>>
>>I was wondering whether we could avoid failing the probe in cases where=20
>>igc_led_setup fails. It seems to me that a failure in the LED class=20
>>functionality shouldn't prevent the device's core functionality from=20
>>working properly.
>
> Indeed, that also makes sense.
>
> The behavior that igc_probe() succeeds even if igc_led_setup() fails
> also seems good to me, as long as notifying users that igc's led
> functionality is not available.

SGTM. The LED code is nice to have, but not mandatory at all. The device
has sane LED defaults.

>
>>
>> From what I understand, errors in this function are not due to hardware=
=20
>>malfunctions. Therefore, I suggest we remove the error propagation.
>>
>>Alternatively, if feasible, we could consider reordering the function=20
>>calls so that the LED class setup occurs before the netdev registration.
>>
>
> I don't disagree with you, but I would like to hear Kurt and Aleksandr's
> opinion. Do you have any preference or suggestions?

See above.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmjBPW0THGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgmfSEACerOjOXk+2Y8gvMjauZVEXuS1cMIaM
Ej18mKnpkGLjVUjPdBNzXM3G3PcE4XZnl191D3QBpAHnopTaf9dRdSS0WjeNa1sY
QlXkINq9DF+rNZmca3vGIyEv+DHHl+/r9APfWJKBE82gpg/+3tjbip18NIVQfes3
kCQQiyFJfiLVTXSsZzQnF3/JQLjuahgM3ysXzq+jEPLq25A5IOma+cksRFi2nW5d
uM4D4ArgTvX5eVP3Q2bQLJvoaqUd2pkdywquIKcboSMuKiSmVz3CQFUuZooiV6kq
1qbwsqyo694SUgMCTN/gwvGTPuyjEHOOiXQs6lgR/4ba/3AHUv9ncQsJZYd0+p/k
hDKypy7/JhV0HUjvOLqwFV8BvPqYwK21D6IFogbO4kYqzwx5++CL0JJHvDweP9Q0
6une76DEbGMgUG3KJBMBv5w6oszPsH1PwBSLzPE7Lh+Q41hOleJjy9UOB2jzxqpb
Fp0TYZ4619VNCppChwGzo9BA9fbfkIXiW+rw6mKXTUHFXckrVRvlwVP8ixVwlvto
CHzPoOeCKcBYeN5g6rrEkfiQn4lMQwVROyY33nJbK/ycY3qGYmRR/v0TMTZ4R8O2
SV4PYIDP8ul3VK+Cf55+LN0VrDM4Po1H9vgPgCcOPTh/LL329z1T1u3RQgG+BBac
jAEsDZ20sajB8Q==
=qkE/
-----END PGP SIGNATURE-----
--=-=-=--
