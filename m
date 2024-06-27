Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA8591A004
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 09:08:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 135DC419F6;
	Thu, 27 Jun 2024 07:08:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ajyOYcg11tql; Thu, 27 Jun 2024 07:08:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1140340918
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719472084;
	bh=oH++3i2lIsk8bBpYY8twz2VB+Fk8vfbgsXIXDBlKzfg=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=baNyJfo+3NAKAvmjwixeEU+mI/YTgpmZd1sPovwTuUBdGxX7QIsRpxK0gDDjSmnA0
	 OtCq8bRJRR5UNzYF40maZZnn5yVHX/Td1RYLYULrK1ZlBaTjn5xW1rzjrt1Ajc/wKR
	 a5pMTbyIANm5ma+drqIX0gaUwJSSjNgd5+M1cXwTcKQz4r9EzX5t37kT8uKnkYVM2C
	 H0+1vvfk+oBOwSZaRw+1cgR4wSMCK9Zgwx7ultd3h1LNmZiEaQnWOkGCi97I/W9PUx
	 LhO9SAFbXxL5qy7NAEAlqQ3YPtxuolGpAbFHR+ZQ+2vbPZLtaQeVDQDtVd8x7/RFKv
	 +8Jdp/OKv39yw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1140340918;
	Thu, 27 Jun 2024 07:08:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 03A2A1BF3D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 07:08:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E296E60B24
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 07:08:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WrlpXl-tdMKU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2024 07:08:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D178A60B2B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D178A60B2B
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D178A60B2B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 07:08:00 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
In-Reply-To: <20230804084051.14194-1-sriram.yagnaraman@est.tech>
References: <20230804084051.14194-1-sriram.yagnaraman@est.tech>
Date: Thu, 27 Jun 2024 09:07:55 +0200
Message-ID: <878qyq9838.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1719472077;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=oH++3i2lIsk8bBpYY8twz2VB+Fk8vfbgsXIXDBlKzfg=;
 b=uq+sF3pBgaoRM1KAEuhWD4ANZOE5EmtumvJPqINFf8wRkCRiAaZWP0lEDg2oOn2KmIuUyt
 hCC8Q0sa9j1u3d28mLw9FJ29xy8B/HNVqIQH1gbTHcK+pX607EYkSEJrXwIQqjwSPhXg9G
 9rEyZIC2RxRNLVjKO7DSjkp7Os2osAN5bVIAnvR8fZkSvexNRW4kOLUvS4CwqTSmLcl91X
 LVKVSs982M/ruJShoNIr5lrg0DKW7kHGytfJ7CtZwlKMD4aNQKkHG/UirSupe2I7AX+2YW
 Cue3AsPNQO4MQP1PQK+xa73ex3hHOOVwJg+bCWPjZ6LOnPJERTdnKgXs/d5aiA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1719472077;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=oH++3i2lIsk8bBpYY8twz2VB+Fk8vfbgsXIXDBlKzfg=;
 b=t7D9ry0IQqOqjO2huAHD3lXcIjS9/CtH0DdLPUsPGLNJ5NzxezMm+qe/VHQPcCWJvezEzp
 6r2BVtcamQrwuOBQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=uq+sF3pB; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=t7D9ry0I
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/4] igb: Add support for
 AF_XDP zero-copy
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
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain

Hi Sriram,

On Fri Aug 04 2023, Sriram Yagnaraman wrote:
> The first couple of patches adds helper funcctions to prepare for AF_XDP
> zero-copy support which comes in the last couple of patches, one each
> for Rx and TX paths.
>
> As mentioned in v1 patchset [0], I don't have access to an actual IGB
> device to provide correct performance numbers. I have used Intel 82576EB
> emulator in QEMU [1] to test the changes to IGB driver.

I gave this patch series a try on a recent kernel and silicon
(i210). There was one issue in igb_xmit_zc(). But other than that it
worked very nicely.

It seems like it hasn't been merged yet. Do you have any plans for
continuing to work on this?

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmZ9D8sTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgtk1D/9OqvWbBa+S5bnIkUNbd++vKMPUyIcG
AQW5y4scHbgaLQN9WkM4iokP7wNf1ckH5AO9pzCNPOZqrEqxLtALuxoMT2wcRM1K
UL0cOlqRrUaVXAN9gge2bbZuMxJqOt2T+Q8iI1TF/iquhGtFmJU/rrQeLbryIPsS
ZfGn0pAtXwnnLmWXmdLXqieKpoGkXB1T/A6ccOYl3uZ2SatMMsfUMl0AHLH22Bau
DR/EoL8ddUgq/vMTNMIBdtk/4ZbWEueB0gL6lbgFt427nnHf/ZgDPM5VJgDDBECY
iVztnt7WOAUs2NTpFr383aWqBt8JWyRSXi9WN2Rqw7IdU3Y6MoK/3UZDyXMCh41R
uwzC1+UcVWclwjPgcH2hsKF+KZuXVvLHX6GtQQ4ePikoVyRGVB31+JmHaaYOv6Ap
gi/F4aikSQ4PD4QYo+JSzBWJajLUK1dwCIQTCq2n6PqA+qTJmmElPNVom/lJV97v
nqL0sEoenzKtO3urA5IbMYFOUHpxBOnbQ7OTIlo0apEj0aaTMNMFYF1vvvWVYK9S
gdP5u76lIVsQe6ahPLQ5fzh0+ie0vMFejPsRaY9L+yzzzSgxhHsDxsDc5t/QquI+
iVGxH+YL1+9IFNFue3GdxEwPmF6965F/bts+uQiyA+8nw4WU0fghk2clByfh9+Wm
V7t9jdQRHFiZ+w==
=8GNQ
-----END PGP SIGNATURE-----
--=-=-=--
