Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 587B08153DD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Dec 2023 23:42:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B5C5F41829;
	Fri, 15 Dec 2023 22:42:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B5C5F41829
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702680128;
	bh=iX9RFucEEFkxHC2AwOi/WrNbixaWrq6+aDoqPL/e0Vo=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JrzASyykBQLVhJmDz8v9XUu9MOwFM7QhifDrrLv569vgpUDjkrrqIA3XFbB2RgzAt
	 dHnwYnxzVwRHi/ghHK4WLmsRkPfd/Hb4jB7YFGzroOq1Sg1IDSGPiAVlBVHfBolSl8
	 wv68twxrF5zNDF3X8bE8iEVr0tEOX2GUEIeCwBtEoTngXFsBDYqGaEwREUjNC+vI/P
	 qUVPa0iZHuqikM+OgWi2UaVmsDvrKxy06D4utXDG2rssXpv6j/mKGWmiO4E7Hhav3S
	 vunUdbBOY3rl8MH2ZYtkFMbiI8CizvyPqB0oOGrmMKZyZtbLf1esQ7mI2+7TVT4LRA
	 ypIRIxnWN8LtQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NAT1d2G81MFI; Fri, 15 Dec 2023 22:42:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2CB0840549;
	Fri, 15 Dec 2023 22:42:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CB0840549
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9D9861BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 22:42:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 77D0E60B2A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 22:42:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77D0E60B2A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dedkywn0yYSX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Dec 2023 22:42:01 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6A02F60A92
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 22:42:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A02F60A92
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 9F360CE254C;
 Fri, 15 Dec 2023 22:41:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82F31C433C8;
 Fri, 15 Dec 2023 22:41:56 +0000 (UTC)
Date: Fri, 15 Dec 2023 14:41:55 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20231215144155.194a188e@kernel.org>
In-Reply-To: <7b0c2e0132b71b131fc9a5407abd27bc0be700ee.camel@redhat.com>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230822034003.31628-1-wenjun1.wu@intel.com>
 <ZORRzEBcUDEjMniz@nanopsycho> <20230822081255.7a36fa4d@kernel.org>
 <ZOTVkXWCLY88YfjV@nanopsycho>
 <0893327b-1c84-7c25-d10c-1cc93595825a@intel.com>
 <ZOcBEt59zHW9qHhT@nanopsycho>
 <5aed9b87-28f8-f0b0-67c4-346e1d8f762c@intel.com>
 <bdb0137a-b735-41d9-9fea-38b238db0305@intel.com>
 <20231118084843.70c344d9@kernel.org>
 <3d60fabf-7edf-47a2-9b95-29b0d9b9e236@intel.com>
 <20231122192201.245a0797@kernel.org>
 <e662dca5-84e4-4f7b-bfa3-50bce30c697c@intel.com>
 <20231127174329.6dffea07@kernel.org>
 <55e51b97c29894ebe61184ab94f7e3d8486e083a.camel@redhat.com>
 <20231214174604.1ca4c30d@kernel.org>
 <7b0c2e0132b71b131fc9a5407abd27bc0be700ee.camel@redhat.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702680116;
 bh=4FhBmd1T2ku6JY6B5uX89pPz+JgeRC0ORaKhXIJ6cNs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=i5uFAXavASJiGMIy0DpDCLcfBtx3azNgQX6lCjrU5wMlTZc4a6OrxsESVz4hLRWJp
 r0W4YKbr67vbUL4E6Rd+ITrw1JsrJBvExc806/BBqm6a0VFsBzEV7dBXZUrJrsIifJ
 bRtASM65TKcr4OjQtVnaW0RX+Ovvn6QBPNjbvjpUVtNgAlLl7WnYoGR/iX32MGppeO
 bA5C0w3E5fM2MWUdV9qHa+AOkchh3/b+vFw+GuW5/mjpyRoIQ6yrjiSnagKM8/qpyd
 InE0YosQup6PpLm+mHIqK0KJbmmPpBmiSU3jBmjgK/dfZYp8o2MUSUtYWhpwA72hgO
 YRbZQfR/LWc2w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=i5uFAXav
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/5] iavf: Add devlink and
 devlink rate support'
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
Cc: Jiri Pirko <jiri@resnulli.us>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, netdev@vger.kernel.org,
 maxtram95@gmail.com, Simon Horman <simon.horman@redhat.com>, "Chittim,
 Madhu" <madhu.chittim@intel.com>, anthony.l.nguyen@intel.com,
 qi.z.zhang@intel.com, intel-wired-lan@lists.osuosl.org,
 Wenjun Wu <wenjun1.wu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 15 Dec 2023 12:06:52 +0100 Paolo Abeni wrote:
> > uAPI aside, why would we use ndo_setup_tc(TC_SETUP_QDISC_TBF)
> > to implement common basis?
> > 
> > Is it not cleaner to have a separate driver API, with its ops
> > and capabilities?  
> 
> We understand one of the end goal is consolidating the existing rate-
> related in kernel interfaces.  Adding a new one does not feel a good
> starting to reach that goal, see [1] & [2] ;)

ndo_setup_tc(TC_SETUP_QDISC_TBF) is a new API, too, very much so.
These attempts to build on top of existing interfaces with small
tweaks is leading us to a fragmented and incompatible driver landscape.

I explained before (perhaps on the netdev call) - Qdiscs have two
different offload models. "local" and "switchdev", here we want "local"
AFAIU and TBF only has "switchdev" offload (take a look at the enqueue
method and which drivers support it today).

"We'll extend TBF" is very much adding a new API. You'll have to add
"local offload" support in TBF and no NIC driver today supports it.
I'm not saying TBF is bad, but I disagree that it's any different
than a new NDO for all practical purposes.

> ndo_setup_tc() feels like the natural choice for H/W offload and TBF
> is the existing interface IMHO nearest to the requirements here.

I question whether something as basic as scheduling and ACLs should
follow the "offload SW constructs" mantra. You are exposed to more
diverse users so please don't hesitate to disagree, but AFAICT
the transparent offload (user installs SW constructs and if offload
is available - offload, otherwise use SW is good enough) has not
played out like we have hoped.

Let's figure out what is the abstract model of scheduling / shaping
within a NIC that we want to target. And then come up with a way of
representing it in SW. Not which uAPI we can shoehorn into the use
case.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
