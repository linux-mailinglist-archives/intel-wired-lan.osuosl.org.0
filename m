Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0836896DD21
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2024 17:05:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A94088175A;
	Thu,  5 Sep 2024 15:05:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xf-GfvoGbGtd; Thu,  5 Sep 2024 15:05:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA42E8125B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725548710;
	bh=gEkC1zeGEeDpIlIt3lyYdl8Z6wRVbCzkwM1X2a5/Zpo=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sG7Lxed/P1x7XdxT0P5fVnA1b94/n7s3+4/8/jMjxhAZ1Q8eE4xHw7IX5qlvfoZ+M
	 8SMl/1X5gRNmr3j+6wS4oykVLyKY++94MzxybRcqrD151eSR9xzWhH8lnlhQkrtQyR
	 9dNKHmEH5+K+wJDQurSrwBdxTpVeqDBvUdTSB0+niS/Kfu7hp3m1NwOOXgaEqiKFHW
	 z1sKaF2ZegrGAi63a+y8Zk2BdgB+mGAeQWjyuDj+xZStRkYWYsReN06lkAk95TXWed
	 TxkSX9EIa913AfTYt4BVsq5I4s7PZgUHqztQh3fM7oE/0bKMzSogv7okbEGNRA443z
	 B9UXE34WgmYng==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA42E8125B;
	Thu,  5 Sep 2024 15:05:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E41A91BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 15:05:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CCBE28125A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 15:05:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l8RWSrkyOfmg for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Sep 2024 15:05:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A3C7980CC9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A3C7980CC9
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A3C7980CC9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 15:05:05 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 959545C5CFB;
 Thu,  5 Sep 2024 15:05:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B540C4CEC3;
 Thu,  5 Sep 2024 15:05:03 +0000 (UTC)
Date: Thu, 5 Sep 2024 08:05:02 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20240905080502.3246e040@kernel.org>
In-Reply-To: <d4a8d497-7ec8-4e8b-835e-65cc8b8066b6@redhat.com>
References: <cover.1725457317.git.pabeni@redhat.com>
 <a0585e78f2da45b79e2220c98e4e478a5640798b.1725457317.git.pabeni@redhat.com>
 <20240904180330.522b07c5@kernel.org>
 <d4a8d497-7ec8-4e8b-835e-65cc8b8066b6@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1725548703;
 bh=Ld8KTi3QDI3VDWXO6dPONOX6HZLHeHYM7DMRcCRDWfQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=bxbGl6YiK5528f0iedkMc3CPab1WUFRuvkqkHVX96+Zgh5LxTYJAeda1dHTja1IYX
 Gm/euAa4fXmj0fJLGdu/e4Qt/L+MuVqG8q5yXMs5ohEpu+P039EeXwrrluWiIuZPqW
 Fn9SmZdx3Q0NJMkAPlsLr0PfgmN11LYsJK4RdptjDIVssru1zNI8lXDM+YliuVmcYt
 lM4tLHEWDzKbK+N7YX+WO/pMLPUCZhDKOjGYr64YyiCTM7gj6M86e6AnSPHDS4vks+
 DAw6Hu8sO9SQW5XhlmiYqK4RrtEXgdl7PD9md7Zu1yVhODbJcD6UDzIdxaYUQI6Bh/
 DHXIehKSrOgVQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=bxbGl6Yi
Subject: Re: [Intel-wired-lan] [PATCH v6 net-next 02/15] netlink: spec: add
 shaper YAML spec
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

On Thu, 5 Sep 2024 16:51:00 +0200 Paolo Abeni wrote:
> On 9/5/24 03:03, Jakub Kicinski wrote:
> > On Wed,  4 Sep 2024 15:53:34 +0200 Paolo Abeni wrote:  
> >> +      -
> >> +        name: node
> >> +        type: nest
> >> +        nested-attributes: node-info
> >> +        doc: |
> >> +           Describes the node shaper for a @group operation.
> >> +           Differently from @leaves and @shaper allow specifying
> >> +           the shaper parent handle, too.  
> > 
> > Parent handle is inside node scope? Why are leaves outside and parent
> > inside? Both should be at the same scope, preferably main scope.  
> 
> The group() op receives as arguments, in the main scope:
> 
> ifindex
> node
> leaves
> 
> 'parent' is a nested attribute for 'node', exactly as 'handle'. We need 
> to specify both to identify the 'node' itself (via the 'handle') and to 
> specify where in the hierarchy the 'node' will be located (via the 
> 'parent'). Do I read correctly that you would prefer:
> 
> ifindex
> node_handle
> node_parent
> leaves

I don't see example uses in the cover letter or the test so there's 
a good chance I'm missing something, but... why node_parent?
The only thing you need to know about the parent is its handle,
so just "parent", right?

Also why node_handle? Just "handle", and other attrs of the node can
live in the main scope.

Unless you have a strong reason to do this to simplify the code -
"from netlink perspective" it looks like unnecessary nesting.
The operation arguments describe the node, there's no need to nest
things in another layer.
