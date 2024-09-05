Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B70B96CC70
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2024 03:58:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA9C2812E1;
	Thu,  5 Sep 2024 01:58:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mCHZL2oD9djH; Thu,  5 Sep 2024 01:58:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3ECC68113D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725501534;
	bh=3OjI/MAlMmPGmvWzFZuILvop1U2yTKvlTXJgLKlKFc0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=h8EelNqxidFTwSOIi0p16JAzKB6HjWaqhN17BUCKr1/AsLv7NS9iFJRZIieWSnShw
	 Zsa5RnRiWZ+ZDJX9gW+IdNdcoEN3gy8yzW2gRbvj5+2XxTGGw0KQdvQql42s1TdBr0
	 MkOY6v3jntBBn8pap1trMjR2ZIjdLQvqirEPkXtwQmlusXagi32Kt7s3BNy3PdCrk9
	 vuvC8lAwBdtz6nYbv0ytUAsuTEi1sjuuqkpM8StRgxc3MQivNLiUKozwkvuUFXE2ko
	 cyuURh8TcHdwYEd/xNTnFShX9W8kZd11euWDnAEAOL4tkWexQa0MXmuO3F9r+R2PYV
	 Gvun22HQP2Ffw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3ECC68113D;
	Thu,  5 Sep 2024 01:58:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6B04A1BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 01:58:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 63F2381287
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 01:58:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 36YRQ1R8UEDf for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Sep 2024 01:58:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A76398113D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A76398113D
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A76398113D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 01:58:51 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 0A5EDA43E8F;
 Thu,  5 Sep 2024 01:58:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57238C4CEC2;
 Thu,  5 Sep 2024 01:58:49 +0000 (UTC)
Date: Wed, 4 Sep 2024 18:58:48 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20240904185848.19a7f588@kernel.org>
In-Reply-To: <f95f1e851e8e40bbd9cd382e42f72e12998a122c.1725457317.git.pabeni@redhat.com>
References: <cover.1725457317.git.pabeni@redhat.com>
 <f95f1e851e8e40bbd9cd382e42f72e12998a122c.1725457317.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1725501529;
 bh=Dp0uIt19uV8jfyz1blroxyh65yMot6gtYdnqFbeY5Wo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=VSSIk2UNCV0ui1IywpeOjyXPH0o6sqeolm49JPArO+VfXLeexPCQSWqoo09RYEF7V
 rilv4BfCu3N7hL1bEI0Rkhq9Ruo/1RXmGMRDu5RnM4V7JM1tvoaBciXHqedGJL/wah
 uWZ0zKw51cCv0BsnD3+16sfRNIoPDvhIu5xm7yKAUIHbclj7+47pFY/EMcvCppY+Xu
 9O4Tf98ShoyQRGaZEQGPURH6B7sA4+Sszx4zZUEc6Mp3UBJmSWecHiIkh4GgfgP+EJ
 kvowgyUCeYdkJvVRGcqZ79BVRzAimdjPndcEhYHjDi1u7chQcrgGBVFzen3o32LvMu
 djDONxxm4dDNw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=VSSIk2UN
Subject: Re: [Intel-wired-lan] [PATCH v6 net-next 14/15] iavf: Add
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

On Wed,  4 Sep 2024 15:53:46 +0200 Paolo Abeni wrote:
> +static int iavf_verify_handle(struct net_shaper_binding *binding,
> +			      const struct net_shaper_handle *handle,
> +			      struct netlink_ext_ack *extack)
> +{
> +	struct iavf_adapter *adapter = netdev_priv(binding->netdev);
> +	int qid = handle->id;
> +
> +	if (qid >= adapter->num_active_queues) {
> +		NL_SET_ERR_MSG_FMT(extack, "Invalid shaper handle, queued id %d max %d",
> +				   qid, adapter->num_active_queues);
> +		return -EINVAL;
> +	}
> +	return 0;
> +}

This can go once we have the real_num validation in the core?
Otherwise LGTM!
