Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A44B4A3C4D3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Feb 2025 17:22:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A31B8913D;
	Wed, 19 Feb 2025 16:22:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F__mPGdesa0W; Wed, 19 Feb 2025 16:22:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B4B28690F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739982141;
	bh=WRmexGZnBn28ZwYufH8JgpfTsCjo43yY2wzZiMrsTrc=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fzrzE29U3x8GgZGeDm3/+8+LvqXD+mAEprzdjibxZU8ftNmbaKMOPIr2QiO04bgA7
	 /P56lf8FWcj0GxPQfx/PcnGkXy0W8X9EMjrOWroxpYoQxQgZxHUD4exVM3h20RjN+F
	 mkVYHXHKBGe9FUJeFF8sdY7H8z997VYo+4hunNxtEKbUj3Q6pFz7Gmqfck3CxsH8dw
	 hA7wrCIq0wUceiSXOucYL6hzGjWovOU+WGI6YlENmJtssbK0uiqmvCQCKhmMf2lOz4
	 SLnmnp1qw/uKsBQHuL9vSueLZZMrEJoMiDKCfvxfaRRXSkq1tpRBm1Pt4/L7WiXVZ4
	 GH3thsLTtcz/w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B4B28690F;
	Wed, 19 Feb 2025 16:22:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 44E8EC8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 15:39:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 72D5C4F56F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 14:08:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8vSnxB9VhSuw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Feb 2025 14:08:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D353E54267
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D353E54267
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D353E54267
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 14:03:41 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Joe Damato <jdamato@fastly.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Gerhard Engleder <gerhard@engleder-embedded.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
In-Reply-To: <Z7UDCSckkK7J30oP@LQ3V64L9R2>
References: <20250217-igb_irq-v2-0-4cb502049ac2@linutronix.de>
 <Z7T5G9ZQRBb4EtdG@LQ3V64L9R2> <Z7UDCSckkK7J30oP@LQ3V64L9R2>
Date: Wed, 19 Feb 2025 15:03:36 +0100
Message-ID: <87jz9mghfr.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1739973817;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=WRmexGZnBn28ZwYufH8JgpfTsCjo43yY2wzZiMrsTrc=;
 b=U9W+w5Fh5BW4pwTK9wPXaPkZc2pmaRKtku6lWziTjPlyVrGLD/ydPRO7Q4XsliMbWPur09
 IkvUUsLu58BnmSNBmuuI2MNfynM9OWCzxuv3qqJSr/rbQk2kwFu8t2C1/PNNhoHvVa13pM
 FeJin0C7EvEI8S5vB633K3jYqtdJf20S+MEKAeEef5IlCL10RBvFqMHS5ZsuJ58p1dWtrc
 bZR+V6b2OSRFOJhvzLIpaUPrw1U19CI4ceCltCYxUDc5UXIy78PwYlcKp4tOEc7dugOmwt
 bJ7S75/baXEg88nFKnXz8GN+j6IMuWBY1el6VzjOPc+YaNMaQNoHb6G4KKp+qQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1739973817;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=WRmexGZnBn28ZwYufH8JgpfTsCjo43yY2wzZiMrsTrc=;
 b=2mIsfES2UlPwadCvzS0WHm04ZpljFucGvHphvWBsp4ZQVXW4dph4Cxvlm900+GSXPQb+eh
 0M0Syc7T1+fzs2DQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=U9W+w5Fh; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=2mIsfES2
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 0/4] igb: XDP/ZC follow up
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

On Tue Feb 18 2025, Joe Damato wrote:
> On Tue, Feb 18, 2025 at 04:18:19PM -0500, Joe Damato wrote:
>> On Mon, Feb 17, 2025 at 12:31:20PM +0100, Kurt Kanzenbach wrote:
>> > This is a follow up for the igb XDP/ZC implementation. The first two=20
>> > patches link the IRQs and queues to NAPI instances. This is required t=
o=20
>> > bring back the XDP/ZC busy polling support. The last patch removes=20
>> > undesired IRQs (injected via igb watchdog) while busy polling with=20
>> > napi_defer_hard_irqs and gro_flush_timeout set.
>> >=20
>> > Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
>> > ---
>> > Changes in v2:
>> > - Take RTNL lock in PCI error handlers (Joe)
>> > - Fix typo in commit message (Gerhard)
>> > - Use netif_napi_add_config() (Joe)
>> > - Link to v1: https://lore.kernel.org/r/20250210-igb_irq-v1-0-bde078cd=
b9df@linutronix.de
>>=20
>> Thanks for sending a v2.
>>=20
>> My comment from the previous series still stands, which simply that
>> I have no idea if the maintainers will accept changes using this API
>> or prefer to wait until Stanislav's work [1] is completed to remove
>> the RTNL requirement from this API altogether.
>
> Also, may be worth running the newly added XSK test with the NETIF
> env var set to the igb device? Assuming eth0 is your igb device:
>
>   NETIF=3Deth0 ./tools/testing/selftests/drivers/net/queues.py
>
> should output:
>
>   KTAP version 1
>   1..4
>   ok 1 queues.get_queues
>   ok 2 queues.addremove_queues
>   ok 3 queues.check_down
>   ok 4 queues.check_xdp
>   # Totals: pass:4 fail:0 xfail:0 xpass:0 skip:0 error:0
>
> Note the check_xdp line above.
>

