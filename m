Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6544090770A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 17:40:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E151941423;
	Thu, 13 Jun 2024 15:40:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gE3XbyNwY5Mr; Thu, 13 Jun 2024 15:40:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CBE2F41412
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718293253;
	bh=3EZYUMPFCVToZ2DiRjkM7PDXMmHlNZMJ4zaQ5v7io4E=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SdZNRY9eeRZ2y45USnU8N7r5Yd1rMEyq8pRybc443I0vqAXDTQbok/qssJrNhGWZD
	 nOCBsUQT/wNBy+UA3/AMTJAlNyjvNl744b9TV3q+g7TInMiP+aIxmizdvR4PKhRgxO
	 vZdNhowBgjk0Bz81GiCRkPiZ3kNholmchW6GI4Ygq4fz87bwxi+hPmp0W8OLXT7E6B
	 jsI/h9RBbvI6zQcb51VaJUWEmbE4MTMN3s7ql4mfzHYU92Im5GGSi1bPT4Yx98CovY
	 4thJVmFS5pYi/w5TpSpEsqJMQ0Rk2ZTWGjMuKR/3YjxHSDViP5zUmLS+cWIP0Gm3+6
	 A6ZFRov6S4PKw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CBE2F41412;
	Thu, 13 Jun 2024 15:40:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 747B81BF34A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 15:40:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 60549401FE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 15:40:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bFAcqypzVp-w for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jun 2024 15:40:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4119D401CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4119D401CE
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4119D401CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 15:40:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 3DA62CE26C5;
 Thu, 13 Jun 2024 15:40:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63916C32786;
 Thu, 13 Jun 2024 15:40:43 +0000 (UTC)
Date: Thu, 13 Jun 2024 08:40:42 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Message-ID: <20240613084042.7db4c410@kernel.org>
In-Reply-To: <ZmsR8F9GFgxgBXfV@lzaremba-mobl.ger.corp.intel.com>
References: <20240610153716.31493-1-larysa.zaremba@intel.com>
 <20240611193837.4ffb2401@kernel.org>
 <ZmlGppe04yuGHvPx@lzaremba-mobl.ger.corp.intel.com>
 <20240612140935.54981c49@kernel.org>
 <ZmqztPo6UDIC6gKx@lzaremba-mobl.ger.corp.intel.com>
 <20240613071343.019e7dca@kernel.org>
 <ZmsR8F9GFgxgBXfV@lzaremba-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718293244;
 bh=JcXvOUaKdlxs2Ht40iN7VRSX7BT4jA2+5PBP7oY41xc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=WE9Z1NUnN2yyAnjrE9nBV1RUF+SFyoifvSbOJ4sNgec7xO0QNAaq1qrB4mXpLPnaV
 vg3xdmR4KToKvfpGJrei1/MhoJRAv4FBSVh2MuqwZNT7D4GkaLZjR6hg9voDEMssbc
 /rka534WIOa/2wRcqXOwGowkNpjoMO+tsbYg6Gy3yIHifMR4KT9iLfuhkk2nLBjRRD
 l3TC7i5O+LyB5QuDBWq43PFyb96p6xXCL+V8wLKJODYBcLCiNOZEYOK6Y3e60PQKFX
 bQGD8wVrP183595n1vr/JN2azD2QmxcOXWSIz1eo8H/dwCKb5gpChjK7BB/rMmKtmR
 SUr0dTvhEoEMg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=WE9Z1NUn
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 0/3] ice: fix synchronization
 between .ndo_bpf() and reset
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
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, magnus.karlsson@intel.com,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 13 Jun 2024 17:36:16 +0200 Larysa Zaremba wrote:
> > > AFAIK, netif_device_detach() does not affect .ndo_bpf() calls. We were trying 
> > > such approach with idpf and it does work for ethtool, but not for XDP.  
> > 
> > I reckon that's an unintentional omission. In theory XDP is "pure
> > software" but if the device is running driver will likely have to
> > touch HW to reconfigure. So, if you're willing, do send a ndo_bpf 
> > patch to add a detached check.  
> 
> This does not seem that simple. In cases of program/pool detachment, 
> .ndo_bpf() does not accept 'no' as an answer, so there is no easy existing way 
> of handling !netif_device_present() either. And we have to notify the driver 
> that pool/program is no longer needed no matter what. So what is left is somehow 
> postpone pool/prog removal to after the netdev gets attached again.

I see, thanks for investigating!
