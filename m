Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E52BB52BE5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Sep 2025 10:37:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D53941F54;
	Thu, 11 Sep 2025 08:37:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xOoyQykRuiFJ; Thu, 11 Sep 2025 08:37:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 805FB41F49
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757579846;
	bh=WFHPiCMPnjnoNbmUJ5kb6pIaH97MNd9OYVzBnbbZ4k8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Gig4m+F9uBIPz6+S+4sibpdnuAEvLtjNnY+nKtnhtnwn5FIT4Yn9DqGUt8Mo22lhE
	 m76bPDd+Kz+kRJc6U594buztOOYUzOu/G8SJVTzluGwXBD8NbExrn7Mooi8lznfh86
	 iHjPYQbAR39jHM5WLRKcZfTtT6yVZCI9N8EaDjHt7Knjj6LjihDt4aOaYmmjN1Rx0p
	 xjJ7ER3ujrHy4piufq/1viSY3PfqAbQQJ3Ds7X7UFGQ9DZjdf1mmL0OOpByakjy3od
	 NcQrmjaMRe4BEMpCIiCsJcMYEl/9rwXp0lzgYU9GqqHibf3ICRLwxivZXCsyTF019N
	 9bw65MsMSQ5Og==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 805FB41F49;
	Thu, 11 Sep 2025 08:37:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5F21F234
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 08:37:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 50DB1416C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 08:37:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2Bq_spfR8jah for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Sep 2025 08:37:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=gregkh@linuxfoundation.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5008041670
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5008041670
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5008041670
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 08:37:24 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id C495260141;
 Thu, 11 Sep 2025 08:37:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10E4BC4CEF1;
 Thu, 11 Sep 2025 08:37:21 +0000 (UTC)
Date: Thu, 11 Sep 2025 10:37:19 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Farber, Eliav" <farbere@amazon.com>
Cc: "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "vitaly.lifshits@intel.com" <vitaly.lifshits@intel.com>,
 "post@mikaelkw.online" <post@mikaelkw.online>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Chocron, Jonathan" <jonnyc@amazon.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Message-ID: <2025091122-obsolete-earthen-8c9b@gregkh>
References: <20250910173138.8307-1-farbere@amazon.com>
 <2025091131-tractor-almost-6987@gregkh>
 <f524c24888924a999c3bb90de0099b78@amazon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f524c24888924a999c3bb90de0099b78@amazon.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1757579842;
 bh=XslGsUoupOrtKg0lfUcpg0DWyp4IyzJwG6qK2UD+EvA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=onzkfL6g4ORhBQHe5opjlNM4i/9UWLfnOlBcbo6tco7YIiVmFxoBXNzNlvZouFfhM
 cElFlnyK2WOHyP/Tf/ViME1lb6m2jIPpF/8y22493TMwBHxZgTFlKq13ZFrf/U3bjr
 gnlCTs9l2sHTZEsaoiT4R7IZ2Tdp9+IXckb1vcuY=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linuxfoundation.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org
 header.a=rsa-sha256 header.s=korg header.b=onzkfL6g
Subject: Re: [Intel-wired-lan] [PATCH 5.10.y] e1000e: fix EEPROM length
 types for overflow checks
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

On Thu, Sep 11, 2025 at 06:13:33AM +0000, Farber, Eliav wrote:
> > On Wed, Sep 10, 2025 at 05:31:38PM +0000, Eliav Farber wrote:
> >> Fix a compilation failure when warnings are treated as errors:
> >>
> >> drivers/net/ethernet/intel/e1000e/ethtool.c: In function ‘e1000_set_eeprom’:
> >> ./include/linux/overflow.h:71:15: error: comparison of distinct pointer types lacks a cast [-Werror]
> >>    71 |  (void) (&__a == __d);   \
> >>       |               ^~
> >> drivers/net/ethernet/intel/e1000e/ethtool.c:582:6: note: in expansion of macro ‘check_add_overflow’
> >>   582 |  if (check_add_overflow(eeprom->offset, eeprom->len, &total_len) ||
> >>       |      ^~~~~~~~~~~~~~~~~~
> >>
> >> To fix this, change total_len and max_len from size_t to u32 in 
> >> e1000_set_eeprom().
> >> The check_add_overflow() helper requires that the first two operands 
> >> and the pointer to the result (third operand) all have the same type.
> >> On 64-bit builds, using size_t caused a mismatch with the u32 fields
> >> eeprom->offset and eeprom->len, leading to type check failures.
> >>
> >> Fixes: ce8829d3d44b ("e1000e: fix heap overflow in e1000_set_eeprom")
> >> Signed-off-by: Eliav Farber <farbere@amazon.com>
> >> ---
> >>  drivers/net/ethernet/intel/e1000e/ethtool.c | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c 
> >> b/drivers/net/ethernet/intel/e1000e/ethtool.c
> >> index 4aca854783e2..584378291f3f 100644
> >> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
> >> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
> >> @@ -559,7 +559,7 @@ static int e1000_set_eeprom(struct net_device 
> >> *netdev,  {
> >>       struct e1000_adapter *adapter = netdev_priv(netdev);
> >>       struct e1000_hw *hw = &adapter->hw;
> >> -     size_t total_len, max_len;
> >> +     u32 total_len, max_len;
> >>       u16 *eeprom_buff;
> >>       int ret_val = 0;
> >>       int first_word;
> >> --
> >> 2.47.3
> >>
> >
> > Why is this not needed in Linus's tree?
> Kernel 5.10.243 enforces the same type, but this enforcement is
> absent from 5.15.192 and later:
> /*
>  * For simplicity and code hygiene, the fallback code below insists on
>  * a, b and *d having the same type (similar to the min() and max()
>  * macros), whereas gcc's type-generic overflow checkers accept
>  * different types. Hence we don't just make check_add_overflow an
>  * alias for __builtin_add_overflow, but add type checks similar to
>  * below.
>  */
> #define check_add_overflow(a, b, d) __must_check_overflow(({	\

Yeah, the min() build warning mess is slowly propagating back to older
kernels over time as we take these types of fixes backwards.  I count 3
such new warnings in the new 5.10 release, not just this single one.

Overall, how about fixing this up so it doesn't happen anymore by
backporting the min() logic instead?  That should solve this build
warning, and keep it from happening again in the future?  I did that for
newer kernel branches, but never got around to it for these.

thanks,

greg k-h
