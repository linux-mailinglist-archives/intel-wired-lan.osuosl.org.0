Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 489D78374F5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jan 2024 22:11:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AD1B841A08;
	Mon, 22 Jan 2024 21:11:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AD1B841A08
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705957860;
	bh=QQuxlIZQ7Oogvx0qykRNuSzmJ0WSw6if2F8B62AR6b4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1pwOKmTDjocAhPw1qWfW1ok9JLP0kYcg3sUQwj7T7Q+4h/Sl849Nrjd/lWLWjmusT
	 x4ltNv3yPvQm522ooGzWocLjIYqVqdpM/mEY8ukzQatcUEBM3VYqfvERHXgkXvTne4
	 hd3zWp93IS/lSCRfr9f6p+vtPLAwJQKNyl7WWuO+JNL1kZM9qeWYhkaB8MDc6ZfY30
	 b7LjRvyA4YsZ9uqqQOl5R7oKQiYYKFWevjEVVY9q/l4kTIDNGP76MFhp1F4uC4ErU0
	 i+2TLJI17Zap8GQjGDfnDaamGJNdlhH+lq5VOW0uxRcmSfJWQ3hpiPebRbXpPgj9wd
	 1+v+DZFMBkH8A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L28g0heaedz8; Mon, 22 Jan 2024 21:11:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8DEEF4097C;
	Mon, 22 Jan 2024 21:10:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8DEEF4097C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5C7FB1BF3A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 21:10:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2EE7141A08
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 21:10:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2EE7141A08
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aN7A5sH-s11U for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jan 2024 21:10:53 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6AAC54097C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 21:10:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6AAC54097C
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 4D9FF61AF5;
 Mon, 22 Jan 2024 21:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F1D7C43390;
 Mon, 22 Jan 2024 21:10:49 +0000 (UTC)
Date: Mon, 22 Jan 2024 21:10:46 +0000
From: Simon Horman <horms@kernel.org>
To: Zhipeng Lu <alexious@zju.edu.cn>
Message-ID: <20240122211046.GK126470@kernel.org>
References: <20240122173633.3843715-1-alexious@zju.edu.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240122173633.3843715-1-alexious@zju.edu.cn>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1705957851;
 bh=TDViGXXDF62YHlJpIBlrEc0F5ODj676gbujRwRqKUtY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=L5wjLa6gOcizqQtkvIgi2lycdDBDD1WQZBJR5QPDfYTBF5FHJKR4h3z+x1XnyxSHf
 +gBBIrzMsUiibgEP7xUUXakoEbnrzasfK6DPRix7wfJbcGjoFHTHoqZWdHohsyMOfB
 //BfYKXdio7Px8XckjFam7Ko0P2jas24o/UI4r93TPzx5Xxpaf8GtEvlU7ORdwWS/8
 XoP4MYf+9KdSUYqMQzqPHazQK4/W7Fvn2R8i5lYJZzTrHWImGB0ANygxK16vYvn/nN
 TS2OegnnyGrOMjjuhhj4S9BKTfpC6IEDUCjWRx5S/ZBaUzMPme2C61S4+102pwecXi
 Hn3fMN+zHurKw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=L5wjLa6g
Subject: Re: [Intel-wired-lan] [PATCH] i40e: fix a memleak in
 i40e_init_recovery_mode
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
Cc: Alice Michael <alice.michael@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Piotr Marczak <piotr.marczak@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jan 23, 2024 at 01:36:33AM +0800, Zhipeng Lu wrote:
> In i40e_init_recovery_mode, pf->vsi is allocated without free, causing
> a memleak. This patch adds deallocation operations for pf->vsi in each
> and every error-handling paths after pf->vsi's.
> 
> Fixes: 4ff0ee1af016 ("i40e: Introduce recovery mode support")
> Signed-off-by: Zhipeng Lu <alexious@zju.edu.cn>

Reviewed-by: Simon Horman <horms@kernel.org>

