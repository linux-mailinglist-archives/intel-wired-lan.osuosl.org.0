Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BEEF966CF6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Aug 2024 01:42:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6308846B3;
	Fri, 30 Aug 2024 23:42:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 58RL0UCfehwH; Fri, 30 Aug 2024 23:42:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B1EA846C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725061372;
	bh=pszuPJQhFLcXBbvSnp0dN0RGPizWatEDnWhRvgFzoF4=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jWu5iVifO9pBKQjmDIcHQYgbLGF/LoV/5NmT7ifcHaAOj/EQHesAfWIIt9qm8Hs5d
	 3PeKGVXJj7OHUuk+I7VjJU+4ZDrXrG41Z4PDtafJyHposG7ZETZnSuVkC3tVA1Raix
	 ohEqdl1gaaZPTpJ39LOSh3DP60Ne76p/81D9utNyoG3uanLX67kgqn9AoKf/rDukyJ
	 1CSDS0Elx6IOaXAB6YLV8SmEUW75oXhIXKzVLCTZAzMII0i064KAkUXqKUO2wKr18x
	 KvrfSwqTIEAP2aDjdI4Xo0Kx6sGKdirgAqMU7vyQ7YNlcSMtskzer1DUSJNose8gbE
	 tW+XPqAV4Imyg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B1EA846C1;
	Fri, 30 Aug 2024 23:42:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 80F0C1BF20F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 23:42:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7ABC460708
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 23:42:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MCdDSWJLFDFF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2024 23:42:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C004E606F3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C004E606F3
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C004E606F3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 23:42:49 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 23B5FA44676;
 Fri, 30 Aug 2024 23:42:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A9E9C4CEC7;
 Fri, 30 Aug 2024 23:42:47 +0000 (UTC)
Date: Fri, 30 Aug 2024 16:42:46 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20240830164246.73649979@kernel.org>
In-Reply-To: <20240830113900.4c5c9b2a@kernel.org>
References: <cover.1724944116.git.pabeni@redhat.com>
 <53077d35a1183d5c1110076a07d73940bb2a55f3.1724944117.git.pabeni@redhat.com>
 <20240829182019.105962f6@kernel.org>
 <57ef8eb8-9534-4061-ba6c-4dadaf790c45@redhat.com>
 <20240830113900.4c5c9b2a@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1725061367;
 bh=gdoQctlXEsRYR0UYWAtrxA9rkf2AKKcV7usYOpNoZW8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jzJxGk5EgXVF/4YzZAbWkp4cI8uutZDyvdWX3VinL6NCtYZII/+/tmshm+Mp4Ns4w
 Y2TYqer6ie2duPaH+IINwnFKXqjB6AYa+areqb4Y3QnNvO1NC5kyYX0xcmi/+J3XMj
 LG87KQW33qnBCaU3ewnxPuEQtCkUR9nJmzOas/9KFj3O9m8PKgLNmAtPxXMWCSsa5W
 c/LBl/4XTjkXmJ73ub6WA2B7qvf5747M55Bsqwt0fiEyr+ouEjA7WalkBcub4gZogf
 ifmmm3UYfNL/ABuzFs2XImOMSY3G+I/exPDUthmBzlNl1OH8GYJLdLaBaecnjSiKuj
 A4G9DhHuyf79Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=jzJxGk5E
Subject: Re: [Intel-wired-lan] [PATCH v5 net-next 02/12] net-shapers:
 implement NL get operation
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

On Fri, 30 Aug 2024 11:39:00 -0700 Jakub Kicinski wrote:
> > There is a misunderstanding. This helper will be used in a following 
> > patch (7/12) with a different 'type' argument: 
> > NET_SHAPER_A_BINDING_IFINDEX. I've put a note in the commit message, but 
> > was unintentionally dropped in one of the recent refactors. I'll add 
> > that note back.  
> 
> What I'm saying is that if you want to prep the ground for more
> "binding" types you should also add:
> 
> 	if (type != ...IFINDEX) {
> 		/* other binding types are TBD */
> 		return -EINVAL;
> 	}

Ah, the part I missed is that there are two different types for ifindex:

NET_SHAPER_A_IFINDEX
NET_SHAPER_A_CAPABILITIES_IFINDEX

Got it now.