Sure, why not. Seems to work.

|root@apl1:~/linux# uname -a
|Linux apl1 6.14.0-rc2+ #2 SMP PREEMPT_RT Wed Feb 19 14:41:23 CET 2025 x86_=
64 GNU/Linux
|root@apl1:~/linux# NETIF=3Denp2s0 ./tools/testing/selftests/drivers/net/qu=
eues.py
|KTAP version 1
|1..4
|ok 1 queues.get_queues
|ok 2 queues.addremove_queues
|ok 3 queues.check_down
|ok 4 queues.check_xdp
|# Totals: pass:4 fail:0 xfail:0 xpass:0 skip:0 error:0

Has this xsk netlink attribute been added fairly recently? The test
failed on my kernel from a few days ago (kernel from today works). I
think there's room for improvement though:

|root@apl1:~/linux# NETIF=3Denp2s0 ./tools/testing/selftests/drivers/net/qu=
eues.py
|KTAP version 1
|1..4
|ok 1 queues.get_queues
|ok 2 queues.addremove_queues
|ok 3 queues.check_down
|# Exception| Traceback (most recent call last):
|# Exception|   File "/root/linux/tools/testing/selftests/net/lib/py/ksft.p=
y", line 218, in ksft_run
|# Exception|     case(*args)
|# Exception|   File "/root/linux/./tools/testing/selftests/drivers/net/que=
ues.py", line 53, in check_xdp
|# Exception|     ksft_eq(q['xsk'], {})
|# Exception|             ~^^^^^^^
|# Exception| KeyError: 'xsk'
|not ok 4 queues.check_xdp
|# Totals: pass:3 fail:1 xfail:0 xpass:0 skip:0 error:0

I'd assume this shouldn't be a Python exception, but rather say
something like "Expected xsk attribute, but none found. Fix the driver!" :)

While at it would you mind to add a newline to the xdp_helper usage
line (and fix the one typo)?

diff --git a/tools/testing/selftests/drivers/net/xdp_helper.c b/tools/testi=
ng/selftests/drivers/net/xdp_helper.c
index cf06a88b830b..55bad307d81b 100644
=2D-- a/tools/testing/selftests/drivers/net/xdp_helper.c
+++ b/tools/testing/selftests/drivers/net/xdp_helper.c
@@ -20,7 +20,7 @@
  * this test program is not intended to actually process packets, but coul=
d be
  * extended in the future if that is actually needed.
  *
=2D * it is used by queues.py to ensure the xsk netlinux attribute is set
+ * it is used by queues.py to ensure the xsk netlink attribute is set
  * correctly.
  */
 int main(int argc, char **argv)
@@ -35,7 +35,7 @@ int main(int argc, char **argv)
        char byte;
=20
        if (argc !=3D 3) {
=2D               fprintf(stderr, "Usage: %s ifindex queue_id", argv[0]);
+               fprintf(stderr, "Usage: %s ifindex queue_id\n", argv[0]);
                return 1;
        }

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAme15LgTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgmuOEACTWKcjSqUxn3lLxtzYeT21FhY9zoue
YNf9abCQXoFWnmwSYGJknmmAfG2DscLKmLAeZW2ommRj0QyEYuMgMNGEz0csFy+b
9RWvOkdlzGHmP0dvyWE3F1DbkrHgPIjo3Txcd4DO5P1a+MuVqzY3+3VEZwNKq6nc
q+CcEIX9nUrru0jfdHbYWlquLXfqCghwkD8XXEtQVS6Hr0hXXAXxu95VKWiC2j//
0s25FXjrESK+SdbEQSKPPknAxFMO+coWvJAJJ3mempTy08vOXE+iYFMLdbh8agIl
HMQ4JiPeHRXYWvRiQzOoOSIbuh+C/WP6bcT8+/MN0eHvLIBcjyORRzXrnFRq1Fm0
5JsdRrh44IMknZwNr7cpNi0zg7+L6UebnyzT7GsNgc3WbZiblG0WSwlMZueNtKXz
FFAZqpcImm26+FgcKa/VTLzbI6dxwvEJFXizcjBzJfDZpxv8rW8gC56dmv8TzFPI
moOwxC4Ssood/0HE6F3M819ac5P8ics7aEq9tnb5YXjGreISxrrjquBuf7iwr53N
5d+LxX15AkhoTZLbXNbtFQd7sLuJbKeFIHR/44TwqPduAqkA1MOuoqmBrZlDyal3
UcweZaA7IDmUWIjrqqjp7E3yMtQVWg6VFkUDlEz8mZvWZCZQpeRAIiZvBPgUXueS
1F/dDocJV6mZrQ==
=0UN6
-----END PGP SIGNATURE-----
--=-=-=--
