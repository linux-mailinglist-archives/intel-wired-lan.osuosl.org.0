Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EE09E83A663
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jan 2024 11:09:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD0D4851B1;
	Wed, 24 Jan 2024 10:09:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD0D4851B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706090977;
	bh=1exDrHzk+pv/xvShFvKcI72l25Wp/iYjDz2roLd0rHs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Nx6plkfsh4dVA5wMJaGJeyNN9qye2Kjm2fMe4zrEV1dH2hTXG/abT0uEVImbZbB0p
	 9z1OPHK0KItGQV7iYdSGNkDDjmd1Q+gR8nZfHHwTMg5G9SgmYmB0iHdCkOXQRQOGuh
	 sylEYboI9ZAzy3P8i20q0kEgXoz5lktT0nscmpMc7e6D/5woh3tn7NyMoAewdsh9Wc
	 zeHitrIt3nLIJwBBsGtGWlpjgukqYXsYj8TutCy8RBUy6ZiEPN/u7S9gZW64rt6t1d
	 gHXgXl3So1/4jbI9x13HZaxLaxUCmIIja8AbJRGf8Tyc3T6DxEU8RRVojPvLjLqGL2
	 XfMaJkLZbFKeA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qA_CaTBMXsbh; Wed, 24 Jan 2024 10:09:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 04DF4851B0;
	Wed, 24 Jan 2024 10:09:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 04DF4851B0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AB6391BF391
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 10:09:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7F194613CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 10:09:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F194613CA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mq1d3Q50K03Y for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jan 2024 10:09:31 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 50C8D611B2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jan 2024 10:09:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 50C8D611B2
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 2F7F1611EE;
 Wed, 24 Jan 2024 10:09:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D465C433F1;
 Wed, 24 Jan 2024 10:09:28 +0000 (UTC)
Date: Wed, 24 Jan 2024 10:09:25 +0000
From: Simon Horman <horms@kernel.org>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <20240124100925.GS254773@kernel.org>
References: <20240123115846.559559-1-maciej.fijalkowski@intel.com>
 <20240123115846.559559-2-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240123115846.559559-2-maciej.fijalkowski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1706090969;
 bh=IcQU/iHRRmZs5q1WZGwTEgJ+cEH88WdQGDANYi4Oc6s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nw1AuBoGaSUOYVTFWJg3BvwwhRZOejPNzVUBuEqzyQoZqbPoXno5Us8/WGJdUSXvm
 /pPqLcuiN6I7nLCFXXORuLYRSpLuqiFiee47IB/R8ParSFlMyBV0v7Y54FaPpt0iMY
 ra/ASlgBwRg0wqUHOi9Jjd1RrXVhQ575NnRNjZskeW2Dv9UDl4EYo8KUP8E/GSA0uc
 sbjgCZZYlffYjSELoQzUDPWWrEaUH8cxTSUfpGzIAH5an61ge3GetPAJ0NQ3jtpaIc
 rJY8qsd2d7aJF2Fdw069K0go6/XsyS0LaaxtsK1hZvbUCVdY08Gr7YPVDf1TaA6gbS
 8s5GvryMGyghQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=nw1AuBoG
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: make
 ice_vsi_cfg_rxq() static
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
 intel-wired-lan@lists.osuosl.org, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jan 23, 2024 at 12:58:45PM +0100, Maciej Fijalkowski wrote:
> Currently, XSK control path in ice driver calls directly
> ice_vsi_cfg_rxq() whereas we have ice_vsi_cfg_single_rxq() for that
> purpose. Use the latter from XSK side and make ice_vsi_cfg_rxq() static.
> 
> ice_vsi_cfg_rxq() resides in ice_base.c and is rather big, so to reduce
> the code churn let us move two callers of it from ice_lib.c to
> ice_base.c.
> 
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

