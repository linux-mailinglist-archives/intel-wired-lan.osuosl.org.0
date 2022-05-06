Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9920A51DD4E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 May 2022 18:13:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3B9EC4041C;
	Fri,  6 May 2022 16:13:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Opx3gsBn_Eqs; Fri,  6 May 2022 16:13:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 384C44038D;
	Fri,  6 May 2022 16:13:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1B8701BF860
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 May 2022 16:13:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 125544038D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 May 2022 16:13:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CSx0YVYdp5Lg for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 May 2022 16:13:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C7A3640002
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 May 2022 16:13:29 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id CB671CE3763;
 Fri,  6 May 2022 16:13:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B578EC385A9;
 Fri,  6 May 2022 16:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651853604;
 bh=RNXYPpzzqTC2kkQ/NsqO9QLdya4gsEDpth7e/HPVT+E=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=LT4wRNGj/d9pk/wbLYfrZDYgHSM0i1N7zd6BMTvTZ1ta0NhbLRdJsG7Qu0WV4TPAR
 6wLXugpRfuV2N7fxJFJj8VxNEmXmmFfWe2DMGVa85SOpxQMMsp6Z6dPdFOUJ/J4rFP
 U/FuaDF/jo8D9gWOoj3DIomtcrU3enEv1ndNvNWfN8V9ba4kp34ek25GcrksW1BeKZ
 byd4+8KA2RD1yjz/T109mx2Qih/XKiMmiEtJdewHdqGwdWzPEtRoCss6XMVjHuQ46d
 TIBqgHNkDyyQFMn8xkyuHnoSxo30HwSJNJkpbyqk7xWMhrHVj69bbhG40RIj9ozUds
 9+kMDmkypfgpA==
Date: Fri, 6 May 2022 09:13:22 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Maximilian Heyne <mheyne@amazon.de>
Message-ID: <20220506091322.1be7ee6e@kernel.org>
In-Reply-To: <20220506064440.57940-1-mheyne@amazon.de>
References: <20220504201632.2a41a3b9@kernel.org>
 <20220506064440.57940-1-mheyne@amazon.de>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] drivers,
 ixgbe: show VF statistics
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 6 May 2022 06:44:40 +0000 Maximilian Heyne wrote:
> On 2022-05-04T20:16:32-07:00   Jakub Kicinski <kuba@kernel.org> wrote:
> 
> > On Tue, 3 May 2022 15:00:17 +0000 Maximilian Heyne wrote:  
> > > +		for (i = 0; i < adapter->num_vfs; i++) {
> > > +			ethtool_sprintf(&p, "VF %u Rx Packets", i);
> > > +			ethtool_sprintf(&p, "VF %u Rx Bytes", i);
> > > +			ethtool_sprintf(&p, "VF %u Tx Packets", i);
> > > +			ethtool_sprintf(&p, "VF %u Tx Bytes", i);
> > > +			ethtool_sprintf(&p, "VF %u MC Packets", i);
> > > +		}  
> > 
> > Please drop the ethtool stats. We've been trying to avoid duplicating
> > the same stats in ethtool and iproute2 for a while now.
> 
> I can see the point that standard metrics should only be reported via the
> iproute2 interface. However, in this special case this patch was
> intended to converge the out-of-tree driver with the in-tree version.
> These missing stats were breaking our userspace. If we now switch
> solely to iproute2 based statistics both driver versions would
> diverge even more. So depending on where a user gets the ixgbe driver
> from, they have to work-around.
> 
> I can change the patch as requested, but it will contradict the inital
> intention. At least Intel should then port this change to the
> external driver as well. Let's get a statement from them.

Ack, but we really want people to move towards using standard stats.

Can you change the user space to first try reading the stats via
iproute2/rtnetlink? And fallback to random ethtool strings if not
available? That way it will work with any driver implementing the
standard API. Long term that'll make everyone's life easier.

Out-of-tree code cannot be an argument upstream, otherwise we'd
completely lose control over our APIs. Vendors could ship whatever
in their out of tree repo and then force us to accept it upstream.

It's disappointing to see the vendor letting the uAPI of the out of
tree driver diverge from upstream, especially a driver this mature.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
