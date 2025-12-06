Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A07EDCAA397
	for <lists+intel-wired-lan@lfdr.de>; Sat, 06 Dec 2025 10:46:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4895D6089F;
	Sat,  6 Dec 2025 09:46:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GkNVF8MTC8Dv; Sat,  6 Dec 2025 09:46:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA0C260858
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765014412;
	bh=7/6PErPoFo4vdZRP4EltHPX6W3CfWEtx5jCwNWxJMbI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=346ZkOesdWsjuB955scWLwtLiK45eX9w9Lf76diZVEFN16SxydtFKG/b8v3rgJM8a
	 x2/KykkXTDYw0UajR0LupdeUDVj7DJHZYbfJRa+Ds0HUZCheRI1P6DmYWmEYJieOb8
	 GLuvHicDXPHDQbxvcD0Eukjj8p5xJKYBbHlVcJ4GTrk6BkKO84JjO7NeRTSgfmilmN
	 9yDqIBG05P+7yEAAYf1x/OX3npku7qvnAFNG3AyPYGHcH62t6yqTTpB4dPYQGG0+/v
	 b1bjsejQo5SCcCwrJlF8jq0351V51RgnT6dn4TdFAYxeJBnBvS4l9fdLo7+J1FKV2m
	 imPpL2ONz0wiw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA0C260858;
	Sat,  6 Dec 2025 09:46:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 933D5151
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Dec 2025 09:46:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 903EC60835
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Dec 2025 09:46:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5Q00jiIipe-4 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  6 Dec 2025 09:46:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C9ED5607D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9ED5607D4
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C9ED5607D4
 for <intel-wired-lan@lists.osuosl.org>; Sat,  6 Dec 2025 09:46:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 17F4A60138;
 Sat,  6 Dec 2025 09:46:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44578C4CEF5;
 Sat,  6 Dec 2025 09:46:46 +0000 (UTC)
Date: Sat, 6 Dec 2025 09:46:43 +0000
From: Simon Horman <horms@kernel.org>
To: Ding Hui <dinghui@sangfor.com.cn>
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Message-ID: <aTP7g5lmRMF5YtQO@horms.kernel.org>
References: <20251205081609.23091-1-dinghui@sangfor.com.cn>
 <IA3PR11MB898665810DD47854F80941A7E5A7A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <1188a9d2-a895-478b-9474-0fb84b4e2636@sangfor.com.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1188a9d2-a895-478b-9474-0fb84b4e2636@sangfor.com.cn>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1765014408;
 bh=mibpu5ArLdj7E6P+wv/Tga2hbhE3zGh7mAv/AFvjc2A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mM1x98uWRX+8PTXnr8YFotNaKI8LsU1a/gkySZPBWlZP+uIXy2V9XvprGCVmyRqel
 TeNyRyrfkhvxq5u4P0trcbP+OROpjOkVANAYvHQjRwHO964kFpXiSj9pTwqS+EBMZA
 Q49lcLF+yfyFGJOvIpWVUYdjQdox8upjZ5IvNXsJRNR7JlwBPw7CigVRW5U0EeNtZ+
 qJ4cP4wPk6iHq2DcBT1nAkvl88f6sXRlYZZdI0jSneeqypMR+/H+8reU6VbWpIFHi2
 bnD6UXjoGj4fAcbmT6Jv94XwjIl9E46h6c57C/71LTMzuGVQvHYXWp5jJXvnVDexU/
 wuNr5UEG+OrCQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=mM1x98uW
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix incorrect timeout
 in ice_release_res()
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

On Sat, Dec 06, 2025 at 10:42:36AM +0800, Ding Hui wrote:
> On 2025/12/6 5:09, Loktionov, Aleksandr wrote:
> > 
> > 
> > > -----Original Message-----
> > > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > > Of Ding Hui
> > > Sent: Friday, December 5, 2025 9:16 AM
> > > To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> > > Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> > > davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> > > pabeni@redhat.com; Keller, Jacob E <jacob.e.keller@intel.com>; intel-
> > > wired-lan@lists.osuosl.org
> > > Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Ding, Hui
> > > <dinghui@sangfor.com.cn>
> > > Subject: [Intel-wired-lan] [PATCH net-next] ice: Fix incorrect timeout
> > > in ice_release_res()
> > > 
> > > The commit 5f6df173f92e ("ice: implement and use rd32_poll_timeout for
> > > ice_sq_done timeout") converted ICE_CTL_Q_SQ_CMD_TIMEOUT from jiffies
> > > to microseconds.
> > > 
> > > But the ice_release_res() function was missed, and its logic still
> > > treats ICE_CTL_Q_SQ_CMD_TIMEOUT as a jiffies value.
> > > 
> > > So correct the issue by usecs_to_jiffies().
> > > 
> > 
> > Please add a brief "how verified" paragraph (platform + steps).
> > This is a unit-conversion fix in a timeout path; a short test description helps reviewers and stable backports validate the change.
> > 
> Sorry for not being able to provide the verification information, as
> I haven't actually encountered this issue.
> 
> The ice_release_res() is almost always invoked during downloading DDP
> when modprobe ice.
> 
> IMO, it seems like that only when the NIC hardware or firmware enters
> a bad state causing single command to fail or timeout (1 second), and
> then here do the retry logic (10 senconds).
> 
> So it's hard to validate on healthy NIC, maybe inject faults in low level
> function, such as ice_sq_send_cmd().

In that case I would suggest adding something like this:

Found by inspection (or static analysis, or a specific tool if publicly
available, ...).
Compile tested only.

> 
> > And you can add my:
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > 
> > 
> > > Fixes: 5f6df173f92e ("ice: implement and use rd32_poll_timeout for
> > > ice_sq_done timeout")
> > > Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>
> > > ---
> > >   drivers/net/ethernet/intel/ice/ice_common.c | 2 +-
> > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
> > > b/drivers/net/ethernet/intel/ice/ice_common.c
> > > index 6fb0c1e8ae7c..5005c299deb1 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_common.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> > > @@ -1885,7 +1885,7 @@ void ice_release_res(struct ice_hw *hw, enum
> > > ice_aq_res_ids res)
> > >   	/* there are some rare cases when trying to release the
> > > resource
> > >   	 * results in an admin queue timeout, so handle them correctly
> > >   	 */
> > > -	timeout = jiffies + 10 * ICE_CTL_Q_SQ_CMD_TIMEOUT;
> > > +	timeout = jiffies + 10 *
> > > usecs_to_jiffies(ICE_CTL_Q_SQ_CMD_TIMEOUT);
> > >   	do {
> > >   		status = ice_aq_release_res(hw, res, 0, NULL);
> > >   		if (status != -EIO)
> > > --
> > > 2.17.1
> > 
> > 
> > 
> 
> -- 
> Thanks,
> - Ding Hui
> 
> 
