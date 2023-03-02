Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 639D46A7D59
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Mar 2023 10:10:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3718D409E6;
	Thu,  2 Mar 2023 09:10:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3718D409E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677748226;
	bh=X/rnkNdSqOXQ5GaTPQHxxDz7AjrS8Ky3mJFwQqMeNAY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=i99P7l0rEoxJQjpyAup7aec54VIpCRhjslHw/zctJwTIOG2jb383vVtSJKJsd9+/+
	 p+2kaSuR/1hzrKP8cmt8dEdWamyjcUHCtGuYhaplPBHsJ2SR8DSGh+q6yXUNCgOLY7
	 q/y/TQDxQdMeAc5fJ9jaNKYyrgnjrUS6lD8thlDSHTILuRdW4x2q6SCbLCwrXro+eQ
	 ARR6bix5mupeMmBfTfv9MQN0R9zB2wWYSfSu7PFvqckdBhhpcCT+CqUPoFOKVcK4z0
	 FpamR/0dIZXNnhHP99aO+H9QB2APNbfdWdGdrU7+pySDoTrFaovhgD75cjJ34O9OL8
	 xtpZXK+T1sacQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RGw625DKCEyM; Thu,  2 Mar 2023 09:10:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E234F409A8;
	Thu,  2 Mar 2023 09:10:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E234F409A8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE4F21BF322
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Mar 2023 09:10:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B51A4417CC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Mar 2023 09:10:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B51A4417CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y4CWXhJQJLlc for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Mar 2023 09:10:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B3F7440934
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B3F7440934
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Mar 2023 09:10:18 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id AE097B811A1;
 Thu,  2 Mar 2023 09:10:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 118F2C433EF;
 Thu,  2 Mar 2023 09:10:11 +0000 (UTC)
Date: Thu, 2 Mar 2023 11:10:08 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20230302091008.GA561905@unreal>
References: <20230301115908.47995-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230301115908.47995-1-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1677748212;
 bh=UZHjTt3WcAHN0hlxS276lYr5jPZwtybl0ohiW2kCEiU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=N1x2z3qXQML4+BOJD7c4cF7FwMgMh8QfPe2mlaTVD8B7t6djp/P7UqujWYwC9gjUG
 6xd4i4FZVm3LkaQjKgJ0HtC2RbpPuv5ycZmCWy84ZYinZzhcG4L6ZMSFxfHJU0D3I2
 bY1UjGO68LlkSzeikb6tDF08t+oPLJ5KB1JMlJXgCXTWbNfEHW0YVew6ZxXwbQsV40
 RKO65PdWaVB3K5Y1SgAuCR2oMm6JIs5YW7cGg4W6bFCyKRW2IBQm3AOLlJDX2aR+wm
 LpJ1kG4yXWAck9Shifpf6M9Ln4TLJeRofygXvesY+dC6H6UXHz4oZeiyo2SVKfX9zT
 LRXHhJPWM3KgA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=N1x2z3qX
Subject: Re: [Intel-wired-lan] [PATCH RESEND net v1 0/2] iavf: fix
 double-broken HW hash report
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
Cc: Larysa Zaremba <larysa.zaremba@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 01, 2023 at 12:59:06PM +0100, Alexander Lobakin wrote:
> Currently, passing HW hash from descriptors to skb is broken two times.
> The first bug effectively disables hash from being filled at all, unless
> %NETIF_F_RXHASH is *disabled* via Ethtool. The second incorrectly says
> that IPv6 UDP packets are L3, which also triggers CPU hashing when
> needed (the networking core treats only L4 HW hash as "true").
> The very same problems were fixed in i40e and ice, but not in iavf,
> although each of the original commits bugged at least two drivers.
> It's never too late (I hope), so fix iavf this time.
> 
> Alexander Lobakin (2):
>   iavf: fix inverted Rx hash condition leading to disabled hash
>   iavf: fix non-tunneled IPv6 UDP packet type and hashing
> 

Thanks,
Reviewed-by: Leon Romanovsky <leonro@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
