Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4717AE4B3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Sep 2023 06:47:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 942B641DBB;
	Tue, 26 Sep 2023 04:47:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 942B641DBB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695703650;
	bh=8p70Gb9DtWZIhcjNrhUCxxjePGbEF1ekP1kZ7H6uIIM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cEJWOT8uLTR9XAnTqVS/ikVzbGWOrQ6rKMEF9Q5W+VpoFrqn6dHx40BBM82OoN3xL
	 A8z3Mutr4svEq785s4J6HPHh5UfKFUwC7O1yl32O0JqSVzAM34HarQ1N6tv+sbyk0a
	 BtYv3ohPNU3RWhtO8gxNNtceya3Er/LNJ8RT6ov7W3YspgKO8rnOyN+5pIviiZDKHV
	 uK4+GiVX9nSx2iXF6OJ12UeYCM75PsOTN5pnOiQDBk9FwhpEJT7o5lttX0AvSDGwkZ
	 kMO2+9f8ZDNXZGBDffMAmCcatzKD2hyDYrIarEIKVHQ47qap6JXAWUJ8myYnvRDsm8
	 syzvDnzqBUQnw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id birES440gUYL; Tue, 26 Sep 2023 04:47:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4000241DAE;
	Tue, 26 Sep 2023 04:47:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4000241DAE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5622F1BF2FA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 04:47:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2FA5261349
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 04:47:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2FA5261349
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nLQYyJcQcQR0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Sep 2023 04:47:22 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DF9D761343
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Sep 2023 04:47:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF9D761343
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 0C3A76129E;
 Tue, 26 Sep 2023 04:47:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2282C433C8;
 Tue, 26 Sep 2023 04:47:18 +0000 (UTC)
Date: Tue, 26 Sep 2023 06:47:16 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Yajun Deng <yajun.deng@linux.dev>
Message-ID: <2023092641-rind-seventh-c99b@gregkh>
References: <20230627022658.1876747-1-yajun.deng@linux.dev>
 <10269e86-ed8a-0b09-a39a-a5239a1ba744@intel.com>
 <72bfc00f-7c60-f027-61cb-03084021c218@linux.dev>
 <9e1b824f-04d3-4acb-66d3-a5f90afbad0e@intel.com>
 <ef08645e-9891-0d12-2c87-39ce0be52aee@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ef08645e-9891-0d12-2c87-39ce0be52aee@linux.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1695703639;
 bh=AMClMXoW/SwY9XBZNSxgkg0YbclLYYx39/FwqmsD/P4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rkUPrDB0Sc8Aa13mYevbDJwYR3shwPRBPjo91IL8D7otbra6/ar4Agns76mXyoPXl
 eeLGRc3tuiE7WXxMCDYBWAQpvPaTcUqMM658ZkEJ/Mn3e0EzkKCRsBGeBPc1/c+lE0
 m3yODV1yBiXYk1aszHeoF3KWwDedd6Iw704oDQ8E=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
 header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg
 header.b=rkUPrDB0
Subject: Re: [Intel-wired-lan] [PATCH] i40e: fix the wrong PTP frequency
 calculation
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
Cc: intel-wired-lan@lists.osuosl.org, richardcochran@gmail.com,
 jesse.brandeburg@intel.com, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Sep 26, 2023 at 09:54:29AM +0800, Yajun Deng wrote:
> 
> On 2023/9/26 07:59, Tony Nguyen wrote:
> > On 9/25/2023 12:55 AM, Yajun Deng wrote:
> > > 
> > > On 2023/6/28 04:20, Jacob Keller wrote:
> > > > 
> > > > On 6/26/2023 7:26 PM, Yajun Deng wrote:
> > > > > The new adjustment should be based on the base frequency, not the
> > > > > I40E_PTP_40GB_INCVAL in i40e_ptp_adjfine().
> > > > > 
> > > > > This issue was introduced in commit 3626a690b717 ("i40e: use
> > > > > mul_u64_u64_div_u64 for PTP frequency calculation"), and was fixed in
> > > > > commit 1060707e3809 ("ptp: introduce helpers to adjust by scaled
> > > > > parts per million"). However the latter is a new feature and
> > > > > hasn't been
> > > > > backported to the stable releases.
> > > > > 
> > > > > This issue affects both v6.0 and v6.1 versions, and the v6.1
> > > > > version is
> > > > > an LTS version.
> > > > > 
> > 
> > ...
> > 
> > > > 
> > > > Thanks for finding and fixing this mistake. I think its the
> > > > simplest fix
> > > > to get into the stable kernel that are broken, since taking the
> > > > adjust_by_scaled_ppm version would require additional patches.
> > > > 
> > > > Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> > > > 
> > > Kindly ping...
> > 
> > As this patch looks to be for stable, you need to follow the process for
> > that. I believe your situation would fall into option 3:
> > https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html#option-3
> > 
> > 
> Yes, it needs an upstream commit ID. But this patch didn't need to apply to
> the upstream.
> 
> As the commit of the patch, the issue was fixed in
> commit 1060707e3809 ("ptp: introduce helpers to adjust by scaled
> parts per million"). However the commit is a new feature and hasn't been
> backported to the stable releases.
> 
> Therefore, the patch does not have an upstream commit ID, and only needs to
> be applied to stable.

That wasn't very obvious to most of us, perhaps resend it and explicitly
ask for acks/reviews so it can be only applied to the 6.1.y tree?

thanks,

greg k-h
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
