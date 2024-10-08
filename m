Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4479959D8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2024 00:10:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED29C405DC;
	Tue,  8 Oct 2024 22:10:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l33Ef3KO3EbF; Tue,  8 Oct 2024 22:10:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3EBED405D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728425423;
	bh=t4eUydDDujJflFP2GFftVlS/1sdHXgJdK+S+MGddmHU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HWIgj7z9Q9GlKS0KE8goNQw6+01+HawKsX0S7YSfqjiIKehJVts8qjFuiG8o+6cTR
	 bYZ68kizfBvLZ0yZf1L2O2GltAWjqsvRHb3ijziAYWfL9wr/xVbYsJC1LR/9hZtj0s
	 w9IW7/LfqcMU1BE9itJL6JYdDgFYQDi7y+3mMtFSOcRPkVj+S8j+r1lPNg8y0gaM9q
	 ku35OpQx3w/kI/aiQi1qZKrEqRNhMTv8DGfOMCDAZtHU2zP49ApG07yr/79zju6A4z
	 qLEfuPZHyDb0tdCPcNO/I1rHZpfzKlGebQo9vPKlf23NZSpy8shXvzXABkQ/JG4zgD
	 kOl1dMAkKD+Xw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3EBED405D5;
	Tue,  8 Oct 2024 22:10:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 33B3A1BF48B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 22:10:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2E91980CF2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 22:10:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R9WDy1JApQJn for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Oct 2024 22:10:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 68AD080CF0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68AD080CF0
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 68AD080CF0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2024 22:10:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 504A9A436C2;
 Tue,  8 Oct 2024 22:10:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BD42C4CEC7;
 Tue,  8 Oct 2024 22:10:17 +0000 (UTC)
Date: Tue, 8 Oct 2024 15:10:16 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Message-ID: <20241008151016.2e6a7d93@kernel.org>
In-Reply-To: <20241001235302.57609-4-jdamato@fastly.com>
References: <20241001235302.57609-1-jdamato@fastly.com>
 <20241001235302.57609-4-jdamato@fastly.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1728425418;
 bh=sK1P7HoZN41Pt/ym/ha4xE4SRoOw6oIzWTyHU8q1KDg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=kQI3fZjhPvWJN2UW7SHebKncT/c3sfK/ba2b+eClfc1qI7PwR5JKgqvncTslwt3kT
 kbF44Ph6i9jopCTsIxRAOLoqcO4Dd6yAg2kRal0PwhEhwCE67GPGpbb+kxvNKPcTGw
 gRugCs/UMsKPa8rv8yI9F0wsVv1ci3k/Gja2FtbEtURTTXRlxy5uIdL1YQXmSfdPJt
 f9s4+FKXkLxRCywDJGUKwak6ZdHXF7/reNqR1Q4EXcIcQXsN07Smf81YjferbY2CIC
 f5CfqipVULxsVBUd2fytzl/0seDB4ADnAWY4lKxRbh2jp6d+6pmEwDkAWJxa7qSiol
 OAZQ+CwG1qLRQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=kQI3fZjh
Subject: Re: [Intel-wired-lan] [RFC net-next v4 3/9] net: napi: Make
 gro_flush_timeout per-NAPI
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
Cc: "open
 list:DOCUMENTATION" <linux-doc@vger.kernel.org>, mkarsten@uwaterloo.ca,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, bjorn@rivosinc.com,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Breno Leitao <leitao@debian.org>, willemdebruijn.kernel@gmail.com,
 amritha.nambiar@intel.com, Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, sdf@fomichev.me,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Jiri Pirko <jiri@resnulli.us>, Johannes Berg <johannes.berg@intel.com>,
 skhawaja@google.com, Kory Maincent <kory.maincent@bootlin.com>,
 netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, sridhar.samudrala@intel.com,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue,  1 Oct 2024 23:52:34 +0000 Joe Damato wrote:
> diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
> index 55764efc5c93..33897edd16c8 100644
> --- a/include/linux/netdevice.h
> +++ b/include/linux/netdevice.h
> @@ -377,6 +377,7 @@ struct napi_struct {
>  	struct list_head	dev_list;
>  	struct hlist_node	napi_hash_node;
>  	int			irq;
> +	unsigned long		gro_flush_timeout;
>  	u32			defer_hard_irqs;
>  };

Same story
