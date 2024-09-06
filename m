Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BB596F787
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Sep 2024 16:56:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ADE1F40C03;
	Fri,  6 Sep 2024 14:56:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EFkHLXvuDJBg; Fri,  6 Sep 2024 14:56:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE43740BCF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725634593;
	bh=udFuIJE79f6mx4MZADKLWFeQHvvGjQ7H7DDnTbjhbO0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EI3n/2Brg92LkO6eMcO+Pdq15MEqZ7yd+zRuJ9jauqWIqPhk+yqvcGB1Ob2mSy66d
	 RpE0MDqH4jnNE/BtK2huPAy8/VoSeKe6xECR4cdRO6VF1Ft3svJfX508Rew8M2yjFT
	 qKAuP+pxJ7uVK07niJkgYqBK6OfJrUGDtArHWt6HMZ4zezk8rI0hEMiQCmmZEev/Yj
	 r61V86jJOLtBZoiHxl9a2eGUTz1ApGUV9qb8hsEJ6aFPUw0fziJmepJjmxA6KQHWmp
	 dE4kcv3pqmkyAWBdWDlV7sK8qqb6kboBT0HeFOZeB4Uw7KrVH/tsg/kM9hyGg+gr60
	 BEH6t+pb62U1A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE43740BCF;
	Fri,  6 Sep 2024 14:56:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 28BBF1BF575
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 14:56:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 14FF660678
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 14:56:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xc8UCO6dOOkK for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Sep 2024 14:56:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 688EC6066F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 688EC6066F
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 688EC6066F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2024 14:56:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id EDF54A40420;
 Fri,  6 Sep 2024 14:56:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CF60C4CEC4;
 Fri,  6 Sep 2024 14:56:28 +0000 (UTC)
Date: Fri, 6 Sep 2024 07:56:27 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20240906075627.523b66f9@kernel.org>
In-Reply-To: <896b88ce-f86c-4f00-8404-cedc6a202729@redhat.com>
References: <cover.1725457317.git.pabeni@redhat.com>
 <160421ccd6deedfd4d531f0239e80077f19db1d0.1725457317.git.pabeni@redhat.com>
 <20240904183329.5c186909@kernel.org>
 <8fba5626-f4e0-47c3-b022-a7ca9ca1a93f@redhat.com>
 <896b88ce-f86c-4f00-8404-cedc6a202729@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1725634588;
 bh=AkshHGJCwSA/c3f6URldN+OvwR5GGBWXTT+jVK+kycc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=r2+VyV4QvLvzv+zqnC5q3wVSimowr5/kOBnpkauhnl+91pyVjs3Kyzz6mCrnRsSCk
 I1wi5Gwg+zaYsbwSiRqUKpGAje6mXNbZtMb64ZJ1BWUGSrF1N0rsEpC/hNMbX9sk/j
 aKhRMItf4swfjXmZhbLjXdMhlxjKvrLNkSis/1Wr25Y4oIyJWaDGNpJXLVWLb43lho
 c8tSIIRnd1995ugMWHoxBQgga/xPDWJkxdHwTy6Oioc4WX4JH2vuiumeNlkCRyVFhT
 +cqNc2YfZ/LLPFmiSwRBe3J4+luHBXv16LqzrmKv3lbRNHsWrTjJjMDRko6/2oWe0n
 poIzdyw3JTa9w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=r2+VyV4Q
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

On Fri, 6 Sep 2024 16:49:32 +0200 Paolo Abeni wrote:
> I forgot to mention there is another, easier, alternative: keep the max 
> queue id check in the drivers. The driver will have to acquire and held 
> in the shaper callbacks the relevant driver-specific lock - 'crit_lock', 
> in the iavf case.
> 
> Would you be ok with such 2nd option?

I'd strongly prefer if you implemented what was suggested.

> Side note: I think the iavf should have to acquire such lock in the 
> callbacks no matter what or access/write to the rings info could be racy.
