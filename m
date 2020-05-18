Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0320A1D8AB3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 00:23:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AA54087F52;
	Mon, 18 May 2020 22:23:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HUbpTn+YD4Ru; Mon, 18 May 2020 22:23:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CADD9885CD;
	Mon, 18 May 2020 22:23:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9815F1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2020 22:23:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8AFE787F31
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2020 22:23:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vaj6q6mxnZbQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 May 2020 22:23:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1CC5086005
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2020 22:23:02 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8610220674;
 Mon, 18 May 2020 22:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589840581;
 bh=oX/+VVCg382kthfze6L6wbfJgvB2RvT/y5oG/CZkNXY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=s8Tq0lUEBa8G+/8vEJcL8+3Kbcsh2xrZ6R0SvCzz4XrzhUSQuH2o8YCOT21zMNSeE
 VVA0MZc5fBjZMD7jm9+jrnRNoq7qlVtKqmDhVWzuFmSVUqRr+ag9PW1zJB/wjb6XFO
 b0NX53cTKDiw0Mctxwrl+8iHH5wHcQtagpkh49YA=
Date: Mon, 18 May 2020 15:22:59 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20200518152259.29d2e3c7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <87h7wcq4nx.fsf@intel.com>
References: <20200516012948.3173993-1-vinicius.gomes@intel.com>
 <20200516.133739.285740119627243211.davem@davemloft.net>
 <CA+h21hoNW_++QHRob+NbWC2k7y7sFec3kotSjTL6s8eZGGT+2Q@mail.gmail.com>
 <20200516.151932.575795129235955389.davem@davemloft.net>
 <87wo59oyhr.fsf@intel.com>
 <20200518135613.379f6a63@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <87h7wcq4nx.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next-queue RFC 0/4] ethtool: Add support for
 frame preemption
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
Cc: Jose.Abreu@synopsys.com, vladimir.oltean@nxp.com, po.liu@nxp.com,
 m-karicheri2@ti.com, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 olteanv@gmail.com, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 18 May 2020 15:06:26 -0700 Vinicius Costa Gomes wrote:
> Jakub Kicinski <kuba@kernel.org> writes:
> >
> > Please take a look at the example from the cover letter:
> >
> > $ ethtool $ sudo ./ethtool --show-frame-preemption
> > enp3s0 Frame preemption settings for enp3s0:
> > 	support: supported
> > 	active: active
> > 	supported queues: 0xf
> > 	supported queues: 0xe
> > 	minimum fragment size: 68
> >
> > Reading this I have no idea what 0xe is. I have to go and query TC API
> > to see what priorities and queues that will be. Which IMHO is a strong
> > argument that this information belongs there in the first place.  
> 
> That was the (only?) strong argument in favor of having frame preemption
> in the TC side when this was last discussed.
> 
> We can have a hybrid solution, we can move the express/preemptible per
> queue map to mqprio/taprio/whatever. And have the more specific
> configuration knobs, minimum fragment size, etc, in ethtool.
> 
> What do you think?

Does the standard specify minimum fragment size as a global MAC setting?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
