Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B46CB0AD08
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Jul 2025 02:48:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B683D8463E;
	Sat, 19 Jul 2025 00:47:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S-gU8TOvgIRt; Sat, 19 Jul 2025 00:47:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 241BB8463A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752886063;
	bh=4yatukhwSwtUvcmgaGLBH8DEQ3xgjC3LfJj0epSaLCA=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qJ8rN2m1Ld2q24DOaKI3OK091W6CkLeZXo4vGDaoJ03jAHI+5HpNXqKXIOdCJ61sc
	 vvdLZ9/Uk0a92Kz32hHpnbPTvl+bTonuUhj6qeJ64cyf/JGuA8EK9+t2hRVuX8LIKL
	 7x3ewAFXay8ovkgo3WxR+A8KSVW8/zUmkjbD2nN7UQovLQcuXbRM9X3jJ9CBQi6SGa
	 NAtz5Y9CU1biCagXveYVyKAgGVunTMkSOeRxt5tY5oKdNRRgJqWlil7dlRA2fKkAyB
	 b5mfsnI9KrH+Fks/w29eKZMrJAAO/haK+UvzM+1tTI4RvLNZt7+dJG7tQNZVr08MWg
	 BjIgmmv7mrzSA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 241BB8463A;
	Sat, 19 Jul 2025 00:47:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2AF462734
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Jul 2025 00:47:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1C36384637
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Jul 2025 00:47:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7S-fVd-bhqGZ for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Jul 2025 00:47:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5B64A84633
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5B64A84633
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5B64A84633
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Jul 2025 00:47:41 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 219595C4A53;
 Sat, 19 Jul 2025 00:47:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2896C4CEEB;
 Sat, 19 Jul 2025 00:47:38 +0000 (UTC)
Date: Fri, 18 Jul 2025 17:47:37 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Tariq Toukan <tariqt@nvidia.com>
Cc: Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Jiri Pirko <jiri@resnulli.us>, Jiri Pirko
 <jiri@nvidia.com>, Saeed Mahameed <saeed@kernel.org>, Gal Pressman
 <gal@nvidia.com>, "Leon Romanovsky" <leon@kernel.org>, Shahar Shitrit
 <shshitrit@nvidia.com>, "Donald Hunter" <donald.hunter@gmail.com>, Jonathan
 Corbet <corbet@lwn.net>, "Brett Creeley" <brett.creeley@amd.com>, Michael
 Chan <michael.chan@broadcom.com>, Pavan Chebbi <pavan.chebbi@broadcom.com>,
 Cai Huoqing <cai.huoqing@linux.dev>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, "Przemek Kitszel"
 <przemyslaw.kitszel@intel.com>, Sunil Goutham <sgoutham@marvell.com>, Linu
 Cherian <lcherian@marvell.com>, Geetha sowjanya <gakula@marvell.com>, Jerin
 Jacob <jerinj@marvell.com>, hariprasad <hkelam@marvell.com>, "Subbaraya
 Sundeep" <sbhatta@marvell.com>, Saeed Mahameed <saeedm@nvidia.com>, Mark
 Bloch <mbloch@nvidia.com>, Ido Schimmel <idosch@nvidia.com>, Petr Machata
 <petrm@nvidia.com>, Manish Chopra <manishc@marvell.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-doc@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <linux-rdma@vger.kernel.org>
Message-ID: <20250718174737.1d1177cd@kernel.org>
In-Reply-To: <1752768442-264413-1-git-send-email-tariqt@nvidia.com>
References: <1752768442-264413-1-git-send-email-tariqt@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1752886059;
 bh=XWuJCJJk0aV1qvt1Ws58hkJTkIsuqdkQoYz9oZwo0A8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=rFghbRVZUQtS04xAEUavFtutQFmD8yLdkuOrSdpLL7c0Na4XiUXsAtxW6wDwztw3w
 XhxiZbMRo6PVPayxGEye1e9kHjqqmPfuSBkibINJfSce7CBGXv/MT2QAV5v+9GnLhM
 muW7QjvrVXFzBX7jB+1tCZKE3bF2HIlgZBGVT1Ob16bluI3YuNWd8JLqfBpiUDAzFc
 x58WpHF08HMRyq/mc4j5jIMTFtC9DVVGIbAafBzvCyAMOadb+ggVDkBBYt41qDGvHI
 4vyhzzN0OPjTENEdko/RT71JSsyxVMDx125WBvK++u53IkIExjDt4y0qQBC74xrugD
 IATv9Up02IfUg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=rFghbRVZ
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/5] Expose grace period
 delay for devlink health reporter
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

On Thu, 17 Jul 2025 19:07:17 +0300 Tariq Toukan wrote:
> Currently, the devlink health reporter initiates the grace period
> immediately after recovering an error, which blocks further recovery
> attempts until the grace period concludes. Since additional errors
> are not generally expected during this short interval, any new error
> reported during the grace period is not only rejected but also causes
> the reporter to enter an error state that requires manual intervention.
> 
> This approach poses a problem in scenarios where a single root cause
> triggers multiple related errors in quick succession - for example,
> a PCI issue affecting multiple hardware queues. Because these errors
> are closely related and occur rapidly, it is more effective to handle
> them together rather than handling only the first one reported and
> blocking any subsequent recovery attempts. Furthermore, setting the
> reporter to an error state in this context can be misleading, as these
> multiple errors are manifestations of a single underlying issue, making
> it unlike the general case where additional errors are not expected
> during the grace period.
> 
> To resolve this, introduce a configurable grace period delay attribute
> to the devlink health reporter. This delay starts when the first error
> is recovered and lasts for a user-defined duration. Once this grace
> period delay expires, the actual grace period begins. After the grace
> period ends, a new reported error will start the same flow again.
> 
> Timeline summary:
> 
> ----|--------|------------------------------/----------------------/--
> error is  error is    grace period delay          grace period
> reported  recovered  (recoveries allowed)     (recoveries blocked)
> 
> With grace period delay, create a time window during which recovery
> attempts are permitted, allowing all reported errors to be handled
> sequentially before the grace period starts. Once the grace period
> begins, it prevents any further error recoveries until it ends.

We are rate limiting recoveries, the "networking solution" to the
problem you're describing would be to introduce a burst size.
Some kind of poor man's token bucket filter.

Could you say more about what designs were considered and why this
one was chosen?
