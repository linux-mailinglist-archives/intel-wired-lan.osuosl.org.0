Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 118C59EB770
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Dec 2024 18:08:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28747813A3;
	Tue, 10 Dec 2024 17:08:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0ZKCgevkB71k; Tue, 10 Dec 2024 17:08:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6AAEE81747
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733850535;
	bh=eWj5KNj0YyYcp+iR74rAGs6OTDyZc6I9jRti5hsqh9g=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0O+DAK2ruoQC90qfB3A8c9TSBlmydokGULCDhymVFaCO4pJ3m8pbU3P6Bq3CijtGt
	 lGPoQcAy6sCkCfPZLpCKk0R+mrckmnREdcbKDqFzkNOZyDWHRrFCadJIvisPq8lc8c
	 j24YNMeadAm1BhUS1/8U6hT1TO+0bXYdCRxllwHN/thmc33ur+MZDDZp8bSEGn0iuO
	 BCVjSkPKdzKXwxZVNFzcXMYuC+Fra3Rl17tD+FUsAQ7DqMql/6pFJDsWzTv24RnbHa
	 ijagvTsIX+gSACax2pIuIkVZsUCcH3fstjVzQXj6olv9FmuJKroGj6/mGA3ECAon85
	 zKtjK6OpNNjMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6AAEE81747;
	Tue, 10 Dec 2024 17:08:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 332B3E11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 17:08:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 13149400EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 17:08:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yKOlvkHbw3fe for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Dec 2024 17:08:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 21759400BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21759400BB
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 21759400BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 17:08:51 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 62E305C5CDD;
 Tue, 10 Dec 2024 17:08:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23248C4CED6;
 Tue, 10 Dec 2024 17:08:47 +0000 (UTC)
Date: Tue, 10 Dec 2024 17:08:46 +0000
From: Simon Horman <horms@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Message-ID: <20241210170846.GD6554@kernel.org>
References: <20241209140856.277801-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241209140856.277801-1-larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1733850530;
 bh=Y2Vsc9I8jXblIm8hGxv3z8aLdD8Oy15ilENKuf7CcYY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ofnDEbMFjMzeKLwbusCHwIouhHE62Tpps/H0nx+myKUTHwG42TMHJ2wu/6AuaCX0X
 WCAT90xAF+jvDZXW8Ax6apC3qPCUwd5kpI35roavSt3GiyBt5lTY7NzK2lAJi/SFNo
 nfx1Hg/oFMwo+9TtmeW7pDxj2P6g1bafNBlXgICLyyhwyh5j6ASMgYc19OvHoNUoz2
 oQmGirG6N0rNMeP+JnJYZ/4B/V6kXspDkb5RKsr8Csrw/QsDeaYQKimzlzfFTf2JU2
 pEZkYD1Ei5S8WXwsG8j1OsAciT63lZEs4KPhuDbOl2UKH0RWjgpKiZO45eZjj8C3rs
 /PzQlqpoAN5RQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ofnDEbMF
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: do not configure
 destination override for switchdev
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-kernel@vger.kernel.org,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Dec 09, 2024 at 03:08:53PM +0100, Larysa Zaremba wrote:
> After switchdev is enabled and disabled later, LLDP packets sending stops,
> despite working perfectly fine before and during switchdev state.
> To reproduce (creating/destroying VF is what triggers the reconfiguration):
> 
> devlink dev eswitch set pci/<address> mode switchdev
> echo '2' > /sys/class/net/<ifname>/device/sriov_numvfs
> echo '0' > /sys/class/net/<ifname>/device/sriov_numvfs
> 
> This happens because LLDP relies on the destination override functionality.
> It needs to 1) set a flag in the descriptor, 2) set the VSI permission to
> make it valid. The permissions are set when the PF VSI is first configured,
> but switchdev then enables it for the uplink VSI (which is always the PF)
> once more when configured and disables when deconfigured, which leads to
> software-generated LLDP packets being blocked.
> 
> Do not modify the destination override permissions when configuring
> switchdev, as the enabled state is the default configuration that is never
> modified.
> 
> Fixes: 1a1c40df2e80 ("ice: set and release switchdev environment")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

