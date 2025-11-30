Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 884BAC95033
	for <lists+intel-wired-lan@lfdr.de>; Sun, 30 Nov 2025 15:28:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D62140A5F;
	Sun, 30 Nov 2025 14:28:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sK3S8oK30tLC; Sun, 30 Nov 2025 14:28:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E34D440A5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764512929;
	bh=Pb9hJcO3+UO620FwgR6RJfcKsklrQKwS99UwBZ32lXY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LSRbWA+ZI2ePHXLysuWDQWHSl/ESciAN7z2eVo+PBFt1g7Jiya1NSVdlpOXzYPVOh
	 SJqpnVPQIiV/+qEWJi27M80qFnlUg0lb3RS+UiWy8Z7misKUVoPY4A0GcEsLLh00+Z
	 18hBUfS7gN9Jy4sMARC/8Rdp9vLf4VYwaZk+I/8Pzwgjyt+PuyJBgGpR+q3lOyRvap
	 //P+GpROAk+CsRrZdJljfyO1TufTY9tdo0PETf+XKnGZCCdFkC4hJRNxiB1RybPrHU
	 SkcNFKMK9tC1EffCT6SOofnzhoItRIdvxop3nRq92OJkr84+aixKga+YguYzFdbe5Q
	 1z9QcioSU+sjw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E34D440A5C;
	Sun, 30 Nov 2025 14:28:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 456A51A9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Nov 2025 14:28:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2DFEB40394
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Nov 2025 14:28:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BPwmt89s7ZHu for <intel-wired-lan@lists.osuosl.org>;
 Sun, 30 Nov 2025 14:28:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=151.80.40.192;
 helo=smtp.blochl.de; envelope-from=markus@blochl.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 83ABD4037E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 83ABD4037E
Received: from smtp.blochl.de (mail.blochl.de [151.80.40.192])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 83ABD4037E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 30 Nov 2025 14:28:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.blochl.de 446E14641E8A
Received: from WorkKnecht (ppp-93-104-7-227.dynamic.mnet-online.de
 [93.104.7.227])
 by smtp.blochl.de (Postfix) with ESMTPSA id 446E14641E8A;
 Sun, 30 Nov 2025 14:28:39 +0000 (UTC)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 1.4.3 at 449b6f9d6baf
Date: Sun, 30 Nov 2025 15:28:35 +0100
From: Markus =?utf-8?Q?Bl=C3=B6chl?= <markus@blochl.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>, 
 Markus =?utf-8?Q?Bl=C3=B6chl?= <markus.bloechl@ipetronik.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org
Message-ID: <zmw3whfzcipegeyxpydgctio62q3vlpktddhidu4lskffgr3uk@irzoprznarmd>
References: <20251119-i40e_ptp_link_down-v1-1-b351fed254b3@blochl.de>
 <5b824df7-205e-4356-a33b-9937a1367517@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5b824df7-205e-4356-a33b-9937a1367517@intel.com>
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.4
 (smtp.blochl.de [0.0.0.0]); Sun, 30 Nov 2025 14:28:39 +0000 (UTC)
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=blochl.de
X-Mailman-Original-Authentication-Results: mail.blochl.de;
 dmarc=none (p=none dis=none)
 header.from=blochl.de
X-Mailman-Original-Authentication-Results: mail.blochl.de;
 spf=fail smtp.mailfrom=blochl.de
Subject: Re: [Intel-wired-lan] [PATCH] i40e: fix ptp time increment while
 link is down
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

On Tue, Nov 25, 2025 at 02:48:20PM -0800, Tony Nguyen wrote:
> 
> 
> On 11/19/2025 8:09 AM, Markus Blöchl wrote:
> > When an X710 ethernet port with an active ptp daemon (like the ptp4l and phc2sys combo)
> > suddenly loses its link and regains it after a while, the ptp daemon has a hard time
> > to recover synchronization and sometimes entirely fails to do so.
> > 
> > The issue seems to be related to a wrongly configured increment while the link is down.
> > This could not be observed with the Intel reference driver. We identified the fix to appear in
> > Intels official ethernet-linux-i40e release version 2.17.4.
> > 
> > Include the relevant changes in the kernel version of this driver.
> > 
> > Fixes: beb0dff1251d ("i40e: enable PTP")
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Markus Blöchl <markus@blochl.de>
> > ---
> 
> ...
> 
> > --- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > @@ -847,6 +847,65 @@ void i40e_ptp_rx_hwtstamp(struct i40e_pf *pf, struct sk_buff *skb, u8 index)
> >   	i40e_ptp_convert_to_hwtstamp(skb_hwtstamps(skb), ns);
> >   }
> > +/**
> > + * i40e_ptp_get_link_speed_hw - get the link speed
> > + * @pf: Board private structure
> > + *
> > + * Calculate link speed depending on the link status.
> > + * Return the link speed.
> 
> Can you make this 'Return:' to conform with kdoc expectations?
> 
> > + **/
> > +static enum i40e_aq_link_speed i40e_ptp_get_link_speed_hw(struct i40e_pf *pf)
> > +{
> > +	bool link_up = pf->hw.phy.link_info.link_info & I40E_AQ_LINK_UP;
> > +	enum i40e_aq_link_speed link_speed = I40E_LINK_SPEED_UNKNOWN;
> > +	struct i40e_hw *hw = &pf->hw;
> > +
> > +	if (link_up) {
> > +		struct i40e_link_status *hw_link_info = &hw->phy.link_info;
> > +
> > +		i40e_aq_get_link_info(hw, true, NULL, NULL);
> > +		link_speed = hw_link_info->link_speed;
> > +	} else {
> > +		enum i40e_prt_mac_link_speed prtmac_linksta;
> > +		u64 prtmac_pcs_linksta;
> > +
> > +		prtmac_linksta = (rd32(hw, I40E_PRTMAC_LINKSTA(0))
> > +			& I40E_PRTMAC_LINKSTA_MAC_LINK_SPEED_MASK)
> > +			>> I40E_PRTMAC_LINKSTA_MAC_LINK_SPEED_SHIFT;
> 
> I believe operators are supposed to end the line rather than start a new
> one.
> 
> > +		if (prtmac_linksta == I40E_PRT_MAC_LINK_SPEED_40GB) {
> > +			link_speed = I40E_LINK_SPEED_40GB;
> > +		} else {
> > +			i40e_aq_debug_read_register(hw,
> > +						    I40E_PRTMAC_PCS_LINK_STATUS1(0),
> > +						    &prtmac_pcs_linksta,
> > +						    NULL);
> > +
> > +			prtmac_pcs_linksta = (prtmac_pcs_linksta
> > +			& I40E_PRTMAC_PCS_LINK_STATUS1_LINK_SPEED_MASK)
> > +			>> I40E_PRTMAC_PCS_LINK_STATUS1_LINK_SPEED_SHIFT;
> 
> Same operator comment. Also, indentation looks off here.
> 
> Thanks,
> Tony
> 

Thanks for the close look, Tony.
Will be fixed in v2.
I needed a reason to reroll anyway, since I forgot to base this on
net...

-- 
