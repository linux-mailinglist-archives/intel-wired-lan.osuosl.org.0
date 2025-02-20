Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D4FA3D286
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Feb 2025 08:45:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7881F60AD9;
	Thu, 20 Feb 2025 07:45:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NypnA_74c1NA; Thu, 20 Feb 2025 07:45:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A89660B8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740037502;
	bh=AovAm23kTgSM8LFDftb0FODj2p8RHvl8drEW4CuhL4w=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9EtJMIVVrs6+L8uwc/K3dxI++BxOXkTlYsYg0zfC+StB1S7+76oa7vyS3V1NM6GAN
	 9XZt8FBl2sIvXnvgEfyPqAElod4+j7KYshf3Z4G0K4BABipBideOZORIZSEdpK3Hxz
	 xfkE2zEleXbPYwQpO+nsTXYhKu4MWeH40gxd6YNftbj0szbqAVSqDaN7h/l7AYFSIF
	 L8U6ucFWt3ZcTjcw5NiEfTpoUTTUyjXRMN6+xSiL1R2TVmvxhInF3JEalB05Jf1Nfo
	 Pm1Igm3jaADz2LG9diZ8Rl9UGNYsYBKOrnQF5nAFKnmcIY3U4T4VthwNirWmvM9SG4
	 wNp4u68qO7eJw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A89660B8B;
	Thu, 20 Feb 2025 07:45:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C5794CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 07:44:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8B0C38115A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 07:44:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m4Q-qQUCzGlw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Feb 2025 07:44:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8AEF78114D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8AEF78114D
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8AEF78114D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 07:44:55 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Joe Damato <jdamato@fastly.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Gerhard Engleder <gerhard@engleder-embedded.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
In-Reply-To: <Z7YaLuho0hXL7Jb1@LQ3V64L9R2>
References: <20250217-igb_irq-v2-0-4cb502049ac2@linutronix.de>
 <Z7T5G9ZQRBb4EtdG@LQ3V64L9R2> <Z7UDCSckkK7J30oP@LQ3V64L9R2>
 <87jz9mghfr.fsf@kurt.kurt.home> <Z7YaLuho0hXL7Jb1@LQ3V64L9R2>
Date: Thu, 20 Feb 2025 08:44:51 +0100
Message-ID: <87bjux3vrg.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1740037493;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=AovAm23kTgSM8LFDftb0FODj2p8RHvl8drEW4CuhL4w=;
 b=xGxPjtQrgb3QTy2VKnSsBjTa4+0Rx++gVtMlHKSc+cd+5k/Q1Es/v7k6mGzSAINL1wb/b7
 4ylnIffLb87cNelT7zFKSYmRrNdEuCagziWUMwdosw+eao+WnBUjSWZ/6J6BnfZB6LUW+p
 KGzSOrOzpRNyRVxWqc/VnjDp38NYT8Souw5asBNGtqVpy/rX4xWNCEq7SJFa8iVAdFZKW2
 fa2zgLvpII776kkf2HCn030QLJG/JjNhEtH8sAAnaRzEBGq3QqgjKtP3mLyxPl+bsrN1WE
 8pFM0L8BBgJhvkVwdJtQrQIZuWdr7xcA9quJXexTOrTo0/aM8IuNOQXE2UFBmQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1740037493;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=AovAm23kTgSM8LFDftb0FODj2p8RHvl8drEW4CuhL4w=;
 b=Gu4lPsER95OcejD2rYYaRA0efyEmb9wpDTPfvmSXdGDKmxcmeLP8iQQSOLqyiiPq+1xSD8
 rpnFXoVl+1XnTECw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=xGxPjtQr; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=Gu4lPsER
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

