Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 583E495464B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Aug 2024 11:56:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED2B060B3E;
	Fri, 16 Aug 2024 09:56:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gtjVc5OEKSb6; Fri, 16 Aug 2024 09:56:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 386EC60B4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723802198;
	bh=jESmOZLP8UWnsshEocvlvp6ISx76GNAGMqVLR6BonUk=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mqD3P9jOSC+ipZlqPNxOP5nA6lQYREXSFpAIEiZcXBISgzs0gLIag/SNhh6P9EFOc
	 MfgYd0mlOPWWleA1/hV18IX+CRZw1mxnMW1POp1pCjzrGSVjO8mgGtu2dTfmAixBep
	 57spx3pZwsOwF5mfJSYcAclZPISRK90yqX8/EyJ81mOZGX34bXi8oJilbjoR7zNpfC
	 JDI3nEFkG6nQCD+iqoPrv6WCtoBWB4xjQupdn+hIiLFOvvnK4terPGFAOXG2JAAMur
	 pNf6pUVyk+J2E6F+yjiBfcQamm/wkuJaeTE8s7j6eNEZMeozHfxGKa6EsCLj5d/P21
	 f34RgkAogQlcw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 386EC60B4E;
	Fri, 16 Aug 2024 09:56:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB4441BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 09:56:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D756740141
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 09:56:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vjx9eIdjOP_K for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Aug 2024 09:56:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 42B114010D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 42B114010D
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 42B114010D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Aug 2024 09:56:34 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
In-Reply-To: <20240816093838.ZpGD38t-@linutronix.de>
References: <20240711-b4-igb_zero_copy-v6-0-4bfb68773b18@linutronix.de>
 <20240711-b4-igb_zero_copy-v6-1-4bfb68773b18@linutronix.de>
 <20240816093838.ZpGD38t-@linutronix.de>
Date: Fri, 16 Aug 2024 11:56:30 +0200
Message-ID: <87wmkgu6y9.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1723802192;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=jESmOZLP8UWnsshEocvlvp6ISx76GNAGMqVLR6BonUk=;
 b=zxoZ0ClwFcz2e0qMb2F+ALD90vEBdUixozBxCrn+8jl1o66ulK6HCR/Jx68mLUUW8JKxiX
 JW7WPfXzNeK33EQ2OZM4eyjMOSGT/GaTSYN0QBpNpw1tzPoKhK1Ez6MwFSF/ULk9FGj2sM
 2a0m0seUPBc7vxAIaioWaw0haFt7nXE5tWbh9m5FR1h1ACLYM4H2VEl91f4yyQ5ACcUjQ0
 Mr2k1izecsPLHuj/HGAMY9zmcUP0OYd+7EsDU4n6WJK1HuKYqEGJvP/v5dqrmaMcK5yqKE
 SI+JeSHRySSZh5RYKSQRx3gdRqGAHBh0xj2aFA7Pm3NZeZeBKJNrMcseJAqVFw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1723802192;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=jESmOZLP8UWnsshEocvlvp6ISx76GNAGMqVLR6BonUk=;
 b=WcH/q3OK+suGA9AIiolbtMLY7MZCHuZMu0xnvBs7Cvzqk9bRQBQ/BRxhripc7H1sDbba5O
 Wu6uPH1qesXZ4bAw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=zxoZ0Clw; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=WcH/q3OK
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 1/6] igb: Always call
 igb_xdp_ring_update_tail() under Tx lock
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Sriram Yagnaraman <sriram.yagnaraman@ericsson.com>,
 Benjamin Steinke <benjamin.steinke@woks-audio.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Fri Aug 16 2024, Sebastian Andrzej Siewior wrote:
> On 2024-08-16 11:24:00 [+0200], Kurt Kanzenbach wrote:
>> index 11be39f435f3..4d5e5691c9bd 100644
>> --- a/drivers/net/ethernet/intel/igb/igb_main.c
>> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
>> @@ -2914,6 +2914,7 @@ static int igb_xdp(struct net_device *dev, struct =
netdev_bpf *xdp)
>>  	}
>>  }
>>=20=20
>> +/* This function assumes __netif_tx_lock is held by the caller. */
>>  static void igb_xdp_ring_update_tail(struct igb_ring *ring)
>>  {
>>  	/* Force memory writes to complete before letting h/w know there
> This
>   lockdep_assert_held(txring_txq(ring)->_xmit_lock);
> would be more powerful than the comment ;)

Probably yes :-).

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAma/Ik4THGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgvy7EACdXa4mHcircC6NlXZt/nWX6xwMHDiA
9osVQPXuXOXab6fhrCOwI2QmaTcUHxKwK3yQZo+4CMopI4ne34357YpRYySXezrM
65+LmiCkX6AJm72mT3PByWURiF7c8cdRl8u/WQF0+qXjUb2tEZutrOYKP2QlDzLN
8N1NZPz8BDWSBnWR9PPRcO6oufuchIx6d1FKUshyH6EbQ/Xha9ixzt+UktTxpS1w
ruwgUECR1zMulpTSwwdLVss2d8FsJwBoG0z3wMTtNYffyZ8eXJ+N7rjte8IpFckP
ntjZSMR4iGT9rwvREegdPdMzovPYIIPIdvmPv+9iXwWTkgLRi9wsd8yHmYzR/0re
XooZSoTqYZFAKJ38myZmmnr0V1GNbCHjISWgUGLSA6ZBDvYnr7Ci9XwK03a5XoWy
BB8AXpRw8GDhqVws7lPV0Y/T9DcjL2ODUvF00sLaWTdrU1srjBf72r94VhpW8+CF
vXP/M7luxP/LY0sfM66Cw+iN/HEsCbiKsaRsHohFddSY2cKZxuvTYPyFQZdJmlfe
K1r7LeLAbV6WcIFC1ia33k8E6Va1n01w+KYCmWUKOfpOdE4JbUiBWIelNqWiDLfW
sAKNscYy+D+m/5/A/rAdE4gcw/1704tRHf9rXnUbLvxK64QY4j6U2+mRZ4XbD7zm
DvFijdRBa8Nl8A==
=w0GY
-----END PGP SIGNATURE-----
--=-=-=--
