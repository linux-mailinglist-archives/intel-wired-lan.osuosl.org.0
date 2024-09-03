Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FFB996A239
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2024 17:25:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ABE5A606A8;
	Tue,  3 Sep 2024 15:25:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I0PCYlvkkjb3; Tue,  3 Sep 2024 15:25:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6E59606B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725377134;
	bh=DJrjaR0M4usQIzh5Ahg8OcW6L47OSxbuA+KWaNU8rh0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XDpy0psuAKxLoNoIGUhZoTVwq+Av/SoZ0W7UxoOU9H1BAvhvRQltTbKppbEiDAyYM
	 7BByx09lNDP/xQ2tZ20TTSwfEIB9ErR7sR40JAopWNpLSzUM+rWLSnaf9UifqNm7EW
	 GMGUZ4RpT7vdXdR6XrfCGOwe1+TLldBvIEPwVXROCPU+dFwThUTquxhwDNsPqoQSPM
	 N8QzkR8A71Klgkf2Jd21vtFGVjByC4K9JNCf/jpXgQBEEyW/LucX7Cjf2JiCcyh5YW
	 5jYChgoTZUmC9GwhWZetz3Q4hbF95PyP/AS421qUGUAaS9m3yBMClDbBX5Kb3D7nBh
	 uA7fyNK1bJK0w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A6E59606B8;
	Tue,  3 Sep 2024 15:25:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9C7ED1BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 15:25:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 88F2C40194
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 15:25:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9w2UZ6Y5nWHA for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Sep 2024 15:25:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5AF4440147
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5AF4440147
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5AF4440147
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 15:25:31 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id D17925C59F1;
 Tue,  3 Sep 2024 15:25:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D193C4CEC4;
 Tue,  3 Sep 2024 15:25:26 +0000 (UTC)
Date: Tue, 3 Sep 2024 16:25:24 +0100
From: Simon Horman <horms@kernel.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Message-ID: <20240903152524.GC4792@kernel.org>
References: <20240902-igc-ss-puts-v1-1-c66a73b532c7@kernel.org>
 <88384607-4fcf-4ab1-8edf-9258df0bbf3c@embeddedor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <88384607-4fcf-4ab1-8edf-9258df0bbf3c@embeddedor.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1725377130;
 bh=NzTUmUqb1pcIqhYJTsD/7reom8G6ax17uBj3IOYVPCI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZeaettQkOkHlYywmGqrgRmeCu5Hlh4aCuJLM9CPgIdPSLxLsW41+FsMRMltGu5pWE
 Ut3sRsMu9hi/VHGzoG6EBLUvSPdoiY/zQeii2rpiPDuNDfHf/jysRh6fQqJj6pxrqs
 dgUj27QwgA1tH3SHkIXI1Xq9QSYg05RhQ/3UwlDq/CHBuX6wLLN84+kSfgBfmAo1ZN
 4D3uQFqvo1abKTtKsgqCgLGfaBsmi8MZvlpGi1ll038LpaRUtPiVU9uqqGV4dPUr9L
 8N20lY4pGykKF0Z+SwfBDyYerAH4uJ7FdC45KnDtsgs2CEQCqYhQnCuvZlETiHb/sO
 GnQcHSdgb3tkA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ZeaettQk
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Consistently use
 ethtool_puts() to copy strings
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
Cc: Justin Stitt <justinstitt@google.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, llvm@lists.linux.dev,
 Nick Desaulniers <ndesaulniers@google.com>,
 Nathan Chancellor <nathan@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Bill Wendling <morbo@google.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Sep 02, 2024 at 01:55:41PM -0600, Gustavo A. R. Silva wrote:
