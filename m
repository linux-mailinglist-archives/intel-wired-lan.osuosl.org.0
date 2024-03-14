Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B4187BFA6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Mar 2024 16:12:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4EFF2410A5;
	Thu, 14 Mar 2024 15:12:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4juqT3FBCxvv; Thu, 14 Mar 2024 15:12:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98911410A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710429123;
	bh=0OL4LzRBFl80pfUqgwbmr9DML9X2re08EQDheZVyXs8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2YDGKC7Tg31qUwpf0/XsAktetkhH/GkAq0rvS3/Dd2/KTe5jFaDxB3pK1NGi0gQR2
	 Vfjv/a9fWL/E38DS8WLlcaQNjYiI/Qo9irkYjGNPzSQg9ugR2MM1q++UZi8PjyD0Wt
	 LoNfJAK+VkJXDd21YxwkN3eif2ij37G3Adep6uPYxq18kZ7j2+pt2JZ/Xwcdj0IcvC
	 MpL+OuLoFfrj2PsNxtz2x/Y6S5ROLKIxfKINxXugzLWn+abbe721S0rW6hL+6gdDTf
	 sSq8+Uc89A0eVUAMwcai5mjG6ntOXQwB113BKRBPQYaR8hM3mTfFgFe6DgCsm6Dy1X
	 6M1TmbK2S3kRQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98911410A0;
	Thu, 14 Mar 2024 15:12:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BE0651BF267
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 10:55:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A92CC81318
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 10:55:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Du2Og1ThaFBf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Mar 2024 10:55:09 +0000 (UTC)
X-Greylist: delayed 1160 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 14 Mar 2024 10:55:08 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E2EC2812F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2EC2812F7
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=bigeasy@linutronix.de;
 receiver=<UNKNOWN> 
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E2EC2812F7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Mar 2024 10:55:08 +0000 (UTC)
Date: Thu, 14 Mar 2024 11:35:45 +0100
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20240314103545.Ljj-g-iS@linutronix.de>
References: <20240313-igc_txts_comment-v1-1-4e8438739323@linutronix.de>
 <d87f0752-a7ea-45b6-9a79-aac0c6cac882@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <d87f0752-a7ea-45b6-9a79-aac0c6cac882@intel.com>
X-Mailman-Approved-At: Thu, 14 Mar 2024 15:11:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1710412546;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=0OL4LzRBFl80pfUqgwbmr9DML9X2re08EQDheZVyXs8=;
 b=r+HbErt/F+5Gy8G53OnnF6CbJ72Yan3ossy7LKaGnU5DkTJ1TgrXsSrb3PMb4m4N7QWmFb
 dJATEIE8EZdz1VjVVGXcb7TBEps7ycRpDFILGPtiQMd+rv4o8i8MvTEP/WL+Di913oDGIx
 RHUggNgw9XbvWQImP6fOb7ZogmGswHbaWRYwCwCHkAmru2JFsmmqTrcCiOzudfFc1acCH4
 vKC4MfZslrpTnOumkZETpKYpJBcG84U49TlG2bUdh6PpXKRZlx9pODB5FjhjJQ6OUwcKVl
 PcgVdUM+M6JwWLkxFsAVMEVz5JjuRx+PRbvE7Wy0mBD8gI9kC9buyh/9KCTn5A==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1710412546;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=0OL4LzRBFl80pfUqgwbmr9DML9X2re08EQDheZVyXs8=;
 b=Zo7EGD0L2JlZp/xDGcf7aSMkWDJGphoZ5Q2pD49k2TQCix70rv5pLjW9tYtuZiCVC4+5v2
 6H8IpOplKfyWw8Dw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=r+HbErt/; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=Zo7EGD0L
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] igc: Remove stale comment
 about Tx timestamping
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
Cc: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2024-03-14 11:21:38 [+0100], Przemek Kitszel wrote:
> On 3/13/24 14:03, Kurt Kanzenbach wrote:
> > The initial igc Tx timestamping implementation used only one register for
> > retrieving Tx timestamps. Commit 3ed247e78911 ("igc: Add support for
> > multiple in-flight TX timestamps") added support for utilizing all four of
> > them e.g., for multiple domain support. Remove the stale comment/FIXME.
> > 
> > Fixes: 3ed247e78911 ("igc: Add support for multiple in-flight TX timestamps")
> 
> I would remove fixes tag (but keep the mention in commit msg).
> And I would also target it to iwl-next when the window will open.
> 
> Rationale: it's really not a fix.

It is a fix as it removes something that is not accurate. But it only
changes a comment so it has not outcome in the binary. I think what you
mean is that you wish that it will not be backported stable. Still
people reading the code of a v6.6 kernel might get confused.

Sebastian
