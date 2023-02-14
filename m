Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D043695950
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Feb 2023 07:40:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B54C0610EA;
	Tue, 14 Feb 2023 06:40:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B54C0610EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676356814;
	bh=V/pSgSEaeLBRYiPmVgEj/m4S5X3pj0uJ9VRYWFyUlws=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8rHWz3WL7G1UXE3tkEYfpDue5NZ9lbnxTtM6bcytP/W04AJzympPOjIdkI2+QY4c/
	 X8WUZ4WzU/Wzj497P0fFoyKZy7EhpuoK5W50gQ5H7wEOZ0GlpU5JLjj2JYJWvEUY6s
	 1bhyzpEdokL44vZDRvCxmQwly7Gyn5kHnnZxMo8MfFB0WXrfFoin+VzRlGeUChZ/49
	 Cu8QMpj18Xmxoacnr5uL8MJ0u1vCJpzfSb7B5m+e1/ilXwq+05IJLezmUHtOHL3NUO
	 DpPPoX3yJGCoQN6Ww6d4qu3uhTsnyxN/2TnXNFlryHFGRAjAjJZJVtZHp9XD1u9pSg
	 7xuckqZtZYDwQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YmdcT500CEx1; Tue, 14 Feb 2023 06:40:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B5C5A60E22;
	Tue, 14 Feb 2023 06:40:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B5C5A60E22
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3DF381BF307
 for <intel-wired-lan@osuosl.org>; Tue, 14 Feb 2023 06:40:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 169D6813A7
 for <intel-wired-lan@osuosl.org>; Tue, 14 Feb 2023 06:40:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 169D6813A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QYBxCbrHjxgJ for <intel-wired-lan@osuosl.org>;
 Tue, 14 Feb 2023 06:40:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4CDF813A3
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D4CDF813A3
 for <intel-wired-lan@osuosl.org>; Tue, 14 Feb 2023 06:40:06 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id B2E1A60E8C;
 Tue, 14 Feb 2023 06:40:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99B44C433D2;
 Tue, 14 Feb 2023 06:40:04 +0000 (UTC)
Date: Mon, 13 Feb 2023 22:40:03 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
Message-ID: <20230213224003.1af75612@kernel.org>
In-Reply-To: <SJ1PR11MB61801B3439A4F19C32ADE11BB8A29@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230208003327.29538-1-muhammad.husaini.zulkifli@intel.com>
 <20230208213019.460d7163@kernel.org>
 <SJ1PR11MB61801B3439A4F19C32ADE11BB8A29@SJ1PR11MB6180.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1676356805;
 bh=fOfVmluCYbqgst21Ks3hq58Q29AKag9ee+kh2+gH8tE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pn6V28+vZYfMhn/jvnqRfJE1LB50pHU4ruLr2lQdlp9HZCNnIQNYA57nV1t61sv3N
 rKxBk4S5SOS35mgDgbKudCtgtA92Yy2z4vDDlzFp8hJ3TLWbjeY751EaSwDerUoIcK
 WmZD+YM99ZRQhcPc/ejjoE9MmRvo3apDFMpshxsTwPm/N9MZkKyyz6GW6ACm1kH3ub
 wONZgY0uj4PieOir2LAe5MwUkxXaZq3w/h13VllMvUZ2kONCt7Dvmv06OGz9QlPbED
 6215udAvKjPTVquH7pzH6lVJAlrOtHdfyHfr05hjGbN/bXXtknS15ufHGBp5wVrbBi
 u+QacvPAcMOrg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=pn6V28+v
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] igc: offload queue max
 SDU from tc-taprio
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
Cc: "leon@kernel.org" <leon@kernel.org>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "tee.min.tan@linux.intel.com" <tee.min.tan@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 14 Feb 2023 06:27:17 +0000 Zulkifli, Muhammad Husaini wrote:
> > > +	if (tx_ring->max_sdu > 0) {
> > > +		max_sdu = tx_ring->max_sdu +
> > > +			  (skb_vlan_tagged(skb) ? VLAN_HLEN : 0);
> > > +
> > > +		if (skb->len > max_sdu)  
> > 
> > You should increment some counter here. Otherwise it's a silent discard.  
> 
> I am thinking to use tx_dropped counters for this. Is it ok?

Yup!

> > > +			goto skb_drop;
> > > +	}
> > > +
> > >  	if (!tx_ring->launchtime_enable)
> > >  		goto done;
> > >
> > > @@ -1606,6 +1615,11 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,  
> > >  	dev_kfree_skb_any(first->skb);  
> > 
> > first->skb is skb, as far as I can tell, you can reshuffle this code to
> > avoid adding the new return flow.  
> 
> What we try to do is to check the current max_sdu size at the
> beginning stage of the func() and drop it quickly.

I understand, what I'm saying is that the code which is already here
can be reused, it currently operates on first->skb but it can as well
use skb. And then you'll be able to jump to the same statement, rather
than have to create a separate return.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
