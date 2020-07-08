Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 240FC21948F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jul 2020 01:48:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CA5A588DFA;
	Wed,  8 Jul 2020 23:48:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y9IAwIBfLBCd; Wed,  8 Jul 2020 23:48:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2D67E88E0D;
	Wed,  8 Jul 2020 23:48:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B5EA1BF592
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 23:48:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 571BB88DFA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 23:48:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KpjxUK3Bg-9x for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2020 23:48:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B7A4F88DF3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 23:48:14 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 49F3D20720;
 Wed,  8 Jul 2020 23:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594252094;
 bh=19UO96FB6A26kj4urfzwCUGYyyXLV9ts4L5kQP4qUs0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=MATxVHoguBUq7R9Yd80Ooopp/CjcJuQi3hIYsAVTONFysanJd4UX0sDhlRYVjajIR
 yrESSW7ZxisbtgUFc12Xadhmdg0uRvzWKygtop+71XWer6XRg+7+bOitaJJRj2N43G
 TSLmayAE7B4IBG5872/B/dpTmLX8N80NWjj6Weo0=
Date: Wed, 8 Jul 2020 16:48:12 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Message-ID: <20200708164812.384ae8ea@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <eca3253391dd34a267e607dbd847d6878bc3a6fe.camel@intel.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200701012557.40234-1-haiyue.wang@intel.com>
 <20200701012557.40234-6-haiyue.wang@intel.com>
 <eca3253391dd34a267e607dbd847d6878bc3a6fe.camel@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [net-next,
 v7 5/5] ice: add switch rule management for DCF
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Zhang,
 Xiao" <xiao.zhang@intel.com>, "Xing, Beilei" <beilei.xing@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 8 Jul 2020 22:55:21 +0000 Nguyen, Anthony L wrote:
> > @@ -490,7 +476,7 @@ ice_aq_alloc_free_vsi_list(struct ice_hw *hw, u16
> > *vsi_list_id,
> >   *
> >   * Add(0x02a0)/Update(0x02a1)/Remove(0x02a2) switch rules commands
> > to firmware
> >   */
> > -static enum ice_status
> > +enum ice_status
> >  ice_aq_sw_rules(struct ice_hw *hw, void *rule_list, u16
> > rule_list_sz,
> >  		u8 num_rules, enum ice_adminq_opc opc, struct ice_sq_cd
> > *cd)
> >  {  
> 
> Hi Dave, Jakub,
> 
> This feature is only built when CONFIG_PCI_IOV is set. We end up with
> this namespace issue using defconfig when checked against namespace.pl
> since CONFIG_PCI_IOV is not enabled.
> 	Externally defined symbols with no external references
>           ice_switch.o
>             ice_aq_sw_rules
> 
> From a previous patch, neither of you liked the use of CONFIG_ to
> control static-ness. I wanted to check that you are ok with the
> namespace issue or if you have a preferred method to resolve this
> issue. I appreciate your feedback.

IMHO that should be fine. I'd only trust namespace.pl on a all*config
kernel, if at all.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