On Wed Feb 19 2025, Joe Damato wrote:
> On Wed, Feb 19, 2025 at 03:03:36PM +0100, Kurt Kanzenbach wrote:
>> On Tue Feb 18 2025, Joe Damato wrote:
>> > On Tue, Feb 18, 2025 at 04:18:19PM -0500, Joe Damato wrote:
>> >> On Mon, Feb 17, 2025 at 12:31:20PM +0100, Kurt Kanzenbach wrote:
>> >> > This is a follow up for the igb XDP/ZC implementation. The first tw=
o=20
>> >> > patches link the IRQs and queues to NAPI instances. This is require=
d to=20
>> >> > bring back the XDP/ZC busy polling support. The last patch removes=
=20
>> >> > undesired IRQs (injected via igb watchdog) while busy polling with=
=20
>> >> > napi_defer_hard_irqs and gro_flush_timeout set.
>> >> >=20
>> >> > Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
>> >> > ---
>> >> > Changes in v2:
>> >> > - Take RTNL lock in PCI error handlers (Joe)
>> >> > - Fix typo in commit message (Gerhard)
>> >> > - Use netif_napi_add_config() (Joe)
>> >> > - Link to v1: https://lore.kernel.org/r/20250210-igb_irq-v1-0-bde07=
8cdb9df@linutronix.de
>> >>=20
>> >> Thanks for sending a v2.
>> >>=20
>> >> My comment from the previous series still stands, which simply that
>> >> I have no idea if the maintainers will accept changes using this API
>> >> or prefer to wait until Stanislav's work [1] is completed to remove
>> >> the RTNL requirement from this API altogether.
>> >
>> > Also, may be worth running the newly added XSK test with the NETIF
>> > env var set to the igb device? Assuming eth0 is your igb device:
>> >
>> >   NETIF=3Deth0 ./tools/testing/selftests/drivers/net/queues.py
>> >
>> > should output:
>> >
>> >   KTAP version 1
>> >   1..4
>> >   ok 1 queues.get_queues
>> >   ok 2 queues.addremove_queues
>> >   ok 3 queues.check_down
>> >   ok 4 queues.check_xdp
>> >   # Totals: pass:4 fail:0 xfail:0 xpass:0 skip:0 error:0
>> >
>> > Note the check_xdp line above.
>> >
>>=20
>> Sure, why not. Seems to work.
>
> Thanks for testing it.
>=20=20
>> |root@apl1:~/linux# uname -a
>> |Linux apl1 6.14.0-rc2+ #2 SMP PREEMPT_RT Wed Feb 19 14:41:23 CET 2025 x=
86_64 GNU/Linux
>> |root@apl1:~/linux# NETIF=3Denp2s0 ./tools/testing/selftests/drivers/net=
/queues.py
>> |KTAP version 1
>> |1..4
>> |ok 1 queues.get_queues
>> |ok 2 queues.addremove_queues
>> |ok 3 queues.check_down
>> |ok 4 queues.check_xdp
>> |# Totals: pass:4 fail:0 xfail:0 xpass:0 skip:0 error:0
>>=20
>> Has this xsk netlink attribute been added fairly recently? The test
>> failed on my kernel from a few days ago (kernel from today works).
>
> Yes, it was just merged, see the commit date here:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/commi=
t/?id=3D788e52e2b66844301fe09f3372d46d8c62f6ebe4
>
>> I think there's room for improvement though:
>>=20
>> |root@apl1:~/linux# NETIF=3Denp2s0 ./tools/testing/selftests/drivers/net=
/queues.py
>> |KTAP version 1
>> |1..4
>> |ok 1 queues.get_queues
>> |ok 2 queues.addremove_queues
>> |ok 3 queues.check_down
>> |# Exception| Traceback (most recent call last):
>> |# Exception|   File "/root/linux/tools/testing/selftests/net/lib/py/ksf=
t.py", line 218, in ksft_run
>> |# Exception|     case(*args)
>> |# Exception|   File "/root/linux/./tools/testing/selftests/drivers/net/=
queues.py", line 53, in check_xdp
>> |# Exception|     ksft_eq(q['xsk'], {})
>> |# Exception|             ~^^^^^^^
>> |# Exception| KeyError: 'xsk'
>> |not ok 4 queues.check_xdp
>> |# Totals: pass:3 fail:1 xfail:0 xpass:0 skip:0 error:0
>>=20
>> I'd assume this shouldn't be a Python exception, but rather say
>> something like "Expected xsk attribute, but none found. Fix the driver!"=
 :)
>>=20
>> While at it would you mind to add a newline to the xdp_helper usage
>> line (and fix the one typo)?
>
> Jakub currently has a series out to change the test a bit and
> improve it overall, see:
>
>   https://lore.kernel.org/netdev/20250218195048.74692-1-kuba@kernel.org/
>

Great that Jakub is already on it. I've replied in that thread. Thanks.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAme23XQTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgqMXD/98MohXEYReZVYKHoUEP1hIU0Ix7yUy
V/ltMnm2xXQ21h1KTDN9Sxy0aBdLFE+9oiarma2qDYUVAujlEXgkPfOD//gG298E
wJtebfMJMk8/SWO6W/RURt3NrY0hnb8OA+DC4yKfVDYop56lwmX2OIaLP37h3asQ
pejwKEarPzWiEK36DIvLlcPs7LOjOdQ0zF/kv1pxzHxxeN+OMyIHzQ5F59DWsHHD
AMWRmbBLbFUU6VMcPtn+iXlps+v1qjADkNYTOwdwni1KbAWpIl4BZQ9bkAs/6qXC
3QkXIVnMu1drPYZD06RqPDznLmQs58To1C/tWxvnZvItEoioLyykYu82TpWbW1T8
yKKKLVdj1++pJiGn+Np3v0FReXaiB5SW5L//D81CsCdkXhfmDpgogBjSfaof1yF8
UVDpSbP8lnTalJvgJ2geAzxmGoskC4wi9W3c+0zQeBI/KkqbXXsvtl/BHCKHQfl4
AYC40mLH9Q1xJ7u/YWVwRdrBOH2hy+vF6PReY6fx6iJOHuG7fs//d+nvy8YQsFOk
P6A85loVwBiRbpyk/Jwf+ruSV4wS+r6oAbWznjOwN8TIIAMNcPzVBJsQ26g9KnWN
qTEeJ2lXPcK/NITVGzkb3hKv1zCpfLa03uXJqjwuofJ/Eiv4plhhFo37xsZW4o2x
k5W0IGpGQE6oSA==
=9X0t
-----END PGP SIGNATURE-----
--=-=-=--
