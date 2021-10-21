Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 830E94363BB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Oct 2021 16:05:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2D91407FD;
	Thu, 21 Oct 2021 14:05:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2HBiuYdfmTjK; Thu, 21 Oct 2021 14:05:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9BE140240;
	Thu, 21 Oct 2021 14:05:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AFC361BF865
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 07:09:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A444340520
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 07:09:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pDatmI81EqfF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Oct 2021 07:09:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1D7D5404B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 07:09:46 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 759C7606A5;
 Thu, 21 Oct 2021 07:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634800185;
 bh=jSUySDz8lzTVjjSD+1bRdCp3Zigy7nDut3K7EhQ19Ss=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZgSZM0i0iMVGrkWnBIazW/Qx49Yz3PQWFlRDu8Vo0r8yKsOQLlI3jFLApU4vDCkr2
 cFdABA9S5CblrjvDriVFWzwrlw+PtWeJvCND32jOWTw5fbTgAJdxIS6guoYTON2TQg
 sfx0oAyWAkeDYgDzZddL2WjhUu35bKWBR8lETlRpXgHPZRSFM8K0LLNGlDzYXwn7Tl
 nd/c1YUBzK1zBnvRewtf//2EOg+2oyNjU5jRlgMm1L7cCc6M5CJWovTGoYKEe70uV/
 /qP3JBGBESFNNPGa6OtZ1uBc3Ke3Cfeo75PbvyjMAdwRLTDyCA2PxbbKenIFDqJbJJ
 8Y5uuVzfrIltw==
Date: Thu, 21 Oct 2021 09:09:40 +0200
From: Simon Horman <horms@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@gmail.com>
Message-ID: <20211021070937.GA9814@kernel.org>
References: <20211018085305.853996-1-luo.penghao@zte.com.cn>
 <20211020092537.GF3935@kernel.org>
 <CAEuXFEzXSU-Ws6T_8TBVfgskh4VA14LmirFYSjdQpwtndfeeww@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEuXFEzXSU-Ws6T_8TBVfgskh4VA14LmirFYSjdQpwtndfeeww@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Approved-At: Thu, 21 Oct 2021 14:05:01 +0000
Subject: Re: [Intel-wired-lan] [PATCH linux-next] e1000: Remove redundant
 statement
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
Cc: luo penghao <cgel.zte@gmail.com>, Zeal Robot <zealci@zte.com.cn>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 luo penghao <luo.penghao@zte.com.cn>, intel-wired-lan@lists.osuosl.org,
 NetDEV list <netdev@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Oct 20, 2021 at 11:08:11AM -0700, Jesse Brandeburg wrote:
> Apologies for the duplicates, mail from my intel account going out
> through outlook.com is not being delivered.
> 
> On Wed, Oct 20, 2021 at 7:00 AM Simon Horman <horms@kernel.org> wrote:
> 
> > > Value stored to 'ctrl_reg' is never read.
> >
> > I agree this does seem to be the case.
> >
> > > Reported-by: Zeal Robot <zealci@zte.com.cn>
> > > Signed-off-by: luo penghao <luo.penghao@zte.com.cn>
> >
> > Reviewed-by: Simon Horman <horms@kernel.org>
> 
> Thanks for the review, but (davem/kuba) please do not apply.

Thanks, and sorry for misunderstanding the patch.

> 
> > > @@ -1215,8 +1215,6 @@ static int e1000_integrated_phy_loopback(struct e1000_adapter *adapter)
> > >               e1000_write_phy_reg(hw, PHY_CTRL, 0x8140);
> > >       }
> > >
> > > -     ctrl_reg = er32(CTRL);
> 
> Thanks for your patch, but this change is not safe. you're removing a
> read that could do two things. The first is that the read "flushes"
> the write just above to PCI (it's a PCI barrier), and the second is
> that the read can have some side effects.
> 
> If this change must be done, the code should be to remove the
> assignment to ctrl_reg, but leave the read, so the line would just
> look like:
>         er32(CTRL);
> 
> This will get rid of the warning and not change the flow from the
> hardware perspective.
> 
> > > -
> > >       /* force 1000, set loopback */
> > >       e1000_write_phy_reg(hw, PHY_CTRL, 0x4140);
> > >
> 
> Please do not apply this.
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
