Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2017B7439
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Oct 2023 00:43:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6E9A14148E;
	Tue,  3 Oct 2023 22:43:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E9A14148E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696373018;
	bh=Np5D8sa8/bbLR/St97gA0x3X0mCCUYusD7RAsm8jkag=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eSbcRy5zudYx+fOjztd9lUmiQAdcfOcuJgXrrBxrQX4oTtyo40BEqIQAGah+Omnov
	 HHEXndkzVSLNhYg0kRLOvfedHa2H/Vkk5jCy8NGBwVHP5hsHVqD1nyRX/nd9XxYB56
	 r7qXvfoD1t3i3TZg4LQ/u8AEf7FrHIaC331O/xppGNnEIbnij/rirPd2Uj3MI/5bS/
	 SqpZEvhMZ46WDRvEYZk3dI+/jmDpCz0fUvfsORPFvBndPV6Dlos5Xs/WZfGIN+06dF
	 RgF/lWGr4Z1IKZMx4Akc+Jenn6bw1Sv5Fxnfw62M5qquWtYrXfM6SqOE6pD1rBEDtX
	 sKZSrrEkjgkUg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ia0NqG0SDt_i; Tue,  3 Oct 2023 22:43:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5A48A40169;
	Tue,  3 Oct 2023 22:43:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A48A40169
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 332AC1BF282
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 22:43:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F3F3441F8E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 22:43:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F3F3441F8E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E01E_xmcRK7l for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Oct 2023 22:43:30 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9770B41F47
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 22:43:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9770B41F47
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 5F385B81C8A;
 Tue,  3 Oct 2023 22:43:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 261DFC433C7;
 Tue,  3 Oct 2023 22:43:27 +0000 (UTC)
Date: Tue, 3 Oct 2023 15:43:26 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20231003154326.213e9c81@kernel.org>
In-Reply-To: <1430f3d3-4e84-b0ec-acd9-8a51db178f73@intel.com>
References: <20230925155858.651425-1-arnd@kernel.org>
 <1430f3d3-4e84-b0ec-acd9-8a51db178f73@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1696373007;
 bh=P9+3h53DxqmjxSGM6n93lGmt0Puqp/z5dcxCLS1WDnI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=BV9UcaP+hpFCnN6I9ENoevhcCLjhYTmYkkTHvkZ7qT3q1yIOZ98ANL+SXHfo7mzRb
 7zgNftxObRPKY49gRz7tKnuh4BIQm/4VubbU7y7z+0n1Fv41KiY7MdBRGrs5ad8Bl+
 TQhg6JuSB9C37B/Zf4wnluiEOAm7u3R0H1Z0L9lE/rpnHkxB0jAcVl62S2NArkiZCr
 5ygtHz4EYQty6Jqd9nQrYGM0bVAWzQOKo0IrvwnqcoCXsdCQFWxwChtCEnKQA31z7E
 vX0gevM+gdjc2x33GbNGLauYLuvVAnWa9zoi5zkt63mT+2C3XBwkhDnkC3yGjAxxex
 t1BN62AP7U3IA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=BV9UcaP+
Subject: Re: [Intel-wired-lan] [PATCH] idpf: fix building without IPv4
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
Cc: Arnd Bergmann <arnd@kernel.org>, Willem de Bruijn <willemb@google.com>,
 Arnd Bergmann <arnd@arndb.de>, Sridhar
 Samudrala <sridhar.samudrala@intel.com>, Joshua Hay <joshua.a.hay@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>, "Lobakin,
 Alexandr" <alexandr.lobakin@intel.com>, Alan Brady <alan.brady@intel.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Phani Burra <phani.r.burra@intel.com>, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 25 Sep 2023 10:05:03 -0700 Tony Nguyen wrote:
> Also, a pending patch for this [1], however, this does look a bit more 
> efficient. Adding Olek as he's author on the other patch.
> 
> netdev maintainers,
> 
> If this is the version that does get picked up, did you want to take it 
> directly to close out the compile issues?

Sorry for the delays. Should we not add a !INET static inline wrapper
for tcp_gro_complete()? Seems a bit backwards to me to make drivers
suffer and think about such a preposterous config :S

$ git grep tcp_gro_complete -- drivers/
drivers/net/ethernet/broadcom/bnx2x/bnx2x_cmn.c:        tcp_gro_complete(skb);
drivers/net/ethernet/broadcom/bnxt/bnxt.c:              tcp_gro_complete(skb);
drivers/net/ethernet/intel/idpf/idpf_txrx.c:    tcp_gro_complete(skb);
drivers/net/ethernet/qlogic/qede/qede_fp.c:     tcp_gro_complete(skb);

We have 4 drivers which need ifdefs already and the number will only
grow with GRO-HW spreading.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
