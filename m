Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC19737220
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 18:53:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 364606112A;
	Tue, 20 Jun 2023 16:53:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 364606112A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687280025;
	bh=PnLI5pR2rKYJZXiXc0Nu2aqUe3LhXBZCOopFfM/4hYc=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XdaXoYfHBcdkoRDK6fyATwwuNbusbm1IrZQqjNynWKReJh5uPcEoh7FdvLJ0z4OtU
	 Xbwgr0Xd65yJXa0c5ZIVwAalGbnkzRtm5wWkO9ZnLbTHlwOAy5rqHQdfuRqo7OI2xy
	 mhdrH6bHmM8hW8wJmbS8IKNn5Gt77SYtru8FNMiqTcsFrRl4DO402dsNuFE1UoW3t/
	 83vXHnyaJKIK0ZHKlugECLgM/dMFJmTrmKUwZxBNq6G6aUGHPLZoYYCKxZ229UITR0
	 pRxYXFsT7CjFm/J1qf7cNXdgueVyergUvENH78VyaqOPeqLCuHNGqLGsJae13XQTPC
	 /ybp0sFCeFA+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E30sepBGcffM; Tue, 20 Jun 2023 16:53:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E93060B57;
	Tue, 20 Jun 2023 16:53:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E93060B57
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BD5461BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 16:53:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 95635812B2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 16:53:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 95635812B2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fpw7lpGZS73r for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 16:53:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E43EF8129A
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E43EF8129A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 16:53:38 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7493D6130E;
 Tue, 20 Jun 2023 16:53:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8D3EC433C0;
 Tue, 20 Jun 2023 16:53:36 +0000 (UTC)
Date: Tue, 20 Jun 2023 09:53:35 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <20230620095335.43504612@kernel.org>
In-Reply-To: <20230620082454.377001-1-maciej.fijalkowski@intel.com>
References: <20230620082454.377001-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1687280016;
 bh=tym3va7j07rMbqs2XCuinzFJ802Qjkt0MtFqmhGk3ho=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=r10cVUfPBuLkZ56j6N+k+iw6IlMHxU/i6xOx+Be0wPkyUvEcegadWTS5mNWxEmDiU
 J0fjeuu8J6bVpiazUkWIorhudFokmftZAzeQYW0/zT8mY8qSv7YEqHJenT4K+40IOK
 G30vR1/hzQtsGqGagf1dCpMejq/k0B0h0/z7IeCU7is+DF5/AtUZg2Wsgm9W7ZryvS
 mVSgStXPQa1B9tN9BuGzfEZIym9ne1/UX5vvVLBPEFlJ22PAAgaFWf7KBs5/UvlhCm
 buQ9y/5VK26svr9vU678dKI7ye4mUtsbwertXGCgv6ISyORtc4TdvNjF6Oaa4ob8Ud
 93jj3GtI5KPbg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=r10cVUfP
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: add missing napi deletion
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, magnus.karlsson@intel.com,
 michal.swiatkowski@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 20 Jun 2023 10:24:54 +0200 Maciej Fijalkowski wrote:
> Error path from ice_probe() is missing ice_napi_del() calls, add it to
> ice_deinit_eth() as ice_init_eth() was the one to add napi instances. It
> is also a good habit to delete napis when removing driver and this also
> addresses that. FWIW ice_napi_del() had no callsites.
> 
> Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

Is there user visible impact? I agree that it's a good habit, but
since unregister cleans up NAPI instances automatically the patch
is not necessarily a fix.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
