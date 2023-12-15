Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 88945813F62
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Dec 2023 02:46:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D55CA83C0B;
	Fri, 15 Dec 2023 01:46:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D55CA83C0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702604778;
	bh=ABHGWFlZ0tosb1zfBeNnY9NL+/8rLIHlKdHOdb1rIp4=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9ixatqMpv8cEng/0c6etYWtIfxfL35CznZ+rhlo6mtK/n2hhgHHMfkTLIi84vHHoQ
	 Q3PAh+n2rqD6MTW4nKLgqndxIuWbE1CoIqyM9KY1PSpeMcr9rjjn4ebT4GuRX1U4Fy
	 VuIs70xUQ3rP09bW36adfo3Nijz/v5Bx7JzCknrAKdal4Kul6gAGa5kCqWjWJU0aK1
	 WvEKn9h0mzCzpAYYLEKwwIZsweLbf8UjkVsXxNic5OS975j8sh/dX51fE6y3k3W/yD
	 yIx3jR7wgPBMovgEPkng8QQJjzbzs2mh7WTXtfuAnDuBkDqyRjx6BjTjbyn1GtK1FK
	 UwhqZZMyydPxA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l2BIdJ57YM6y; Fri, 15 Dec 2023 01:46:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ACF538195D;
	Fri, 15 Dec 2023 01:46:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ACF538195D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 89D6F1BF35A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 01:46:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6BFC3403AA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 01:46:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6BFC3403AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A8-x5i_pdV18 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Dec 2023 01:46:11 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 54B07400EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 01:46:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 54B07400EC
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 15364CE25DF;
 Fri, 15 Dec 2023 01:46:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AAF35C433C8;
 Fri, 15 Dec 2023 01:46:05 +0000 (UTC)
Date: Thu, 14 Dec 2023 17:46:04 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20231214174604.1ca4c30d@kernel.org>
In-Reply-To: <55e51b97c29894ebe61184ab94f7e3d8486e083a.camel@redhat.com>
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
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702604766;
 bh=pOA9iQ3oiHnXchJg588/G4CIPWlxrqFDcw3s8wXyqws=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=htFd+MzOhXJsdFv6KasWkyach/PjprBnMtSP606w6G/RDDnABjSV+NMIW/ydkfk0M
 soS6InwL7Em5khpnGz190BuAXMhfHeYBcA2JJTdJcA65v+0c6jkUtcPmeHFVpUkyPS
 3yGRDvGg5sUlQHl7SXENDnoZkGnfNpLDLBURHGW2qaJ98wnu5MYyZ85Hfybtu6x8VT
 joFttvBlP1eB16lvaomSmeUjGr9NniZ17C3VD8jo891VaMCbV6C2kBOVOIxB+2aPWV
 FjQdnBlYtXftrmRlTb4wXSr0F1F/yFLwyv9yINRX59D8pUnm2+VHRfdNmauI0souxZ
 tvMfCrBw5SKtw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=htFd+MzO
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

On Thu, 14 Dec 2023 21:29:51 +0100 Paolo Abeni wrote:
> Together with Simon, I spent some time on the above. We think the
> ndo_setup_tc(TC_SETUP_QDISC_TBF) hook could be used as common basis for
> this offloads, with some small extensions (adding a 'max_rate' param,
> too).

uAPI aside, why would we use ndo_setup_tc(TC_SETUP_QDISC_TBF)
to implement common basis?

Is it not cleaner to have a separate driver API, with its ops
and capabilities?

> The idea would be:
> - 'fixing' sch_btf so that the s/w path became a no-op when h/w offload
> is enabled
> - extend sch_btf to support max rate
> - do the relevant ice implementation
> - ndo_set_tx_maxrate could be replaced with the mentioned ndo call (the
> latter interface is a strict super-set of former)
> - ndo_set_vf_rate could also be replaced with the mentioned ndo call
> (with another small extension to the offload data)
> 
> I think mqprio deserves it's own separate offload interface, as it
> covers multiple tasks other than shaping (grouping queues and mapping
> priority to classes)
> 
> In the long run we could have a generic implementation of the
> ndo_setup_tc(TC_SETUP_QDISC_TBF) in term of devlink rate adding a
> generic way to fetch the devlink_port instance corresponding to the
> given netdev and mapping the TBF features to the devlink_rate API.
> 
> Not starting this due to what Jiri mentioned [1].

Jiri, AFAIU, is against using devlink rate *uAPI* to configure network
rate limiting. That's separate from the internal representation.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
