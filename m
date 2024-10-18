Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5C99A3587
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2024 08:37:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 01909813D7;
	Fri, 18 Oct 2024 06:37:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KyFOe3t4XXdr; Fri, 18 Oct 2024 06:37:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 44BFF8142F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729233440;
	bh=FWPeLueaahRvEyhzQjhwr48MT//oQgzxtAKe6WkfkHk=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=I6QB/6uTjTyYuGGU2kWpNtJOSncO6Z2aplTiOikO5zE69oUFrLv0LsGv0QJfLugb6
	 hHc7uokt2DIppz85iWI/Jv8TYpaf0yWzLsjlGpxywvmxgZNEjilo5GKvXuAyVX7wZr
	 hkDwx80tuh23/vID6yUdF47VGLKoMJEIwjwZsVYJJcTwFeHgSxWn10lNYVvf8WVRWV
	 /eC45NARFvtA+BRulon3SLzVETtnl60TB9sEiaLr76JYasn8zqtuaitkCZXVZQADsX
	 3Eu4qUY/86DCCjG1Rg0M0BrkEhOoOLBEquwpU/QgOGypypqu16Zxvnzpow4RK4h1OB
	 Not4uJUwu9xSA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44BFF8142F;
	Fri, 18 Oct 2024 06:37:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0A14727DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 06:37:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E451D40761
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 06:37:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XtM4hQP4E2bZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2024 06:37:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D42454074F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D42454074F
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D42454074F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 06:37:16 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Jacob Keller <jacob.e.keller@intel.com>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, Yue Haibing <yuehaibing@huawei.com>
Cc: Simon Horman <horms@kernel.org>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, ast@kernel.org, daniel@iogearbox.net,
 hawk@kernel.org, john.fastabend@gmail.com, vedang.patel@intel.com,
 andre.guedes@intel.com, jithu.joseph@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
In-Reply-To: <1779f0d7-de2c-46d9-93ab-f73e6e09b186@intel.com>
References: <20241016105310.3500279-1-yuehaibing@huawei.com>
 <20241016185333.GL2162@kernel.org>
 <8e4ef7f6-1d7d-45dc-b26e-4d9bc37269de@intel.com>
 <f8bcde08-b526-4b2e-8098-88402107c8ee@intel.com>
 <672730fc-2224-d5fe-87d0-7dc9b00bf207@huawei.com> <ZxDvCoAo2puufMiH@boxer>
 <1779f0d7-de2c-46d9-93ab-f73e6e09b186@intel.com>
Date: Fri, 18 Oct 2024 08:37:10 +0200
Message-ID: <87jze5udbd.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1729233432;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FWPeLueaahRvEyhzQjhwr48MT//oQgzxtAKe6WkfkHk=;
 b=bbQ6uDZGTWMwUjFeF9YcHx5NijazNcGbbtiAvxDzFCc+GE3GZ0Hy1rN001M9uMSboxAMGB
 qwHW8g5dHoiVUATXzHMBI4D+kOYcrPEkjfoOsdmpg2Js/Xmm3QKOqvBSpc4+qcYnTfPuYs
 Uih8LdvXyZnO55NmEXkXwdNVpO2WT3l2J3RnBJwvEZzm17tO/UTtD4t7TzBm60ZybDILnj
 EGCbrLmhj8IoZ5611S1cy/VIMb0QGfqfsYcKvLztEHmBJs1f2T+iFnqDkQbfAOJv8ZXjM9
 7D9Yl2PpdtWjivNeefF1tbc91Gq6UGC22S9OGSekLIDNVa0MfXUbGlT6pEYg+w==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1729233432;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FWPeLueaahRvEyhzQjhwr48MT//oQgzxtAKe6WkfkHk=;
 b=yeCgp7aWfAiNlczEq8fQypuq5itu8yID1sBI87ZEvY0H3WfT2xc+wdEp0AN8lFj7vUQwcL
 cfTE5VFFP4YZR0Cg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=bbQ6uDZG; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=yeCgp7aW
Subject: Re: [Intel-wired-lan] [PATCH net] igc: Fix passing 0 to ERR_PTR in
 igc_xdp_run_prog()
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
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Thu Oct 17 2024, Jacob Keller wrote:
> On 10/17/2024 4:03 AM, Maciej Fijalkowski wrote:
>> On Thu, Oct 17, 2024 at 11:55:05AM +0800, Yue Haibing wrote:
>>> On 2024/10/17 7:12, Jacob Keller wrote:
>>>> On 10/16/2024 4:06 PM, Jacob Keller wrote:
>>>>> I don't like this fix, I think we could drop the igc_xdp_run_prog
>>>>> wrapper, call __igc_xdp_run_prog directly and check its return value
>>>>> instead of this method of using an error pointer.
>>>>
>>>> Indeed, this SKB error stuff was added by 26575105d6ed ("igc: Add
>>>> initial XDP support") which claims to be aligning with other Intel dri=
vers.
>>>>
>>>
>>> Thanks for review=EF=BC=8Cmaybe can fix this as commit 12738ac4754e ("i=
40e: Fix sparse errors in i40e_txrx.c")?
>>=20
>> Yes please get rid of this logic. Historically speaking, i40e started th=
is
>> and other drivers followed, but I chose in ice implementation to avoid
>> that :)
>
> Thanks!
>
>>=20
>> Kurt, if you'll be sending next revision for igb xsk support, then avoid
>> the logic we talk about here as well, please.
>>=20
> Yes, please fix this the way i40e did in the mentioned commit above.
> That looks significantly better to me :)

Changed the return type of igb_run_xdp_zc() from skb* to int.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmcSAhYTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgtgyD/9dW1vUgApH8WsLAyCRl96GSA1+yEDs
6IzC2ZwqGGZcqXP5ZMo0WL3ijPBQ4E0MbwRnewFiSjQnxBzNHLTz7GyR9ciZP+2F
5FpPeeTApRDiHtj2/6HattbN2ZMXiHFSop1Snq09yrs73XJVHvPvN8s37oG2psrq
VaG4y7XLCHxHhbt/jSkgQqRJ0xWsCqq2WWWmB4TukxTnUMI2NZFYxpMFJhifPH//
Ntf6aTrHfwy60cys8iyH5uHv3SnzcAUktL97ligXPVmveNZ/mJLV/REZ2m11bhmH
IJrfOjDTrr/NLfdp5mn5YEmm7eqIvhjR8PQptnJhcBmUCfwysxOEskd0BBHm3So5
DK55P0V60+5pGCj/UAacTqtolOTP4FWmjEho3GicbShwoT3VdS8QF31ufLzQP8Gs
bG7VMEU/L5PK4fNRLxbrT0D0NwbPRxSnXAdKMPKfGtyYE7OPk+PmG7ng4xkiSEOv
x9pN8+2EK3880fckzqinNmj7gLqmHgHZY9yVHovCdLhnuHvx6pWqmyEadCPSeA7n
31PDElsdxH+Z7DaWsaBXjvkBQoBuZzwqVC6F9nL85JF2lyzppI3AoIok9uolm8x2
4ZNSGuXibubHCnH3n+VHyjZMYnsuR7rBXEVAHOQimcXcdviljqM9idbeb9h70JWu
hs78hoDAs0+5pQ==
=VBMv
-----END PGP SIGNATURE-----
--=-=-=--
