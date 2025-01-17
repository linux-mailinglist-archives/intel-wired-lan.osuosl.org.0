Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3BEA15655
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jan 2025 19:09:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C50542646;
	Fri, 17 Jan 2025 18:09:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RAhZ-CiIuIs9; Fri, 17 Jan 2025 18:09:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A57DB42648
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737137393;
	bh=/zZJFazEx9HTvQSOAdPU4Gn8QhfPEv8lLyE+1K6q9bE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=71/TLxbVIBmftddM01cuIpq0mYBiuU3n52SsaqYKe3xY1j6iDM3n8ivKuyyl95bDr
	 rE8UUKGSy3gwhkZ0Q6Awk7V9Hy2+rngJ9obhcSQ5KbMtLrePMO/JumbsSsPuxon0TT
	 guBSQcZaRL6zoMmFgxsEDrZPp10BesGNgDZvgdXdN3CxjzU6E+/uE0qPPhPPxaHG8R
	 QRN4nZgOb61yTl03c1xpa7LBNXxx3YzwFDRSL8/vGjYcHExls7G8fA9wq69A9kXwU2
	 kYI7zMRGYu4vruGEkqP1r6GyLUh1KF/Q6WiRA530aGYuvpm2ktOhRv7il5RooV9YwS
	 gbEu2XGGTsYDQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A57DB42648;
	Fri, 17 Jan 2025 18:09:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 60A6BB89
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 18:09:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3692042649
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 18:09:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o-I59M5a3Zop for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jan 2025 18:09:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 017F642584
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 017F642584
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 017F642584
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 18:09:49 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 23CE55C01DF;
 Fri, 17 Jan 2025 18:09:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B455C4CEDD;
 Fri, 17 Jan 2025 18:09:45 +0000 (UTC)
Date: Fri, 17 Jan 2025 18:09:44 +0000
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: anthony.l.nguyen@intel.com, piotr.kwapulinski@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, michal.swiatkowski@linux.intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Dheeraj Reddy Jonnalagadda <dheeraj.linuxdev@gmail.com>
Message-ID: <20250117180944.GS6206@kernel.org>
References: <20250115034117.172999-1-dheeraj.linuxdev@gmail.com>
 <20250116162157.GC6206@kernel.org>
 <fe142f22-caff-4cab-9f6f-56d55e63f210@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fe142f22-caff-4cab-9f6f-56d55e63f210@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1737137388;
 bh=dRX2pNbw1PNaq1oqbndws4A+VHEbP22T4MdAdAJq4Gc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UMwUEUdb/oXv+XgGXtUncYQzxoMCOIR35I/vTqOfK/aOFGFvkDpdihtpxn8GYmMxM
 fmookhl0/WwzdsAixh8dMP5b6O2BRRc+FfgnN0HvoZstMsA637EI9r9JvAjuYHtB7b
 MCPAl84fGKkSOF5dQd8SNjMCbFAN70Xywf6RpsrdsRulHYejl25xS2DzDkjctO14qz
 W/TzCZvcJeMReeADT01MYuCpegjH7pq1RjwtAsg+x5C8Q5osp+Xq3KA4HXfmAhxWjI
 j/8Uw859aXDqjM+iYt60bWmWi1k4cJ9P4O+vHlhh2DHJ2jKc5qMHjOBCy+aL2PlKkT
 qPnaarytJGPyA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=UMwUEUdb
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next] ixgbe: Fix endian
 handling for ACI descriptor registers
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

On Fri, Jan 17, 2025 at 11:01:22AM +0100, Przemek Kitszel wrote:
> On 1/16/25 17:21, Simon Horman wrote:
> > On Wed, Jan 15, 2025 at 09:11:17AM +0530, Dheeraj Reddy Jonnalagadda wrote:
> > > The ixgbe driver was missing proper endian conversion for ACI descriptor
> > > register operations. Add the necessary conversions when reading and
> > > writing to the registers.
> > > 
> > > Fixes: 46761fd52a88 ("ixgbe: Add support for E610 FW Admin Command Interface")
> > > Closes: https://scan7.scan.coverity.com/#/project-view/52337/11354?selectedIssue=1602757
> > > Signed-off-by: Dheeraj Reddy Jonnalagadda <dheeraj.linuxdev@gmail.com>
> > 
> > Hi Dheeraj,
> > 
> > It seems that Sparse is not very happy about __le32 values appearing
> > where u32 ones are expected. I wonder if something like what is below
> > (compile tested only!) would both address the problem at hand and
> > keep Sparse happy (even if negting much of it's usefulness by using casts).
> > 
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
> > index 6639069ad528..8b3787837128 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
> > @@ -150,6 +150,9 @@ static inline void ixgbe_write_reg(struct ixgbe_hw *hw, u32 reg, u32 value)
> >   }
> >   #define IXGBE_WRITE_REG(a, reg, value) ixgbe_write_reg((a), (reg), (value))
> 
> Simon,
> 
> As all ixgbe registers are LE, it would be beneficial to change
> ixgbe_write_reg(), as @value should be __le32, (perhaps @reg too).
> Similar for 64b.

Understood, sounds good to me.

> This clearly would not be a "fix" material, as all call sites should be
> examined to check if they conform.

Sure, that also seems reasonable.
But do you also think a more minimal fix is in order?

> 
> > +#define IXGBE_WRITE_REG_LE32(a, reg, value) \
> > +	ixgbe_write_reg((a), (reg), (u32 __force)cpu_to_le32(value))
> > +
> 