> 
> 
> On 02/09/24 06:46, Simon Horman wrote:
> > ethtool_puts() is the preferred method for copying ethtool strings.
> > And ethtool_puts() is already used to copy ethtool strings in
> > igc_ethtool_get_strings(). With this patch igc_ethtool_get_strings()
> > uses it for all such cases.
> > 
> > In general, the compiler can't use fortification to verify that the
> > destination buffer isn't over-run when the destination is the first
> > element of an array, and more than one element of the array is to be
> > written by memcpy().
> > 
> > For the ETH_SS_PRIV_FLAGS the problem doesn't manifest as there is only
> > one element in the igc_priv_flags_strings array.
> > 
> > In the ETH_SS_TEST case, there is more than one element of
> > igc_gstrings_test, and from the compiler's perspective, that element is
> > overrun. In practice it does not overrun the overall size of the array,
> > but it is nice to use tooling to help us where possible. In this case
> > the problem is flagged as follows.
> > 
> > Flagged by clang-18 as:
> > 
> > In file included from drivers/net/ethernet/intel/igc/igc_ethtool.c:5:
> > In file included from ./include/linux/if_vlan.h:10:
> > In file included from ./include/linux/netdevice.h:24:
> > In file included from ./include/linux/timer.h:6:
> > In file included from ./include/linux/ktime.h:25:
> > In file included from ./include/linux/jiffies.h:10:
> > In file included from ./include/linux/time.h:60:
> > In file included from ./include/linux/time32.h:13:
> > In file included from ./include/linux/timex.h:67:
> > In file included from ./arch/x86/include/asm/timex.h:5:
> > In file included from ./arch/x86/include/asm/processor.h:19:
> > In file included from ./arch/x86/include/asm/cpuid.h:62:
> > In file included from ./arch/x86/include/asm/paravirt.h:21:
> > In file included from ./include/linux/cpumask.h:12:
> > In file included from ./include/linux/bitmap.h:13:
> > In file included from ./include/linux/string.h:374:
> > .../fortify-string.h:580:4: warning: call to '__read_overflow2_field' declared with 'warning' attribute: detected read beyond size of field (2nd parameter); maybe use struct_group()? [-Wattribute-warning]
> > 
> > And Smatch as:
> > 
> > .../igc_ethtool.c:771 igc_ethtool_get_strings() error: __builtin_memcpy() '*igc_gstrings_test' too small (32 vs 160)
> > 
> > Curiously, not flagged by gcc-14.
> > 
> > Compile tested only.
> > 
> > Signed-off-by: Simon Horman <horms@kernel.org>
> > ---
> >   drivers/net/ethernet/intel/igc/igc_ethtool.c | 8 ++++----
> >   1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > index 457b5d7f1610..ccace77c6c2d 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > @@ -768,8 +768,8 @@ static void igc_ethtool_get_strings(struct net_device *netdev, u32 stringset,
> >   	switch (stringset) {
> >   	case ETH_SS_TEST:
> > -		memcpy(data, *igc_gstrings_test,
> > -		       IGC_TEST_LEN * ETH_GSTRING_LEN);
> 
> I think this problem should be solved if we use the array's address,
> which in this case is `igc_gstrings_test`, instead of the address of
> the first row. So, the above should look as follows:
> 
> memcpy(data, igc_gstrings_test, IGC_TEST_LEN * ETH_GSTRING_LEN);

Thanks for the advice.
FWIIW, I do like the consistency of using ethtool_puts().
But, OTOH, your suggestion is much simpler.
I will send an updated the patch accordingly.

> 
> > +		for (i = 0; i < IGC_TEST_LEN; i++)
> > +			ethtool_puts(&p, igc_gstrings_test[i]);
> >   		break;
> >   	case ETH_SS_STATS:
> >   		for (i = 0; i < IGC_GLOBAL_STATS_LEN; i++)
> > @@ -791,8 +791,8 @@ static void igc_ethtool_get_strings(struct net_device *netdev, u32 stringset,
> >   		/* BUG_ON(p - data != IGC_STATS_LEN * ETH_GSTRING_LEN); */
> >   		break;
> >   	case ETH_SS_PRIV_FLAGS:
> > -		memcpy(data, igc_priv_flags_strings,
> > -		       IGC_PRIV_FLAGS_STR_LEN * ETH_GSTRING_LEN);
> 
> In this case, the code is effectively reading from the array's address.

True. In light of your other suggestion I'll drop this hung.
