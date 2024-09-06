Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5854C96E6E6
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Sep 2024 02:39:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3211408DD;
	Fri,  6 Sep 2024 00:39:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t0CsvnlrRKEV; Fri,  6 Sep 2024 00:39:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E37B0408DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725583144;
	bh=XjSY1wm7qiphfX7Tvg8K12G7U9kVeYrSCM4SEcFuwS8=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8BHd0Ye0aVQmhy0kE0410ZO6ANV6A1CSFJmPTkjov+BqmSU4QVCrm67gY9JEAvCo6
	 WinY4i77mFaO3TvyWYvocpfySd9Da8W3zHlb0unB7hkeS2wQ/syghjBMfI0A0XI7Jz
	 WWHn+8ufKRSzaOGYTOQT6gvw8R6+AY/we22C0n6oRsasVYbUz2c0CbMIuPhISRGDhY
	 Kq8aLpLUxRAbxbI78UJLw5lfEh0cRaVercvQmTikmMly7dA4C4jPD832+izSNWgIne
	 iqTWf1nBYnpOrnqerZdUBWLjOFHx+6PczQZMWh5VLOIcBjTjp1uKZ86D3Vbp5k9Ik6
	 19N3pXG2oU/JA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E37B0408DF;
	Fri,  6 Sep 2024 00:39:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 654991BF97A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 00:39:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 505D560898
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 00:39:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KJsgkgv69tXH for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Sep 2024 00:39:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8D43460803
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D43460803
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8D43460803
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 00:39:00 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B3C0D5C59D5;
 Fri,  6 Sep 2024 00:38:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E7BAC4CEC5;
 Fri,  6 Sep 2024 00:38:58 +0000 (UTC)
Date: Thu, 5 Sep 2024 17:38:57 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20240905173857.588f2578@kernel.org>
In-Reply-To: <46484afd-7b50-465d-b763-0ac60201bd3d@redhat.com>
References: <cover.1725457317.git.pabeni@redhat.com>
 <a0585e78f2da45b79e2220c98e4e478a5640798b.1725457317.git.pabeni@redhat.com>
 <20240904180330.522b07c5@kernel.org>
 <d4a8d497-7ec8-4e8b-835e-65cc8b8066b6@redhat.com>
 <20240905080502.3246e040@kernel.org>
 <46484afd-7b50-465d-b763-0ac60201bd3d@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1725583138;
 bh=BH+49kMVLlx3IWeDXgymiFy41FRYwFsqSDTA91+J6GQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=VSFgat6kKmFqfFTVXg82SnYYPBxVM7Hs1Rt+FMIrZOF0KnDWvtlkCrjQb+OkykltZ
 XWh70txb/KkK8Cn4+/YvJmphR5ClhTb67UGjd56miR0+WB/74+N1JJ9Uldd55lY8r/
 uVUjek7N3bzc7cQDhzZVrISKnEG0EF9DZjFwAYW6eiUIyp8UyfPEf/XRDIqFLglRcR
 uSqUi3Z3YkMRU7oAt2oczMis68VHXyYK8IjVLRLG+Y9mNMt9IMPUv8RBQRz9cn+T8q
 g72eEAn+tpYWWu0o2NIajGvervfJkJs4e+kQkg5NN/xO3htDss0IQDqx/uIHfypugk
 FQhrtOsxe6A5Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=VSFgat6k
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

On Thu, 5 Sep 2024 18:17:42 +0200 Paolo Abeni wrote:
> > I don't see example uses in the cover letter or the test so there's
> > a good chance I'm missing something, but... why node_parent?
> > The only thing you need to know about the parent is its handle,
> > so just "parent", right?
> > 
> > Also why node_handle? Just "handle", and other attrs of the node can
> > live in the main scope.  
> 
> I added the 'node_' prefix in the list to stress that such attributes 
> belong to the node.
> 
> In the yaml/command line will be only 'handle', 'parent'.

And the scope inside parent is 'handle', not subset of 'net-shaper'?
Just to be 100% sure :)

> > Unless you have a strong reason to do this to simplify the code -
> > "from netlink perspective" it looks like unnecessary nesting.
> > The operation arguments describe the node, there's no need to nest
> > things in another layer.  
> 
> Ok, the code complexity should not change much. Side question: currently 
> the node() operation allows specifying all the b/w related attributes 
> for the 'node' shaper, should I keep them? (and move them in the main 
> yaml scope)

Up to you, I was surprised they were there (I expected @group to
be solely about creation of the RR node, and rate limit would have
to be set via a separate @set). But I don't expect providing rate 
limit params in @group to be problematic and user space may find it
convenient. So I'm neutral.

And yes, they should sit directly at the message level, not in any
nest.
