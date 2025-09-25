Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B7CB9EBAB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Sep 2025 12:39:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0B4414118B;
	Thu, 25 Sep 2025 10:39:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C1pDue7n_YJu; Thu, 25 Sep 2025 10:39:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8453441180
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758796767;
	bh=g18JgraaDXQ/oZPpU5mVP33VVHpCJok0REx5NF6LgqA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LsAfVjpovgGKW/dFA536X6/+CuShaaodSIYDTnFPi8xukwsqYGZhUT6re3yFT9R+l
	 Mwd0SjxB95Se3Ik8olNinT2DtlYwLff97M0on5xON6eDepGt7Aoqd+yGoiV6zIXe/7
	 4V/gvW+MDiqT1T5eWj8R5APzaJqXf/lHFCIZEiG7G1Wp3c8iPI18JIgKG+ypVVCN29
	 3HZIVKmKFN3KvcPlji/mDc0RoNcmCAKfuqF4G0Jzx2SuPNRoUokqU2N+xpEXTglsie
	 xu+Hqp+P88apvbV0vxF7Mf10UdxGPIfObc/r4g9daUhU4TDNuTzRHg8s0OerwAUsxn
	 VK6XeIdx/R1jg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8453441180;
	Thu, 25 Sep 2025 10:39:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CA089177
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 10:39:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C7D5740C15
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 10:39:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aoBqD-74akYN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Sep 2025 10:39:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=lorenzo@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3516840BAE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3516840BAE
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3516840BAE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 10:39:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 68B2940911;
 Thu, 25 Sep 2025 10:39:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEA35C4CEF0;
 Thu, 25 Sep 2025 10:39:23 +0000 (UTC)
Date: Thu, 25 Sep 2025 12:39:22 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Jakub Sitnicki <jakub@cloudflare.com>
Cc: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <martin.lau@linux.dev>,
 Eduard Zingerman <eddyz87@gmail.com>, Song Liu <song@kernel.org>,
 Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org
Message-ID: <aNUb2rB8QAJj-aUX@lore-desk>
References: <20250925-bpf-xdp-meta-rxcksum-v2-0-6b3fe987ce91@kernel.org>
 <87bjmy508n.fsf@cloudflare.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="xqGe+akQ3uuJExgr"
Content-Disposition: inline
In-Reply-To: <87bjmy508n.fsf@cloudflare.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758796764;
 bh=g18JgraaDXQ/oZPpU5mVP33VVHpCJok0REx5NF6LgqA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JKXhTHjETOvq14sfdXOnYO/XPyREda+Xof8NIxesa1wK++Y+AF/pBjUJRPjQ7Klrg
 ibEwOX0BTX90jLJiZ90hpp12fuLC4rHrIDEYe7I37QYHBVT774PvvkNZa5lSnXoWNO
 WsXWfc93zU+BHT2JLvIunUNcBvf/76R+7s9DIliluN2GZf/VSIhq3muZcbCA1Ukvkv
 m82vLO5h14ZDC9w3/mCcQavvYsUS9EzW5d7Kuq/Ez4Pj6YM23MQH5Fh8UyP24/q1cp
 KsJsjSeLEqVdeZ7MmmaA/G1sRlEgFIdSD4iJLvapVawjdCc593d6Rr/svIdggbTs/J
 T9+DmrMol1iKw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=JKXhTHjE
Subject: Re: [Intel-wired-lan] [PATCH RFC bpf-next v2 0/5] Add the the
 capability to load HW RX checsum in eBPF programs
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


--xqGe+akQ3uuJExgr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On Thu, Sep 25, 2025 at 11:30 AM +02, Lorenzo Bianconi wrote:
> > Introduce bpf_xdp_metadata_rx_checksum() kfunc in order to load the HW
> > RX cheksum results in the eBPF program binded to the NIC.
> > Implement xmo_rx_checksum callback for veth and ice drivers.
>=20
> What are going to do with HW RX checksum once XDP prog can access it?

Hi Jakub,

I guess there are multiple use-cases for bpf_xdp_metadata_rx_checksum()
kfunc. The first the I have in mind is when packets are received by an af_x=
dp
application. In this case I think we currently do not have any way to check=
 if
the packet checksum is correct, right?
I think Jesper has other use-cases in mind, I will let him comment here.

Regards,
Lorenzo

--xqGe+akQ3uuJExgr
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCaNUb2gAKCRA6cBh0uS2t
rCnmAQClyqHTRR/OnmcLAfApMAw6CE3qQxlQol1aJ4trzcdQsAD8DnOXx8cahwg9
sjufYTjctpEZ5iSYR7AA4n6xB5OW9AQ=
=frL2
-----END PGP SIGNATURE-----

--xqGe+akQ3uuJExgr--
