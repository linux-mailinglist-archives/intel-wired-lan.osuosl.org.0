Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F125983D6D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Sep 2024 08:56:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1F9B5408C0;
	Tue, 24 Sep 2024 06:56:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ovIcGJU1g7xh; Tue, 24 Sep 2024 06:56:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16D704048B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727161016;
	bh=rjdL/Kbd94OInL8e1XrhKIkhjkpvw8+wAI2G7qII6B4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1t1I/FwJ3N/HXO65xPiBpXx4voOoWPMZK4smJBnRhVH7T8qoo66u5uwSmT30eT4Rp
	 LsLDI6f9OXyu8g2/9fsHInPcnckdILyQkr5rUHHeyvyAxlhHuorSz3SMHOvJx7/wJ+
	 yCRVj7N4XZVFLWAmbqFtycwqvyygYWNzJHY7WNmckYbuCi3ZSQYb4jncgf02UMg68g
	 MFyvqFFHak8yXXTWwHiYJdbvCWxxOkrj/QJ7EhOigrt/2vBJTWD/5gmtoQg6M2y7EW
	 VibaA5Nq84AH5ipAErba1J1ERzoizGf2cUJi+022lOvlqpP1nqYcd6jN52wO9yOapu
	 y/e/7Cci3VwqQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 16D704048B;
	Tue, 24 Sep 2024 06:56:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 71E2D1BF385
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 06:56:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5F85140466
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 06:56:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7K5-6GggjHnm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Sep 2024 06:56:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 578C640359
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 578C640359
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 578C640359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 06:56:53 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id CDBB6A43268;
 Tue, 24 Sep 2024 06:56:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C624C4CEC4;
 Tue, 24 Sep 2024 06:56:50 +0000 (UTC)
Date: Tue, 24 Sep 2024 07:56:48 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20240924065648.GA4029621@kernel.org>
References: <20240923091219.3040651-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240923091219.3040651-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1727161011;
 bh=ofTvkF/mmzHGwcIuloNc9Ojea00VUkw5pNfVGUZMTGg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GQK7S54SHK6KGaDF4yiIBLLsGpDt6GtRmrfcj8y5dlj67aPL6y8j6XqK/sTUdYx+5
 RI9YY0nBJMU3duIx40038cWynSriJUNPOr539xmBHGv+QVXdKNEYgZRKitpffbbagV
 6+a9cZBLFeOHCUFXLGL5xTE+hnI358D7GPRwtskPRj75M7aaaV7YubUN6sgyExNpju
 Is9165Oy7wuE4bgo8qydT3L0pHeU+QfNYbCVeDZdvxViNgw7qsNvxkRex66Yjs1Mdn
 BoR/WWkNWPrAf7cRnmOVtgt2Cd1yamTqbZ80oZa2bSVHoGCJGGSBO7LFs5OAO6/4RJ
 hrrFsFhzWAA8Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=GQK7S54S
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] i40e: Fix macvlan leak by
 synchronizing access to mac_filter_hash
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
Cc: anthony.l.nguyen@intel.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Sep 23, 2024 at 11:12:19AM +0200, Aleksandr Loktionov wrote:
> This patch addresses a macvlan leak issue in the i40e driver caused by
> concurrent access to vsi->mac_filter_hash. The leak occurs when multiple
> threads attempt to modify the mac_filter_hash simultaneously, leading to
> inconsistent state and potential memory leaks.
> 
> To fix this, we now wrap the calls to i40e_del_mac_filter() and zeroing
> vf->default_lan_addr.addr with spin_lock/unlock_bh(&vsi->mac_filter_hash_lock),
> ensuring atomic operations and preventing concurrent access.
> 
> Additionally, we add lockdep_assert_held(&vsi->mac_filter_hash_lock) in
> i40e_add_mac_filter() to help catch similar issues in the future.
> 
> Reproduction steps:
> 1. Spawn VFs and configure port vlan on them.
> 2. Trigger concurrent macvlan operations (e.g., adding and deleting
> 	portvlan and/or mac filters).
> 3. Observe the potential memory leak and inconsistent state in the
> 	mac_filter_hash.
> 
> This synchronization ensures the integrity of the mac_filter_hash and prevents
> the described leak.
> 
> Fixes: fed0d9f13266 ("i40e: Fix VF's MAC Address change on VM")
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Thanks Aleksandr,

I see that:

1) All calls to i40e_add_mac_filter() and all other calls
   to i40e_del_mac_filter() are already protected by
   vsi->mac_filter_hash_lock.

2) i40e_del_mac_filter() already asserts that
   vsi->mac_filter_hash_lock is held.

So this looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>

...
