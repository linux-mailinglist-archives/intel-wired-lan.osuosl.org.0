Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7222EC8432A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 10:22:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 076F540EA1;
	Tue, 25 Nov 2025 09:22:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PFfEJyThTRbi; Tue, 25 Nov 2025 09:22:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C059E40E94
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764062530;
	bh=2soozzHloM/2VQ/EZFmFRTlOlMJYt9spKgkbfCydm/U=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lLozq6ME/d07mKTG2gbQObP3oYjx6LiTy6exYOpDNfAOjkdofLgUe8MarmIxB/N/k
	 xzV9XDSwzpKPR8cnBxmdmSWZLXA9qJe4OG+Rz8mW/x9BnrKSNfG25wIGO7H1MkiftT
	 bOkC2Z/3Lmo1C7+7estz9CaUFvjSojv5TLXWNs9kHhMUUi2xsDo4XbUbf27hNoOZlK
	 /kJY8sOaBc67izwWII0MnOzMBqQTPicV+zZRcfuI0COzPYIwvC1As59wVRd4Jj/jld
	 yOx5yCv+5xeSIfQn62WzTQPSQD0cvwF+uacU0DwGP3SxwBaiq1ZJYVOnXHUvZmoccC
	 +vPy8IJZpP4tQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C059E40E94;
	Tue, 25 Nov 2025 09:22:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 39C23E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 09:22:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 344CD4046D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 09:22:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wIBDx6BaZW9b for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 09:22:08 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2001:41b8:202:deb::311:108; helo=stravinsky.debian.org;
 envelope-from=leitao@debian.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3DBFA40461
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3DBFA40461
Received: from stravinsky.debian.org (stravinsky.debian.org
 [IPv6:2001:41b8:202:deb::311:108])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3DBFA40461
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 09:22:07 +0000 (UTC)
Received: from authenticated user by stravinsky.debian.org with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94.2) (envelope-from <leitao@debian.org>)
 id 1vNpF1-003I0D-TI; Tue, 25 Nov 2025 09:21:44 +0000
Date: Tue, 25 Nov 2025 01:21:38 -0800
From: Breno Leitao <leitao@debian.org>
To: Jakub Kicinski <kuba@kernel.org>
Cc: aleksander.lobakin@intel.com, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Paolo Abeni <pabeni@redhat.com>, michal.swiatkowski@linux.intel.com,
 michal.kubiak@intel.com, 
 maciej.fijalkowski@intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, kernel-team@meta.com
Message-ID: <nmwkbxjlrgr5daekzutw7juzgdvfop7zbvmsp7wkqr3qfqiys5@li537s2e43zi>
References: <20251124-gxring_intel-v1-0-89be18d2a744@debian.org>
 <20251124-gxring_intel-v1-1-89be18d2a744@debian.org>
 <20251124194823.79d393ab@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251124194823.79d393ab@kernel.org>
X-Debian-User: leitao
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=debian.org; 
 s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=2soozzHloM/2VQ/EZFmFRTlOlMJYt9spKgkbfCydm/U=; b=gqVy8eVtWsiaoaIrVDaZkniqMG
 zvT1QkUs6fIrS6Ak6gUIb0llJy5z5fgRP1SsMovvhPNU65UG+89ewX9vIrhm+xcDVE3/HgktW5T/g
 RqJ94KmosL7SGMNdxlzuwHledUE8VTyoWoxn0BfYXOxNqKp4DheVts6TVBcRixIhN80v8zYmmIvRC
 E2dqqEoAZRGgPn/vIi24dLhDyTuLDNiOOV1wcvlRxCti5Oc/Km8wTnoEmi6iQNfwkG1/MZEDb4vXr
 z8ZSeti1flTE5gZfeBHMhBoBTaq99qPLOk/r1XdKZgUMI7BfJaYi+hkLsTR8qi8J1PdhikiYReTWc
 peJrtz0A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=debian.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=debian.org header.i=@debian.org header.a=rsa-sha256
 header.s=smtpauto.stravinsky header.b=gqVy8eVt
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/8] i40e: extract GRXRINGS
 from .get_rxnfc
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

Hello Jakub,

On Mon, Nov 24, 2025 at 07:48:23PM -0800, Jakub Kicinski wrote:
> On Mon, 24 Nov 2025 10:19:05 -0800 Breno Leitao wrote:
> > + * Returns the number of RX rings.
> 
> I suspect you used this format because the rest of the driver does,

Correct. I have jsut followed the other kdoc format in the code.


> but let's avoid adding new kdoc warnings. I think Andy is trying
> to clean up the "Returns" vs "Return:" in Intel drivers..
> 
>  drivers/net/ethernet/intel/i40e/i40e_ethtool.c:3530 No description found for return value of 'i40e_get_rx_ring_count'
> 
> (similar warnings to first 4 patches of the series)

Ack! I will get them fixed.

Thanks for the review,
--breno
