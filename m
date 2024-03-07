Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4AB875036
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Mar 2024 14:38:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A78A0419D1;
	Thu,  7 Mar 2024 13:38:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ll7T1DNwO05D; Thu,  7 Mar 2024 13:38:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 97172419F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709818720;
	bh=SB4kuCbnB1I2QFSjwFkPG9Zmio3lay0lzfUcc31gg7Q=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nO6VmyS8T8szh/fR2mlHEFB8WQ35tpp+ikmgrinbtwnm2LO8+7HXFm3JAZCwDi3Tk
	 NO5b/yHYwC4Jb219ABpEDVtVrvI/uwgjKQ+1RXHET2mMNQyqifOiFD+gSrEBeCQQgb
	 eXYJ/kEsk7Fn+c/wTl7tVau/lI71bZ86xq17TKoNVSLiJYyxxuDSYtoW1bXyIDlgQm
	 ySyKtcDAlfRYuq030xGS39GW22wpWXFG2QUYOcp9834OjIsAeZixfWB1TetCA5VaZA
	 YsqDyzeerR9V/aRB+Z/C643Op4Xvjd9W8TqG1NnahTAWatPbhLQmKCFUTb1fFZoGMT
	 eYtry7gaYFqJw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 97172419F1;
	Thu,  7 Mar 2024 13:38:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 17FAA1BF5A4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 13:38:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 020D760FF6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 13:38:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bwMl2y2J9CIq for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Mar 2024 13:38:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D9896608F0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D9896608F0
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D9896608F0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Mar 2024 13:38:36 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Song Yoong Siang
 <yoong.siang.song@intel.com>
In-Reply-To: <Zein8XvWkqj8VrHs@boxer>
References: <20240303083225.1184165-1-yoong.siang.song@intel.com>
 <20240303083225.1184165-3-yoong.siang.song@intel.com>
 <Zein8XvWkqj8VrHs@boxer>
Date: Thu, 07 Mar 2024 14:38:32 +0100
Message-ID: <87a5nago13.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1709818714;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=SB4kuCbnB1I2QFSjwFkPG9Zmio3lay0lzfUcc31gg7Q=;
 b=u9H8kAPvhSJvJGtXtKSYHK4bcix7rnKNSjfap1gntl+bLs40s5fFCi6l4pmv5C4bQJXO83
 TjSwSWlmO7kJ8xenqcUBW72vGyjmDzliF3kyWmtTWlac2mgILjH/1QcN4QOeMJTgnTu/tp
 pNQPI2W1jXfPRS6WODxh8LcUw3N+0vl93CWfnJHNmK0s+bmPRfDRmogYXYDL29/d/NNxLc
 dwFCOOll1/37QUIc9+IEAMCVQEnPPiEBUiTrRoI+YegqKoYrJKnWshzkRYZ6PofQ73VoyT
 VoQwfEJE5fBn7ABUlNvih+ye2H/P6KweH8zmftvgStzsucgHeOsM5GZbpn6UKg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1709818714;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=SB4kuCbnB1I2QFSjwFkPG9Zmio3lay0lzfUcc31gg7Q=;
 b=5o+fsxtpkLCbJ0Ppn+2MGX95fwrdlBx5VYy77iOoFE5udU4LXZmCdpcc70zBfbDyEAyuP9
 rhnGCkZZMP/lQ+Cg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=u9H8kAPv; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=5o+fsxtp
Subject: Re: [Intel-wired-lan] [xdp-hints] Re:  [PATCH iwl-next,
 v3 2/2] igc: Add Tx hardware timestamp request for AF_XDP zero-copy
 packet
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
Cc: linux-kselftest@vger.kernel.org,
 Florian Bezdeka <florian.bezdeka@siemens.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Stanislav Fomichev <sdf@google.com>,
 Yonghong Song <yonghong.song@linux.dev>, Shuah Khan <shuah@kernel.org>,
 Mykola Lysenko <mykolal@fb.com>, xdp-hints@xdp-project.net,
 Daniel Borkmann <daniel@iogearbox.net>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Richard Cochran <richardcochran@gmail.com>, KP Singh <kpsingh@kernel.org>,
 Hao Luo <haoluo@google.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eduard Zingerman <eddyz87@gmail.com>,
 Jiri Olsa <jolsa@kernel.org>, bpf@vger.kernel.org,
 Martin KaFai Lau <martin.lau@linux.dev>,
 "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain

Hi Maciej,

On Wed Mar 06 2024, Maciej Fijalkowski wrote:
> On Sun, Mar 03, 2024 at 04:32:25PM +0800, Song Yoong Siang wrote:
>> -	tstamp->skb = NULL;
>> +	/* Copy the tx hardware timestamp into xdp metadata or skb */
>> +	if (tstamp->buffer_type == IGC_TX_BUFFER_TYPE_XSK)
>
> I believe this should also be protected with xp_tx_metadata_enabled()
> check. We recently had following bugfix, PTAL:
>
> https://lore.kernel.org/bpf/20240222-stmmac_xdp-v2-1-4beee3a037e4@linutronix.de/
>
> I'll take a deeper look at patch tomorrow, might be the case that you've
> addressed that or you were aware of this issue but anyways wanted to bring
> it up. Just check that you don't break standard XDP/AF_XDP traffic :)

This one doesn't crash standard AF_XDP traffic. Don't know why, but it
seems to work.

Thanks,
Kurt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmXpw1gTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgl4bD/9QHm43zCKRDfGU+Xr7XPWXNlbFxEIr
2rXt5ujhN1t6VfmaiOY3QyCuU7C+9lI/LR8J8IIzSw3quIIALtrgzjukPYgw8ICh
JoS0P18HMJbpIAWKCLOTZ5jry4Vhg7nB1ONwWCyZeJnxcUdmKgXhc7hyEBDcr7Is
VMqjvME3qsOb1WgoYVxUZO1/jjGQURn98O5nee29HuXzMSnUWB0l0OkldTgT7gt5
jT7yAyh66lei+9D+n6kEs23R2Gx6BmKw6SXLqj7Iq3t6Fe5B836Yc2oiustThPJ4
Mannvof2SnRdzsGEouBwumk95f24ssI3JXc8zKXAaGo+h9NdgJKtc+muz5ctgnLz
Z8mEAJHmaGcFi9XBC2LZsmNozox9rZMR/KRO6xTtZv+sKodNecZoYfriF0pZ+bu0
ky36jP84qoO58SBWtrBkSJYpPtmRZ78gR6Chn6idT9BxO/RcCNSxntGaS7xDwlb9
5DvxYJ5Saq4EEZFYl+YTDxwqohSwBFDjYhcw2qhWxMY85H8H9xjgVp//bxCSVexh
kPt9RBERHc5GGMBc3h9l2iodmfaEPJdKJ03gqOwoRYd1by7RtO6WcSDUpxhSIthq
Wi5XZqKBB+IoM0N8zTZD/B1veZH/FWco6rEqhVr1DPfMsgP7l/8zbabERu28L3VP
V0gtgB9MKcXqGw==
=5vqC
-----END PGP SIGNATURE-----
--=-=-=--
