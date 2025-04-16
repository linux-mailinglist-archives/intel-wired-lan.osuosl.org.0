Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB6CA90EC5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Apr 2025 00:44:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8609383B60;
	Wed, 16 Apr 2025 22:44:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lF1vNWTEfWmm; Wed, 16 Apr 2025 22:44:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9473983B63
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744843481;
	bh=qTfXOS9wIUtvYZqj3Y6e/HDZwtA+oZwryo4LrIunhhY=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n/2tcf9PoivB4cXKJIaXMux2XSH7h0Z5N6M0nZmdf18Jz1Ee6Uh+Nkig0hvmEBbpB
	 mmiHaJeG1z/ZJh7l2BeO7mUPXdgB4s4tyaWclXKss2GF2VjJ+78i76oUnun19ycwGr
	 1q/MJ12BTl3zT+sUL4YWiILqnU2NaNHfj9GPtjCZ+qCct8pdRhU/TnFziGtz869hIf
	 j9KX+ghVXumLYVTbeq7RQe7SS8NMccS1rspCuDcJe4CkcumLj7e1AuBsgHqYEhQYdQ
	 vpUEKoPiZ8ZLB42q1sUzVIhm5JwaRZms7MiuWtJ0rpfqY79JkR8+oMMmCwSfCynCpU
	 g/RXCleprTyNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9473983B63;
	Wed, 16 Apr 2025 22:44:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 105AF444
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 22:44:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0209E60D72
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 22:44:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HkRZJq_rXoIo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 22:44:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 726536FA20
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 726536FA20
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 726536FA20
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 22:44:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id E400A440E7;
 Wed, 16 Apr 2025 22:44:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A5C4C4CEE2;
 Wed, 16 Apr 2025 22:44:37 +0000 (UTC)
Date: Wed, 16 Apr 2025 15:44:36 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, jdamato@fastly.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Igor Raits <igor@gooddata.com>, Daniel Secik
 <daniel.secik@gooddata.com>, Zdenek Pesek <zdenek.pesek@gooddata.com>, Eric
 Dumazet <edumazet@google.com>, Martin Karsten <mkarsten@uwaterloo.ca>,
 Ahmed Zaki <ahmed.zaki@intel.com>, "Czapnik, Lukasz"
 <lukasz.czapnik@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
Message-ID: <20250416154436.179ba4e9@kernel.org>
In-Reply-To: <CAK8fFZ4bKHa8L6iF7dZNBRxujdmsoFN05p73Ab6mkPf6FGhmMQ@mail.gmail.com>
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <4a061a51-8a6c-42b8-9957-66073b4bc65f@intel.com>
 <20250415175359.3c6117c9@kernel.org>
 <CAK8fFZ6ML1v8VCjN3F-r+SFT8oF0xNpi3hjA77aRNwr=HcWqNA@mail.gmail.com>
 <20250416064852.39fd4b8f@kernel.org>
 <CAK8fFZ4bKHa8L6iF7dZNBRxujdmsoFN05p73Ab6mkPf6FGhmMQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744843477;
 bh=lcZgJn+CvHo3YOwlCWFiXBOitE/C42Pup5tjkuVMIlE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=eOGZUeCgsqkIQJN3WKGWc29qCuIX7rfm4g9qqXSXauJezCXZ3Dlp9sWL2tTg3JWfD
 1bhTySYoAaMiIBmaWt3yTDFyfUR/3pFNnNkUph7SMWizmsmNRwiA0xSkMIX4+u2PjD
 auheV/4odqN0Ufgv6DnfGYK0UdfyNnGSrw+ls5exWkWwmuAX18sVyEYrLpgxmmWCOn
 KQOVryisXtvOjf1WQ1jAaYJGmHLJQ6x3Y7CDDuXxj066Ks6cAfW1HsoFzpM978NSNA
 P0QBwKI4xOJz5vrD2240ElQ0qfPcEKXphiIp9vy0wuBqJg3LEIRWMviuLnDQDXaRIm
 HrgT4LI2S50dA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=eOGZUeCg
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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

On Wed, 16 Apr 2025 18:03:52 +0200 Jaroslav Pulchart wrote:
> > FWIW you can also try the tools/net/ynl/samples/page-pool
> > application, not sure if Intel NICs init page pools appropriately
> > but this will show you exactly how much memory is sitting on Rx rings
> > of the driver (and in net socket buffers).  
> 
> I'm not familiar with the page-pool tool, I try to build it, run it
> and nothing is shown. Any hint/menual how to use it?

It's pretty dumb, you run it and it tells you how much memory is
allocated by Rx page pools. Commit message has an example:
https://web.git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=637567e4a3ef6f6a5ffa48781207d270265f7e68
