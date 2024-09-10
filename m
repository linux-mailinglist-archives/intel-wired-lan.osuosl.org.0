Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EE91D974555
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Sep 2024 00:03:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A551E8118A;
	Tue, 10 Sep 2024 22:03:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xU2cipdHOntN; Tue, 10 Sep 2024 22:03:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0616681127
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726005823;
	bh=PzQFPylOTxHxVwUQHfpOzdHLlNxmEkVABXtTOakffuw=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M/GZ4+wpSkfWXIo7Y77Z3XN7nxTObfPoLnfp3QgJAOUn7aMkmIcBWzVkGqrzQfV2o
	 8YF1TDu0aahqwWm80eG8eG5N9Txpo1RsuY3GQc1hL0Lt4ekWAvmjkWDeaCL1cBup5t
	 z+xacZWea5DrIOgn7hQqxqRln+qOYIGDTpefCtRvFygNmqri8YJ1HtCnWWyZ/dMNFX
	 va9BUkBdekDc7HCYa2ma+wOBltGDhJ+byOg/K1KXqzlPaNF3xHqwz8GdofSCzx5Y0X
	 lIPXTFwa/F5E0bPIbSOEG3WAtmmPaAB36bgPFvB93GwXFfBMbq6i/91jOOTRq9XQuV
	 x3jLHQPLb+ZdQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0616681127;
	Tue, 10 Sep 2024 22:03:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 990621BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 22:03:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8531C4078F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 22:03:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LB_OiHbuNN5s for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Sep 2024 22:03:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B022B40733
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B022B40733
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B022B40733
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 22:03:40 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id F31645C0325;
 Tue, 10 Sep 2024 22:03:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CF2FC4CEC3;
 Tue, 10 Sep 2024 22:03:38 +0000 (UTC)
Date: Tue, 10 Sep 2024 15:03:37 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20240910150337.6c397227@kernel.org>
In-Reply-To: <6c6b03fca7cc58658d47e0f3da68bbbcda4ae1ec.1725919039.git.pabeni@redhat.com>
References: <cover.1725919039.git.pabeni@redhat.com>
 <6c6b03fca7cc58658d47e0f3da68bbbcda4ae1ec.1725919039.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1726005819;
 bh=sfENmLrwlWzvAOD+5XYnB6P0qhJUFGqNql3IOwc8uH8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Nu9yfT52CBf8EpHW3/x8hc+x4TEsNJt3RBAgA5+R5xuXiIwBgBpqFqu730gMGZAsb
 LEla0lCFWkE3xZX8SuJPAtyyoWQiVAsLwkv4eja95BwOJjqStcx7bqQA9bjSjnLEds
 JXCjVEtQzktNQaoDB/U/fiLi4914CKHAuXj87HqX3D6yNA0P11Sdcd25jySUqWZMj5
 eosJ4sEvcdXdRKsJrgXXfBZATKMOcCR7w0BLB+sYY0PNssy3kloTX1TuF+v/enOUtC
 eYb6mD8Od2ovSgElA9WK5r/4ATJ46eaG6Uo+10pHzdGhTIjAvgHpa6b+lYGdzj7ikH
 ifHnX6Lk7gp+w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Nu9yfT52
Subject: Re: [Intel-wired-lan] [PATCH v7 net-next 14/15] iavf: Add
 net_shaper_ops support
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 10 Sep 2024 00:10:08 +0200 Paolo Abeni wrote:
> +	if (adapter->netdev->reg_state == NETREG_REGISTERED) {
> +		mutex_lock(&adapter->netdev->lock);
> +		devlock = true;
> +	}

This leads to a false positive in cocci.

Any concerns about moving the mutex_init() / _destroy() into
alloc_netdev_mqs() / free_netdev()?  I guess one could argue
that narrower scope of the lock being valid may help catching 
errors, but I think we'll instead end up with more checks like
the above sprinkled around than bugs caught?
