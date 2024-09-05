Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FB596CC4F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2024 03:33:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED48281355;
	Thu,  5 Sep 2024 01:33:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h1MMTYNAy5jn; Thu,  5 Sep 2024 01:33:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 17AA78135D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725500015;
	bh=mU4rgjlzsQNrnz8CK1bVAiuQxz4xK7pB6T9MrK+CnTs=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Lj6RLHMIlD9N2wEWv0Q1ex81UbnlLYXDCZZTCCTuXxzfVkf3Ues7zzj94PjgwuUKs
	 5h2mfudnGq63mcHkINaQvBXyy+zF8QYaiBZ1tUDsavDI/w2xbPjXWytVlZjwgyf1CL
	 eML0FDIIleqo12EcB7ca3R2zpIw5mO5bdD1VlkocEt3+Wd2MctGHUUyk/op/j7oOYn
	 /57hWwq1JNYyx41nWpYPfJAVSBFam+JPrJIBoftsit0sS8+oc3grvi4fFCdmlvRRpp
	 NcQDHpPwO8FYZ8N9PJCX7JRmf2AzVEFO5p7LNmb6A/69LjRwFOduOPB2+cnEXtT0JH
	 ORlIoPKFb32tQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 17AA78135D;
	Thu,  5 Sep 2024 01:33:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 58CF01BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 01:33:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4551A81355
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 01:33:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f-io8ts4TlrD for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Sep 2024 01:33:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9508A81354
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9508A81354
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9508A81354
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 01:33:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 5C1B9A40B1B;
 Thu,  5 Sep 2024 01:33:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7AABC4CEC2;
 Thu,  5 Sep 2024 01:33:30 +0000 (UTC)
Date: Wed, 4 Sep 2024 18:33:29 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20240904183329.5c186909@kernel.org>
In-Reply-To: <160421ccd6deedfd4d531f0239e80077f19db1d0.1725457317.git.pabeni@redhat.com>
References: <cover.1725457317.git.pabeni@redhat.com>
 <160421ccd6deedfd4d531f0239e80077f19db1d0.1725457317.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1725500011;
 bh=WbmBXR+HYi6wksBXSfS3wWmcqeJUJp59nu5hq8OJKZs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=X9Opx7TAsdGGerBIJmyUSOqY4XTpv638qBUPwrwYfAcRouLh8IQnhE9Pwe9FefjAB
 MHoU5PPlxEyEL6YHD38aCQsB++mXElWf4R9F+ppIRYcv71HcvF5s/+KQTBmZMrThz4
 xJXjM3CQeOmlHQupstfuEaVNwNjvBDzkWELAWQ7Uv/4qgqHplQ9bzNGsE+ZCxj9UA3
 jYIoMGGIf0FGqGjGQB4i/eL31gTuqB2GkH2E5NgddjbthhQAieLWh3hBN3ftNRdGSS
 jsEVGg8ftGHCfYAlQ7NH2lo13YUQ1+j7nM7MLMCdASDMZTR89DzQGKNoPK98+1D1l4
 O0pE56YBKpmOw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=X9Opx7TA
Subject: Re: [Intel-wired-lan] [PATCH v6 net-next 07/15] net-shapers:
 implement shaper cleanup on queue deletion
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

On Wed,  4 Sep 2024 15:53:39 +0200 Paolo Abeni wrote:
> +		net_shaper_set_real_num_tx_queues(dev, txq);
> +
>  		dev_qdisc_change_real_num_tx(dev, txq);
>  
>  		dev->real_num_tx_queues = txq;

The dev->lock has to be taken here, around those three lines,
and then set / group must check QUEUE ids against 
dev->real_num_tx_queues, no? Otherwise the work 
net_shaper_set_real_num_tx_queues() does is prone to races?
