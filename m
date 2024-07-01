Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D5791E5D8
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Jul 2024 18:52:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 69BCF4089C;
	Mon,  1 Jul 2024 16:52:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TqmYqv6CqWe4; Mon,  1 Jul 2024 16:52:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7430540887
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719852751;
	bh=fLCnjl+Rsd8HjuZD5+Mjan01eQ4pAzVGNEKFL+yKC3M=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2JZyU7kGLnSPiunA9g6qINzcsA4hlBBSv9C5L5Lw6Zzz/AAyRINKW9OVnWYNkaIzN
	 pDBFnj50JptGWoSx04eVKU5bho8ZvfFH3qWhQAtqkp/YB3xR/uEr8LWKUXeoeSIHso
	 Mz/8NbR5LwiFktlNx6PZZCBZ24UIDC14+oUbtkalX+nIautl0fa9Pa6pLe1xk5gU1A
	 dKmcbwQ53jn/krPsdDk6IshkRgoEVaCHb4euiVKvTD+4wDjJ4IGV71ssuKHMxDAcN2
	 oD9GKemB4LIT6vuYmBqMxRMrpskATe7VHWch0F35FUc4Kki8V447aC+fhRxAjuPEGJ
	 E/HfczvUDchQg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7430540887;
	Mon,  1 Jul 2024 16:52:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D6D181BF34F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 16:52:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C18E760A8A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 16:52:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b3YNYmgArOPJ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jul 2024 16:52:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E4C89605C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E4C89605C0
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E4C89605C0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 16:52:28 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 5FA93CE19A3;
 Mon,  1 Jul 2024 16:52:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40350C4AF0D;
 Mon,  1 Jul 2024 16:52:22 +0000 (UTC)
Date: Mon, 1 Jul 2024 17:52:19 +0100
From: Simon Horman <horms@kernel.org>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <20240701165219.GA598357@kernel.org>
References: <20240701090546.31243-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240701090546.31243-1-wojciech.drewek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1719852743;
 bh=OO5BddTOzU4MLowLv5gGnciASTzd1P1u5eu4NiEuR9M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KWojnd3+6+oawxA2iyT7b3tMlX1qFeubAfCaSKeUSxELAzbAg0sAJpobovDs85QlZ
 TKBwh2ap8jkGMFvWznkW0cq1ywVOLCD73Fh7ah2Op5DhGhWZJ8+YXVbmDydTPSWcTO
 UUYLJ06rOmIhWfNZJHMYVUVJOZD2zM5CMyl1S4pLfM/B9dnrBAx+iTJidet9kNSIst
 K9sOZf5pOUw6D5KYBRb69/ZKIDDvA833PuE2lpreystw4BndnxhaYPEhkmRui+rUI4
 MbJ62GJvM+8UtnKng/YjpX9s4VtbYnJU4OItulrdVeWTmfo6iw8Ks30CW0cxaI9+uS
 IUmNESnjRBiRw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=KWojnd3+
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Fix recipe read procedure
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
Cc: przemyslaw.kitszel@intel.com, marcin.szycik@linux.intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jul 01, 2024 at 11:05:46AM +0200, Wojciech Drewek wrote:
> When ice driver reads recipes from firmware information about
> need_pass_l2 and allow_pass_l2 flags is not stored correctly.
> Those flags are stored as one bit each in ice_sw_recipe structure.
> Because of that, the result of checking a flag has to be casted to bool.
> Note that the need_pass_l2 flag currently works correctly, because
> it's stored in the first bit.
> 
> Fixes: bccd9bce29e0 ("ice: Add guard rule when creating FDB in switchdev")
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

