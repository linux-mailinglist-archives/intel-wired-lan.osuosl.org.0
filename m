Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 278CDB54FD2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Sep 2025 15:41:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BBBB7610F5;
	Fri, 12 Sep 2025 13:41:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 45dsfk0cz5N9; Fri, 12 Sep 2025 13:41:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 21E0C61117
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757684486;
	bh=Xk0zJbinXtFiHo7z1Yz/xU7EX6mwcDAwWyowGSY945g=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=b2mZVzDkrmmGq5E4ZhaRK5Bus9Lu7JD+N3DBhlg15JMC+Fkch3teRd2hcsg2lBskc
	 yiXSjj0Z9anNofDoIwi8WLcrNQt0lFXZ1+aD86vtPKYuHd7kdPmRs1vjDwK5gTe8lI
	 blMx6Ru+EUtNcUlMxoMaE+/tag/6a2HBEKDMtq1UoDKPuOZ5SvA5LkApzhFU9I4EWI
	 hJpoZZJv1BP/SuFv0k4ECJCbKke/vvo3qF622qbFwbkeicjffqX9h8hIaKsqZve+rF
	 d463o7s6JK4BeW+LWpGT9C2hdMoozs0On+Phr+7oaUseoLdcZf6Ov0RrEaNH/KV/lI
	 RRtIhavK6rf7Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 21E0C61117;
	Fri, 12 Sep 2025 13:41:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 970FB12D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:41:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7C89E405AA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:41:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4AFCv858veK1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Sep 2025 13:41:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=gregkh@linuxfoundation.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AD68240594
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD68240594
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AD68240594
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:41:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 116F4601E8;
 Fri, 12 Sep 2025 13:41:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F163C4CEF1;
 Fri, 12 Sep 2025 13:41:21 +0000 (UTC)
Date: Fri, 12 Sep 2025 15:41:18 +0200
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
Message-ID: <2025091212-resisting-untangled-9b8c@gregkh>
References: <20250910173138.8307-1-farbere@amazon.com>
 <2025091131-tractor-almost-6987@gregkh>
 <f524c24888924a999c3bb90de0099b78@amazon.com>
 <2025091122-obsolete-earthen-8c9b@gregkh>
 <5614ed5db9bd412cb43a78ad656eb433@amazon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5614ed5db9bd412cb43a78ad656eb433@amazon.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1757684481;
 bh=IQD/44xloBE/2XlP+vvhvuHqjMWdWOvkrm0BIe5JmS8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LlA/h/RLK6XWt3zFTa4qAvpyo/uBfpP6m4SrZuOOQMkfS+NAyFaZbo6x+mEYZsefg
 6BfJlPhdy+Dipm6Nq4oIENE/Q0eD/qqtuolGtIFJv7PU2uIMsCbJL4I2GA3/mMH9t0
 boSNv79YjwOfXxt8YDwZdrPFv1M2oO2ZqaDAl1Kg=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linuxfoundation.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org
 header.a=rsa-sha256 header.s=korg header.b=LlA/h/RL
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

On Fri, Sep 12, 2025 at 01:07:35PM +0000, Farber, Eliav wrote:
> > On Thu, Sep 11, 2025 at 06:13:33AM +0000, Farber, Eliav wrote:
> > > > On Wed, Sep 10, 2025 at 05:31:38PM +0000, Eliav Farber wrote:
> > > >> Fix a compilation failure when warnings are treated as errors:
> > > >>
> > > >> drivers/net/ethernet/intel/e1000e/ethtool.c: In function ‘e1000_set_eeprom’:
> > > >> ./include/linux/overflow.h:71:15: error: comparison of distinct pointer types lacks a cast [-Werror]
> > > >>    71 |  (void) (&__a == __d);   \
> > > >>       |               ^~
> > > >> drivers/net/ethernet/intel/e1000e/ethtool.c:582:6: note: in expansion of macro ‘check_add_overflow’
> > > >>   582 |  if (check_add_overflow(eeprom->offset, eeprom->len, &total_len) ||
> > > >>       |      ^~~~~~~~~~~~~~~~~~
> > > >>
> > > >> To fix this, change total_len and max_len from size_t to u32 in
> > > >> e1000_set_eeprom().
> > > >> The check_add_overflow() helper requires that the first two operands
> > > >> and the pointer to the result (third operand) all have the same type.
> > > >> On 64-bit builds, using size_t caused a mismatch with the u32 fields
> > > >> eeprom->offset and eeprom->len, leading to type check failures.
> > > >>
> > > >> Fixes: ce8829d3d44b ("e1000e: fix heap overflow in e1000_set_eeprom")
> > > >> Signed-off-by: Eliav Farber <farbere@amazon.com>
> > > >> ---
> > > >>  drivers/net/ethernet/intel/e1000e/ethtool.c | 2 +-
> > > >>  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >>
> > > >> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c
> > > >> b/drivers/net/ethernet/intel/e1000e/ethtool.c
> > > >> index 4aca854783e2..584378291f3f 100644
> > > >> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
> > > >> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
> > > >> @@ -559,7 +559,7 @@ static int e1000_set_eeprom(struct net_device
> > > >> *netdev,  {
> > > >>       struct e1000_adapter *adapter = netdev_priv(netdev);
> > > >>       struct e1000_hw *hw = &adapter->hw;
> > > >> -     size_t total_len, max_len;
> > > >> +     u32 total_len, max_len;
> > > >>       u16 *eeprom_buff;
> > > >>       int ret_val = 0;
> > > >>       int first_word;
> > > >> --
> > > >> 2.47.3
> > > >>
> > > >
> > > > Why is this not needed in Linus's tree?
> > > Kernel 5.10.243 enforces the same type, but this enforcement is
> > > absent from 5.15.192 and later:
> > > /*
> > >  * For simplicity and code hygiene, the fallback code below insists on
> > >  * a, b and *d having the same type (similar to the min() and max()
> > >  * macros), whereas gcc's type-generic overflow checkers accept
> > >  * different types. Hence we don't just make check_add_overflow an
> > >  * alias for __builtin_add_overflow, but add type checks similar to
> > >  * below.
> > >  */
> > > #define check_add_overflow(a, b, d) __must_check_overflow(({  \
> >
> > Yeah, the min() build warning mess is slowly propagating back to older
> > kernels over time as we take these types of fixes backwards.  I count 3
> > such new warnings in the new 5.10 release, not just this single one.
> >
> > Overall, how about fixing this up so it doesn't happen anymore by
> > backporting the min() logic instead?  That should solve this build
> > warning, and keep it from happening again in the future?  I did that for
> > newer kernel branches, but never got around to it for these.
> 
> I did backporting of 4 commits to bring include/linux/overflow.h in
> line with v5.15.193 in order to pull commit 1d1ac8244c22 ("overflow:
> Allow mixed type arguments").
> I'll also check what can be done for include/linux/minmax.h.

Very cool, thank you!
