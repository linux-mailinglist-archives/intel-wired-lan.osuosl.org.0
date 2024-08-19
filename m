Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A6C956D15
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2024 16:21:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 818286081F;
	Mon, 19 Aug 2024 14:21:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DwKBE8lscuiF; Mon, 19 Aug 2024 14:21:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBD4B60819
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724077313;
	bh=SLHhR+rzf4JQqmUikEjK3E7yXqz/4mLlLXIqQxKal6E=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yvKRrrbkej+0efh+YlORhW5pzg7Ef/vBtCyh4eahBYR+Lck3OWo6pxd5Pmvep0ys6
	 K0NK7vwA4UGHbiSFiKEt8CCjxkdEDnE5Q/ROAvIgNawBb6aCEYd6ffL3/7DkuACO2k
	 5mL44kMCEWXYOHV+gpCCvzF2JHkubh7Nmld0q/McOcMaG96nWv0zIssjZb+iXGQlo3
	 760iYMbl357oQlzf273NY7paZAKEtDyWqWatTf+emkTUNoXrr7+NFuoK9QiJXQ7sS5
	 3Jeirv51GesWm+83mKuY+24GOSeVK/u6wl2oSkYtiE+I0wy+s5+VA2HySS6AnbD/Z5
	 Y/ILDW2Ys8myw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CBD4B60819;
	Mon, 19 Aug 2024 14:21:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 315701BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 14:21:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2A5EF80E65
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 14:21:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2d5KXroweU4t for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2024 14:21:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6616880E51
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6616880E51
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6616880E51
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 14:21:51 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
In-Reply-To: <ZsNDdPTHu2OACpPq@boxer>
References: <20240711-b4-igb_zero_copy-v6-0-4bfb68773b18@linutronix.de>
 <20240711-b4-igb_zero_copy-v6-1-4bfb68773b18@linutronix.de>
 <ZsNDdPTHu2OACpPq@boxer>
Date: Mon, 19 Aug 2024 16:21:47 +0200
Message-ID: <87o75o8uf8.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1724077309;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=SLHhR+rzf4JQqmUikEjK3E7yXqz/4mLlLXIqQxKal6E=;
 b=QgYlKwZLBbVtiPm99BZV8eRbPO1RH43QBIHwGg5skvRuyWRH5SGAoOPxsdUAhhskyPESFq
 +zt6RZ2zCT+s2kOa+9MwBHSUWlokBiX4Efo3UmVzjc8NB/DxUgaouWqC1lTjmRQd5RNnLv
 Tzwpi3ebX3TJy6ajginqQ0A3b7vgmkIHKoHgzGDR1htv4Efo6HuKKJR9nKEWiyzdqg6UNb
 uW3zro91+wD7cQ3LSPlEtgBrTcf6Ys4aDmtwQ7ZjwOTtC7MQFAtLRKpQlmpOfLMj5zO1hf
 g8g+Ew9pSRuemBPCs/vLeWZQzxBmmqebKhouCZrZ6QjclHIsVVk8eJpwNVNdZQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1724077309;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=SLHhR+rzf4JQqmUikEjK3E7yXqz/4mLlLXIqQxKal6E=;
 b=G5o+YrMGIbxBmQuH4y4AQms58B24+agqX6/FnFTet/XtRI9upSMMCiOKXHK65+9s21geVU
 1NFQQnwgIoUIbcAA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=QgYlKwZL; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=G5o+YrMG
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
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
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Mon Aug 19 2024, Maciej Fijalkowski wrote:
> On Fri, Aug 16, 2024 at 11:24:00AM +0200, Kurt Kanzenbach wrote:
>> From: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
>>=20
>> Always call igb_xdp_ring_update_tail() under __netif_tx_lock(), add a
>> comment to indicate that. This is needed to share the same TX ring betwe=
en
>> XDP, XSK and slow paths.
>
> Sorry for being a-hole here but I think this should go to -net as a fix...
> I should have brought it up earlier, current igb XDP support is racy on
> tail updates which you're fixing here.
>
> Do you agree...or not?:)

Yeah, makes sense. I'll add a Fixes tag and send it to iwl-net.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmbDVPsTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgio+EACxHf2TIRo4Ebw4aCqR7PmkA/iqNbX5
18s/iS/jVy7DJcqWb3y20H34MErTMlBuFU7uv2dXqDzYetd78zIbSQ0zeMQJiM8R
X1haJVFaZJkiJiQcIJ9cQ4IJDalOr0D2Zxl3wKR/PSjlUJGCgFS5xPfLkJxShFGK
Yxw7dR2CrzJFvWXMzEKxnrWJi57aoELGDVtlSd6oDZZTdgH8VOMspd2cuaG0ndw7
tYnw6VFRWfWx/RUwmM+zt43zqMMBYciCK2f/uIm0RPFgdjyXt3cHQn4wU3Asqlm1
7d8qH18FONfZyTmizEAIV9cP5rGnzBsD0R1/GZY6EpJhu4lHEyfnQbx6YLdr8MVI
PaL58hRCxoZNqwVrM+faYByBLsizp+8Ptg1rxk390RPwdq+yw6lgrbpdhS9GIP5E
2A49OeFJ8yIFANTz3HNOVLLgvek6L+K35dwuCulfJjZXq4/7INVOzC1j2sHT2EX7
Onhmj5Rwjs57jO3qDxLS6E17rYziuCfa/h2eKJjHrQ3Vrad3PZam2AqaUTGRxoj3
mYEk5tthd+U6swuSD/3Rj5LMjSxy7EpYwW6Z9UVhzMXnRMMLJg3FLJncSlWjHWpk
vjV4pGSUZhAXLmzrE+qxitrHamGR95S+jj2ahw4c5t5hzFZZ9izK+GHSIYjmT15V
VKh/fFQ1ZvMqBA==
=Ba03
-----END PGP SIGNATURE-----
--=-=-=--
